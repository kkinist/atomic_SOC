
 Working directory              : /wrk/irikura/molpro.0Cbfv5OB6n/
 Global scratch directory       : /wrk/irikura/molpro.0Cbfv5OB6n/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.0Cbfv5OB6n/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,As SO-CI
                                                                                 ! Rydberg functions
 memory,1500,M;
 
 gprint,orbitals,civector,basis;
 
 symmetry,xyz
 geometry={As};
 
 basis=AWCVTZ-X2C
 basis={
 spdfg,as,AWCVTZ-X2C;C;
 spdf,1,even,nprim=1,ratio=3.0;
 }
 
 NQ=1
 ND=5
 PAR=2                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,12
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
                                                                                 !hlsdiag = energd4
 hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5302.2,5102.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Aug-24          TIME: 16:56:16  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVTZ-X2C
 SETTING BASIS          =    USERDEF
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         5.00000000                                  
 SETTING PAR            =         2.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AS     S AWCVTZ-X2C           selected for orbital group  1
 Even tempered As S diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry AS     P AWCVTZ-X2C           selected for orbital group  1
 Even tempered As P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry AS     D AWCVTZ-X2C           selected for orbital group  1
 Even tempered As D diffuse               selected for group 1    nprim= 1    centre=  0.023    ratio= 3.000    dratio= 1.000
 Library entry AS     F AWCVTZ-X2C           selected for orbital group  1
 Even tempered As F diffuse               selected for group 1    nprim= 1    centre=  0.056    ratio= 3.000    dratio= 1.000
 Library entry AS     G AWCVTZ-X2C           selected for orbital group  1


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

   1  AS     33.00    0.000000000    0.000000000    0.000000000


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s     8482339.600000     0.000157   -0.000050    0.000020   -0.000005    0.000000    0.000000
    2.1 Ag              1270150.900000     0.000429   -0.000138    0.000054   -0.000015    0.000000    0.000000
    3.1 Ag               289056.960000     0.001159   -0.000373    0.000146   -0.000040    0.000000    0.000000
    4.1 Ag                81879.849000     0.002966   -0.000958    0.000375   -0.000104    0.000000    0.000000
    5.1 Ag                26716.564000     0.007592   -0.002468    0.000967   -0.000267    0.000000    0.000000
    6.1 Ag                 9647.584200     0.019207   -0.006298    0.002469   -0.000684    0.000000    0.000000
                           3764.119500     0.047313   -0.015889    0.006249   -0.001729    0.000000    0.000000
                           1561.565600     0.109028   -0.038149    0.015078   -0.004184    0.000000    0.000000
                            680.814670     0.218375   -0.084357    0.033795   -0.009368    0.000000    0.000000
                            309.241190     0.333319   -0.154391    0.063377   -0.017710    0.000000    0.000000
                            145.257360     0.304265   -0.198094    0.085592   -0.023901    0.000000    0.000000
                             69.739048     0.111653   -0.033680    0.014512   -0.004397    0.000000    0.000000
                             31.770325     0.007455    0.437718   -0.262220    0.078098    0.000000    0.000000
                             15.391757     0.000305    0.558599   -0.501802    0.155229    0.000000    0.000000
                              7.341526    -0.000143    0.155644   -0.019824    0.004240    0.000000    0.000000
                              3.323716     0.000020    0.005006    0.722818   -0.302636    0.000000    0.000000
                              1.485867    -0.000033    0.001680    0.493990   -0.369075    0.000000    0.000000
                              0.421086     0.000013   -0.000360    0.029041    0.305343    1.000000    0.000000
                              0.211500    -0.000008    0.000228   -0.008787    0.632987    0.000000    0.000000
                              0.088974     0.000002   -0.000065    0.001829    0.281018    0.000000    1.000000
    7.1 Ag    1  1s           2.384800     1.000000
    8.1 Ag    1  1s           3.805800     1.000000
    9.1 Ag    1  1s           0.033407     1.000000
   10.1 Ag    1  1s           0.011136     1.000000
   11.1 Ag    1  3d0        321.019610     0.001819
                             96.249305     0.014420
                             36.644963     0.062889
                             15.493965     0.177633
                              6.891138     0.319577
                              3.054831     0.376096
                              1.314241     0.277771
                              0.513430     0.083772
                              0.187700     0.002619
   12.1 Ag    1  3d2-       321.019610     0.001819
                             96.249305     0.014420
                             36.644963     0.062889
                             15.493965     0.177633
                              6.891138     0.319577
                              3.054831     0.376096
                              1.314241     0.277771
                              0.513430     0.083772
                              0.187700     0.002619
   13.1 Ag    1  3d1+       321.019610     0.001819
                             96.249305     0.014420
                             36.644963     0.062889
                             15.493965     0.177633
                              6.891138     0.319577
                              3.054831     0.376096
                              1.314241     0.277771
                              0.513430     0.083772
                              0.187700     0.002619
   14.1 Ag    1  3d2+       321.019610     0.001819
                             96.249305     0.014420
                             36.644963     0.062889
                             15.493965     0.177633
                              6.891138     0.319577
                              3.054831     0.376096
                              1.314241     0.277771
                              0.513430     0.083772
                              0.187700     0.002619
   15.1 Ag    1  3d1-       321.019610     0.001819
                             96.249305     0.014420
                             36.644963     0.062889
                             15.493965     0.177633
                              6.891138     0.319577
                              3.054831     0.376096
                              1.314241     0.277771
                              0.513430     0.083772
                              0.187700     0.002619
   16.1 Ag    1  3d0        321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     1.000000
                              0.187700     0.000000
   17.1 Ag    1  3d2-       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     1.000000
                              0.187700     0.000000
   18.1 Ag    1  3d1+       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     1.000000
                              0.187700     0.000000
   19.1 Ag    1  3d2+       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     1.000000
                              0.187700     0.000000
   20.1 Ag    1  3d1-       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     1.000000
                              0.187700     0.000000
   21.1 Ag    1  3d0        321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     0.000000
                              0.187700     1.000000
   22.1 Ag    1  3d2-       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     0.000000
                              0.187700     1.000000
   23.1 Ag    1  3d1+       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     0.000000
                              0.187700     1.000000
   24.1 Ag    1  3d2+       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     0.000000
                              0.187700     1.000000
   25.1 Ag    1  3d1-       321.019610     0.000000
                             96.249305     0.000000
                             36.644963     0.000000
                             15.493965     0.000000
                              6.891138     0.000000
                              3.054831     0.000000
                              1.314241     0.000000
                              0.513430     0.000000
                              0.187700     1.000000
   26.1 Ag    1  3d0          1.438600     1.000000
   27.1 Ag    1  3d2-         1.438600     1.000000
   28.1 Ag    1  3d1+         1.438600     1.000000
   29.1 Ag    1  3d2+         1.438600     1.000000
   30.1 Ag    1  3d1-         1.438600     1.000000
   31.1 Ag    1  3d0          3.771100     1.000000
   32.1 Ag    1  3d2-         3.771100     1.000000
   33.1 Ag    1  3d1+         3.771100     1.000000
   34.1 Ag    1  3d2+         3.771100     1.000000
   35.1 Ag    1  3d1-         3.771100     1.000000
   36.1 Ag    1  3d0          0.070000     1.000000
   37.1 Ag    1  3d2-         0.070000     1.000000
   38.1 Ag    1  3d1+         0.070000     1.000000
   39.1 Ag    1  3d2+         0.070000     1.000000
   40.1 Ag    1  3d1-         0.070000     1.000000
   41.1 Ag    1  3d0          0.023333     1.000000
   42.1 Ag    1  3d2-         0.023333     1.000000
   43.1 Ag    1  3d1+         0.023333     1.000000
   44.1 Ag    1  3d2+         0.023333     1.000000
   45.1 Ag    1  3d1-         0.023333     1.000000
   46.1 Ag    1  5g0          1.901800     1.000000
   47.1 Ag    1  5g2-         1.901800     1.000000
   48.1 Ag    1  5g1+         1.901800     1.000000
   49.1 Ag    1  5g4+         1.901800     1.000000
   50.1 Ag    1  5g1-         1.901800     1.000000
   51.1 Ag    1  5g2+         1.901800     1.000000
   52.1 Ag    1  5g4-         1.901800     1.000000
   53.1 Ag    1  5g3+         1.901800     1.000000
   54.1 Ag    1  5g3-         1.901800     1.000000
    1.2 Au    1  2px       7423.861400     0.000905
                           1759.516600     0.005119
                            570.229160     0.024095
                            216.579970     0.086769
                             90.734252     0.228280
                             40.308791     0.392034
                             18.555502     0.348936
                              8.396543     0.101838
                              3.767367     0.003273
                              1.629701     0.001773
                              0.568263    -0.000424
                              0.222503     0.000217
                              0.080405    -0.000068
    2.2 Au    1  2py       7423.861400     0.000905
                           1759.516600     0.005119
                            570.229160     0.024095
                            216.579970     0.086769
                             90.734252     0.228280
                             40.308791     0.392034
                             18.555502     0.348936
                              8.396543     0.101838
                              3.767367     0.003273
                              1.629701     0.001773
                              0.568263    -0.000424
                              0.222503     0.000217
                              0.080405    -0.000068
    3.2 Au    1  2pz       7423.861400     0.000905
                           1759.516600     0.005119
                            570.229160     0.024095
                            216.579970     0.086769
                             90.734252     0.228280
                             40.308791     0.392034
                             18.555502     0.348936
                              8.396543     0.101838
                              3.767367     0.003273
                              1.629701     0.001773
                              0.568263    -0.000424
                              0.222503     0.000217
                              0.080405    -0.000068
    4.2 Au    1  2px       7423.861400    -0.000356
                           1759.516600    -0.002024
                            570.229160    -0.009608
                            216.579970    -0.035621
                             90.734252    -0.097616
                             40.308791    -0.179701
                             18.555502    -0.141487
                              8.396543     0.204370
                              3.767367     0.537805
                              1.629701     0.378748
                              0.568263     0.045287
                              0.222503    -0.005040
                              0.080405     0.001435
    5.2 Au    1  2py       7423.861400    -0.000356
                           1759.516600    -0.002024
                            570.229160    -0.009608
                            216.579970    -0.035621
                             90.734252    -0.097616
                             40.308791    -0.179701
                             18.555502    -0.141487
                              8.396543     0.204370
                              3.767367     0.537805
                              1.629701     0.378748
                              0.568263     0.045287
                              0.222503    -0.005040
                              0.080405     0.001435
    6.2 Au    1  2pz       7423.861400    -0.000356
                           1759.516600    -0.002024
                            570.229160    -0.009608
                            216.579970    -0.035621
                             90.734252    -0.097616
                             40.308791    -0.179701
                             18.555502    -0.141487
                              8.396543     0.204370
                              3.767367     0.537805
                              1.629701     0.378748
                              0.568263     0.045287
                              0.222503    -0.005040
                              0.080405     0.001435
    7.2 Au    1  2px       7423.861400     0.000079
                           1759.516600     0.000451
                            570.229160     0.002140
                            216.579970     0.007971
                             90.734252     0.021911
                             40.308791     0.040820
                             18.555502     0.031109
                              8.396543    -0.056698
                              3.767367    -0.151769
                              1.629701    -0.120905
                              0.568263     0.213643
                              0.222503     0.582517
                              0.080405     0.363222
    8.2 Au    1  2py       7423.861400     0.000079
                           1759.516600     0.000451
                            570.229160     0.002140
                            216.579970     0.007971
                             90.734252     0.021911
                             40.308791     0.040820
                             18.555502     0.031109
                              8.396543    -0.056698
                              3.767367    -0.151769
                              1.629701    -0.120905
                              0.568263     0.213643
                              0.222503     0.582517
                              0.080405     0.363222
    9.2 Au    1  2pz       7423.861400     0.000079
                           1759.516600     0.000451
                            570.229160     0.002140
                            216.579970     0.007971
                             90.734252     0.021911
                             40.308791     0.040820
                             18.555502     0.031109
                              8.396543    -0.056698
                              3.767367    -0.151769
                              1.629701    -0.120905
                              0.568263     0.213643
                              0.222503     0.582517
                              0.080405     0.363222
   10.2 Au    1  2px       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     1.000000
                              0.222503     0.000000
                              0.080405     0.000000
   11.2 Au    1  2py       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     1.000000
                              0.222503     0.000000
                              0.080405     0.000000
   12.2 Au    1  2pz       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     1.000000
                              0.222503     0.000000
                              0.080405     0.000000
   13.2 Au    1  2px       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     0.000000
                              0.222503     0.000000
                              0.080405     1.000000
   14.2 Au    1  2py       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     0.000000
                              0.222503     0.000000
                              0.080405     1.000000
   15.2 Au    1  2pz       7423.861400     0.000000
                           1759.516600     0.000000
                            570.229160     0.000000
                            216.579970     0.000000
                             90.734252     0.000000
                             40.308791     0.000000
                             18.555502     0.000000
                              8.396543     0.000000
                              3.767367     0.000000
                              1.629701     0.000000
                              0.568263     0.000000
                              0.222503     0.000000
                              0.080405     1.000000
   16.2 Au    1  2px          1.563000     1.000000
   17.2 Au    1  2py          1.563000     1.000000
   18.2 Au    1  2pz          1.563000     1.000000
   19.2 Au    1  2px          3.422100     1.000000
   20.2 Au    1  2py          3.422100     1.000000
   21.2 Au    1  2pz          3.422100     1.000000
   22.2 Au    1  2px          0.026799     1.000000
   23.2 Au    1  2py          0.026799     1.000000
   24.2 Au    1  2pz          0.026799     1.000000
   25.2 Au    1  2px          0.008933     1.000000
   26.2 Au    1  2py          0.008933     1.000000
   27.2 Au    1  2pz          0.008933     1.000000
   28.2 Au    1  4f1+         0.415800     1.000000
   29.2 Au    1  4f1-         0.415800     1.000000
   30.2 Au    1  4f0          0.415800     1.000000
   31.2 Au    1  4f3+         0.415800     1.000000
   32.2 Au    1  4f2-         0.415800     1.000000
   33.2 Au    1  4f3-         0.415800     1.000000
   34.2 Au    1  4f2+         0.415800     1.000000
   35.2 Au    1  4f1+         1.598100     1.000000
   36.2 Au    1  4f1-         1.598100     1.000000
   37.2 Au    1  4f0          1.598100     1.000000
   38.2 Au    1  4f3+         1.598100     1.000000
   39.2 Au    1  4f2-         1.598100     1.000000
   40.2 Au    1  4f3-         1.598100     1.000000
   41.2 Au    1  4f2+         1.598100     1.000000
   42.2 Au    1  4f1+         6.102500     1.000000
   43.2 Au    1  4f1-         6.102500     1.000000
   44.2 Au    1  4f0          6.102500     1.000000
   45.2 Au    1  4f3+         6.102500     1.000000
   46.2 Au    1  4f2-         6.102500     1.000000
   47.2 Au    1  4f3-         6.102500     1.000000
   48.2 Au    1  4f2+         6.102500     1.000000
   49.2 Au    1  4f1+         0.169000     1.000000
   50.2 Au    1  4f1-         0.169000     1.000000
   51.2 Au    1  4f0          0.169000     1.000000
   52.2 Au    1  4f3+         0.169000     1.000000
   53.2 Au    1  4f2-         0.169000     1.000000
   54.2 Au    1  4f3-         0.169000     1.000000
   55.2 Au    1  4f2+         0.169000     1.000000
   56.2 Au    1  4f1+         0.056333     1.000000
   57.2 Au    1  4f1-         0.056333     1.000000
   58.2 Au    1  4f0          0.056333     1.000000
   59.2 Au    1  4f3+         0.056333     1.000000
   60.2 Au    1  4f2-         0.056333     1.000000
   61.2 Au    1  4f3-         0.056333     1.000000
   62.2 Au    1  4f2+         0.056333     1.000000

 NUCLEAR CHARGE:                   33
 NUMBER OF PRIMITIVE AOS:         218
 NUMBER OF SYMMETRY AOS:          184
 NUMBER OF CONTRACTIONS:          116   (   54Ag  +   62Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.139E-03 0.213E-02 0.149E-01 0.471E-01 0.476E-01 0.476E-01 0.476E-01 0.476E-01
         2 0.441E-02 0.441E-02 0.441E-02 0.138E-01 0.138E-01 0.138E-01 0.705E-01 0.705E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     27.263 MB (compressed) written to integral file ( 14.7%)

     Node minimum: 1.573 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.14 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN    144 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.42      1.20
 REAL TIME  *         2.27 SEC
 DISK USED  *        29.22 MB (local),      411.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=AS basis=MINAO             lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2224.43896934   -2224.43896934     0.00D+00     0.70D+00     0     0       0.01      0.02    start
   2    -2224.45226189      -0.01329255     0.27D-02     0.80D-02     1     0       0.01      0.03    diag2
   3    -2224.45324955      -0.00098766     0.15D-02     0.16D-02     2     0       0.00      0.03    diag2
   4    -2224.45348729      -0.00023775     0.57D-03     0.87D-03     3     0       0.01      0.04    diag2
   5    -2224.45353252      -0.00004523     0.11D-03     0.60D-03     4     0       0.01      0.05    diag2
   6    -2224.45353351      -0.00000099     0.26D-04     0.13D-03     5     0       0.00      0.05    diag2
   7    -2224.45353352      -0.00000001     0.23D-05     0.19D-04     6     0       0.01      0.06    diag2
   8    -2224.45353352      -0.00000000     0.22D-06     0.11D-05     7     0       0.01      0.07    fixocc
   9    -2224.45353352       0.00000000     0.36D-07     0.23D-06     0     0       0.01      0.08    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2224.453533522606
  RHF One-electron energy           -3106.800285297992
  RHF Two-electron energy             882.346751775386
  RHF Kinetic energy                 2334.570791239985
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.952831904635

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.68450     1  1  s    0.74069    1  2  s   -1.38206    1  3  s   -2.14453    1  4  s   -0.53659
                                    1  5  s    0.59355    1  6  s    0.31192    1  7  s    1.60207    1  8  s    0.54321
    2.1     2.00000   -55.83925     1  2  s    2.35586    1  3  s    2.11408    1  4  s    0.51037    1  5  s   -0.56822
                                    1  6  s   -0.29608    1  7  s   -1.63510    1  8  s   -0.46807
    3.1     2.00000    -7.97198     1  2  s   -0.71394    1  4  s   -0.29580    1  5  s    0.32726    1  7  s    0.92554
    4.1     2.00000    -2.12352     1  1  d2-  0.98168
    5.1     2.00000    -2.12352     1  1  d2+  0.98168
    6.1     2.00000    -2.12352     1  1  d1-  0.98570
    7.1     2.00000    -2.12352     1  1  d1+  0.98570
    8.1     2.00000    -2.12352     1  1  d0   1.00384
    9.1     2.00000    -0.68235     1  3  s    0.34769    1  4  s    1.14791    1  7  s   -0.26036
    1.2     2.00000   -50.02660     1  1  py   1.02056
    2.2     2.00000   -50.02660     1  1  px   1.02056
    3.2     2.00000   -50.02660     1  1  pz   1.02057
    4.2     2.00000    -5.87418     1  2  pz   0.92910
    5.2     2.00000    -5.87418     1  2  px   0.92910
    6.2     2.00000    -5.87418     1  2  py   0.92910
    7.2     1.00000    -0.37024     1  3  px   1.01444
    8.2     1.00000    -0.37024     1  3  py   1.01444
    9.2     1.00000    -0.37024     1  3  pz   1.01444


 HOMO      9.2    -0.370236 =     -10.0746eV
 LUMO     10.1     0.017457 =       0.4750eV
 LUMO-HOMO         0.387692 =      10.5496eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

              2       4        0.60       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.57      0.15      1.20
 REAL TIME  *         3.42 SEC
 DISK USED  *        30.40 MB (local),      425.96 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      95 (   45   50)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             5
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.179D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.176D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.162D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.164D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 1   6 4 3 5 2 1 4 6 2 3   5 1 6 4 3 5 2 3 5 4   6 2 1 2 3 5 4 6 812
                                        91114151310 7 1 2 5   3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.511D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.626D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.482D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.531D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.531D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.114D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.443D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.451D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.315D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.315D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 2 3 1   2 3 1 2 3 9 7 810 6   5 4 1 2 3 9 7 4 5 6  10 8 1 2 3 6 5 4 9 7
                                        810 810 6 5 4 9 7 2   1 3 6 9 7 810 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    3109
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    0  -2224.39752076   -2224.40897225   -0.01145149    0.01961871 0.00003885 0.00000000  0.17E+01      2.01
   2    8   14    0  -2224.40826736   -2224.40834601   -0.00007865    0.00452222 0.00000983 0.00000000  0.13E+00      3.52
   3   21   42    0  -2224.40834602   -2224.40834602   -0.00000000    0.00000278 0.00000004 0.00000000  0.10E-03      6.61

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.27E-07)
                       Final energy:  -2224.40834602
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2224.461052056080
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.65972969
 One electron energy                         -3106.69211291
 Two electron energy                           882.23106086
 Virial ratio                                    1.95279883
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2224.397804816988
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50026717
 One electron energy                         -3106.18836968
 Two electron energy                           881.79056486
 Virial ratio                                    1.95283682
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2224.397804816952
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50026717
 One electron energy                         -3106.18836968
 Two electron energy                           881.79056486
 Virial ratio                                    1.95283682
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2224.397804816907
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50026717
 One electron energy                         -3106.18836968
 Two electron energy                           881.79056486
 Virial ratio                                    1.95283682
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2224.397804816873
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50026717
 One electron energy                         -3106.18836968
 Two electron energy                           881.79056487
 Virial ratio                                    1.95283682
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2224.397804816852
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50026717
 One electron energy                         -3106.18836968
 Two electron energy                           881.79056487
 Virial ratio                                    1.95283682
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.213717675685
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999947237
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.786267944696
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999994247
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.672176812631
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999978561
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.327805619061
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999998422
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.114105511683
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000074201
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.885926436243
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000007331
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 1   6 4 2 3 5 1 3 5 6 4   2 1 6 4 2 3 5 3 5 6   4 2 1 3 5 6 4 21310
                                       1415 81211 9 7 1 5 3   2 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 1 3 2 2   1 3 2 3 1 2 3 1 6 5   4 810 9 7 6 5 4 7 9  10 8 2 3 1 7 9 5 6 4
                                       10 8 9 7 810 5 4 6 2   1 3 9 7 810 5 6 4 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.70210     1  1  s    0.74069    1  2  s   -1.38206    1  3  s   -2.14453    1  4  s   -0.53665
                                    1  5  s    0.59355    1  6  s    0.31192    1  7  s    1.60207    1  8  s    0.54321
    2.1     2.00000   -55.85645     1  2  s    2.35608    1  3  s    2.11444    1  4  s    0.51168    1  5  s   -0.56838
                                    1  6  s   -0.29615    1  7  s   -1.63537    1  8  s   -0.46810
    3.1     2.00000    -7.98832     1  2  s   -0.71601    1  4  s   -0.30744    1  5  s    0.32883    1  7  s    0.92809
    4.1     2.00000    -2.14046     1  1  d2+  1.00394
    5.1     2.00000    -2.14046     1  1  d2-  1.00394
    6.1     2.00000    -2.14046     1  1  d1-  1.00394
    7.1     2.00000    -2.14046     1  1  d1+  1.00394
    8.1     2.00000    -2.14046     1  1  d0   1.00394
    9.1     1.99200    -0.69341     1  3  s    0.34839    1  4  s    1.15970    1  7  s   -0.25220
    1.2     2.00000   -50.04381     1  1  py   1.02057
    2.2     2.00000   -50.04381     1  1  px   1.02057
    3.2     2.00000   -50.04381     1  1  pz   1.02057
    4.2     2.00000    -5.89099     1  2  py   0.92909
    5.2     2.00000    -5.89099     1  2  px   0.92909
    6.2     2.00000    -5.89099     1  2  pz   0.92909
    7.2     0.99811    -0.16245     1  3  px   0.95100
    8.2     0.99811    -0.16245     1  3  pz   0.95100
    9.2     0.99811    -0.16245     1  3  py   0.95100
   10.2     0.00456     0.48295     1  3  py  -0.76191    1  4  py  -0.64777    1  5  py   1.29634
   11.2     0.00456     0.48295     1  3  px  -0.76191    1  4  px  -0.64777    1  5  px   1.29634
   12.2     0.00456     0.48295     1  3  pz  -0.76191    1  4  pz  -0.64777    1  5  pz   1.29634
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99659287
 
 Energy:    -2224.46105206
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 baa000       0.79084853      0.00017042      0.00000016     -0.18789144      0.00001998
 2 aab000      -0.23270550     -0.00004820     -0.00000005      0.77884066     -0.00003557
 2 2a0000      -0.00000014     -0.00000139      0.70395914      0.00000000      0.00000000
 2 a20000      -0.00001092     -0.00000694     -0.00000000      0.00002889      0.70395914
 2 a02000       0.00001092      0.00000694      0.00000000     -0.00002889     -0.70395914
 2 0a2000       0.00000014      0.00000139     -0.70395913      0.00000000     -0.00000000
 2 20a000      -0.00015215      0.70395912      0.00000139     -0.00000189      0.00000694
 2 02a000       0.00015215     -0.70395912     -0.00000139      0.00000189     -0.00000694
 2 aba000      -0.55814302     -0.00012222     -0.00000011     -0.59094921      0.00001560
 
 Energy:    -2224.39780482  -2224.39780482  -2224.39780482  -2224.39780482  -2224.39780482
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.06      6.49      0.15      1.20
 REAL TIME  *        10.50 SEC
 DISK USED  *        48.08 MB (local),      638.17 MB (total)
 SF USED    *        45.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2224.461052  -0.0
    -2224.397805   6.0
    -2224.397805   6.0
    -2224.397805   6.0
    -2224.397805   6.0
    -2224.397805   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 33
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.46105206

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.91D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:        566835
 Total number of contracted configurations:      5415725
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.84 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1238358 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.46105206     0.00000000    -0.89766625  0.46D-01  0.54D-01     2.30
    2     1     1     1.06552176    -0.72640645 -2225.18745851    -0.72640645    -0.01778875  0.23D-02  0.80D-03    22.80
    3     1     1     1.05787341    -0.74284499 -2225.20389705    -0.01643854    -0.00046408  0.66D-04  0.33D-04    43.15
    4     1     1     1.05731867    -0.74329911 -2225.20435117    -0.00045412    -0.00002308  0.27D-05  0.24D-05    63.51
    5     1     1     1.05751203    -0.74332309 -2225.20437514    -0.00002397    -0.00000120  0.70D-07  0.19D-06    83.76
    6     1     1     1.05757322    -0.74332445 -2225.20437651    -0.00000137    -0.00000007  0.52D-08  0.90D-08   104.00
    7     1     1     1.05757525    -0.74332453 -2225.20437658    -0.00000007    -0.00000000  0.26D-09  0.41D-09   124.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   2.3%  29.1%
 P   0.7%  58.7%   3.8%

 Initialization:   0.9%
 Other:            1.6%

 Total CPU:      124.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9689138


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97199138 (fixed)   0.97218540 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083826   -0.00253738   -0.00298592
 Singles      0.01972448   -0.09258370   -0.10132174
 Pairs        0.03789903   -0.64820345   -0.63901687
 Total        1.05846177   -0.74332452   -0.74332453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.46105206
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.90215149
 One electron energy                -3105.44193476
 Two electron energy                  880.23755818
 Virial quotient                       -0.95301826
 Correlation energy                    -0.74332453
 !MRCI STATE 1.2 Energy             -2225.204376581627

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.24783265 (Davidson, fixed reference)
 Cluster corrected energies         -2225.24751863 (Davidson, relaxed reference)

 Cluster corrected energies         -2225.24539208 (Pople, fixed reference)
 Cluster corrected energies         -2225.24508148 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       6       43.19       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       133.63    125.55      6.49      0.15      1.20
 REAL TIME  *       138.56 SEC
 DISK USED  *        90.35 MB (local),        1.12 GB (total)
 SF USED    *       657.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2225.24751863  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 33
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.39780482
     2     -2224.39780482
     3     -2224.39780482
     4     -2224.39780482
     5     -2224.39780482

 Number of blocks in overlap matrix:   579   Smallest eigenvalue:  0.12D-05
 Number of N-2 electron functions:    1177
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       2657860
 Total number of contracted configurations:      8629286
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  21282539 words, CPU-Time:     27.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1359484 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.39780482    -0.00000000    -0.89847665  0.50D-01  0.52D-01    34.39
    1     2     2     1.00000000     0.00000000 -2224.39780482    -0.00000000    -0.89862441  0.50D-01  0.52D-01    34.39
    1     3     3     1.00000000     0.00000000 -2224.39780482    -0.00000000    -0.89920223  0.50D-01  0.52D-01    34.39
    1     4     4     1.00000000     0.00000000 -2224.39780482     0.00000000    -0.89922492  0.51D-01  0.52D-01    34.39
    1     5     5     1.00000000     0.00000000 -2224.39780482     0.00000000    -0.89899441  0.51D-01  0.52D-01    34.39
    2     1     1     1.06735909    -0.73293659 -2225.13074141    -0.73293659    -0.01890447  0.24D-02  0.11D-02   212.81
    2     2     2     1.06714917    -0.73287196 -2225.13067678    -0.73287196    -0.01891014  0.24D-02  0.11D-02   212.81
    2     3     3     1.06708575    -0.73276390 -2225.13056872    -0.73276390    -0.01903471  0.24D-02  0.11D-02   212.81
    2     4     4     1.06753795    -0.73262070 -2225.13042552    -0.73262070    -0.01914447  0.25D-02  0.11D-02   212.81
    2     5     5     1.06778233    -0.73231399 -2225.13011880    -0.73231399    -0.01945405  0.26D-02  0.11D-02   212.81
    3     1     1     1.06125072    -0.75039584 -2225.14820066    -0.01745925    -0.00054375  0.51D-04  0.61D-04   391.53
    3     2     2     1.06116682    -0.75036980 -2225.14817462    -0.01749784    -0.00055911  0.51D-04  0.64D-04   391.53
    3     3     3     1.06115293    -0.75036366 -2225.14816847    -0.01759976    -0.00057317  0.53D-04  0.64D-04   391.53
    3     4     4     1.06115293    -0.75035648 -2225.14816130    -0.01773578    -0.00056691  0.52D-04  0.65D-04   391.53
    3     5     5     1.06110701    -0.75033238 -2225.14813719    -0.01801839    -0.00058889  0.55D-04  0.67D-04   391.53
    4     1     1     1.06147388    -0.75098540 -2225.14879022    -0.00058956    -0.00004813  0.33D-05  0.73D-05   569.58
    4     2     2     1.06142738    -0.75098280 -2225.14878762    -0.00061300    -0.00005095  0.36D-05  0.75D-05   569.58
    4     3     3     1.06143886    -0.75098069 -2225.14878551    -0.00061703    -0.00005128  0.34D-05  0.77D-05   569.58
    4     4     4     1.06142739    -0.75097851 -2225.14878333    -0.00062203    -0.00005276  0.35D-05  0.79D-05   569.58
    4     5     5     1.06139410    -0.75097570 -2225.14878051    -0.00064332    -0.00005526  0.38D-05  0.82D-05   569.58
    5     1     1     1.06194160    -0.75104351 -2225.14884833    -0.00005811    -0.00000532  0.41D-06  0.68D-06   747.66
    5     2     2     1.06193216    -0.75104327 -2225.14884809    -0.00006047    -0.00000548  0.41D-06  0.72D-06   747.66
    5     3     3     1.06193924    -0.75104292 -2225.14884774    -0.00006223    -0.00000576  0.44D-06  0.73D-06   747.66
    5     4     4     1.06194001    -0.75104267 -2225.14884748    -0.00006415    -0.00000598  0.47D-06  0.75D-06   747.66
    5     5     5     1.06193297    -0.75104229 -2225.14884711    -0.00006659    -0.00000624  0.49D-06  0.79D-06   747.66
    6     1     1     1.06199220    -0.75104980 -2225.14885462    -0.00000629    -0.00000048  0.32D-07  0.65D-07   925.43
    6     2     2     1.06199190    -0.75104975 -2225.14885457    -0.00000648    -0.00000051  0.34D-07  0.70D-07   925.43
    6     3     3     1.06199147    -0.75104974 -2225.14885455    -0.00000681    -0.00000053  0.35D-07  0.71D-07   925.43
    6     4     4     1.06199015    -0.75104972 -2225.14885454    -0.00000706    -0.00000055  0.37D-07  0.74D-07   925.43
    6     5     5     1.06198955    -0.75104966 -2225.14885448    -0.00000737    -0.00000058  0.40D-07  0.79D-07   925.43
    7     1     1     1.06200165    -0.75105034 -2225.14885516    -0.00000054    -0.00000006  0.50D-08  0.88D-08  1102.97
    7     2     2     1.06200258    -0.75105034 -2225.14885516    -0.00000058    -0.00000005  0.43D-08  0.75D-08  1102.97
    7     3     3     1.06200264    -0.75105033 -2225.14885515    -0.00000060    -0.00000006  0.50D-08  0.80D-08  1102.97
    7     4     4     1.06200181    -0.75105033 -2225.14885515    -0.00000061    -0.00000006  0.49D-08  0.84D-08  1102.97
    7     5     5     1.06200168    -0.75105032 -2225.14885513    -0.00000066    -0.00000007  0.57D-08  0.92D-08  1102.97
    8     1     1     1.06200582    -0.75105041 -2225.14885523    -0.00000007    -0.00000001  0.80D-09  0.12D-08  1280.30
    8     2     2     1.06200601    -0.75105040 -2225.14885522    -0.00000006    -0.00000001  0.78D-09  0.12D-08  1280.30
    8     3     3     1.06200619    -0.75105040 -2225.14885522    -0.00000007    -0.00000001  0.66D-09  0.10D-08  1280.30
    8     4     4     1.06200584    -0.75105040 -2225.14885522    -0.00000007    -0.00000001  0.76D-09  0.12D-08  1280.30
    8     5     5     1.06200592    -0.75105039 -2225.14885521    -0.00000007    -0.00000001  0.84D-09  0.12D-08  1280.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   1.2%  17.2%
 P   0.5%  58.7%  14.4%

 Initialization:   2.1%
 Other:            4.1%

 Total CPU:     1280.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.0003437   0.3210127  -0.0040163   0.0002964   0.9114332
 2222222222/\/000           0.0009186   0.9114191   0.0081999  -0.0006049  -0.3209720
 2222222222/20000          -0.6832678   0.0006934  -0.0004542  -0.0061557   0.0000134
 2222222222/02000           0.6832598  -0.0006934   0.0004542   0.0061557  -0.0000134
 222222222202/000           0.0061724  -0.0000036  -0.0506610  -0.6813837  -0.0000027
 222222222220/000          -0.0061724   0.0000036   0.0506610   0.6813832   0.0000027
 22222222222/0000          -0.0000010  -0.0045378   0.6813808  -0.0506608   0.0046173
 22222222220/2000           0.0000010   0.0045378  -0.6813804   0.0506607  -0.0046173

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000982   -0.008762   -0.000001    0.000067    0.969879
 2           0.968755    0.000005   -0.006441    0.047048   -0.000984
 3           0.006733    0.071912    0.967206   -0.006217    0.000645
 4          -0.000497    0.967210   -0.071912    0.000459    0.008738
 5          -0.047005    0.000004    0.006554    0.968757   -0.000019

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969919   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.969919    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.969919    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.969919    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.969919


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96987904 (fixed)   0.97008017 (relaxed)   0.96991912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00092622   -0.00300977   -0.00351106
 Singles      0.02313070   -0.09920523   -0.10966686
 Pairs        0.03893255   -0.64880860   -0.63787249
 Total        1.06298947   -0.75102361   -0.75105041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39780482
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.82938912
 One electron energy                -3105.06239689
 Two electron energy                  879.91354166
 Virial quotient                       -0.95302418
 Correlation energy                    -0.75105041
 !MRCI STATE 1.2 Energy             -2225.148855229867

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19616350 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19589843 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19616350 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19418314 (Pople, fixed reference)
 Cluster corrected energies         -2225.19391564 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19418314 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96875536 (fixed)   0.97008009 (relaxed)   0.96991903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00092622   -0.00300978   -0.61449267
 Singles      0.02313061   -0.09920509   -0.10966683
 Pairs        0.03893283    0.00065841   -0.02689090
 Total        1.06298966   -0.10155646   -0.75105040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39780482
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.82939989
 One electron energy                -3105.06240100
 Two electron energy                  879.91354578
 Virial quotient                       -0.95302417
 Correlation energy                    -0.75105040
 !MRCI STATE 2.2 Energy             -2225.148855216960

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19616363 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19589855 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19616363 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19418327 (Pople, fixed reference)
 Cluster corrected energies         -2225.19391577 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19418327 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96720577 (fixed)   0.97008000 (relaxed)   0.96991895 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00092621   -0.00300978   -0.61346764
 Singles      0.02313049   -0.09920489   -0.10966673
 Pairs        0.03893313   -0.00043127   -0.02791603
 Total        1.06298983   -0.10264595   -0.75105040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39780482
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.82952720
 One electron energy                -3105.06250374
 Two electron energy                  879.91364852
 Virial quotient                       -0.95302412
 Correlation energy                    -0.75105040
 !MRCI STATE 3.2 Energy             -2225.148855216034

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19616375 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19589869 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19616375 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19418339 (Pople, fixed reference)
 Cluster corrected energies         -2225.19391590 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19418339 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96720987 (fixed)   0.97008016 (relaxed)   0.96991911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00092623   -0.00300978   -0.60837453
 Singles      0.02313052   -0.09920504   -0.10966673
 Pairs        0.03893274   -0.00584527   -0.03300914
 Total        1.06298949   -0.10806009   -0.75105040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39780482
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.82943025
 One electron energy                -3105.06242563
 Two electron energy                  879.91357041
 Virial quotient                       -0.95302416
 Correlation energy                    -0.75105040
 !MRCI STATE 4.2 Energy             -2225.148855215903

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19616350 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19589842 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19616350 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19418314 (Pople, fixed reference)
 Cluster corrected energies         -2225.19391564 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19418314 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96875724 (fixed)   0.97008013 (relaxed)   0.96991907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00092623   -0.00300978   -0.61388516
 Singles      0.02313078   -0.09920527   -0.10966695
 Pairs        0.03893257    0.00001276   -0.02749829
 Total        1.06298958   -0.10220229   -0.75105039
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39780482
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.82937138
 One electron energy                -3105.06237563
 Two electron energy                  879.91352043
 Virial quotient                       -0.95302418
 Correlation energy                    -0.75105039
 !MRCI STATE 5.2 Energy             -2225.148855208602

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19616356 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19589848 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19616356 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19418320 (Pople, fixed reference)
 Cluster corrected energies         -2225.19391569 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19418320 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1515.24   1381.61    125.55      6.49      0.15      1.20
 REAL TIME  *      1551.78 SEC
 DISK USED  *       425.09 MB (local),        5.04 GB (total)
 SF USED    *         3.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2225.19616350  AU                              
 SETTING HLSDIAG(3)     =     -2225.19616363  AU                              
 SETTING HLSDIAG(4)     =     -2225.19616375  AU                              
 SETTING HLSDIAG(5)     =     -2225.19616350  AU                              
 SETTING HLSDIAG(6)     =     -2225.19616356  AU                              


         HLSDIAG
    -2225.247519
    -2225.196163
    -2225.196164
    -2225.196164
    -2225.196163
    -2225.196164
                                                  

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       7.49 sec

 CPU time:      7.50 sec, REAL time:      8.03 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.14 sec, REAL time:      0.24 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:    49.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    49.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.34       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1524.03      8.73   1381.61    125.55      6.49      0.15      1.20
 REAL TIME  *      1561.29 SEC
 DISK USED  *       425.37 MB (local),        5.79 GB (total)
 SF USED    *         3.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================


 Preparing effective Fock matrices
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:  -2225.204377
 Replaced energies:  -2225.247519

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:  -2225.148855  -2225.148855  -2225.148855  -2225.148855  -2225.148855
 Replaced energies:  -2225.196163  -2225.196164  -2225.196164  -2225.196163  -2225.196164



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2225.24751863

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11271.15       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.57      -7.50      -0.00      -0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11271.12       0.00       0.00       0.00       0.08
                            0.00       0.00      -0.00      -0.00      -0.00       0.00     -11.38       0.85      -0.14      -2.77

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11271.09       0.00       0.00       7.49
                           -0.00      -0.00       0.00      -0.00       0.57      11.38       0.00       0.00       9.75      -0.19

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11271.15       0.00      -0.54
                           -0.00       0.00       0.00      -0.00       7.50      -0.85      -0.00      -0.00      -0.73       0.01

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11271.14       0.01
                            0.00      -0.00      -0.00      -0.00       0.00       0.14      -9.75       0.73       0.00      14.77

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.08       7.49      -0.54       0.01   11271.15
                           -0.00      -0.00      -0.00       0.00       0.00       2.77       0.19      -0.01     -14.77       0.00

   11   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.08       0.00       1.04      14.14       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -2.77       0.00      -0.01      -0.07       0.02       0.00

   12   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -7.49      -1.04       0.00       0.06       0.37       0.00
                           -0.00      -0.00      -0.00       0.00      -0.19       0.01       0.00       7.51      -0.01      -0.57

   13   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.54     -14.14      -0.06      -0.00       4.98       0.00
                           -0.00      -0.00       0.00       0.00       0.01       0.07      -7.51      -0.00      -0.18      -7.50

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.01      -0.00      -0.37      -4.98      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      14.77      -0.02       0.01       0.18       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    4   1.2  1.5 -1.5      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00

    5   1.2  0.5  0.5      -0.08      -7.49       0.54      -0.01
                            2.77       0.19      -0.01     -14.77

    6   2.2  0.5  0.5       0.00      -1.04     -14.14      -0.00
                           -0.00      -0.01      -0.07       0.02

    7   3.2  0.5  0.5       1.04       0.00      -0.06      -0.37
                            0.01      -0.00       7.51      -0.01

    8   4.2  0.5  0.5      14.14       0.06      -0.00      -4.98
                            0.07      -7.51       0.00      -0.18

    9   5.2  0.5  0.5       0.00       0.37       4.98      -0.00
                           -0.02       0.01       0.18      -0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.57       7.50       0.00

   11   2.2  0.5 -0.5   11271.12       0.00       0.00       0.00
                           -0.00      11.38      -0.85       0.14

   12   3.2  0.5 -0.5       0.00   11271.09       0.00       0.00
                          -11.38      -0.00      -0.00      -9.75

   13   4.2  0.5 -0.5       0.00       0.00   11271.15       0.00
                            0.85       0.00       0.00       0.73

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11271.14
                           -0.14       9.75      -0.73      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2225.24751863     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2225.24751863     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2225.24751863     0.00000000        0.00      0.00000000        0.00      0.0000
     4 -2225.24751863     0.00000000        0.00      0.00000000        0.00      0.0000
     5 -2225.19626635     0.05125228    11248.58      0.05125228    11248.58      1.3946
     6 -2225.19626635     0.05125228    11248.58      0.05125228    11248.58      1.3946
     7 -2225.19626627     0.05125236    11248.59      0.05125236    11248.59      1.3946
     8 -2225.19626627     0.05125236    11248.59      0.05125236    11248.59      1.3946
     9 -2225.19609521     0.05142342    11286.14      0.05142342    11286.14      1.3993
    10 -2225.19609521     0.05142342    11286.14      0.05142342    11286.14      1.3993
    11 -2225.19609507     0.05142357    11286.17      0.05142357    11286.17      1.3993
    12 -2225.19609507     0.05142357    11286.17      0.05142357    11286.17      1.3993
    13 -2225.19609504     0.05142359    11286.17      0.05142359    11286.17      1.3993
    14 -2225.19609504     0.05142359    11286.17      0.05142359    11286.17      1.3993


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.865036144  -0.002480326   0.501643721  -0.007739088   0.000000041  -0.000000000   0.000000000  -0.000000267
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.001096242  -0.383748885   0.008550136   0.554672024   0.000000000   0.000000027  -0.000000047   0.000000000
                        -0.000933293  -0.322525822   0.010258235   0.663982247  -0.000000007  -0.000000018  -0.000000132  -0.000000001

    3    1.2  1.5 -0.5  -0.501701371   0.001425439   0.864936501  -0.013359454  -0.000000033   0.000000004  -0.000000001   0.000000140
                         0.000138811  -0.000008261  -0.000239134   0.000017672   0.000000001   0.000000006   0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.001893336   0.662543423   0.004970020   0.321440984  -0.000000000  -0.000000034   0.000000089  -0.000000000
                         0.001589464   0.556544622   0.005944034   0.384582691  -0.000000000   0.000000023   0.000000252  -0.000000000

    5    1.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.004852027   0.002852060   0.000585720  -0.002065027
                         0.000000488  -0.000000001   0.000000001  -0.000000000  -0.088965901  -0.005052517   0.000471827   0.625935021

    6    2.2  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.006493991   0.461387781  -0.021930311   0.000996789
                        -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.331209866  -0.269620506  -0.040187226  -0.051398164

    7    3.2  0.5  0.5   0.000000000   0.000000010   0.000000000  -0.000000021  -0.331585363  -0.191112243   0.349418939  -0.026429940
                         0.000000000  -0.000000012   0.000000000   0.000000017  -0.003726145  -0.340423561  -0.124204801  -0.000156859

    8    4.2  0.5  0.5   0.000000004  -0.000000001   0.000000007   0.000000001  -0.476187109   0.180221237  -0.067744675   0.254069974
                         0.000000004   0.000000001  -0.000000000  -0.000000001   0.027454700   0.264106756   0.024712028   0.009793787

    9    5.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.001138862   0.010484034   0.211621756  -0.000175924
                        -0.000000000  -0.000000001   0.000000000   0.000000000  -0.066916745  -0.002815736   0.592036257  -0.010226668

   10    1.2  0.5 -0.5   0.000000001   0.000000314   0.000000000   0.000000001   0.005190213  -0.053783027  -0.589201173   0.000640547
                        -0.000000001  -0.000000374  -0.000000000  -0.000000001   0.002593041  -0.071034215   0.211283916   0.000394195

   11    2.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.533272133  -0.190637499   0.048105137  -0.045207501
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.034564920  -0.270923405  -0.018129000  -0.007227276

   12    3.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.031985721   0.272782801   0.008987060  -0.000192995
                        -0.000000015   0.000000000   0.000000027  -0.000000000   0.389087399  -0.188553124   0.024855565   0.370837417

   13    4.2  0.5 -0.5   0.000000000   0.000000006   0.000000000   0.000000004   0.001672184   0.410090349  -0.094201030   0.000632496
                         0.000000001  -0.000000001  -0.000000002   0.000000005  -0.319733133  -0.243585363  -0.236164425  -0.072108427

   14    5.2  0.5 -0.5   0.000000001  -0.000000000   0.000000000  -0.000000000   0.010265630  -0.036484224   0.009696621   0.628719840
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.003529896  -0.056107478  -0.003254415   0.001435246


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5   0.000000069  -0.000000013  -0.000000075  -0.000000006   0.000000006  -0.000000309
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000002   0.000000008  -0.000000003   0.000000034   0.000000107   0.000000002
                         0.000000013   0.000000063  -0.000000001   0.000000003   0.000000152   0.000000004

    3    1.2  1.5 -0.5  -0.000000063   0.000000013   0.000000034   0.000000003  -0.000000004   0.000000186
                        -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000

    4    1.2  1.5 -1.5  -0.000000002  -0.000000008   0.000000006  -0.000000075  -0.000000177  -0.000000004
                        -0.000000013  -0.000000069   0.000000001  -0.000000007  -0.000000253  -0.000000005

    5    1.2  0.5  0.5  -0.000745343  -0.000488788  -0.005987736  -0.001189556   0.000244649   0.003761267
                        -0.165467853   0.030742747   0.168261784   0.013036574  -0.014997847   0.736983359

    6    2.2  0.5  0.5  -0.014791210  -0.073762004   0.038539844  -0.535818847   0.079572130   0.002190754
                        -0.173056131  -0.497630520   0.047487272  -0.066258858   0.120248235  -0.025931968

    7    3.2  0.5  0.5   0.185134496   0.719245148   0.007476197  -0.019739028   0.108019436  -0.008237742
                        -0.022007208  -0.102665899  -0.009557784   0.137360970  -0.075161335  -0.001736340

    8    4.2  0.5  0.5   0.070406414  -0.020933911   0.654236341   0.047948236  -0.010073424  -0.404309898
                         0.002391034   0.000216153  -0.015608903  -0.022695208   0.014467049   0.012298636

    9    5.2  0.5  0.5  -0.010137439  -0.045459224  -0.033509686   0.470476999   0.293206024   0.005094877
                        -0.075596217  -0.335458173   0.020363616   0.053612424   0.409676946   0.000091046

   10    1.2  0.5 -0.5   0.030453244   0.164321724  -0.000049814   0.009966634   0.605117539   0.012129644
                        -0.004237368  -0.019456023   0.013090638  -0.168073042  -0.420703437  -0.008824229

   11    2.2  0.5 -0.5  -0.502912897   0.173567605   0.539684886   0.042861886  -0.019956222  -0.144135376
                        -0.012473399  -0.006441337  -0.015241291  -0.043625902   0.016703759   0.004044170

   12    3.2  0.5 -0.5  -0.014112542  -0.000753485   0.006647950   0.006537898  -0.006157439  -0.000621000
                         0.726398448  -0.186436400   0.138612662   0.010222556  -0.005741186  -0.131594222

   13    4.2  0.5 -0.5  -0.002340502  -0.010966448  -0.045584632   0.649821141  -0.222424563  -0.006043628
                        -0.020803783  -0.069588198  -0.027132031   0.077468139  -0.337853614   0.016560312

   14    5.2  0.5 -0.5  -0.338498582   0.076268333  -0.473439340  -0.031431621   0.003004148  -0.503772163
                        -0.004175789   0.000834928   0.008836834  -0.023444170   0.004115963  -0.004310528


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  74.829%   0.001%  25.165%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%  25.129%   0.018%  74.853%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  25.170%   0.000%  74.812%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.001%  74.871%   0.006%  25.123%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.794%   0.003%   0.000%  39.180%   2.738%   0.095%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  10.974%  28.557%   0.210%   0.264%   3.017%  25.308%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  10.996%  15.241%  13.752%   0.070%   3.476%  52.785%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  22.751%  10.223%   0.520%   6.465%   0.496%   0.044%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.448%   0.012%  39.529%   0.010%   0.582%  11.460%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.794%  39.180%   0.000%   0.095%   2.738%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  28.557%  10.974%   0.264%   0.210%  25.308%   3.017%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  15.241%  10.996%   0.070%  13.752%  52.785%   3.476%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  10.223%  22.751%   6.465%   0.520%   0.044%   0.496%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.448%   0.010%  39.529%  11.460%   0.582%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   2.835%   0.017%   0.022%  54.316%
    6    2.2  0.5  0.5   0.374%  29.149%   2.079%   0.068%
    7    3.2  0.5  0.5   0.015%   1.926%   1.732%   0.007%
    8    4.2  0.5  0.5  42.827%   0.281%   0.031%  16.362%
    9    5.2  0.5  0.5   0.154%  22.422%  25.380%   0.003%
   10    1.2  0.5 -0.5   0.017%   2.835%  54.316%   0.022%
   11    2.2  0.5 -0.5  29.149%   0.374%   0.068%   2.079%
   12    3.2  0.5 -0.5   1.926%   0.015%   0.007%   1.732%
   13    4.2  0.5 -0.5   0.281%  42.827%  16.362%   0.031%
   14    5.2  0.5 -0.5  22.422%   0.154%   0.003%  25.380%


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
              1      24       47.34       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6088.73   4564.69      8.73   1381.61    125.55      6.49      0.15      1.20
 REAL TIME  *      6174.08 SEC
 DISK USED  *       425.37 MB (local),        5.79 GB (total)
 SF USED    *         3.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2225.196095038382

              CI              CI           MULTI         RHF-SCF
  -2225.14885521  -2225.20437658  -2224.39780482  -2224.45353352
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
