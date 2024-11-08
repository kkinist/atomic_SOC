
 Working directory              : /wrk/irikura/molpro.nK3xovtK5y/
 Global scratch directory       : /wrk/irikura/molpro.nK3xovtK5y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.nK3xovtK5y/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
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
 ND=8
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Aug-24          TIME: 21:16:19  
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
 SETTING ND             =         8.00000000                                  
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

     27.525 MB (compressed) written to integral file ( 14.5%)

     Node minimum: 1.573 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.14 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN    108 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.41      1.19
 REAL TIME  *         2.25 SEC
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
   3    -2224.45324955      -0.00098766     0.15D-02     0.16D-02     2     0       0.01      0.04    diag2
   4    -2224.45348729      -0.00023775     0.57D-03     0.87D-03     3     0       0.01      0.05    diag2
   5    -2224.45353252      -0.00004523     0.11D-03     0.60D-03     4     0       0.00      0.05    diag2
   6    -2224.45353351      -0.00000099     0.26D-04     0.13D-03     5     0       0.01      0.06    diag2
   7    -2224.45353352      -0.00000001     0.23D-05     0.19D-04     6     0       0.01      0.07    diag2
   8    -2224.45353352      -0.00000000     0.22D-06     0.11D-05     7     0       0.01      0.08    fixocc
   9    -2224.45353352      -0.00000000     0.36D-07     0.23D-06     0     0       0.01      0.09    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2224.453533522611
  RHF One-electron energy           -3106.800285297986
  RHF Two-electron energy             882.346751775376
  RHF Kinetic energy                 2334.570791239972
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
    4.1     2.00000    -2.12352     1  1  d2-  0.95376    1  1  d2+ -0.31291
    5.1     2.00000    -2.12352     1  1  d2-  0.31292    1  1  d2+  0.95382
    6.1     2.00000    -2.12352     1  1  d1+  1.00086
    7.1     2.00000    -2.12352     1  1  d1-  1.00080
    8.1     2.00000    -2.12352     1  1  d0   1.00384
    9.1     2.00000    -0.68235     1  3  s    0.34769    1  4  s    1.14791    1  7  s   -0.26036
    1.2     2.00000   -50.02660     1  1  px   1.02057
    2.2     2.00000   -50.02660     1  1  py   1.02054
    3.2     2.00000   -50.02660     1  1  pz   1.02053
    4.2     2.00000    -5.87418     1  2  pz   0.92910
    5.2     2.00000    -5.87418     1  2  py   0.92910
    6.2     2.00000    -5.87418     1  2  px   0.92910
    7.2     1.00000    -0.37024     1  3  py   1.01444
    8.2     1.00000    -0.37024     1  3  px   1.01444
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
 CPU TIMES  *         1.54      0.13      1.19
 REAL TIME  *         3.35 SEC
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
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.254D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.717D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.836D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   4 6 3 5 2 1 6 4 2 3   5 1 6 4 3 5 2 3 5 4   6 2 1 2 3 5 4 6 812
                                       11 914151310 7 1 2 3   5 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.232D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.880D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.995D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.672D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.672D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.520D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.520D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 2 1 3 1   2 3 2 1 3 7 9 810 6   4 5 1 2 3 7 9 4 5 6  10 8 1 2 3 6 4 5 7 9
                                        810 810 6 5 4 7 9 2   1 3 6 9 7 810 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    4279
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    0  -2224.38537811   -2224.39764636   -0.01226824    0.02363591 0.00004694 0.00000000  0.17E+01      1.94
   2    8   14    0  -2224.39690635   -2224.39699737   -0.00009102    0.00473028 0.00001089 0.00000000  0.14E+00      3.34
   3    9   18    0  -2224.39699739   -2224.39699739   -0.00000000    0.00000307 0.00000001 0.00000000  0.11E-03      4.89

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.51E-08)
                       Final energy:  -2224.39699739
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2224.460833836616
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.67148530
 One electron energy                         -3106.68694211
 Two electron energy                           882.22610827
 Virial ratio                                    1.95279394
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2224.397816441836
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50916182
 One electron energy                         -3106.17109616
 Two electron energy                           881.77327972
 Virial ratio                                    1.95283319
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2224.397816441805
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50916182
 One electron energy                         -3106.17109616
 Two electron energy                           881.77327972
 Virial ratio                                    1.95283319
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2224.397816441730
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50916182
 One electron energy                         -3106.17109616
 Two electron energy                           881.77327972
 Virial ratio                                    1.95283319
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2224.397816441701
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50916182
 One electron energy                         -3106.17109617
 Two electron energy                           881.77327973
 Virial ratio                                    1.95283319
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2224.397816441689
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.50916182
 One electron energy                         -3106.17109617
 Two electron energy                           881.77327972
 Virial ratio                                    1.95283319
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -2224.374353478543
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.46872182
 One electron energy                         -3106.01018201
 Two electron energy                           881.63582853
 Virial ratio                                    1.95283965
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy             -2224.374353478403
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.46872182
 One electron energy                         -3106.01018202
 Two electron energy                           881.63582854
 Virial ratio                                    1.95283965
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy             -2224.374353478330
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.46872182
 One electron energy                         -3106.01018202
 Two electron energy                           881.63582854
 Virial ratio                                    1.95283965
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.655141963570
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000006724
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999994872
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     2.344862974559
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999980467
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000018818
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.466320964724
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999995053
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000004752
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.533675820238
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     4.000000000000
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>    -0.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.878537071706
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999998223
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000376
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.121461205203
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000019533
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999981182
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 5 3 4 1 1   4 6 3 5 2 1 5 3 6 4   2 1 4 6 3 5 2 5 3 6   4 2 1 2 3 5 6 411 8
                                       1214151310 7 9 1 2 6   5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 2   3 1 3 1 2 3 1 2 810   9 7 6 4 5 7 9 6 4 5  10 8 3 1 2 6 5 9 7 4
                                       10 8 5 810 6 9 7 4 2   1 3 6 9 7 810 5 4 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.70522     1  1  s    0.74069    1  2  s   -1.38205    1  3  s   -2.14452    1  4  s   -0.53661
                                    1  5  s    0.59354    1  6  s    0.31192    1  7  s    1.60206    1  8  s    0.54321
    2.1     2.00000   -55.85952     1  2  s    2.35594    1  3  s    2.11421    1  4  s    0.51093    1  5  s   -0.56827
                                    1  6  s   -0.29610    1  7  s   -1.63521    1  8  s   -0.46808
    3.1     2.00000    -7.99182     1  2  s   -0.71492    1  4  s   -0.30140    1  5  s    0.32800    1  7  s    0.92678
    4.1     2.00000    -2.14350     1  1  d1-  1.00396
    5.1     2.00000    -2.14350     1  1  d0   1.00396
    6.1     2.00000    -2.14350     1  1  d2+  1.00396
    7.1     2.00000    -2.14350     1  1  d2-  1.00396
    8.1     2.00000    -2.14350     1  1  d1+  1.00396
    9.1     1.97671    -0.69198     1  3  s    0.35147    1  4  s    1.16460    1  7  s   -0.25736
    1.2     2.00000   -50.04689     1  1  py   1.02057
    2.2     2.00000   -50.04689     1  1  pz   1.02057
    3.2     2.00000   -50.04689     1  1  px   1.02057
    4.2     2.00000    -5.89404     1  2  py   0.92909
    5.2     2.00000    -5.89404     1  2  pz   0.92909
    6.2     2.00000    -5.89404     1  2  px   0.92909
    7.2     1.00284    -0.16448     1  3  px   0.94191
    8.2     1.00284    -0.16448     1  3  pz   0.94191
    9.2     1.00284    -0.16448     1  3  py   0.94191
   10.2     0.00492     0.47190     1  3  py  -0.80126    1  4  py  -0.62023    1  5  py   1.31462
   11.2     0.00492     0.47190     1  3  pz  -0.80126    1  4  pz  -0.62023    1  5  pz   1.31462
   12.2     0.00492     0.47190     1  3  px  -0.80126    1  4  px  -0.62023    1  5  px   1.31462
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99649125
 
 Energy:    -2224.46083384
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.14163368      0.00001316     -0.00002848      0.80034756      0.00000080      0.00000000      0.00000000
 2 aab000       0.76393815     -0.00011969     -0.00000016     -0.27751542      0.00000030     -0.00000000     -0.00000000
 2 a02000      -0.00000989     -0.00001447     -0.70389079     -0.00002680      0.00000093     -0.00009717      0.69524021
 2 20a000      -0.00000056     -0.00000007      0.00000093     -0.00000080      0.70389079     -0.00000008     -0.00000038
 2 02a000       0.00000056      0.00000007     -0.00000093      0.00000080     -0.70389078     -0.00000008     -0.00000038
 2 a20000       0.00000989      0.00001447      0.70389078      0.00002680     -0.00000093     -0.00009717      0.69524021
 2 0a2000      -0.00011336     -0.70389078      0.00001447     -0.00000849     -0.00000007      0.69524021      0.00009717
 2 2a0000       0.00011336      0.70389077     -0.00001447      0.00000849      0.00000007      0.69524021      0.00009717
 2 baa000      -0.62230447      0.00010653      0.00002864     -0.52283214     -0.00000109      0.00000000     -0.00000000
 0 22a000       0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000002      0.00000008
 0 2a2000       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.15281008     -0.00002136
 0 a22000      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00002136     -0.15281008
 
 Energy:    -2224.39781644  -2224.39781644  -2224.39781644  -2224.39781644  -2224.39781644  -2224.37435348  -2224.37435348

 State:              8
 2 aba000       0.00000000
 2 aab000      -0.00000000
 2 a02000       0.00000038
 2 20a000       0.69524022
 2 02a000       0.69524022
 2 a20000       0.00000038
 2 0a2000       0.00000008
 2 2a0000       0.00000008
 2 baa000       0.00000000
 0 22a000      -0.15281009
 0 2a2000      -0.00000002
 0 a22000      -0.00000008
 
 Energy:    -2224.37435348
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.37      4.83      0.13      1.19
 REAL TIME  *         8.73 SEC
 DISK USED  *        48.08 MB (local),      638.17 MB (total)
 SF USED    *        45.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2224.460834  -0.0
    -2224.397816   6.0
    -2224.397816   6.0
    -2224.397816   6.0
    -2224.397816   6.0
    -2224.397816   6.0
    -2224.374353   2.0
    -2224.374353   2.0
    -2224.374353   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.09 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.46083384

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.91D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:        566835
 Total number of contracted configurations:      5415725
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.86 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1238358 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.46083384    -0.00000000    -0.89789557  0.46D-01  0.54D-01     2.35
    2     1     1     1.06559097    -0.72649187 -2225.18732571    -0.72649187    -0.01777012  0.23D-02  0.80D-03    22.82
    3     1     1     1.05793675    -0.74292211 -2225.20375595    -0.01643024    -0.00046293  0.66D-04  0.32D-04    43.17
    4     1     1     1.05736983    -0.74337487 -2225.20420870    -0.00045276    -0.00002286  0.27D-05  0.24D-05    63.51
    5     1     1     1.05755925    -0.74339856 -2225.20423240    -0.00002370    -0.00000119  0.70D-07  0.19D-06    83.71
    6     1     1     1.05762007    -0.74339991 -2225.20423374    -0.00000135    -0.00000006  0.52D-08  0.90D-08   103.92
    7     1     1     1.05762204    -0.74339998 -2225.20423382    -0.00000007    -0.00000000  0.27D-09  0.41D-09   124.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   2.2%  29.1%
 P   0.7%  58.8%   3.8%

 Initialization:   0.9%
 Other:            1.6%

 Total CPU:      124.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9687598


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97195965 (fixed)   0.97216737 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085930   -0.00247653   -0.00294308
 Singles      0.01971463   -0.09188870   -0.10065305
 Pairs        0.03795693   -0.64903475   -0.63980385
 Total        1.05853086   -0.74339998   -0.74339998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.46083384
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.90347774
 One electron energy                -3105.42559835
 Two electron energy                  880.22136454
 Virial quotient                       -0.95301765
 Correlation energy                    -0.74339998
 !MRCI STATE 1.2 Energy             -2225.204233817902

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.24774566 (Davidson, fixed reference)
 Cluster corrected energies         -2225.24740942 (Davidson, relaxed reference)

 Cluster corrected energies         -2225.24530431 (Pople, fixed reference)
 Cluster corrected energies         -2225.24497169 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       6       43.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       131.84    125.45      4.83      0.13      1.19
 REAL TIME  *       136.61 SEC
 DISK USED  *        90.42 MB (local),        1.12 GB (total)
 SF USED    *       657.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2225.24740942  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
     1     -2224.39781644
     2     -2224.39781644
     3     -2224.39781644
     4     -2224.39781644
     5     -2224.39781644
     6     -2224.37435348
     7     -2224.37435348
     8     -2224.37435348

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1718D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1323D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1323D-06

 Number of blocks in overlap matrix:   796   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       4219480
 Total number of contracted configurations:     10190906
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  27654047 words, CPU-Time:     68.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1526948 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.39781644    -0.00000000    -0.89702937  0.51D-01  0.51D-01    81.17
    1     2     2     1.00000000     0.00000000 -2224.39781644     0.00000000    -0.89744145  0.50D-01  0.51D-01    81.17
    1     3     3     1.00000000     0.00000000 -2224.39781644     0.00000000    -0.89739846  0.51D-01  0.51D-01    81.17
    1     4     4     1.00000000     0.00000000 -2224.39781644     0.00000000    -0.89755560  0.51D-01  0.51D-01    81.17
    1     5     5     1.00000000     0.00000000 -2224.39781644     0.00000000    -0.89784503  0.50D-01  0.51D-01    81.17
    1     6     6     1.00000000     0.00000000 -2224.37435348     0.00000000    -0.87959616  0.32D-01  0.53D-01    81.17
    1     7     7     1.00000000     0.00000000 -2224.37435348     0.00000000    -0.87955432  0.32D-01  0.53D-01    81.17
    1     8     8     1.00000000     0.00000000 -2224.37435348     0.00000000    -0.88023929  0.32D-01  0.53D-01    81.17
    2     1     1     1.06691481    -0.73265852 -2225.13047496    -0.73265852    -0.01922565  0.23D-02  0.11D-02   458.35
    2     2     2     1.06685477    -0.73265473 -2225.13047117    -0.73265473    -0.01918557  0.23D-02  0.11D-02   458.35
    2     3     3     1.06673636    -0.73253894 -2225.13035538    -0.73253894    -0.01932801  0.23D-02  0.12D-02   458.35
    2     4     4     1.06704271    -0.73247886 -2225.13029530    -0.73247886    -0.01933882  0.24D-02  0.11D-02   458.35
    2     5     5     1.06720608    -0.73216710 -2225.12998354    -0.73216710    -0.01963013  0.26D-02  0.11D-02   458.35
    2     6     6     1.05785156    -0.72647678 -2225.10083026    -0.72647678    -0.01852556  0.19D-02  0.12D-02   458.35
    2     7     7     1.05760588    -0.72636431 -2225.10071779    -0.72636431    -0.01857875  0.19D-02  0.12D-02   458.35
    2     8     8     1.05761507    -0.72631302 -2225.10066650    -0.72631302    -0.01858617  0.19D-02  0.12D-02   458.35
    3     1     1     1.06113700    -0.75042183 -2225.14823827    -0.01776331    -0.00060501  0.49D-04  0.74D-04   833.44
    3     2     2     1.06113172    -0.75040716 -2225.14822360    -0.01775243    -0.00061239  0.49D-04  0.75D-04   833.44
    3     3     3     1.06111034    -0.75040597 -2225.14822241    -0.01786703    -0.00061805  0.50D-04  0.76D-04   833.44
    3     4     4     1.06110071    -0.75040148 -2225.14821792    -0.01792262    -0.00062607  0.52D-04  0.76D-04   833.44
    3     5     5     1.06104463    -0.75037437 -2225.14819081    -0.01820727    -0.00064389  0.53D-04  0.79D-04   833.44
    3     6     6     1.05621147    -0.74379007 -2225.11814354    -0.01731328    -0.00073927  0.38D-04  0.11D-03   833.44
    3     7     7     1.05611726    -0.74377310 -2225.11812658    -0.01740879    -0.00075381  0.39D-04  0.11D-03   833.44
    3     8     8     1.05608074    -0.74373750 -2225.11809098    -0.01742448    -0.00076779  0.39D-04  0.12D-03   833.44
    4     1     1     1.06159871    -0.75110519 -2225.14892164    -0.00068336    -0.00006388  0.38D-05  0.95D-05  1207.82
    4     2     2     1.06158638    -0.75110453 -2225.14892097    -0.00069738    -0.00006476  0.38D-05  0.96D-05  1207.82
    4     3     3     1.06156967    -0.75110407 -2225.14892052    -0.00069810    -0.00006568  0.40D-05  0.96D-05  1207.82
    4     4     4     1.06159025    -0.75110179 -2225.14891824    -0.00070031    -0.00006600  0.38D-05  0.98D-05  1207.82
    4     5     5     1.06155520    -0.75109934 -2225.14891578    -0.00072497    -0.00006855  0.42D-05  0.10D-04  1207.82
    4     6     6     1.05804889    -0.74467859 -2225.11903207    -0.00088853    -0.00009607  0.60D-05  0.13D-04  1207.82
    4     7     7     1.05805709    -0.74467846 -2225.11903194    -0.00090536    -0.00009555  0.60D-05  0.13D-04  1207.82
    4     8     8     1.05802319    -0.74466934 -2225.11902282    -0.00093183    -0.00010191  0.64D-05  0.14D-04  1207.82
    5     1     1     1.06215594    -0.75118532 -2225.14900176    -0.00008012    -0.00000786  0.57D-06  0.92D-06  1581.62
    5     2     2     1.06215582    -0.75118519 -2225.14900163    -0.00008066    -0.00000789  0.57D-06  0.94D-06  1581.62
    5     3     3     1.06215048    -0.75118506 -2225.14900150    -0.00008098    -0.00000799  0.57D-06  0.96D-06  1581.62
    5     4     4     1.06215512    -0.75118482 -2225.14900126    -0.00008303    -0.00000820  0.59D-06  0.96D-06  1581.62
    5     5     5     1.06215104    -0.75118436 -2225.14900080    -0.00008502    -0.00000848  0.60D-06  0.10D-05  1581.62
    5     6     6     1.05898269    -0.74479636 -2225.11914984    -0.00011777    -0.00001076  0.74D-06  0.12D-05  1581.62
    5     7     7     1.05898146    -0.74479634 -2225.11914982    -0.00011788    -0.00001083  0.75D-06  0.12D-05  1581.62
    5     8     8     1.05897963    -0.74479517 -2225.11914865    -0.00012583    -0.00001165  0.80D-06  0.13D-05  1581.62
    6     1     1     1.06219865    -0.75119456 -2225.14901100    -0.00000924    -0.00000075  0.49D-07  0.10D-06  1956.41
    6     2     2     1.06219880    -0.75119450 -2225.14901095    -0.00000932    -0.00000079  0.52D-07  0.11D-06  1956.41
    6     3     3     1.06219859    -0.75119450 -2225.14901094    -0.00000944    -0.00000076  0.48D-07  0.10D-06  1956.41
    6     4     4     1.06219717    -0.75119447 -2225.14901091    -0.00000965    -0.00000080  0.51D-07  0.11D-06  1956.41
    6     5     5     1.06219741    -0.75119439 -2225.14901084    -0.00001003    -0.00000085  0.55D-07  0.11D-06  1956.41
    6     6     6     1.05902914    -0.74480872 -2225.11916220    -0.00001236    -0.00000107  0.50D-07  0.15D-06  1956.41
    6     7     7     1.05902973    -0.74480869 -2225.11916217    -0.00001236    -0.00000107  0.48D-07  0.15D-06  1956.41
    6     8     8     1.05902535    -0.74480853 -2225.11916201    -0.00001336    -0.00000119  0.53D-07  0.17D-06  1956.41
    7     1     1     1.06221629    -0.75119542 -2225.14901186    -0.00000086    -0.00000010  0.79D-08  0.14D-07  2330.55
    7     2     2     1.06221596    -0.75119541 -2225.14901185    -0.00000090    -0.00000011  0.89D-08  0.14D-07  2330.55
    7     3     3     1.06221523    -0.75119538 -2225.14901183    -0.00000088    -0.00000011  0.85D-08  0.15D-07  2330.55
    7     4     4     1.06221595    -0.75119537 -2225.14901181    -0.00000090    -0.00000010  0.80D-08  0.14D-07  2330.55
    7     5     5     1.06221562    -0.75119536 -2225.14901180    -0.00000096    -0.00000011  0.92D-08  0.15D-07  2330.55
    7     6     6     1.05905153    -0.74480998 -2225.11916346    -0.00000126    -0.00000016  0.13D-07  0.21D-07  2330.55
    7     7     7     1.05905145    -0.74480995 -2225.11916343    -0.00000126    -0.00000016  0.13D-07  0.21D-07  2330.55
    7     8     8     1.05904923    -0.74480993 -2225.11916341    -0.00000140    -0.00000019  0.15D-07  0.24D-07  2330.55
    8     1     1     1.06222130    -0.75119553 -2225.14901197    -0.00000011    -0.00000002  0.15D-08  0.22D-08  2705.40
    8     2     2     1.06222151    -0.75119553 -2225.14901197    -0.00000012    -0.00000002  0.13D-08  0.20D-08  2705.40
    8     3     3     1.06222126    -0.75119551 -2225.14901195    -0.00000012    -0.00000002  0.14D-08  0.21D-08  2705.40
    8     4     4     1.06222151    -0.75119548 -2225.14901193    -0.00000011    -0.00000002  0.13D-08  0.20D-08  2705.40
    8     5     5     1.06222138    -0.75119548 -2225.14901192    -0.00000012    -0.00000002  0.15D-08  0.21D-08  2705.40
    8     6     6     1.05906577    -0.74481017 -2225.11916364    -0.00000018    -0.00000003  0.21D-08  0.30D-08  2705.40
    8     7     7     1.05906498    -0.74481014 -2225.11916362    -0.00000019    -0.00000003  0.25D-08  0.35D-08  2705.40
    8     8     8     1.05906579    -0.74481013 -2225.11916361    -0.00000020    -0.00000003  0.21D-08  0.30D-08  2705.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.9%  12.9%
 P   0.4%  54.1%  23.0%

 Initialization:   2.5%
 Other:            4.8%

 Total CPU:     2705.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9387839   0.0559184  -0.0305992  -0.0493699  -0.2135343   0.0000000   0.0000000  -0.0000000
 2222222222//\000           0.2181078   0.0186028  -0.0135363   0.2047036   0.9183730   0.0000000   0.0000000   0.0000000
 22222222222/0000          -0.0234032   0.0019244  -0.6827410  -0.0007252  -0.0043824   0.0071966   0.6764522   0.0037539
 22222222220/2000           0.0234032  -0.0019244   0.6827409   0.0007251   0.0043824   0.0071966   0.6764523   0.0037539
 222222222202/000          -0.0413647   0.6817141   0.0033698   0.0141294  -0.0070849   0.6762391  -0.0070977  -0.0174198
 222222222220/000           0.0413647  -0.6817139  -0.0033698  -0.0141294   0.0070849   0.6762392  -0.0070977  -0.0174197
 2222222222/20000          -0.0021267   0.0152337  -0.0001311  -0.6665850   0.1487751   0.0173791  -0.0039377   0.6762661
 2222222222/02000           0.0021267  -0.0152336   0.0001311   0.6665851  -0.1487751   0.0173791  -0.0039377   0.6762658
 22222202222/2000           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0014905  -0.1401050  -0.0007775
 2222220222/22000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0035995   0.0008156  -0.1400665
 222222022222/000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1400609   0.0014701   0.0036079

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.527251    0.033223    0.003019    0.811158   -0.058721   -0.000000   -0.000000   -0.000000
 2           0.036700   -0.002732   -0.021626    0.046395    0.967759   -0.000000    0.000000    0.000000
 3          -0.023250    0.969217    0.000186   -0.024239    0.004784   -0.000000   -0.000000    0.000000
 4           0.176254    0.001029    0.946282   -0.116677    0.020058   -0.000000    0.000000   -0.000000
 5           0.793464    0.006221   -0.211201   -0.515947   -0.010058   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.010333    0.024953    0.970933
 7           0.000000    0.000000    0.000000    0.000000    0.000000    0.971239   -0.005654   -0.010191
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.005390    0.970972   -0.025011

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969810    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.969810   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.969810   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.969810    0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.969810   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971309    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.971309    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.971309


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.81115810 (fixed)   0.96998384 (relaxed)   0.96981034 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094768   -0.00295136   -0.61446609
 Singles      0.02324065   -0.09858992   -0.10914336
 Pairs        0.03903962    0.00000001   -0.02758608
 Total        1.06322794   -0.10154127   -0.75119553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39781644
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83043863
 One electron energy                -3105.03819397
 Two electron energy                  879.88918200
 Virial quotient                       -0.95302381
 Correlation energy                    -0.75119553
 !MRCI STATE 1.2 Energy             -2225.149011972819

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19650852 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19622281 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19650852 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19452951 (Pople, fixed reference)
 Cluster corrected energies         -2225.19424107 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19452951 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96775894 (fixed)   0.96998375 (relaxed)   0.96981025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094767   -0.00295137   -0.61446617
 Singles      0.02324048   -0.09858964   -0.10914323
 Pairs        0.03904000   -0.00000004   -0.02758613
 Total        1.06322814   -0.10154105   -0.75119553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39781644
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83058222
 One electron energy                -3105.03831335
 Two electron energy                  879.88930138
 Virial quotient                       -0.95302376
 Correlation energy                    -0.75119553
 !MRCI STATE 2.2 Energy             -2225.149011970474

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19650867 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19622297 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19650867 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19452966 (Pople, fixed reference)
 Cluster corrected energies         -2225.19424123 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19452966 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96921676 (fixed)   0.96998386 (relaxed)   0.96981036 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094768   -0.00295137   -0.61446610
 Singles      0.02324056   -0.09858989   -0.10914323
 Pairs        0.03903967   -0.00000001   -0.02758618
 Total        1.06322790   -0.10154126   -0.75119551
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39781644
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83046973
 One electron energy                -3105.03821857
 Two electron energy                  879.88920662
 Virial quotient                       -0.95302380
 Correlation energy                    -0.75119551
 !MRCI STATE 3.2 Energy             -2225.149011947033

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19650846 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19622276 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19650846 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19452945 (Pople, fixed reference)
 Cluster corrected energies         -2225.19424102 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19452945 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94628187 (fixed)   0.96998375 (relaxed)   0.96981024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094767   -0.00295137   -0.61446593
 Singles      0.02324063   -0.09858991   -0.10914331
 Pairs        0.03903985    0.00000001   -0.02758625
 Total        1.06322815   -0.10154127   -0.75119548
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39781644
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83056293
 One electron energy                -3105.03828952
 Two electron energy                  879.88927759
 Virial quotient                       -0.95302376
 Correlation energy                    -0.75119548
 !MRCI STATE 4.2 Energy             -2225.149011926390

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19650862 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19622292 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19650862 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19452962 (Pople, fixed reference)
 Cluster corrected energies         -2225.19424119 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19452962 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.79346427 (fixed)   0.96998381 (relaxed)   0.96981031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094767   -0.00295136   -0.61446582
 Singles      0.02324075   -0.09859009   -0.10914340
 Pairs        0.03903959   -0.00000000   -0.02758626
 Total        1.06322801   -0.10154146   -0.75119548
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.39781644
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83047589
 One electron energy                -3105.03821349
 Two electron energy                  879.88920157
 Virial quotient                       -0.95302380
 Correlation energy                    -0.75119548
 !MRCI STATE 5.2 Energy             -2225.149011923201

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19650852 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19622282 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19650852 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19452951 (Pople, fixed reference)
 Cluster corrected energies         -2225.19424108 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19452951 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97093321 (fixed)   0.97144675 (relaxed)   0.97130876 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083493   -0.00282269   -0.00348993
 Singles      0.01588620   -0.08350286   -0.08993855
 Pairs        0.04322888   -0.65823003   -0.65138169
 Total        1.05995002   -0.74455557   -0.74481017
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.37435348
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.80158820
 One electron energy                -3104.85537162
 Two electron energy                  879.73620798
 Virial quotient                       -0.95302281
 Correlation energy                    -0.74481017
 !MRCI STATE 6.2 Energy             -2225.119163644945

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16381503 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16359077 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16381503 (Davidson, rotated reference)

 Cluster corrected energies         -2225.16183555 (Pople, fixed reference)
 Cluster corrected energies         -2225.16161038 (Pople, relaxed reference)
 Cluster corrected energies         -2225.16183555 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97123920 (fixed)   0.97144711 (relaxed)   0.97130912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083494   -0.00282269   -0.63100890
 Singles      0.01588634   -0.08350328   -0.08993858
 Pairs        0.04322796    0.00690867   -0.02386266
 Total        1.05994924   -0.07941730   -0.74481014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.37435348
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.80137714
 One electron energy                -3104.85519968
 Two electron energy                  879.73603606
 Virial quotient                       -0.95302289
 Correlation energy                    -0.74481014
 !MRCI STATE 7.2 Energy             -2225.119163621503

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16381442 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16359016 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16381442 (Davidson, rotated reference)

 Cluster corrected energies         -2225.16183494 (Pople, fixed reference)
 Cluster corrected energies         -2225.16160977 (Pople, relaxed reference)
 Cluster corrected energies         -2225.16183494 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97097173 (fixed)   0.97144674 (relaxed)   0.97130876 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083492   -0.00282269   -0.64048763
 Singles      0.01588622   -0.08350296   -0.08993857
 Pairs        0.04322888    0.01695585   -0.01438393
 Total        1.05995003   -0.06936980   -0.74481013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.37435348
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.80159822
 One electron energy                -3104.85537008
 Two electron energy                  879.73620647
 Virial quotient                       -0.95302280
 Correlation energy                    -0.74481013
 !MRCI STATE 8.2 Energy             -2225.119163609630

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16381500 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16359075 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16381500 (Davidson, rotated reference)

 Cluster corrected energies         -2225.16183551 (Pople, fixed reference)
 Cluster corrected energies         -2225.16161036 (Pople, relaxed reference)
 Cluster corrected energies         -2225.16183551 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3344.87   3213.02    125.45      4.83      0.13      1.19
 REAL TIME  *      3417.99 SEC
 DISK USED  *       723.52 MB (local),        8.54 GB (total)
 SF USED    *         6.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2225.19650852  AU                              
 SETTING HLSDIAG(3)     =     -2225.19650867  AU                              
 SETTING HLSDIAG(4)     =     -2225.19650846  AU                              
 SETTING HLSDIAG(5)     =     -2225.19650862  AU                              
 SETTING HLSDIAG(6)     =     -2225.19650852  AU                              
 SETTING HLSDIAG(7)     =     -2225.16381503  AU                              
 SETTING HLSDIAG(8)     =     -2225.16381442  AU                              
 SETTING HLSDIAG(9)     =     -2225.16381500  AU                              


         HLSDIAG
    -2225.247409
    -2225.196509
    -2225.196509
    -2225.196508
    -2225.196509
    -2225.196509
    -2225.163815
    -2225.163814
    -2225.163815
                                                  

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       8.01 sec

       14212507. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3485 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      8.01 sec, REAL time:      8.23 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.13 sec, REAL time:      0.26 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:   278.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.15       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3353.83      8.93   3213.02    125.45      4.83      0.13      1.19
 REAL TIME  *      3427.38 SEC
 DISK USED  *       723.80 MB (local),        9.29 GB (total)
 SF USED    *         6.63 GB
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

 Original energies:  -2225.204234
 Replaced energies:  -2225.247409

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:  -2225.149012  -2225.149012  -2225.149012  -2225.149012  -2225.149012  -2225.119164  -2225.119164  -2225.119164
 Replaced energies:  -2225.196509  -2225.196509  -2225.196508  -2225.196509  -2225.196509  -2225.163815  -2225.163814  -2225.163815



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2225.24740942

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -945.03
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -24.29

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.61

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -545.61
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      14.02

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11171.46       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.04      10.40       0.38      -0.41      -4.99

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11171.42       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.04      -0.00       0.69      -7.42       1.69       1.92

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11171.47       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -10.40      -0.69      -0.00      -2.44     -10.86       0.38

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11171.43       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.38       7.42       2.44       0.00      -0.04     659.57

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11171.46       0.00
                           -0.00       0.00       0.00      -0.00       0.41      -1.69      10.86       0.04      -0.00    -141.51

   10   6.2  0.5  0.5    -945.03       0.00    -545.61       0.00       0.00       0.00       0.00       0.00       0.00   18346.85
                           24.29     -11.61     -14.02      -0.00       4.99      -1.92      -0.38    -659.57     141.51      -0.00

   11   7.2  0.5  0.5       9.92       0.00       5.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.50   -1091.57       3.18      -0.00     567.31      35.30     -15.89    -110.00    -520.87       0.01

   12   8.2  0.5  0.5      24.34       0.00      14.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          945.06      -6.06    -545.63      -0.00      44.04    -673.14      -3.41       2.35       0.33      -1.68

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00     -14.85      -0.07      -0.00       0.30     176.35
                           -0.00      -0.00       0.00       0.00       0.00       0.36       0.46      -4.33       0.92      -4.44

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      14.85       0.00      -0.32      -0.82      -3.35      15.10
                           -0.00       0.00       0.00      -0.00      -0.36      -0.00      -7.61      -0.12       0.31      10.26

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.07       0.32      -0.00       7.44      -1.68       6.41
                           -0.00      -0.00       0.00       0.00      -0.46       7.61       0.00       0.21      -0.09    -674.57

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.82      -7.44      -0.00      -0.13     158.00
                           -0.00      -0.00       0.00       0.00       4.33       0.12      -0.21       0.00     -14.59       0.67

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.30       3.35       1.68       0.13      -0.00     741.83
                           -0.00      -0.00       0.00       0.00      -0.92      -0.31       0.09      14.59      -0.00       1.28

   18   6.2  0.5 -0.5       0.00    -545.61       0.00    -945.03    -176.35     -15.10      -6.41    -158.00    -741.83       0.00
                           -0.00      14.02     -11.61     -24.29       4.44     -10.26     674.57      -0.67      -1.28      -0.00

   19   7.2  0.5 -0.5       0.00       5.73       0.00       9.92       4.08     -14.90       3.94     659.91    -139.10       0.04
                           -0.00      -3.18   -1091.57       5.50      44.93    -672.83     -10.56     -13.68       8.24       1.68

   20   8.2  0.5 -0.5       0.00      14.05       0.00      24.34     -18.56       2.20    -674.22       7.19      13.93      -0.02
                           -0.00     545.63      -6.06    -945.06    -743.53     -50.21       9.43     -48.13    -221.12       0.01


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       9.92      24.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.50    -945.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -545.61       5.73      14.05
                         1091.57       6.06       0.00      -0.00       0.00       0.00       0.00     -14.02       3.18    -545.63

    3   1.2  1.5 -0.5       5.73      14.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.18     545.63      -0.00      -0.00      -0.00      -0.00      -0.00      11.61    1091.57       6.06

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -945.03       9.92      24.34
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      24.29      -5.50     945.06

    5   1.2  0.5  0.5       0.00       0.00      -0.00      14.85       0.07       0.00      -0.30    -176.35       4.08     -18.56
                         -567.31     -44.04      -0.00       0.36       0.46      -4.33       0.92      -4.44     -44.93     743.53

    6   2.2  0.5  0.5       0.00       0.00     -14.85       0.00       0.32       0.82       3.35     -15.10     -14.90       2.20
                          -35.30     673.14      -0.36       0.00      -7.61      -0.12       0.31      10.26     672.83      50.21

    7   3.2  0.5  0.5       0.00       0.00      -0.07      -0.32      -0.00      -7.44       1.68      -6.41       3.94    -674.22
                           15.89       3.41      -0.46       7.61      -0.00       0.21      -0.09    -674.57      10.56      -9.43

    8   4.2  0.5  0.5       0.00       0.00      -0.00      -0.82       7.44      -0.00       0.13    -158.00     659.91       7.19
                          110.00      -2.35       4.33       0.12      -0.21      -0.00     -14.59       0.67      13.68      48.13

    9   5.2  0.5  0.5       0.00       0.00       0.30      -3.35      -1.68      -0.13      -0.00    -741.83    -139.10      13.93
                          520.87      -0.33      -0.92      -0.31       0.09      14.59       0.00       1.28      -8.24     221.12

   10   6.2  0.5  0.5       0.00       0.00     176.35      15.10       6.41     158.00     741.83       0.00       0.04      -0.02
                           -0.01       1.68       4.44     -10.26     674.57      -0.67      -1.28       0.00      -1.68      -0.01

   11   7.2  0.5  0.5   18346.98       0.00      -4.08      14.90      -3.94    -659.91     139.10      -0.04       0.00      -1.68
                           -0.00      -0.02      44.93    -672.83     -10.56     -13.68       8.24       1.68       0.00      -0.04

   12   8.2  0.5  0.5       0.00   18346.86      18.56      -2.20     674.22      -7.19     -13.93       0.02       1.68      -0.00
                            0.02      -0.00    -743.53     -50.21       9.43     -48.13    -221.12       0.01       0.04       0.00

   13   1.2  0.5 -0.5      -4.08      18.56   11171.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.93     743.53       0.00       0.04     -10.40      -0.38       0.41       4.99     567.31      44.04

   14   2.2  0.5 -0.5      14.90      -2.20       0.00   11171.42       0.00       0.00       0.00       0.00       0.00       0.00
                          672.83      50.21      -0.04       0.00      -0.69       7.42      -1.69      -1.92      35.30    -673.14

   15   3.2  0.5 -0.5      -3.94     674.22       0.00       0.00   11171.47       0.00       0.00       0.00       0.00       0.00
                           10.56      -9.43      10.40       0.69       0.00       2.44      10.86      -0.38     -15.89      -3.41

   16   4.2  0.5 -0.5    -659.91      -7.19       0.00       0.00       0.00   11171.43       0.00       0.00       0.00       0.00
                           13.68      48.13       0.38      -7.42      -2.44      -0.00       0.04    -659.57    -110.00       2.35

   17   5.2  0.5 -0.5     139.10     -13.93       0.00       0.00       0.00       0.00   11171.46       0.00       0.00       0.00
                           -8.24     221.12      -0.41       1.69     -10.86      -0.04       0.00     141.51    -520.87       0.33

   18   6.2  0.5 -0.5      -0.04       0.02       0.00       0.00       0.00       0.00       0.00   18346.85       0.00       0.00
                           -1.68      -0.01      -4.99       1.92       0.38     659.57    -141.51       0.00       0.01      -1.68

   19   7.2  0.5 -0.5       0.00       1.68       0.00       0.00       0.00       0.00       0.00       0.00   18346.98       0.00
                           -0.00      -0.04    -567.31     -35.30      15.89     110.00     520.87      -0.01       0.00       0.02

   20   8.2  0.5 -0.5      -1.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18346.86
                            0.04      -0.00     -44.04     673.14       3.41      -2.35      -0.33       1.68      -0.02       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2225.24785584    -0.00044642      -97.98      0.00000000        0.00      0.0000
     2 -2225.24785584    -0.00044642      -97.98      0.00000000        0.00      0.0000
     3 -2225.24785584    -0.00044642      -97.98      0.00000000        0.00      0.0000
     4 -2225.24785584    -0.00044642      -97.98      0.00000000        0.00      0.0000
     5 -2225.19796598     0.04944344    10851.58      0.04988986    10949.56      1.3576
     6 -2225.19796598     0.04944344    10851.58      0.04988986    10949.56      1.3576
     7 -2225.19796592     0.04944350    10851.59      0.04988992    10949.57      1.3576
     8 -2225.19796592     0.04944350    10851.59      0.04988992    10949.57      1.3576
     9 -2225.19643911     0.05097031    11186.69      0.05141673    11284.67      1.3991
    10 -2225.19643911     0.05097031    11186.69      0.05141673    11284.67      1.3991
    11 -2225.19643907     0.05097036    11186.70      0.05141678    11284.68      1.3991
    12 -2225.19643907     0.05097036    11186.70      0.05141678    11284.68      1.3991
    13 -2225.19643899     0.05097043    11186.72      0.05141685    11284.70      1.3991
    14 -2225.19643899     0.05097043    11186.72      0.05141685    11284.70      1.3991
    15 -2225.16383010     0.08357932    18343.54      0.08402574    18441.52      2.2865
    16 -2225.16383010     0.08357932    18343.54      0.08402574    18441.52      2.2865
    17 -2225.16200781     0.08540161    18743.49      0.08584803    18841.47      2.3360
    18 -2225.16200781     0.08540161    18743.49      0.08584803    18841.47      2.3360
    19 -2225.16200743     0.08540199    18743.57      0.08584841    18841.55      2.3361
    20 -2225.16200743     0.08540199    18743.57      0.08584841    18841.55      2.3361


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.002052309   0.988542447  -0.123218820  -0.046470435   0.003142861   0.000233203  -0.023569275  -0.000822984
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.101708094  -0.007114374  -0.281532507   0.590666015  -0.002034845  -0.022603809  -0.000493285  -0.000048751
                        -0.082118598  -0.014274532  -0.357858830   0.648853287   0.006370240  -0.000724656   0.000736694   0.003023833

    3    1.2  1.5 -0.5  -0.003828842   0.130678378   0.877357126   0.453666391  -0.022569579   0.002235315  -0.003011845   0.000697991
                        -0.015482781  -0.003341232  -0.011891146  -0.038862589   0.001439241   0.006302691   0.000273371  -0.000546678

    4    1.2  1.5 -1.5   0.753015671   0.001563333   0.031745403  -0.084174616  -0.000233087   0.003141288  -0.000061171   0.001751852
                        -0.640455753  -0.001329647   0.033937155  -0.089986165   0.000007376  -0.000099407  -0.000820707   0.023504079

    5    1.2  0.5  0.5   0.002865751   0.000182514   0.001093038  -0.003170032  -0.067946901  -0.482868943   0.005449674  -0.009411804
                        -0.002175245   0.000048691   0.001761772  -0.003332503   0.121601771  -0.006022874   0.027835656  -0.362402543

    6    2.2  0.5  0.5   0.000164359  -0.002361414   0.005177390   0.002411834   0.548315155  -0.071759433  -0.239021671  -0.030572984
                        -0.000257898   0.000069440   0.000132060  -0.000344923  -0.015279608  -0.143632150   0.003958183  -0.012427818

    7    3.2  0.5  0.5   0.003860777  -0.000004603  -0.000226924   0.000661390   0.003815096   0.011474891  -0.022347844   0.613604524
                         0.004778688   0.000007319   0.000144737  -0.000426391   0.002436319  -0.082225828   0.000500655  -0.030055175

    8    4.2  0.5  0.5   0.000756899  -0.000071649  -0.000188765   0.000318790  -0.011393816  -0.064266834  -0.008811099   0.005124183
                        -0.000675910  -0.003699484  -0.004536914  -0.001729568  -0.482936299   0.052433651  -0.365822162  -0.103523300

    9    5.2  0.5  0.5   0.003801552   0.000005981  -0.001066505   0.002097350   0.041069251   0.365996574   0.013399620  -0.030188556
                        -0.003152821   0.000757538  -0.000385614   0.002789662  -0.008432641   0.003740051   0.084243759  -0.490842498

   10    6.2  0.5  0.5  -0.000156642   0.055124927   0.020092587   0.010777091   0.057297769  -0.008256444   0.145268218   0.002576162
                        -0.000398499  -0.001319972   0.000303524  -0.000375711  -0.002239114  -0.019438619  -0.004089347   0.001633433

   11    7.2  0.5  0.5   0.004912814   0.000275014   0.021200379  -0.038945078   0.041589526  -0.004831774   0.003352557   0.020022813
                         0.006090148  -0.000149199  -0.017030429   0.035258986   0.012993732   0.150039521   0.004007550   0.000344985

   12    8.2  0.5  0.5   0.000495999  -0.001315038  -0.000037030   0.000659351   0.003540363   0.021075695  -0.002807530  -0.001761702
                         0.000037498  -0.047298763   0.032537761   0.016201124   0.092988842  -0.004697375  -0.125204195  -0.007078526

   13    1.2  0.5 -0.5   0.000107483  -0.003592262   0.004599260   0.002033303   0.482436845  -0.071759108  -0.362099646  -0.028163721
                        -0.000155337   0.000199681   0.000038524  -0.000405281  -0.021292765  -0.119391803   0.017550813  -0.003365637

   14    2.2  0.5 -0.5  -0.001843781  -0.000292286  -0.001395703   0.003633279   0.067180516   0.548524099  -0.014665863   0.013818720
                         0.001477015  -0.000089967  -0.001996979   0.003690811  -0.145830000  -0.002070972  -0.029564682   0.238654707

   15    3.2  0.5 -0.5  -0.000008248   0.000155089  -0.000140425  -0.000049318  -0.014069911   0.003736128   0.015635833   0.001161796
                        -0.000002593   0.006141450  -0.000774291  -0.000264596  -0.081821742  -0.002555769   0.614141146   0.022323239

   16    4.2  0.5 -0.5   0.002342239  -0.001014471   0.001045320  -0.003442240   0.065893130   0.003886919  -0.102856071   0.365465158
                         0.002864477  -0.000024492  -0.001414333   0.002961453   0.050374689   0.483055048   0.012804668  -0.018404029

   17    5.2  0.5 -0.5  -0.000486237  -0.004938453  -0.003470043  -0.001010176  -0.365695156   0.041315422  -0.491728610  -0.085006694
                        -0.000580925   0.000061305   0.000374020  -0.000515439   0.015314469   0.007129422   0.006378191  -0.007100902

   18    6.2  0.5 -0.5   0.042846230  -0.000138858  -0.007087788   0.013947537   0.007637479   0.057339923   0.001820395  -0.006719431
                        -0.034708795  -0.000405039  -0.008127123   0.014466182  -0.019690040   0.000425694   0.002447626  -0.145170339

   19    7.2  0.5 -0.5   0.000306153   0.000203375   0.000855117   0.002045393   0.009575032   0.041157732   0.001832283  -0.004245653
                        -0.000064524   0.007822039   0.052527935   0.027116563   0.149811624  -0.014302687   0.019941785  -0.003045411

   20    8.2  0.5 -0.5   0.029642147  -0.000353530  -0.012282033   0.023736889  -0.021213726   0.000597401  -0.007189889   0.125066541
                         0.036881505   0.000349911   0.010585973  -0.022254603  -0.004028411  -0.093054296  -0.001230698  -0.006506388


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000852   0.000000279  -0.000000161  -0.000000080   0.000000261  -0.000000398   0.000000000  -0.000000514
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000049   0.000000168   0.000000017   0.000000239   0.000000022   0.000000022  -0.000008561  -0.000001140
                         0.000000205   0.000000407  -0.000000002  -0.000000840   0.000000003  -0.000000023   0.000006083  -0.000001882

    3    1.2  1.5 -0.5   0.000000441  -0.000000208  -0.000000869   0.000000005  -0.000000020   0.000000022  -0.000000291  -0.000010484
                        -0.000000010   0.000000037   0.000000087  -0.000000016  -0.000000025  -0.000000000  -0.000002181   0.000000623

    4    1.2  1.5 -1.5  -0.000000112  -0.000000342  -0.000000014   0.000000028  -0.000000396  -0.000000259  -0.000000401  -0.000000000
                        -0.000000256  -0.000000780   0.000000079  -0.000000158  -0.000000039  -0.000000026   0.000000322  -0.000000000

    5    1.2  0.5  0.5   0.065684561   0.131590219  -0.012111826   0.132713494  -0.368976220  -0.276444475   0.000010831   0.000002488
                         0.138728977   0.358055712  -0.047830012  -0.441867493  -0.053977435  -0.013114819  -0.000007464   0.000002484

    6    2.2  0.5  0.5   0.664451504  -0.289341840  -0.262475281   0.010731869  -0.041236422   0.051528925   0.000000214  -0.000016036
                        -0.023265548  -0.015376642   0.023656915   0.003564642  -0.005068494  -0.001725979  -0.000003876   0.000000742

    7    3.2  0.5  0.5  -0.067832176  -0.204819817   0.032109247  -0.062715499  -0.077465007  -0.054342755  -0.000000876  -0.000000125
                         0.025509890   0.080317206   0.006196896  -0.006016114   0.609066918   0.401770725  -0.000000522  -0.000000060

    8    4.2  0.5  0.5   0.000368712  -0.009359658   0.042930930   0.019079414  -0.026909759  -0.010528678  -0.000005823   0.000000316
                         0.423402738  -0.230950309   0.593562374  -0.084449091  -0.039424085   0.056855299   0.000002128   0.000016142

    9    5.2  0.5  0.5   0.021424289   0.054051897   0.007086615  -0.152154959  -0.390767016  -0.259746227  -0.000010118  -0.000001425
                         0.026087601   0.120486100   0.101433355   0.561196132  -0.006186489  -0.113145497   0.000007704  -0.000005998

   10    6.2  0.5  0.5   0.000003377  -0.000000823   0.000003943   0.000000412  -0.000001476   0.000002249   0.018131940   0.564713759
                        -0.000000127  -0.000000072  -0.000000244   0.000000015   0.000000129  -0.000000069   0.117730433  -0.017822620

   11    7.2  0.5  0.5   0.000001409   0.000002898  -0.000000069  -0.000005836   0.000000016  -0.000000186  -0.327411511   0.104487335
                        -0.000000321  -0.000001183  -0.000000112  -0.000001659  -0.000000167  -0.000000137  -0.459858881  -0.060065624

   12    8.2  0.5  0.5  -0.000000117   0.000000182   0.000000190  -0.000000111  -0.000000060  -0.000000060  -0.124433423   0.017795755
                        -0.000006428   0.000002309   0.000001942  -0.000000489   0.000001612  -0.000002413   0.019069646   0.563234866

   13    1.2  0.5 -0.5  -0.380762100   0.153428522   0.458401358  -0.044923115  -0.276383437   0.372508987   0.000000383  -0.000013118
                         0.023240088   0.004458593  -0.052229761  -0.020403925  -0.014343715  -0.017148441  -0.000003495   0.000000968

   14    2.2  0.5 -0.5   0.130252776   0.245467385  -0.001604478   0.069840063   0.051104270   0.041535717  -0.000012964  -0.000002595
                         0.258823021   0.617885790  -0.011193986  -0.254116682   0.006823690  -0.000957266   0.000009468  -0.000002887

   15    3.2  0.5 -0.5   0.008675231  -0.003870930  -0.005203866   0.000403035  -0.014262224   0.016728866  -0.000000060   0.000000355
                         0.219833463  -0.072366943   0.062788113   0.032699279  -0.405178281   0.613745454   0.000000125  -0.000000956

   16    4.2  0.5 -0.5   0.215276090   0.387925786   0.086494247   0.576534587  -0.004842839   0.030684001  -0.000009867   0.000005872
                        -0.084153749  -0.169657299  -0.003797137   0.147537205  -0.057618790  -0.036563448  -0.000012780  -0.000001990

   17    5.2  0.5 -0.5  -0.132050115   0.032494388  -0.579286259   0.098567804  -0.269679814   0.389456735   0.000002647   0.000012713
                        -0.001129161   0.009147558   0.050196216   0.024966652   0.086849317   0.032566619   0.000005568  -0.000000335

   18    6.2  0.5 -0.5   0.000000397   0.000001240   0.000000058  -0.000000939   0.000002231   0.000001456   0.451310248   0.059627400
                         0.000000725   0.000003144  -0.000000408   0.000003837   0.000000292   0.000000274  -0.339909306   0.103120296

   19    7.2  0.5 -0.5  -0.000000080   0.000000272   0.000000598  -0.000000098  -0.000000199   0.000000000   0.119070472  -0.032919368
                        -0.000003129   0.000001420   0.000006037  -0.000000088   0.000000118  -0.000000168  -0.018646852  -0.563546629

   20    8.2  0.5 -0.5  -0.000002188  -0.000005934   0.000000461   0.000001877  -0.000000299  -0.000000100  -0.339003698   0.108932164
                         0.000000761   0.000002474   0.000000196   0.000000532   0.000002395   0.000001610  -0.450140751  -0.063096051


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.069769765   0.000146937   0.001802423   0.000170881
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000371265   0.001084061   0.010277455   0.042246962
                         0.000648741  -0.001242627   0.020415757   0.050602140

    3    1.2  1.5 -0.5  -0.001648187  -0.000267276  -0.065865084   0.022029098
                         0.000052792  -0.000698044   0.002678269  -0.006094919

    4    1.2  1.5 -1.5   0.000093001   0.044159434   0.000114755  -0.001210411
                        -0.000113760  -0.054016335   0.000126617  -0.001335528

    5    1.2  0.5  0.5  -0.003925139   0.054881936  -0.006866205  -0.057633193
                        -0.000769104  -0.060488203  -0.025976343  -0.066145739

    6    2.2  0.5  0.5   0.058772199   0.002689806  -0.102632640   0.030464816
                        -0.001401430  -0.005537883   0.000425051  -0.012232783

    7    3.2  0.5  0.5   0.000499625   0.092925298  -0.000361380   0.004092630
                         0.000205281   0.080327538   0.000969096  -0.000296855

    8    4.2  0.5  0.5   0.001421409   0.011620120   0.004625011   0.002461833
                         0.062535810  -0.015020461   0.101981603  -0.020109504

    9    5.2  0.5  0.5  -0.000074678   0.057543329   0.012377309   0.049772531
                        -0.013306679  -0.068803642   0.002557141   0.065164025

   10    6.2  0.5  0.5   0.700876991  -0.000180846   0.361759574  -0.122431188
                        -0.017872651   0.003938220  -0.006429477   0.026523849

   11    7.2  0.5  0.5   0.000068214  -0.014204780   0.229844450   0.580792735
                        -0.000275392  -0.012471251  -0.119784925  -0.483248124

   12    8.2  0.5  0.5  -0.017709252  -0.004074545   0.007371813  -0.028361064
                        -0.681986353   0.002813588   0.394358641  -0.127897838

   13    1.2  0.5 -0.5   0.081566941   0.001888895  -0.087714875   0.023858472
                        -0.004205206  -0.003525665   0.001715896  -0.012356719

   14    2.2  0.5 -0.5   0.005989936  -0.038283734   0.011394503   0.068607631
                         0.001422627   0.044614920   0.030788168   0.076332381

   15    3.2  0.5 -0.5  -0.003374967  -0.000157298   0.002528432  -0.000475380
                        -0.122785316   0.000516742   0.003231837   0.000918562

   16    4.2  0.5 -0.5   0.018983699   0.047516093  -0.013247154  -0.078670455
                         0.000510519   0.040681307   0.015328591   0.065058416

   17    5.2  0.5 -0.5   0.089689300  -0.010254876   0.081708663  -0.010206683
                        -0.001002581  -0.008480024  -0.006881085  -0.007453883

   18    6.2  0.5 -0.5  -0.003163466  -0.457443800  -0.062565043  -0.238174331
                        -0.002352608   0.531312674  -0.108528916  -0.272367979

   19    7.2  0.5 -0.5   0.000664704  -0.000256386   0.031960509  -0.065595068
                         0.018890898  -0.000121492   0.754869178  -0.250747256

   20    8.2  0.5 -0.5  -0.004757208  -0.516790805  -0.113813275  -0.297155488
                         0.001373741  -0.445360827   0.064874845   0.259367881


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%  97.722%   1.518%   0.216%   0.001%   0.000%   0.056%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   1.709%   0.025%  20.732%  76.990%   0.004%   0.051%   0.000%   0.001%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.025%   1.709%  76.990%  20.732%   0.051%   0.004%   0.001%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  97.722%   0.000%   0.216%   1.518%   0.000%   0.001%   0.000%   0.056%   0.000%   0.000%
    5    1.2  0.5  0.5   0.001%   0.000%   0.000%   0.002%   1.940%  23.320%   0.080%  13.142%   2.356%  14.552%
    6    2.2  0.5  0.5   0.000%   0.001%   0.003%   0.001%  30.088%   2.578%   5.715%   0.109%  44.204%   8.396%
    7    3.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.002%   0.689%   0.050%  37.741%   0.525%   4.840%
    8    4.2  0.5  0.5   0.000%   0.001%   0.002%   0.000%  23.336%   0.688%  13.390%   1.074%  17.927%   5.343%
    9    5.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.176%  13.397%   0.728%  24.184%   0.114%   1.744%
   10    6.2  0.5  0.5   0.000%   0.304%   0.040%   0.012%   0.329%   0.045%   2.112%   0.001%   0.000%   0.000%
   11    7.2  0.5  0.5   0.006%   0.000%   0.074%   0.276%   0.190%   2.254%   0.003%   0.040%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.224%   0.106%   0.026%   0.866%   0.047%   1.568%   0.005%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.001%   0.002%   0.000%  23.320%   1.940%  13.142%   0.080%  14.552%   2.356%
   14    2.2  0.5 -0.5   0.001%   0.000%   0.001%   0.003%   2.578%  30.088%   0.109%   5.715%   8.396%  44.204%
   15    3.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.689%   0.002%  37.741%   0.050%   4.840%   0.525%
   16    4.2  0.5 -0.5   0.001%   0.000%   0.000%   0.002%   0.688%  23.336%   1.074%  13.390%   5.343%  17.927%
   17    5.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%  13.397%   0.176%  24.184%   0.728%   1.744%   0.114%
   18    6.2  0.5 -0.5   0.304%   0.000%   0.012%   0.040%   0.045%   0.329%   0.001%   2.112%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.006%   0.276%   0.074%   2.254%   0.190%   0.040%   0.003%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.224%   0.000%   0.026%   0.106%   0.047%   0.866%   0.005%   1.568%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.487%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.435%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.435%   0.052%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.487%   0.000%   0.000%
    5    1.2  0.5  0.5   0.243%  21.286%  13.906%   7.659%   0.000%   0.000%   0.002%   0.667%   0.072%   0.770%
    6    2.2  0.5  0.5   6.945%   0.013%   0.173%   0.266%   0.000%   0.000%   0.346%   0.004%   1.053%   0.108%
    7    3.2  0.5  0.5   0.107%   0.397%  37.696%  16.437%   0.000%   0.000%   0.000%   1.509%   0.000%   0.002%
    8    4.2  0.5  0.5  35.416%   0.750%   0.228%   0.334%   0.000%   0.000%   0.391%   0.036%   1.042%   0.041%
    9    5.2  0.5  0.5   1.034%  33.809%  15.274%   8.027%   0.000%   0.000%   0.018%   0.805%   0.016%   0.672%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.419%  31.922%  49.155%   0.002%  13.091%   1.569%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  31.867%   1.453%   0.000%   0.036%   6.718%  57.085%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.585%  31.755%  46.542%   0.002%  15.557%   1.716%
   13    1.2  0.5 -0.5  21.286%   0.243%   7.659%  13.906%   0.000%   0.000%   0.667%   0.002%   0.770%   0.072%
   14    2.2  0.5 -0.5   0.013%   6.945%   0.266%   0.173%   0.000%   0.000%   0.004%   0.346%   0.108%   1.053%
   15    3.2  0.5 -0.5   0.397%   0.107%  16.437%  37.696%   0.000%   0.000%   1.509%   0.000%   0.002%   0.000%
   16    4.2  0.5 -0.5   0.750%  35.416%   0.334%   0.228%   0.000%   0.000%   0.036%   0.391%   0.041%   1.042%
   17    5.2  0.5 -0.5  33.809%   1.034%   8.027%  15.274%   0.000%   0.000%   0.805%   0.018%   0.672%   0.016%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  31.922%   1.419%   0.002%  49.155%   1.569%  13.091%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   1.453%  31.867%   0.036%   0.000%  57.085%   6.718%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  31.755%   1.585%   0.002%  46.542%   1.716%  15.557%


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
              1      24      265.15       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33514.06  30160.22      8.93   3213.02    125.45      4.83      0.13      1.19
 REAL TIME  *     33833.35 SEC
 DISK USED  *       723.80 MB (local),        9.29 GB (total)
 SF USED    *         6.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2225.162007434020

              CI              CI           MULTI         RHF-SCF
  -2225.11916361  -2225.20423382  -2224.37435348  -2224.45353352
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
