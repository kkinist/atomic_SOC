
 Working directory              : /wrk/irikura/molpro.dIdAUDUPT1/
 Global scratch directory       : /wrk/irikura/molpro.dIdAUDUPT1/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.dIdAUDUPT1/

 id        : nistki

 Nodes     nprocs
 comp-50      3
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
                                                                                 ! doubly augmented using exponent ratio = 3.0
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 gprint,basis
 
 symmetry,xyz
 geometry={Br};
 
 basis={spdfg,br,AWCVTZ-X2C;C; spdf,1,even,nprim=1,ratio=3.0}
 
 set,dkho=101
 
 {rhf;wf,charge=-1}
 
 NSING=3
 NTRIP=8
 
 {multi
     occ,10,12
     closed,8,6
     wf,charge=0,sym=2,spin=1;state,NSING;
     wf,charge=0,sym=2,spin=3;state,NTRIP;
     expec2,lxx,lyy,lzz
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KL-shell uncorrelated
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,NSING; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NTRIP; save,5303.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5303.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 15-Jul-24          TIME: 08:11:39  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW



 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S AWCVTZ-X2C           selected for orbital group  1
 Even tempered Br S diffuse               selected for group 1    nprim= 1    centre=  0.015    ratio= 3.000    dratio= 1.000
 Library entry BR     P AWCVTZ-X2C           selected for orbital group  1
 Even tempered Br P diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry BR     D AWCVTZ-X2C           selected for orbital group  1
 Even tempered Br D diffuse               selected for group 1    nprim= 1    centre=  0.035    ratio= 3.000    dratio= 1.000
 Library entry BR     F AWCVTZ-X2C           selected for orbital group  1
 Even tempered Br F diffuse               selected for group 1    nprim= 1    centre=  0.086    ratio= 3.000    dratio= 1.000
 Library entry BR     G AWCVTZ-X2C           selected for orbital group  1


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

   1  BR     35.00    0.000000000    0.000000000    0.000000000


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s    10639000.000000     0.000162   -0.000052    0.000021   -0.000006    0.000000    0.000000
    2.1 Ag              1593400.000000     0.000434   -0.000141    0.000056   -0.000017    0.000000    0.000000
    3.1 Ag               362610.000000     0.001149   -0.000374    0.000149   -0.000046    0.000000    0.000000
    4.1 Ag               102700.000000     0.002874   -0.000937    0.000374   -0.000115    0.000000    0.000000
    5.1 Ag                33501.000000     0.007189   -0.002360    0.000943   -0.000290    0.000000    0.000000
    6.1 Ag                12093.000000     0.017828   -0.005897    0.002358   -0.000725    0.000000    0.000000
                           4715.900000     0.043303   -0.014657    0.005885   -0.001809    0.000000    0.000000
                           1955.600000     0.099345   -0.034866    0.014041   -0.004328    0.000000    0.000000
                            852.610000     0.201253   -0.077408    0.031638   -0.009742    0.000000    0.000000
                            387.670000     0.319197   -0.144283    0.060103   -0.018653    0.000000    0.000000
                            182.680000     0.317900   -0.198533    0.087225   -0.027067    0.000000    0.000000
                             88.245000     0.140599   -0.072533    0.032440   -0.010501    0.000000    0.000000
                             39.263000     0.013845    0.381077   -0.225890    0.074786    0.000000    0.000000
                             19.234000    -0.000839    0.576087   -0.509336    0.175340    0.000000    0.000000
                              9.405700     0.000397    0.203284   -0.110474    0.039865    0.000000    0.000000
                              4.160100    -0.000222    0.011219    0.701918   -0.330206    0.000000    0.000000
                              1.899500     0.000068    0.001044    0.547656   -0.446205    0.000000    0.000000
                              0.604720    -0.000034   -0.000170    0.039342    0.295864    1.000000    0.000000
                              0.301140     0.000022    0.000072   -0.008999    0.681012    0.000000    0.000000
                              0.125150    -0.000005   -0.000031    0.001949    0.278477    0.000000    1.000000
    7.1 Ag    1  1s           3.001500     1.000000
    8.1 Ag    1  1s           4.793200     1.000000
    9.1 Ag    1  1s           0.045593     1.000000
   10.1 Ag    1  1s           0.015198     1.000000
   11.1 Ag    1  3d0        403.830000     0.001623
                            121.170000     0.013007
                             46.345000     0.058286
                             19.721000     0.169855
                              8.862400     0.317259
                              3.996200     0.383114
                              1.763600     0.276418
                              0.706190     0.075349
                              0.263900     0.002070
   12.1 Ag    1  3d2-       403.830000     0.001623
                            121.170000     0.013007
                             46.345000     0.058286
                             19.721000     0.169855
                              8.862400     0.317259
                              3.996200     0.383114
                              1.763600     0.276418
                              0.706190     0.075349
                              0.263900     0.002070
   13.1 Ag    1  3d1+       403.830000     0.001623
                            121.170000     0.013007
                             46.345000     0.058286
                             19.721000     0.169855
                              8.862400     0.317259
                              3.996200     0.383114
                              1.763600     0.276418
                              0.706190     0.075349
                              0.263900     0.002070
   14.1 Ag    1  3d2+       403.830000     0.001623
                            121.170000     0.013007
                             46.345000     0.058286
                             19.721000     0.169855
                              8.862400     0.317259
                              3.996200     0.383114
                              1.763600     0.276418
                              0.706190     0.075349
                              0.263900     0.002070
   15.1 Ag    1  3d1-       403.830000     0.001623
                            121.170000     0.013007
                             46.345000     0.058286
                             19.721000     0.169855
                              8.862400     0.317259
                              3.996200     0.383114
                              1.763600     0.276418
                              0.706190     0.075349
                              0.263900     0.002070
   16.1 Ag    1  3d0        403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     1.000000
                              0.263900     0.000000
   17.1 Ag    1  3d2-       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     1.000000
                              0.263900     0.000000
   18.1 Ag    1  3d1+       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     1.000000
                              0.263900     0.000000
   19.1 Ag    1  3d2+       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     1.000000
                              0.263900     0.000000
   20.1 Ag    1  3d1-       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     1.000000
                              0.263900     0.000000
   21.1 Ag    1  3d0        403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     0.000000
                              0.263900     1.000000
   22.1 Ag    1  3d2-       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     0.000000
                              0.263900     1.000000
   23.1 Ag    1  3d1+       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     0.000000
                              0.263900     1.000000
   24.1 Ag    1  3d2+       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     0.000000
                              0.263900     1.000000
   25.1 Ag    1  3d1-       403.830000     0.000000
                            121.170000     0.000000
                             46.345000     0.000000
                             19.721000     0.000000
                              8.862400     0.000000
                              3.996200     0.000000
                              1.763600     0.000000
                              0.706190     0.000000
                              0.263900     1.000000
   26.1 Ag    1  3d0          1.954600     1.000000
   27.1 Ag    1  3d2-         1.954600     1.000000
   28.1 Ag    1  3d1+         1.954600     1.000000
   29.1 Ag    1  3d2+         1.954600     1.000000
   30.1 Ag    1  3d1-         1.954600     1.000000
   31.1 Ag    1  3d0          5.152200     1.000000
   32.1 Ag    1  3d2-         5.152200     1.000000
   33.1 Ag    1  3d1+         5.152200     1.000000
   34.1 Ag    1  3d2+         5.152200     1.000000
   35.1 Ag    1  3d1-         5.152200     1.000000
   36.1 Ag    1  3d0          0.104700     1.000000
   37.1 Ag    1  3d2-         0.104700     1.000000
   38.1 Ag    1  3d1+         0.104700     1.000000
   39.1 Ag    1  3d2+         0.104700     1.000000
   40.1 Ag    1  3d1-         0.104700     1.000000
   41.1 Ag    1  3d0          0.034900     1.000000
   42.1 Ag    1  3d2-         0.034900     1.000000
   43.1 Ag    1  3d1+         0.034900     1.000000
   44.1 Ag    1  3d2+         0.034900     1.000000
   45.1 Ag    1  3d1-         0.034900     1.000000
   46.1 Ag    1  5g0          2.507700     1.000000
   47.1 Ag    1  5g2-         2.507700     1.000000
   48.1 Ag    1  5g1+         2.507700     1.000000
   49.1 Ag    1  5g4+         2.507700     1.000000
   50.1 Ag    1  5g1-         2.507700     1.000000
   51.1 Ag    1  5g2+         2.507700     1.000000
   52.1 Ag    1  5g4-         2.507700     1.000000
   53.1 Ag    1  5g3+         2.507700     1.000000
   54.1 Ag    1  5g3-         2.507700     1.000000
    1.2 Au    1  2px       8676.500000     0.000923
                           2055.900000     0.005035
                            666.230000     0.023408
                            253.100000     0.084146
                            106.120000     0.222964
                             47.242000     0.388068
                             21.825000     0.353453
                              9.968400     0.108533
                              4.517100     0.004234
                              1.998200     0.001696
                              0.709880    -0.000428
                              0.281450     0.000198
                              0.102040    -0.000069
    2.2 Au    1  2py       8676.500000     0.000923
                           2055.900000     0.005035
                            666.230000     0.023408
                            253.100000     0.084146
                            106.120000     0.222964
                             47.242000     0.388068
                             21.825000     0.353453
                              9.968400     0.108533
                              4.517100     0.004234
                              1.998200     0.001696
                              0.709880    -0.000428
                              0.281450     0.000198
                              0.102040    -0.000069
    3.2 Au    1  2pz       8676.500000     0.000923
                           2055.900000     0.005035
                            666.230000     0.023408
                            253.100000     0.084146
                            106.120000     0.222964
                             47.242000     0.388068
                             21.825000     0.353453
                              9.968400     0.108533
                              4.517100     0.004234
                              1.998200     0.001696
                              0.709880    -0.000428
                              0.281450     0.000198
                              0.102040    -0.000069
    4.2 Au    1  2px       8676.500000    -0.000373
                           2055.900000    -0.002048
                            666.230000    -0.009606
                            253.100000    -0.035512
                            106.120000    -0.098129
                             47.242000    -0.182858
                             21.825000    -0.149830
                              9.968400     0.195965
                              4.517100     0.543368
                              1.998200     0.379241
                              0.709880     0.043424
                              0.281450    -0.004041
                              0.102040     0.001714
    5.2 Au    1  2py       8676.500000    -0.000373
                           2055.900000    -0.002048
                            666.230000    -0.009606
                            253.100000    -0.035512
                            106.120000    -0.098129
                             47.242000    -0.182858
                             21.825000    -0.149830
                              9.968400     0.195965
                              4.517100     0.543368
                              1.998200     0.379241
                              0.709880     0.043424
                              0.281450    -0.004041
                              0.102040     0.001714
    6.2 Au    1  2pz       8676.500000    -0.000373
                           2055.900000    -0.002048
                            666.230000    -0.009606
                            253.100000    -0.035512
                            106.120000    -0.098129
                             47.242000    -0.182858
                             21.825000    -0.149830
                              9.968400     0.195965
                              4.517100     0.543368
                              1.998200     0.379241
                              0.709880     0.043424
                              0.281450    -0.004041
                              0.102040     0.001714
    7.2 Au    1  2px       8676.500000     0.000096
                           2055.900000     0.000531
                            666.230000     0.002480
                            253.100000     0.009260
                            106.120000     0.025529
                             47.242000     0.048613
                             21.825000     0.037686
                              9.968400    -0.063104
                              4.517100    -0.187899
                              1.998200    -0.131933
                              0.709880     0.297669
                              0.281450     0.572386
                              0.102040     0.306398
    8.2 Au    1  2py       8676.500000     0.000096
                           2055.900000     0.000531
                            666.230000     0.002480
                            253.100000     0.009260
                            106.120000     0.025529
                             47.242000     0.048613
                             21.825000     0.037686
                              9.968400    -0.063104
                              4.517100    -0.187899
                              1.998200    -0.131933
                              0.709880     0.297669
                              0.281450     0.572386
                              0.102040     0.306398
    9.2 Au    1  2pz       8676.500000     0.000096
                           2055.900000     0.000531
                            666.230000     0.002480
                            253.100000     0.009260
                            106.120000     0.025529
                             47.242000     0.048613
                             21.825000     0.037686
                              9.968400    -0.063104
                              4.517100    -0.187899
                              1.998200    -0.131933
                              0.709880     0.297669
                              0.281450     0.572386
                              0.102040     0.306398
   10.2 Au    1  2px       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     1.000000
                              0.281450     0.000000
                              0.102040     0.000000
   11.2 Au    1  2py       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     1.000000
                              0.281450     0.000000
                              0.102040     0.000000
   12.2 Au    1  2pz       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     1.000000
                              0.281450     0.000000
                              0.102040     0.000000
   13.2 Au    1  2px       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     0.000000
                              0.281450     0.000000
                              0.102040     1.000000
   14.2 Au    1  2py       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     0.000000
                              0.281450     0.000000
                              0.102040     1.000000
   15.2 Au    1  2pz       8676.500000     0.000000
                           2055.900000     0.000000
                            666.230000     0.000000
                            253.100000     0.000000
                            106.120000     0.000000
                             47.242000     0.000000
                             21.825000     0.000000
                              9.968400     0.000000
                              4.517100     0.000000
                              1.998200     0.000000
                              0.709880     0.000000
                              0.281450     0.000000
                              0.102040     1.000000
   16.2 Au    1  2px          1.933100     1.000000
   17.2 Au    1  2py          1.933100     1.000000
   18.2 Au    1  2pz          1.933100     1.000000
   19.2 Au    1  2px          4.266400     1.000000
   20.2 Au    1  2py          4.266400     1.000000
   21.2 Au    1  2pz          4.266400     1.000000
   22.2 Au    1  2px          0.035142     1.000000
   23.2 Au    1  2py          0.035142     1.000000
   24.2 Au    1  2pz          0.035142     1.000000
   25.2 Au    1  2px          0.011714     1.000000
   26.2 Au    1  2py          0.011714     1.000000
   27.2 Au    1  2pz          0.011714     1.000000
   28.2 Au    1  4f1+         0.551500     1.000000
   29.2 Au    1  4f1-         0.551500     1.000000
   30.2 Au    1  4f0          0.551500     1.000000
   31.2 Au    1  4f3+         0.551500     1.000000
   32.2 Au    1  4f2-         0.551500     1.000000
   33.2 Au    1  4f3-         0.551500     1.000000
   34.2 Au    1  4f2+         0.551500     1.000000
   35.2 Au    1  4f1+         2.080200     1.000000
   36.2 Au    1  4f1-         2.080200     1.000000
   37.2 Au    1  4f0          2.080200     1.000000
   38.2 Au    1  4f3+         2.080200     1.000000
   39.2 Au    1  4f2-         2.080200     1.000000
   40.2 Au    1  4f3-         2.080200     1.000000
   41.2 Au    1  4f2+         2.080200     1.000000
   42.2 Au    1  4f1+         7.585600     1.000000
   43.2 Au    1  4f1-         7.585600     1.000000
   44.2 Au    1  4f0          7.585600     1.000000
   45.2 Au    1  4f3+         7.585600     1.000000
   46.2 Au    1  4f2-         7.585600     1.000000
   47.2 Au    1  4f3-         7.585600     1.000000
   48.2 Au    1  4f2+         7.585600     1.000000
   49.2 Au    1  4f1+         0.258000     1.000000
   50.2 Au    1  4f1-         0.258000     1.000000
   51.2 Au    1  4f0          0.258000     1.000000
   52.2 Au    1  4f3+         0.258000     1.000000
   53.2 Au    1  4f2-         0.258000     1.000000
   54.2 Au    1  4f3-         0.258000     1.000000
   55.2 Au    1  4f2+         0.258000     1.000000
   56.2 Au    1  4f1+         0.086000     1.000000
   57.2 Au    1  4f1-         0.086000     1.000000
   58.2 Au    1  4f0          0.086000     1.000000
   59.2 Au    1  4f3+         0.086000     1.000000
   60.2 Au    1  4f2-         0.086000     1.000000
   61.2 Au    1  4f3-         0.086000     1.000000
   62.2 Au    1  4f2+         0.086000     1.000000

 NUCLEAR CHARGE:                   35
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

     26.739 MB (compressed) written to integral file ( 14.0%)

     Node minimum: 7.602 MB, node maximum: 9.699 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3905163.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3905163      RECORD LENGTH: 524288

 Memory used in sort:       4.46 MW

 SORT1 READ    23841670. AND WROTE      763216. INTEGRALS IN      3 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     2334525. AND WROTE    11712051. INTEGRALS IN    111 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC

 Node minimum:     3902871.  Node maximum:     3905163. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.102E-03 0.210E-02 0.144E-01 0.402E-01 0.402E-01 0.402E-01 0.402E-01 0.402E-01
         2 0.345E-02 0.345E-02 0.345E-02 0.121E-01 0.121E-01 0.121E-01 0.678E-01 0.678E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.82      1.66
 REAL TIME  *         3.13 SEC
 DISK USED  *        29.56 MB (local),      139.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=BR basis=MINAO             lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54209545   -2604.54209545     0.00D+00     0.15D+00     0     0       0.02      0.05    start
   2    -2604.58767794      -0.04558249     0.14D-01     0.14D-01     1     0       0.02      0.07    diag
   3    -2604.60065774      -0.01297980     0.10D-01     0.29D-02     2     0       0.02      0.09    diag
   4    -2604.60114833      -0.00049059     0.55D-03     0.10D-02     3     0       0.02      0.11    diag
   5    -2604.60122398      -0.00007565     0.16D-03     0.47D-03     4     0       0.02      0.13    diag
   6    -2604.60123118      -0.00000720     0.54D-04     0.19D-03     5     0       0.02      0.15    diag
   7    -2604.60123143      -0.00000025     0.68D-05     0.33D-04     6     0       0.02      0.17    diag
   8    -2604.60123145      -0.00000001     0.13D-05     0.80D-05     7     0       0.02      0.19    fixocc
   9    -2604.60123145      -0.00000000     0.25D-06     0.19D-05     8     0       0.02      0.21    diag
  10    -2604.60123145      -0.00000000     0.42D-07     0.13D-06     0     0       0.02      0.23    diag/orth

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.601231447064
  RHF One-electron energy           -3634.563802103460
  RHF Two-electron energy            1029.962570656396
  RHF Kinetic energy                 2786.461490239721
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934734336208

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -497.89771     1  1  s    0.99998
    2.1     2.00000   -66.75911     1  2  s    0.99985
    3.1     2.00000    -9.85687     1  3  s    0.99870
    4.1     2.00000    -2.81604     1  1  d1-  0.99971
    5.1     2.00000    -2.81604     1  1  d1+  0.99973
    6.1     2.00000    -2.81604     1  1  d0   0.55972    1  1  d2+  0.82833
    7.1     2.00000    -2.81604     1  1  d0   0.82829    1  1  d2+ -0.55983
    8.1     2.00000    -2.81604     1  1  d2-  0.99966
    9.1     2.00000    -0.71240     1  4  s    0.93295
    1.2     2.00000   -58.65693     1  1  px   0.99996
    2.2     2.00000   -58.65693     1  1  pz   0.99996
    3.2     2.00000   -58.65693     1  1  py   0.99996
    4.2     2.00000    -7.20980     1  2  px   0.99964
    5.2     2.00000    -7.20980     1  2  pz   0.99964
    6.2     2.00000    -7.20980     1  2  py   0.99964
    7.2     2.00000    -0.13762     1  3  pz   0.88979
    8.2     2.00000    -0.13762     1  3  px   0.88979
    9.2     2.00000    -0.13762     1  3  py   0.88979


 HOMO      9.2    -0.137622 =      -3.7449eV
 LUMO     10.2     0.120095 =       3.2680eV
 LUMO-HOMO         0.257718 =       7.0129eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.06      0.22      1.66
 REAL TIME  *         3.41 SEC
 DISK USED  *        30.24 MB (local),      141.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         3.00000000                                  
 SETTING NTRIP          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      94 (   44   50)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.214D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.229D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 2 3 1 1   2 5 3 4 6 1 2 4 6 3   5 1 2 4 6 3 5 2 5 3   6 4 1 6 4 2 5 3 711
                                       1415 912 81013 1 2 6   4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.311D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.473D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.385D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.222D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.207D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.632D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.632D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 3 1 2 3   1 2 1 2 310 8 4 5 6   7 9 1 2 3 6 7 9 4 5   810 3 1 2 7 9 6 5 4
                                       10 810 8 6 9 7 5 4 3   1 2 6 7 9 5 410 8 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  1092  ( 52 closed/active, 652 closed/virtual, 0 active/active, 388 active/virtual )
 Total number of variables:    13240
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   22   89    0  -2604.14992226   -2604.31628898   -0.16636672    0.45644003 0.00143775 0.00121822  0.14E+01      1.52
   2    9   40    0  -2604.26389977   -2604.28301993   -0.01912016    0.67282994 0.00020062 0.00067335  0.38E+00      2.48
   3    8   33    0  -2604.28315803   -2604.28316185   -0.00000381    0.00674168 0.00000503 0.00001557  0.10E-01      3.34
   4    7   26    0  -2604.28316185   -2604.28316185   -0.00000000    0.00000240 0.00000001 0.00000006  0.19E-03      4.15

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.89E-08)
                       Final energy:  -2604.28316185
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.503065420757
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.11880171
 One electron energy                         -3624.54930970
 Two electron energy                          1020.04624428
 Virial ratio                                    1.93447867
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.503065420752
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.11880171
 One electron energy                         -3624.54930970
 Two electron energy                          1020.04624428
 Virial ratio                                    1.93447867
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.503065420748
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.11880171
 One electron energy                         -3624.54930970
 Two electron energy                          1020.04624428
 Virial ratio                                    1.93447867
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.204824636044
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.78794910
 One electron energy                         -3613.22169997
 Two electron energy                          1009.01687534
 Virial ratio                                    1.93481804
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.204824636039
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.78794910
 One electron energy                         -3613.22169997
 Two electron energy                          1009.01687534
 Virial ratio                                    1.93481804
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.204824636029
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.78794910
 One electron energy                         -3613.22169997
 Two electron energy                          1009.01687534
 Virial ratio                                    1.93481804
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2604.198222031851
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.80534693
 One electron energy                         -3613.27252578
 Two electron energy                          1009.07430375
 Virial ratio                                    1.93480983
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2604.198222031845
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.80534693
 One electron energy                         -3613.27252578
 Two electron energy                          1009.07430375
 Virial ratio                                    1.93480983
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2604.198222031836
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.80534693
 One electron energy                         -3613.27252578
 Two electron energy                          1009.07430375
 Virial ratio                                    1.93480983
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2604.198222031814
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.80534693
 One electron energy                         -3613.27252578
 Two electron energy                          1009.07430374
 Virial ratio                                    1.93480983
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2604.198222031796
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.80534693
 One electron energy                         -3613.27252578
 Two electron energy                          1009.07430375
 Virial ratio                                    1.93480983
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999825667
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999979291
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000195042
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999880125
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000452421
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999667454
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000002753007
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999994661767
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000820696
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     2.249387438877
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.750614325652
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.000045156686
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999955016834
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999826480
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000001329253
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999879686
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999998791061
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.999994137271
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000004069424
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000003207138
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.593838289674
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.406160296493
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999955017647
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000045003875
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999978478
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999998790622
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999667893
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000001541485
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000003109721
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000001268809
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999995972166
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.156774271449
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.843225377854
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 1   1 2 3 5 6 4 2 6 4 5   3 1 2 6 4 5 3 5 3 2   6 4 1 6 4 2 5 3 715
                                       14101311 9 812 1 2 6   4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 3 1 2 3   1 2 2 1 3 810 5 4 7   9 6 1 2 3 6 7 9 5 4   810 3 1 2 7 9 6 5 4
                                        81010 8 6 7 9 5 4 3   1 2 6 7 9 810 5 4 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.43032     1  1  s    0.99998
    2.1     2.00000   -67.28957     1  2  s    0.99987
    3.1     2.00000   -10.38040     1  3  s    0.99887
    4.1     2.00000    -3.34385     1  1  d1-  1.00031
    5.1     2.00000    -3.34385     1  1  d1+  1.00031
    6.1     2.00000    -3.34385     1  1  d2+  1.00031
    7.1     2.00000    -3.34385     1  1  d2-  1.00031
    8.1     2.00000    -3.34385     1  1  d0   1.00031
    9.1     1.99788    -1.17740     1  4  s    1.04465
   10.1     0.00243     0.57972     1  3  s    0.45476    1  5  s   -1.70199    1  6  s    1.36309    1  7  s    0.50083
    1.2     2.00000   -59.18678     1  1  px   0.99996
    2.2     2.00000   -59.18678     1  1  pz   0.99996
    3.2     2.00000   -59.18678     1  1  py   0.99996
    4.2     2.00000    -7.73686     1  2  px   0.99949
    5.2     2.00000    -7.73686     1  2  pz   0.99949
    6.2     2.00000    -7.73686     1  2  py   0.99949
    7.2     1.42212    -0.49011     1  3  pz   1.07539
    8.2     1.42212    -0.49011     1  3  px   1.07539
    9.2     1.42212    -0.49011     1  3  py   1.07539
   10.2     0.24444     0.02702     1  3  pz  -0.33937    1  8  pz   0.58495    1  9  pz   0.54892
   11.2     0.24444     0.02702     1  3  px  -0.33937    1  8  px   0.58495    1  9  px   0.54892
   12.2     0.24444     0.02702     1  3  py  -0.33937    1  8  py   0.58495    1  9  py   0.54892
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 2a2000      0.00041396     -0.00014268      0.99144739
 20 a22000     -0.00664953      0.99142518      0.00014545
 20 22a000      0.99142510      0.00664959     -0.00041299
 20 2aa00b      0.00002523     -0.00000870      0.06042880
 20 aa2b00     -0.00002523      0.00000870     -0.06042880
 20 a2a00b     -0.00040529      0.06042744      0.00000887
 20 aa20b0     -0.00040529      0.06042744      0.00000887
 20 a2ab00     -0.06042744     -0.00040529      0.00002517
 20 2aa0b0     -0.06042744     -0.00040529      0.00002517
 
 Energy:    -2604.50306542  -2604.50306542  -2604.50306542
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2aaa00     -0.00000000      0.00000000     -0.00000000      0.00001048      0.00040008      0.00014605      0.79874298
 20 aa200a     -0.00000000     -0.00000000      0.00000000     -0.00002216      0.00014545     -0.00003013     -0.25966180
 20 aa2a00      0.00024434      0.70573122     -0.00040697     -0.00067585      0.70569889     -0.00036309     -0.00040795
 20 2aa00a     -0.00024434     -0.70573122      0.00040697     -0.00067585      0.70569889     -0.00036309     -0.00040795
 20 a2aa00      0.70573091     -0.00024479     -0.00077596      0.70569878      0.00067623      0.00071796     -0.00000608
 20 2aa0a0      0.70573091     -0.00024479     -0.00077596     -0.70569879     -0.00067623     -0.00071796      0.00000608
 20 a2a00a      0.00077611      0.00040670      0.70573084      0.00071831     -0.00036232     -0.70569900      0.00013268
 20 aa20a0      0.00077611      0.00040670      0.70573084     -0.00071831      0.00036232      0.70569900     -0.00013268
 20 a2a0a0      0.00000000     -0.00000000      0.00000000     -0.00001168      0.00054553      0.00011592      0.53908118
 
 Energy:    -2604.20482464  -2604.20482464  -2604.20482464  -2604.19822203  -2604.19822203  -2604.19822203  -2604.19822203

 State:              8
 20 2aaa00     -0.16132306
 20 aa200a      0.77239329
 20 aa2a00     -0.00027007
 20 2aa00a     -0.00027007
 20 a2aa00      0.00001811
 20 2aa0a0     -0.00001811
 20 a2a00a      0.00001716
 20 aa20a0     -0.00001716
 20 a2a0a0      0.61107023
 
 Energy:    -2604.19822203
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.85       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.70      3.64      0.22      1.66
 REAL TIME  *         8.06 SEC
 DISK USED  *        49.96 MB (local),      200.42 MB (total)
 SF USED    *        50.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.503065   2.0
    -2604.503065   2.0
    -2604.503065   2.0
    -2604.204825   2.0
    -2604.204825   2.0
    -2604.204825   2.0
    -2604.198222   6.0
    -2604.198222   6.0
    -2604.198222   6.0
    -2604.198222   6.0
    -2604.198222   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 35
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      94 (  44  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.14 sec, npass=  1  Memory used:   1.31 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.50306542
     2     -2604.50306542
     3     -2604.50306542

 Number of blocks in overlap matrix:   357   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      23553720
 Number of doubly external configurations:       1917627
 Total number of contracted configurations:     25610647
 Total number of uncontracted configurations:  929259190

 Diagonal Coupling coefficients finished.               Storage:  64534671 words, CPU-Time:    255.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4964504 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.50306542     0.00000000    -0.97725968  0.42D-01  0.64D-01   291.01
    1     2     2     1.00000000     0.00000000 -2604.50306542     0.00000000    -0.97725067  0.42D-01  0.64D-01   291.01
    1     3     3     1.00000000     0.00000000 -2604.50306542     0.00000000    -0.97727386  0.42D-01  0.64D-01   291.01
    2     1     1     1.07260282    -0.81065139 -2605.31371681    -0.81065139    -0.02028159  0.36D-02  0.11D-02  2811.32
    2     2     2     1.07260381    -0.81065050 -2605.31371592    -0.81065050    -0.02027867  0.36D-02  0.11D-02  2811.32
    2     3     3     1.07260824    -0.81064799 -2605.31371341    -0.81064799    -0.02028475  0.36D-02  0.11D-02  2811.32
    3     1     1     1.06533270    -0.82976513 -2605.33283055    -0.01911374    -0.00060695  0.43D-04  0.73D-04  5325.59
    3     2     2     1.06533421    -0.82976491 -2605.33283033    -0.01911441    -0.00060697  0.43D-04  0.74D-04  5325.59
    3     3     3     1.06533452    -0.82976488 -2605.33283030    -0.01911689    -0.00060700  0.43D-04  0.74D-04  5325.59
    4     1     1     1.06624396    -0.83043667 -2605.33350209    -0.00067154    -0.00003831  0.12D-05  0.57D-05  7837.86
    4     2     2     1.06624456    -0.83043661 -2605.33350203    -0.00067170    -0.00003835  0.12D-05  0.57D-05  7837.86
    4     3     3     1.06624470    -0.83043660 -2605.33350202    -0.00067172    -0.00003836  0.12D-05  0.57D-05  7837.86
    5     1     1     1.06672170    -0.83048219 -2605.33354761    -0.00004552    -0.00000287  0.11D-06  0.39D-06 10352.58
    5     2     2     1.06672158    -0.83048219 -2605.33354761    -0.00004558    -0.00000287  0.11D-06  0.39D-06 10352.58
    5     3     3     1.06672153    -0.83048219 -2605.33354761    -0.00004558    -0.00000287  0.11D-06  0.39D-06 10352.58
    6     1     1     1.06675994    -0.83048560 -2605.33355102    -0.00000341    -0.00000022  0.11D-07  0.28D-07 12867.68
    6     2     2     1.06676000    -0.83048560 -2605.33355102    -0.00000341    -0.00000022  0.11D-07  0.28D-07 12867.68
    6     3     3     1.06675994    -0.83048559 -2605.33355102    -0.00000341    -0.00000022  0.11D-07  0.28D-07 12867.68
    7     1     1     1.06676802    -0.83048584 -2605.33355126    -0.00000025    -0.00000002  0.10D-08  0.25D-08 15380.45
    7     2     2     1.06676803    -0.83048584 -2605.33355126    -0.00000025    -0.00000002  0.10D-08  0.25D-08 15380.45
    7     3     3     1.06676802    -0.83048584 -2605.33355126    -0.00000025    -0.00000002  0.10D-08  0.25D-08 15380.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.3%  47.7%
 P   0.2%  43.2%   6.0%

 Initialization:   1.7%
 Other:            0.3%

 Total CPU:    15380.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.0416398   0.9526333   0.1270739
 2222222022222/000           0.6866961  -0.1184782   0.6631766
 222222202222/2000          -0.6723886  -0.0620045   0.6851576
 22222220222/2/00\           0.0027080   0.0619525   0.0082640
 22222220222//20\0           0.0027080   0.0619525   0.0082640

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.690992    0.041900   -0.676595
 2          -0.119219    0.958593   -0.062392
 3           0.667325    0.127869    0.689444

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967991   -0.000000    0.000000
 2          -0.000000    0.967991   -0.000000
 3           0.000000   -0.000000    0.967991


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.69099194 (fixed)   0.96817433 (relaxed)   0.96799074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043207   -0.00048508   -1.21771491
 Singles      0.01531441   -0.06557409   -0.07335742
 Pairs        0.05148246    0.53431001    0.46058649
 Total        1.06722894    0.46825084   -0.83048584
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50306542
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.00430592
 One electron energy                -3622.44871918
 Two electron energy                 1017.11516791
 Virial quotient                       -0.93481504
 Correlation energy                    -0.83048584
 !MRCI STATE 1.2 Energy             -2605.333551264043

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38938395 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38904785 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38938395 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38774772 (Pople, fixed reference)
 Cluster corrected energies         -2605.38740250 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38774772 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95859271 (fixed)   0.96817432 (relaxed)   0.96799074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043207   -0.00048508   -0.76323095
 Singles      0.01531440   -0.06557408   -0.07335741
 Pairs        0.05148247    0.04927157    0.00610252
 Total        1.06722895   -0.01678759   -0.83048584
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50306542
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.00430534
 One electron energy                -3622.44871837
 Two electron energy                 1017.11516710
 Virial quotient                       -0.93481504
 Correlation energy                    -0.83048584
 !MRCI STATE 2.2 Energy             -2605.333551263543

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38938395 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38904786 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38938395 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38774773 (Pople, fixed reference)
 Cluster corrected energies         -2605.38740250 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38774773 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.68944374 (fixed)   0.96817433 (relaxed)   0.96799074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043207   -0.00048508   -0.20690381
 Singles      0.01531441   -0.06557409   -0.07335742
 Pairs        0.05148246   -0.54445685   -0.55022461
 Total        1.06722894   -0.61051602   -0.83048584
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50306542
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.00430589
 One electron energy                -3622.44871918
 Two electron energy                 1017.11516792
 Virial quotient                       -0.93481504
 Correlation energy                    -0.83048584
 !MRCI STATE 3.2 Energy             -2605.333551263100

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38938395 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38904785 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38938395 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38774772 (Pople, fixed reference)
 Cluster corrected energies         -2605.38740250 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38774772 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      594.89       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15669.13  15663.42      3.64      0.22      1.66
 REAL TIME  *     15755.24 SEC
 DISK USED  *       644.00 MB (local),        1.94 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.38938395  AU                              
 SETTING HLSDIAG(2)     =     -2605.38938395  AU                              
 SETTING HLSDIAG(3)     =     -2605.38938395  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 35
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      94 (  44  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.20482464
     2     -2604.20482464
     3     -2604.20482464
     4     -2604.19822203
     5     -2604.19822203
     6     -2604.19822203
     7     -2604.19822203
     8     -2604.19822203

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2049D-06

 Number of blocks in overlap matrix:   799   Smallest eigenvalue:  0.20D-06
 Number of N-2 electron functions:    2251
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      21320016
 Number of doubly external configurations:       4975507
 Total number of contracted configurations:     26409975
 Total number of uncontracted configurations:  869401542

 Diagonal Coupling coefficients finished.               Storage:  86417100 words, CPU-Time:   1261.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7740905 words, CPU-time:      0.36 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.20482464    -0.00000000    -0.94067410  0.33D-01  0.55D-01  1348.88
    1     2     2     1.00000000     0.00000000 -2604.20482464     0.00000000    -0.94082774  0.33D-01  0.55D-01  1348.88
    1     3     3     1.00000000     0.00000000 -2604.20482464    -0.00000000    -0.94080910  0.33D-01  0.55D-01  1348.88
    1     4     4     1.00000000     0.00000000 -2604.19822203    -0.00000000    -0.94189074  0.35D-01  0.55D-01  1348.88
    1     5     5     1.00000000     0.00000000 -2604.19822203    -0.00000000    -0.94192315  0.35D-01  0.55D-01  1348.88
    1     6     6     1.00000000     0.00000000 -2604.19822203    -0.00000000    -0.94201699  0.35D-01  0.55D-01  1348.88
    1     7     7     1.00000000     0.00000000 -2604.19822203    -0.00000000    -0.94526962  0.35D-01  0.57D-01  1348.88
    1     8     8     1.00000000     0.00000000 -2604.19822203     0.00000000    -0.94527449  0.35D-01  0.57D-01  1348.88
    2     1     1     1.06221594    -0.78967494 -2604.99449957    -0.78967494    -0.01616994  0.16D-02  0.95D-03  9005.29
    2     2     2     1.06229098    -0.78965543 -2604.99448006    -0.78965543    -0.01620977  0.16D-02  0.95D-03  9005.29
    2     3     3     1.06228227    -0.78965423 -2604.99447887    -0.78965423    -0.01620132  0.16D-02  0.95D-03  9005.29
    2     4     4     1.06323762    -0.79017872 -2604.98840075    -0.79017872    -0.01655018  0.19D-02  0.96D-03  9005.29
    2     5     5     1.06420603    -0.79016523 -2604.98838726    -0.79016523    -0.01669714  0.18D-02  0.10D-02  9005.29
    2     6     6     1.06330674    -0.79015830 -2604.98838034    -0.79015830    -0.01658584  0.19D-02  0.95D-03  9005.29
    2     7     7     1.06427108    -0.79014260 -2604.98836464    -0.79014260    -0.01673202  0.18D-02  0.10D-02  9005.29
    2     8     8     1.06326955    -0.79013484 -2604.98835687    -0.79013484    -0.01658725  0.19D-02  0.96D-03  9005.29
    3     1     1     1.05834543    -0.80510050 -2605.00992514    -0.01542557    -0.00059671  0.26D-04  0.77D-04 16662.78
    3     2     2     1.05833952    -0.80509589 -2605.00992053    -0.01544047    -0.00059868  0.26D-04  0.77D-04 16662.78
    3     3     3     1.05833366    -0.80509237 -2605.00991700    -0.01543814    -0.00060113  0.26D-04  0.78D-04 16662.78
    3     4     4     1.05895444    -0.80607619 -2605.00429822    -0.01589747    -0.00058305  0.33D-04  0.75D-04 16662.78
    3     5     5     1.05894365    -0.80606501 -2605.00428704    -0.01589978    -0.00058864  0.33D-04  0.76D-04 16662.78
    3     6     6     1.05877350    -0.80600965 -2605.00423168    -0.01585134    -0.00062174  0.35D-04  0.79D-04 16662.78
    3     7     7     1.05876327    -0.80600274 -2605.00422478    -0.01586014    -0.00062526  0.35D-04  0.79D-04 16662.78
    3     8     8     1.05875166    -0.80599660 -2605.00421863    -0.01586176    -0.00062840  0.35D-04  0.80D-04 16662.78
    4     1     1     1.05943441    -0.80582301 -2605.01064764    -0.00072250    -0.00007014  0.33D-05  0.86D-05 24270.37
    4     2     2     1.05943039    -0.80582185 -2605.01064649    -0.00072596    -0.00007092  0.33D-05  0.87D-05 24270.37
    4     3     3     1.05942898    -0.80582161 -2605.01064625    -0.00072925    -0.00007118  0.33D-05  0.87D-05 24270.37
    4     4     4     1.05985382    -0.80677362 -2605.00499565    -0.00069743    -0.00006632  0.31D-05  0.85D-05 24270.37
    4     5     5     1.05984611    -0.80677135 -2605.00499339    -0.00070634    -0.00006788  0.32D-05  0.87D-05 24270.37
    4     6     6     1.05984084    -0.80676483 -2605.00498686    -0.00075518    -0.00007310  0.35D-05  0.90D-05 24270.37
    4     7     7     1.05983691    -0.80676363 -2605.00498567    -0.00076089    -0.00007399  0.35D-05  0.91D-05 24270.37
    4     8     8     1.05983339    -0.80676263 -2605.00498466    -0.00076604    -0.00007470  0.36D-05  0.92D-05 24270.37
    5     1     1     1.06010618    -0.80591198 -2605.01073661    -0.00008897    -0.00000702  0.34D-06  0.79D-06 31868.62
    5     2     2     1.06010588    -0.80591190 -2605.01073653    -0.00009005    -0.00000709  0.34D-06  0.79D-06 31868.62
    5     3     3     1.06010670    -0.80591190 -2605.01073653    -0.00009028    -0.00000710  0.34D-06  0.79D-06 31868.62
    5     4     4     1.06052750    -0.80685800 -2605.00508003    -0.00008438    -0.00000681  0.34D-06  0.79D-06 31868.62
    5     5     5     1.06052741    -0.80685783 -2605.00507986    -0.00008647    -0.00000696  0.35D-06  0.80D-06 31868.62
    5     6     6     1.06052589    -0.80685754 -2605.00507957    -0.00009272    -0.00000738  0.37D-06  0.84D-06 31868.62
    5     7     7     1.06052535    -0.80685748 -2605.00507951    -0.00009384    -0.00000744  0.37D-06  0.84D-06 31868.62
    5     8     8     1.06052549    -0.80685739 -2605.00507943    -0.00009476    -0.00000752  0.38D-06  0.85D-06 31868.62
    6     1     1     1.06009161    -0.80592047 -2605.01074511    -0.00000850    -0.00000075  0.27D-07  0.95D-07 39465.98
    6     2     2     1.06009190    -0.80592047 -2605.01074511    -0.00000857    -0.00000074  0.27D-07  0.95D-07 39465.98
    6     3     3     1.06009168    -0.80592047 -2605.01074511    -0.00000858    -0.00000075  0.27D-07  0.95D-07 39465.98
    6     4     4     1.06051646    -0.80686647 -2605.00508850    -0.00000847    -0.00000078  0.35D-07  0.99D-07 39465.98
    6     5     5     1.06051616    -0.80686646 -2605.00508850    -0.00000864    -0.00000078  0.35D-07  0.99D-07 39465.98
    6     6     6     1.06051565    -0.80686646 -2605.00508849    -0.00000892    -0.00000079  0.35D-07  0.99D-07 39465.98
    6     7     7     1.06052028    -0.80686630 -2605.00508833    -0.00000882    -0.00000074  0.34D-07  0.96D-07 39465.98
    6     8     8     1.06051995    -0.80686629 -2605.00508832    -0.00000889    -0.00000075  0.34D-07  0.97D-07 39465.98
    7     1     1     1.06010169    -0.80592139 -2605.01074603    -0.00000092    -0.00000012  0.62D-08  0.15D-07 47061.70
    7     2     2     1.06010172    -0.80592139 -2605.01074603    -0.00000092    -0.00000012  0.62D-08  0.15D-07 47061.70
    7     3     3     1.06010199    -0.80592139 -2605.01074603    -0.00000092    -0.00000012  0.62D-08  0.15D-07 47061.70
    7     4     4     1.06052890    -0.80686743 -2605.00508946    -0.00000096    -0.00000013  0.68D-08  0.15D-07 47061.70
    7     5     5     1.06052866    -0.80686743 -2605.00508946    -0.00000097    -0.00000013  0.67D-08  0.15D-07 47061.70
    7     6     6     1.06052856    -0.80686743 -2605.00508946    -0.00000097    -0.00000013  0.68D-08  0.15D-07 47061.70
    7     7     7     1.06053087    -0.80686722 -2605.00508926    -0.00000092    -0.00000013  0.67D-08  0.15D-07 47061.70
    7     8     8     1.06053058    -0.80686722 -2605.00508925    -0.00000094    -0.00000013  0.67D-08  0.15D-07 47061.70
    8     1     1     1.06011071    -0.80592154 -2605.01074617    -0.00000015    -0.00000002  0.14D-08  0.23D-08 54658.53
    8     2     2     1.06011078    -0.80592154 -2605.01074617    -0.00000015    -0.00000002  0.14D-08  0.23D-08 54658.53
    8     3     3     1.06011070    -0.80592154 -2605.01074617    -0.00000015    -0.00000002  0.14D-08  0.23D-08 54658.53
    8     4     4     1.06053789    -0.80686758 -2605.00508962    -0.00000015    -0.00000002  0.15D-08  0.23D-08 54658.53
    8     5     5     1.06053782    -0.80686758 -2605.00508961    -0.00000015    -0.00000002  0.15D-08  0.23D-08 54658.53
    8     6     6     1.06053780    -0.80686758 -2605.00508961    -0.00000015    -0.00000002  0.15D-08  0.23D-08 54658.53
    8     7     7     1.06053821    -0.80686738 -2605.00508941    -0.00000015    -0.00000002  0.15D-08  0.23D-08 54658.53
    8     8     8     1.06053820    -0.80686738 -2605.00508941    -0.00000015    -0.00000002  0.15D-08  0.23D-08 54658.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.2%  41.1%
 P   0.2%  44.2%  10.8%

 Initialization:   2.3%
 Other:            0.7%

 Total CPU:    54658.5 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222///00          -0.0000000  -0.0000000   0.0000000   0.0001501   0.0001357   0.0001071   0.7792404   0.1357805
 22222220222/2/0/0          -0.0000000   0.0000000   0.0000000   0.0002525  -0.0002448   0.0000771   0.2720310   0.7427321
 22222220222//2/00          -0.0206237  -0.0075217   0.6848290  -0.0096025  -0.3616216   0.5817016   0.0000166  -0.0001824
 222222202222//00/           0.0206237   0.0075217  -0.6848288  -0.0096025  -0.3616217   0.5817017   0.0000167  -0.0001824
 22222220222//20/0           0.0837339   0.6799717   0.0099900  -0.6847591   0.0185545   0.0002309   0.0000929   0.0002048
 22222220222/2/00/           0.0837338   0.6799715   0.0099900   0.6847589  -0.0185545  -0.0002309  -0.0000929  -0.0002049
 22222220222/2//00           0.6797322  -0.0839915   0.0195477   0.0158782   0.5814849   0.3617491  -0.0001922   0.0002191
 222222202222//0/0           0.6797322  -0.0839916   0.0195477  -0.0158782  -0.5814848  -0.3617491   0.0001922  -0.0002191
 22222220222//200/           0.0000000   0.0000000   0.0000000   0.0001024  -0.0003805  -0.0000300  -0.5072095   0.6069518

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.963423   -0.029231    0.118681    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.119046   -0.010661    0.963763    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.027706    0.970647    0.014159    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.022506   -0.013611    0.970593    0.000232    0.000208
 5           0.000000    0.000000   -0.000000    0.824210   -0.512571   -0.026300    0.000071   -0.000468
 6           0.000000   -0.000000   -0.000000    0.512751    0.824517   -0.000327    0.000136    0.000006
 7           0.000000   -0.000000    0.000000   -0.000272    0.000024   -0.000132    0.901462   -0.360704
 8           0.000000   -0.000000   -0.000000    0.000311   -0.000259   -0.000290    0.360704    0.901462

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971146   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.971146   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.971146   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.970949    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.970949   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970949    0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970949    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970949


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96342321 (fixed)   0.97120632 (relaxed)   0.97114565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018432   -0.00058078   -0.69181195
 Singles      0.01625651   -0.07253765   -0.08076436
 Pairs        0.04386529    0.00000000   -0.03334524
 Total        1.06030611   -0.07311843   -0.80592154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20482464
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.33956621
 One electron energy                -3612.63547526
 Two electron energy                 1007.62472909
 Virial quotient                       -0.93492221
 Correlation energy                    -0.80592154
 !MRCI STATE 1.2 Energy             -2605.010746174897

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05934817 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05924140 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05934817 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05720759 (Pople, fixed reference)
 Cluster corrected energies         -2605.05710031 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05720759 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96376252 (fixed)   0.97120629 (relaxed)   0.97114562 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018432   -0.00058078   -0.69181194
 Singles      0.01625649   -0.07253759   -0.08076432
 Pairs        0.04386536   -0.00000001   -0.03334527
 Total        1.06030617   -0.07311839   -0.80592154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20482464
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.33955922
 One electron energy                -3612.63546746
 Two electron energy                 1007.62472129
 Virial quotient                       -0.93492221
 Correlation energy                    -0.80592154
 !MRCI STATE 2.2 Energy             -2605.010746174800

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05934822 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05924146 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05934822 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05720764 (Pople, fixed reference)
 Cluster corrected energies         -2605.05710037 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05720764 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97064708 (fixed)   0.97120633 (relaxed)   0.97114565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018432   -0.00058078   -0.69181198
 Singles      0.01625650   -0.07253762   -0.08076435
 Pairs        0.04386529   -0.00000001   -0.03334522
 Total        1.06030610   -0.07311840   -0.80592154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20482464
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.33957350
 One electron energy                -3612.63548016
 Two electron energy                 1007.62473398
 Virial quotient                       -0.93492221
 Correlation energy                    -0.80592154
 !MRCI STATE 3.2 Energy             -2605.010746174145

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05934816 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05924139 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05934816 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05720758 (Pople, fixed reference)
 Cluster corrected energies         -2605.05710030 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05720758 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97059289 (fixed)   0.97100976 (relaxed)   0.97094924 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018597   -0.00058910   -0.69173202
 Singles      0.01655834   -0.07311608   -0.08152127
 Pairs        0.04399081   -0.00015710   -0.03361429
 Total        1.06073512   -0.07386229   -0.80686758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19822203
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.34907561
 One electron energy                -3612.64914461
 Two electron energy                 1007.64405500
 Virial quotient                       -0.93491699
 Correlation energy                    -0.80686758
 !MRCI STATE 4.2 Energy             -2605.005089615292

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05409481 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05398813 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05409481 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05195355 (Pople, fixed reference)
 Cluster corrected energies         -2605.05184628 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05195355 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.82420982 (fixed)   0.97100979 (relaxed)   0.97094927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018597   -0.00058910   -0.69221326
 Singles      0.01655836   -0.07311613   -0.08152130
 Pairs        0.04399072    0.00035336   -0.03313302
 Total        1.06073505   -0.07335187   -0.80686758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19822203
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.34907916
 One electron energy                -3612.64914887
 Two electron energy                 1007.64405926
 Virial quotient                       -0.93491699
 Correlation energy                    -0.80686758
 !MRCI STATE 5.2 Energy             -2605.005089614917

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05409476 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05398807 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05409476 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05195349 (Pople, fixed reference)
 Cluster corrected energies         -2605.05184622 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05195349 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.82451709 (fixed)   0.97100980 (relaxed)   0.97094928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018597   -0.00058910   -0.69187622
 Singles      0.01655837   -0.07311613   -0.08152130
 Pairs        0.04399069   -0.00000417   -0.03347006
 Total        1.06073502   -0.07370940   -0.80686758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19822203
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.34907877
 One electron energy                -3612.64914868
 Two electron energy                 1007.64405907
 Virial quotient                       -0.93491699
 Correlation energy                    -0.80686758
 !MRCI STATE 6.2 Energy             -2605.005089614702

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05409474 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05398805 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05409474 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05195347 (Pople, fixed reference)
 Cluster corrected energies         -2605.05184620 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05195347 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.90146235 (fixed)   0.97100962 (relaxed)   0.97094910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018597   -0.00058909   -0.94865264
 Singles      0.01655794   -0.07311556   -0.08152062
 Pairs        0.04399152    0.27236760    0.22330588
 Total        1.06073543    0.19866295   -0.80686738
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19822203
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.34907822
 One electron energy                -3612.64913089
 Two electron energy                 1007.64404149
 Virial quotient                       -0.93491699
 Correlation energy                    -0.80686738
 !MRCI STATE 7.2 Energy             -2605.005089409087

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05409485 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05398816 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05409485 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05195359 (Pople, fixed reference)
 Cluster corrected energies         -2605.05184631 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05195359 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.90146224 (fixed)   0.97100962 (relaxed)   0.97094910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018597   -0.00058909   -0.05016198
 Singles      0.01655796   -0.07311558   -0.08152064
 Pairs        0.04399150   -0.68069326   -0.67518476
 Total        1.06073543   -0.75439794   -0.80686738
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19822203
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.34906656
 One electron energy                -3612.64912434
 Two electron energy                 1007.64403493
 Virial quotient                       -0.93491699
 Correlation energy                    -0.80686738
 !MRCI STATE 8.2 Energy             -2605.005089408267

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05409485 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05398816 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05409485 (Davidson, rotated reference)

 Cluster corrected energies         -2605.05195358 (Pople, fixed reference)
 Cluster corrected energies         -2605.05184631 (Pople, relaxed reference)
 Cluster corrected energies         -2605.05195358 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.02       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2227.50       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     76648.88  60979.73  15663.42      3.64      0.22      1.66
 REAL TIME  *     77054.85 SEC
 DISK USED  *         2.22 GB (local),        6.72 GB (total)
 SF USED    *        17.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2605.05934817  AU                              
 SETTING HLSDIAG(5)     =     -2605.05934822  AU                              
 SETTING HLSDIAG(6)     =     -2605.05934816  AU                              
 SETTING HLSDIAG(7)     =     -2605.05409481  AU                              
 SETTING HLSDIAG(8)     =     -2605.05409476  AU                              
 SETTING HLSDIAG(9)     =     -2605.05409474  AU                              
 SETTING HLSDIAG(10)    =     -2605.05409485  AU                              
 SETTING HLSDIAG(11)    =     -2605.05409485  AU                              


         HLSDIAG
    -2605.389384
    -2605.389384
    -2605.389384
    -2605.059348
    -2605.059348
    -2605.059348
    -2605.054095
    -2605.054095
    -2605.054095
    -2605.054095
    -2605.054095
                                                  

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

 Time for Seward_LS:       7.45 sec

       11700936. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3488 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.45 sec, REAL time:      7.56 sec


 SORTLS1 read    14258439. and wrote    14258439. SO integrals in    60 records. CPU time:      0.12 sec, REAL time:      0.21 sec
 SORTLS2 read    14258439. and wrote    69083406. SO integrals in     9 records. CPU time:      0.10 sec, REAL time:      0.26 sec

 FILE SIZES: FILE 1:   280.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   280.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2227.50       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     76657.42      8.52  60979.73  15663.42      3.64      0.22      1.66
 REAL TIME  *     77063.98 SEC
 DISK USED  *         2.22 GB (local),        7.43 GB (total)
 SF USED    *        17.37 GB
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

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -2605.333551  -2605.333551  -2605.333551
 Replaced energies:  -2605.389384  -2605.389384  -2605.389384

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:  -2605.010746  -2605.010746  -2605.010746  -2605.005090  -2605.005090  -2605.005090  -2605.005089  -2605.005089
 Replaced energies:  -2605.059348  -2605.059348  -2605.059348  -2605.054095  -2605.054095  -2605.054095  -2605.054095  -2605.054095

 >>> Fock matrix approximation error in all internal so: 
  -5.0736948928350971       (exact)   -5.1315386797121905       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.703122886868769       (exact)   -37.937343227191882       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.3911474714156089       (exact)   -8.4691094504871405       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -27.403686991912924       (exact)   -27.786075152155554       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4950435250079632       (exact)    9.5911931349922099       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -26.033705060813983       (exact)   -26.400265553277830       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.45377470303118506       (exact)  -0.45971658464003268       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0311464462335258       (exact)   -1.0371438771597834       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.53863546566443865       (exact)  -0.54500934309862992       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -30.703718649428851       (exact)   -31.095604442259493       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3062797379216988       (exact)    4.3680774336715453       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -29.764049668642919       (exact)   -30.143338862410406       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.75900716083980135       (exact)  -0.75783761597523369       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -36.276986091617630       (exact)   -36.491655176232484       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0062462180130600       (exact)   -4.0242366432673267       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.96881360592468424       (exact)  -0.97442301508298412       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.480023478718568       (exact)   -22.612442766065470       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.9919209888169305       (exact)   -3.0095011305793626       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.935595288849207       (exact)    12.097778613155706       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1114373669838393       (exact)    1.1264491702436379       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.151869709967235       (exact)   -12.317014925995338       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   32.583831275726162       (exact)    33.021508606786661       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9887359588848752       (exact)    3.0289857448034585       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -33.186819568296073       (exact)   -33.632590282390865       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3799858257361972       (exact)    3.4266194843712570       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4687509321041372       (exact)    1.4803755395721163       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2374575607372194       (exact)   -3.2836683763939063       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   27.053745327524890       (exact)    27.429947138236553       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9167585272638812       (exact)    2.9541213435188012       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -27.492122430348136       (exact)   -27.874991298917760       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2890069184568724       (exact)   -1.2941551683424501       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -38.540225699207674       (exact)   -38.783906099656974       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.5505913149062263       (exact)   -5.5887946392202617       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -30.011123721659747       (exact)   -30.394265742242844       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.1719857791013442       (exact)   -2.2038006734881708       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   30.678118674905971       (exact)    31.069040156959591       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8130124206994578       (exact)    1.8294100062388499       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.542731121398152       (exact)    22.676003233773706       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1846388965453225       (exact)    2.1919327622299747       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5684791350582377       (exact)   -1.5776379431051215       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -36.145368790291720       (exact)   -36.358263464488793       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8306294599442348       (exact)   -4.8591434631952621       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.722916000013974       (exact)    23.027071719484272       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.9204365707714146       (exact)   -3.9729060594594543       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   21.936459403282306       (exact)    22.230093858395584       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -27.177053740550491       (exact)   -27.540841643877613       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7027625639969006       (exact)    4.7656258726891094       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -26.263023901322104       (exact)   -26.614573408354580       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   30.239609362043897       (exact)    30.423267036965722       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0445628251988484       (exact)    3.0650566296626840       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.733089179144478       (exact)   -32.946905621200173       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.2087333559140392       (exact)   -4.2379885936539452       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.29474088306351659       (exact)  -0.29614128406013335       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.5887034949133461       (exact)    3.6087871566905361       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   33.007034829491239       (exact)    33.458923094006252       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.4572355586903987       (exact)   -5.5337009124911543       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   30.095347317998367       (exact)    30.520508575366847       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.30794751805851578       (exact)  -0.30635661290449567       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.17061533644396104       (exact)  -0.17229322740690139       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2976038061434534       (exact)    1.3085478496730323       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.745396342667364       (exact)   -10.680325443768240       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9523297799228674       (exact)   -6.0097108115322539       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   48.069371540424328       (exact)    48.477210496243408       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -48.406964493489596       (exact)   -48.899415531710844       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4938205565533291       (exact)    3.5500497073368757       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.388703495387764       (exact)   -10.649663100804716       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4350313561773067       (exact)   -2.4680173881307006       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -55.910533904196193       (exact)   -56.666243897453072       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.4689258691734839       (exact)   -7.5698018852747175       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.42750262118387172       (exact)  -0.43320342050415528       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.7450783317349927       (exact)   -9.8767868607611256       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2791497674862053       (exact)   -1.2965319966538051       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.38938395

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     897.76     160.39     -21.47    -171.87       8.18     187.22
                            0.00     172.02   -1289.60      -0.00     927.51      83.94      32.22     174.01       2.88     191.53

    2   2.2  0.5  0.5       0.00       0.00       0.00    -897.76       0.00     929.59      -9.33     -18.53     244.74      13.55
                         -172.02      -0.00      56.37    -927.51       0.00    -910.23     239.41     -60.29       6.55     -26.87

    3   3.2  0.5  0.5       0.00       0.00       0.00    -160.39    -929.59       0.00      20.57     174.66      35.25    -191.38
                         1289.60     -56.37       0.00     -83.94     910.23       0.00      53.28     165.31       3.42     185.67

    4   1.2  0.5 -0.5      -0.00    -897.76    -160.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     927.51      83.94      -0.00    -172.02    1289.60       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     897.76       0.00    -929.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -927.51      -0.00    -910.23     172.02       0.00     -56.37       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5     160.39     929.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -83.94     910.23      -0.00   -1289.60      56.37      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5     -21.47      -9.33      20.57       0.00       0.00       0.00   72434.48       0.00       0.00       0.00
                          -32.22    -239.41     -53.28      -0.00      -0.00      -0.00      -0.00       9.91    -674.83       9.92

    8   2.2  1.5  1.5    -171.87     -18.53     174.66       0.00       0.00       0.00       0.00   72434.47       0.00       0.00
                         -174.01      60.29    -165.31      -0.00      -0.00      -0.00      -9.91      -0.00      83.10      -1.32

    9   3.2  1.5  1.5       8.18     244.74      35.25       0.00       0.00       0.00       0.00       0.00   72434.49       0.00
                           -2.88      -6.55      -3.42      -0.00      -0.00      -0.00     674.83     -83.10       0.00      17.67

   10   4.2  1.5  1.5     187.22      13.55    -191.38       0.00       0.00       0.00       0.00       0.00       0.00   73587.46
                         -191.53      26.87    -185.67      -0.00      -0.00      -0.00      -9.92       1.32     -17.67      -0.00

   11   5.2  1.5  1.5     -11.30    -140.50     -13.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.72    -226.01     -24.95      -0.00      -0.00      -0.00    -373.44      55.35    -647.28      -0.84

   12   6.2  1.5  1.5       9.77     225.28      30.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.04    -140.06     -18.64      -0.00      -0.00      -0.00     643.39     -73.80    -377.50      18.47

   13   7.2  1.5  1.5    -141.62      24.43    -136.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.21       6.91     -75.55      -0.00      -0.00      -0.00    -104.20    -846.24     -12.22    -233.46

   14   8.2  1.5  1.5     169.31     -29.30     163.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          203.07      18.63    -206.82      -0.00      -0.00      -0.00     -18.35    -147.43      -2.41    1339.83

   15   1.2  1.5  0.5       0.00       0.00       0.00     -12.40      -5.38      11.88       0.00      11.20      48.13      13.83
                          191.93      19.32    -207.76     -18.60    -138.23     -30.76      -0.00    -392.40      -4.31     427.96

   16   2.2  1.5  0.5       0.00       0.00       0.00     -99.23     -10.70     100.84     -11.20       0.00     389.48      10.76
                          -26.71      -1.87      22.78    -100.47      34.81     -95.44     392.40       0.00      11.82     -62.99

   17   3.2  1.5  0.5       0.00       0.00       0.00       4.73     141.30      20.35     -48.13    -389.48      -0.00    -432.32
                          209.58     -34.65     191.10      -1.66      -3.78      -1.97       4.31     -11.82       0.00      12.36

   18   4.2  1.5  0.5       0.00       0.00       0.00     108.09       7.83    -110.49     -13.83     -10.76     432.31      -0.00
                           -1.92      -1.06       8.09    -110.58      15.51    -107.19    -427.95      62.99     -12.36      -0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      -6.53     -81.12      -7.86     -27.33    -226.63     -15.04    -207.60
                          -66.83     -37.10     299.57      -2.73    -130.49     -14.41      56.52     363.15       5.85    -333.53

   20   6.2  1.5  0.5       0.00       0.00       0.00       5.64     130.06      17.38      44.94     364.72       5.21     333.27
                         -301.75      21.80     -64.89      -3.49     -80.86     -10.76      28.08     226.80       3.29    -207.31

   21   7.2  1.5  0.5       0.00       0.00       0.00     -81.76      14.11     -78.93     317.90     -39.27       9.08      13.98
                          -15.17    -348.30     -46.53      42.84       3.99     -43.62       5.22       1.76    -171.78      10.45

   22   8.2  1.5  0.5       0.00       0.00       0.00      97.75     -16.91      94.46    -380.43      46.89     -11.07      11.57
                           -2.67     -60.78      -7.98     117.24      10.75    -119.41      14.27       5.27    -469.00      -3.92

   23   1.2  1.5 -0.5     -12.40      -5.38      11.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.60     138.23      30.76     191.93      19.32    -207.76      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5     -99.23     -10.70     100.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.47     -34.81      95.44     -26.71      -1.87      22.78      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5       4.73     141.30      20.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.66       3.78       1.97     209.58     -34.65     191.10      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5     108.09       7.83    -110.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          110.58     -15.51     107.19      -1.92      -1.06       8.09      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      -6.53     -81.12      -7.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.73     130.49      14.41     -66.83     -37.10     299.57      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5       5.64     130.06      17.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.49      80.86      10.76    -301.75      21.80     -64.89      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     -81.76      14.11     -78.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -42.84      -3.99      43.62     -15.17    -348.30     -46.53      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5      97.75     -16.91      94.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -117.24     -10.75     119.41      -2.67     -60.78      -7.98      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     -21.47      -9.33      20.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      32.22     239.41      53.28      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00    -171.87     -18.53     174.66       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     174.01     -60.29     165.31      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       8.18     244.74      35.25       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.88       6.55       3.42      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00     187.22      13.55    -191.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     191.53     -26.87     185.67      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00     -11.30    -140.50     -13.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       4.72     226.01      24.95      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       9.77     225.28      30.11       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       6.04     140.06      18.64      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00    -141.62      24.43    -136.72       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -74.21      -6.91      75.55      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00     169.31     -29.30     163.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -203.07     -18.63     206.82      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5     -11.30       9.77    -141.62     169.31       0.00       0.00       0.00       0.00       0.00       0.00
                            4.72       6.04     -74.21    -203.07    -191.93      26.71    -209.58       1.92      66.83     301.75

    2   2.2  0.5  0.5    -140.50     225.28      24.43     -29.30       0.00       0.00       0.00       0.00       0.00       0.00
                          226.01     140.06      -6.91     -18.63     -19.32       1.87      34.65       1.06      37.10     -21.80

    3   3.2  0.5  0.5     -13.61      30.11    -136.72     163.61       0.00       0.00       0.00       0.00       0.00       0.00
                           24.95      18.64      75.55     206.82     207.76     -22.78    -191.10      -8.09    -299.57      64.89

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00     -12.40     -99.23       4.73     108.09      -6.53       5.64
                            0.00       0.00       0.00       0.00      18.60     100.47       1.66     110.58       2.73       3.49

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -5.38     -10.70     141.30       7.83     -81.12     130.06
                            0.00       0.00       0.00       0.00     138.23     -34.81       3.78     -15.51     130.49      80.86

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      11.88     100.84      20.35    -110.49      -7.86      17.38
                            0.00       0.00       0.00       0.00      30.76      95.44       1.97     107.19      14.41      10.76

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00     -11.20     -48.13     -13.83     -27.33      44.94
                          373.44    -643.39     104.20      18.35       0.00    -392.40      -4.31     427.95     -56.52     -28.08

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      11.20       0.00    -389.48     -10.76    -226.63     364.72
                          -55.35      73.80     846.24     147.43     392.40      -0.00      11.82     -62.99    -363.15    -226.80

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00      48.13     389.48      -0.00     432.31     -15.04       5.21
                          647.28     377.50      12.22       2.41       4.31     -11.82      -0.00      12.36      -5.85      -3.29

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      13.83      10.76    -432.32      -0.00    -207.60     333.27
                            0.84     -18.47     233.46   -1339.83    -427.96      62.99     -12.36       0.00     333.53     207.31

   11   5.2  1.5  1.5   73587.47       0.00       0.00       0.00      27.33     226.64      15.04     207.60       0.00      -8.98
                            0.00    -680.01      -6.24      36.34      56.52     363.15       5.85    -333.53      -0.00      -5.80

   12   6.2  1.5  1.5       0.00   73587.48       0.00       0.00     -44.94    -364.73      -5.21    -333.27       8.98       0.00
                          680.01      -0.00      -0.25       0.73      28.08     226.80       3.29    -207.31       5.80      -0.00

   13   7.2  1.5  1.5       0.00       0.00   73587.45       0.00    -317.91      39.27      -9.08     -13.98    -511.62    -318.35
                            6.24       0.25      -0.00       0.25       5.22       1.76    -171.78      10.45     389.32    -626.37

   14   8.2  1.5  1.5       0.00       0.00       0.00   73587.45     380.44     -46.89      11.07     -11.57    -427.51    -266.10
                          -36.34      -0.73      -0.25       0.00      14.27       5.27    -469.02      -3.92    -142.71     229.34

   15   1.2  1.5  0.5      27.33     -44.94    -317.91     380.44   72434.48       0.00       0.00       0.00       0.00       0.00
                          -56.52     -28.08      -5.22     -14.27      -0.00       3.30    -224.94       3.31     124.48    -214.46

   16   2.2  1.5  0.5     226.64    -364.73      39.27     -46.89       0.00   72434.47       0.00       0.00       0.00       0.00
                         -363.15    -226.80      -1.76      -5.27      -3.30      -0.00      27.70      -0.44     -18.45      24.60

   17   3.2  1.5  0.5      15.04      -5.21      -9.08      11.07       0.00       0.00   72434.49       0.00       0.00       0.00
                           -5.85      -3.29     171.78     469.02     224.94     -27.70       0.00       5.89     215.76     125.83

   18   4.2  1.5  0.5     207.60    -333.27     -13.98     -11.57       0.00       0.00       0.00   73587.46       0.00       0.00
                          333.53     207.31     -10.45       3.92      -3.31       0.44      -5.89      -0.00       0.28      -6.16

   19   5.2  1.5  0.5       0.00       8.98    -511.62    -427.51       0.00       0.00       0.00       0.00   73587.47       0.00
                            0.00      -5.80    -389.32     142.71    -124.48      18.45    -215.76      -0.28       0.00    -226.67

   20   6.2  1.5  0.5      -8.98       0.00    -318.35    -266.10       0.00       0.00       0.00       0.00       0.00   73587.48
                            5.80       0.00     626.37    -229.34     214.46     -24.60    -125.83       6.16     226.67      -0.00

   21   7.2  1.5  0.5     511.62     318.35      -0.00       0.33       0.00       0.00       0.00       0.00       0.00       0.00
                          389.32    -626.37       0.00       0.19     -34.73    -282.08      -4.07     -77.82       2.08       0.08

   22   8.2  1.5  0.5     427.51     266.10      -0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -142.71     229.34      -0.19      -0.00      -6.12     -49.14      -0.80     446.61     -12.11      -0.24

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      12.93      55.57      15.97      31.56     -51.89
                           -0.00      -0.00      -0.00      -0.00      -0.00    -453.10      -4.98     494.17     -65.27     -32.42

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     -12.93       0.00     449.73      12.43     261.70    -421.15
                           -0.00      -0.00      -0.00      -0.00     453.10       0.00      13.65     -72.74    -419.33    -261.89

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00     -55.57    -449.73      -0.00    -499.20      17.37      -6.02
                           -0.00      -0.00      -0.00      -0.00       4.98     -13.65       0.00      14.27      -6.75      -3.80

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00     -15.97     -12.43     499.19      -0.00     239.72    -384.83
                           -0.00      -0.00      -0.00      -0.00    -494.16      72.73     -14.27      -0.00     385.12     239.38

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     -31.56    -261.69     -17.37    -239.72       0.00      10.37
                           -0.00      -0.00      -0.00      -0.00      65.26     419.32       6.75    -385.12       0.00      -6.70

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      51.89     421.14       6.02     384.83     -10.37       0.00
                           -0.00      -0.00      -0.00      -0.00      32.42     261.88       3.80    -239.38       6.70       0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00     367.08     -45.35      10.49      16.14     590.77     367.60
                           -0.00      -0.00      -0.00      -0.00       6.02       2.03    -198.35      12.06     449.55    -723.27

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    -439.28      54.15     -12.78      13.36     493.64     307.26
                           -0.00      -0.00      -0.00      -0.00      16.48       6.09    -541.56      -4.52    -164.78     264.82

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00     -12.40     -99.23       4.73     108.09      -6.53       5.64     -81.76      97.75
                           15.17       2.67     -18.60    -100.47      -1.66    -110.58      -2.73      -3.49      42.84     117.24

    2   2.2  0.5  0.5       0.00       0.00      -5.38     -10.70     141.30       7.83     -81.12     130.06      14.11     -16.91
                          348.30      60.78    -138.23      34.81      -3.78      15.51    -130.49     -80.86       3.99      10.75

    3   3.2  0.5  0.5       0.00       0.00      11.88     100.84      20.35    -110.49      -7.86      17.38     -78.93      94.46
                           46.53       7.98     -30.76     -95.44      -1.97    -107.19     -14.41     -10.76     -43.62    -119.41

    4   1.2  0.5 -0.5     -81.76      97.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -42.84    -117.24    -191.93      26.71    -209.58       1.92      66.83     301.75      15.17       2.67

    5   2.2  0.5 -0.5      14.11     -16.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.99     -10.75     -19.32       1.87      34.65       1.06      37.10     -21.80     348.30      60.78

    6   3.2  0.5 -0.5     -78.93      94.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           43.62     119.41     207.76     -22.78    -191.10      -8.09    -299.57      64.89      46.53       7.98

    7   1.2  1.5  1.5     317.90    -380.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.22     -14.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5     -39.27      46.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.76      -5.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       9.08     -11.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          171.78     469.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      13.98      11.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.45       3.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     511.62     427.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -389.32     142.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5     318.35     266.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          626.37    -229.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00      -0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00     -12.93     -55.57     -15.97     -31.56      51.89     367.08    -439.28
                           34.73       6.12       0.00    -453.10      -4.98     494.16     -65.26     -32.42      -6.02     -16.48

   16   2.2  1.5  0.5       0.00       0.00      12.93       0.00    -449.73     -12.43    -261.69     421.14     -45.35      54.15
                          282.08      49.14     453.10      -0.00      13.65     -72.73    -419.32    -261.88      -2.03      -6.09

   17   3.2  1.5  0.5       0.00       0.00      55.57     449.73      -0.00     499.19     -17.37       6.02      10.49     -12.78
                            4.07       0.80       4.98     -13.65      -0.00      14.27      -6.75      -3.80     198.35     541.56

   18   4.2  1.5  0.5       0.00       0.00      15.97      12.43    -499.20      -0.00    -239.72     384.83      16.14      13.36
                           77.82    -446.61    -494.17      72.74     -14.27       0.00     385.12     239.38     -12.06       4.52

   19   5.2  1.5  0.5       0.00       0.00      31.56     261.70      17.37     239.72       0.00     -10.37     590.77     493.64
                           -2.08      12.11      65.27     419.33       6.75    -385.12      -0.00      -6.70    -449.55     164.78

   20   6.2  1.5  0.5       0.00       0.00     -51.89    -421.15      -6.02    -384.83      10.37       0.00     367.60     307.26
                           -0.08       0.24      32.42     261.89       3.80    -239.38       6.70      -0.00     723.27    -264.82

   21   7.2  1.5  0.5   73587.45       0.00    -367.09      45.35     -10.49     -16.14    -590.77    -367.60      -0.00      -0.39
                           -0.00       0.08       6.02       2.03    -198.36      12.06     449.55    -723.27      -0.00       0.22

   22   8.2  1.5  0.5       0.00   73587.45     439.29     -54.15      12.78     -13.36    -493.64    -307.26       0.39       0.00
                           -0.08       0.00      16.48       6.09    -541.57      -4.52    -164.78     264.82      -0.22       0.00

   23   1.2  1.5 -0.5    -367.09     439.29   72434.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.02     -16.48       0.00      -3.30     224.94      -3.31    -124.48     214.46     -34.73      -6.12

   24   2.2  1.5 -0.5      45.35     -54.15       0.00   72434.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.03      -6.09       3.30       0.00     -27.70       0.44      18.45     -24.60    -282.08     -49.14

   25   3.2  1.5 -0.5     -10.49      12.78       0.00       0.00   72434.49       0.00       0.00       0.00       0.00       0.00
                          198.36     541.57    -224.94      27.70      -0.00      -5.89    -215.76    -125.83      -4.07      -0.80

   26   4.2  1.5 -0.5     -16.14     -13.36       0.00       0.00       0.00   73587.46       0.00       0.00       0.00       0.00
                          -12.06       4.52       3.31      -0.44       5.89       0.00      -0.28       6.16     -77.82     446.61

   27   5.2  1.5 -0.5    -590.77    -493.64       0.00       0.00       0.00       0.00   73587.47       0.00       0.00       0.00
                         -449.55     164.78     124.48     -18.45     215.76       0.28      -0.00     226.67       2.08     -12.11

   28   6.2  1.5 -0.5    -367.60    -307.26       0.00       0.00       0.00       0.00       0.00   73587.48       0.00       0.00
                          723.27    -264.82    -214.46      24.60     125.83      -6.16    -226.67       0.00       0.08      -0.24

   29   7.2  1.5 -0.5      -0.00       0.39       0.00       0.00       0.00       0.00       0.00       0.00   73587.45       0.00
                            0.00       0.22      34.73     282.08       4.07      77.82      -2.08      -0.08       0.00      -0.08

   30   8.2  1.5 -0.5      -0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73587.45
                           -0.22      -0.00       6.12      49.14       0.80    -446.61      12.11       0.24       0.08      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      11.20      48.13      13.83      27.33     -44.94    -317.91     380.44
                           -0.00      -0.00      -0.00    -392.40      -4.31     427.96     -56.52     -28.08      -5.22     -14.27

   32   2.2  1.5 -1.5       0.00       0.00     -11.20       0.00     389.48      10.76     226.64    -364.73      39.27     -46.89
                           -0.00      -0.00     392.40       0.00      11.82     -62.99    -363.15    -226.80      -1.76      -5.27

   33   3.2  1.5 -1.5       0.00       0.00     -48.13    -389.48      -0.00    -432.32      15.04      -5.21      -9.08      11.07
                           -0.00      -0.00       4.31     -11.82       0.00      12.36      -5.85      -3.29     171.78     469.02

   34   4.2  1.5 -1.5       0.00       0.00     -13.83     -10.76     432.31      -0.00     207.60    -333.27     -13.98     -11.57
                           -0.00      -0.00    -427.95      62.99     -12.36      -0.00     333.53     207.31     -10.45       3.92

   35   5.2  1.5 -1.5       0.00       0.00     -27.33    -226.63     -15.04    -207.60       0.00       8.98    -511.62    -427.51
                           -0.00      -0.00      56.52     363.15       5.85    -333.53       0.00      -5.80    -389.32     142.71

   36   6.2  1.5 -1.5       0.00       0.00      44.94     364.72       5.21     333.27      -8.98       0.00    -318.35    -266.10
                           -0.00      -0.00      28.08     226.80       3.29    -207.31       5.80       0.00     626.37    -229.34

   37   7.2  1.5 -1.5       0.00       0.00     317.90     -39.27       9.08      13.98     511.62     318.35      -0.00       0.33
                           -0.00      -0.00       5.22       1.76    -171.78      10.45     389.32    -626.37       0.00       0.19

   38   8.2  1.5 -1.5       0.00       0.00    -380.43      46.89     -11.07      11.57     427.51     266.10      -0.33       0.00
                           -0.00      -0.00      14.27       5.27    -469.00      -3.92    -142.71     229.34      -0.19      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5     -21.47    -171.87       8.18     187.22     -11.30       9.77    -141.62     169.31
                          -32.22    -174.01      -2.88    -191.53      -4.72      -6.04      74.21     203.07

    5   2.2  0.5 -0.5      -9.33     -18.53     244.74      13.55    -140.50     225.28      24.43     -29.30
                         -239.41      60.29      -6.55      26.87    -226.01    -140.06       6.91      18.63

    6   3.2  0.5 -0.5      20.57     174.66      35.25    -191.38     -13.61      30.11    -136.72     163.61
                          -53.28    -165.31      -3.42    -185.67     -24.95     -18.64     -75.55    -206.82

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00     -11.20     -48.13     -13.83     -27.33      44.94     317.90    -380.43
                            0.00    -392.40      -4.31     427.95     -56.52     -28.08      -5.22     -14.27

   24   2.2  1.5 -0.5      11.20       0.00    -389.48     -10.76    -226.63     364.72     -39.27      46.89
                          392.40      -0.00      11.82     -62.99    -363.15    -226.80      -1.76      -5.27

   25   3.2  1.5 -0.5      48.13     389.48      -0.00     432.31     -15.04       5.21       9.08     -11.07
                            4.31     -11.82      -0.00      12.36      -5.85      -3.29     171.78     469.00

   26   4.2  1.5 -0.5      13.83      10.76    -432.32      -0.00    -207.60     333.27      13.98      11.57
                         -427.96      62.99     -12.36       0.00     333.53     207.31     -10.45       3.92

   27   5.2  1.5 -0.5      27.33     226.64      15.04     207.60       0.00      -8.98     511.62     427.51
                           56.52     363.15       5.85    -333.53      -0.00      -5.80    -389.32     142.71

   28   6.2  1.5 -0.5     -44.94    -364.73      -5.21    -333.27       8.98       0.00     318.35     266.10
                           28.08     226.80       3.29    -207.31       5.80      -0.00     626.37    -229.34

   29   7.2  1.5 -0.5    -317.91      39.27      -9.08     -13.98    -511.62    -318.35      -0.00      -0.33
                            5.22       1.76    -171.78      10.45     389.32    -626.37      -0.00       0.19

   30   8.2  1.5 -0.5     380.44     -46.89      11.07     -11.57    -427.51    -266.10       0.33       0.00
                           14.27       5.27    -469.02      -3.92    -142.71     229.34      -0.19       0.00

   31   1.2  1.5 -1.5   72434.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -9.91     674.83      -9.92    -373.44     643.39    -104.20     -18.35

   32   2.2  1.5 -1.5       0.00   72434.47       0.00       0.00       0.00       0.00       0.00       0.00
                            9.91       0.00     -83.10       1.32      55.35     -73.80    -846.24    -147.43

   33   3.2  1.5 -1.5       0.00       0.00   72434.49       0.00       0.00       0.00       0.00       0.00
                         -674.83      83.10      -0.00     -17.67    -647.28    -377.50     -12.22      -2.41

   34   4.2  1.5 -1.5       0.00       0.00       0.00   73587.46       0.00       0.00       0.00       0.00
                            9.92      -1.32      17.67       0.00      -0.84      18.47    -233.46    1339.83

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   73587.47       0.00       0.00       0.00
                          373.44     -55.35     647.28       0.84      -0.00     680.01       6.24     -36.34

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   73587.48       0.00       0.00
                         -643.39      73.80     377.50     -18.47    -680.01       0.00       0.25      -0.73

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   73587.45       0.00
                          104.20     846.24      12.22     233.46      -6.24      -0.25       0.00      -0.25

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73587.45
                           18.35     147.43       2.41   -1339.83      36.34       0.73       0.25      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.39534388    -0.00595993    -1308.05      0.00000000        0.00      0.0000
     2 -2605.39534388    -0.00595993    -1308.05      0.00000000        0.00      0.0000
     3 -2605.39534388    -0.00595992    -1308.05      0.00000000        0.00      0.0000
     4 -2605.39534388    -0.00595992    -1308.05      0.00000000        0.00      0.0000
     5 -2605.37755195     0.01183200     2596.82      0.01779193     3904.88      0.4841
     6 -2605.37755195     0.01183200     2596.82      0.01779193     3904.88      0.4841
     7 -2605.06477108     0.32461288    71244.29      0.33057280    72552.34      8.9953
     8 -2605.06477107     0.32461289    71244.29      0.33057281    72552.35      8.9953
     9 -2605.06477106     0.32461289    71244.29      0.33057282    72552.35      8.9953
    10 -2605.06477106     0.32461290    71244.30      0.33057283    72552.35      8.9953
    11 -2605.06477105     0.32461291    71244.30      0.33057284    72552.35      8.9953
    12 -2605.06477102     0.32461294    71244.31      0.33057287    72552.36      8.9953
    13 -2605.06029381     0.32909014    72226.94      0.33505007    73534.99      9.1172
    14 -2605.06029381     0.32909014    72226.94      0.33505007    73534.99      9.1172
    15 -2605.06029377     0.32909019    72226.95      0.33505012    73535.00      9.1172
    16 -2605.06029377     0.32909019    72226.95      0.33505012    73535.00      9.1172
    17 -2605.06029376     0.32909020    72226.95      0.33505012    73535.00      9.1172
    18 -2605.06029376     0.32909020    72226.95      0.33505012    73535.00      9.1172
    19 -2605.06029375     0.32909020    72226.95      0.33505013    73535.00      9.1172
    20 -2605.06029375     0.32909020    72226.95      0.33505013    73535.00      9.1172
    21 -2605.05912550     0.33025846    72483.35      0.33621838    73791.41      9.1490
    22 -2605.05912545     0.33025850    72483.36      0.33621843    73791.42      9.1490
    23 -2605.05912544     0.33025852    72483.37      0.33621844    73791.42      9.1490
    24 -2605.05912543     0.33025853    72483.37      0.33621845    73791.42      9.1490
    25 -2605.05482952     0.33455444    73426.21      0.34051436    74734.26      9.2659
    26 -2605.05482948     0.33455447    73426.22      0.34051440    74734.27      9.2659
    27 -2605.05073712     0.33864684    74324.39      0.34460676    75632.44      9.3772
    28 -2605.05073710     0.33864685    74324.39      0.34460678    75632.45      9.3772
    29 -2605.05073708     0.33864687    74324.40      0.34460680    75632.45      9.3772
    30 -2605.05073704     0.33864691    74324.41      0.34460684    75632.46      9.3772
    31 -2605.05073704     0.33864692    74324.41      0.34460684    75632.46      9.3772
    32 -2605.05073703     0.33864693    74324.41      0.34460685    75632.46      9.3772
    33 -2605.04602658     0.34335738    75358.23      0.34931730    76666.29      9.5054
    34 -2605.04602654     0.34335741    75358.24      0.34931734    76666.29      9.5054
    35 -2605.04602652     0.34335743    75358.25      0.34931736    76666.30      9.5054
    36 -2605.04602652     0.34335744    75358.25      0.34931736    76666.30      9.5054
    37 -2605.04411630     0.34526765    75777.49      0.35122758    77085.54      9.5574
    38 -2605.04411627     0.34526769    75777.50      0.35122762    77085.55      9.5574


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.238396426   0.498180786  -0.594193573  -0.092375109   0.024985161   0.576778905  -0.000000146  -0.000001358
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.346872664   0.083138025  -0.036734887  -0.210529990   0.571716139  -0.024765718   0.000000186  -0.000000133
                         0.683132280  -0.124804850   0.085276256   0.064750245  -0.000109667  -0.076329079   0.000000211  -0.000000059

    3    3.2  0.5  0.5   0.028979174   0.186018689   0.167617082  -0.000192697   0.076257695  -0.003303869   0.000000037   0.000001320
                        -0.042039077   0.220279448   0.737708837  -0.092591017  -0.000019290   0.572251795  -0.000000064   0.000000716

    4    1.2  0.5 -0.5   0.267636086  -0.128055517   0.037523676  -0.241273205  -0.403449070   0.017476783  -0.000001782   0.000000074
                         0.419770712  -0.200826963   0.084518785  -0.543401965   0.412192616  -0.017855540  -0.000001841  -0.000000324

    5    2.2  0.5 -0.5  -0.060465120  -0.389121553   0.026436746   0.062830077  -0.037224969   0.399986107  -0.000000188  -0.000000225
                         0.137066732   0.659850303   0.219270764  -0.068029306  -0.071089878  -0.408497821  -0.000000178  -0.000000054

    6    3.2  0.5 -0.5   0.285977118   0.019500304   0.084803481   0.742101859   0.411268348   0.053355015   0.000001892  -0.000000094
                         0.037825523  -0.046878534  -0.037481372  -0.146672485   0.397921321  -0.054483748   0.000001788   0.000000343

    7    1.2  1.5  1.5  -0.002126557   0.000342721  -0.001013600  -0.000192840   0.000059852   0.000000075  -0.020175438  -0.000716052
                        -0.000884851   0.000533835  -0.000443663  -0.000676184   0.001960368  -0.000000074   0.024069848  -0.000694125

    8    2.2  1.5  1.5   0.001031534   0.000142670  -0.003307545  -0.000007098   0.000021650   0.000000717   0.003338681   0.047214583
                         0.001158652   0.000952029  -0.002667639   0.000185505  -0.000242241  -0.000000726  -0.003061258   0.010015686

    9    3.2  1.5  1.5   0.001031125  -0.000410872   0.000064631   0.000693417  -0.001975154  -0.000000006  -0.017443482   0.000459921
                        -0.002221849   0.000337495  -0.000641241  -0.000189096   0.000056761  -0.000000024  -0.012091842   0.000807601

   10    4.2  1.5  1.5  -0.000106517  -0.001334795   0.000118450   0.000505716   0.000029593  -0.002956189  -0.008417896  -0.066181601
                         0.000557720   0.002222351   0.000755534  -0.000397258   0.000048854   0.003017535   0.005691820  -0.021692890

   11    5.2  1.5  1.5  -0.002577517   0.000551207  -0.000612388  -0.000556332   0.001114737   0.000081453   0.001779939   0.003611496
                         0.000244256   0.000145698   0.000195536  -0.000520502   0.001791040  -0.000080413  -0.022848934  -0.000815399

   12    6.2  1.5  1.5  -0.000258448  -0.000204990  -0.000215761   0.000530975  -0.001792400   0.000000871   0.023183080  -0.000128641
                        -0.002580597   0.000512968  -0.000609153  -0.000542011   0.001114718  -0.000001120   0.004648673   0.003323167

   13    7.2  1.5  1.5   0.000700658   0.000990218  -0.001495706  -0.000006768  -0.000000057   0.000519727   0.001216595  -0.008618824
                        -0.000460362   0.000125357   0.002017739  -0.000077023  -0.000000586   0.000508077   0.001753408   0.034657968

   14    8.2  1.5  1.5  -0.000438402  -0.002075352  -0.001021779   0.000386754   0.000000612  -0.002970161  -0.006190169   0.020493871
                        -0.000117408  -0.001346241   0.000489799   0.000514031   0.000000672  -0.002910048  -0.008303485  -0.061214216

   15    1.2  1.5  0.5  -0.000084887  -0.001835493  -0.002428443   0.000439135  -0.000278906  -0.000831893   0.028189386  -0.067936245
                        -0.000293942  -0.001495293   0.002115685   0.000577030   0.000000056  -0.000766497   0.032030896   0.238245823

   16    2.2  1.5  0.5  -0.000613587   0.000452273   0.000196893  -0.000453288  -0.002264982   0.000091046   0.068029127   0.007451247
                         0.001337578   0.000048191   0.000075698   0.000022374   0.000000433   0.000106676   0.054575768  -0.018556564

   17    3.2  1.5  0.5  -0.000419094   0.001322825   0.001747294  -0.000549193  -0.000033277   0.000774418  -0.023047505  -0.158261273
                        -0.001180857  -0.003057203   0.000809785   0.000379646   0.000000018  -0.000837365   0.020069655  -0.048792619

   18    4.2  1.5  0.5  -0.000599312   0.000756781   0.000117318   0.002351308   0.000000076   0.000096405  -0.133857582   0.004742293
                         0.000243197   0.000063069  -0.000060832   0.001224837   0.000000770   0.000022636  -0.133885165  -0.028460244

   19    5.2  1.5  0.5  -0.000756763  -0.000602404   0.002494548  -0.000107701  -0.000000038   0.003567581  -0.010620808  -0.021330999
                         0.000071198  -0.000237633  -0.000886874  -0.000076578   0.000000743   0.000790918  -0.001939257  -0.099891778

   20    6.2  1.5  0.5   0.000078332  -0.000235383  -0.000890642  -0.000042961  -0.000000030  -0.000793951   0.005565086   0.094810824
                         0.000772553   0.000582962  -0.002497068   0.000043954   0.000000537   0.003569538  -0.014153565  -0.026745790

   21    7.2  1.5  0.5  -0.002251032   0.000334844  -0.000628295   0.000033218   0.000000801  -0.000000829  -0.032150986  -0.005666200
                        -0.001026214   0.000306056  -0.000144607  -0.001131186   0.004156597  -0.000000622   0.034257370  -0.001296097

   22    8.2  1.5  0.5  -0.000637435  -0.000012042  -0.000071985  -0.001237967   0.000000155   0.000001511   0.127403835   0.022659649
                        -0.000765282   0.000836911   0.000025258   0.002189040   0.000725511   0.000000135  -0.127156327   0.004436272

   23    1.2  1.5 -0.5   0.002248908  -0.000293865   0.000706597  -0.000947612  -0.000034124   0.000195131  -0.351278178  -0.019760138
                         0.000744383   0.000084754   0.000167152   0.003076911   0.001130664  -0.000199280   0.377461866   0.003223835

   24    2.2  1.5 -0.5  -0.000284082   0.000797314  -0.000163991  -0.000148671  -0.000012550   0.001584633   0.098556110   0.398680213
                        -0.000355088  -0.001236542  -0.000424435  -0.000149235  -0.000139685  -0.001618355  -0.079813781   0.129978703

   25    3.2  1.5 -0.5   0.001863793  -0.001220409   0.000123844  -0.001452570   0.001140116   0.000023290  -0.314692955   0.014922831
                        -0.002759455   0.000282649  -0.000656742  -0.001267571   0.000032291  -0.000023769  -0.300844841  -0.056564864

   26    4.2  1.5 -0.5  -0.000461131  -0.000117764   0.002073709   0.000007878   0.000051257   0.000000497   0.030212181  -0.188376457
                        -0.000604972  -0.000637783   0.001650580  -0.000131680  -0.000084729   0.000000593  -0.039790437  -0.014191150

   27    5.2  1.5 -0.5   0.000522967  -0.000346593  -0.000113949  -0.000202919   0.001930249   0.000000557   0.030914817   0.012617351
                         0.000378888  -0.000675054  -0.000067395  -0.002640515  -0.003102794   0.000000493  -0.051622824   0.000203339

   28    6.2  1.5 -0.5  -0.000363682   0.000692249   0.000022812   0.002644342  -0.003106314   0.000000405   0.038488169   0.004198382
                         0.000510588  -0.000349085  -0.000057352  -0.000200500  -0.001929450   0.000000354  -0.010472338   0.004202194

   29    7.2  1.5 -0.5  -0.000437196  -0.002075649  -0.001022077   0.000386854  -0.000000135   0.002969934  -0.012852178   0.020064918
                        -0.000117656  -0.001345228   0.000490083   0.000514766   0.000001028   0.002908056  -0.013428562  -0.038294865

   30    8.2  1.5 -0.5  -0.000699791  -0.000989764   0.001496632   0.000006332   0.000000961   0.000518375   0.036910972   0.011156190
                         0.000461191  -0.000125217  -0.002019751   0.000075985  -0.000001174   0.000507596   0.027836346  -0.166185528

   31    1.2  1.5 -1.5   0.000633300   0.001890085   0.000698087  -0.000816858  -0.000000105  -0.001359103  -0.057634240  -0.058434967
                         0.000001732   0.001316331  -0.000098696  -0.000745474   0.000000002  -0.001414023  -0.020814694   0.630676828

   32    2.2  1.5 -1.5   0.000876598  -0.001529639  -0.000167203  -0.003782352  -0.000001021   0.000188260   0.401569169  -0.001726495
                        -0.000390841  -0.000245906   0.000082150  -0.001939465   0.000000004   0.000153972   0.400370434  -0.004649730

   33    3.2  1.5 -1.5   0.000063307   0.001317959  -0.000109159  -0.000559119  -0.000000013  -0.001422157   0.104950724  -0.401741497
                        -0.000527156  -0.002064403  -0.000712367   0.000319101  -0.000000021   0.001371831  -0.121330641   0.023947551

   34    4.2  1.5 -1.5   0.001155181  -0.000413443   0.000157808   0.000736519   0.004224283  -0.000014214  -0.013025368   0.004575602
                        -0.002321067   0.000390322  -0.000624216  -0.000198140  -0.000001903  -0.000055321  -0.010413347   0.000073157

   35    5.2  1.5 -1.5   0.000418738   0.001180826   0.000703508  -0.000069956  -0.000114442  -0.000500215  -0.042752231   0.151118468
                         0.000385779   0.002303832   0.000297728  -0.000638261   0.000001962  -0.002049450  -0.019680590   0.064867593

   36    6.2  1.5 -1.5   0.000321639   0.002314077   0.000280367  -0.000643505  -0.000001410  -0.002050387  -0.011624655  -0.199335859
                        -0.000448145  -0.001170503  -0.000707265   0.000050214  -0.000000161   0.000501201  -0.040496156  -0.008943299

   37    7.2  1.5 -1.5   0.000637797   0.000010877   0.000073111   0.001236505  -0.000000447   0.000000379   0.197307109   0.036513372
                         0.000765591  -0.000837198  -0.000025281  -0.002187378   0.000726813   0.000000451  -0.197630554   0.007400323

   38    8.2  1.5 -1.5  -0.002251727   0.000335283  -0.000627582   0.000033080  -0.000002066  -0.000000052   0.024386981   0.004730654
                        -0.001025419   0.000307205  -0.000144813  -0.001130798  -0.004158153  -0.000000908  -0.022369761   0.000770226


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000001538   0.000000194  -0.000002151   0.000000195  -0.000002814  -0.000000378   0.000000251   0.000000254
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000140   0.000000029  -0.000000208  -0.000000029   0.000000280  -0.000000016   0.000000178  -0.000000140
                        -0.000000009   0.000000162   0.000000014   0.000000111   0.000000360  -0.000000059  -0.000000365   0.000000193

    3    3.2  0.5  0.5   0.000001394  -0.000000211   0.000002186  -0.000000213  -0.000001045  -0.000000168  -0.000000132  -0.000000268
                        -0.000000362  -0.000000001   0.000000092   0.000000003  -0.000002575  -0.000000370  -0.000000013   0.000000107

    4    1.2  0.5 -0.5   0.000000144  -0.000000053   0.000000008   0.000000455  -0.000000376   0.000002799  -0.000000041   0.000000040
                         0.000000586  -0.000001277  -0.000000213  -0.000000098  -0.000000038   0.000000282   0.000000237  -0.000000238

    5    2.2  0.5 -0.5  -0.000000100   0.000000010  -0.000000228  -0.000000046  -0.000000022  -0.000000315   0.000000202   0.000000383
                         0.000000044  -0.000000125  -0.000000014  -0.000000028   0.000000058   0.000000330  -0.000000117  -0.000000128

    6    3.2  0.5 -0.5  -0.000000195   0.000000162   0.000000032   0.000000345  -0.000000205   0.000001298   0.000000172  -0.000000030
                        -0.000000585   0.000001294   0.000000231   0.000000237   0.000000351  -0.000002457  -0.000000253   0.000000135

    7    1.2  1.5  1.5   0.021244132  -0.234150747  -0.012454934  -0.620315011   0.000000116  -0.000000388  -0.000006397   0.000004336
                        -0.006769235   0.010448692  -0.005092953  -0.125053756  -0.000000117   0.000000205  -0.000002584   0.000001509

    8    2.2  1.5  1.5   0.067909249  -0.041896346   0.570432311   0.029901204   0.000000403   0.000000108   0.000000858  -0.000000334
                        -0.014715006  -0.005046353   0.019444479   0.004354929  -0.000000507  -0.000000095  -0.000000245  -0.000001420

    9    3.2  1.5  1.5   0.006884607  -0.023349647  -0.006324779  -0.123098232   0.000000021  -0.000000225   0.000002535  -0.000001871
                         0.016540533  -0.171235445   0.031222546   0.641922785   0.000000057  -0.000000400  -0.000005908   0.000003716

   10    4.2  1.5  1.5  -0.093628426  -0.003356319   0.016948792  -0.004496987  -0.381506620  -0.049792835  -0.067242126  -0.095957362
                         0.013066366  -0.003970089   0.001457530  -0.003098132   0.583678074   0.082754196   0.017765638   0.024193526

   11    5.2  1.5  1.5  -0.006822832   0.137169243   0.004673678  -0.148791926   0.006405379  -0.002102084  -0.283533141   0.219106629
                         0.010112083  -0.105876656  -0.025039288  -0.117893880  -0.010083797   0.003450059   0.002569401  -0.003554088

   12    6.2  1.5  1.5  -0.010728771   0.094845024   0.002881463  -0.129623103   0.004665475  -0.003373882  -0.043775814   0.022838179
                        -0.008225005   0.149496830   0.030421423   0.132683457   0.002692322  -0.002058299  -0.065140255   0.017087173

   13    7.2  1.5  1.5   0.009775091   0.002857950  -0.009170097   0.000860647  -0.100491629  -0.014220395  -0.095392222  -0.144520378
                         0.050915441  -0.033878718   0.278068530  -0.023769723  -0.066915819  -0.008600043  -0.020037586  -0.044913969

   14    8.2  1.5  1.5  -0.011277126   0.001718967  -0.003699075   0.000029659   0.579973480   0.080792668  -0.030262963  -0.043863561
                        -0.085937619  -0.013167002   0.065510614  -0.004628080   0.378870932   0.048559950  -0.057397135  -0.078127890

   15    1.2  1.5  0.5   0.055194620   0.009099951  -0.025363128   0.002492411   0.000000417   0.000000122  -0.000001252  -0.000001040
                         0.328260198   0.045092826   0.445609546  -0.044714325   0.000000187   0.000000096  -0.000003782  -0.000007421

   16    2.2  1.5  0.5  -0.020975185   0.038350141   0.005098399  -0.002449757  -0.000000031   0.000000217  -0.000002764   0.000001989
                        -0.093007380   0.691225314   0.034150861  -0.034157883  -0.000000033   0.000000429   0.000006933  -0.000003290

   17    3.2  1.5  0.5  -0.215294463  -0.081520366   0.538350677  -0.042732024  -0.000000831  -0.000000130   0.000004930   0.000007705
                         0.033753223   0.000159495   0.036511665  -0.002942235   0.000001247   0.000000217  -0.000001800  -0.000002703

   18    4.2  1.5  0.5   0.007486181   0.000490634   0.004105168   0.035285469   0.005558796   0.001634934   0.109750414  -0.099308910
                         0.032487271   0.018310092  -0.018516391  -0.213121063  -0.000094024   0.000006171   0.069557196  -0.081483925

   19    5.2  1.5  0.5  -0.085081847  -0.007615361   0.036660429  -0.003495607   0.010769569  -0.001351742  -0.220341985  -0.313766918
                        -0.111334108  -0.005307181  -0.016823745   0.008673633  -0.000172283  -0.000232145  -0.216703516  -0.338506638

   20    6.2  1.5  0.5   0.099030935   0.014326608  -0.061702711   0.003810959  -0.000627150  -0.000131614   0.059706122   0.084335446
                        -0.088938684  -0.000437975  -0.016176458   0.001925991   0.009267337  -0.001181924  -0.080038037  -0.122655520

   21    7.2  1.5  0.5   0.014909308  -0.108297098  -0.011277726   0.043227715   0.002046519   0.013950446   0.458196023  -0.298761938
                        -0.004558026   0.006738810   0.002181680   0.005688930  -0.000198509  -0.007062878   0.207037885  -0.147411093

   22    8.2  1.5  0.5  -0.034851463  -0.056886137  -0.022467976  -0.209461067   0.000499208   0.002369533   0.186425690  -0.136929705
                         0.009420062  -0.001425146  -0.002846808  -0.035120166  -0.005505858  -0.001909501   0.081478945  -0.040224260

   23    1.2  1.5 -0.5   0.185206209  -0.267049508  -0.053670889   0.020529516  -0.000000124   0.000000331   0.000003352  -0.000002337
                        -0.045210815   0.009433696   0.001990884  -0.000560588   0.000000058  -0.000000079   0.000002866  -0.000001822

   24    2.2  1.5 -0.5   0.535654050   0.075250667  -0.094050099   0.000008987  -0.000000087  -0.000000038  -0.000001217  -0.000000937
                        -0.072032426  -0.000467202  -0.013309962   0.000013131   0.000000141   0.000000044  -0.000000041   0.000000547

   25    3.2  1.5 -0.5   0.028424865   0.009430815   0.002210221  -0.001029494   0.000000122  -0.000000684   0.000000048  -0.000000139
                         0.065072534   0.418089347   0.047165425  -0.019096294   0.000000250  -0.000001258  -0.000002993   0.000002010

   26    4.2  1.5 -0.5   0.088966514   0.033281536  -0.189666338   0.015873883  -0.001567475   0.005527017   0.065748660   0.052362044
                        -0.040929878   0.002916968  -0.005789684   0.000415303  -0.000391622   0.000627501   0.115927871   0.124309894

   27    5.2  1.5 -0.5  -0.021691697   0.140697423   0.024521137  -0.008986335   0.001547371   0.009478001   0.278861980  -0.175896846
                         0.004837583   0.084374275   0.009601257  -0.004486280  -0.000134067   0.001611759   0.371718499  -0.258110718

   28    6.2  1.5 -0.5  -0.010001410   0.077414198   0.009308452  -0.004506013   0.000307933  -0.000147714   0.133732478  -0.088418087
                         0.006514742  -0.153658808  -0.019826430   0.008419559  -0.001253031  -0.008693256  -0.060569790   0.044491867

   29    7.2  1.5 -0.5  -0.021430591   0.000474266  -0.000851517  -0.000147633  -0.014404203   0.001831519   0.092821965   0.123421702
                        -0.115478439  -0.003895502  -0.016043939   0.002360907  -0.009276556   0.000268570   0.317658529   0.485989695

   30    8.2  1.5 -0.5   0.048305325   0.003695751  -0.006979958   0.000514645  -0.002613090  -0.000118695   0.009671259   0.040465131
                         0.118677746  -0.018988486   0.190050792  -0.016006854  -0.002459253   0.005517508   0.144525395   0.201018942

   31    1.2  1.5 -1.5  -0.132778858  -0.006634723   0.005426047   0.000111835  -0.000000270  -0.000000115  -0.000000217  -0.000000164
                        -0.182683160  -0.014708392  -0.028496352   0.000717577  -0.000000196  -0.000000055   0.000004069   0.000005767

   32    2.2  1.5 -1.5  -0.020617678   0.003130375  -0.000185215   0.000293597   0.000000086  -0.000000359   0.000001344  -0.000001006
                        -0.083323658  -0.081746598   0.000315013  -0.000823818   0.000000106  -0.000000611  -0.000000943  -0.000000522

   33    3.2  1.5 -1.5   0.491981149   0.028874789  -0.029103849   0.000641503  -0.000000180  -0.000000115   0.000001264   0.000002484
                        -0.165571395  -0.003566574  -0.003369243  -0.000087008   0.000000283   0.000000053  -0.000001684  -0.000001804

   34    4.2  1.5 -1.5   0.002107371  -0.006340092  -0.002072283   0.000471767  -0.041271073   0.321226840   0.040164304  -0.029066631
                         0.003477061  -0.116722335  -0.014421766   0.006618179  -0.087371537   0.619236224  -0.089162534   0.062740947

   35    5.2  1.5 -1.5  -0.028103415   0.003668791  -0.015577664   0.000259270  -0.001986621  -0.005380418  -0.044752000  -0.055908641
                        -0.191342898  -0.008516501   0.020126371  -0.000738498  -0.004180516  -0.010729572   0.220231359   0.284836849

   36    6.2  1.5 -1.5  -0.067061143  -0.004621552   0.019837050  -0.000603631  -0.003985472  -0.005008022   0.006286808   0.049398975
                        -0.143364329  -0.010674327   0.016280550  -0.000251745   0.001884234   0.002259223   0.022520290   0.051293370

   37    7.2  1.5 -1.5  -0.054947559  -0.021307051   0.000968882  -0.001503020  -0.015068676   0.107133248  -0.017973187   0.002368473
                         0.015252128  -0.002430194  -0.000315933  -0.000077694   0.007147633  -0.056664106  -0.152686215   0.099296659

   38    8.2  1.5 -1.5  -0.000749536  -0.121910547  -0.015031641   0.006474107   0.085202461  -0.614750157  -0.070220800   0.052164550
                        -0.000368680   0.006096280   0.001634286  -0.000485631  -0.040193481   0.318693649  -0.058206077   0.040929273


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000001159   0.000000139   0.000000186  -0.000000311   0.000064300   0.001319318  -0.002125994   0.000685805
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000194   0.000001448  -0.000000010   0.000000036  -0.000069216   0.000094395   0.000647243   0.001832118
                        -0.000000163   0.000000053   0.000000476   0.000000344  -0.000064330  -0.000082684  -0.000758837  -0.001537775

    3    3.2  0.5  0.5  -0.000000681   0.000000215   0.000000209  -0.000000268  -0.000014210  -0.000815520  -0.000382851   0.000380449
                         0.000000966   0.000000023   0.000000049   0.000000082   0.000059283   0.001086482   0.001988598  -0.000800049

    4    1.2  0.5 -0.5   0.000000061   0.000000514  -0.000000286  -0.000000168  -0.000164145  -0.000086049  -0.000054623   0.000011598
                         0.000000123   0.000001057  -0.000000036  -0.000000009  -0.002229916   0.000165806  -0.000367730  -0.001249862

    5    2.2  0.5 -0.5   0.000000696   0.000000058   0.000000066  -0.000000044  -0.000388564  -0.002235306  -0.000243612   0.000198689
                         0.000001265  -0.000000247  -0.000000346   0.000000486   0.000195565   0.001140272  -0.000373291   0.000129173

    6    3.2  0.5 -0.5   0.000000120  -0.000000569  -0.000000256  -0.000000220   0.002213375  -0.000402805  -0.000381968  -0.001221072
                         0.000000180   0.000001032  -0.000000097   0.000000038  -0.000045736   0.000089775  -0.000091528  -0.000135558

    7    1.2  1.5  1.5  -0.000000427   0.000000575   0.000003196   0.000002390  -0.008558207  -0.005097749  -0.028357486  -0.280348607
                        -0.000000409   0.000000166  -0.000000477   0.000000255   0.011016063   0.000950234  -0.011663186  -0.311511511

    8    2.2  1.5  1.5  -0.000000030  -0.000000146   0.000000539  -0.000001208   0.000917221  -0.120241986   0.426220320  -0.080540252
                        -0.000001384   0.000000086   0.000000694  -0.000001290  -0.000943181   0.065956284   0.537518376  -0.118002471

    9    3.2  1.5  1.5   0.000000231   0.000003538   0.000001597   0.000000521  -0.011051863   0.005369583   0.083397927   0.293120360
                        -0.000000465   0.000001033   0.000002948   0.000002641  -0.008601051   0.010593803  -0.072488065  -0.270694829

   10    4.2  1.5  1.5  -0.021645635  -0.007526166  -0.004687115   0.018867161  -0.006427891  -0.147212138  -0.017885052   0.006505034
                        -0.017425779   0.010140802   0.035652028  -0.037300626   0.005749339   0.074485406  -0.025449207   0.004984347

   11    5.2  1.5  1.5  -0.016860473  -0.309291966   0.014456576  -0.020600119   0.000936723   0.002093501   0.044434556   0.154385667
                         0.001315812   0.323060896   0.081231762   0.082790604  -0.005793334   0.002513993   0.011421069   0.048404313

   12    6.2  1.5  1.5   0.000045026   0.411390109   0.198888117   0.145289841   0.005640278  -0.004424571  -0.010710885  -0.048522915
                        -0.009603500   0.286745365   0.086682564   0.126877754   0.000757085  -0.001959449   0.043989125   0.154493690

   13    7.2  1.5  1.5  -0.211493178   0.015400234   0.130231193  -0.280746670   0.000947831  -0.002386306  -0.127101828   0.037352237
                        -0.003821707  -0.011623298  -0.219546607   0.236849303   0.001039350  -0.002439219   0.100472400  -0.025827232

   14    8.2  1.5  1.5  -0.023699633  -0.007051149  -0.006048139  -0.019576733  -0.005827580  -0.075933560   0.004045207   0.002901538
                        -0.017715576  -0.009938047  -0.042569815   0.057085222  -0.006371545  -0.149852002  -0.001833107  -0.002117678

   15    1.2  1.5  0.5   0.000001935  -0.000000680  -0.000003701   0.000005087   0.018125382   0.257575810   0.234747442  -0.104358148
                        -0.000002160  -0.000000182   0.000000790  -0.000000565   0.018490735   0.477803030  -0.170286711   0.071641491

   16    2.2  1.5  0.5  -0.000000558  -0.000001518  -0.000000361  -0.000000369   0.004309061  -0.030674428  -0.070901212  -0.163974239
                         0.000000720  -0.000000209  -0.000003346  -0.000002614   0.002658609  -0.067313232   0.071995182   0.140816959

   17    3.2  1.5  0.5   0.000002729   0.000000358   0.000002009  -0.000003270  -0.017582520  -0.341943700  -0.290958742   0.065179421
                         0.000000142  -0.000000383  -0.000001912   0.000001012   0.017217138   0.187378347  -0.384352414   0.105926135

   18    4.2  1.5  0.5  -0.010651835   0.305553526   0.266604031   0.229924516   0.125848519  -0.004620563   0.006566819   0.002913397
                        -0.005569893   0.100473285  -0.153220288  -0.037408681   0.111179439  -0.006216756  -0.002636986  -0.003211267

   19    5.2  1.5  0.5  -0.166552603  -0.011918120   0.119420355  -0.239686132  -0.003340029  -0.001641772   0.157735184  -0.045381541
                        -0.201507857  -0.006986538  -0.075881475   0.048397502  -0.002975726   0.032192619  -0.017964252   0.002290644

   20    6.2  1.5  0.5  -0.034330350  -0.003029911  -0.165362494   0.069851764   0.000048664   0.032018209  -0.018027132   0.002195734
                         0.186807911  -0.041170812  -0.325572891   0.498918915  -0.000054159   0.001753616  -0.157844902   0.045321035

   21    7.2  1.5  0.5   0.033595303  -0.040729952  -0.230857204  -0.191057946   0.022638205  -0.005155413   0.030813600   0.103436158
                         0.021912825   0.215363220   0.063619120  -0.003966847  -0.025951581   0.003517163   0.031455752   0.120251055

   22    8.2  1.5  0.5   0.011352446  -0.005465981   0.036646404   0.010215163  -0.108951606   0.006293990   0.007576321   0.021364208
                        -0.006795909  -0.477255216   0.034967291   0.001552046   0.123267408  -0.004025985   0.007805348   0.025135788

   23    1.2  1.5 -0.5   0.000000108  -0.000001869  -0.000000144  -0.000000698   0.271673918  -0.054036977   0.077970536   0.279209755
                        -0.000000037  -0.000000782   0.000002162   0.000001402  -0.326795780   0.032148483   0.083896117   0.346130339

   24    2.2  1.5 -0.5  -0.000000611   0.000000124  -0.000000134   0.000000394  -0.047179626  -0.204042866  -0.038363729  -0.036441150
                        -0.000000209   0.000000166  -0.000000079  -0.000000357   0.044965671   0.102705714  -0.045879142  -0.033050523

   25    3.2  1.5 -0.5   0.000000251   0.000002844  -0.000001184  -0.000001442   0.305334819  -0.007261718   0.099451931   0.367395435
                        -0.000000201   0.000000340   0.000003119   0.000001982   0.254201247  -0.003993550  -0.093271465  -0.298341497

   26    4.2  1.5 -0.5  -0.225891878  -0.009615790  -0.212042139   0.225192285   0.000741191  -0.028213339   0.098592568  -0.025913392
                        -0.241373522  -0.007664148  -0.078977060   0.196209002  -0.004411622   0.015593058   0.124423072  -0.037346573

   27    5.2  1.5 -0.5   0.012943813  -0.250088433   0.220618478   0.099054465   0.027908031  -0.002852076  -0.005720756  -0.004272835
                         0.010345873  -0.067122026   0.092242494   0.095410939  -0.165590269   0.007178504  -0.004168670  -0.000757765

   28    6.2  1.5 -0.5   0.037756436   0.170022279  -0.157530962  -0.218001249   0.165647844  -0.007636939   0.000807577   0.001748274
                        -0.014753331  -0.130624692   0.473388729   0.285763834   0.027918154  -0.003620094  -0.003043623  -0.004972981

   29    7.2  1.5 -0.5  -0.167767184   0.033158426   0.190394951  -0.217467233  -0.005856961  -0.075963779   0.004004734   0.002840875
                         0.149866391   0.019613522   0.026844115  -0.099843660  -0.006328639  -0.149819601  -0.001855434  -0.002122369

   30    8.2  1.5 -0.5   0.431624498  -0.002620996  -0.013025361   0.049844652  -0.000945979   0.002416792   0.127067839  -0.037380673
                        -0.196593068   0.013707595   0.010465071  -0.038370048  -0.001108818   0.002429653  -0.100517342   0.025806236

   31    1.2  1.5 -1.5   0.000006238  -0.000000020   0.000002335  -0.000002406   0.051671040  -0.173264296   0.065558852  -0.006875839
                        -0.000003442   0.000000341  -0.000002053   0.000000871   0.041744362  -0.368663558  -0.045739172   0.003700026

   32    2.2  1.5 -1.5  -0.000001030  -0.000001903   0.000003177   0.000003131   0.534791368   0.007032660   0.002433446   0.018463391
                         0.000000151   0.000000986  -0.000002383  -0.000000983   0.472265826   0.012419640  -0.002450048  -0.014814818

   33    3.2  1.5 -1.5   0.000005893   0.000000096   0.000002530  -0.000003089  -0.008459226  -0.367664077  -0.044949694   0.005738535
                         0.000007573  -0.000000244  -0.000001487   0.000000876   0.020989710   0.172366361  -0.064893912   0.008874102

   34    4.2  1.5 -1.5   0.006003818   0.024831601   0.011929364  -0.001718311   0.004454224  -0.003118017  -0.033151382  -0.122608305
                        -0.011319865   0.007613415   0.040055872   0.035324323   0.003829028   0.000462451   0.031762011   0.105558780

   35    5.2  1.5 -1.5   0.159111149   0.005708649  -0.000003467  -0.030676270   0.001506112  -0.014440135  -0.031084450   0.007584424
                        -0.414262379   0.015914711  -0.075547687   0.064753927   0.008475796   0.164346246   0.001700248  -0.002982569

   36    6.2  1.5 -1.5   0.446756644   0.007522046   0.155619658  -0.197500676   0.008610426   0.164299919   0.002586821  -0.000021794
                         0.250934551  -0.004216902  -0.094620110   0.048779959  -0.001626458   0.014522582   0.031946898  -0.004340548

   37    7.2  1.5 -1.5  -0.003703651   0.096468397  -0.228829675  -0.085562600   0.108908536  -0.006312043  -0.007498848  -0.021369158
                         0.017222862   0.201572562  -0.280701027  -0.235083969  -0.123299080   0.003998580  -0.007812293  -0.025151873

   38    8.2  1.5 -1.5  -0.012250897   0.023423240  -0.007886275   0.014080596   0.022652838  -0.005167156   0.030850410   0.103473355
                        -0.002533954   0.016074531  -0.060075866  -0.040559798  -0.025933899   0.003592829   0.031423430   0.120236197


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000867487   0.000037594  -0.000001769  -0.000000048  -0.000000011   0.000000993  -0.000000107   0.000001316
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000037171   0.000860621  -0.000000170  -0.000000130  -0.000000338  -0.000000059  -0.000000035   0.000000076
                        -0.000114813  -0.000000078   0.000000019   0.000000237  -0.000000369   0.000000189   0.000000249   0.000000074

    3    3.2  0.5  0.5  -0.000005415   0.000114804   0.000001792   0.000000033  -0.000000029   0.000000127  -0.000000016  -0.000000939
                         0.000860689  -0.000000037  -0.000000212   0.000000041  -0.000000064  -0.000001236   0.000000161  -0.000000541

    4    1.2  0.5 -0.5   0.000026305  -0.000607043  -0.000000006  -0.000000424   0.000001013   0.000000019   0.000000390   0.000000004
                        -0.000026855   0.000619749   0.000000006  -0.000000739   0.000001633  -0.000000090  -0.000001113  -0.000000028

    5    2.2  0.5 -0.5   0.000602236  -0.000056013  -0.000000559   0.000000127   0.000000185   0.000000035  -0.000000032   0.000000304
                        -0.000614729  -0.000106899   0.000000045   0.000000016   0.000000073   0.000000073  -0.000000116   0.000000044

    6    3.2  0.5 -0.5   0.000080355   0.000618681  -0.000000051  -0.000000924  -0.000001651   0.000000034   0.000000111   0.000000063
                        -0.000081984   0.000598417   0.000000009   0.000000065  -0.000001044   0.000000093   0.000001124   0.000000018

    7    1.2  1.5  1.5  -0.000003494  -0.014628715  -0.023580402  -0.214860000  -0.104831809   0.011960117   0.095302662   0.001272908
                        -0.000013760  -0.480733977   0.002489385  -0.116468228   0.101054383   0.002769685   0.000526806  -0.000403531

    8    2.2  1.5  1.5   0.000000076  -0.005314340  -0.253586760   0.021863072   0.009713290   0.024511144  -0.015194320  -0.003048813
                         0.000001772   0.059402628   0.015362659   0.008467056  -0.012072421   0.019730359  -0.003961182   0.007278483

    9    3.2  1.5  1.5   0.000013867   0.484338802  -0.003313432  -0.124251305   0.093344711  -0.002354125  -0.029905665  -0.000378445
                        -0.000003478  -0.013867972  -0.008497197   0.217186651   0.109782488   0.008620175   0.081595578  -0.002429923

   10    4.2  1.5  1.5  -0.077101577   0.000775135  -0.004510644   0.005344722   0.009340356  -0.041335723   0.015224490   0.260685102
                         0.078660624   0.001275355  -0.000706582   0.009276297  -0.002507749   0.031395111  -0.007205739   0.023465223

   11    5.2  1.5  1.5   0.002125711   0.029087804  -0.011803161   0.196646745   0.226435624   0.036085450   0.352989025  -0.013069846
                        -0.002095689   0.046764088  -0.004903636   0.325862595  -0.033305820  -0.012787397  -0.125947774  -0.002081267

   12    6.2  1.5  1.5   0.000022191  -0.046781257  -0.008286441   0.300219478  -0.055254577   0.014592671   0.151754570   0.000221389
                        -0.000028038   0.029098281   0.008133056  -0.174923434  -0.190716353   0.037371681   0.393413317   0.000481563

   13    7.2  1.5  1.5   0.013521729  -0.000001239   0.038560805  -0.006680196   0.004622764   0.055697169  -0.007494608   0.021886850
                         0.013226136  -0.000015894   0.639007719   0.015930151   0.004019714  -0.057307084   0.008717668  -0.037587399

   14    8.2  1.5  1.5  -0.077518029   0.000016285   0.007420561  -0.001594830   0.002475230  -0.022486975   0.002835061  -0.020054687
                        -0.075988402   0.000020330   0.107085767   0.002845648   0.003961733  -0.052942090   0.007140059   0.258320777

   15    1.2  1.5  0.5   0.204156474   0.068376292  -0.006250651   0.003763156   0.001116881  -0.036449038   0.012401785  -0.015342219
                         0.188215400  -0.000012814  -0.221355572  -0.005680286  -0.000659192  -0.006193572  -0.037539818   0.150527354

   16    2.2  1.5  0.5  -0.022333033   0.555295034   0.004259327   0.012835750   0.014776232   0.010016703   0.061262683   0.002484723
                        -0.026197774  -0.000048434   0.029135313  -0.001199207  -0.007444621  -0.029071360  -0.304476317  -0.016967917

   17    3.2  1.5  0.5  -0.189986105   0.008165062  -0.218263913  -0.005217642  -0.003272540   0.046272453  -0.005611579  -0.156813187
                         0.205333939  -0.000005251   0.007430163  -0.002788728   0.002514451  -0.001857036  -0.004477955  -0.003291394

   18    4.2  1.5  0.5   0.002515982  -0.000000403   0.001647684  -0.090410594   0.428487919  -0.008804156  -0.037636003   0.001225507
                         0.000592250   0.000021016  -0.013820214   0.177670201   0.451477963   0.004463101  -0.003643990   0.001128340

   19    5.2  1.5  0.5   0.093116573  -0.000002737   0.049105623   0.003901944  -0.007525228  -0.083933501   0.011905161   0.168272251
                         0.020702351   0.000017719  -0.100488697  -0.006367986  -0.010595152  -0.023000631   0.003169715   0.335165625

   20    6.2  1.5  0.5  -0.020710688   0.000001034  -0.089484512  -0.001928953  -0.004014361   0.032442143  -0.004695066  -0.340340861
                         0.093150654   0.000012354  -0.053811921  -0.003117419   0.004498198  -0.058163634   0.007251162   0.172101831

   21    7.2  1.5  0.5  -0.000020200   0.000009635   0.004502597  -0.099197879   0.010279917  -0.023732717  -0.252978037   0.001088015
                        -0.000013835   0.108547036  -0.000108225  -0.061933038  -0.027359264  -0.004716042  -0.054024987   0.001356204

   22    8.2  1.5  0.5   0.000039795   0.000001737  -0.016078813   0.559877137  -0.096184047  -0.010177852  -0.064348265   0.001309486
                         0.000003630   0.018914311  -0.000608751   0.290400506   0.083617116  -0.003316873   0.002511405   0.000123263

   23    1.2  1.5 -0.5  -0.047855094   0.008398137  -0.002996359   0.101296562  -0.130857943   0.005653053   0.147744296   0.039127564
                         0.048838406  -0.277551448   0.000004302   0.055800219   0.142006274   0.005885521   0.028425731   0.001563571

   24    2.2  1.5 -0.5  -0.388599295   0.003088036  -0.004614123  -0.011939126   0.021820981  -0.051020099  -0.012152635   0.305080271
                         0.396663595   0.034286417  -0.000819582  -0.007750289  -0.017268395   0.037229557  -0.005861429   0.027601424

   25    3.2  1.5 -0.5  -0.005717209  -0.279631644   0.000047930  -0.043154397  -0.128024572   0.004985225   0.042123798   0.004568780
                         0.005829368  -0.007957085  -0.000443308   0.100444543  -0.139563694  -0.017053327  -0.156848932   0.003409193

   26    4.2  1.5 -0.5   0.000015288   0.001337415  -0.368331682  -0.005298796  -0.007336351   0.408475639  -0.033644346   0.010454839
                         0.000014428  -0.002211765   0.022684625  -0.002395104   0.010225840   0.335027651  -0.025955032   0.107307094

   27    5.2  1.5 -0.5   0.000014574   0.050367064   0.007131952   0.048779948  -0.025745225   0.014121271   0.276326020   0.000006415
                         0.000010444  -0.081006041  -0.001473785   0.011029542   0.110835213   0.016121611   0.262203926  -0.006574974

   28    6.2  1.5 -0.5   0.000008102  -0.081036215  -0.001204436   0.018811815  -0.070778953   0.025642301   0.264810714  -0.001782861
                         0.000009384  -0.050384960   0.001637023   0.061583388  -0.022313127  -0.028698983  -0.282214907   0.001200447

   29    7.2  1.5 -0.5   0.077541323  -0.000004251  -0.004373352   0.000576524   0.001629084   0.014394060  -0.000324407  -0.008816794
                         0.075965118   0.000024111  -0.089188862  -0.002667335   0.003227554  -0.096763501   0.010319752   0.253581999

   30    8.2  1.5 -0.5   0.013511557   0.000025252   0.029548762  -0.006292910  -0.000275684  -0.267994902   0.024293414  -0.085961487
                         0.013236984  -0.000030968   0.487391381   0.014763892   0.000136411   0.308525723  -0.026574974   0.064697412

   31    1.2  1.5 -1.5   0.333195664  -0.000007387   0.003497192   0.006275996   0.016728423  -0.179791690   0.016321178  -0.066152396
                         0.346841875  -0.000012125   0.035880822  -0.011629761   0.018837999   0.204152139  -0.018246971   0.098196911

   32    2.2  1.5 -1.5  -0.046155388   0.000001202   0.000083009   0.060465797   0.151025550   0.022917212  -0.010107018   0.005969809
                        -0.037770182   0.000001294  -0.002809425  -0.114605547   0.160421417  -0.019510274   0.006855060  -0.014105000

   33    3.2  1.5 -1.5   0.348820858  -0.000012188  -0.038791958  -0.001645281   0.005347117  -0.234416481   0.022723577   0.077859368
                        -0.336303238   0.000007473   0.002930325  -0.002500563  -0.000487168  -0.160408299   0.014939299  -0.045406209

   34    4.2  1.5 -1.5  -0.000368725   0.110144577  -0.000493316   0.011152022   0.012537122   0.006609506   0.052571184  -0.006011790
                        -0.001446248  -0.000038286   0.000308289  -0.001725068  -0.006063987  -0.038231112  -0.258878878   0.008394071

   35    5.2  1.5 -1.5  -0.013054501  -0.002984561  -0.027489721  -0.001414174   0.003481515   0.047221385  -0.005791521  -0.173414550
                        -0.053505793   0.000052140  -0.049904321  -0.004331098   0.006391532  -0.483482739   0.055778707   0.258812529

   36    6.2  1.5 -1.5  -0.053525281  -0.000035558   0.040292887   0.003435668   0.004437376   0.326281111  -0.028249078   0.368689212
                         0.013059381  -0.000003766  -0.035907475   0.000004507   0.005117727   0.061221718  -0.005520334   0.299608513

   37    7.2  1.5 -1.5   0.000010488  -0.000013131  -0.004395779   0.289078863  -0.403811423  -0.003881956   0.032665167   0.006444728
                         0.000012007   0.018914462  -0.000082185   0.154217469   0.383226875  -0.005620741  -0.010229892  -0.002919176

   38    8.2  1.5 -1.5  -0.000003128  -0.000042569   0.000917323   0.048710149  -0.076764574  -0.026185670  -0.258519556   0.002330423
                        -0.000025861  -0.108549421  -0.000278049   0.015571424   0.054077556  -0.006500562  -0.055274858   0.001058533


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.005737893   0.000328807  -0.003294293   0.000423432  -0.000252884  -0.005839997
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000288307   0.006477781   0.000142951  -0.000017059  -0.005786442   0.000250966
                        -0.000820911  -0.001050282   0.000436875  -0.000040755   0.000001327   0.000772833

    3    3.2  0.5  0.5   0.000046188   0.000910720   0.000007647  -0.000000126  -0.000771813   0.000031927
                         0.005691759  -0.000186154  -0.003259191   0.000421279   0.000000219  -0.005794090

    4    1.2  0.5 -0.5  -0.000006731   0.001897668   0.000333330   0.001028514   0.004084267  -0.000176856
                        -0.000036471  -0.002707679   0.000516883   0.005629699  -0.004174188   0.000180750

    5    2.2  0.5 -0.5   0.000006755   0.000278131   0.004641484   0.000110641   0.000376874  -0.004047742
                         0.000009528   0.000370563  -0.004713405   0.000221829   0.000719870   0.004134961

    6    3.2  0.5 -0.5  -0.000036220  -0.002704731  -0.000107154  -0.005633347  -0.004163704  -0.000539930
                         0.000007935  -0.001892015  -0.000494255   0.001084269  -0.004029342   0.000551504

    7    1.2  1.5  1.5   0.023373399  -0.031778948   0.000044137   0.000386364   0.003735698  -0.000001177
                         0.024386955  -0.164367261   0.000046718  -0.000052990   0.122196661   0.000001030

    8    2.2  1.5  1.5   0.202730868   0.001544746  -0.000077265  -0.000032560   0.001348722  -0.000000372
                         0.206643488   0.017395538   0.000387574  -0.000043260  -0.015099681   0.000000998

    9    3.2  1.5  1.5   0.004027731   0.165244513   0.000000143   0.000048773  -0.123113101  -0.000000913
                         0.001454218  -0.031773796   0.000059067   0.000387656   0.003542386  -0.000001108

   10    4.2  1.5  1.5  -0.000175911  -0.007291632  -0.286967511   0.036858092   0.003038044  -0.303153064
                        -0.000625300  -0.008536179   0.293924730  -0.037865113   0.005017226   0.309524598

   11    5.2  1.5  1.5  -0.004609201  -0.272308630   0.008020282  -0.000249110   0.114441367   0.008352655
                        -0.000313080  -0.312037909  -0.007903983   0.000425491   0.183926731  -0.008248444

   12    6.2  1.5  1.5   0.000318701   0.312154828   0.000155205   0.000571823  -0.183995497   0.000089219
                        -0.004703376  -0.272406028   0.000002909   0.000778621   0.114481872  -0.000115739

   13    7.2  1.5  1.5   0.291272943  -0.004571986   0.051073775  -0.006567850  -0.000006142   0.053209108
                        -0.285791075   0.000033965   0.049326639  -0.006340822  -0.000060660   0.052003703

   14    8.2  1.5  1.5   0.051321259  -0.000942737  -0.289560518   0.037289244   0.000062772  -0.305026886
                        -0.049905800  -0.000144590  -0.282808984   0.036301070   0.000068448  -0.298774647

   15    1.2  1.5  0.5   0.122904940  -0.013606638  -0.140675883   0.018114666  -0.017380883  -0.051916246
                        -0.113234539   0.001806524  -0.129343310   0.016569971   0.000003805  -0.047825826

   16    2.2  1.5  0.5  -0.014093524  -0.094939112   0.015403815  -0.002006531  -0.141150080   0.005682841
                         0.016654644   0.015455690   0.017981871  -0.002535480   0.000032428   0.006655177

   17    3.2  1.5  0.5  -0.114304685  -0.001478233   0.130652826  -0.016773664  -0.002073583   0.048276077
                        -0.123157758   0.002117659  -0.141938621   0.018268936   0.000001340  -0.052217144

   18    4.2  1.5  0.5  -0.010930955  -0.000390645   0.043834242   0.341378251  -0.000001451   0.009897706
                         0.002581505   0.000831494   0.029438486   0.228502803   0.000081730   0.002326072

   19    5.2  1.5  0.5  -0.404220284   0.003923836  -0.001596521  -0.009105793  -0.000003312   0.366291983
                         0.090139759   0.002444444  -0.001198247  -0.006293260   0.000077330   0.081284721

   20    6.2  1.5  0.5   0.090174679   0.002528997  -0.000395137  -0.000071232  -0.000002908  -0.081321508
                         0.404366108  -0.003978906   0.000407268  -0.000106036   0.000055309   0.366428128

   21    7.2  1.5  0.5  -0.003666450  -0.065345336   0.005178501   0.040120970   0.000097986  -0.000085680
                        -0.002732579  -0.402773500  -0.007533515  -0.058752590   0.426970865  -0.000064134

   22    8.2  1.5  0.5  -0.000829684  -0.012238750  -0.029001436  -0.225040538   0.000017538   0.000155007
                        -0.000457174  -0.070673516   0.043209052   0.336404256   0.074397320   0.000013024

   23    1.2  1.5 -0.5   0.001738013   0.024812646  -0.003165998  -0.089401002  -0.002124137   0.012158788
                         0.001322985   0.191022137   0.009606508   0.141542722   0.070550104  -0.012421040

   24    2.2  1.5 -0.5  -0.000208380  -0.005883495   0.068461572   0.004380938  -0.000782431   0.098742562
                        -0.000004658  -0.023142940  -0.070500238  -0.007184189  -0.008715614  -0.100870146

   25    3.2  1.5 -0.5   0.001320120   0.192772631  -0.017172020  -0.141408878   0.071080044   0.001451207
                        -0.001751136  -0.026037865  -0.012390885  -0.088226251   0.002012761  -0.001481242

   26    4.2  1.5 -0.5  -0.290089873  -0.000055817   0.000113283   0.000493381   0.005259538   0.000059424
                        -0.295578133   0.004669492  -0.002040019  -0.011050918  -0.008701311   0.000056129

   27    5.2  1.5 -0.5   0.008000281   0.000971726   0.001785859   0.013659302   0.198073177   0.000057589
                         0.007883703  -0.000160942  -0.052819173  -0.410559779  -0.318660486   0.000051714

   28    6.2  1.5 -0.5   0.000082750   0.000030883   0.052764428   0.410718848  -0.318783548   0.000041566
                         0.000116567   0.000968843   0.001800846   0.013664271  -0.198142084   0.000036602

   29    7.2  1.5 -0.5   0.051358913  -0.000812883  -0.289659816   0.037244988  -0.000014081   0.305111846
                        -0.049864418  -0.000032118  -0.282713995   0.036392271   0.000106094   0.298676182

   30    8.2  1.5 -0.5  -0.291186405   0.004600994  -0.051038170   0.006544845   0.000099098   0.053163740
                         0.285881282   0.000077729  -0.049388937   0.006176001  -0.000119902   0.052043017

   31    1.2  1.5 -1.5  -0.000224724   0.000045834   0.111233640  -0.044176802   0.000001561  -0.084729071
                         0.000034380  -0.000065248   0.116713807  -0.034953605  -0.000000121  -0.088130307

   32    2.2  1.5 -1.5   0.000032706   0.000337924  -0.046552357  -0.236418296   0.000000978   0.011735948
                        -0.000009868  -0.000588570  -0.033538651  -0.157864342   0.000000432   0.009596184

   33    3.2  1.5 -1.5   0.000036513   0.000012142   0.119475041  -0.018899187  -0.000000153  -0.088633054
                         0.000228044  -0.000012822  -0.116379336   0.012605082  -0.000001428   0.085519296

   34    4.2  1.5 -1.5   0.002683414   0.408760075   0.002799245  -0.000223151   0.433249277  -0.001461401
                        -0.003818409  -0.066556320   0.010898626  -0.000491194  -0.000211766  -0.005680264

   35    5.2  1.5 -1.5  -0.000600396  -0.011046005   0.098158025  -0.012664721  -0.011737181  -0.051426844
                        -0.000100322   0.002007722   0.398884677  -0.051352224   0.000201491  -0.210427069

   36    6.2  1.5 -1.5  -0.000207871  -0.000119597   0.399046237  -0.051255560  -0.000145122  -0.210504114
                         0.000529939   0.000008462  -0.098198991   0.012659621  -0.000017174   0.051447675

   37    7.2  1.5 -1.5   0.000657640   0.012185093   0.028912171   0.224945024  -0.000042292   0.000039062
                         0.000471701   0.070683631  -0.043305079  -0.336456364   0.074401110   0.000046813

   38    8.2  1.5 -1.5  -0.003757571  -0.065466166   0.005202149   0.040165441  -0.000227780  -0.000005023
                        -0.002657333  -0.402752253  -0.007359920  -0.058746951  -0.426972386  -0.000092736


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   5.683%  24.818%  35.307%   0.853%   0.062%  33.267%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  58.699%   2.249%   0.862%   4.852%  32.686%   0.644%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.261%   8.313%  57.231%   0.857%   0.582%  32.748%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  24.784%   5.673%   0.855%  35.350%  33.267%   0.062%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   2.244%  58.682%   4.878%   0.858%   0.644%  32.686%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   8.321%   0.258%   0.860%  57.223%  32.748%   0.582%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.099%   0.000%   0.050%   5.494%
    8    2.2  1.5  1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.233%   0.483%   0.178%
    9    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.000%   0.032%   2.987%
   10    4.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.010%   0.485%   0.894%   0.003%
   11    5.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.001%   0.015%   3.003%
   12    6.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.056%   0.001%   0.018%   3.134%
   13    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.128%   0.269%   0.116%
   14    8.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.011%   0.417%   0.751%   0.018%
   15    1.2  1.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.182%   6.138%  11.080%   0.212%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.761%   0.040%   0.909%  47.926%
   17    3.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.093%   2.743%   4.749%   0.665%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   3.584%   0.083%   0.111%   0.034%
   19    5.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.012%   1.043%   1.963%   0.009%
   20    6.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.023%   0.970%   1.772%   0.021%
   21    7.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.221%   0.003%   0.024%   1.177%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   3.240%   0.053%   0.130%   0.324%
   23    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%  26.587%   0.040%   3.635%   7.140%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.608%  17.584%  29.211%   0.566%
   25    3.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%  18.954%   0.342%   0.504%  17.489%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.250%   3.569%   0.959%   0.112%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.362%   0.016%   0.049%   2.691%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.159%   0.004%   0.014%   2.960%
   29    7.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.035%   0.187%   1.379%   0.002%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.214%   2.774%   1.642%   0.037%
   31    1.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.375%  40.117%   5.100%   0.026%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%  32.155%   0.002%   0.737%   0.669%
   33    3.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   2.574%  16.197%  26.946%   0.085%
   34    4.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.028%   0.002%   0.002%   1.366%
   35    5.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.222%   2.704%   3.740%   0.009%
   36    6.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.178%   3.981%   2.505%   0.014%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   7.799%   0.139%   0.325%   0.046%
   38    8.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.110%   0.002%   0.000%   1.490%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.018%  40.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5  32.577%   0.091%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.101%  42.722%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.029%   0.003%  48.623%   0.933%   0.484%   0.979%   0.077%   0.016%   0.129%   0.175%
   11    5.2  1.5  1.5   0.065%   3.604%   0.014%   0.002%   8.040%   4.802%   0.029%  20.003%   0.681%   0.728%
   12    6.2  1.5  1.5   0.093%   3.441%   0.003%   0.002%   0.616%   0.081%   0.009%  25.146%   4.707%   3.721%
   13    7.2  1.5  1.5   7.741%   0.057%   1.458%   0.028%   0.950%   2.290%   4.474%   0.037%   6.516%  13.492%
   14    8.2  1.5  1.5   0.431%   0.002%  47.991%   0.889%   0.421%   0.803%   0.088%   0.015%   0.185%   0.364%
   15    1.2  1.5  0.5  19.921%   0.201%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   0.119%   0.117%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5  29.115%   0.183%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.036%   4.667%   0.003%   0.000%   1.688%   1.650%   0.014%  10.346%   9.455%   5.426%
   19    5.2  1.5  0.5   0.163%   0.009%   0.012%   0.000%   9.551%  21.304%   6.835%   0.019%   2.002%   5.979%
   20    6.2  1.5  0.5   0.407%   0.002%   0.009%   0.000%   0.997%   2.216%   3.608%   0.170%  13.334%  25.380%
   21    7.2  1.5  0.5   0.013%   0.190%   0.000%   0.024%  25.281%  11.099%   0.161%   4.804%   5.734%   3.652%
   22    8.2  1.5  0.5   0.051%   4.511%   0.003%   0.001%   4.139%   2.037%   0.018%  22.780%   0.257%   0.011%
   23    1.2  1.5 -0.5   0.288%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.902%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.223%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   3.601%   0.025%   0.000%   0.003%   1.776%   1.819%  10.929%   0.015%   5.120%   8.921%
   27    5.2  1.5 -0.5   0.069%   0.010%   0.000%   0.009%  21.594%   9.756%   0.027%   6.705%   5.718%   1.892%
   28    6.2  1.5 -0.5   0.048%   0.009%   0.000%   0.008%   2.155%   0.980%   0.164%   4.597%  24.891%  12.919%
   29    7.2  1.5 -0.5   0.026%   0.001%   0.029%   0.000%  10.952%  25.142%   5.061%   0.148%   3.697%   5.726%
   30    8.2  1.5 -0.5   3.617%   0.026%   0.001%   0.003%   2.098%   4.205%  22.495%   0.019%   0.028%   0.396%
   31    1.2  1.5 -1.5   0.084%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.086%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.021%   0.004%   0.934%  48.664%   0.956%   0.478%   0.016%   0.067%   0.175%   0.125%
   35    5.2  1.5 -1.5   0.065%   0.000%   0.002%   0.014%   5.050%   8.426%  19.693%   0.029%   0.571%   0.513%
   36    6.2  1.5 -1.5   0.066%   0.000%   0.002%   0.003%   0.055%   0.507%  26.256%   0.007%   3.317%   4.139%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.028%   1.469%   2.364%   0.987%   0.031%   4.994%  13.116%   6.259%
   38    8.2  1.5 -1.5   0.023%   0.004%   0.887%  47.948%   0.832%   0.440%   0.016%   0.081%   0.367%   0.184%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.019%   0.003%   0.094%  17.563%   0.000%  23.132%   0.056%   5.973%   2.120%   0.015%
    8    2.2  1.5  1.5   0.000%   1.881%  47.059%   2.041%   0.000%   0.356%   6.454%   0.055%   0.024%   0.099%
    9    3.2  1.5  1.5   0.020%   0.014%   1.221%  15.920%   0.000%  23.478%   0.008%   6.261%   2.077%   0.008%
   10    4.2  1.5  1.5   0.007%   2.722%   0.097%   0.007%   1.213%   0.000%   0.002%   0.011%   0.009%   0.269%
   11    5.2  1.5  1.5   0.003%   0.001%   0.210%   2.618%   0.001%   0.303%   0.016%  14.486%   5.238%   0.147%
   12    6.2  1.5  1.5   0.003%   0.002%   0.205%   2.622%   0.000%   0.304%   0.013%  12.073%   3.943%   0.161%
   13    7.2  1.5  1.5   0.000%   0.001%   2.625%   0.206%   0.036%   0.000%  40.982%   0.030%   0.004%   0.639%
   14    8.2  1.5  1.5   0.007%   2.822%   0.002%   0.001%   1.178%   0.000%   1.152%   0.001%   0.002%   0.331%
   15    1.2  1.5  0.5   0.067%  29.464%   8.410%   1.602%   7.710%   0.468%   4.904%   0.005%   0.000%   0.137%
   16    2.2  1.5  0.5   0.003%   0.547%   1.021%   4.672%   0.119%  30.835%   0.087%   0.017%   0.027%   0.095%
   17    3.2  1.5  0.5   0.061%  15.204%  23.238%   1.547%   7.826%   0.007%   4.769%   0.004%   0.002%   0.214%
   18    4.2  1.5  0.5   2.820%   0.006%   0.005%   0.002%   0.001%   0.000%   0.019%   3.974%  38.743%   0.010%
   19    5.2  1.5  0.5   0.002%   0.104%   2.520%   0.206%   0.910%   0.000%   1.251%   0.006%   0.017%   0.757%
   20    6.2  1.5  0.5   0.000%   0.103%   2.524%   0.206%   0.911%   0.000%   1.090%   0.001%   0.004%   0.444%
   21    7.2  1.5  0.5   0.119%   0.004%   0.194%   2.516%   0.000%   1.178%   0.002%   1.368%   0.085%   0.059%
   22    8.2  1.5  0.5   2.707%   0.006%   0.012%   0.109%   0.000%   0.036%   0.026%  39.779%   1.624%   0.011%
   23    1.2  1.5 -0.5  18.060%   0.395%   1.312%  19.776%   0.468%   7.711%   0.001%   1.337%   3.729%   0.007%
   24    2.2  1.5 -0.5   0.425%   5.218%   0.358%   0.242%  30.835%   0.119%   0.002%   0.020%   0.077%   0.399%
   25    3.2  1.5 -0.5  15.785%   0.007%   1.859%  22.399%   0.007%   7.826%   0.000%   1.195%   3.587%   0.032%
   26    4.2  1.5 -0.5   0.002%   0.104%   2.520%   0.207%   0.000%   0.001%  13.618%   0.003%   0.016%  27.910%
   27    5.2  1.5 -0.5   2.820%   0.006%   0.005%   0.002%   0.000%   0.910%   0.005%   0.250%   1.295%   0.046%
   28    6.2  1.5 -0.5   2.822%   0.007%   0.001%   0.003%   0.000%   0.911%   0.000%   0.415%   0.551%   0.148%
   29    7.2  1.5 -0.5   0.007%   2.822%   0.002%   0.001%   1.178%   0.000%   0.797%   0.001%   0.001%   0.957%
   30    8.2  1.5 -0.5   0.000%   0.001%   2.625%   0.206%   0.036%   0.000%  23.842%   0.026%   0.000%  16.701%
   31    1.2  1.5 -1.5   0.441%  16.593%   0.639%   0.006%  23.132%   0.000%   0.130%   0.017%   0.063%   7.400%
   32    2.2  1.5 -1.5  50.904%   0.020%   0.001%   0.056%   0.356%   0.000%   0.001%   1.679%   4.854%   0.091%
   33    3.2  1.5 -1.5   0.051%  16.489%   0.623%   0.011%  23.478%   0.000%   0.151%   0.001%   0.003%   8.068%
   34    4.2  1.5 -1.5   0.003%   0.001%   0.211%   2.618%   0.000%   1.213%   0.000%   0.013%   0.019%   0.151%
   35    5.2  1.5 -1.5   0.007%   2.722%   0.097%   0.007%   0.303%   0.001%   0.325%   0.002%   0.005%  23.599%
   36    6.2  1.5 -1.5   0.008%   2.721%   0.103%   0.002%   0.304%   0.000%   0.291%   0.001%   0.005%  11.021%
   37    7.2  1.5 -1.5   2.706%   0.006%   0.012%   0.109%   0.000%   0.036%   0.002%  10.735%  30.993%   0.005%
   38    8.2  1.5 -1.5   0.119%   0.004%   0.194%   2.516%   0.000%   1.178%   0.000%   0.262%   0.882%   0.073%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.003%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.003%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.003%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.003%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.003%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.003%   0.000%
    7    1.2  1.5  1.5   0.908%   0.000%   0.114%   2.803%   0.000%   0.000%   1.495%   0.000%
    8    2.2  1.5  1.5   0.025%   0.006%   8.380%   0.030%   0.000%   0.000%   0.023%   0.000%
    9    3.2  1.5  1.5   0.755%   0.001%   0.002%   2.832%   0.000%   0.000%   1.517%   0.000%
   10    4.2  1.5  1.5   0.028%   6.851%   0.000%   0.013%  16.874%   0.279%   0.003%  18.771%
   11    5.2  1.5  1.5  14.046%   0.018%   0.002%  17.152%   0.013%   0.000%   4.693%   0.014%
   12    6.2  1.5  1.5  17.780%   0.000%   0.002%  17.165%   0.000%   0.000%   4.696%   0.000%
   13    7.2  1.5  1.5   0.013%   0.189%  16.652%   0.002%   0.504%   0.008%   0.000%   0.554%
   14    8.2  1.5  1.5   0.006%   6.713%   0.512%   0.000%  16.383%   0.271%   0.000%  18.231%
   15    1.2  1.5  0.5   0.156%   2.289%   2.793%   0.019%   3.652%   0.060%   0.030%   0.498%
   16    2.2  1.5  0.5   9.646%   0.029%   0.048%   0.925%   0.056%   0.001%   1.992%   0.008%
   17    3.2  1.5  0.5   0.005%   2.460%   2.823%   0.001%   3.722%   0.062%   0.000%   0.506%
   18    4.2  1.5  0.5   0.143%   0.000%   0.013%   0.000%   0.279%  16.875%   0.000%   0.010%
   19    5.2  1.5  0.5   0.015%  14.065%  17.152%   0.002%   0.000%   0.012%   0.000%  14.078%
   20    6.2  1.5  0.5   0.007%  14.545%  17.164%   0.002%   0.000%   0.000%   0.000%  14.088%
   21    7.2  1.5  0.5   6.692%   0.000%   0.002%  16.650%   0.008%   0.506%  18.230%   0.000%
   22    8.2  1.5  0.5   0.415%   0.000%   0.000%   0.514%   0.271%  16.381%   0.553%   0.000%
   23    1.2  1.5 -0.5   2.264%   0.153%   0.000%   3.711%   0.010%   2.803%   0.498%   0.030%
   24    2.2  1.5 -0.5   0.018%   9.384%   0.000%   0.057%   0.966%   0.007%   0.008%   1.992%
   25    3.2  1.5 -0.5   2.638%   0.003%   0.000%   3.784%   0.045%   2.778%   0.506%   0.000%
   26    4.2  1.5 -0.5   0.181%   1.162%  17.152%   0.002%   0.000%   0.012%   0.010%   0.000%
   27    5.2  1.5 -0.5  14.511%   0.004%   0.013%   0.000%   0.279%  16.875%  14.078%   0.000%
   28    6.2  1.5 -0.5  14.977%   0.000%   0.000%   0.000%   0.279%  16.888%  14.088%   0.000%
   29    7.2  1.5 -0.5   0.011%   6.438%   0.512%   0.000%  16.383%   0.271%   0.000%  18.230%
   30    8.2  1.5 -0.5   0.130%   1.158%  16.652%   0.002%   0.504%   0.008%   0.000%   0.553%
   31    1.2  1.5 -1.5   0.060%   1.402%   0.000%   0.000%   2.600%   0.317%   0.000%   1.495%
   32    2.2  1.5 -1.5   0.015%   0.023%   0.000%   0.000%   0.329%   8.081%   0.000%   0.023%
   33    3.2  1.5 -1.5   0.074%   0.812%   0.000%   0.000%   2.782%   0.052%   0.000%   1.517%
   34    4.2  1.5 -1.5   6.978%   0.011%   0.002%  17.151%   0.013%   0.000%  18.770%   0.003%
   35    5.2  1.5 -1.5   0.314%   9.706%   0.000%   0.013%  16.874%   0.280%   0.014%   4.692%
   36    6.2  1.5 -1.5   0.083%  22.570%   0.000%   0.000%  16.888%   0.279%   0.000%   4.696%
   37    7.2  1.5 -1.5   0.117%   0.005%   0.000%   0.514%   0.271%  16.380%   0.554%   0.000%
   38    8.2  1.5 -1.5   6.989%   0.001%   0.002%  16.650%   0.008%   0.506%  18.231%   0.000%


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
              1      24      267.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2227.50       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    367506.39 290848.96      8.52  60979.73  15663.42      3.64      0.22      1.66
 REAL TIME  *    369367.85 SEC
 DISK USED  *         2.22 GB (local),        7.43 GB (total)
 SF USED    *        17.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2605.044116265224

              CI              CI           MULTI         RHF-SCF
  -2605.00508941  -2605.33355126  -2604.19822203  -2604.60123145
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
