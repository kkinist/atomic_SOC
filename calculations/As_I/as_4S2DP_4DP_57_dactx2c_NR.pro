
 Working directory              : /wrk/irikura/molpro.LYy7YIkyDV/
 Global scratch directory       : /wrk/irikura/molpro.LYy7YIkyDV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LYy7YIkyDV/

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
 
 NQ=9
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Aug-24          TIME: 10:21:11  
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
 SETTING NQ             =         9.00000000                                  
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

     27.787 MB (compressed) written to integral file ( 14.4%)

     Node minimum: 1.573 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.15 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN    108 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.45      1.22
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
   4    -2224.45348729      -0.00023775     0.57D-03     0.87D-03     3     0       0.00      0.04    diag2
   5    -2224.45353252      -0.00004523     0.11D-03     0.60D-03     4     0       0.01      0.05    diag2
   6    -2224.45353351      -0.00000099     0.26D-04     0.13D-03     5     0       0.01      0.06    diag2
   7    -2224.45353352      -0.00000001     0.23D-05     0.19D-04     6     0       0.01      0.07    diag2
   8    -2224.45353352      -0.00000000     0.22D-06     0.11D-05     7     0       0.01      0.08    fixocc
   9    -2224.45353352      -0.00000000     0.36D-07     0.23D-06     0     0       0.01      0.09    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2224.453533522606
  RHF One-electron energy           -3106.800285298015
  RHF Two-electron energy             882.346751775409
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
    4.1     2.00000    -2.12352     1  1  d2-  0.94856    1  1  d2+ -0.32852
    5.1     2.00000    -2.12352     1  1  d2-  0.32846    1  1  d2+  0.94836
    6.1     2.00000    -2.12352     1  1  d1+  0.44329    1  1  d1-  0.90051
    7.1     2.00000    -2.12352     1  1  d1+  0.90047    1  1  d1- -0.44350
    8.1     2.00000    -2.12352     1  1  d0   1.00384
    9.1     2.00000    -0.68235     1  3  s    0.34769    1  4  s    1.14791    1  7  s   -0.26036
    1.2     2.00000   -50.02660     1  1  px   1.02056
    2.2     2.00000   -50.02660     1  1  py   1.02057
    3.2     2.00000   -50.02660     1  1  pz   1.02056
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
 CPU TIMES  *         1.60      0.15      1.22
 REAL TIME  *         3.44 SEC
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
 Number of states:             9
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.257D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.273D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.338D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 1   4 6 3 5 2 1 4 6 2 3   5 1 6 4 3 5 2 3 5 4   6 2 1 2 3 5 6 4 812
                                        91115141310 7 1 2 5   3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.573D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.110D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.504D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.136D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.136D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.994D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.143D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.479D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.672D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.672D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 2 1 3 1   2 3 1 2 3 9 7 810 6   4 5 2 1 3 7 9 4 5 6  10 8 1 2 3 6 4 5 9 7
                                        810 810 6 4 5 7 9 1   2 3 6 7 910 8 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    5159
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0  -2224.27767319   -2224.29167000   -0.01399681    0.07804548 0.00058568 0.00000000  0.12E+01      1.38
   2    7   12    0  -2224.29134115   -2224.29135678   -0.00001562    0.00481566 0.00000004 0.00000000  0.22E-01      2.65
   3   11   22    0  -2224.29135679   -2224.29135679   -0.00000000    0.00000802 0.00000001 0.00000000  0.40E-04      4.56

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.65E-08)
                       Final energy:  -2224.29135679
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2224.451758925452
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.13607897
 One electron energy                         -3108.01490866
 Two electron energy                           883.56314973
 Virial ratio                                    1.95260048
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2224.188169083667
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76420801
 One electron energy                         -3098.17993604
 Two electron energy                           873.99176695
 Virial ratio                                    1.95304751
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2224.188169083658
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76420801
 One electron energy                         -3098.17993603
 Two electron energy                           873.99176695
 Virial ratio                                    1.95304751
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2224.188169082755
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76420803
 One electron energy                         -3098.17993621
 Two electron energy                           873.99176713
 Virial ratio                                    1.95304751
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2224.188169082676
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76420802
 One electron energy                         -3098.17993615
 Two electron energy                           873.99176707
 Virial ratio                                    1.95304751
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2224.188169082408
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76420803
 One electron energy                         -3098.17993623
 Two electron energy                           873.99176714
 Virial ratio                                    1.95304751
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2224.183421550619
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76367577
 One electron energy                         -3098.17804451
 Two electron energy                           873.99462296
 Virial ratio                                    1.95304569
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2224.183421549388
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76367579
 One electron energy                         -3098.17804468
 Two electron energy                           873.99462313
 Virial ratio                                    1.95304569
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy             -2224.183421549368
 Nuclear energy                                  0.00000000
 Kinetic energy                               2333.76367578
 One electron energy                         -3098.17804462
 Two electron energy                           873.99462307
 Virial ratio                                    1.95304569
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2224.385250334890
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.00252359
 One electron energy                         -3107.44156873
 Two electron energy                           883.05631840
 Virial ratio                                    1.95262649
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2224.385250334851
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.00252359
 One electron energy                         -3107.44156874
 Two electron energy                           883.05631840
 Virial ratio                                    1.95262649
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2224.385250334690
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.00252359
 One electron energy                         -3107.44156874
 Two electron energy                           883.05631840
 Virial ratio                                    1.95262649
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2224.385250334623
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.00252360
 One electron energy                         -3107.44156877
 Two electron energy                           883.05631844
 Virial ratio                                    1.95262649
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2224.385250334619
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.00252360
 One electron energy                         -3107.44156876
 Two electron energy                           883.05631843
 Virial ratio                                    1.95262649
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -2224.361314946904
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.90652576
 One electron energy                         -3107.05037032
 Two electron energy                           882.68905538
 Virial ratio                                    1.95265540
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy             -2224.361314946691
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.90652576
 One electron energy                         -3107.05037031
 Two electron energy                           882.68905537
 Virial ratio                                    1.95265540
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy             -2224.361314946524
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.90652578
 One electron energy                         -3107.05037037
 Two electron energy                           882.68905542
 Virial ratio                                    1.95265540
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     3.994731135769
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     4.000000000000
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000000004
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000002
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     0.005268761625
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.000000000000
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     1.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.547222337807
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000134147
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999996648109
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.452774473483
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999978566
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000022331
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.876992991274
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000000375
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999945
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.123005839601
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999942
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000058
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.535978068058
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999878733
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000008934752
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.464022161809
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000021434
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999977669
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.128275872957
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999999999620
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000053
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     2.871725398773
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000000000058
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999942
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.916799594135
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999987120
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999994417138
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.083203364707
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     6.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     6.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     2.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 2 4 1 1   4 6 2 3 5 1 6 4 2 3   5 1 6 4 3 5 2 5 3 6   4 2 1 3 5 6 2 41310
                                       111415 812 7 9 1 2 3   5 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 2   1 3 1 2 3 6 810 4 5   7 9 1 2 3 5 7 9 610   8 4 2 1 3 9 7 5 6 4
                                       10 8 7 9 5 810 6 4 2   1 3 7 9 810 5 6 4 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.80363     1  1  s    0.74070    1  2  s   -1.38202    1  3  s   -2.14446    1  4  s   -0.53657
                                    1  5  s    0.59351    1  6  s    0.31190    1  7  s    1.60203    1  8  s    0.54319
    2.1     2.00000   -55.95700     1  2  s    2.35581    1  3  s    2.11395    1  4  s    0.51050    1  5  s   -0.56812
                                    1  6  s   -0.29596    1  7  s   -1.63510    1  8  s   -0.46804
    3.1     2.00000    -8.08899     1  2  s   -0.71457    1  4  s   -0.29944    1  5  s    0.32741    1  7  s    0.92649
    4.1     2.00000    -2.24024     1  1  d2+  1.00423
    5.1     2.00000    -2.24024     1  1  d2-  1.00423
    6.1     2.00000    -2.24024     1  1  d1-  1.00423
    7.1     2.00000    -2.24024     1  1  d0   1.00423
    8.1     2.00000    -2.24024     1  1  d1+  1.00423
    9.1     1.97735    -0.76812     1  3  s    0.36575    1  4  s    1.20670    1  7  s   -0.25756
    1.2     2.00000   -50.14424     1  1  py   1.02057
    2.2     2.00000   -50.14424     1  1  px   1.02057
    3.2     2.00000   -50.14424     1  1  pz   1.02057
    4.2     2.00000    -5.99058     1  2  py   0.92904
    5.2     2.00000    -5.99058     1  2  px   0.92904
    6.2     2.00000    -5.99058     1  2  pz   0.92904
    7.2     0.84780    -0.21149     1  3  pz   1.03056
    8.2     0.84780    -0.21149     1  3  px   1.03056
    9.2     0.84780    -0.21149     1  3  py   1.03056
   10.2     0.15975     0.04408     1  3  py  -0.48837    1  8  py   0.71308    1  9  py   0.42035
   11.2     0.15975     0.04408     1  3  px  -0.48837    1  8  px   0.71308    1  9  px   0.42035
   12.2     0.15975     0.04408     1  3  pz  -0.48837    1  8  pz   0.71308    1  9  pz   0.42035
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aaa000       0.99913981     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a0a0a0       0.00577873      0.02933330      0.00000401      0.00000052      0.00000285      0.80769298      0.00000000
 2 aa0a00      -0.00577872      0.71414938      0.00009776     -0.00000041      0.00000269      0.37844324      0.00000000
 2 a0a00a       0.00000000     -0.00000135     -0.00000000      0.00000780      0.69994402     -0.00000242      0.00000000
 2 a0aa00      -0.00000000     -0.00000065     -0.00000000     -0.69994397      0.00000780      0.00000047      0.00000000
 2 aa000a       0.00000000     -0.00009581      0.69994391     -0.00000000      0.00000000      0.00000000      0.69982391
 2 0aaa00      -0.00000000     -0.00009581      0.69994380     -0.00000000      0.00000000      0.00000000     -0.69982402
 2 aa00a0      -0.00000000      0.00000065      0.00000000      0.69994377     -0.00000780     -0.00000047     -0.00000000
 2 0aa0a0      -0.00000000      0.00000135      0.00000000     -0.00000780     -0.69994371      0.00000242      0.00000000
 2 0aa00a      -0.00577872     -0.68481605     -0.00009374      0.00000093      0.00000016      0.42925003     -0.00000000
 0 a2a0a0       0.01929219     -0.00322178     -0.00000044     -0.00000006     -0.00000031     -0.08871166     -0.00000000
 0 aa2a00      -0.01929219     -0.07843744     -0.00001074      0.00000004     -0.00000030     -0.04156570     -0.00000000
 0 2aa0a0       0.00000000     -0.00000015     -0.00000000      0.00000086      0.07687719     -0.00000027     -0.00000000
 0 aa20a0       0.00000000     -0.00000007     -0.00000000     -0.07687719      0.00000086      0.00000005      0.00000000
 0 2aaa00      -0.00000000      0.00001052     -0.07687720      0.00000000     -0.00000000     -0.00000000      0.07791731
 0 aa200a       0.00000000      0.00001052     -0.07687721      0.00000000     -0.00000000     -0.00000000     -0.07791729
 0 a2aa00       0.00000000      0.00000007      0.00000000      0.07687722     -0.00000086     -0.00000005     -0.00000000
 0 a2a00a      -0.00000000      0.00000015      0.00000000     -0.00000086     -0.07687722      0.00000027     -0.00000000
 0 2aa00a      -0.01929219      0.07521567      0.00001030     -0.00000010     -0.00000002     -0.04714598      0.00000000
 2 0a0a0a      -0.01194657     -0.00251844     -0.00000034     -0.00000004     -0.00000025     -0.06934512      0.00000000
 2 00a0aa       0.01194658     -0.06131385     -0.00000839      0.00000004     -0.00000023     -0.03249150     -0.00000000
 2 a000aa      -0.00000000      0.00000823     -0.06009423      0.00000000     -0.00000000     -0.00000000     -0.06008662
 2 a00a0a       0.00000000      0.00000012      0.00000000     -0.00000067     -0.06009422      0.00000021      0.00000000
 2 00aa0a       0.00000000      0.00000006      0.00000000      0.06009422     -0.00000067     -0.00000004     -0.00000000
 2 00aaa0      -0.00000000      0.00000823     -0.06009422      0.00000000     -0.00000000     -0.00000000      0.06008663
 2 0a00aa       0.00000000     -0.00000006     -0.00000000     -0.06009421      0.00000067      0.00000004      0.00000000
 2 0a0aa0      -0.00000000     -0.00000012     -0.00000000      0.00000067      0.06009420     -0.00000021     -0.00000000
 2 a00aa0       0.01194658      0.05879542      0.00000805     -0.00000008     -0.00000001     -0.03685355     -0.00000000
 
 Energy:    -2224.45175893  -2224.18816908  -2224.18816908  -2224.18816908  -2224.18816908  -2224.18816908  -2224.18342155

 State:              8               9
 2 aaa000       0.00000000     -0.00000000
 2 a0a0a0       0.00000000      0.00000000
 2 aa0a00       0.00000000      0.00000000
 2 a0a00a      -0.00000532      0.69982382
 2 a0aa00       0.69982387      0.00000532
 2 aa000a       0.00000000     -0.00000000
 2 0aaa00       0.00000000     -0.00000000
 2 aa00a0       0.69982407      0.00000532
 2 0aa0a0      -0.00000532      0.69982412
 2 0aa00a       0.00000000      0.00000000
 0 a2a0a0      -0.00000000     -0.00000000
 0 aa2a00      -0.00000000     -0.00000000
 0 2aa0a0       0.00000059     -0.07791732
 0 aa20a0      -0.07791731     -0.00000059
 0 2aaa00      -0.00000000     -0.00000000
 0 aa200a      -0.00000000     -0.00000000
 0 a2aa00      -0.07791729     -0.00000059
 0 a2a00a       0.00000059     -0.07791728
 0 2aa00a      -0.00000000     -0.00000000
 2 0a0a0a      -0.00000000     -0.00000000
 2 00a0aa       0.00000000     -0.00000000
 2 a000aa      -0.00000000     -0.00000000
 2 a00a0a       0.00000046     -0.06008660
 2 00aa0a      -0.06008661     -0.00000046
 2 00aaa0      -0.00000000      0.00000000
 2 0a00aa      -0.06008663     -0.00000046
 2 0a0aa0       0.00000046     -0.06008663
 2 a00aa0       0.00000000     -0.00000000
 
 Energy:    -2224.18342155  -2224.18342155
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.11736771     -0.00000006     -0.00009833      0.00199658      0.80528622      0.00000000     -0.00000000
 2 aba000       0.75608433      0.00000040      0.00006129     -0.00073121     -0.30100004     -0.00000000      0.00000000
 2 a02000       0.00000037     -0.70476862      0.00000000     -0.00000000      0.00000000      0.69405035      0.00000000
 2 02a000       0.00002428      0.00000000     -0.70476862      0.00013798     -0.00008286      0.00000000      0.69405033
 2 a20000      -0.00000037      0.70476861     -0.00000000      0.00000000     -0.00000000      0.69405036     -0.00000000
 2 20a000      -0.00002428     -0.00000000      0.70476859     -0.00013798      0.00008286      0.00000000      0.69405037
 2 0a2000       0.00001492      0.00000000     -0.00013819     -0.70476645      0.00174951      0.00000000      0.00010161
 2 2a0000      -0.00001492     -0.00000000      0.00013819      0.70476641     -0.00174951     -0.00000000      0.00010161
 2 aab000      -0.63871662     -0.00000033      0.00003704     -0.00126537     -0.50428618     -0.00000000      0.00000000
 0 a22000      -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.15905117     -0.00000000
 0 2a2000      -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00002329
 0 22a000      -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.15905117
 2 a0ab00       0.00000002     -0.03509861     -0.00000000      0.00000000      0.00000000      0.05294337      0.00000000
 2 aa00b0      -0.00000002      0.03509860      0.00000000      0.00000000     -0.00000000      0.05294337     -0.00000000
 2 aa000b       0.00000074      0.00000000     -0.00000688     -0.03509850      0.00008713     -0.00000000     -0.00000775
 2 0aab00       0.00000074      0.00000000     -0.00000688     -0.03509850      0.00008713      0.00000000      0.00000775
 2 a0a00b       0.00000121      0.00000000     -0.03509860      0.00000687     -0.00000413      0.00000000     -0.05294337
 2 0aa0b0      -0.00000121     -0.00000000      0.03509860     -0.00000687      0.00000413     -0.00000000     -0.05294336
 
 Energy:    -2224.38525033  -2224.38525033  -2224.38525033  -2224.38525033  -2224.38525033  -2224.36131495  -2224.36131495

 State:              8
 2 baa000      -0.00000000
 2 aba000       0.00000000
 2 a02000      -0.00000000
 2 02a000      -0.00010161
 2 a20000      -0.00000000
 2 20a000      -0.00010161
 2 0a2000       0.69405033
 2 2a0000       0.69405037
 2 aab000       0.00000000
 0 a22000      -0.00000000
 0 2a2000      -0.15905117
 0 22a000       0.00002329
 2 a0ab00       0.00000000
 2 aa00b0      -0.00000000
 2 aa000b      -0.05294337
 2 0aab00       0.05294337
 2 a0a00b       0.00000775
 2 0aa0b0       0.00000775
 
 Energy:    -2224.36131495
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.20      4.60      0.15      1.22
 REAL TIME  *         8.54 SEC
 DISK USED  *        48.08 MB (local),      638.17 MB (total)
 SF USED    *        45.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2224.451759  -0.0
    -2224.188169   6.0
    -2224.188169   6.0
    -2224.188169   6.0
    -2224.188169   6.0
    -2224.188169   6.0
    -2224.183422   2.0
    -2224.183422   2.0
    -2224.183422   2.0
    -2224.385250   6.0
    -2224.385250   6.0
    -2224.385250   6.0
    -2224.385250   6.0
    -2224.385250   6.0
    -2224.361315   2.0
    -2224.361315   2.0
    -2224.361315   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

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

 Integral transformation finished. Total CPU:   0.11 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.45175893
     2     -2224.18816908
     3     -2224.18816908
     4     -2224.18816908
     5     -2224.18816908
     6     -2224.18816908
     7     -2224.18342155
     8     -2224.18342155
     9     -2224.18342155

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1595D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1107D-06

 Number of blocks in overlap matrix:   859   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1994
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:       4499175
 Total number of contracted configurations:      9348065
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  20919871 words, CPU-Time:     47.51 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1660164 words, CPU-time:      0.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.45175893     0.00000000    -0.90188753  0.46D-01  0.58D-01    59.13
    1     2     2     1.00000000     0.00000000 -2224.18816908    -0.00000000    -0.87486787  0.39D-01  0.54D-01    59.13
    1     3     3     1.00000000     0.00000000 -2224.18816908     0.00000000    -0.87545279  0.39D-01  0.55D-01    59.13
    1     4     4     1.00000000     0.00000000 -2224.18816908     0.00000000    -0.87548507  0.39D-01  0.55D-01    59.13
    1     5     5     1.00000000     0.00000000 -2224.18816908     0.00000000    -0.87526855  0.39D-01  0.55D-01    59.13
    1     6     6     1.00000000     0.00000000 -2224.18816908     0.00000000    -0.87520220  0.39D-01  0.55D-01    59.13
    1     7     7     1.00000000     0.00000000 -2224.18342155     0.00000000    -0.87616251  0.40D-01  0.55D-01    59.13
    1     8     8     1.00000000     0.00000000 -2224.18342155    -0.00000000    -0.87621768  0.40D-01  0.55D-01    59.13
    1     9     9     1.00000000     0.00000000 -2224.18342155     0.00000000    -0.87604781  0.40D-01  0.55D-01    59.13
    2     1     1     1.06874801    -0.73193174 -2225.18369067    -0.73193174    -0.01815452  0.30D-02  0.86D-03   420.67
    2     2     2     1.06272489    -0.71932953 -2224.90749861    -0.71932953    -0.01595255  0.20D-02  0.75D-03   420.67
    2     3     3     1.06297855    -0.71923718 -2224.90740627    -0.71923718    -0.01602620  0.21D-02  0.75D-03   420.67
    2     4     4     1.06306381    -0.71918245 -2224.90735153    -0.71918245    -0.01607175  0.21D-02  0.76D-03   420.67
    2     5     5     1.06315117    -0.71914334 -2224.90731242    -0.71914334    -0.01612017  0.21D-02  0.76D-03   420.67
    2     6     6     1.06291668    -0.71912177 -2224.90729086    -0.71912177    -0.01614672  0.21D-02  0.76D-03   420.67
    2     7     7     1.06367509    -0.71929367 -2224.90271522    -0.71929367    -0.01627393  0.22D-02  0.75D-03   420.67
    2     8     8     1.06375078    -0.71924084 -2224.90266239    -0.71924084    -0.01632067  0.23D-02  0.76D-03   420.67
    2     9     9     1.06379475    -0.71922380 -2224.90264535    -0.71922380    -0.01634427  0.23D-02  0.76D-03   420.67
    3     1     1     1.05960683    -0.74966817 -2225.20142710    -0.01773643    -0.00057935  0.74D-04  0.57D-04   781.45
    3     2     2     1.05732102    -0.73420168 -2224.92237076    -0.01487215    -0.00047629  0.63D-04  0.38D-04   781.45
    3     3     3     1.05732567    -0.73419613 -2224.92236521    -0.01495894    -0.00048041  0.63D-04  0.38D-04   781.45
    3     4     4     1.05725591    -0.73419433 -2224.92236341    -0.01501188    -0.00048144  0.63D-04  0.39D-04   781.45
    3     5     5     1.05732327    -0.73419399 -2224.92236307    -0.01505065    -0.00048200  0.63D-04  0.39D-04   781.45
    3     6     6     1.05731634    -0.73419182 -2224.92236090    -0.01507005    -0.00048264  0.63D-04  0.39D-04   781.45
    3     7     7     1.05751884    -0.73453862 -2224.91796017    -0.01524494    -0.00049726  0.68D-04  0.41D-04   781.45
    3     8     8     1.05751462    -0.73453730 -2224.91795885    -0.01529647    -0.00049812  0.68D-04  0.41D-04   781.45
    3     9     9     1.05750873    -0.73453345 -2224.91795500    -0.01530965    -0.00049946  0.68D-04  0.41D-04   781.45
    4     1     1     1.05917602    -0.75028837 -2225.20204729    -0.00062019    -0.00004124  0.32D-05  0.61D-05  1144.06
    4     2     2     1.05690444    -0.73468599 -2224.92285507    -0.00048431    -0.00003392  0.30D-05  0.49D-05  1144.06
    4     3     3     1.05689722    -0.73468537 -2224.92285445    -0.00048924    -0.00003450  0.30D-05  0.50D-05  1144.06
    4     4     4     1.05689362    -0.73468503 -2224.92285412    -0.00049070    -0.00003472  0.30D-05  0.51D-05  1144.06
    4     5     5     1.05688593    -0.73468437 -2224.92285346    -0.00049038    -0.00003475  0.30D-05  0.51D-05  1144.06
    4     6     6     1.05688859    -0.73468408 -2224.92285317    -0.00049226    -0.00003514  0.30D-05  0.52D-05  1144.06
    4     7     7     1.05708071    -0.73504626 -2224.91846781    -0.00050764    -0.00003691  0.31D-05  0.56D-05  1144.06
    4     8     8     1.05707783    -0.73504599 -2224.91846754    -0.00050868    -0.00003710  0.31D-05  0.56D-05  1144.06
    4     9     9     1.05707185    -0.73504446 -2224.91846601    -0.00051101    -0.00003781  0.31D-05  0.57D-05  1144.06
    5     1     1     1.05963729    -0.75033555 -2225.20209447    -0.00004718    -0.00000483  0.30D-06  0.67D-06  1506.09
    5     2     2     1.05710525    -0.73472687 -2224.92289595    -0.00004088    -0.00000459  0.19D-06  0.78D-06  1506.09
    5     3     3     1.05710616    -0.73472683 -2224.92289591    -0.00004146    -0.00000454  0.19D-06  0.77D-06  1506.09
    5     4     4     1.05710556    -0.73472680 -2224.92289588    -0.00004176    -0.00000463  0.20D-06  0.79D-06  1506.09
    5     5     5     1.05710461    -0.73472657 -2224.92289566    -0.00004220    -0.00000477  0.20D-06  0.80D-06  1506.09
    5     6     6     1.05710805    -0.73472644 -2224.92289552    -0.00004236    -0.00000477  0.20D-06  0.80D-06  1506.09
    5     7     7     1.05732290    -0.73509094 -2224.91851249    -0.00004468    -0.00000492  0.21D-06  0.82D-06  1506.09
    5     8     8     1.05732327    -0.73509089 -2224.91851244    -0.00004491    -0.00000495  0.21D-06  0.82D-06  1506.09
    5     9     9     1.05732192    -0.73509054 -2224.91851209    -0.00004608    -0.00000517  0.22D-06  0.85D-06  1506.09
    6     1     1     1.05971302    -0.75034140 -2225.20210033    -0.00000585    -0.00000051  0.31D-07  0.62D-07  1865.91
    6     2     2     1.05717775    -0.73473310 -2224.92290218    -0.00000623    -0.00000063  0.35D-07  0.86D-07  1865.91
    6     3     3     1.05717751    -0.73473309 -2224.92290217    -0.00000626    -0.00000064  0.35D-07  0.87D-07  1865.91
    6     4     4     1.05717791    -0.73473306 -2224.92290214    -0.00000626    -0.00000066  0.36D-07  0.90D-07  1865.91
    6     5     5     1.05717775    -0.73473300 -2224.92290208    -0.00000643    -0.00000062  0.34D-07  0.85D-07  1865.91
    6     6     6     1.05717864    -0.73473296 -2224.92290204    -0.00000652    -0.00000066  0.36D-07  0.88D-07  1865.91
    6     7     7     1.05740092    -0.73509752 -2224.91851907    -0.00000659    -0.00000064  0.35D-07  0.87D-07  1865.91
    6     8     8     1.05740061    -0.73509752 -2224.91851907    -0.00000663    -0.00000064  0.36D-07  0.88D-07  1865.91
    6     9     9     1.05740075    -0.73509748 -2224.91851903    -0.00000694    -0.00000068  0.37D-07  0.92D-07  1865.91
    7     1     1     1.05969873    -0.75034198 -2225.20210090    -0.00000058    -0.00000005  0.29D-08  0.74D-08  2227.61
    7     2     2     1.05716942    -0.73473384 -2224.92290292    -0.00000074    -0.00000009  0.68D-08  0.12D-07  2227.61
    7     3     3     1.05716936    -0.73473384 -2224.92290292    -0.00000075    -0.00000009  0.69D-08  0.13D-07  2227.61
    7     4     4     1.05716925    -0.73473383 -2224.92290292    -0.00000077    -0.00000009  0.70D-08  0.13D-07  2227.61
    7     5     5     1.05716953    -0.73473373 -2224.92290281    -0.00000073    -0.00000009  0.66D-08  0.12D-07  2227.61
    7     6     6     1.05716916    -0.73473372 -2224.92290281    -0.00000077    -0.00000009  0.70D-08  0.13D-07  2227.61
    7     7     7     1.05739204    -0.73509827 -2224.91851982    -0.00000075    -0.00000009  0.69D-08  0.13D-07  2227.61
    7     8     8     1.05739207    -0.73509827 -2224.91851982    -0.00000075    -0.00000009  0.69D-08  0.13D-07  2227.61
    7     9     9     1.05739171    -0.73509826 -2224.91851981    -0.00000079    -0.00000010  0.73D-08  0.13D-07  2227.61
    8     1     1     1.05970353    -0.75034204 -2225.20210096    -0.00000006    -0.00000001  0.68D-09  0.95D-09  2590.45
    8     2     2     1.05717319    -0.73473394 -2224.92290302    -0.00000010    -0.00000002  0.12D-08  0.24D-08  2590.45
    8     3     3     1.05717326    -0.73473394 -2224.92290302    -0.00000010    -0.00000002  0.12D-08  0.23D-08  2590.45
    8     4     4     1.05717324    -0.73473393 -2224.92290301    -0.00000010    -0.00000002  0.12D-08  0.24D-08  2590.45
    8     5     5     1.05717309    -0.73473383 -2224.92290291    -0.00000010    -0.00000002  0.12D-08  0.24D-08  2590.45
    8     6     6     1.05717324    -0.73473382 -2224.92290291    -0.00000010    -0.00000002  0.12D-08  0.23D-08  2590.45
    8     7     7     1.05739643    -0.73509837 -2224.91851992    -0.00000010    -0.00000002  0.12D-08  0.24D-08  2590.45
    8     8     8     1.05739654    -0.73509837 -2224.91851992    -0.00000010    -0.00000002  0.12D-08  0.23D-08  2590.45
    8     9     9     1.05739640    -0.73509837 -2224.91851992    -0.00000010    -0.00000002  0.12D-08  0.24D-08  2590.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.8%  13.5%
 P   0.3%  49.8%  26.7%

 Initialization:   1.9%
 Other:            5.9%

 Total CPU:     2590.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9705806   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0000000
 22222222220//00/          -0.0112915   0.0093731  -0.0191104  -0.0059958   0.7826593   0.0742864  -0.0000001   0.0000005
                           -0.0000001
 2222222222/0/0/0           0.0112915   0.0219475  -0.0170982   0.0018305   0.3266456   0.7149045  -0.0000000   0.0000009
                           -0.0000000
 2222222222//00/0          -0.0000000   0.0252340  -0.5200792  -0.4387782  -0.0159051  -0.0048235   0.1750685   0.6553427
                            0.0593232
 2222222222/0//00           0.0000000  -0.0252331   0.5200802   0.4387783   0.0159045   0.0048220   0.1750682   0.6553419
                            0.0593230
 2222222222//0/00          -0.0112915   0.0125743   0.0020123   0.0078263  -0.4560137   0.6406176   0.0000001   0.0000005
                            0.0000000
 22222222220///00          -0.0000000   0.5422205  -0.2495039   0.3274311  -0.0082074  -0.0197016   0.4519316  -0.0751296
                           -0.5037415
 2222222222//000/          -0.0000000   0.5422204  -0.2495045   0.3274318  -0.0082075  -0.0197018  -0.4519310   0.0751289
                            0.5037414
 22222222220//0/0           0.0000000  -0.4109971  -0.3617400   0.4051344  -0.0011340   0.0034469   0.4782799  -0.1688895
                            0.4542765
 2222222222/0/00/          -0.0000000   0.4109972   0.3617408  -0.4051352   0.0011343  -0.0034466   0.4782783  -0.1688901
                            0.4542762
 22222202222//00/          -0.0163437  -0.0009565   0.0019502   0.0006119  -0.0798709  -0.0075810   0.0000000  -0.0000000
                           -0.0000000
 2222220222/2/0/0           0.0163437  -0.0022397   0.0017449  -0.0001868  -0.0333344  -0.0729564   0.0000000  -0.0000001
                           -0.0000000
 2222222222/00//0           0.0106319  -0.0008294   0.0016911   0.0005306  -0.0692567  -0.0065736   0.0000000  -0.0000001
                           -0.0000000
 2222220222/2//00           0.0000000   0.0025750  -0.0530745  -0.0447776  -0.0016230  -0.0004921  -0.0181902  -0.0680924
                           -0.0061639
 2222220222//20/0          -0.0000000  -0.0025751   0.0530744   0.0447776   0.0016231   0.0004922  -0.0181902  -0.0680924
                           -0.0061639
 2222220222//2/00          -0.0163437  -0.0012832  -0.0002054  -0.0007987   0.0465364  -0.0653754   0.0000000  -0.0000001
                           -0.0000000
 22222222220/0/0/          -0.0106320  -0.0019421   0.0015130  -0.0001619  -0.0289046  -0.0632612   0.0000000  -0.0000001
                            0.0000000
 22222222220/00//           0.0000000  -0.0022329   0.0460214   0.0388271   0.0014074   0.0004268  -0.0154918  -0.0579910
                           -0.0052495
 222222222200//0/          -0.0000000   0.0022329  -0.0460214  -0.0388271  -0.0014074  -0.0004267  -0.0154917  -0.0579909
                           -0.0052495
 222222222200/0//           0.0106319  -0.0011127  -0.0001781  -0.0006926   0.0403522  -0.0566876  -0.0000000  -0.0000001
                            0.0000000
 22222202222///00          -0.0000000  -0.0553340   0.0254621  -0.0334146   0.0008376   0.0020105  -0.0469573   0.0078062
                            0.0523406
 2222220222//200/          -0.0000000  -0.0553339   0.0254621  -0.0334146   0.0008376   0.0020106   0.0469572  -0.0078061
                           -0.0523405

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971332    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.003269    0.774131   -0.036026    0.586783    0.027036   -0.000000    0.000001   -0.000000
 3          -0.000000    0.014301   -0.356218    0.742520    0.516458   -0.021674   -0.000000    0.000001    0.000000
 4          -0.000000    0.009943    0.467475    0.626446   -0.578413    0.001904    0.000000    0.000000   -0.000000
 5          -0.000000   -0.868984   -0.011718    0.022707    0.001619    0.435710   -0.000000   -0.000000    0.000000
 6           0.000000    0.436101   -0.028128    0.006886   -0.004921    0.868668   -0.000000   -0.000001    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000001   -0.000000   -0.645353    0.249996    0.682977
 8          -0.000000    0.000000   -0.000001   -0.000000   -0.000000    0.000001    0.107284    0.935821   -0.241173
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.719337    0.084713    0.648701

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971332    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.972436   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.972436   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.972436   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.972436   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.972436   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.972335   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.972335    0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.972335


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97133244 (fixed)   0.97139306 (relaxed)   0.97133244 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018384   -0.00025519   -0.65594791
 Singles      0.01624818   -0.05524187   -0.06361988
 Pairs        0.04346634    0.00000000   -0.03077424
 Total        1.05989835   -0.05549706   -0.75034204
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.45175893
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.06767061
 One electron energy                -3106.03836523
 Two electron energy                  880.83626427
 Virial quotient                       -0.95294973
 Correlation energy                    -0.75034204
 !MRCI STATE 1.2 Energy             -2225.202100961226

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.24704521 (Davidson, fixed reference)
 Cluster corrected energies         -2225.24694594 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.24704521 (Davidson, rotated reference)

 Cluster corrected energies         -2225.24457152 (Pople, fixed reference)
 Cluster corrected energies         -2225.24447308 (Pople, relaxed reference)
 Cluster corrected energies         -2225.24457152 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.77413064 (fixed)   0.97247004 (relaxed)   0.97243583 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030388   -0.00078531   -0.63879287
 Singles      0.01811701   -0.05943730   -0.06879248
 Pairs        0.03907355    0.00000000   -0.02714858
 Total        1.05749444   -0.06022261   -0.73473394
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18816908
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.43882906
 One electron energy                -3097.75260054
 Two electron energy                  872.82969752
 Virial quotient                       -0.95308683
 Correlation energy                    -0.73473394
 !MRCI STATE 2.2 Energy             -2224.922903021163

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96514614 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96509147 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96514614 (Davidson, rotated reference)

 Cluster corrected energies         -2224.96274181 (Pople, fixed reference)
 Cluster corrected energies         -2224.96268781 (Pople, relaxed reference)
 Cluster corrected energies         -2224.96274181 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.74252018 (fixed)   0.97247001 (relaxed)   0.97243580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030388   -0.00078531   -0.63879254
 Singles      0.01811701   -0.05943729   -0.06879247
 Pairs        0.03907362   -0.00000031   -0.02714892
 Total        1.05749451   -0.06022291   -0.73473394
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18816908
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.43886341
 One electron energy                -3097.75262869
 Two electron energy                  872.82972567
 Virial quotient                       -0.95308682
 Correlation energy                    -0.73473394
 !MRCI STATE 3.2 Energy             -2224.922903019734

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96514619 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96509153 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96514619 (Davidson, rotated reference)

 Cluster corrected energies         -2224.96274186 (Pople, fixed reference)
 Cluster corrected energies         -2224.96268787 (Pople, relaxed reference)
 Cluster corrected energies         -2224.96274186 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.62644572 (fixed)   0.97247002 (relaxed)   0.97243581 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030388   -0.00078531   -0.63879315
 Singles      0.01811700   -0.05943728   -0.06879246
 Pairs        0.03907361    0.00000031   -0.02714833
 Total        1.05749449   -0.06022228   -0.73473393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18816908
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.43885734
 One electron energy                -3097.75262365
 Two electron energy                  872.82972064
 Virial quotient                       -0.95308682
 Correlation energy                    -0.73473393
 !MRCI STATE 4.2 Energy             -2224.922903014878

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96514616 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96509150 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96514616 (Davidson, rotated reference)

 Cluster corrected energies         -2224.96274184 (Pople, fixed reference)
 Cluster corrected energies         -2224.96268784 (Pople, relaxed reference)
 Cluster corrected energies         -2224.96274184 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86898402 (fixed)   0.97247010 (relaxed)   0.97243589 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030385   -0.00078526   -0.63879277
 Singles      0.01811695   -0.05943719   -0.06879238
 Pairs        0.03907352   -0.00000017   -0.02714868
 Total        1.05749431   -0.06022261   -0.73473383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18816908
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.43881324
 One electron energy                -3097.75259155
 Two electron energy                  872.82968864
 Virial quotient                       -0.95308684
 Correlation energy                    -0.73473383
 !MRCI STATE 5.2 Energy             -2224.922902908785

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96514593 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96509126 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96514593 (Davidson, rotated reference)

 Cluster corrected energies         -2224.96274160 (Pople, fixed reference)
 Cluster corrected energies         -2224.96268761 (Pople, relaxed reference)
 Cluster corrected energies         -2224.96274160 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.86866812 (fixed)   0.97247003 (relaxed)   0.97243582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030385   -0.00078526   -0.63879266
 Singles      0.01811696   -0.05943720   -0.06879237
 Pairs        0.03907365   -0.00000018   -0.02714879
 Total        1.05749446   -0.06022263   -0.73473382
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18816908
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.43887462
 One electron energy                -3097.75264085
 Two electron energy                  872.82973794
 Virial quotient                       -0.95308681
 Correlation energy                    -0.73473382
 !MRCI STATE 6.2 Energy             -2224.922902906751

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96514603 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96509137 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96514603 (Davidson, rotated reference)

 Cluster corrected energies         -2224.96274171 (Pople, fixed reference)
 Cluster corrected energies         -2224.96268771 (Pople, relaxed reference)
 Cluster corrected energies         -2224.96274171 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.68297698 (fixed)   0.97236660 (relaxed)   0.97233501 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030009   -0.00078691   -0.19079621
 Singles      0.01820847   -0.05955863   -0.06896277
 Pairs        0.03920519   -0.47395256   -0.47533939
 Total        1.05771375   -0.53429811   -0.73509837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18342155
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.44040689
 One electron energy                -3097.74712317
 Two electron energy                  872.82860324
 Virial quotient                       -0.95308431
 Correlation energy                    -0.73509837
 !MRCI STATE 7.2 Energy             -2224.918519920555

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96094521 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96089468 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96094521 (Davidson, rotated reference)

 Cluster corrected energies         -2224.95853777 (Pople, fixed reference)
 Cluster corrected energies         -2224.95848784 (Pople, relaxed reference)
 Cluster corrected energies         -2224.95853777 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.93582115 (fixed)   0.97236656 (relaxed)   0.97233496 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030009   -0.00078691   -0.79711763
 Singles      0.01820849   -0.05955864   -0.06896277
 Pairs        0.03920527    0.16736203    0.13098203
 Total        1.05771386    0.10701648   -0.73509837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18342155
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.44044290
 One electron energy                -3097.74715211
 Two electron energy                  872.82863219
 Virial quotient                       -0.95308429
 Correlation energy                    -0.73509837
 !MRCI STATE 8.2 Energy             -2224.918519916988

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96094528 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96089475 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96094528 (Davidson, rotated reference)

 Cluster corrected energies         -2224.95853784 (Pople, fixed reference)
 Cluster corrected energies         -2224.95848791 (Pople, relaxed reference)
 Cluster corrected energies         -2224.95853784 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.71933698 (fixed)   0.97236662 (relaxed)   0.97233503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030009   -0.00078691   -0.21328395
 Singles      0.01820847   -0.05955863   -0.06896276
 Pairs        0.03920516   -0.45016697   -0.45285165
 Total        1.05771372   -0.51051251   -0.73509837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.18342155
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.44039754
 One electron energy                -3097.74711571
 Two electron energy                  872.82859579
 Virial quotient                       -0.95308431
 Correlation energy                    -0.73509837
 !MRCI STATE 9.2 Energy             -2224.918519915288

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2224.96094518 (Davidson, fixed reference)
 Cluster corrected energies         -2224.96089465 (Davidson, relaxed reference)
 Cluster corrected energies         -2224.96094518 (Davidson, rotated reference)

 Cluster corrected energies         -2224.95853774 (Pople, fixed reference)
 Cluster corrected energies         -2224.95848781 (Pople, relaxed reference)
 Cluster corrected energies         -2224.95853774 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       6      654.91       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3102.41   3096.20      4.60      0.15      1.22
 REAL TIME  *      3181.87 SEC
 DISK USED  *       702.06 MB (local),        8.29 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2225.24694594  AU                              
 SETTING HLSDIAG(2)     =     -2224.96509147  AU                              
 SETTING HLSDIAG(3)     =     -2224.96509153  AU                              
 SETTING HLSDIAG(4)     =     -2224.96509150  AU                              
 SETTING HLSDIAG(5)     =     -2224.96509126  AU                              
 SETTING HLSDIAG(6)     =     -2224.96509137  AU                              
 SETTING HLSDIAG(7)     =     -2224.96089468  AU                              
 SETTING HLSDIAG(8)     =     -2224.96089475  AU                              
 SETTING HLSDIAG(9)     =     -2224.96089465  AU                              


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


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.38525033
     2     -2224.38525033
     3     -2224.38525033
     4     -2224.38525033
     5     -2224.38525033
     6     -2224.36131495
     7     -2224.36131495
     8     -2224.36131495

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1259D-06

 Number of blocks in overlap matrix:   760   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1848
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       4171995
 Total number of contracted configurations:     10143421
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  27648478 words, CPU-Time:     67.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1521866 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.38525033     0.00000000    -0.91593514  0.54D-01  0.61D-01    79.08
    1     2     2     1.00000000     0.00000000 -2224.38525033    -0.00000000    -0.91608664  0.53D-01  0.61D-01    79.08
    1     3     3     1.00000000     0.00000000 -2224.38525033    -0.00000000    -0.91591681  0.53D-01  0.61D-01    79.08
    1     4     4     1.00000000     0.00000000 -2224.38525033     0.00000000    -0.91576091  0.53D-01  0.61D-01    79.08
    1     5     5     1.00000000     0.00000000 -2224.38525033     0.00000000    -0.91579374  0.53D-01  0.61D-01    79.08
    1     6     6     1.00000000     0.00000000 -2224.36131495    -0.00000000    -0.89680158  0.35D-01  0.63D-01    79.08
    1     7     7     1.00000000     0.00000000 -2224.36131495     0.00000000    -0.89718010  0.35D-01  0.63D-01    79.08
    1     8     8     1.00000000     0.00000000 -2224.36131495    -0.00000000    -0.89741455  0.35D-01  0.63D-01    79.08
    2     1     1     1.07402270    -0.74004531 -2225.12529565    -0.74004531    -0.01985272  0.32D-02  0.12D-02   445.44
    2     2     2     1.07404883    -0.73997587 -2225.12522620    -0.73997587    -0.01993158  0.32D-02  0.12D-02   445.44
    2     3     3     1.07415212    -0.73985151 -2225.12510184    -0.73985151    -0.02004395  0.33D-02  0.12D-02   445.44
    2     4     4     1.07441192    -0.73980984 -2225.12506018    -0.73980984    -0.02007415  0.34D-02  0.12D-02   445.44
    2     5     5     1.07464256    -0.73948010 -2225.12473044    -0.73948010    -0.02039643  0.35D-02  0.12D-02   445.44
    2     6     6     1.06589132    -0.73381053 -2225.09512547    -0.73381053    -0.01913235  0.31D-02  0.12D-02   445.44
    2     7     7     1.06573543    -0.73371612 -2225.09503107    -0.73371612    -0.01916297  0.31D-02  0.12D-02   445.44
    2     8     8     1.06560808    -0.73368504 -2225.09499999    -0.73368504    -0.01916923  0.31D-02  0.12D-02   445.44
    3     1     1     1.06458845    -0.75886277 -2225.14411310    -0.01881746    -0.00057723  0.66D-04  0.66D-04   811.35
    3     2     2     1.06458173    -0.75885506 -2225.14410539    -0.01887919    -0.00058619  0.67D-04  0.67D-04   811.35
    3     3     3     1.06460538    -0.75885099 -2225.14410133    -0.01899948    -0.00058137  0.66D-04  0.68D-04   811.35
    3     4     4     1.06460101    -0.75884446 -2225.14409480    -0.01903462    -0.00058710  0.67D-04  0.68D-04   811.35
    3     5     5     1.06452349    -0.75883147 -2225.14408180    -0.01935136    -0.00059934  0.68D-04  0.70D-04   811.35
    3     6     6     1.06033341    -0.75213662 -2225.11345157    -0.01832609    -0.00063886  0.49D-04  0.91D-04   811.35
    3     7     7     1.06022838    -0.75209803 -2225.11341298    -0.01838191    -0.00065842  0.49D-04  0.95D-04   811.35
    3     8     8     1.06018534    -0.75208891 -2225.11340386    -0.01840387    -0.00066415  0.49D-04  0.96D-04   811.35
    4     1     1     1.06448051    -0.75950316 -2225.14475350    -0.00064039    -0.00004338  0.27D-05  0.69D-05  1177.90
    4     2     2     1.06446943    -0.75950251 -2225.14475285    -0.00064745    -0.00004416  0.29D-05  0.69D-05  1177.90
    4     3     3     1.06446769    -0.75949970 -2225.14475004    -0.00064871    -0.00004545  0.28D-05  0.73D-05  1177.90
    4     4     4     1.06446413    -0.75949970 -2225.14475003    -0.00065524    -0.00004552  0.28D-05  0.73D-05  1177.90
    4     5     5     1.06443998    -0.75949808 -2225.14474841    -0.00066661    -0.00004687  0.30D-05  0.74D-05  1177.90
    4     6     6     1.06127587    -0.75287311 -2225.11418806    -0.00073649    -0.00005832  0.42D-05  0.91D-05  1177.90
    4     7     7     1.06122969    -0.75286543 -2225.11418038    -0.00076740    -0.00006328  0.45D-05  0.98D-05  1177.90
    4     8     8     1.06121942    -0.75286418 -2225.11417913    -0.00077527    -0.00006409  0.46D-05  0.99D-05  1177.90
    5     1     1     1.06485931    -0.75955448 -2225.14480481    -0.00005131    -0.00000517  0.38D-06  0.68D-06  1542.44
    5     2     2     1.06485705    -0.75955428 -2225.14480462    -0.00005177    -0.00000533  0.40D-06  0.70D-06  1542.44
    5     3     3     1.06485410    -0.75955400 -2225.14480433    -0.00005430    -0.00000554  0.42D-06  0.71D-06  1542.44
    5     4     4     1.06485380    -0.75955399 -2225.14480432    -0.00005429    -0.00000552  0.42D-06  0.71D-06  1542.44
    5     5     5     1.06485232    -0.75955359 -2225.14480393    -0.00005551    -0.00000583  0.45D-06  0.76D-06  1542.44
    5     6     6     1.06198721    -0.75294286 -2225.11425781    -0.00006975    -0.00000707  0.59D-06  0.88D-06  1542.44
    5     7     7     1.06198306    -0.75294184 -2225.11425679    -0.00007641    -0.00000784  0.66D-06  0.95D-06  1542.44
    5     8     8     1.06198261    -0.75294165 -2225.11425660    -0.00007747    -0.00000798  0.67D-06  0.97D-06  1542.44
    6     1     1     1.06491336    -0.75956050 -2225.14481084    -0.00000603    -0.00000053  0.40D-07  0.71D-07  1907.60
    6     2     2     1.06491303    -0.75956049 -2225.14481082    -0.00000620    -0.00000056  0.43D-07  0.74D-07  1907.60
    6     3     3     1.06491046    -0.75956045 -2225.14481078    -0.00000645    -0.00000058  0.44D-07  0.77D-07  1907.60
    6     4     4     1.06491083    -0.75956042 -2225.14481075    -0.00000643    -0.00000057  0.43D-07  0.76D-07  1907.60
    6     5     5     1.06491132    -0.75956038 -2225.14481071    -0.00000679    -0.00000061  0.47D-07  0.81D-07  1907.60
    6     6     6     1.06206930    -0.75295094 -2225.11426589    -0.00000809    -0.00000071  0.37D-07  0.98D-07  1907.60
    6     7     7     1.06206613    -0.75295081 -2225.11426575    -0.00000897    -0.00000080  0.40D-07  0.11D-06  1907.60
    6     8     8     1.06206593    -0.75295078 -2225.11426572    -0.00000913    -0.00000082  0.41D-07  0.11D-06  1907.60
    7     1     1     1.06493208    -0.75956113 -2225.14481146    -0.00000062    -0.00000006  0.40D-08  0.92D-08  2272.50
    7     2     2     1.06493213    -0.75956112 -2225.14481145    -0.00000063    -0.00000006  0.38D-08  0.88D-08  2272.50
    7     3     3     1.06493165    -0.75956111 -2225.14481145    -0.00000066    -0.00000006  0.40D-08  0.95D-08  2272.50
    7     4     4     1.06493133    -0.75956108 -2225.14481141    -0.00000066    -0.00000007  0.44D-08  0.10D-07  2272.50
    7     5     5     1.06493149    -0.75956108 -2225.14481141    -0.00000070    -0.00000006  0.41D-08  0.96D-08  2272.50
    7     6     6     1.06208794    -0.75295176 -2225.11426671    -0.00000082    -0.00000008  0.45D-08  0.13D-07  2272.50
    7     7     7     1.06208624    -0.75295174 -2225.11426669    -0.00000093    -0.00000010  0.53D-08  0.15D-07  2272.50
    7     8     8     1.06208594    -0.75295173 -2225.11426668    -0.00000095    -0.00000010  0.55D-08  0.15D-07  2272.50
    8     1     1     1.06493689    -0.75956120 -2225.14481153    -0.00000007    -0.00000001  0.77D-09  0.12D-08  2637.50
    8     2     2     1.06493686    -0.75956119 -2225.14481152    -0.00000007    -0.00000001  0.77D-09  0.13D-08  2637.50
    8     3     3     1.06493700    -0.75956118 -2225.14481152    -0.00000007    -0.00000001  0.70D-09  0.11D-08  2637.50
    8     4     4     1.06493665    -0.75956116 -2225.14481149    -0.00000008    -0.00000001  0.87D-09  0.13D-08  2637.50
    8     5     5     1.06493679    -0.75956115 -2225.14481148    -0.00000007    -0.00000001  0.78D-09  0.13D-08  2637.50
    8     6     6     1.06209865    -0.75295186 -2225.11426681    -0.00000010    -0.00000001  0.12D-08  0.18D-08  2637.50
    8     7     7     1.06209826    -0.75295186 -2225.11426680    -0.00000012    -0.00000002  0.14D-08  0.20D-08  2637.50
    8     8     8     1.06209812    -0.75295185 -2225.11426680    -0.00000012    -0.00000002  0.14D-08  0.21D-08  2637.50


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.9%  13.2%
 P   0.4%  54.9%  21.9%

 Initialization:   2.6%
 Other:            4.9%

 Total CPU:     2637.5 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.0113897  -0.0036596  -0.0087816   0.9650033   0.0551327   0.0000000   0.0000000  -0.0000000
 2222222222//\000           0.9556694  -0.1353134  -0.0448710  -0.0106357  -0.0273992  -0.0000000   0.0000000  -0.0000000
 222222222220/000          -0.0196434   0.0036048  -0.0221669   0.0389958  -0.6817881  -0.2215967   0.6375821  -0.0173244
 222222222202/000           0.0196434  -0.0036048   0.0221669  -0.0389958   0.6817875  -0.2215969   0.6375825  -0.0173245
 2222222222/20000          -0.1006691  -0.6487595  -0.1902120  -0.0033153   0.0054650  -0.0526372  -0.0000033   0.6731617
 2222222222/02000           0.1006693   0.6487607   0.1902124   0.0033153  -0.0054650  -0.0526371  -0.0000033   0.6731605
 22222222220/2000           0.0029097  -0.1928245   0.6553840   0.0064578  -0.0220424   0.6356416   0.2222729   0.0497044
 22222222222/0000          -0.0029097   0.1928245  -0.6553838  -0.0064578   0.0220424   0.6356419   0.2222730   0.0497045
 2222220222/22000          -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000   0.0113217   0.0000007  -0.1447899
 222222022222/000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0476632  -0.1371373   0.0037263
 22222202222/2000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1367199  -0.0478086  -0.0106909
 2222222222//00\0          -0.0048836  -0.0314724  -0.0092275  -0.0001608   0.0002651  -0.0043100  -0.0000003   0.0551193
 2222222222/0/\00           0.0048836   0.0314725   0.0092275   0.0001608  -0.0002651  -0.0043100  -0.0000003   0.0551192
 2222222222/0/00\           0.0009529  -0.0001749   0.0010754  -0.0018918   0.0330747   0.0181447  -0.0522063   0.0014186
 22222222220//0\0          -0.0009529   0.0001749  -0.0010754   0.0018918  -0.0330747   0.0181446  -0.0522061   0.0014186
 2222222222//000\           0.0001412  -0.0093543   0.0317941   0.0003133  -0.0010693  -0.0520476  -0.0182001  -0.0040699
 22222222220//\00           0.0001412  -0.0093543   0.0317940   0.0003133  -0.0010693   0.0520475   0.0182001   0.0040699

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.744847    0.142679    0.027841    0.004124    0.602189    0.000000   -0.000000    0.000000
 2          -0.104192    0.919490   -0.005109   -0.273291   -0.086875    0.000001    0.000000   -0.000000
 3          -0.029853    0.269588    0.031417    0.928878   -0.034763    0.000000   -0.000000    0.000000
 4          -0.607390    0.004699   -0.055269    0.009153    0.752659    0.000000    0.000000   -0.000000
 5          -0.055781   -0.007746    0.966300   -0.031241    0.026370   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.075625   -0.318373    0.913240
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000005    0.916028    0.319344
 8          -0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.967144   -0.024890    0.071411

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968802    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.968802    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.968802    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.968803    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.968802    0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970096   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970097   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970097


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.74484714 (fixed)   0.96892836 (relaxed)   0.96880242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047374   -0.00071596   -0.65418587
 Singles      0.02034364   -0.06292432   -0.07356036
 Pairs        0.04462401   -0.00000000   -0.03181497
 Total        1.06544140   -0.06364028   -0.75956120
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38525033
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.99623258
 One electron energy                -3105.56896366
 Two electron energy                  880.42415213
 Virial quotient                       -0.95295435
 Correlation energy                    -0.75956120
 !MRCI STATE 1.2 Energy             -2225.144811531105

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19451828 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19430792 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19451828 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19253701 (Pople, fixed reference)
 Cluster corrected energies         -2225.19232383 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19253701 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.91948954 (fixed)   0.96892837 (relaxed)   0.96880244 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047375   -0.00071596   -0.65418587
 Singles      0.02034364   -0.06292435   -0.07356035
 Pairs        0.04462398    0.00000001   -0.03181497
 Total        1.06544137   -0.06364030   -0.75956119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38525033
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.99621665
 One electron energy                -3105.56895141
 Two electron energy                  880.42413989
 Virial quotient                       -0.95295435
 Correlation energy                    -0.75956119
 !MRCI STATE 2.2 Energy             -2225.144811520974

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19451824 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19430789 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19451824 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19253697 (Pople, fixed reference)
 Cluster corrected energies         -2225.19232379 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19253697 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92887753 (fixed)   0.96892831 (relaxed)   0.96880237 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047374   -0.00071596   -0.65418576
 Singles      0.02034359   -0.06292428   -0.07356036
 Pairs        0.04462417   -0.00000008   -0.03181506
 Total        1.06544151   -0.06364031   -0.75956118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38525033
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.99630261
 One electron energy                -3105.56902539
 Two electron energy                  880.42421388
 Virial quotient                       -0.95295432
 Correlation energy                    -0.75956118
 !MRCI STATE 3.2 Energy             -2225.144811515636

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19451834 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19430799 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19451834 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19253707 (Pople, fixed reference)
 Cluster corrected energies         -2225.19232390 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19253707 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.75265901 (fixed)   0.96892847 (relaxed)   0.96880253 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047375   -0.00071596   -0.65418588
 Singles      0.02034371   -0.06292443   -0.07356035
 Pairs        0.04462371    0.00000000   -0.03181493
 Total        1.06544117   -0.06364039   -0.75956116
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38525033
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.99612535
 One electron energy                -3105.56886897
 Two electron energy                  880.42405748
 Virial quotient                       -0.95295439
 Correlation energy                    -0.75956116
 !MRCI STATE 4.2 Energy             -2225.144811490808

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19451806 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19430770 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19451806 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19253679 (Pople, fixed reference)
 Cluster corrected energies         -2225.19232360 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19253679 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96629981 (fixed)   0.96892840 (relaxed)   0.96880247 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047375   -0.00071596   -0.65418587
 Singles      0.02034362   -0.06292434   -0.07356033
 Pairs        0.04462394   -0.00000000   -0.03181495
 Total        1.06544130   -0.06364030   -0.75956115
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38525033
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.99621605
 One electron energy                -3105.56895120
 Two electron energy                  880.42413971
 Virial quotient                       -0.95295435
 Correlation energy                    -0.75956115
 !MRCI STATE 5.2 Energy             -2225.144811483256

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19451816 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19430780 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19451816 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19253688 (Pople, fixed reference)
 Cluster corrected energies         -2225.19232370 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19253688 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.91323967 (fixed)   0.97023844 (relaxed)   0.97009639 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047298   -0.00062982   -0.03979960
 Singles      0.01313915   -0.04756813   -0.05407268
 Pairs        0.04898887   -0.66344877   -0.65907959
 Total        1.06260100   -0.71164672   -0.75295186
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.36131495
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.94681535
 One electron energy                -3105.25927466
 Two electron energy                  880.14500785
 Virial quotient                       -0.95296143
 Correlation energy                    -0.75295186
 !MRCI STATE 6.2 Energy             -2225.114266808472

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16140235 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16116809 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16140235 (Davidson, rotated reference)

 Cluster corrected energies         -2225.15941430 (Pople, fixed reference)
 Cluster corrected energies         -2225.15917805 (Pople, relaxed reference)
 Cluster corrected energies         -2225.15941430 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.91602766 (fixed)   0.97023862 (relaxed)   0.97009657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047299   -0.00062982   -0.44583365
 Singles      0.01313930   -0.04756834   -0.05407268
 Pairs        0.04898833   -0.23199653   -0.25304552
 Total        1.06260062   -0.28019470   -0.75295186
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.36131495
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.94666522
 One electron energy                -3105.25914651
 Two electron energy                  880.14487971
 Virial quotient                       -0.95296150
 Correlation energy                    -0.75295186
 !MRCI STATE 7.2 Energy             -2225.114266802082

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16140205 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16116779 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16140205 (Davidson, rotated reference)

 Cluster corrected energies         -2225.15941400 (Pople, fixed reference)
 Cluster corrected energies         -2225.15917774 (Pople, relaxed reference)
 Cluster corrected energies         -2225.15941400 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96714443 (fixed)   0.97023868 (relaxed)   0.97009663 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047299   -0.00062982   -0.61534017
 Singles      0.01313934   -0.04756841   -0.05407266
 Pairs        0.04898816   -0.05187882   -0.08353901
 Total        1.06260049   -0.10007705   -0.75295185
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.36131495
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.94660207
 One electron energy                -3105.25909134
 Two electron energy                  880.14482454
 Virial quotient                       -0.95296152
 Correlation energy                    -0.75295185
 !MRCI STATE 8.2 Energy             -2225.114266796106

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.16140195 (Davidson, fixed reference)
 Cluster corrected energies         -2225.16116768 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.16140195 (Davidson, rotated reference)

 Cluster corrected energies         -2225.15941390 (Pople, fixed reference)
 Cluster corrected energies         -2225.15917764 (Pople, relaxed reference)
 Cluster corrected energies         -2225.15941390 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       47.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6239.60   3137.19   3096.20      4.60      0.15      1.22
 REAL TIME  *      6388.30 SEC
 DISK USED  *         1.30 GB (local),       15.67 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =     -2225.19451828  AU                              
 SETTING HLSDIAG(11)    =     -2225.19451824  AU                              
 SETTING HLSDIAG(12)    =     -2225.19451834  AU                              
 SETTING HLSDIAG(13)    =     -2225.19451806  AU                              
 SETTING HLSDIAG(14)    =     -2225.19451816  AU                              
 SETTING HLSDIAG(15)    =     -2225.16140235  AU                              
 SETTING HLSDIAG(16)    =     -2225.16140205  AU                              
 SETTING HLSDIAG(17)    =     -2225.16140195  AU                              


         HLSDIAG
    -2225.246946
    -2224.965091
    -2224.965092
    -2224.965092
    -2224.965091
    -2224.965091
    -2224.960895
    -2224.960895
    -2224.960895
    -2225.194518
    -2225.194518
    -2225.194518
    -2225.194518
    -2225.194518
    -2225.161402
    -2225.161402
    -2225.161402
                                                  

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       8.00 sec

       14212507. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3485 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      8.00 sec, REAL time:      8.23 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.15 sec, REAL time:      0.25 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.12 sec

 FILE SIZES: FILE 1:   278.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.15       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6248.53      8.84   3137.19   3096.20      4.60      0.15      1.22
 REAL TIME  *      6397.64 SEC
 DISK USED  *         1.30 GB (local),       16.42 GB (total)
 SF USED    *         6.81 GB
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
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:  -2225.202101  -2224.922903  -2224.922903  -2224.922903  -2224.922903  -2224.922903  -2224.918520  -2224.918520
                     -2224.918520
 Replaced energies:  -2225.246946  -2224.965091  -2224.965092  -2224.965092  -2224.965091  -2224.965091  -2224.960895  -2224.960895
                     -2224.960895

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:  -2225.144812  -2225.144812  -2225.144812  -2225.144811  -2225.144811  -2225.114267  -2225.114267  -2225.114267
 Replaced energies:  -2225.194518  -2225.194518  -2225.194518  -2225.194518  -2225.194518  -2225.161402  -2225.161402  -2225.161402



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2225.24694594

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     -95.22    -356.45     -32.27       0.00

    2   2.2  1.5  1.5       0.00   61859.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00    -291.43     312.25      -1.17     -37.41    -349.88     101.47     -30.56      -0.00

    3   3.2  1.5  1.5       0.00       0.00   61859.89       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00     291.43       0.00      26.73     -64.25     642.34     -37.47     -21.69     232.32       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   61859.90       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -312.25     -26.73       0.00     -49.73     556.44      20.07      16.52    -278.67      -0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   61859.95       0.00       0.00       0.00       0.00      -0.00
                           -0.00       1.17      64.25      49.73       0.00      20.39     110.80     403.67      40.03       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   61859.93       0.00       0.00       0.00      -0.00
                           -0.00      37.41    -642.34    -556.44     -20.39      -0.00      18.93      35.58       9.17       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   62780.99       0.00       0.00    -150.19
                           95.22     349.88      37.47     -20.07    -110.80     -18.93      -0.00     -37.03     409.04     141.92

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62780.98       0.00      53.04
                          356.45    -101.47      21.69     -16.52    -403.67     -35.58      37.03       0.00    -109.27     -23.59

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62781.00    -142.65
                           32.27      30.56    -232.32     278.67     -40.03      -9.17    -409.04     109.27      -0.00    -158.19

   10   1.2  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -150.19      53.04    -142.65       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00    -141.92      23.59     158.19      -0.00

   11   2.2  1.5  0.5       0.00      -0.00    -160.62    -125.13     238.06     171.49     -45.70    -161.97      -6.26       0.00
                           -0.00       0.00     125.10      93.93    -353.82     164.41     -42.79    -120.00     -11.29       0.00

   12   3.2  1.5  0.5       0.00     160.62      -0.00     140.24     213.35     147.00     127.41      56.53    -112.19       0.00
                            0.00    -125.10      -0.00     191.03     167.26     -73.07      87.98    -148.59      93.93       0.00

   13   4.2  1.5  0.5      -0.00     125.13    -140.24       0.00    -243.78    -175.55      65.92    -113.37    -107.92       0.00
                           -0.00     -93.93    -191.03      -0.00    -219.41      98.57     127.53      87.25     102.17       0.00

   14   5.2  1.5  0.5       0.00    -238.06    -213.35     243.78      -0.00       2.36     -95.42      36.99     -97.80       0.00
                            0.00     353.82    -167.26     219.41       0.00     -15.42     -63.87       9.62      78.22      -0.00

   15   6.2  1.5  0.5       0.00    -171.49    -147.00     175.55      -2.36      -0.00     142.14     -43.57     132.00       0.00
                            0.00    -164.41      73.07     -98.57      15.42      -0.00    -145.85      25.13     165.14      -0.00

   16   7.2  1.5  0.5     150.19      45.70    -127.41     -65.92      95.42    -142.14      -0.00    -163.70     -60.86       0.00
                          141.92      42.79     -87.98    -127.53      63.87     145.85       0.00     181.53     -27.07      31.74

   17   8.2  1.5  0.5     -53.04     161.97     -56.53     113.37     -36.99      43.57     163.70       0.00    -172.35       0.00
                          -23.59     120.00     148.59     -87.25      -9.62     -25.13    -181.53       0.00    -162.86     118.82

   18   9.2  1.5  0.5     142.65       6.26     112.19     107.92      97.80    -132.00      60.86     172.35       0.00       0.00
                         -158.19      11.29     -93.93    -102.17     -78.22    -165.14      27.07     162.86       0.00      10.76

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   22   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     173.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     163.87

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -61.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -27.24

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     164.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -182.66

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.2  0.5  0.5      -0.00     -18.95       6.59      -7.68      -6.41      -4.12     111.71     -37.73      81.09       0.00
                           -0.00     208.48     -82.03     103.01      -1.92      -7.75     -34.18      -0.31      63.32       0.00

   38   2.2  0.5  0.5       0.00    -105.54      19.39     -91.60       1.92       4.49      73.22      25.72     -97.65       0.00
                           -0.00      53.86      86.54     -96.06     -72.47      33.77      89.41     -29.69      71.70       0.00

   39   3.2  0.5  0.5      -0.00     -35.30     120.52      67.47      -3.86      -3.25     -12.37    -116.90     -40.43       0.00
                            0.00      13.31      17.97     -35.48     248.69    -113.52      24.73     -12.71      21.10       0.00

   40   4.2  0.5  0.5       0.00    -171.97    -150.31     169.78      12.81      10.89      -1.01      -0.81      -1.60       0.00
                            0.00     111.24     -44.60      71.91       0.96      -5.10      85.15      -7.10     -91.38       0.00

   41   5.2  0.5  0.5      -0.00     -15.27      -5.00       8.13    -231.73    -164.74      -2.49       4.98      -1.63       0.00
                           -0.00       5.50    -109.45     -90.29     -11.70       2.79     -26.53    -120.11     -18.22      -0.00

   42   6.2  0.5  0.5    -318.65      -3.82     -79.47     -74.47      22.84     -35.99      39.71     121.29       3.29       0.00
                         -914.05      -0.52     -36.29     -18.69      51.01     113.38     -18.81     -40.08     -10.89     -87.40

   43   7.2  0.5  0.5     916.84       3.41     -28.58     -23.13     -73.57     101.84      11.44      42.82       3.88       0.00
                         -319.63      -2.80      81.95      70.04      20.69      40.49      32.81     122.83      11.12      -0.01

   44   8.2  0.5  0.5     -24.91      91.51     -48.46      49.62       0.40      -6.15     -86.87      24.44     100.55       0.00
                          -71.47      69.55      58.41     -70.06       4.18       8.28      93.75     -36.76      89.59    1117.75

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -183.98
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -527.73

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     529.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -184.54

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -14.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -41.27


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00       0.00      -0.00       0.00       0.00     150.19     -53.04     142.65       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -141.92      23.59     158.19       0.00       0.00

    2   2.2  1.5  1.5      -0.00     160.62     125.13    -238.06    -171.49      45.70     161.97       6.26       0.00       0.00
                           -0.00     125.10      93.93    -353.82     164.41     -42.79    -120.00     -11.29       0.00       0.00

    3   3.2  1.5  1.5    -160.62      -0.00    -140.24    -213.35    -147.00    -127.41     -56.53     112.19       0.00       0.00
                         -125.10       0.00     191.03     167.26     -73.07      87.98    -148.59      93.93       0.00       0.00

    4   4.2  1.5  1.5    -125.13     140.24       0.00     243.78     175.55     -65.92     113.37     107.92       0.00       0.00
                          -93.93    -191.03       0.00    -219.41      98.57     127.53      87.25     102.17       0.00       0.00

    5   5.2  1.5  1.5     238.06     213.35    -243.78      -0.00      -2.36      95.42     -36.99      97.80       0.00       0.00
                          353.82    -167.26     219.41      -0.00     -15.42     -63.87       9.62      78.22       0.00       0.00

    6   6.2  1.5  1.5     171.49     147.00    -175.55       2.36      -0.00    -142.14      43.57    -132.00       0.00       0.00
                         -164.41      73.07     -98.57      15.42       0.00    -145.85      25.13     165.14       0.00       0.00

    7   7.2  1.5  1.5     -45.70     127.41      65.92     -95.42     142.14      -0.00     163.70      60.86       0.00       0.00
                           42.79     -87.98    -127.53      63.87     145.85      -0.00     181.53     -27.07       0.00       0.00

    8   8.2  1.5  1.5    -161.97      56.53    -113.37      36.99     -43.57    -163.70       0.00     172.35       0.00       0.00
                          120.00     148.59     -87.25      -9.62     -25.13    -181.53      -0.00    -162.86       0.00       0.00

    9   9.2  1.5  1.5      -6.26    -112.19    -107.92     -97.80     132.00     -60.86    -172.35       0.00       0.00       0.00
                           11.29     -93.93    -102.17     -78.22    -165.14      27.07     162.86      -0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -31.74    -118.82     -10.76       0.00       0.00

   11   2.2  1.5  0.5   61859.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00     -97.14     104.08      -0.39     -12.47    -116.63      33.82     -10.19      -0.00      -0.00

   12   3.2  1.5  0.5       0.00   61859.89       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -185.47
                           97.14       0.00       8.91     -21.42     214.11     -12.49      -7.23      77.44       0.00    -144.45

   13   4.2  1.5  0.5       0.00       0.00   61859.90       0.00       0.00       0.00       0.00       0.00       0.00    -144.49
                         -104.08      -8.91       0.00     -16.58     185.48       6.69       5.51     -92.89      -0.00    -108.47

   14   5.2  1.5  0.5       0.00       0.00       0.00   61859.95       0.00       0.00       0.00       0.00      -0.00     274.89
                            0.39      21.42      16.58       0.00       6.80      36.93     134.56      13.34       0.00     408.56

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00   61859.93       0.00       0.00       0.00      -0.00     198.02
                           12.47    -214.11    -185.48      -6.80      -0.00       6.31      11.86       3.06       0.00    -189.85

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   62780.99       0.00       0.00    -173.43     -52.77
                          116.63      12.49      -6.69     -36.93      -6.31      -0.00     -12.34     136.35     163.87      49.41

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   62780.98       0.00      61.24    -187.03
                          -33.82       7.23      -5.51    -134.56     -11.86      12.34       0.00     -36.42     -27.24     138.57

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62781.00    -164.72      -7.23
                           10.19     -77.44      92.89     -13.34      -3.06    -136.35      36.42      -0.00    -182.66      13.04

   19   1.2  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00    -173.43      61.24    -164.72       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -163.87      27.24     182.66       0.00       0.00

   20   2.2  1.5 -0.5      -0.00    -185.47    -144.49     274.89     198.02     -52.77    -187.03      -7.23       0.00   61859.91
                            0.00     144.45     108.47    -408.56     189.85     -49.41    -138.57     -13.04      -0.00      -0.00

   21   3.2  1.5 -0.5     185.47      -0.00     161.93     246.36     169.75     147.12      65.28    -129.54       0.00       0.00
                         -144.45      -0.00     220.58     193.14     -84.38     101.59    -171.58     108.46      -0.00     -97.14

   22   4.2  1.5 -0.5     144.49    -161.93       0.00    -281.50    -202.71      76.12    -130.91    -124.61       0.00       0.00
                         -108.47    -220.58      -0.00    -253.35     113.81     147.26     100.75     117.98      -0.00     104.08

   23   5.2  1.5 -0.5    -274.89    -246.36     281.50      -0.00       2.73    -110.19      42.71    -112.92       0.00       0.00
                          408.56    -193.14     253.35       0.00     -17.81     -73.75      11.10      90.32       0.00      -0.39

   24   6.2  1.5 -0.5    -198.02    -169.75     202.71      -2.73      -0.00     164.13     -50.31     152.42       0.00       0.00
                         -189.85      84.38    -113.81      17.81      -0.00    -168.42      29.01     190.69       0.00     -12.47

   25   7.2  1.5 -0.5      52.77    -147.12     -76.12     110.19    -164.13      -0.00    -189.03     -70.28       0.00       0.00
                           49.41    -101.59    -147.26      73.75     168.42       0.00     209.61     -31.26     -31.74    -116.63

   26   8.2  1.5 -0.5     187.03     -65.28     130.91     -42.71      50.31     189.03       0.00    -199.02       0.00       0.00
                          138.57     171.58    -100.75     -11.10     -29.01    -209.61       0.00    -188.05    -118.82      33.82

   27   9.2  1.5 -0.5       7.23     129.54     124.61     112.92    -152.42      70.28     199.02       0.00       0.00       0.00
                           13.04    -108.46    -117.98     -90.32    -190.69      31.26     188.05       0.00     -10.76     -10.19

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     160.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -125.10

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     125.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -93.93

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -238.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     353.82

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -171.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -164.41

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     150.19      45.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     141.92      42.79

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -53.04     161.97
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -23.59     120.00

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     142.65       6.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -158.19      11.29

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -10.94
                           14.94    -216.39    -177.30     -11.20      46.13      24.67      79.88       4.64       0.00    -120.37

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -60.93
                           33.79      51.52      -0.52     -28.67     311.01     -32.07      -1.56     -27.52       0.00     -31.10

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -20.38
                          -89.10     -77.83     104.66      -8.75      91.89      98.45     -39.61      87.94      -0.00      -7.69

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -99.29
                          -14.58     130.47     104.30       3.87       3.05      32.13     137.62      19.37      -0.00     -64.22

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -8.82
                          133.20     -43.96      87.01      -1.31      -7.27      93.29      -9.03    -108.52       0.00      -3.18

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -183.98      -2.21
                         -110.24     -50.12      53.48     -11.57       0.76      69.20     -30.79     135.91     527.73       0.30

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     529.34       1.97
                           73.42     -69.13      86.26      -1.58      -3.40     133.90     -29.00     -74.75     184.54       1.62

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -14.38      52.83
                           -6.79      -7.66       3.01     152.11      14.58       5.41      -2.41      10.63      41.27     -40.15

   45   1.2  0.5 -0.5     -10.94       3.80      -4.43      -3.70      -2.38      64.49     -21.78      46.82       0.00       0.00
                          120.37     -47.36      59.48      -1.11      -4.47     -19.74      -0.18      36.56       0.00      14.94

   46   2.2  0.5 -0.5     -60.93      11.20     -52.89       1.11       2.60      42.28      14.85     -56.38       0.00       0.00
                           31.10      49.97     -55.46     -41.84      19.50      51.62     -17.14      41.40       0.00      33.79

   47   3.2  0.5 -0.5     -20.38      69.59      38.95      -2.23      -1.88      -7.14     -67.49     -23.34       0.00       0.00
                            7.69      10.38     -20.49     143.58     -65.54      14.28      -7.34      12.18       0.00     -89.10

   48   4.2  0.5 -0.5     -99.29     -86.78      98.02       7.40       6.29      -0.58      -0.46      -0.93       0.00       0.00
                           64.22     -25.75      41.52       0.55      -2.95      49.16      -4.10     -52.76       0.00     -14.58

   49   5.2  0.5 -0.5      -8.82      -2.89       4.69    -133.79     -95.11      -1.44       2.87      -0.94       0.00       0.00
                            3.18     -63.19     -52.13      -6.75       1.61     -15.31     -69.35     -10.52      -0.00     133.20

   50   6.2  0.5 -0.5      -2.21     -45.88     -42.99      13.19     -20.78      22.92      70.03       1.90       0.00       0.00
                           -0.30     -20.95     -10.79      29.45      65.46     -10.86     -23.14      -6.29     -87.40    -110.24

   51   7.2  0.5 -0.5       1.97     -16.50     -13.36     -42.47      58.80       6.60      24.72       2.24       0.00       0.00
                           -1.62      47.31      40.44      11.94      23.38      18.94      70.92       6.42      -0.01      73.42

   52   8.2  0.5 -0.5      52.83     -27.98      28.65       0.23      -3.55     -50.16      14.11      58.05       0.00       0.00
                           40.15      33.72     -40.45       2.41       4.78      54.13     -21.22      51.73    1117.75      -6.79


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00      -0.00       0.00       0.00     173.43     -61.24     164.72       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -163.87      27.24     182.66       0.00       0.00       0.00

   11   2.2  1.5  0.5     185.47     144.49    -274.89    -198.02      52.77     187.03       7.23       0.00       0.00       0.00
                          144.45     108.47    -408.56     189.85     -49.41    -138.57     -13.04       0.00       0.00       0.00

   12   3.2  1.5  0.5      -0.00    -161.93    -246.36    -169.75    -147.12     -65.28     129.54       0.00       0.00       0.00
                            0.00     220.58     193.14     -84.38     101.59    -171.58     108.46       0.00       0.00       0.00

   13   4.2  1.5  0.5     161.93       0.00     281.50     202.71     -76.12     130.91     124.61       0.00       0.00       0.00
                         -220.58       0.00    -253.35     113.81     147.26     100.75     117.98       0.00       0.00       0.00

   14   5.2  1.5  0.5     246.36    -281.50      -0.00      -2.73     110.19     -42.71     112.92       0.00       0.00       0.00
                         -193.14     253.35      -0.00     -17.81     -73.75      11.10      90.32       0.00       0.00       0.00

   15   6.2  1.5  0.5     169.75    -202.71       2.73      -0.00    -164.13      50.31    -152.42       0.00       0.00       0.00
                           84.38    -113.81      17.81       0.00    -168.42      29.01     190.69       0.00       0.00       0.00

   16   7.2  1.5  0.5     147.12      76.12    -110.19     164.13      -0.00     189.03      70.28       0.00       0.00       0.00
                         -101.59    -147.26      73.75     168.42      -0.00     209.61     -31.26       0.00       0.00       0.00

   17   8.2  1.5  0.5      65.28    -130.91      42.71     -50.31    -189.03       0.00     199.02       0.00       0.00       0.00
                          171.58    -100.75     -11.10     -29.01    -209.61      -0.00    -188.05       0.00       0.00       0.00

   18   9.2  1.5  0.5    -129.54    -124.61    -112.92     152.42     -70.28    -199.02       0.00       0.00       0.00       0.00
                         -108.46    -117.98     -90.32    -190.69      31.26     188.05      -0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      31.74     118.82      10.76       0.00       0.00      -0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     160.62
                           97.14    -104.08       0.39      12.47     116.63     -33.82      10.19      -0.00      -0.00     125.10

   21   3.2  1.5 -0.5   61859.89       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -160.62      -0.00
                           -0.00      -8.91      21.42    -214.11      12.49       7.23     -77.44       0.00    -125.10       0.00

   22   4.2  1.5 -0.5       0.00   61859.90       0.00       0.00       0.00       0.00       0.00       0.00    -125.13     140.24
                            8.91      -0.00      16.58    -185.48      -6.69      -5.51      92.89      -0.00     -93.93    -191.03

   23   5.2  1.5 -0.5       0.00       0.00   61859.95       0.00       0.00       0.00       0.00      -0.00     238.06     213.35
                          -21.42     -16.58      -0.00      -6.80     -36.93    -134.56     -13.34       0.00     353.82    -167.26

   24   6.2  1.5 -0.5       0.00       0.00       0.00   61859.93       0.00       0.00       0.00      -0.00     171.49     147.00
                          214.11     185.48       6.80       0.00      -6.31     -11.86      -3.06       0.00    -164.41      73.07

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00   62780.99       0.00       0.00    -150.19     -45.70     127.41
                          -12.49       6.69      36.93       6.31       0.00      12.34    -136.35     141.92      42.79     -87.98

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   62780.98       0.00      53.04    -161.97      56.53
                           -7.23       5.51     134.56      11.86     -12.34      -0.00      36.42     -23.59     120.00     148.59

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   62781.00    -142.65      -6.26    -112.19
                           77.44     -92.89      13.34       3.06     136.35     -36.42       0.00    -158.19      11.29     -93.93

   28   1.2  1.5 -1.5      -0.00       0.00      -0.00      -0.00    -150.19      53.04    -142.65       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -141.92      23.59     158.19       0.00       0.00       0.00

   29   2.2  1.5 -1.5    -160.62    -125.13     238.06     171.49     -45.70    -161.97      -6.26       0.00   61859.91       0.00
                          125.10      93.93    -353.82     164.41     -42.79    -120.00     -11.29      -0.00      -0.00     291.43

   30   3.2  1.5 -1.5      -0.00     140.24     213.35     147.00     127.41      56.53    -112.19       0.00       0.00   61859.89
                           -0.00     191.03     167.26     -73.07      87.98    -148.59      93.93      -0.00    -291.43      -0.00

   31   4.2  1.5 -1.5    -140.24       0.00    -243.78    -175.55      65.92    -113.37    -107.92       0.00       0.00       0.00
                         -191.03      -0.00    -219.41      98.57     127.53      87.25     102.17      -0.00     312.25      26.73

   32   5.2  1.5 -1.5    -213.35     243.78      -0.00       2.36     -95.42      36.99     -97.80       0.00       0.00       0.00
                         -167.26     219.41       0.00     -15.42     -63.87       9.62      78.22       0.00      -1.17     -64.25

   33   6.2  1.5 -1.5    -147.00     175.55      -2.36      -0.00     142.14     -43.57     132.00       0.00       0.00       0.00
                           73.07     -98.57      15.42      -0.00    -145.85      25.13     165.14       0.00     -37.41     642.34

   34   7.2  1.5 -1.5    -127.41     -65.92      95.42    -142.14      -0.00    -163.70     -60.86       0.00       0.00       0.00
                          -87.98    -127.53      63.87     145.85       0.00     181.53     -27.07     -95.22    -349.88     -37.47

   35   8.2  1.5 -1.5     -56.53     113.37     -36.99      43.57     163.70       0.00    -172.35       0.00       0.00       0.00
                          148.59     -87.25      -9.62     -25.13    -181.53       0.00    -162.86    -356.45     101.47     -21.69

   36   9.2  1.5 -1.5     112.19     107.92      97.80    -132.00      60.86     172.35       0.00       0.00       0.00       0.00
                          -93.93    -102.17     -78.22    -165.14      27.07     162.86       0.00     -32.27     -30.56     232.32

   37   1.2  0.5  0.5       3.80      -4.43      -3.70      -2.38      64.49     -21.78      46.82       0.00       0.00       0.00
                           47.36     -59.48       1.11       4.47      19.74       0.18     -36.56      -0.00      -0.00      -0.00

   38   2.2  0.5  0.5      11.20     -52.89       1.11       2.60      42.28      14.85     -56.38       0.00       0.00       0.00
                          -49.97      55.46      41.84     -19.50     -51.62      17.14     -41.40      -0.00      -0.00      -0.00

   39   3.2  0.5  0.5      69.59      38.95      -2.23      -1.88      -7.14     -67.49     -23.34       0.00       0.00       0.00
                          -10.38      20.49    -143.58      65.54     -14.28       7.34     -12.18      -0.00      -0.00      -0.00

   40   4.2  0.5  0.5     -86.78      98.02       7.40       6.29      -0.58      -0.46      -0.93       0.00       0.00       0.00
                           25.75     -41.52      -0.55       2.95     -49.16       4.10      52.76      -0.00      -0.00      -0.00

   41   5.2  0.5  0.5      -2.89       4.69    -133.79     -95.11      -1.44       2.87      -0.94       0.00       0.00       0.00
                           63.19      52.13       6.75      -1.61      15.31      69.35      10.52      -0.00      -0.00      -0.00

   42   6.2  0.5  0.5     -45.88     -42.99      13.19     -20.78      22.92      70.03       1.90       0.00       0.00       0.00
                           20.95      10.79     -29.45     -65.46      10.86      23.14       6.29      -0.00      -0.00      -0.00

   43   7.2  0.5  0.5     -16.50     -13.36     -42.47      58.80       6.60      24.72       2.24       0.00       0.00       0.00
                          -47.31     -40.44     -11.94     -23.38     -18.94     -70.92      -6.42      -0.00      -0.00      -0.00

   44   8.2  0.5  0.5     -27.98      28.65       0.23      -3.55     -50.16      14.11      58.05       0.00       0.00       0.00
                          -33.72      40.45      -2.41      -4.78     -54.13      21.22     -51.73      -0.00      -0.00      -0.00

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -18.95       6.59
                         -216.39    -177.30     -11.20      46.13      24.67      79.88       4.64       0.00    -208.48      82.03

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -105.54      19.39
                           51.52      -0.52     -28.67     311.01     -32.07      -1.56     -27.52       0.00     -53.86     -86.54

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -35.30     120.52
                          -77.83     104.66      -8.75      91.89      98.45     -39.61      87.94      -0.00     -13.31     -17.97

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -171.97    -150.31
                          130.47     104.30       3.87       3.05      32.13     137.62      19.37      -0.00    -111.24      44.60

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -15.27      -5.00
                          -43.96      87.01      -1.31      -7.27      93.29      -9.03    -108.52       0.00      -5.50     109.45

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -318.65      -3.82     -79.47
                          -50.12      53.48     -11.57       0.76      69.20     -30.79     135.91     914.05       0.52      36.29

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     916.84       3.41     -28.58
                          -69.13      86.26      -1.58      -3.40     133.90     -29.00     -74.75     319.63       2.80     -81.95

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -24.91      91.51     -48.46
                           -7.66       3.01     152.11      14.58       5.41      -2.41      10.63      71.47     -69.55     -58.41


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     -18.95    -105.54     -35.30    -171.97
                            0.00       0.00       0.00       0.00       0.00       0.00    -208.48     -53.86     -13.31    -111.24

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       6.59      19.39     120.52    -150.31
                            0.00       0.00       0.00       0.00       0.00       0.00      82.03     -86.54     -17.97      44.60

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -7.68     -91.60      67.47     169.78
                            0.00       0.00       0.00       0.00       0.00       0.00    -103.01      96.06      35.48     -71.91

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -6.41       1.92      -3.86      12.81
                            0.00       0.00       0.00       0.00       0.00       0.00       1.92      72.47    -248.69      -0.96

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -4.12       4.49      -3.25      10.89
                            0.00       0.00       0.00       0.00       0.00       0.00       7.75     -33.77     113.52       5.10

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     111.71      73.22     -12.37      -1.01
                            0.00       0.00       0.00       0.00       0.00       0.00      34.18     -89.41     -24.73     -85.15

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     -37.73      25.72    -116.90      -0.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.31      29.69      12.71       7.10

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      81.09     -97.65     -40.43      -1.60
                            0.00       0.00       0.00       0.00       0.00       0.00     -63.32     -71.70     -21.10      91.38

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -14.94     -33.79      89.10      14.58

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     216.39     -51.52      77.83    -130.47

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     177.30       0.52    -104.66    -104.30

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      11.20      28.67       8.75      -3.87

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -46.13    -311.01     -91.89      -3.05

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -24.67      32.07     -98.45     -32.13

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -79.88       1.56      39.61    -137.62

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -4.64      27.52     -87.94     -19.37

   19   1.2  1.5 -0.5      -0.00       0.00       0.00     150.19     -53.04     142.65      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -141.92      23.59     158.19      -0.00      -0.00       0.00       0.00

   20   2.2  1.5 -0.5     125.13    -238.06    -171.49      45.70     161.97       6.26     -10.94     -60.93     -20.38     -99.29
                           93.93    -353.82     164.41     -42.79    -120.00     -11.29     120.37      31.10       7.69      64.22

   21   3.2  1.5 -0.5    -140.24    -213.35    -147.00    -127.41     -56.53     112.19       3.80      11.20      69.59     -86.78
                          191.03     167.26     -73.07      87.98    -148.59      93.93     -47.36      49.97      10.38     -25.75

   22   4.2  1.5 -0.5       0.00     243.78     175.55     -65.92     113.37     107.92      -4.43     -52.89      38.95      98.02
                            0.00    -219.41      98.57     127.53      87.25     102.17      59.48     -55.46     -20.49      41.52

   23   5.2  1.5 -0.5    -243.78      -0.00      -2.36      95.42     -36.99      97.80      -3.70       1.11      -2.23       7.40
                          219.41      -0.00     -15.42     -63.87       9.62      78.22      -1.11     -41.84     143.58       0.55

   24   6.2  1.5 -0.5    -175.55       2.36      -0.00    -142.14      43.57    -132.00      -2.38       2.60      -1.88       6.29
                          -98.57      15.42       0.00    -145.85      25.13     165.14      -4.47      19.50     -65.54      -2.95

   25   7.2  1.5 -0.5      65.92     -95.42     142.14      -0.00     163.70      60.86      64.49      42.28      -7.14      -0.58
                         -127.53      63.87     145.85      -0.00     181.53     -27.07     -19.74      51.62      14.28      49.16

   26   8.2  1.5 -0.5    -113.37      36.99     -43.57    -163.70       0.00     172.35     -21.78      14.85     -67.49      -0.46
                          -87.25      -9.62     -25.13    -181.53      -0.00    -162.86      -0.18     -17.14      -7.34      -4.10

   27   9.2  1.5 -0.5    -107.92     -97.80     132.00     -60.86    -172.35       0.00      46.82     -56.38     -23.34      -0.93
                         -102.17     -78.22    -165.14      27.07     162.86      -0.00      36.56      41.40      12.18     -52.76

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      95.22     356.45      32.27       0.00       0.00       0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -312.25       1.17      37.41     349.88    -101.47      30.56       0.00       0.00       0.00       0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.73      64.25    -642.34      37.47      21.69    -232.32       0.00       0.00       0.00       0.00

   31   4.2  1.5 -1.5   61859.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      49.73    -556.44     -20.07     -16.52     278.67       0.00       0.00       0.00       0.00

   32   5.2  1.5 -1.5       0.00   61859.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -49.73      -0.00     -20.39    -110.80    -403.67     -40.03       0.00       0.00       0.00       0.00

   33   6.2  1.5 -1.5       0.00       0.00   61859.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          556.44      20.39       0.00     -18.93     -35.58      -9.17       0.00       0.00       0.00       0.00

   34   7.2  1.5 -1.5       0.00       0.00       0.00   62780.99       0.00       0.00       0.00       0.00       0.00       0.00
                           20.07     110.80      18.93       0.00      37.03    -409.04       0.00       0.00       0.00       0.00

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00   62780.98       0.00       0.00       0.00       0.00       0.00
                           16.52     403.67      35.58     -37.03      -0.00     109.27       0.00       0.00       0.00       0.00

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   62781.00       0.00       0.00       0.00       0.00
                         -278.67      40.03       9.17     409.04    -109.27       0.00       0.00       0.00       0.00       0.00

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11506.54       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -11.66      -3.21      -1.11

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11506.55       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.66      -0.00       0.02      -6.90

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11506.53       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.21      -0.02      -0.00      -1.60

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11506.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.11       6.90       1.60      -0.00

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.05      -1.26       6.95       0.11

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -11.75     -63.02     241.14     -88.65

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.77     183.38    -619.96     -19.20

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     403.99     -63.73      -6.09     682.50

   45   1.2  0.5 -0.5      -7.68      -6.41      -4.12     111.71     -37.73      81.09       0.00      -0.32       0.99      -0.40
                         -103.01       1.92       7.75      34.18       0.31     -63.32      -0.00       3.61     -11.61      -0.03

   46   2.2  0.5 -0.5     -91.60       1.92       4.49      73.22      25.72     -97.65       0.32      -0.00       6.95       0.15
                           96.06      72.47     -33.77     -89.41      29.69     -71.70      -3.61      -0.00       1.61      -1.55

   47   3.2  0.5 -0.5      67.47      -3.86      -3.25     -12.37    -116.90     -40.43      -0.99      -6.95       0.00      -0.46
                           35.48    -248.69     113.52     -24.73      12.71     -21.10      11.61      -1.61       0.00       6.72

   48   4.2  0.5 -0.5     169.78      12.81      10.89      -1.01      -0.81      -1.60       0.40      -0.15       0.46      -0.00
                          -71.91      -0.96       5.10     -85.15       7.10      91.38       0.03       1.55      -6.72       0.00

   49   5.2  0.5 -0.5       8.13    -231.73    -164.74      -2.49       4.98      -1.63      -0.11       0.28       0.16     -14.06
                           90.29      11.70      -2.79      26.53     120.11      18.22       0.64       6.73       1.92      -0.19

   50   6.2  0.5 -0.5     -74.47      22.84     -35.99      39.71     121.29       3.29    -355.91    -567.13    -221.13      -0.79
                           18.69     -51.01    -113.38      18.81      40.08      10.89     329.60    -265.80     -76.59    -653.36

   51   7.2  0.5 -0.5     -23.13     -73.57     101.84      11.44      42.82       3.88     713.34    -322.26     -98.55      -9.42
                          -70.04     -20.69     -40.49     -32.81    -122.83     -11.12     223.87     603.45     178.04    -225.99

   52   8.2  0.5 -0.5      49.62       0.40      -6.15     -86.87      24.44     100.55     -24.87    -240.42     649.13       6.51
                           70.06      -4.18      -8.28     -93.75      36.76     -89.59      45.75     -24.45      16.55     -90.74


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5      -0.00    -318.65     916.84     -24.91       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     914.05     319.63      71.47       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5     -15.27      -3.82       3.41      91.51       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.50       0.52       2.80     -69.55       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5      -5.00     -79.47     -28.58     -48.46       0.00       0.00       0.00       0.00       0.00       0.00
                          109.45      36.29     -81.95     -58.41       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       8.13     -74.47     -23.13      49.62       0.00       0.00       0.00       0.00       0.00       0.00
                           90.29      18.69     -70.04      70.06       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5    -231.73      22.84     -73.57       0.40       0.00       0.00       0.00       0.00       0.00       0.00
                           11.70     -51.01     -20.69      -4.18       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5    -164.74     -35.99     101.84      -6.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.79    -113.38     -40.49      -8.28       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5      -2.49      39.71      11.44     -86.87       0.00       0.00       0.00       0.00       0.00       0.00
                           26.53      18.81     -32.81     -93.75       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       4.98     121.29      42.82      24.44       0.00       0.00       0.00       0.00       0.00       0.00
                          120.11      40.08    -122.83      36.76       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5      -1.63       3.29       3.88     100.55       0.00       0.00       0.00       0.00       0.00       0.00
                           18.22      10.89     -11.12     -89.59       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -183.98
                            0.00      87.40       0.01   -1117.75       0.00       0.00      -0.00      -0.00       0.00     527.73

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00     -10.94     -60.93     -20.38     -99.29      -8.82      -2.21
                         -133.20     110.24     -73.42       6.79    -120.37     -31.10      -7.69     -64.22      -3.18       0.30

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00       3.80      11.20      69.59     -86.78      -2.89     -45.88
                           43.96      50.12      69.13       7.66      47.36     -49.97     -10.38      25.75      63.19      20.95

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00      -4.43     -52.89      38.95      98.02       4.69     -42.99
                          -87.01     -53.48     -86.26      -3.01     -59.48      55.46      20.49     -41.52      52.13      10.79

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00      -3.70       1.11      -2.23       7.40    -133.79      13.19
                            1.31      11.57       1.58    -152.11       1.11      41.84    -143.58      -0.55       6.75     -29.45

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00      -2.38       2.60      -1.88       6.29     -95.11     -20.78
                            7.27      -0.76       3.40     -14.58       4.47     -19.50      65.54       2.95      -1.61     -65.46

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00      64.49      42.28      -7.14      -0.58      -1.44      22.92
                          -93.29     -69.20    -133.90      -5.41      19.74     -51.62     -14.28     -49.16      15.31      10.86

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00     -21.78      14.85     -67.49      -0.46       2.87      70.03
                            9.03      30.79      29.00       2.41       0.18      17.14       7.34       4.10      69.35      23.14

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00      46.82     -56.38     -23.34      -0.93      -0.94       1.90
                          108.52    -135.91      74.75     -10.63     -36.56     -41.40     -12.18      52.76      10.52       6.29

   19   1.2  1.5 -0.5      -0.00    -183.98     529.34     -14.38       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -527.73    -184.54     -41.27      -0.00      -0.00      -0.00      -0.00       0.00      87.40

   20   2.2  1.5 -0.5      -8.82      -2.21       1.97      52.83       0.00       0.00       0.00       0.00       0.00       0.00
                            3.18      -0.30      -1.62      40.15     -14.94     -33.79      89.10      14.58    -133.20     110.24

   21   3.2  1.5 -0.5      -2.89     -45.88     -16.50     -27.98       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.19     -20.95      47.31      33.72     216.39     -51.52      77.83    -130.47      43.96      50.12

   22   4.2  1.5 -0.5       4.69     -42.99     -13.36      28.65       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.13     -10.79      40.44     -40.45     177.30       0.52    -104.66    -104.30     -87.01     -53.48

   23   5.2  1.5 -0.5    -133.79      13.19     -42.47       0.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.75      29.45      11.94       2.41      11.20      28.67       8.75      -3.87       1.31      11.57

   24   6.2  1.5 -0.5     -95.11     -20.78      58.80      -3.55       0.00       0.00       0.00       0.00       0.00       0.00
                            1.61      65.46      23.38       4.78     -46.13    -311.01     -91.89      -3.05       7.27      -0.76

   25   7.2  1.5 -0.5      -1.44      22.92       6.60     -50.16       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.31     -10.86      18.94      54.13     -24.67      32.07     -98.45     -32.13     -93.29     -69.20

   26   8.2  1.5 -0.5       2.87      70.03      24.72      14.11       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.35     -23.14      70.92     -21.22     -79.88       1.56      39.61    -137.62       9.03      30.79

   27   9.2  1.5 -0.5      -0.94       1.90       2.24      58.05       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.52      -6.29       6.42      51.73      -4.64      27.52     -87.94     -19.37     108.52    -135.91

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -318.65
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -914.05

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00     -18.95    -105.54     -35.30    -171.97     -15.27      -3.82
                            0.00       0.00       0.00       0.00     208.48      53.86      13.31     111.24       5.50      -0.52

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       6.59      19.39     120.52    -150.31      -5.00     -79.47
                            0.00       0.00       0.00       0.00     -82.03      86.54      17.97     -44.60    -109.45     -36.29

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00      -7.68     -91.60      67.47     169.78       8.13     -74.47
                            0.00       0.00       0.00       0.00     103.01     -96.06     -35.48      71.91     -90.29     -18.69

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00      -6.41       1.92      -3.86      12.81    -231.73      22.84
                            0.00       0.00       0.00       0.00      -1.92     -72.47     248.69       0.96     -11.70      51.01

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00      -4.12       4.49      -3.25      10.89    -164.74     -35.99
                            0.00       0.00       0.00       0.00      -7.75      33.77    -113.52      -5.10       2.79     113.38

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00     111.71      73.22     -12.37      -1.01      -2.49      39.71
                            0.00       0.00       0.00       0.00     -34.18      89.41      24.73      85.15     -26.53     -18.81

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00     -37.73      25.72    -116.90      -0.81       4.98     121.29
                            0.00       0.00       0.00       0.00      -0.31     -29.69     -12.71      -7.10    -120.11     -40.08

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00      81.09     -97.65     -40.43      -1.60      -1.63       3.29
                            0.00       0.00       0.00       0.00      63.32      71.70      21.10     -91.38     -18.22     -10.89

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.32      -0.99       0.40      -0.11    -355.91
                           -0.05      11.75      -3.77    -403.99       0.00       3.61     -11.61      -0.03      -0.64    -329.60

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.32      -0.00      -6.95      -0.15       0.28    -567.13
                            1.26      63.02    -183.38      63.73      -3.61       0.00       1.61      -1.55      -6.73     265.80

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.99       6.95       0.00       0.46       0.16    -221.13
                           -6.95    -241.14     619.96       6.09      11.61      -1.61      -0.00       6.72      -1.92      76.59

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.40       0.15      -0.46      -0.00     -14.06      -0.79
                           -0.11      88.65      19.20    -682.50       0.03       1.55      -6.72      -0.00       0.19     653.36

   41   5.2  0.5  0.5   11506.57       0.00       0.00       0.00       0.11      -0.28      -0.16      14.06       0.00      14.40
                           -0.00    -641.12    -248.62     -78.40       0.64       6.73       1.92      -0.19       0.00      99.94

   42   6.2  0.5  0.5       0.00   18774.65       0.00       0.00     355.91     567.13     221.13       0.79     -14.40      -0.00
                          641.12       0.00      -5.46      -0.00     329.60    -265.80     -76.59    -653.36     -99.94      -0.00

   43   7.2  0.5  0.5       0.00       0.00   18774.71       0.00    -713.34     322.26      98.55       9.42      19.59      -0.14
                          248.62       5.46      -0.00       0.43     223.87     603.45     178.04    -225.99     -21.98       0.40

   44   8.2  0.5  0.5       0.00       0.00       0.00   18774.74      24.87     240.42    -649.13      -6.51      21.29      -5.17
                           78.40       0.00      -0.43      -0.00      45.75     -24.45      16.55     -90.74     685.45      -1.80

   45   1.2  0.5 -0.5       0.11     355.91    -713.34      24.87   11506.54       0.00       0.00       0.00       0.00       0.00
                           -0.64    -329.60    -223.87     -45.75      -0.00      11.66       3.21       1.11       0.05     -11.75

   46   2.2  0.5 -0.5      -0.28     567.13     322.26     240.42       0.00   11506.55       0.00       0.00       0.00       0.00
                           -6.73     265.80    -603.45      24.45     -11.66       0.00      -0.02       6.90      -1.26     -63.02

   47   3.2  0.5 -0.5      -0.16     221.13      98.55    -649.13       0.00       0.00   11506.53       0.00       0.00       0.00
                           -1.92      76.59    -178.04     -16.55      -3.21       0.02       0.00       1.60       6.95     241.14

   48   4.2  0.5 -0.5      14.06       0.79       9.42      -6.51       0.00       0.00       0.00   11506.59       0.00       0.00
                            0.19     653.36     225.99      90.74      -1.11      -6.90      -1.60       0.00       0.11     -88.65

   49   5.2  0.5 -0.5       0.00     -14.40      19.59      21.29       0.00       0.00       0.00       0.00   11506.57       0.00
                           -0.00      99.94      21.98    -685.45      -0.05       1.26      -6.95      -0.11       0.00     641.12

   50   6.2  0.5 -0.5      14.40      -0.00      -0.14      -5.17       0.00       0.00       0.00       0.00       0.00   18774.65
                          -99.94       0.00      -0.40       1.80      11.75      63.02    -241.14      88.65    -641.12      -0.00

   51   7.2  0.5 -0.5     -19.59       0.14       0.00      -1.80       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.98       0.40      -0.00      -5.15      -3.77    -183.38     619.96      19.20    -248.62      -5.46

   52   8.2  0.5 -0.5     -21.29       5.17       1.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          685.45      -1.80       5.15      -0.00    -403.99      63.73       6.09    -682.50     -78.40      -0.00


   Nr   State  S   Sz       51         52

    1   1.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00
                            0.00       0.00

   10   1.2  1.5  0.5     529.34     -14.38
                          184.54      41.27

   11   2.2  1.5  0.5       1.97      52.83
                            1.62     -40.15

   12   3.2  1.5  0.5     -16.50     -27.98
                          -47.31     -33.72

   13   4.2  1.5  0.5     -13.36      28.65
                          -40.44      40.45

   14   5.2  1.5  0.5     -42.47       0.23
                          -11.94      -2.41

   15   6.2  1.5  0.5      58.80      -3.55
                          -23.38      -4.78

   16   7.2  1.5  0.5       6.60     -50.16
                          -18.94     -54.13

   17   8.2  1.5  0.5      24.72      14.11
                          -70.92      21.22

   18   9.2  1.5  0.5       2.24      58.05
                           -6.42     -51.73

   19   1.2  1.5 -0.5       0.00       0.00
                            0.01   -1117.75

   20   2.2  1.5 -0.5       0.00       0.00
                          -73.42       6.79

   21   3.2  1.5 -0.5       0.00       0.00
                           69.13       7.66

   22   4.2  1.5 -0.5       0.00       0.00
                          -86.26      -3.01

   23   5.2  1.5 -0.5       0.00       0.00
                            1.58    -152.11

   24   6.2  1.5 -0.5       0.00       0.00
                            3.40     -14.58

   25   7.2  1.5 -0.5       0.00       0.00
                         -133.90      -5.41

   26   8.2  1.5 -0.5       0.00       0.00
                           29.00       2.41

   27   9.2  1.5 -0.5       0.00       0.00
                           74.75     -10.63

   28   1.2  1.5 -1.5     916.84     -24.91
                         -319.63     -71.47

   29   2.2  1.5 -1.5       3.41      91.51
                           -2.80      69.55

   30   3.2  1.5 -1.5     -28.58     -48.46
                           81.95      58.41

   31   4.2  1.5 -1.5     -23.13      49.62
                           70.04     -70.06

   32   5.2  1.5 -1.5     -73.57       0.40
                           20.69       4.18

   33   6.2  1.5 -1.5     101.84      -6.15
                           40.49       8.28

   34   7.2  1.5 -1.5      11.44     -86.87
                           32.81      93.75

   35   8.2  1.5 -1.5      42.82      24.44
                          122.83     -36.76

   36   9.2  1.5 -1.5       3.88     100.55
                           11.12      89.59

   37   1.2  0.5  0.5     713.34     -24.87
                         -223.87     -45.75

   38   2.2  0.5  0.5    -322.26    -240.42
                         -603.45      24.45

   39   3.2  0.5  0.5     -98.55     649.13
                         -178.04     -16.55

   40   4.2  0.5  0.5      -9.42       6.51
                          225.99      90.74

   41   5.2  0.5  0.5     -19.59     -21.29
                           21.98    -685.45

   42   6.2  0.5  0.5       0.14       5.17
                           -0.40       1.80

   43   7.2  0.5  0.5       0.00       1.80
                            0.00      -5.15

   44   8.2  0.5  0.5      -1.80      -0.00
                            5.15       0.00

   45   1.2  0.5 -0.5       0.00       0.00
                            3.77     403.99

   46   2.2  0.5 -0.5       0.00       0.00
                          183.38     -63.73

   47   3.2  0.5 -0.5       0.00       0.00
                         -619.96      -6.09

   48   4.2  0.5 -0.5       0.00       0.00
                          -19.20     682.50

   49   5.2  0.5 -0.5       0.00       0.00
                          248.62      78.40

   50   6.2  0.5 -0.5       0.00       0.00
                            5.46       0.00

   51   7.2  0.5 -0.5   18774.71       0.00
                            0.00      -0.43

   52   8.2  0.5 -0.5       0.00   18774.74
                            0.43       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2225.24742379    -0.00047785     -104.88      0.00000000        0.00      0.0000
     2 -2225.24742379    -0.00047785     -104.88      0.00000000        0.00      0.0000
     3 -2225.24742379    -0.00047785     -104.88      0.00000000        0.00      0.0000
     4 -2225.24742379    -0.00047785     -104.88      0.00000000        0.00      0.0000
     5 -2225.19603568     0.05091026    11173.51      0.05138811    11278.39      1.3983
     6 -2225.19603568     0.05091026    11173.51      0.05138811    11278.39      1.3983
     7 -2225.19603554     0.05091041    11173.54      0.05138826    11278.42      1.3983
     8 -2225.19603554     0.05091041    11173.54      0.05138826    11278.42      1.3983
     9 -2225.19447664     0.05246931    11515.68      0.05294716    11620.56      1.4408
    10 -2225.19447664     0.05246931    11515.68      0.05294716    11620.56      1.4408
    11 -2225.19447657     0.05246937    11515.70      0.05294722    11620.57      1.4408
    12 -2225.19447657     0.05246937    11515.70      0.05294722    11620.57      1.4408
    13 -2225.19447644     0.05246951    11515.73      0.05294736    11620.60      1.4408
    14 -2225.19447644     0.05246951    11515.73      0.05294736    11620.60      1.4408
    15 -2225.16146421     0.08548174    18761.07      0.08595959    18865.95      2.3391
    16 -2225.16146421     0.08548174    18761.07      0.08595959    18865.95      2.3391
    17 -2225.15951735     0.08742859    19188.36      0.08790644    19293.23      2.3921
    18 -2225.15951735     0.08742859    19188.36      0.08790644    19293.23      2.3921
    19 -2225.15951712     0.08742882    19188.41      0.08790667    19293.28      2.3921
    20 -2225.15951712     0.08742882    19188.41      0.08790667    19293.28      2.3921
    21 -2224.97114342     0.27580252    60531.66      0.27628038    60636.53      7.5180
    22 -2224.97114342     0.27580252    60531.66      0.27628038    60636.53      7.5180
    23 -2224.96963198     0.27731396    60863.38      0.27779181    60968.26      7.5591
    24 -2224.96963198     0.27731396    60863.38      0.27779181    60968.26      7.5591
    25 -2224.96963197     0.27731398    60863.38      0.27779183    60968.26      7.5591
    26 -2224.96963197     0.27731398    60863.38      0.27779183    60968.26      7.5591
    27 -2224.96658046     0.28036549    61533.11      0.28084334    61637.99      7.6421
    28 -2224.96658046     0.28036549    61533.11      0.28084334    61637.99      7.6421
    29 -2224.96658043     0.28036552    61533.12      0.28084337    61637.99      7.6421
    30 -2224.96658043     0.28036552    61533.12      0.28084337    61637.99      7.6421
    31 -2224.96658033     0.28036561    61533.14      0.28084346    61638.02      7.6421
    32 -2224.96658033     0.28036561    61533.14      0.28084346    61638.02      7.6421
    33 -2224.96390141     0.28304453    62121.09      0.28352238    62225.97      7.7150
    34 -2224.96390141     0.28304453    62121.09      0.28352238    62225.97      7.7150
    35 -2224.96150170     0.28544424    62647.77      0.28592209    62752.65      7.7803
    36 -2224.96150170     0.28544424    62647.77      0.28592209    62752.65      7.7803
    37 -2224.96150166     0.28544428    62647.78      0.28592213    62752.65      7.7803
    38 -2224.96150166     0.28544428    62647.78      0.28592213    62752.65      7.7803
    39 -2224.96119581     0.28575013    62714.90      0.28622798    62819.78      7.7887
    40 -2224.96119581     0.28575013    62714.90      0.28622798    62819.78      7.7887
    41 -2224.96119576     0.28575019    62714.92      0.28622804    62819.79      7.7887
    42 -2224.96119576     0.28575019    62714.92      0.28622804    62819.79      7.7887
    43 -2224.96119575     0.28575019    62714.92      0.28622805    62819.79      7.7887
    44 -2224.96119575     0.28575019    62714.92      0.28622805    62819.79      7.7887
    45 -2224.96119569     0.28575025    62714.93      0.28622810    62819.81      7.7887
    46 -2224.96119569     0.28575025    62714.93      0.28622810    62819.81      7.7887
    47 -2224.95809612     0.28884982    63395.21      0.28932767    63500.08      7.8730
    48 -2224.95809612     0.28884982    63395.21      0.28932767    63500.08      7.8730
    49 -2224.95809609     0.28884986    63395.22      0.28932771    63500.09      7.8730
    50 -2224.95809609     0.28884986    63395.22      0.28932771    63500.09      7.8730
    51 -2224.95809605     0.28884989    63395.22      0.28932774    63500.10      7.8730
    52 -2224.95809605     0.28884989    63395.22      0.28932774    63500.10      7.8730


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.005958213  -0.667269858   0.006573533   0.741029443  -0.000018229   0.019354322   0.000103570  -0.014161328
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000117703  -0.000003697  -0.000106603  -0.000005990   0.001946074  -0.000178031   0.001691447  -0.000302826
                         0.000036046  -0.000003823   0.000030461  -0.000003429   0.000464735  -0.000259706   0.002152379  -0.000339809

    3    3.2  1.5  1.5   0.000028388  -0.000037023   0.000024252  -0.000027900   0.000457766  -0.000264384   0.001414393  -0.000210221
                         0.000079303  -0.000083152   0.000071887  -0.000074884  -0.001088525   0.001637264  -0.000791926   0.002233326

    4    4.2  1.5  1.5  -0.000023036  -0.000018407  -0.000019273  -0.000014887  -0.000233205   0.000018015  -0.001647921   0.000057274
                        -0.000086427  -0.000083000  -0.000078194  -0.000074744   0.001645128   0.001163393   0.001553246   0.001599307

    5    5.2  1.5  1.5   0.000002911   0.000098506   0.000000650  -0.000133442   0.000007668   0.002947149   0.000047649  -0.001761966
                        -0.000000284   0.000000902  -0.000000221   0.000000815  -0.000027933   0.000061997  -0.000021592   0.000084610

    6    6.2  1.5  1.5   0.000000119   0.000126859  -0.000000293   0.000093148  -0.000254505  -0.001737147  -0.000327409  -0.002925881
                         0.000011875  -0.000037129   0.000010676  -0.000033423   0.000087869  -0.000105318  -0.000122460  -0.000144935

    7    7.2  1.5  1.5   0.000995700  -0.000127125   0.000857226  -0.000114070  -0.000036868   0.000023619  -0.000284961   0.000030237
                         0.002327762   0.001259229   0.002093743  -0.000981294   0.000288957  -0.000211292   0.000277099   0.000100501

    8    8.2  1.5  1.5  -0.000047549   0.000053036  -0.000030847   0.000047648   0.000036681  -0.000008740   0.000101460  -0.000011250
                        -0.000672028   0.003894127  -0.000676280  -0.004411295  -0.000072449  -0.000686705  -0.000050819   0.000512272

    9    9.2  1.5  1.5  -0.002413136  -0.000210728  -0.002188997  -0.000189737  -0.000296710   0.000026834  -0.000279909   0.000035002
                         0.000973710   0.000220419   0.000829449  -0.000517842  -0.000044904  -0.000037666  -0.000300524   0.000077761

   10    1.2  1.5  0.5  -0.253918729  -0.068663149  -0.240321460  -0.061738428  -0.010871183   0.001709572  -0.019223999   0.002209842
                         0.692556245   0.018553196   0.619222920   0.016781931   0.008911960  -0.000149900   0.000314824  -0.000214026

   11    2.2  1.5  0.5   0.000003139  -0.000067153  -0.000004578   0.000074307   0.000137134  -0.001676020  -0.000023969   0.001219966
                        -0.000000454   0.000088428   0.000003175  -0.000098128   0.000025078   0.002207572  -0.000066210  -0.001615440

   12    3.2  1.5  0.5  -0.000084222  -0.000057916   0.000095568   0.000064887  -0.001297563  -0.001467920  -0.000125034   0.001084707
                        -0.000005908  -0.000040714   0.000002717   0.000045044  -0.001668817  -0.001017822   0.001544066   0.000753842

   13    4.2  1.5  0.5  -0.000070481   0.000066746   0.000078840  -0.000073949  -0.001040380   0.001650265  -0.000087852  -0.001204756
                        -0.000004541   0.000053378   0.000004776  -0.000059333  -0.001453081   0.001331380   0.001312265  -0.000966059

   14    5.2  1.5  0.5  -0.000045121  -0.000011523  -0.000036142  -0.000010048   0.001298339  -0.000248604   0.002931031  -0.000310279
                         0.000125045   0.000001641   0.000091030   0.000004365  -0.001169363  -0.000011949   0.000011294   0.000055374

   15    6.2  1.5  0.5   0.000000409  -0.000000555  -0.000010967  -0.000001530   0.002375525  -0.000006920  -0.001757231  -0.000054896
                        -0.000099519  -0.000001934   0.000132220   0.000002742  -0.001747416  -0.000079701  -0.000085063   0.000060997

   16    7.2  1.5  0.5   0.000499946   0.003089002   0.000413423  -0.000554594   0.000039891  -0.000033312   0.000042855   0.000566133
                         0.000400827  -0.000940179   0.000340946  -0.003999084  -0.000004656  -0.000495746   0.000029062  -0.000099660

   17    8.2  1.5  0.5   0.001348428  -0.001162972   0.001217483   0.000131006   0.000099312   0.000012531  -0.000010056  -0.000198971
                         0.000418631   0.000415996   0.000404525   0.000898471   0.000138777   0.000058290   0.000233053  -0.000014871

   18    9.2  1.5  0.5  -0.000126697   0.004166581  -0.000144934   0.000583084   0.000050282  -0.000061454   0.000029327   0.000496882
                         0.000148482  -0.000210362   0.000162086   0.003324447   0.000023938   0.000576537   0.000067819   0.000144519

   19    1.2  1.5 -0.5  -0.021752793   0.703702079  -0.020799912   0.633667564   0.001475416   0.014029182   0.002197368   0.019188065
                         0.067717531  -0.221161410   0.060503153  -0.199139986  -0.000876500   0.000887523   0.000317459   0.001216319

   20    2.2  1.5 -0.5  -0.000091480  -0.000000601   0.000102795   0.000003469  -0.002649623  -0.000096687   0.001142839   0.000027048
                         0.000062932   0.000003114  -0.000067702  -0.000004360  -0.000813583   0.000100430   0.001670893  -0.000065013

   21    3.2  1.5 -0.5   0.000037954  -0.000001952  -0.000040685  -0.000003564  -0.000597419   0.000079010   0.001118877   0.000052461
                         0.000059761  -0.000084406  -0.000067705   0.000095541   0.001683402  -0.002112434  -0.000702125   0.001548231

   22    4.2  1.5 -0.5  -0.000050189  -0.000001231   0.000054348  -0.000000412   0.000562371  -0.000003815  -0.001248750   0.000026194
                        -0.000069176  -0.000070617   0.000077686   0.000078983  -0.002044428  -0.001787126   0.000908477   0.001314942

   23    5.2  1.5 -0.5  -0.000002179   0.000127024  -0.000005015   0.000093207  -0.000194849  -0.001736813  -0.000307340  -0.002928334
                         0.000011433  -0.000039207   0.000009739  -0.000030086   0.000154857  -0.000191250  -0.000069869  -0.000126219

   24    6.2  1.5 -0.5   0.000001906  -0.000099429  -0.000002837   0.000132654   0.000040919  -0.002948827  -0.000051974   0.001759287
                         0.000000645  -0.000004259   0.000001347  -0.000002261   0.000068744  -0.000031581  -0.000063505  -0.000002533

   25    7.2  1.5 -0.5   0.001084005   0.000376940   0.003954034   0.000313061   0.000262415  -0.000035103   0.000560834  -0.000044171
                        -0.003041513   0.000518193   0.000816006   0.000434920   0.000421914   0.000019512   0.000126109   0.000027020

   26    8.2  1.5 -0.5  -0.000470076   0.000354935  -0.000887929   0.000323703  -0.000023861   0.000000405  -0.000199449  -0.000000888
                         0.001142184   0.001366577  -0.000189723   0.001241419  -0.000054639   0.000170651   0.000005521   0.000233268

   27    9.2  1.5 -0.5   0.000405526   0.000154261  -0.003278982   0.000171254  -0.000386522  -0.000026843   0.000503115  -0.000032477
                        -0.004152132  -0.000119594  -0.000800134  -0.000133977  -0.000432172   0.000048792  -0.000121051   0.000066369

   28    1.2  1.5 -1.5   0.031292159  -0.000279415  -0.048661441   0.000431667  -0.015712535  -0.000014799   0.014145737   0.000103456
                        -0.666535803   0.005951659   0.739429906  -0.006559344   0.011300709   0.000010643   0.000664340   0.000004859

   29    2.2  1.5 -1.5  -0.000003646  -0.000041526  -0.000003028  -0.000037395  -0.000007107   0.001308541   0.000318434   0.001790558
                        -0.000003872   0.000115883  -0.000006203   0.000104372  -0.000314788  -0.001513573  -0.000325229  -0.002070660

   30    3.2  1.5 -1.5  -0.000081324  -0.000077884  -0.000072891  -0.000070140   0.001170611   0.001007205   0.000105219   0.001375685
                        -0.000040882  -0.000032075  -0.000032757  -0.000028921   0.001174820   0.000616421   0.002240729   0.000857406

   31    4.2  1.5 -1.5  -0.000082046   0.000085251  -0.000073605   0.000076759   0.000664663  -0.001149891  -0.000132238  -0.001573240
                        -0.000022279   0.000027064  -0.000019763   0.000024366   0.000955003  -0.001199409   0.001594859  -0.001628844

   32    5.2  1.5 -1.5  -0.000003719   0.000000420   0.000009576   0.000000263  -0.002356402   0.000022535   0.001756057   0.000046584
                         0.000098440  -0.000002894  -0.000133101  -0.000000634   0.001771129   0.000018200   0.000167175   0.000023804

   33    6.2  1.5 -1.5  -0.000043037  -0.000011856  -0.000039467  -0.000010672   0.001348785  -0.000257922   0.002929459  -0.000332794
                         0.000124978  -0.000000676   0.000090752  -0.000000409  -0.001099796   0.000077266  -0.000007515   0.000106965

   34    7.2  1.5 -1.5   0.001263805  -0.002278507  -0.000971685  -0.002032931  -0.000142545  -0.000198648  -0.000034918  -0.000271647
                        -0.000067933  -0.001103767  -0.000178263  -0.000992867  -0.000157744  -0.000213059   0.000098972  -0.000290162

   35    8.2  1.5 -1.5   0.003887356   0.000669059  -0.004404903   0.000672795  -0.000393862   0.000072080  -0.000012794   0.000098964
                         0.000235596   0.000079012  -0.000242133   0.000075190  -0.000562594   0.000037399   0.000512236   0.000055522

   36    9.2  1.5 -1.5   0.000230059  -0.001085804  -0.000504265  -0.000971404  -0.000043778  -0.000214661  -0.000038611  -0.000293699
                        -0.000200159   0.002364819  -0.000223333   0.002129804  -0.000014910   0.000209699   0.000076033   0.000287062

   37    1.2  0.5  0.5  -0.001239852  -0.000037659  -0.000337579  -0.000160202   0.443132728  -0.023766467  -0.064094378  -0.048612411
                        -0.001363516   0.000062695   0.005876837   0.000011033  -0.424065921  -0.001308220   0.034734330   0.001246805

   38    2.2  0.5  0.5  -0.003719654  -0.000298817   0.004579739  -0.000317711  -0.340648433  -0.002336912  -0.010828218  -0.000065333
                         0.000030593  -0.000486324  -0.000516947  -0.001604353  -0.324655286   0.158674963   0.364071744   0.071850412

   39    3.2  0.5  0.5  -0.001456924   0.001349113   0.001015056   0.001059458  -0.124421920   0.018263912  -0.001921645   0.008079642
                        -0.000157666   0.001593419  -0.000275285   0.005416980  -0.126281701  -0.541941429   0.053955415  -0.236739457

   40    4.2  0.5  0.5  -0.001466042  -0.000685640  -0.001097622  -0.000382573   0.035096211  -0.034324232   0.615658878  -0.012507330
                         0.005756342   0.000163632   0.000946217   0.000224460  -0.052704440  -0.000730282   0.003446338   0.004054253

   41    5.2  0.5  0.5  -0.000118821   0.005767165  -0.000193987   0.001052528  -0.041869267  -0.065971783  -0.010918434  -0.613864965
                         0.000737650  -0.001235090   0.000216089  -0.001242025   0.031265611  -0.001468969  -0.007759246  -0.019032760

   42    6.2  0.5  0.5  -0.001645702  -0.010803395  -0.001282683   0.013197522   0.005794666  -0.054808214  -0.003427993   0.001911195
                        -0.000198436  -0.055114697   0.000381300   0.016132863   0.011322191  -0.062943963   0.015954309   0.134518944

   43    7.2  0.5  0.5   0.001580026   0.010640978   0.000865613  -0.056380165   0.005499182   0.148495882   0.007123063  -0.018117787
                        -0.001808804  -0.012120632  -0.001398728   0.012081047  -0.001103401  -0.018571212   0.003209822   0.051727694

   44    8.2  0.5  0.5   0.041628721   0.000273952   0.037235499   0.002043548  -0.059060110  -0.003283903  -0.002370531   0.001578616
                         0.015294401  -0.000169660   0.014519893   0.004984039  -0.071711757   0.006494437  -0.127128847   0.025275916

   45    1.2  0.5 -0.5   0.000064392   0.001303871   0.000021530  -0.005886320   0.018530622   0.607357058   0.048500399  -0.062394345
                        -0.000034678   0.001302431  -0.000159132  -0.000049066  -0.014938957   0.085533177   0.003525951  -0.037702901

   46    2.2  0.5 -0.5  -0.000471776  -0.000204995  -0.001580027   0.000816571   0.094545208  -0.086989125  -0.003305405   0.006263135
                        -0.000321295   0.003714126  -0.000422379  -0.004535908   0.127453556   0.462466541   0.071774370  -0.364178882

   47    3.2  0.5 -0.5   0.001528398   0.000089169   0.005335716   0.000341347  -0.331259071  -0.027276132   0.003035239   0.000611642
                         0.001422353   0.001462715   0.001412890  -0.000994788  -0.429303519   0.175168190  -0.236857844  -0.053986159

   48    4.2  0.5 -0.5   0.000195606  -0.005818760   0.000249098  -0.001016252   0.027439246   0.059265727   0.012303365   0.615142721
                        -0.000677212   0.001194481  -0.000367008   0.001033117  -0.020634292   0.022295191   0.004636536   0.025439412

   49    5.2  0.5 -0.5  -0.001504187  -0.000742411  -0.001308461  -0.000228361   0.052700558  -0.052246516   0.614081978  -0.011270417
                         0.005702899   0.000084097   0.000968697   0.000179378  -0.039712533  -0.000935688   0.009785993   0.007238495

   50    6.2  0.5 -0.5  -0.054547427   0.000121041   0.015231389  -0.000464708   0.007743210  -0.001906545  -0.008219679  -0.002675766
                        -0.013376158   0.001653197   0.014228437   0.001254875  -0.083101898  -0.012575184   0.134281182  -0.016097559

   51    7.2  0.5 -0.5  -0.012606315   0.001880911   0.015757306   0.001452551  -0.131397763   0.005108694   0.015671177   0.007265801
                         0.010060870  -0.001493463  -0.055465141  -0.000771894   0.071627822  -0.002315113   0.052520689  -0.002872129

   52    8.2  0.5 -0.5  -0.000182321  -0.013325363   0.004839087  -0.012043394   0.006457999  -0.006075664  -0.002762628  -0.008331823
                         0.000265694  -0.042300168   0.002366426  -0.038108607   0.003354994   0.092702529   0.025174031   0.126877673


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000225   0.000000025  -0.000000006   0.000000219   0.000000007  -0.000000335  -0.000004304   0.000000018
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000223934  -0.000418672  -0.001421405  -0.001331102   0.001515985   0.000485641  -0.000003574  -0.001464156
                         0.003074095   0.000460147   0.000768597   0.002602529   0.002562461   0.000285321   0.000047285  -0.000636594

    3    3.2  1.5  1.5   0.000272511  -0.000527046  -0.000617437  -0.001558817   0.002238563   0.000179655   0.001592181  -0.000265569
                        -0.001435312  -0.001131964  -0.000266602  -0.001133450   0.000976877  -0.001575282   0.001791952   0.001075267

    4    4.2  1.5  1.5  -0.000269138   0.000529714   0.000697591   0.001611076  -0.002705169  -0.000591290   0.001185296   0.000604767
                         0.001637414  -0.000822342   0.000772204   0.001861375  -0.000533397  -0.001244075   0.001717384  -0.000987309

    5    5.2  1.5  1.5  -0.001122973  -0.004225725  -0.001924709   0.002168989  -0.000548542   0.002563843   0.000281388   0.000032622
                        -0.000186601   0.000702257   0.001497718  -0.000765636  -0.000158150  -0.000385938  -0.000130860   0.000000028

    6    6.2  1.5  1.5   0.000053114   0.001000001  -0.000461888  -0.000006804  -0.000350726   0.002274077  -0.002459825  -0.000178460
                        -0.000123176  -0.000089395   0.000097184  -0.000217970  -0.000171038  -0.000239436   0.001972334   0.000276958

    7    7.2  1.5  1.5  -0.001441939  -0.000313360  -0.000392255  -0.001923580  -0.000569411  -0.000002909   0.000082617  -0.000525350
                        -0.000388077   0.000207456  -0.000779350  -0.001778486   0.001297311  -0.000121757  -0.000156514   0.001673123

    8    8.2  1.5  1.5   0.000432022   0.000465156   0.000933257   0.000304796  -0.000015261  -0.000182805  -0.000036485   0.000295289
                         0.000603441   0.001941134   0.001127063  -0.000769438   0.000051200  -0.001322530   0.000033519  -0.000394315

    9    9.2  1.5  1.5  -0.001283099  -0.000173217  -0.000793705  -0.001777931   0.000948143   0.000059317   0.000159255  -0.001711676
                         0.000650109   0.000686986   0.000737674   0.001745436  -0.001100821  -0.000381932   0.000088873  -0.000581542

   10    1.2  1.5  0.5  -0.000000756   0.000000287   0.000000336   0.000000653  -0.000000606  -0.000000053  -0.000000346  -0.000003639
                        -0.000000041  -0.000000105   0.000000047   0.000000046  -0.000000406  -0.000000034   0.000000123   0.000002037

   11    2.2  1.5  0.5   0.000263851   0.001655907  -0.000337993  -0.000362658  -0.000016555   0.001743106   0.002658738   0.000242905
                         0.000232881   0.000872571  -0.000782038   0.000127318  -0.000625099   0.002540857   0.000682321   0.000037876

   12    3.2  1.5  0.5   0.000447146   0.001388133   0.000431584  -0.000742847  -0.001663070   0.001124178   0.000510563   0.000087816
                        -0.003583215  -0.000644578   0.000127877  -0.001408513   0.002336047  -0.000815062  -0.001690818  -0.000214978

   13    4.2  1.5  0.5  -0.000044425  -0.001604626   0.000248958   0.000148405  -0.000935915  -0.001366049  -0.000462220   0.000012827
                        -0.003006618   0.000844785  -0.000211387  -0.001204679   0.001659965   0.002202291   0.002048803   0.000199816

   14    5.2  1.5  0.5  -0.001467322   0.000299668   0.000484132   0.000195506  -0.001733731  -0.000307445   0.000284233  -0.002755368
                        -0.000197055  -0.000055932  -0.000097193   0.000121668  -0.000996103  -0.000062767  -0.000131209   0.001535543

   15    6.2  1.5  0.5   0.000703517  -0.001445442  -0.003016556  -0.005059151  -0.000395062  -0.000156633  -0.000031610  -0.000268298
                         0.000324837   0.000273055  -0.000267436  -0.000350154  -0.000265467  -0.000171890  -0.000063312   0.000141850

   16    7.2  1.5  0.5  -0.000390036  -0.002054864  -0.000883575   0.001026226  -0.000332153  -0.000045169  -0.000127436  -0.000258895
                         0.000248510  -0.000244243  -0.000305065   0.000407187   0.000333685   0.001849696   0.001053671  -0.000368325

   17    8.2  1.5  0.5   0.000064577   0.000684472   0.000032942  -0.000116775  -0.001531443  -0.000018170   0.000197432  -0.000975207
                         0.002004910  -0.000245181  -0.000296329   0.000361507   0.002439100   0.000155374  -0.000059445  -0.001788205

   18    9.2  1.5  0.5  -0.000437103  -0.001667806   0.000037579   0.000469881  -0.000264010  -0.000420308  -0.001023642  -0.000194314
                         0.000396509   0.000771876   0.001175455  -0.000699672   0.000567334  -0.001910813  -0.000155776  -0.000157833

   19    1.2  1.5 -0.5   0.000000293   0.000000752   0.000000585  -0.000000292  -0.000000063   0.000000724   0.000003270  -0.000000246
                         0.000000088  -0.000000087  -0.000000295   0.000000174   0.000000006  -0.000000083  -0.000002588   0.000000273

   20    2.2  1.5 -0.5   0.001600114  -0.000249287  -0.000383658   0.000008485   0.002713582   0.000301136  -0.000057587   0.000382796
                        -0.000971104   0.000248410   0.000023186  -0.000851910  -0.001459741  -0.000548033   0.000239000  -0.002718072

   21    3.2  1.5 -0.5   0.001424569  -0.000662999  -0.000138896  -0.000348291   0.000625761   0.000407835  -0.000232221   0.001757770
                         0.000559460  -0.003549620   0.001586329   0.000285150   0.001239567   0.002838413  -0.000000771   0.000172584

   22    4.2  1.5 -0.5  -0.001652773  -0.000137461   0.000603698  -0.000311426  -0.000205116   0.000071287   0.000179836  -0.002070290
                        -0.000746210  -0.003003802   0.001053007  -0.000098378  -0.002583429   0.001904295   0.000088034  -0.000353750

   23    5.2  1.5 -0.5   0.000302502   0.001452721   0.000133071  -0.000483962  -0.000302032   0.001997440   0.002470006   0.000229658
                         0.000037710  -0.000285421  -0.000187931   0.000098036  -0.000085082  -0.000090986  -0.001961891  -0.000212748

   24    6.2  1.5 -0.5  -0.001459308  -0.000682587  -0.004528031   0.002677139  -0.000217983   0.000472788   0.000233420   0.000046480
                        -0.000185152   0.000366783   0.002283540  -0.001415647   0.000081014  -0.000054942  -0.000193959   0.000053359

   25    7.2  1.5 -0.5  -0.002036335   0.000404349   0.000788206   0.000696283   0.000807386   0.000142338  -0.000241811  -0.001022681
                         0.000368050   0.000224470  -0.000773091  -0.000623665  -0.001664796   0.000448788  -0.000379760  -0.000283878

   26    8.2  1.5 -0.5   0.000698046   0.000056774  -0.000247756  -0.000145214   0.000055042   0.000243620  -0.001281384   0.000130223
                         0.000203343   0.002005146  -0.000287995  -0.000260401  -0.000146430   0.002869700  -0.001583276  -0.000159859

   27    9.2  1.5 -0.5  -0.001711428   0.000460280   0.000704325   0.000420924  -0.001249128  -0.000025289  -0.000071836  -0.000246230
                        -0.000669614   0.000369353   0.000462878   0.001098148   0.001505836   0.000625243  -0.000239811   0.001005723

   28    1.2  1.5 -1.5  -0.000000025  -0.000000224  -0.000000202  -0.000000005   0.000000298   0.000000006   0.000000007   0.000001641
                         0.000000001   0.000000014   0.000000085   0.000000002   0.000000154   0.000000003  -0.000000017  -0.000003979

   29    2.2  1.5 -1.5   0.000445730   0.000037639   0.002235717  -0.001608193  -0.000562395   0.002521605   0.000030339   0.000045076
                         0.000433988  -0.003082011   0.001883231  -0.000157637   0.000031086  -0.001583012   0.001596272   0.000014723

   30    3.2  1.5 -1.5   0.000457634   0.000358803   0.000997697  -0.000465853   0.000562111   0.002437349  -0.001095306   0.001049639
                        -0.001161762   0.001416207  -0.001649006   0.000485063  -0.001482505   0.000157418  -0.000164410   0.002155085

   31    4.2  1.5 -1.5  -0.000578470  -0.000367657  -0.000763753   0.000343789   0.001095605  -0.002648888   0.001143303   0.001135818
                        -0.000788806  -0.001618144   0.002340292  -0.000982213  -0.000834864  -0.000765404  -0.000182704   0.001750500

   32    5.2  1.5 -1.5   0.004260457  -0.001109635  -0.002296200  -0.002354742  -0.002102030  -0.000560035   0.000012410  -0.000228251
                         0.000445450   0.000254164   0.000134830  -0.000634708  -0.001517798  -0.000110772  -0.000030169   0.000210250

   33    6.2  1.5 -1.5  -0.001003577   0.000060465  -0.000078206  -0.000463453  -0.001911599  -0.000390112  -0.000324077   0.002761142
                        -0.000028763   0.000119738  -0.000203571   0.000089424  -0.001254809  -0.000008677   0.000059398  -0.001522149

   34    7.2  1.5 -1.5   0.000325331  -0.001415834   0.001083957  -0.000059548   0.000058375   0.000088310  -0.001747049  -0.000176190
                         0.000188128   0.000474558  -0.002384997   0.000870462  -0.000106891  -0.001414018  -0.000152167   0.000016710

   35    8.2  1.5 -1.5  -0.000346928   0.000394742  -0.000579181   0.000423505   0.000768471   0.000009895   0.000477109   0.000044897
                         0.001965709  -0.000628460  -0.000591172  -0.001400672  -0.001091767  -0.000052502  -0.000122665  -0.000020951

   36    9.2  1.5 -1.5   0.000214441  -0.001320062   0.002315443  -0.001017568   0.000122278   0.000338357  -0.000114917   0.000021449
                         0.000675255  -0.000571333   0.000919951  -0.000372406  -0.000366659   0.001412903   0.001804112   0.000181109

   37    1.2  0.5  0.5   0.649841573   0.021546677   0.059005729   0.390030508  -0.002158114   0.001714198  -0.000000010  -0.000002094
                         0.035400003   0.016421432   0.134732230   0.035500117  -0.025057844  -0.003583705  -0.000000038  -0.000004641

   38    2.2  0.5  0.5  -0.057464209   0.005727846  -0.101675601  -0.057352325   0.047583505  -0.005275524  -0.000001236  -0.000006626
                         0.035325727  -0.028985466   0.281061642   0.701282284  -0.081117246  -0.034985024  -0.000000406  -0.000002117

   39    3.2  0.5  0.5  -0.039054638   0.099288864   0.126021146  -0.080604359   0.007243754   0.015795575   0.000004377  -0.000002330
                         0.157979233   0.688081238   0.241001046  -0.067908981  -0.020509784   0.065679757   0.000001203  -0.000001013

   40    4.2  0.5  0.5   0.116504165  -0.058317894  -0.092306966  -0.147053435   0.621526665   0.085717378  -0.000001043  -0.000007271
                         0.007550119   0.015283496  -0.004797011  -0.007672369   0.398025118   0.020605166   0.000000463   0.000006879

   41    5.2  0.5  0.5  -0.096898776  -0.180448908  -0.266693201   0.166238019  -0.079067787   0.648288447   0.000009057  -0.000000717
                        -0.019618762   0.028312556   0.141129018  -0.080552796  -0.011572988  -0.070481466  -0.000004208   0.000000977

   42    6.2  0.5  0.5  -0.000000179  -0.000000663   0.000000345  -0.000000642  -0.000000184   0.000000071   0.189619715   0.006681912
                         0.000002485   0.000002279   0.000001971  -0.000002657   0.000000100   0.000004231   0.545217582   0.011145361

   43    7.2  0.5  0.5  -0.000000444   0.000002667   0.000002069   0.000000170  -0.000000182   0.000000561   0.542514342   0.050386924
                         0.000001042   0.000000558  -0.000000256  -0.000000230  -0.000000055   0.000001165  -0.188713010  -0.028609346

   44    8.2  0.5  0.5   0.000000249   0.000000665  -0.000000286  -0.000000362   0.000002811   0.000000246  -0.003888446   0.281506249
                        -0.000005008   0.000002115   0.000002385   0.000004148  -0.000004216  -0.000000049  -0.012396973   0.503828269

   45    1.2  0.5 -0.5  -0.020514274   0.646511864  -0.345787913   0.002176377   0.000118399  -0.013399787   0.000003492  -0.000000031
                         0.017694273  -0.074630019   0.183887939  -0.147070436  -0.003970819   0.021283767   0.000003705  -0.000000024

   46    2.2  0.5 -0.5  -0.007470066  -0.059495142   0.324662729  -0.202658694   0.020719343   0.005126436  -0.000000569   0.000000096
                        -0.028586073  -0.031786325   0.624243737  -0.219688480  -0.028679119   0.093903766   0.000006932  -0.000001297

   47    3.2  0.5 -0.5  -0.057500098  -0.048535903   0.047985301   0.022767864  -0.044134456  -0.002959024   0.000000048  -0.000000557
                         0.692825958  -0.155328584  -0.093840840  -0.271006379   0.051141768   0.021549185   0.000002541   0.000004505

   48    4.2  0.5 -0.5   0.059135345   0.115834434   0.132586500  -0.083233291  -0.085631059   0.734818685  -0.000009131   0.000000825
                         0.011729147  -0.014581108  -0.064065577   0.040197098  -0.020961000  -0.068999204   0.000004100  -0.000000788

   49    5.2  0.5 -0.5   0.181830720  -0.095535149  -0.184464703  -0.300545782  -0.543935249  -0.075582021  -0.000001177  -0.000007343
                         0.017349315   0.025442163  -0.009828808  -0.026737540  -0.359694305  -0.025942380   0.000000291   0.000006769

   50    6.2  0.5 -0.5   0.000000800  -0.000000329  -0.000000438  -0.000000446  -0.000002002  -0.000000118  -0.007756330   0.431754483
                         0.000002235  -0.000002469  -0.000002699  -0.000001951   0.000003729  -0.000000173  -0.010426235   0.383152600

   51    7.2  0.5 -0.5  -0.000002629  -0.000000506  -0.000000246   0.000002007  -0.000001032  -0.000000187   0.045657751  -0.381283814
                         0.000000718  -0.000001013  -0.000000147  -0.000000566   0.000000778  -0.000000034  -0.035675013   0.429601052

   52    8.2  0.5 -0.5  -0.000000536   0.000000551   0.000001941  -0.000001188  -0.000000196   0.000000567  -0.358461038  -0.009978371
                         0.000002152   0.000004984   0.000003683  -0.000002088  -0.000000156   0.000005035  -0.452321100  -0.008320881


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.000043341  -0.064572226   0.027316689  -0.000082135   0.000000001  -0.000000004  -0.000114505   0.000844640
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000555930   0.000060554   0.000185475  -0.001350892   0.033030296   0.078130009  -0.140055332   0.038456653
                         0.000132300   0.000060900   0.000144117  -0.000021724  -0.094285329  -0.180804911   0.357767335   0.067734340

    3    3.2  1.5  1.5   0.000020645   0.000356110   0.000749733   0.000154018   0.187220288  -0.261218320   0.197318934   0.015360023
                        -0.000397935   0.000269878   0.000640397   0.000927150   0.124370047  -0.120621228   0.133783159  -0.310454556

    4    4.2  1.5  1.5  -0.000155626   0.000186077   0.000411169   0.000162451   0.278148337   0.016235595  -0.306437620  -0.048920696
                         0.000383386   0.000366042   0.000863242  -0.000966241   0.176112020  -0.014975640  -0.071723162  -0.228108444

    5    5.2  1.5  1.5  -0.000012901  -0.001313784   0.000695052   0.000024293   0.026511537  -0.015727428  -0.015905721   0.134732693
                         0.000002631  -0.000024846  -0.000058788  -0.000012071  -0.025024125   0.016910294   0.003102247  -0.008273894

    6    6.2  1.5  1.5   0.000048790  -0.000568027  -0.000982419  -0.000051221  -0.212867719   0.089945287  -0.036199176   0.401150622
                        -0.000115839   0.000353072   0.000835593   0.000290456   0.321750641  -0.187587204  -0.049204790  -0.019644488

    7    7.2  1.5  1.5   0.000111305   0.000087638   0.000207905   0.000184355  -0.037879358  -0.070852793   0.107426509   0.014570031
                        -0.000865460  -0.001137826   0.000022534   0.002052163  -0.015161024  -0.018586188   0.025788121   0.013711060

    8    8.2  1.5  1.5  -0.000110169  -0.000038741  -0.000091326   0.000142715   0.008621937   0.017040337  -0.025769971  -0.004711250
                         0.000216325  -0.003600680   0.001621960  -0.000565911   0.007551255   0.011534357  -0.029261329   0.086521043

    9    9.2  1.5  1.5   0.000888566   0.000169332   0.000395332  -0.002120607   0.016533002   0.020853720  -0.032344822   0.009048820
                         0.000135211  -0.000234885   0.000362839   0.000140316  -0.038673720  -0.072573349   0.108969267   0.022970497

   10    1.2  1.5  0.5  -0.020667027  -0.005450741  -0.012799856   0.039091197  -0.000000008  -0.000000013  -0.000992938  -0.000287316
                         0.016909192   0.001859916   0.004274236  -0.049591675  -0.000000018  -0.000000021  -0.001615706  -0.000057588

   11    2.2  1.5  0.5  -0.000051082   0.000828142  -0.000346722  -0.000030176   0.331176078  -0.184686394   0.019394581  -0.102955153
                         0.000018478  -0.001091488   0.000460469   0.000026059  -0.022292340   0.030069668  -0.021864347   0.136437910

   12    3.2  1.5  0.5   0.001016800   0.000724283  -0.000313186   0.000463687  -0.001094588   0.021585886  -0.100826254  -0.107683560
                         0.000210433   0.000502958  -0.000210152  -0.000035651  -0.210227515   0.126518226   0.075431112  -0.053300517

   13    4.2  1.5  0.5   0.000857885  -0.000816557   0.000343902   0.000378789   0.023887851  -0.028782572  -0.108408363   0.089510470
                         0.000194200  -0.000658779   0.000279336  -0.000008385   0.255256477  -0.136176233   0.047068922   0.091050717

   14    5.2  1.5  0.5   0.000494863   0.000117343   0.000269409  -0.000812635  -0.092514236  -0.200596457   0.207527821   0.058863436
                        -0.000477972  -0.000022677  -0.000097423   0.000992257  -0.196269443  -0.323682320   0.344360539   0.011770817

   15    6.2  1.5  0.5  -0.000230820   0.000004176   0.000028622  -0.000068662  -0.017444848  -0.013995639  -0.077500058  -0.006673681
                         0.001302324   0.000035020  -0.000023601   0.000676266  -0.022321638  -0.029279148  -0.110024258  -0.023107704

   16    7.2  1.5  0.5  -0.000133209  -0.001678870   0.000302962   0.000465497   0.018472073   0.012302182  -0.010165032   0.126348893
                        -0.000316468  -0.000478041   0.002906726   0.000653479   0.036435458  -0.034456552  -0.014065667  -0.060381375

   17    8.2  1.5  0.5  -0.000324167   0.000635559  -0.000003318   0.000916482   0.044602121   0.071195746   0.061428171  -0.043139758
                        -0.000327119  -0.000113057  -0.000936795   0.000592001  -0.031398261  -0.037934398  -0.030737645   0.000602910

   18    9.2  1.5  0.5   0.000189800  -0.002482955  -0.001814294  -0.000396165  -0.039283854   0.029880987   0.001293597   0.126852181
                        -0.000077803   0.001439271  -0.001094795   0.000282912   0.004529078  -0.010496732  -0.018324831   0.055961283

   19    1.2  1.5 -0.5  -0.002946017   0.020814547   0.049209579   0.004149689   0.000000013  -0.000000008   0.000207784  -0.001894959
                         0.004948823  -0.016727265  -0.039571116  -0.012840775  -0.000000021   0.000000018   0.000206623   0.000074573

   20    2.2  1.5 -0.5   0.001239046   0.000028634  -0.000025765   0.000457079   0.183652322   0.330313874  -0.056029351  -0.007366688
                        -0.000584748  -0.000046162   0.000030428  -0.000351179   0.035847925   0.032669363   0.161479964   0.028283059

   21    3.2  1.5 -0.5  -0.000342452  -0.000004200   0.000031144  -0.000213185  -0.025543758  -0.007688251   0.104223550   0.006534523
                        -0.000812575   0.001038338  -0.000464011  -0.000311130   0.125778887   0.210089736   0.059784160  -0.125750094

   22    4.2  1.5 -0.5   0.000475845   0.000012752   0.000004705   0.000282664   0.033039846   0.031882720  -0.125467014  -0.021247510
                         0.000935054   0.000879498  -0.000378852   0.000341172  -0.135206403  -0.254381585  -0.023672473  -0.116260052

   23    5.2  1.5 -0.5   0.000046434  -0.000569907  -0.000984316  -0.000094801   0.210650686  -0.098625092  -0.042546495   0.401596163
                        -0.000110125   0.000385426   0.000822236   0.000270343  -0.317230943   0.193270974  -0.042346807  -0.019300237

   24    6.2  1.5 -0.5  -0.000033401   0.001321914  -0.000675567  -0.000023322   0.014907150  -0.018136426   0.022911287  -0.134542859
                        -0.000011321   0.000043248   0.000075228   0.000028850  -0.028825740   0.021763462  -0.007319623  -0.003132894

   25    7.2  1.5 -0.5   0.000120836  -0.000282115  -0.000657971   0.002909532  -0.011215330   0.019605854  -0.020175663  -0.017343401
                         0.001741415  -0.000195723  -0.000459127   0.000274710  -0.034825480  -0.035838116  -0.138574514  -0.000614266

   26    8.2  1.5 -0.5   0.000241937  -0.000253081  -0.000600877  -0.000936783  -0.069970826   0.043595306   0.023514239   0.008661341
                        -0.000598484  -0.000384761  -0.000910687   0.000005783  -0.040148927   0.032781845   0.036172956   0.068141061

   27    9.2  1.5 -0.5  -0.001921243  -0.000115340  -0.000279050  -0.001112369  -0.029537033  -0.039122461  -0.117104728  -0.014502796
                         0.002131992   0.000169628   0.000398895  -0.001803573  -0.011428843  -0.005759065  -0.074226838   0.011275713

   28    1.2  1.5 -1.5   0.013341962  -0.000008955  -0.000000798  -0.000265371  -0.000000004  -0.000000001   0.000470195   0.000063743
                        -0.063178829   0.000042406  -0.000082131  -0.027315400  -0.000000000  -0.000000000   0.000701664   0.000095122

   29    2.2  1.5 -1.5   0.000047074  -0.000014579  -0.000034846  -0.000145912   0.072420261  -0.030056598   0.077676787  -0.219240534
                         0.000071830  -0.000571269  -0.001350617  -0.000184066   0.183166645  -0.095274995  -0.005759484   0.315509985

   30    3.2  1.5 -1.5   0.000190474   0.000393614   0.000928602  -0.000647650  -0.264873306  -0.191029276  -0.249352101  -0.220980918
                         0.000404188   0.000062022   0.000145004  -0.000743476   0.112368246   0.118436315   0.185584188  -0.089443441

   31    4.2  1.5 -1.5   0.000319695  -0.000407269  -0.000964618  -0.000867196   0.015757866  -0.283535571  -0.216728895   0.230170374
                         0.000257694   0.000073052   0.000171830  -0.000402763   0.015477532   0.167300690   0.086343977   0.214638828

   32    5.2  1.5 -1.5   0.000247145  -0.000005240  -0.000011835   0.000052033  -0.015189265  -0.025713560   0.068129817   0.006277298
                        -0.001290567   0.000012079   0.000024409  -0.000695591  -0.017395295  -0.025843398   0.116531902   0.014940263

   33    6.2  1.5 -1.5   0.000462820   0.000123421   0.000289945  -0.000826010   0.084016984   0.202670630   0.206993818   0.061027109
                        -0.000482818  -0.000023802  -0.000054040   0.000990490   0.190316211   0.328269336   0.344182054   0.002680223

   34    7.2  1.5 -1.5  -0.001131380   0.000869782   0.002053857  -0.000024553  -0.071400922   0.038336274   0.019500999  -0.081225186
                        -0.000149352   0.000069919   0.000164410  -0.000207676   0.016354605  -0.013965403   0.004471017  -0.074886255

   35    8.2  1.5 -1.5  -0.003514977  -0.000234420  -0.000564498  -0.001620997   0.017393750  -0.008854555   0.069252635   0.038653811
                        -0.000781880   0.000063095   0.000148206   0.000107078  -0.010994178   0.007277095  -0.052078397   0.005118559

   36    9.2  1.5 -1.5  -0.000264804   0.000051303   0.000119709  -0.000366663   0.018567052  -0.015311790   0.024119502  -0.072517872
                         0.000117146  -0.000897329  -0.002121870  -0.000391788   0.073191756  -0.039173281  -0.005270152   0.087530834

   37    1.2  0.5  0.5  -0.015049883  -0.002207973  -0.009749788   0.027737086  -0.000000016  -0.000000010   0.000014896  -0.000246326
                        -0.083505494   0.000885311   0.002381208  -0.086113416  -0.000000013  -0.000000007  -0.000509780   0.000070665

   38    2.2  0.5  0.5  -0.104413833  -0.006942923  -0.015905464  -0.056652314  -0.000000010   0.000000019   0.001322408   0.000240018
                        -0.010046446   0.007040850  -0.028396814   0.011008390  -0.000000001   0.000000004  -0.000808037   0.000498436

   39    3.2  0.5  0.5  -0.038353584   0.027874457   0.060660079   0.003503586   0.000000052  -0.000000036   0.000082172  -0.000172956
                        -0.007657031  -0.025206112   0.093578275   0.010002295   0.000000038  -0.000000022   0.000032155  -0.002142748

   40    4.2  0.5  0.5  -0.043922310  -0.013155719  -0.021876498   0.059433223  -0.000000009  -0.000000012  -0.001994840  -0.000292135
                         0.082240953   0.004025890   0.011006303  -0.049769944  -0.000000023  -0.000000031  -0.003173398  -0.000204840

   41    5.2  0.5  0.5  -0.005885897   0.087912862   0.048512777   0.008655895   0.000000035  -0.000000020   0.000319530  -0.003740988
                         0.014933451  -0.024720866  -0.063624000  -0.020424488  -0.000000067   0.000000046   0.000152050   0.000175555

   42    6.2  0.5  0.5  -0.005870046   0.261408841   0.035528292   0.017313242  -0.002469543   0.001237446   0.000538610  -0.000074968
                        -0.006289282   0.747152137   0.095456190   0.012295990  -0.002998558   0.001695323  -0.000562308   0.003763126

   43    7.2  0.5  0.5  -0.025521413  -0.458124945   0.593144178   0.045612446  -0.003078220   0.001541015   0.000070829   0.000518098
                         0.021230343   0.158734618  -0.209205862  -0.060997526   0.002324586  -0.001497212  -0.000393954   0.001240039

   44    8.2  0.5  0.5  -0.193641562  -0.000806504  -0.046044605   0.567858281   0.001763048   0.003380586  -0.003841559  -0.000144295
                        -0.236606880  -0.003837674  -0.138752840   0.447514343  -0.001138703  -0.001913336   0.002342762   0.000984876

   45    1.2  0.5 -0.5   0.001322420   0.078593919  -0.085839898  -0.002286380  -0.000000010   0.000000016  -0.000078422   0.000415195
                        -0.001977404   0.031979092   0.028572335   0.009772460   0.000000006  -0.000000013  -0.000243967  -0.000296160

   46    2.2  0.5 -0.5   0.008323468  -0.011744411   0.010457515   0.028549990   0.000000019   0.000000010   0.000547677  -0.000064902
                        -0.005338316   0.104236502  -0.056756583   0.015628850  -0.000000004  -0.000000000  -0.000078081  -0.001548378

   47    3.2  0.5 -0.5  -0.030421634  -0.000432846   0.010035859  -0.094163148  -0.000000036  -0.000000053  -0.001876319  -0.000072456
                         0.022064851   0.039108058   0.003406253  -0.059748141   0.000000021   0.000000036   0.001049149  -0.000050362

   48    4.2  0.5 -0.5   0.006657261  -0.089541546  -0.049190225  -0.010793262  -0.000000013   0.000000010  -0.000332792   0.003746715
                        -0.012040001   0.025981827   0.059913914   0.021982388   0.000000031  -0.000000023  -0.000128654  -0.000109405

   49    5.2  0.5 -0.5  -0.042352039  -0.015827352  -0.020339435   0.063149715  -0.000000018  -0.000000033  -0.001936700  -0.000304188
                         0.080907956   0.002673325   0.008853902  -0.049128570  -0.000000047  -0.000000068  -0.003205465  -0.000180799

   50    6.2  0.5 -0.5   0.677016927   0.004940693   0.012463602  -0.095796829   0.001290015   0.002562384   0.003084394   0.000167289
                         0.410145071   0.007042873   0.017192974  -0.034599297  -0.001655674  -0.002919621  -0.002157139  -0.000760464

   51    7.2  0.5 -0.5   0.249967425  -0.026045469  -0.060551541   0.203433829   0.001493293   0.003003791   0.001318548   0.000287839
                        -0.415441247   0.020584060   0.046202861  -0.595148542   0.001544813   0.002419997  -0.000259909  -0.000278146

   52    8.2  0.5 -0.5  -0.003588221   0.191490798   0.453009745   0.139193598   0.003318907  -0.001726463   0.000737836   0.000192330
                        -0.001582044   0.238350884   0.563484060   0.044694503   0.002018433  -0.001193444  -0.000668132   0.004495456


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.001918493   0.000041818   0.000000025   0.000000003   0.000000053   0.000000005   0.000000069  -0.000000008
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.021200573   0.068937321  -0.025883014   0.173079674  -0.001936031   0.420784447   0.005631362   0.030158563
                        -0.005032145  -0.157616303   0.117514173   0.126973126   0.000449101  -0.333326261   0.002323560   0.125524608

    3    3.2  1.5  1.5  -0.004530012  -0.085179086  -0.010326584   0.389530667   0.019985196  -0.003479904  -0.017007708  -0.086867150
                         0.145595923  -0.042629109  -0.098762263  -0.058812233   0.056175868   0.131306703   0.015977282   0.060045916

    4    4.2  1.5  1.5  -0.003263292   0.134651484  -0.173577371  -0.315373235   0.102879835   0.006429717   0.007621185   0.103647800
                         0.094930787   0.055828550  -0.180521093   0.100707297   0.081800064  -0.203304775   0.009914154  -0.064910577

    5    5.2  1.5  1.5   0.406408167   0.007876775   0.121198793  -0.011781335   0.185972525   0.013961011   0.633195157  -0.086547729
                         0.003846204  -0.000851878   0.013165279  -0.000314247  -0.006496363  -0.000358231  -0.018109347  -0.006281684

    6    6.2  1.5  1.5  -0.134193304  -0.012350300   0.210891262  -0.014875861  -0.079209803   0.009007266   0.041842070  -0.009927024
                         0.005221939   0.022401216  -0.116534715   0.083270139   0.085220706  -0.002417667   0.005149966  -0.005446319

    7    7.2  1.5  1.5   0.001027727  -0.047283938   0.017202586  -0.041173411   0.010457973  -0.091830220   0.004201519   0.067737022
                         0.057922966  -0.013912684   0.008286495  -0.056134338   0.019387536  -0.181298643   0.048632510  -0.024036399

    8    8.2  1.5  1.5   0.000293830   0.011125700  -0.005267654   0.007577051  -0.003512341   0.041088364   0.004395498  -0.013521559
                         0.192415281   0.012628534   0.038759105  -0.003376109   0.050561082   0.050972466   0.180792710  -0.013306481

    9    9.2  1.5  1.5  -0.006276805   0.016634682  -0.017245355   0.004799600   0.009292023  -0.161871738   0.000022022  -0.029375820
                         0.018485104  -0.047986405   0.028504838   0.141449504  -0.017551072   0.039107957   0.012172837  -0.071789621

   10    1.2  1.5  0.5   0.000058297   0.000409786   0.000000005   0.000000021  -0.000000003  -0.000000013  -0.000000000  -0.000000001
                        -0.000087205   0.000740003   0.000000005   0.000000010  -0.000000003  -0.000000007  -0.000000000  -0.000000008

   11    2.2  1.5  0.5  -0.236635902   0.001392965   0.287599400  -0.118760091  -0.199888311   0.046924611  -0.087435940  -0.002012689
                         0.312339689  -0.010884399   0.142328275   0.042067496  -0.009909138  -0.000659505   0.071987873  -0.003764414

   12    3.2  1.5  0.5  -0.202133965  -0.258719677   0.069021650   0.142056897  -0.046709771  -0.180191448  -0.031276545   0.181510342
                        -0.147263331   0.154839045  -0.173345777   0.290534817   0.066907422   0.347657600  -0.010704836   0.091556761

   13    4.2  1.5  0.5   0.237831891  -0.213689480  -0.083971311   0.038374129   0.038176835  -0.154623935   0.105367509   0.136635041
                         0.185423544   0.129870635   0.269130953   0.093019221  -0.157794856   0.340286686   0.041455484   0.078346375

   14    5.2  1.5  0.5  -0.012731338  -0.072440784  -0.044763732  -0.226573248   0.015228628   0.022389391   0.006427660   0.046055265
                         0.012195037  -0.113694549  -0.081698541  -0.033623333   0.018101716   0.113346433  -0.005549992  -0.059222216

   15    6.2  1.5  0.5   0.005186561  -0.206441328  -0.003431748   0.085691021  -0.023030426   0.274261159  -0.026253809  -0.276457573
                        -0.002337308  -0.349856246  -0.006844354  -0.066438193   0.025483534   0.155779013   0.055644103   0.515688777

   16    7.2  1.5  0.5   0.041806591  -0.002763910   0.021094100   0.036436647  -0.041076927  -0.029476244  -0.120907532   0.016714650
                         0.118061245   0.012157868  -0.128570748  -0.017500587   0.027582225   0.000450287  -0.096482438   0.017778149

   17    8.2  1.5  0.5  -0.011383343  -0.025516628   0.059429093   0.036153864   0.000620892  -0.099318520   0.041999792   0.005976030
                        -0.017742824   0.011545568  -0.009588952  -0.200228327   0.000629819   0.048919082   0.017563970   0.009691666

   18    9.2  1.5  0.5   0.037457123  -0.007604999   0.076123201  -0.028496833  -0.087984172  -0.001266778  -0.112590549   0.017919826
                        -0.128957722   0.001395974   0.052962920  -0.001609846   0.028097791   0.010976800   0.119522605  -0.014561686

   19    1.2  1.5 -0.5   0.000845689   0.000046003  -0.000000017   0.000000003   0.000000014  -0.000000004  -0.000000006  -0.000000000
                        -0.000018446  -0.000094271   0.000000016  -0.000000007  -0.000000001   0.000000001  -0.000000004   0.000000000

   20    2.2  1.5 -0.5  -0.008703437  -0.150753165   0.125961636   0.228456483  -0.042817621  -0.187435915  -0.002450113  -0.103710496
                         0.006682863   0.361698928   0.002701759  -0.225340604  -0.019209511  -0.070152022  -0.003495522   0.045512971

   21    3.2  1.5 -0.5   0.003547630   0.228998334  -0.043777905   0.119901652   0.027589860  -0.016355282  -0.000260560  -0.004570082
                        -0.301493641   0.100520601   0.320428052   0.142955730   0.390606662  -0.079943171   0.203294310   0.032740344

   22    4.2  1.5 -0.5   0.004642148  -0.279941217  -0.007267136  -0.164135745   0.007039954  -0.027512228   0.008213867   0.010585060
                        -0.250016052  -0.112155312   0.100361039  -0.229220653   0.373703130   0.159999264   0.157288974  -0.112733427

   23    5.2  1.5 -0.5  -0.134704899  -0.004128090   0.204599127  -0.016884618  -0.065492666   0.021157358  -0.073636373   0.007854220
                        -0.005357937   0.017139567  -0.102981370   0.091615244   0.095180930  -0.010580617   0.014354194  -0.003229313

   24    6.2  1.5 -0.5  -0.406217092  -0.000591395  -0.102203509  -0.001112216  -0.313546408  -0.011039683   0.584954940  -0.061503203
                        -0.002255885  -0.005658063  -0.036213630   0.007575292   0.034277307  -0.032525935  -0.013835601  -0.001698431

   25    7.2  1.5 -0.5   0.009113637  -0.123056506  -0.040086812   0.060350244   0.026882113  -0.026775193   0.008316029   0.031497183
                        -0.008508500   0.023309758  -0.005191086   0.115469677   0.012099740  -0.041607476   0.022940919   0.151444444

   26    8.2  1.5 -0.5  -0.002869277   0.021061131  -0.097122382   0.059438262   0.071784474   0.000819712   0.005949316   0.003291551
                        -0.027859750   0.000903933  -0.178789619  -0.009531954   0.084286620  -0.000332042   0.009708088  -0.045405300

   27    9.2  1.5 -0.5  -0.002622211   0.092569777   0.026554427   0.055673722  -0.003188974  -0.069633940  -0.021083870  -0.157481680
                        -0.007273841  -0.097282920  -0.010465347  -0.074163665   0.010579476  -0.060677960   0.009414525   0.046495217

   28    1.2  1.5 -1.5  -0.000021051   0.000965781   0.000000003  -0.000000024   0.000000005  -0.000000048  -0.000000004  -0.000000031
                        -0.000036133   0.001657674  -0.000000001   0.000000008   0.000000002  -0.000000021   0.000000007   0.000000061

   29    2.2  1.5 -1.5   0.101484900  -0.015020521   0.124529256   0.061430194   0.254147929   0.001599318  -0.098384531  -0.000469376
                        -0.138910288  -0.015785143  -0.174846257   0.103469043   0.472836945   0.001179869  -0.083584989   0.006073784

   30    3.2  1.5 -1.5   0.079713346   0.123521720   0.388324122  -0.021166558   0.048864036  -0.040619261  -0.092798274   0.021935130
                         0.052139237  -0.077208022  -0.066312856  -0.097018554  -0.121925659   0.043648731   0.050397363  -0.007961518

   31    4.2  1.5 -1.5  -0.116023025   0.080382184  -0.331046084   0.108209005  -0.074700814  -0.126879749   0.104715465   0.005405032
                        -0.088241184  -0.050608378   0.003275190  -0.225849020   0.189192922   0.034308022  -0.063173734   0.011276459

   32    5.2  1.5 -1.5  -0.003229151   0.207911632  -0.011088465  -0.110956114   0.012674866  -0.168156302  -0.033472159  -0.302051796
                        -0.007234768   0.349220767   0.003993064   0.050509530   0.005863952  -0.079695925   0.080059875   0.556802271

   33    6.2  1.5 -1.5  -0.013138555  -0.063041703  -0.040239253  -0.236798348   0.007310587   0.038931294   0.000377425  -0.014296937
                         0.021948183  -0.118578478  -0.074404367  -0.044519729   0.005790619   0.109640850   0.011316614   0.039659533

   34    7.2  1.5 -1.5   0.035824273   0.050565702  -0.021492441  -0.013736109  -0.156183551  -0.017287447   0.052030761   0.041496133
                         0.033851957  -0.028270763   0.066214717   0.013263269   0.130033402   0.013652469  -0.049586818   0.025706899

   35    8.2  1.5 -1.5  -0.016512429   0.166404336   0.008253579   0.017156920   0.057930027  -0.016821293   0.005767819   0.159330665
                        -0.003255881  -0.096609128   0.000829607   0.035151907  -0.030505048   0.047810079   0.018072832   0.085551526

   36    9.2  1.5 -1.5   0.033088653   0.012812273  -0.039801605   0.025314617  -0.133101182  -0.001572114   0.050792019   0.010851472
                        -0.038529842  -0.014728986  -0.135819110   0.021658675  -0.100079804  -0.019796723   0.058624733   0.005515797

   37    1.2  0.5  0.5  -0.000000471   0.002300196  -0.000289811  -0.000107907  -0.000264991   0.003714582  -0.000083220  -0.000133053
                        -0.000117223   0.002960737  -0.000592120  -0.001186252   0.000186371   0.003235465  -0.000164670  -0.000685168

   38    2.2  0.5  0.5  -0.000071134   0.002538700   0.000319094   0.000513738  -0.000376228  -0.001994327  -0.000323086  -0.002986376
                        -0.000806695  -0.002141978   0.000554690   0.001477973  -0.000930966   0.002513492  -0.001293351  -0.001375271

   39    3.2  0.5  0.5  -0.000005706   0.000890872  -0.001329696   0.001115641   0.000845025  -0.000721592  -0.000030140  -0.000851228
                         0.002947673  -0.000533527  -0.001068294   0.000468719   0.001908420   0.000643177   0.003929067  -0.000959571

   40    4.2  0.5  0.5   0.000133185  -0.000237645  -0.000649543  -0.004678329   0.000404736  -0.001180285   0.000234982   0.000079225
                        -0.000071451  -0.000373995  -0.001385011  -0.000139297   0.000351131   0.000857746   0.000143529  -0.000038064

   41    5.2  0.5  0.5  -0.000403500  -0.000061105  -0.002986778  -0.000014250  -0.000060804  -0.000483143  -0.003740233   0.000543257
                        -0.000129743  -0.000248584   0.001164230  -0.000985175  -0.000970662   0.000134719  -0.000083033   0.000110151

   42    6.2  0.5  0.5   0.001634668  -0.000198004   0.000000012   0.000000006   0.000000016  -0.000000005   0.000000020  -0.000000004
                         0.002797853   0.000069282   0.000000023   0.000000011   0.000000054   0.000000000   0.000000056  -0.000000009

   43    7.2  0.5  0.5  -0.004723537  -0.000171195  -0.000000028  -0.000000004  -0.000000038  -0.000000004  -0.000000063   0.000000008
                         0.000997953   0.000117082   0.000000014  -0.000000006   0.000000013  -0.000000003   0.000000023   0.000000000

   44    8.2  0.5  0.5  -0.000081809   0.001763257   0.000000015   0.000000017  -0.000000005  -0.000000021   0.000000001   0.000000007
                         0.000078650  -0.000979574  -0.000000007  -0.000000057   0.000000009   0.000000017   0.000000008   0.000000016

   45    1.2  0.5 -0.5  -0.003716157  -0.000101524   0.000269549   0.000089500   0.004692923   0.000169385   0.000551278  -0.000109355
                        -0.000497031   0.000058604   0.001160251  -0.000653135  -0.001497607   0.000276158   0.000428078  -0.000148604

   46    2.2  0.5 -0.5   0.000572779  -0.000732834   0.000024324  -0.000129045  -0.000834373   0.000714493  -0.000121269  -0.001008138
                        -0.003271848   0.000344632  -0.001564526   0.000626777  -0.003098193  -0.000705511   0.003285591  -0.000872239

   47    3.2  0.5 -0.5   0.000012523   0.002544064   0.000912370   0.000927597  -0.000407458  -0.001532400   0.000471856   0.003519383
                        -0.001038339  -0.001488807  -0.000794944  -0.001431400  -0.000876556   0.001416999   0.001192777   0.001747117

   48    4.2  0.5 -0.5   0.000442783   0.000005309  -0.004398641   0.000182432  -0.000743492  -0.000510779   0.000069734   0.000021970
                         0.000017066   0.000151048   0.001599411  -0.001518842  -0.001255397   0.000161891  -0.000053503   0.000274471

   49    5.2  0.5 -0.5   0.000245549  -0.000315229   0.000295424   0.003201214  -0.000390137   0.000440656   0.000147001   0.001614662
                        -0.000072341  -0.000283330   0.000939946   0.000168834  -0.000315229  -0.000867009  -0.000534464  -0.003374775

   50    6.2  0.5 -0.5   0.000039814   0.003240387   0.000000002  -0.000000004  -0.000000005  -0.000000036   0.000000006   0.000000041
                         0.000205962   0.000003979  -0.000000012   0.000000026  -0.000000002   0.000000043   0.000000008   0.000000043

   51    7.2  0.5 -0.5  -0.000014984  -0.001515576  -0.000000002   0.000000031  -0.000000005   0.000000030   0.000000003   0.000000049
                         0.000206861  -0.004583747   0.000000007   0.000000005   0.000000001   0.000000027  -0.000000007  -0.000000046

   52    8.2  0.5 -0.5  -0.000041233   0.000026774   0.000000034  -0.000000017  -0.000000013   0.000000001  -0.000000011   0.000000006
                        -0.002016666  -0.000110280   0.000000049  -0.000000001  -0.000000024   0.000000010  -0.000000013   0.000000005


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5  -0.000000018   0.000000001   0.006662476  -0.000016223  -0.002804631  -0.000000000  -0.000000000  -0.000000101
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.010207686  -0.035172024  -0.028847737  -0.020604783  -0.064493873  -0.075959578   0.098943714   0.220764511
                        -0.004112767   0.012520500   0.009876064  -0.034192254   0.023648912   0.056878217  -0.097646645   0.393314351

    3    3.2  1.5  1.5   0.047832594   0.027400936  -0.011557503  -0.004403123  -0.035419417   0.061806297   0.091393830  -0.268702199
                        -0.027416552   0.018692962   0.039517499   0.025620277   0.093734351   0.004493097   0.117409181   0.216785318

    4    4.2  1.5  1.5   0.049585018   0.007941954  -0.026881626   0.040633481  -0.066615372  -0.017094128  -0.074770558   0.303165797
                        -0.006138302  -0.028665336  -0.003526589  -0.003238698  -0.008346117  -0.095152313  -0.034306527  -0.161139564

    5    5.2  1.5  1.5  -0.000888069   0.000604329  -0.114580252   0.002498368   0.054618068  -0.003643125   0.176493792   0.055233488
                        -0.007096661  -0.002512015   0.003437672  -0.001332355   0.008176674  -0.004937716  -0.010993499  -0.049553347

    6    6.2  1.5  1.5   0.024376461   0.005745537  -0.037691905  -0.018545433  -0.058394280   0.062482910   0.067309373   0.047186885
                         0.067740600   0.027384083  -0.027613097   0.024662131  -0.065721942   0.038334275  -0.008468882   0.015817429

    7    7.2  1.5  1.5   0.098433671  -0.187827468  -0.047299199   0.103460449  -0.112960917  -0.200318631  -0.000000255  -0.000000229
                         0.138889940  -0.402714796   0.090134461  -0.074779467  -0.277448345  -0.226961239   0.000000780   0.000003365

    8    8.2  1.5  1.5  -0.013124625   0.012199420   0.004528396  -0.034350169   0.010956594   0.031906104   0.000000429   0.000002268
                        -0.045986195   0.124230548   0.685732275   0.008445693  -0.212809048   0.078826259   0.000006007  -0.000010526

    9    9.2  1.5  1.5  -0.145496968   0.419530364   0.089554234   0.074140663   0.212313766   0.238702826   0.000001175  -0.000005721
                         0.098111119  -0.183909812   0.012928146   0.108260632  -0.136631268  -0.200999201   0.000000271  -0.000001712

   10    1.2  1.5  0.5  -0.000000010   0.000000008  -0.000428357  -0.002203351  -0.001004829  -0.000179335  -0.000000002   0.000000074
                         0.000000021  -0.000000036   0.001655140  -0.000296930   0.003933550   0.005279591   0.000000019  -0.000000056

   11    2.2  1.5  0.5   0.034331110   0.016253761   0.070808265  -0.002350366  -0.030059123  -0.002195860   0.059052444  -0.018860945
                        -0.052828061  -0.016614109  -0.093192410   0.005151451   0.040190062   0.000609283  -0.164716681  -0.076404257

   12    3.2  1.5  0.5  -0.032979005  -0.010213505   0.062766829   0.071918454  -0.025849542   0.025912887   0.083984815   0.412634525
                        -0.022973372  -0.012838272   0.042204379  -0.054628921  -0.019810568   0.025279234  -0.038729211   0.151189826

   13    4.2  1.5  0.5   0.040962958   0.013910043  -0.069683407   0.061625619   0.029569134   0.021207983  -0.112226697   0.218593369
                         0.025195431   0.011706131  -0.056820189  -0.044387406   0.023254239   0.023073706  -0.207884910   0.108822690

   14    5.2  1.5  0.5   0.003122498  -0.023026396  -0.007327943  -0.043122005  -0.017707488   0.001100162  -0.014419489   0.050965356
                        -0.027201374   0.068455189   0.030423617  -0.015786589   0.068404589   0.090302084  -0.025372616  -0.012551896

   15    6.2  1.5  0.5  -0.001233863  -0.002825669  -0.001135292   0.066851231  -0.001424184  -0.036431633  -0.094121681   0.122859638
                        -0.001685680   0.006729701   0.006378427   0.092684179   0.005118028   0.042173700  -0.033949028  -0.291149744

   16    7.2  1.5  0.5  -0.280516466   0.051320542   0.409927283  -0.007125235   0.197814988  -0.310996787  -0.000005038  -0.000006560
                        -0.123522856  -0.016464781   0.264188435  -0.132795124  -0.104917333   0.045246774   0.000001438  -0.000002808

   17    8.2  1.5  0.5  -0.144074206   0.500152915  -0.190943516   0.001904564  -0.179567496  -0.099504126   0.000000741   0.000006044
                         0.024705938   0.184138551  -0.072941662  -0.041767898  -0.051132521   0.006361313  -0.000001355   0.000003103

   18    9.2  1.5  0.5   0.107687646   0.107089573   0.249184478   0.116670670  -0.145806750  -0.057660462  -0.000008498  -0.000003748
                        -0.235420196  -0.064618295  -0.142193853  -0.012496026   0.479624582  -0.274267472   0.000003445   0.000005022

   19    1.2  1.5 -0.5   0.000000009   0.000000011  -0.001555067  -0.001070872  -0.003687931   0.003391745   0.000000076   0.000000019
                         0.000000036   0.000000021  -0.001588927   0.001332746  -0.003782249   0.002231269  -0.000000052   0.000000004

   20    2.2  1.5 -0.5   0.016631846  -0.035537906   0.002724991   0.032387212  -0.002033622   0.049286234   0.066516477  -0.174938230
                         0.016235612  -0.052023903  -0.004963476  -0.112470904   0.001028304   0.009468846   0.042058339   0.003923219

   21    3.2  1.5 -0.5  -0.009915314   0.032441514  -0.000807501  -0.071352914   0.002133079   0.005768930  -0.012917499  -0.063304271
                         0.013069945  -0.023726330   0.090310193  -0.025092751  -0.036138170  -0.032052720  -0.439270706   0.067423810

   22    4.2  1.5 -0.5   0.013636930  -0.040372209   0.001250672   0.087204598   0.000140144  -0.006199676  -0.034097966  -0.161717054
                        -0.012023184   0.026131560   0.075936780   0.021901350  -0.031339350   0.037103333  -0.241790752  -0.172216613

   23    5.2  1.5 -0.5  -0.024595860  -0.003747738  -0.038431537  -0.020010260  -0.059997443   0.059155183   0.028027190  -0.019509386
                        -0.067907080  -0.027122301  -0.025134451   0.024060024  -0.067498027   0.038644628  -0.044378984  -0.021704265

   24    6.2  1.5 -0.5  -0.002979811   0.001194739   0.114263648  -0.004434942  -0.055333019   0.004499404   0.315062048  -0.002436778
                        -0.006662883  -0.001713632  -0.001806346   0.004722765  -0.006643938   0.002824512  -0.024465695  -0.100027443

   25    7.2  1.5 -0.5   0.051685900   0.277599155  -0.110720034  -0.456826076  -0.260378854  -0.216890555   0.000000589   0.000002957
                         0.015279226  -0.129946499   0.073664020  -0.170721536   0.175980467   0.055649827   0.000007111  -0.000004325

   26    8.2  1.5 -0.5   0.495782291   0.144604672  -0.032346642   0.172610480  -0.077843710   0.098314554  -0.000001032  -0.000001520
                        -0.195601288   0.021383382   0.026493007   0.109478465   0.062304849  -0.158723876  -0.000006715   0.000000274

   27    9.2  1.5 -0.5   0.108548459  -0.113077549   0.059720142  -0.034950317   0.142069401   0.430776074  -0.000005950   0.000005956
                         0.062136405  -0.232879294   0.101003468  -0.284763887   0.241585720   0.256381205   0.000001968  -0.000006972

   28    1.2  1.5 -1.5  -0.000000001  -0.000000018   0.000009697   0.003982395   0.000000000  -0.002073365   0.000000032  -0.000000000
                         0.000000000   0.000000000   0.000013006   0.005341266  -0.000000000   0.001888680  -0.000000096  -0.000000000

   29    2.2  1.5 -1.5   0.035450878   0.010299641   0.039727917  -0.009325719   0.094456879  -0.063603582   0.303298164   0.123928401
                         0.011707664   0.003876738  -0.003919175  -0.029030320  -0.009104230   0.025948314   0.333831352  -0.062979976

   30    3.2  1.5 -1.5  -0.026963440   0.048450942  -0.017907719   0.024772613  -0.042665508  -0.089306425   0.290643273  -0.082475175
                         0.019318670   0.026308375   0.018844090  -0.032886566   0.044942861  -0.045442558  -0.186341709  -0.123836963

   31    4.2  1.5 -1.5  -0.008599611   0.049713162  -0.021691604  -0.018895330  -0.051439881  -0.043626008  -0.248754548   0.008896426
                        -0.028474950   0.004995428  -0.034511494  -0.019442869  -0.081854203   0.051029764   0.236636083   0.081782808

   32    5.2  1.5 -1.5  -0.000661986  -0.000724497  -0.000425221  -0.065732653  -0.000631896   0.034870928  -0.064479074   0.066251765
                        -0.002497441   0.007115220  -0.002799322  -0.093913099  -0.006103615  -0.042825340   0.036724941  -0.163956150

   33    6.2  1.5 -1.5  -0.005113744   0.022810887  -0.008686227  -0.044667016  -0.020376556   0.001089283   0.000080837   0.029323177
                         0.027509068  -0.068283703   0.029609176  -0.013712057   0.070416096   0.087909493   0.049767323  -0.061175363

   34    7.2  1.5 -1.5   0.178508830   0.095210905  -0.001891680   0.043987861  -0.004750510   0.103329762   0.000003265  -0.000000820
                        -0.406931151  -0.141118696  -0.127641901  -0.091795987  -0.302681996   0.281177369   0.000000847  -0.000000005

   35    8.2  1.5 -1.5  -0.009336898  -0.012062731   0.013761434   0.552454123   0.029495701   0.151408573  -0.000010703  -0.000005563
                         0.124478421   0.046276090   0.032586605  -0.406255710   0.079759527   0.149943928  -0.000001178  -0.000002307

   36    9.2  1.5 -1.5  -0.423652096  -0.147716551  -0.131108343   0.063894104  -0.311820445   0.248965624   0.000000185   0.000000115
                        -0.174205186  -0.094736372   0.005273043   0.064067474   0.012154346  -0.041968518  -0.000005969  -0.000001200

   37    1.2  0.5  0.5  -0.000000004  -0.000000007   0.000116088  -0.001051391   0.000188939   0.000520173  -0.000000004  -0.000000018
                         0.000000003   0.000000003  -0.000282350  -0.001330584  -0.000649211  -0.001611165   0.000000031   0.000000009

   38    2.2  0.5  0.5   0.000000001   0.000000011   0.000111393  -0.001765011   0.000291828  -0.000896264   0.000000042   0.000000003
                         0.000000008  -0.000000009   0.000237582   0.001435832  -0.000355934  -0.000179372   0.000000013  -0.000000004

   39    3.2  0.5  0.5  -0.000000015   0.000000004  -0.000410962  -0.000095906  -0.001080536   0.000399911  -0.000000007   0.000000005
                         0.000000015  -0.000000028  -0.000625928   0.000745737   0.001608594  -0.001119009  -0.000000017   0.000000009

   40    4.2  0.5  0.5  -0.000000000  -0.000000016   0.000032267   0.001336346   0.000253343  -0.000251203   0.000000016  -0.000000042
                        -0.000000018   0.000000056  -0.000524844   0.001063945  -0.001222375  -0.001215325  -0.000000025   0.000000046

   41    5.2  0.5  0.5   0.000000007   0.000000008   0.001640128   0.000420357   0.000669019  -0.001069074   0.000000007  -0.000000019
                         0.000000019   0.000000003   0.000478502  -0.000319030   0.001034269  -0.000659982   0.000000014  -0.000000007

   42    6.2  0.5  0.5   0.001304210   0.000384119   0.000339030   0.000209313  -0.001553477   0.000532144  -0.000000006  -0.000000010
                        -0.000005131   0.000051786   0.002613227   0.000239422  -0.000556344  -0.000553998  -0.000000021  -0.000000036

   43    7.2  0.5  0.5  -0.000010468   0.000083250  -0.002215248   0.000328674   0.001519158  -0.000549456  -0.000000021   0.000000031
                        -0.001270521  -0.000479580   0.001293588  -0.000203737   0.000709318  -0.000717570   0.000000005  -0.000000012

   44    8.2  0.5  0.5  -0.000381422   0.001239469   0.000765648  -0.000116238   0.001635177   0.002399356   0.000000010  -0.000000031
                        -0.000068789   0.000405742   0.000395640   0.001002694   0.000405237   0.000036762  -0.000000000  -0.000000029

   45    1.2  0.5 -0.5   0.000000007  -0.000000004   0.001695174  -0.000156969  -0.001469528   0.000576864   0.000000014  -0.000000031
                         0.000000002  -0.000000003   0.000047557   0.000261838  -0.000840785   0.000352705  -0.000000014  -0.000000006

   46    2.2  0.5 -0.5  -0.000000011   0.000000001  -0.000096089   0.000257051   0.000541785   0.000455429  -0.000000005   0.000000001
                        -0.000000009  -0.000000008   0.002273246  -0.000052709  -0.000736161   0.000066608   0.000000001  -0.000000044

   47    3.2  0.5 -0.5  -0.000000005  -0.000000015  -0.000540527  -0.000747449  -0.001049198  -0.001882053   0.000000007   0.000000014
                        -0.000000028  -0.000000014   0.000522640   0.000044674  -0.000557938  -0.000461529   0.000000008   0.000000012

   48    4.2  0.5 -0.5   0.000000017   0.000000000  -0.001651739  -0.000401477  -0.000632712   0.001010452   0.000000057   0.000000029
                         0.000000056   0.000000018  -0.000435384   0.000339586  -0.001067611   0.000733054  -0.000000025  -0.000000007

   49    5.2  0.5 -0.5  -0.000000008   0.000000007   0.000004502   0.001363974   0.000345887  -0.000201910  -0.000000000  -0.000000011
                         0.000000004  -0.000000019  -0.000527693   0.001028863  -0.001207832  -0.001215126  -0.000000020  -0.000000011

   50    6.2  0.5 -0.5  -0.000382825   0.001303983  -0.000317057   0.002297658  -0.000766465  -0.000773781  -0.000000031   0.000000018
                         0.000060613  -0.000024888  -0.000024694  -0.001290219  -0.000051198   0.001457420  -0.000000021   0.000000012

   51    7.2  0.5 -0.5  -0.000094266   0.000018777  -0.000033125  -0.000287069  -0.000077028   0.000645395  -0.000000021  -0.000000012
                        -0.000477537   0.001270425  -0.000385277  -0.002549173  -0.000900486  -0.001547398   0.000000025   0.000000018

   52    8.2  0.5 -0.5  -0.001229803  -0.000379738  -0.000734374   0.000774837  -0.001749004   0.000935936  -0.000000018   0.000000003
                         0.000434162   0.000077550   0.000692533   0.000377328   0.001642939  -0.001400730  -0.000000038  -0.000000009


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.000000455   0.000000036   0.000000204  -0.000000041  -0.000000044  -0.000000261   0.000000008   0.000000018
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.048352243   0.000094553  -0.020782790   0.065399725   0.135702815  -0.019701534  -0.046069604   0.096357118
                         0.020810584   0.183127010  -0.043320686  -0.121085498  -0.208461096   0.024879122   0.064179672  -0.045165510

    3    3.2  1.5  1.5   0.003321329  -0.169821821  -0.231197696  -0.118015077  -0.108377410   0.015504775   0.016583651  -0.005785099
                        -0.115586734   0.150470952   0.365612284   0.119519686   0.014848395  -0.095119764  -0.010380336  -0.108197657

    4    4.2  1.5  1.5   0.063666831   0.030270172  -0.252859962  -0.028652234   0.153891757  -0.024366577  -0.041920691   0.031340932
                        -0.152192144  -0.030802858   0.361063645   0.170443159  -0.075121448  -0.078566194  -0.093913190   0.046460120

    5    5.2  1.5  1.5  -0.406912547  -0.048463793  -0.163015571   0.028248242   0.038335311   0.217711262   0.054779505  -0.009853418
                         0.006012563  -0.020490305  -0.063999511  -0.018374439  -0.003923371  -0.045622461   0.014727251   0.020695483

    6    6.2  1.5  1.5  -0.296505822   0.068337077   0.418529269   0.200709114  -0.056272065  -0.306772094   0.077771535   0.047001834
                        -0.043076218   0.089459492   0.280650798   0.103844283  -0.005972416  -0.016683544  -0.010535578   0.013957519

    7    7.2  1.5  1.5  -0.000003842  -0.000002416   0.000005234  -0.000020486  -0.000012302   0.000001443  -0.118078311   0.133705846
                         0.000008325   0.000004445   0.000008448  -0.000012002  -0.000000048  -0.000006859  -0.085331363   0.128120719

    8    8.2  1.5  1.5   0.000000705   0.000001099  -0.000000278   0.000004769   0.000003254   0.000000385   0.063160336   0.043229809
                         0.000040226   0.000001670   0.000017532   0.000001170  -0.000003333  -0.000023100  -0.139291259  -0.024423950

    9    9.2  1.5  1.5   0.000002241  -0.000001680  -0.000003139   0.000010765   0.000000914   0.000000400   0.115668764  -0.157830538
                         0.000000079   0.000001998   0.000007105  -0.000021331  -0.000011468  -0.000001302  -0.058669690   0.022088174

   10    1.2  1.5  0.5   0.000000019   0.000000040  -0.000000025   0.000000128   0.000000123  -0.000000013   0.000000001   0.000000001
                         0.000000062  -0.000000018  -0.000000105   0.000000357   0.000000097  -0.000000002   0.000000002   0.000000035

   11    2.2  1.5  0.5  -0.312113089  -0.016415330  -0.115760937   0.021977500  -0.006592393  -0.117336179   0.065596430   0.025136665
                         0.241994357  -0.024406021  -0.108601693  -0.058250037  -0.063897189  -0.464941388   0.077447467   0.067236075

   12    3.2  1.5  0.5  -0.246888466  -0.096584543  -0.173303024   0.055308187  -0.025854580  -0.068982241   0.034419840   0.088022011
                        -0.125760729  -0.032127013  -0.063824019  -0.023940073   0.002468953   0.158788054  -0.039218032  -0.019716983

   13    4.2  1.5  0.5   0.387428116  -0.000668419   0.159837834   0.004032816  -0.017262930   0.090951704  -0.056571337  -0.019630453
                         0.159908476   0.020895150   0.080365235  -0.036413324  -0.049985038  -0.223653518   0.073883270   0.027253148

   14    5.2  1.5  0.5   0.029594286   0.033816407  -0.015406293   0.104276267   0.418650187  -0.046594863  -0.003698060  -0.019804529
                         0.058198760  -0.168748726  -0.029378231   0.271571882   0.456808442  -0.052775371  -0.053810854   0.064321274

   15    6.2  1.5  0.5   0.000079310   0.177604847  -0.021441810  -0.004261868  -0.064132867   0.008254283  -0.019786015   0.009370131
                        -0.036760678  -0.334777944   0.070276093   0.105508438  -0.106067050   0.033017519   0.006130210   0.034616449

   16    7.2  1.5  0.5   0.000022621  -0.000001585  -0.000011406  -0.000012971  -0.000003822  -0.000019722  -0.197384813  -0.076024139
                         0.000025172   0.000002198   0.000011911   0.000001655  -0.000000596  -0.000008376   0.342505592   0.170973473

   17    8.2  1.5  0.5  -0.000010931   0.000000515   0.000007911  -0.000014197  -0.000003793   0.000006770  -0.358861642   0.582431176
                        -0.000003364   0.000000115  -0.000001780   0.000006525   0.000005424   0.000001235  -0.026099714   0.133653349

   18    9.2  1.5  0.5   0.000018741   0.000001746   0.000006315  -0.000005400  -0.000002158  -0.000014218  -0.133802867  -0.016558934
                        -0.000023324  -0.000005453  -0.000032749  -0.000004143   0.000002096   0.000006689  -0.253787091  -0.122344859

   19    1.2  1.5 -0.5   0.000000034   0.000000048   0.000000313   0.000000095   0.000000010   0.000000153   0.000000034  -0.000000001
                        -0.000000029   0.000000044   0.000000214   0.000000051   0.000000008   0.000000033   0.000000006  -0.000000001

   20    2.2  1.5 -0.5   0.015044295   0.352206081  -0.061926199   0.075544917   0.433143276  -0.053454284   0.063086394  -0.067571138
                         0.025274223  -0.178680515   0.006420472   0.139599025  -0.205730835   0.035622324   0.034243957  -0.075730727

   21    3.2  1.5 -0.5  -0.012252868  -0.008127565  -0.037234411   0.017590923  -0.078457508  -0.014566805  -0.031767990   0.043624170
                         0.101047445  -0.276954192   0.047389045   0.183842313   0.154326326  -0.021502632   0.084424100  -0.028630600

   22    4.2  1.5 -0.5  -0.019174765  -0.021091864  -0.036239928  -0.037015618   0.114463598  -0.049527570   0.029718581  -0.081033440
                        -0.008329613   0.418600535  -0.005372269  -0.175032969  -0.212582203   0.018534632  -0.015649112   0.045745333

   23    5.2  1.5 -0.5   0.167005351   0.039957796   0.236067502   0.024486829   0.070363622   0.618818242   0.066450626   0.052773478
                         0.041579916   0.051636141   0.169991078   0.022379222   0.002298208   0.031716177  -0.010665830   0.011146466

   24    6.2  1.5 -0.5   0.378571550  -0.033265144   0.103115798  -0.073419444  -0.030709536  -0.122615325   0.032976730  -0.008822588
                        -0.017416368  -0.015645564   0.022744900   0.002840170   0.014670180   0.018130793   0.014093728   0.018741073

   25    7.2  1.5 -0.5  -0.000002665   0.000013083   0.000004903  -0.000014423   0.000019020  -0.000002894   0.179885569  -0.366630042
                         0.000000494   0.000031211  -0.000012122   0.000007997   0.000009867  -0.000002566  -0.051505147   0.147828471

   26    8.2  1.5 -0.5   0.000000117   0.000001633   0.000009925   0.000003736  -0.000005265   0.000001765   0.051346112  -0.024066684
                        -0.000000515  -0.000011320  -0.000012068  -0.000007197  -0.000004432  -0.000006379   0.595359445   0.359003715

   27    9.2  1.5 -0.5   0.000005676  -0.000029098  -0.000002631   0.000033278   0.000003901   0.000000241  -0.118852580   0.232710212
                         0.000000753   0.000006969  -0.000006277   0.000002232   0.000015221  -0.000002999  -0.033414472   0.167800632

   28    1.2  1.5 -1.5  -0.000000015   0.000000195  -0.000000010  -0.000000052  -0.000000166   0.000000028   0.000000003  -0.000000001
                         0.000000033  -0.000000411   0.000000040   0.000000198  -0.000000201   0.000000034  -0.000000018   0.000000008

   29    2.2  1.5 -1.5   0.165504318   0.001860772   0.133747300  -0.036600648   0.006627579   0.074245085   0.058128463   0.069963511
                         0.078382580  -0.052607576  -0.032411169  -0.031128750  -0.031035405  -0.237400400  -0.089138652  -0.036695311

   30    3.2  1.5 -1.5   0.208632447   0.105909139  -0.145630862   0.412431909  -0.063445600   0.057593194   0.106341377  -0.012586000
                        -0.089182217   0.046417396   0.083690864  -0.130478504   0.072545320   0.093000871   0.020777675   0.014978701

   31    4.2  1.5 -1.5  -0.040787623   0.164801114  -0.172120720   0.413549213  -0.076084379  -0.040125788  -0.041649447  -0.087169788
                         0.014193939   0.007516619  -0.015693262  -0.152584965   0.031265705  -0.166480708  -0.037498270  -0.054575266

   32    5.2  1.5 -1.5   0.002197992  -0.179413307   0.024961789  -0.020380202   0.103519454  -0.021396199  -0.021864803   0.006965031
                        -0.052571483   0.365273658  -0.022638287  -0.173938649   0.196884041  -0.032049829   0.006879188   0.056295421

   33    6.2  1.5 -1.5   0.051652430  -0.087832521  -0.049313405   0.164826885  -0.208281542   0.040450447  -0.007284547  -0.021250125
                         0.100024935   0.286455405  -0.220535636   0.476197154  -0.225845650   0.039572420  -0.048486288   0.075550263

   34    7.2  1.5 -1.5   0.000005052  -0.000009168   0.000006390   0.000006837  -0.000004368   0.000007874  -0.108278777  -0.068078898
                        -0.000000284  -0.000000087   0.000022866   0.000007212   0.000005481   0.000009452  -0.150226091  -0.128799040

   35    8.2  1.5 -1.5   0.000001039  -0.000036063   0.000000083   0.000017025  -0.000017562   0.000000496   0.030199228  -0.146722120
                         0.000001707  -0.000017836  -0.000004910   0.000004195   0.000015012  -0.000004632  -0.039412591   0.043172937

   36    9.2  1.5 -1.5   0.000002525   0.000000887   0.000023369   0.000007670  -0.000000749   0.000008258  -0.043825539  -0.074187370
                        -0.000000665  -0.000002059  -0.000004979  -0.000001227   0.000001138  -0.000008010   0.153224307   0.106384348

   37    1.2  0.5  0.5   0.000000001  -0.000000051   0.000000005  -0.000000015   0.000000034  -0.000000010  -0.000184155  -0.000609452
                        -0.000000026   0.000000145   0.000000002  -0.000000134   0.000000025  -0.000000009  -0.001278864   0.001249527

   38    2.2  0.5  0.5  -0.000000007   0.000000150  -0.000000041  -0.000000061   0.000000075  -0.000000014  -0.000178575  -0.000173729
                         0.000000021   0.000000058   0.000000040   0.000000003  -0.000000073   0.000000016   0.000226154   0.000579332

   39    3.2  0.5  0.5  -0.000000009   0.000000063   0.000000070   0.000000001   0.000000023   0.000000000  -0.000885419  -0.000144340
                        -0.000000088  -0.000000010  -0.000000148  -0.000000027  -0.000000016  -0.000000011  -0.001172695  -0.001810732

   40    4.2  0.5  0.5  -0.000000015   0.000000022   0.000000010  -0.000000050  -0.000000079   0.000000018  -0.000150773  -0.001026269
                        -0.000000015  -0.000000083   0.000000047  -0.000000085  -0.000000079   0.000000009  -0.002882409   0.004054730

   41    5.2  0.5  0.5   0.000000053  -0.000000006  -0.000000050  -0.000000034  -0.000000016  -0.000000094  -0.003656400  -0.001703998
                         0.000000004  -0.000000019  -0.000000053  -0.000000012  -0.000000009  -0.000000015  -0.000021969  -0.000644614

   42    6.2  0.5  0.5   0.000000052   0.000000015   0.000000092   0.000000000  -0.000000007  -0.000000021   0.000000009   0.000000004
                         0.000000149   0.000000009   0.000000029  -0.000000023  -0.000000014  -0.000000119  -0.000000017  -0.000000002

   43    7.2  0.5  0.5  -0.000000167  -0.000000019  -0.000000127  -0.000000005   0.000000015   0.000000073  -0.000000028  -0.000000015
                         0.000000056  -0.000000009  -0.000000044  -0.000000022  -0.000000007  -0.000000051  -0.000000006  -0.000000002

   44    8.2  0.5  0.5   0.000000029  -0.000000007  -0.000000035   0.000000147   0.000000027  -0.000000002   0.000000002   0.000000012
                         0.000000005  -0.000000019   0.000000013  -0.000000052  -0.000000041  -0.000000005  -0.000000001  -0.000000001

   45    1.2  0.5 -0.5   0.000000153   0.000000024   0.000000125   0.000000001  -0.000000013  -0.000000041  -0.001322148  -0.001240820
                         0.000000016   0.000000010   0.000000048   0.000000006  -0.000000002  -0.000000010   0.000429736  -0.000360237

   46    2.2  0.5 -0.5  -0.000000012  -0.000000022  -0.000000019   0.000000049   0.000000003   0.000000008  -0.000597864   0.000248793
                         0.000000161  -0.000000003   0.000000058  -0.000000029  -0.000000021  -0.000000104   0.000091464  -0.000145385

   47    3.2  0.5 -0.5  -0.000000036   0.000000076   0.000000027  -0.000000161  -0.000000008  -0.000000002   0.001773057  -0.001038147
                         0.000000053   0.000000046   0.000000006   0.000000030   0.000000007  -0.000000028   0.000394785  -0.001039918

   48    4.2  0.5 -0.5  -0.000000084   0.000000007   0.000000070   0.000000043   0.000000018   0.000000111  -0.004158059  -0.002833422
                        -0.000000016   0.000000020   0.000000070   0.000000022   0.000000009   0.000000010   0.000452336  -0.000550211

   49    5.2  0.5 -0.5  -0.000000015   0.000000019   0.000000003  -0.000000038  -0.000000071   0.000000017   0.000401346   0.000486799
                        -0.000000014  -0.000000049   0.000000036  -0.000000061  -0.000000063   0.000000007   0.001777092  -0.003623916

   50    6.2  0.5 -0.5   0.000000001  -0.000000113   0.000000023   0.000000005  -0.000000105   0.000000015   0.000000003  -0.000000018
                         0.000000017  -0.000000110   0.000000006   0.000000097   0.000000060  -0.000000003  -0.000000004   0.000000007

   51    7.2  0.5 -0.5   0.000000001  -0.000000122   0.000000020  -0.000000010   0.000000008  -0.000000004   0.000000000  -0.000000002
                        -0.000000021   0.000000127   0.000000010  -0.000000134   0.000000089  -0.000000016   0.000000015  -0.000000028

   52    8.2  0.5 -0.5  -0.000000014   0.000000007   0.000000088   0.000000022  -0.000000005   0.000000015   0.000000002  -0.000000001
                        -0.000000014  -0.000000028  -0.000000128  -0.000000030   0.000000002  -0.000000047  -0.000000012   0.000000002


   Nr   State  S   Sz       49            50            51            52

    1    1.2  1.5  1.5  -0.000000056   0.000000004  -0.000000009   0.000000009
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.061420200   0.021309043   0.007382244   0.090976212
                         0.009348902   0.037938743   0.020655522   0.094695356

    3    3.2  1.5  1.5   0.006988027   0.023515415  -0.021355574  -0.071853758
                        -0.022174764  -0.013259209   0.001039753   0.056356028

    4    4.2  1.5  1.5  -0.022985342  -0.002862267   0.015665239   0.093386761
                        -0.000630155   0.003732265   0.005242305  -0.066152935

    5    5.2  1.5  1.5  -0.206533104  -0.004555079  -0.028696673  -0.042953810
                         0.001333805  -0.033184092  -0.008076792  -0.035463216

    6    6.2  1.5  1.5  -0.000077191   0.009175871  -0.006448693  -0.003915058
                        -0.012431855   0.011049745  -0.008562897  -0.003800238

    7    7.2  1.5  1.5   0.017876126  -0.105233533  -0.105538739  -0.515887724
                        -0.050737005   0.048745204   0.024647268   0.368479803

    8    8.2  1.5  1.5   0.009383827  -0.055772816   0.005408429   0.009275755
                         0.579087253  -0.003016998   0.061101117  -0.035565871

    9    9.2  1.5  1.5  -0.132007725  -0.016676583  -0.010021338   0.351166234
                        -0.017598666   0.009145126   0.118495271   0.543730653

   10    1.2  1.5  0.5   0.000000011  -0.000000009  -0.000000007  -0.000000015
                        -0.000000012  -0.000000017  -0.000000003   0.000000011

   11    2.2  1.5  0.5   0.047447461   0.001033406   0.010767051   0.015356960
                        -0.017167589   0.030567702  -0.012805911   0.009184142

   12    3.2  1.5  0.5   0.069600847  -0.044714303  -0.044444696  -0.098969514
                        -0.026842009  -0.087039972  -0.009533211  -0.023003872

   13    4.2  1.5  0.5   0.009569083  -0.064878227  -0.028877489  -0.093501436
                        -0.011870746  -0.092081002  -0.006299238  -0.024829649

   14    5.2  1.5  0.5   0.003945630  -0.033753224   0.000542243   0.005590166
                        -0.016856924  -0.000341988   0.005341637  -0.011522202

   15    6.2  1.5  0.5  -0.013288700   0.113122810  -0.030394109  -0.039543207
                        -0.019800937  -0.053929973  -0.015856862   0.175456168

   16    7.2  1.5  0.5  -0.385845477  -0.030941752   0.002833769  -0.013280417
                        -0.233873333  -0.029369435  -0.043714054  -0.121198824

   17    8.2  1.5  0.5  -0.008644950  -0.006454146   0.037778201   0.063837938
                         0.020727384   0.191248758   0.013287365  -0.009506608

   18    9.2  1.5  0.5  -0.406512593  -0.041471936  -0.068225305  -0.125674039
                         0.327810930  -0.095077284   0.063989737  -0.002090683

   19    1.2  1.5 -0.5   0.000000001   0.000000015  -0.000000016   0.000000001
                        -0.000000019   0.000000006   0.000000009  -0.000000007

   20    2.2  1.5 -0.5   0.013478097   0.049942931  -0.001635330  -0.016203817
                         0.027455296  -0.007189666  -0.017818821   0.004166182

   21    3.2  1.5 -0.5  -0.001524451   0.074042352  -0.022082829   0.010635592
                        -0.097841717  -0.009083033   0.099179088  -0.044193860

   22    4.2  1.5 -0.5   0.013892396   0.014030656  -0.018070885   0.006815587
                        -0.111781468   0.005968471   0.095039324  -0.028759999

   23    5.2  1.5 -0.5   0.029618300   0.011416538   0.012806566   0.004581128
                        -0.016191152   0.013014859  -0.000054402   0.002800068

   24    6.2  1.5 -0.5  -0.125191999  -0.002402808  -0.175291723  -0.001144867
                         0.005672359   0.023725370  -0.040265913  -0.034262680

   25    7.2  1.5 -0.5   0.013473081  -0.230321445   0.103520473  -0.040636449
                        -0.040477547   0.387976159   0.064413010  -0.016359332

   26    8.2  1.5 -0.5   0.095725177  -0.017384614   0.036191943  -0.004366594
                         0.165693796  -0.014217412  -0.053439697   0.039808031

   27    9.2  1.5 -0.5  -0.008168667  -0.512969820  -0.052491544   0.087209443
                        -0.103406404  -0.097849157   0.114205835  -0.033821468

   28    1.2  1.5 -1.5   0.000000003   0.000000049  -0.000000004  -0.000000004
                        -0.000000002  -0.000000026   0.000000008   0.000000008

   29    2.2  1.5 -1.5   0.000940451   0.058589922   0.046009047  -0.015427821
                        -0.043503323  -0.020665528   0.122992070  -0.015592642

   30    3.2  1.5 -1.5   0.026988642  -0.016604127   0.081897236  -0.010177476
                         0.000628187  -0.016274386  -0.040395633   0.018803208

   31    4.2  1.5 -1.5  -0.004282253   0.019982517  -0.100046482   0.002051813
                        -0.001945427  -0.011376381   0.055569772  -0.016391203

   32    5.2  1.5 -1.5   0.011602721   0.182844841  -0.013386639  -0.005134801
                         0.031421483  -0.096049290  -0.054069098   0.029366093

   33    6.2  1.5 -1.5   0.002893852  -0.005784229  -0.001732140   0.004929659
                        -0.014068372  -0.011004529  -0.005173894   0.009518787

   34    7.2  1.5 -1.5  -0.115790820  -0.039656074   0.555415708  -0.067885003
                         0.006532799  -0.036348250  -0.305664686   0.084483960

   35    8.2  1.5 -1.5  -0.047786148   0.264327985  -0.036077774  -0.052745512
                         0.028917007   0.515325935  -0.007026028  -0.031313074

   36    9.2  1.5 -1.5  -0.019018262   0.108181185   0.338257639  -0.111165247
                        -0.000217875  -0.077669708   0.551853710  -0.042235580

   37    1.2  0.5  0.5  -0.000352405  -0.002256311  -0.000409445  -0.001436295
                        -0.001850670   0.001295381   0.000931046   0.003767690

   38    2.2  0.5  0.5   0.000985943   0.000589579   0.000052805  -0.004845964
                         0.001107152   0.001539662  -0.000729413  -0.001353701

   39    3.2  0.5  0.5  -0.000042795   0.001380635  -0.000039963  -0.000629801
                        -0.004591451   0.000017755  -0.000686407  -0.001377540

   40    4.2  0.5  0.5   0.000246723  -0.000054514   0.000151437   0.000734720
                        -0.000274948  -0.000787137  -0.000374230  -0.001981477

   41    5.2  0.5  0.5   0.003553876  -0.000241830   0.000707386   0.000763853
                         0.000594336   0.000020835   0.000394600   0.000494902

   42    6.2  0.5  0.5  -0.000000018   0.000000005  -0.000000004   0.000000003
                        -0.000000042  -0.000000003  -0.000000007  -0.000000002

   43    7.2  0.5  0.5   0.000000026  -0.000000003   0.000000011  -0.000000002
                        -0.000000006  -0.000000001   0.000000001   0.000000003

   44    8.2  0.5  0.5  -0.000000009  -0.000000006  -0.000000002  -0.000000002
                        -0.000000010   0.000000005   0.000000002   0.000000010

   45    1.2  0.5 -0.5  -0.002600469  -0.000560293   0.004018208  -0.001016542
                        -0.000080704  -0.001798677   0.000335307  -0.000033708

   46    2.2  0.5 -0.5  -0.000204636  -0.000348668   0.000876315   0.000680449
                        -0.001635936   0.001440937  -0.004954588   0.000267994

   47    3.2  0.5 -0.5   0.001209728  -0.002123682  -0.000969418   0.000601538
                        -0.000665602  -0.004071023  -0.001163828   0.000333022

   48    4.2  0.5 -0.5   0.000322451  -0.000347107  -0.002104295   0.000402910
                         0.000720126  -0.000126432  -0.000194956   0.000025393

   49    5.2  0.5 -0.5  -0.000223166  -0.002855675   0.000115676  -0.000049681
                         0.000095461   0.002197359   0.000902783  -0.000808478

   50    6.2  0.5 -0.5   0.000000006  -0.000000004  -0.000000003   0.000000004
                        -0.000000000  -0.000000046   0.000000002   0.000000007

   51    7.2  0.5 -0.5  -0.000000002  -0.000000026   0.000000004   0.000000004
                         0.000000003   0.000000007  -0.000000001  -0.000000010

   52    8.2  0.5 -0.5  -0.000000007   0.000000003   0.000000010  -0.000000003
                        -0.000000002  -0.000000013   0.000000003   0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.004%  44.525%   0.004%  54.912%   0.000%   0.037%   0.000%   0.020%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    7    7.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    1.2  1.5  0.5  54.411%   0.506%  44.119%   0.409%   0.020%   0.000%   0.037%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   13    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   14    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   15    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    9.2  1.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.506%  54.411%   0.409%  44.119%   0.000%   0.020%   0.000%   0.037%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   23    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    7.2  1.5 -0.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    1.2  1.5 -1.5  44.525%   0.004%  54.912%   0.004%   0.037%   0.000%   0.020%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   31    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   32    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%
   33    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   34    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%  37.620%   0.057%   0.531%   0.236%  42.355%   0.073%
   38    2.2  0.5  0.5   0.001%   0.000%   0.002%   0.000%  22.144%   2.518%  13.267%   0.516%   0.455%   0.087%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   3.143%  29.403%   0.291%   5.611%   2.648%  48.331%
   40    4.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.401%   0.118%  37.905%   0.017%   1.363%   0.363%
   41    5.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.273%   0.435%   0.018%  37.719%   0.977%   3.336%
   42    6.2  0.5  0.5   0.000%   0.315%   0.000%   0.043%   0.016%   0.697%   0.027%   1.810%   0.000%   0.000%
   43    7.2  0.5  0.5   0.001%   0.026%   0.000%   0.332%   0.003%   2.240%   0.006%   0.300%   0.000%   0.000%
   44    8.2  0.5  0.5   0.197%   0.000%   0.160%   0.003%   0.863%   0.005%   1.617%   0.064%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.057%  37.620%   0.236%   0.531%   0.073%  42.355%
   46    2.2  0.5 -0.5   0.000%   0.001%   0.000%   0.002%   2.518%  22.144%   0.516%  13.267%   0.087%   0.455%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%  29.403%   3.143%   5.611%   0.291%  48.331%   2.648%
   48    4.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.118%   0.401%   0.017%  37.905%   0.363%   1.363%
   49    5.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.435%   0.273%  37.719%   0.018%   3.336%   0.977%
   50    6.2  0.5 -0.5   0.315%   0.000%   0.043%   0.000%   0.697%   0.016%   1.810%   0.027%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.026%   0.001%   0.332%   0.000%   2.240%   0.003%   0.300%   0.006%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.197%   0.003%   0.160%   0.005%   0.863%   0.064%   1.617%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.417%   0.075%   0.000%
    2    2.2  1.5  1.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.001%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%   0.003%   0.018%   0.399%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    3.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   15    6.2  1.5  0.5   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   17    8.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.071%   0.399%   0.018%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.417%   0.000%   0.000%   0.075%
   29    2.2  1.5 -1.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   31    4.2  1.5 -1.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    5.2  1.5 -1.5   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    6.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   34    7.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    1.2  0.5  0.5   2.163%  15.338%   0.063%   0.002%   0.000%   0.000%   0.720%   0.001%   0.010%   0.818%
   38    2.2  0.5  0.5   8.933%  49.509%   0.884%   0.125%   0.000%   0.000%   1.100%   0.010%   0.106%   0.333%
   39    3.2  0.5  0.5   7.396%   1.111%   0.047%   0.456%   0.000%   0.000%   0.153%   0.141%   1.244%   0.011%
   40    4.2  0.5  0.5   0.854%   2.168%  54.472%   0.777%   0.000%   0.000%   0.869%   0.019%   0.060%   0.601%
   41    5.2  0.5  0.5   9.104%   3.412%   0.639%  42.525%   0.000%   0.000%   0.026%   0.834%   0.640%   0.049%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.322%   0.017%   0.007%  62.657%   1.037%   0.045%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  32.993%   0.336%   0.110%  23.508%  39.559%   0.580%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.017%  33.309%   9.348%   0.002%   2.137%  52.273%
   45    1.2  0.5 -0.5  15.338%   2.163%   0.002%   0.063%   0.000%   0.000%   0.001%   0.720%   0.818%   0.010%
   46    2.2  0.5 -0.5  49.509%   8.933%   0.125%   0.884%   0.000%   0.000%   0.010%   1.100%   0.333%   0.106%
   47    3.2  0.5 -0.5   1.111%   7.396%   0.456%   0.047%   0.000%   0.000%   0.141%   0.153%   0.011%   1.244%
   48    4.2  0.5 -0.5   2.168%   0.854%   0.777%  54.472%   0.000%   0.000%   0.019%   0.869%   0.601%   0.060%
   49    5.2  0.5 -0.5   3.412%   9.104%  42.525%   0.639%   0.000%   0.000%   0.834%   0.026%   0.049%   0.640%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.017%  33.322%  62.657%   0.007%   0.045%   1.037%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.336%  32.993%  23.508%   0.110%   0.580%  39.559%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.309%   0.017%   0.002%   9.348%  52.273%   2.137%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.998%   3.879%  14.761%   0.607%   0.047%   2.960%   1.448%   4.608%   0.000%  28.817%
    3    3.2  1.5  1.5   5.052%   8.278%   5.683%   9.662%   2.122%   0.907%   0.986%  15.519%   0.356%   1.725%
    4    4.2  1.5  1.5  10.838%   0.049%   9.905%   5.443%   0.902%   2.125%   6.272%  10.960%   1.728%   4.137%
    5    5.2  1.5  1.5   0.133%   0.053%   0.026%   1.822%  16.518%   0.006%   1.486%   0.014%   3.463%   0.020%
    6    6.2  1.5  1.5  14.884%   4.328%   0.373%  16.131%   1.804%   0.065%   5.806%   0.716%   1.354%   0.009%
    7    7.2  1.5  1.5   0.166%   0.537%   1.221%   0.040%   0.336%   0.243%   0.036%   0.485%   0.049%   4.130%
    8    8.2  1.5  1.5   0.013%   0.042%   0.152%   0.751%   3.702%   0.028%   0.153%   0.007%   0.257%   0.429%
    9    9.2  1.5  1.5   0.177%   0.570%   1.292%   0.061%   0.038%   0.258%   0.111%   2.003%   0.039%   2.773%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5  11.017%   3.501%   0.085%   2.922%  15.355%   0.012%  10.297%   1.587%   4.005%   0.220%
   12    3.2  1.5  0.5   4.420%   1.647%   1.586%   1.444%   6.254%   9.091%   3.481%  10.459%   0.666%  15.333%
   13    4.2  1.5  0.5   6.573%   1.937%   1.397%   1.630%   9.095%   6.253%   7.948%   1.013%   2.636%  13.970%
   14    5.2  1.5  0.5   4.708%  14.501%  16.165%   0.360%   0.031%   1.817%   0.868%   5.247%   0.056%   1.335%
   15    6.2  1.5  0.5   0.080%   0.105%   1.811%   0.058%   0.003%  16.502%   0.006%   1.176%   0.118%   9.949%
   16    7.2  1.5  0.5   0.167%   0.134%   0.030%   1.961%   1.569%   0.016%   1.698%   0.163%   0.245%   0.087%
   17    8.2  1.5  0.5   0.298%   0.651%   0.472%   0.186%   0.044%   0.078%   0.362%   4.140%   0.000%   1.226%
   18    9.2  1.5  0.5   0.156%   0.100%   0.034%   1.922%   1.803%   0.006%   0.860%   0.081%   0.853%   0.012%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   3.501%  11.017%   2.922%   0.085%   0.012%  15.355%   1.587%  10.297%   0.220%   4.005%
   21    3.2  1.5 -0.5   1.647%   4.420%   1.444%   1.586%   9.091%   6.254%  10.459%   3.481%  15.333%   0.666%
   22    4.2  1.5 -0.5   1.937%   6.573%   1.630%   1.397%   6.253%   9.095%   1.013%   7.948%  13.970%   2.636%
   23    5.2  1.5 -0.5  14.501%   4.708%   0.360%  16.165%   1.817%   0.031%   5.247%   0.868%   1.335%   0.056%
   24    6.2  1.5 -0.5   0.105%   0.080%   0.058%   1.811%  16.502%   0.003%   1.176%   0.006%   9.949%   0.118%
   25    7.2  1.5 -0.5   0.134%   0.167%   1.961%   0.030%   0.016%   1.569%   0.163%   1.698%   0.087%   0.245%
   26    8.2  1.5 -0.5   0.651%   0.298%   0.186%   0.472%   0.078%   0.044%   4.140%   0.362%   1.226%   0.000%
   27    9.2  1.5 -0.5   0.100%   0.156%   1.922%   0.034%   0.006%   1.803%   0.081%   0.860%   0.012%   0.853%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   3.879%   0.998%   0.607%  14.761%   2.960%   0.047%   4.608%   1.448%  28.817%   0.000%
   30    3.2  1.5 -1.5   8.278%   5.052%   9.662%   5.683%   0.907%   2.122%  15.519%   0.986%   1.725%   0.356%
   31    4.2  1.5 -1.5   0.049%  10.838%   5.443%   9.905%   2.125%   0.902%  10.960%   6.272%   4.137%   1.728%
   32    5.2  1.5 -1.5   0.053%   0.133%   1.822%   0.026%   0.006%  16.518%   0.014%   1.486%   0.020%   3.463%
   33    6.2  1.5 -1.5   4.328%  14.884%  16.131%   0.373%   0.065%   1.804%   0.716%   5.806%   0.009%   1.354%
   34    7.2  1.5 -1.5   0.537%   0.166%   0.040%   1.221%   0.243%   0.336%   0.485%   0.036%   4.130%   0.049%
   35    8.2  1.5 -1.5   0.042%   0.013%   0.751%   0.152%   0.028%   3.702%   0.007%   0.153%   0.429%   0.257%
   36    9.2  1.5 -1.5   0.570%   0.177%   0.061%   1.292%   0.258%   0.038%   2.003%   0.111%   2.773%   0.039%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   41    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.004%   1.667%   0.012%   0.139%   0.093%   0.159%   0.472%   0.900%   1.932%  20.343%
    3    3.2  1.5  1.5   0.054%   1.115%   0.304%   0.110%   0.170%   0.068%   1.004%   0.384%   2.214%  11.920%
    4    4.2  1.5  1.5   0.016%   1.496%   0.250%   0.088%   0.074%   0.166%   0.451%   0.935%   0.677%  11.788%
    5    5.2  1.5  1.5  40.126%   0.753%   0.005%   0.001%   1.314%   0.001%   0.305%   0.004%   3.127%   0.551%
    6    6.2  1.5  1.5   0.178%   0.013%   0.518%   0.078%   0.218%   0.095%   0.773%   0.537%   0.460%   0.248%
    7    7.2  1.5  1.5   0.238%   0.517%   2.898%  19.746%   1.036%   1.630%   8.974%   9.164%   0.000%   0.000%
    8    8.2  1.5  1.5   3.271%   0.036%   0.229%   1.558%  47.025%   0.125%   4.541%   0.723%   0.000%   0.000%
    9    9.2  1.5  1.5   0.015%   0.602%   3.080%  20.983%   0.819%   1.722%   6.375%   9.738%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.003%   0.000%   0.000%
   11    2.2  1.5  0.5   1.283%   0.002%   0.397%   0.054%   1.370%   0.003%   0.252%   0.001%   3.062%   0.619%
   12    3.2  1.5  0.5   0.109%   4.133%   0.162%   0.027%   0.572%   0.816%   0.106%   0.131%   0.855%  19.313%
   13    4.2  1.5  0.5   1.282%   2.481%   0.231%   0.033%   0.808%   0.577%   0.142%   0.098%   5.581%   5.963%
   14    5.2  1.5  0.5   0.007%   0.563%   0.075%   0.522%   0.098%   0.211%   0.499%   0.816%   0.085%   0.276%
   15    6.2  1.5  0.5   0.379%  34.236%   0.000%   0.005%   0.004%   1.306%   0.003%   0.311%   1.001%   9.986%
   16    7.2  1.5  0.5   2.393%   0.060%   9.395%   0.290%  23.784%   1.769%   5.014%   9.877%   0.000%   0.000%
   17    8.2  1.5  0.5   0.207%   0.013%   2.137%  28.406%   4.178%   0.175%   3.486%   0.994%   0.000%   0.000%
   18    9.2  1.5  0.5   2.696%   0.053%   6.702%   1.564%   8.231%   1.377%  25.130%   7.855%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.002%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.002%   1.283%   0.054%   0.397%   0.003%   1.370%   0.001%   0.252%   0.619%   3.062%
   21    3.2  1.5 -0.5   4.133%   0.109%   0.027%   0.162%   0.816%   0.572%   0.131%   0.106%  19.313%   0.855%
   22    4.2  1.5 -0.5   2.481%   1.282%   0.033%   0.231%   0.577%   0.808%   0.098%   0.142%   5.963%   5.581%
   23    5.2  1.5 -0.5   0.563%   0.007%   0.522%   0.075%   0.211%   0.098%   0.816%   0.499%   0.276%   0.085%
   24    6.2  1.5 -0.5  34.236%   0.379%   0.005%   0.000%   1.306%   0.004%   0.311%   0.003%   9.986%   1.001%
   25    7.2  1.5 -0.5   0.060%   2.393%   0.290%   9.395%   1.769%  23.784%   9.877%   5.014%   0.000%   0.000%
   26    8.2  1.5 -0.5   0.013%   0.207%  28.406%   2.137%   0.175%   4.178%   0.994%   3.486%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.053%   2.696%   1.564%   6.702%   1.377%   8.231%   7.855%  25.130%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%
   29    2.2  1.5 -1.5   1.667%   0.004%   0.139%   0.012%   0.159%   0.093%   0.900%   0.472%  20.343%   1.932%
   30    3.2  1.5 -1.5   1.115%   0.054%   0.110%   0.304%   0.068%   0.170%   0.384%   1.004%  11.920%   2.214%
   31    4.2  1.5 -1.5   1.496%   0.016%   0.088%   0.250%   0.166%   0.074%   0.935%   0.451%  11.788%   0.677%
   32    5.2  1.5 -1.5   0.753%  40.126%   0.001%   0.005%   0.001%   1.314%   0.004%   0.305%   0.551%   3.127%
   33    6.2  1.5 -1.5   0.013%   0.178%   0.078%   0.518%   0.095%   0.218%   0.537%   0.773%   0.248%   0.460%
   34    7.2  1.5 -1.5   0.517%   0.238%  19.746%   2.898%   1.630%   1.036%   9.164%   8.974%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.036%   3.271%   1.558%   0.229%   0.125%  47.025%   0.723%   4.541%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.602%   0.015%  20.983%   3.080%   1.722%   0.819%   9.738%   6.375%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    2.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   39    3.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    5.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    2.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.277%   3.354%   0.231%   1.894%   6.187%   0.101%   0.624%   1.132%   0.386%   0.189%
    3    3.2  1.5  1.5   1.337%   5.148%  18.712%   2.821%   1.197%   0.929%   0.038%   1.174%   0.054%   0.073%
    4    4.2  1.5  1.5   2.722%   0.187%  19.431%   2.987%   2.933%   0.677%   1.058%   0.314%   0.053%   0.002%
    5    5.2  1.5  1.5  16.561%   0.277%   3.067%   0.114%   0.148%   4.948%   0.322%   0.053%   4.266%   0.112%
    6    6.2  1.5  1.5   8.977%   1.267%  25.393%   5.107%   0.320%   9.439%   0.616%   0.240%   0.015%   0.021%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.122%   3.429%   0.289%   1.345%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.339%   0.247%  33.543%   0.312%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.682%   2.540%   1.774%   0.036%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5  15.598%   0.087%   2.519%   0.388%   0.413%  22.994%   1.030%   0.515%   0.255%   0.094%
   12    3.2  1.5  0.5   7.677%   1.036%   3.411%   0.363%   0.067%   2.997%   0.272%   0.814%   0.556%   0.958%
   13    4.2  1.5  0.5  17.567%   0.044%   3.201%   0.134%   0.280%   5.829%   0.866%   0.113%   0.023%   1.269%
   14    5.2  1.5  0.5   0.426%   2.962%   0.110%   8.462%  38.394%   0.496%   0.291%   0.453%   0.030%   0.114%
   15    6.2  1.5  0.5   0.135%  14.362%   0.540%   1.115%   1.536%   0.116%   0.043%   0.129%   0.057%   1.571%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.627%   3.501%  20.357%   0.182%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.946%  35.709%   0.050%   3.662%
   18    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.231%   1.524%  27.271%   1.076%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.087%  15.598%   0.388%   2.519%  22.994%   0.413%   0.515%   1.030%   0.094%   0.255%
   21    3.2  1.5 -0.5   1.036%   7.677%   0.363%   3.411%   2.997%   0.067%   0.814%   0.272%   0.958%   0.556%
   22    4.2  1.5 -0.5   0.044%  17.567%   0.134%   3.201%   5.829%   0.280%   0.113%   0.866%   1.269%   0.023%
   23    5.2  1.5 -0.5   2.962%   0.426%   8.462%   0.110%   0.496%  38.394%   0.453%   0.291%   0.114%   0.030%
   24    6.2  1.5 -0.5  14.362%   0.135%   1.115%   0.540%   0.116%   1.536%   0.129%   0.043%   1.571%   0.057%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.501%  15.627%   0.182%  20.357%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  35.709%  12.946%   3.662%   0.050%
   27    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.524%   8.231%   1.076%  27.271%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   3.354%   0.277%   1.894%   0.231%   0.101%   6.187%   1.132%   0.624%   0.189%   0.386%
   30    3.2  1.5 -1.5   5.148%   1.337%   2.821%  18.712%   0.929%   1.197%   1.174%   0.038%   0.073%   0.054%
   31    4.2  1.5 -1.5   0.187%   2.722%   2.987%  19.431%   0.677%   2.933%   0.314%   1.058%   0.002%   0.053%
   32    5.2  1.5 -1.5   0.277%  16.561%   0.114%   3.067%   4.948%   0.148%   0.053%   0.322%   0.112%   4.266%
   33    6.2  1.5 -1.5   1.267%   8.977%   5.107%  25.393%   9.439%   0.320%   0.240%   0.616%   0.021%   0.015%
   34    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.429%   2.122%   1.345%   0.289%
   35    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.247%   2.339%   0.312%  33.543%
   36    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.540%   1.682%   0.036%   1.774%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%
   41    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52

    1    1.2  1.5  1.5   0.000%   0.000%
    2    2.2  1.5  1.5   0.048%   1.724%
    3    3.2  1.5  1.5   0.046%   0.834%
    4    4.2  1.5  1.5   0.027%   1.310%
    5    5.2  1.5  1.5   0.089%   0.310%
    6    6.2  1.5  1.5   0.011%   0.003%
    7    7.2  1.5  1.5   1.175%  40.192%
    8    8.2  1.5  1.5   0.376%   0.135%
    9    9.2  1.5  1.5   1.414%  41.896%
   10    1.2  1.5  0.5   0.000%   0.000%
   11    2.2  1.5  0.5   0.028%   0.032%
   12    3.2  1.5  0.5   0.207%   1.032%
   13    4.2  1.5  0.5   0.087%   0.936%
   14    5.2  1.5  0.5   0.003%   0.016%
   15    6.2  1.5  0.5   0.118%   3.235%
   16    7.2  1.5  0.5   0.192%   1.487%
   17    8.2  1.5  0.5   0.160%   0.417%
   18    9.2  1.5  0.5   0.875%   1.580%
   19    1.2  1.5 -0.5   0.000%   0.000%
   20    2.2  1.5 -0.5   0.032%   0.028%
   21    3.2  1.5 -0.5   1.032%   0.207%
   22    4.2  1.5 -0.5   0.936%   0.087%
   23    5.2  1.5 -0.5   0.016%   0.003%
   24    6.2  1.5 -0.5   3.235%   0.118%
   25    7.2  1.5 -0.5   1.487%   0.192%
   26    8.2  1.5 -0.5   0.417%   0.160%
   27    9.2  1.5 -0.5   1.580%   0.875%
   28    1.2  1.5 -1.5   0.000%   0.000%
   29    2.2  1.5 -1.5   1.724%   0.048%
   30    3.2  1.5 -1.5   0.834%   0.046%
   31    4.2  1.5 -1.5   1.310%   0.027%
   32    5.2  1.5 -1.5   0.310%   0.089%
   33    6.2  1.5 -1.5   0.003%   0.011%
   34    7.2  1.5 -1.5  40.192%   1.175%
   35    8.2  1.5 -1.5   0.135%   0.376%
   36    9.2  1.5 -1.5  41.896%   1.414%
   37    1.2  0.5  0.5   0.000%   0.002%
   38    2.2  0.5  0.5   0.000%   0.003%
   39    3.2  0.5  0.5   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%
   41    5.2  0.5  0.5   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%
   45    1.2  0.5 -0.5   0.002%   0.000%
   46    2.2  0.5 -0.5   0.003%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%
   48    4.2  0.5 -0.5   0.000%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%


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

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    104329.99  98081.46      8.84   3137.19   3096.20      4.60      0.15      1.22
 REAL TIME  *    105286.09 SEC
 DISK USED  *         1.30 GB (local),       16.42 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2224.958096054773

              CI              CI           MULTI         RHF-SCF
  -2225.11426680  -2224.91851992  -2224.36131495  -2224.45353352
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
