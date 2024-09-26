
 Working directory              : /wrk/irikura/molpro.sg6xE1l8il/
 Global scratch directory       : /wrk/irikura/molpro.sg6xE1l8il/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.sg6xE1l8il/

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
 
 set,dkho=101
 
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Aug-24          TIME: 16:57:13  
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
 SETTING DKHO           =       101.00000000                                  
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

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     27.525 MB (compressed) written to integral file ( 14.5%)

     Node minimum: 1.049 MB, node maximum: 3.932 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.15 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN     96 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.139E-03 0.213E-02 0.149E-01 0.471E-01 0.476E-01 0.476E-01 0.476E-01 0.476E-01
         2 0.441E-02 0.441E-02 0.441E-02 0.138E-01 0.138E-01 0.138E-01 0.705E-01 0.705E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.51      1.25
 REAL TIME  *         2.34 SEC
 DISK USED  *        29.56 MB (local),      415.90 MB (total)
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
   1    -2259.07589217   -2259.07589217     0.00D+00     0.14D+00     0     0       0.01      0.02    start
   2    -2259.09075973      -0.01486757     0.81D-02     0.73D-02     1     0       0.01      0.03    diag2
   3    -2259.09385482      -0.00309509     0.49D-02     0.19D-02     2     0       0.01      0.04    diag2
   4    -2259.09412628      -0.00027146     0.48D-03     0.94D-03     3     0       0.01      0.05    diag2
   5    -2259.09415912      -0.00003284     0.15D-03     0.41D-03     4     0       0.00      0.05    diag2
   6    -2259.09416023      -0.00000112     0.24D-04     0.95D-04     5     0       0.01      0.06    diag2
   7    -2259.09416026      -0.00000002     0.35D-05     0.14D-04     6     0       0.01      0.07    diag2
   8    -2259.09416026      -0.00000000     0.23D-06     0.78D-06     7     0       0.01      0.08    fixocc
   9    -2259.09416026      -0.00000000     0.34D-07     0.14D-06     0     0       0.01      0.09    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2259.094160256925
  RHF One-electron energy           -3146.447871085863
  RHF Two-electron energy             887.353710828938
  RHF Kinetic energy                 2399.925828541673
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.941318324671

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -438.96410     1  1  s    1.00001
    2.1     2.00000   -57.77745     1  2  s    0.99975
    3.1     2.00000    -8.27496     1  3  s    0.99854
    4.1     2.00000    -2.06760     1  1  d2-  0.99991
    5.1     2.00000    -2.06760     1  1  d2+  0.99990
    6.1     2.00000    -2.06760     1  1  d1+  0.99848
    7.1     2.00000    -2.06760     1  1  d1-  0.99848
    8.1     2.00000    -2.06760     1  1  d0   0.99994
    9.1     2.00000    -0.70333     1  4  s    0.99679
    1.2     2.00000   -50.48634     1  1  py   0.99984
    2.2     2.00000   -50.48634     1  1  px   0.99994
    3.2     2.00000   -50.48634     1  1  pz   0.99984
    4.2     2.00000    -5.93361     1  2  py   0.99945
    5.2     2.00000    -5.93361     1  2  pz   0.99945
    6.2     2.00000    -5.93361     1  2  px   0.99953
    7.2     1.00000    -0.36836     1  3  px   1.00625
    8.2     1.00000    -0.36836     1  3  py   1.00625
    9.2     1.00000    -0.36836     1  3  pz   1.00625


 HOMO      9.2    -0.368359 =     -10.0236eV
 LUMO     10.1     0.017175 =       0.4674eV
 LUMO-HOMO         0.385534 =      10.4909eV

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
 CPU TIMES  *         1.66      0.14      1.25
 REAL TIME  *         3.26 SEC
 DISK USED  *        30.74 MB (local),      430.05 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.135D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.570D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.550D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.501D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   6 4 3 5 2 1 4 6 3 5   2 1 4 6 3 5 2 3 5 4   6 2 1 2 3 5 6 4 812
                                        91114151013 7 1 2 5   3 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.473D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.271D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.275D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.186D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.186D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 1 2 3 1   2 3 1 2 310 8 9 7 6   5 4 1 2 3 9 7 5 4 6   810 2 1 3 6 4 5 9 7
                                        810 810 6 4 5 7 9 2   1 3 6 9 710 8 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    3109
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    0  -2259.03808196   -2259.04995139   -0.01186943    0.01969832 0.00004717 0.00000000  0.17E+01      1.88
   2    8   14    0  -2259.04921235   -2259.04929137   -0.00007902    0.00467436 0.00001001 0.00000000  0.13E+00      3.35
   3    6   12    0  -2259.04929138   -2259.04929138   -0.00000000    0.00000287 0.00000001 0.00000000  0.10E-03      4.53

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.40E-07)
                       Final energy:  -2259.04929138
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2259.102016507038
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.01345609
 One electron energy                         -3146.32769981
 Two electron energy                           887.22568331
 Virial ratio                                    1.94128723
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2259.038746359514
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.85464452
 One electron energy                         -3145.82787193
 Two electron energy                           886.78912557
 Virial ratio                                    1.94132316
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2259.038746359485
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.85464452
 One electron energy                         -3145.82787193
 Two electron energy                           886.78912557
 Virial ratio                                    1.94132316
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2259.038746359345
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.85464452
 One electron energy                         -3145.82787193
 Two electron energy                           886.78912557
 Virial ratio                                    1.94132316
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2259.038746359305
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.85464452
 One electron energy                         -3145.82787193
 Two electron energy                           886.78912558
 Virial ratio                                    1.94132316
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2259.038746359297
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.85464452
 One electron energy                         -3145.82787194
 Two electron energy                           886.78912558
 Virial ratio                                    1.94132316
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.390664683696
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000110932
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000002319060
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.609377699003
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.654960766658
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999908126
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999086892
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.345005469574
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.954374549646
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999980942
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999998594048
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.045616831423
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 1   4 5 3 2 6 1 6 3 5 2   4 1 4 3 5 6 2 6 3 5   4 2 1 6 2 3 5 411 7
                                        81214151013 9 1 6 2   5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 2 3 2   3 1 3 1 2 3 1 2 4 9   710 8 6 5 4 6 9 7 5   810 3 1 2 5 6 9 7 4
                                        810 5 6 810 7 9 4 2   3 1 5 610 8 7 9 4 2   3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -438.98199     1  1  s    1.00001
    2.1     2.00000   -57.79492     1  2  s    0.99976
    3.1     2.00000    -8.29186     1  3  s    0.99852
    4.1     2.00000    -2.08480     1  1  d1-  1.00004
    5.1     2.00000    -2.08480     1  1  d0   1.00004
    6.1     2.00000    -2.08480     1  1  d2-  1.00004
    7.1     2.00000    -2.08480     1  1  d2+  1.00004
    8.1     2.00000    -2.08480     1  1  d1+  1.00004
    9.1     1.99190    -0.71438     1  4  s    1.00945
    1.2     2.00000   -50.50381     1  1  py   0.99994
    2.2     2.00000   -50.50381     1  1  pz   0.99994
    3.2     2.00000   -50.50381     1  1  px   0.99994
    4.2     2.00000    -5.95069     1  2  py   0.99950
    5.2     2.00000    -5.95069     1  2  pz   0.99950
    6.2     2.00000    -5.95069     1  2  px   0.99950
    7.2     0.99810    -0.16021     1  3  px   0.94276
    8.2     0.99810    -0.16021     1  3  py   0.94276
    9.2     0.99810    -0.16021     1  3  pz   0.94276
   10.2     0.00460     0.49410     1  3  py  -0.69357    1  4  py  -0.69163    1  5  py   1.25476
   11.2     0.00460     0.49410     1  3  pz  -0.69357    1  4  pz  -0.69163    1  5  pz   1.25476
   12.2     0.00460     0.49410     1  3  px  -0.69357    1  4  px  -0.69163    1  5  px   1.25476
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99655656
 
 Energy:    -2259.10201651
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 aab000      -0.08681196      0.00005358      0.00000003      0.00098641      0.80819205
 2 aba000       0.74332129     -0.00031065     -0.00000026     -0.00038803     -0.32891472
 2 a20000       0.00000025      0.00000001      0.70394160     -0.00000000      0.00000000
 2 a02000      -0.00000025     -0.00000001     -0.70394159     -0.00000000     -0.00000000
 2 02a000      -0.00028719     -0.70394153      0.00000001      0.00000666      0.00001581
 2 20a000       0.00028719      0.70394153     -0.00000001     -0.00000666     -0.00001581
 2 2a0000      -0.00001334      0.00000664      0.00000000      0.70394107     -0.00086061
 2 0a2000       0.00001334     -0.00000664     -0.00000000     -0.70394106      0.00086061
 2 baa000      -0.65650933      0.00025707      0.00000023     -0.00059839     -0.47927733
 
 Energy:    -2259.03874636  -2259.03874636  -2259.03874636  -2259.03874636  -2259.03874636
 


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
 CPU TIMES  *         6.14      4.47      0.14      1.25
 REAL TIME  *         8.32 SEC
 DISK USED  *        48.34 MB (local),      641.32 MB (total)
 SF USED    *        45.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2259.102017  -0.0
    -2259.038746   6.0
    -2259.038746   6.0
    -2259.038746   6.0
    -2259.038746   6.0
    -2259.038746   6.0
                                                  


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
     1     -2259.10201651

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.86D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:        566835
 Total number of contracted configurations:      5415725
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.85 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1238358 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.10201651    -0.00000000    -0.90400206  0.45D-01  0.55D-01     2.30
    2     1     1     1.06479770    -0.73062034 -2259.83263685    -0.73062034    -0.01809993  0.22D-02  0.82D-03    22.77
    3     1     1     1.05779015    -0.74723992 -2259.84925643    -0.01661958    -0.00047540  0.66D-04  0.33D-04    43.19
    4     1     1     1.05729044    -0.74770197 -2259.84971848    -0.00046205    -0.00002369  0.28D-05  0.24D-05    63.46
    5     1     1     1.05748338    -0.74772663 -2259.84974314    -0.00002466    -0.00000123  0.71D-07  0.20D-06    83.63
    6     1     1     1.05754345    -0.74772804 -2259.84974454    -0.00000141    -0.00000007  0.54D-08  0.95D-08   103.77
    7     1     1     1.05754516    -0.74772811 -2259.84974462    -0.00000008    -0.00000000  0.29D-09  0.45D-09   123.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   2.2%  29.1%
 P   0.7%  58.5%   3.9%

 Initialization:   0.9%
 Other:            1.6%

 Total CPU:      123.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9688915


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97197908 (fixed)   0.97217569 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089205   -0.00276823   -0.00324543
 Singles      0.01959025   -0.09503519   -0.10362242
 Pairs        0.03800624   -0.64992469   -0.64086027
 Total        1.05848854   -0.74772811   -0.74772811
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.10201651
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.22809200
 One electron energy                -3145.04027069
 Two electron energy                  885.19052607
 Virial quotient                       -0.94151458
 Correlation energy                    -0.74772811
 !MRCI STATE 1.2 Energy             -2259.849744621612

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.89347815 (Davidson, fixed reference)
 Cluster corrected energies         -2259.89315807 (Davidson, relaxed reference)

 Cluster corrected energies         -2259.89102291 (Pople, fixed reference)
 Cluster corrected energies         -2259.89070630 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       43.19       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       131.39    125.22      4.47      0.14      1.25
 REAL TIME  *       136.03 SEC
 DISK USED  *        90.61 MB (local),        1.12 GB (total)
 SF USED    *       657.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2259.89315807  AU                              


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
     1     -2259.03874636
     2     -2259.03874636
     3     -2259.03874636
     4     -2259.03874636
     5     -2259.03874636

 Number of blocks in overlap matrix:   577   Smallest eigenvalue:  0.12D-05
 Number of N-2 electron functions:    1177
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       2657860
 Total number of contracted configurations:      8629286
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  21282603 words, CPU-Time:     27.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1359484 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.03874636    -0.00000000    -0.90484558  0.49D-01  0.52D-01    34.50
    1     2     2     1.00000000     0.00000000 -2259.03874636    -0.00000000    -0.90480336  0.49D-01  0.52D-01    34.50
    1     3     3     1.00000000     0.00000000 -2259.03874636     0.00000000    -0.90571943  0.50D-01  0.53D-01    34.50
    1     4     4     1.00000000     0.00000000 -2259.03874636    -0.00000000    -0.90503002  0.49D-01  0.52D-01    34.50
    1     5     5     1.00000000     0.00000000 -2259.03874636     0.00000000    -0.90536940  0.50D-01  0.52D-01    34.50
    2     1     1     1.06653343    -0.73698466 -2259.77573102    -0.73698466    -0.01921265  0.23D-02  0.11D-02   213.64
    2     2     2     1.06662269    -0.73696432 -2259.77571068    -0.73696432    -0.01926474  0.23D-02  0.11D-02   213.64
    2     3     3     1.06702248    -0.73687788 -2259.77562424    -0.73687788    -0.01937795  0.24D-02  0.11D-02   213.64
    2     4     4     1.06645841    -0.73685158 -2259.77559794    -0.73685158    -0.01936496  0.23D-02  0.11D-02   213.64
    2     5     5     1.06715330    -0.73651846 -2259.77526482    -0.73651846    -0.01970912  0.25D-02  0.11D-02   213.64
    3     1     1     1.06108260    -0.75472281 -2259.79346917    -0.01773815    -0.00056129  0.52D-04  0.61D-04   392.26
    3     2     2     1.06102677    -0.75472025 -2259.79346661    -0.01775593    -0.00056637  0.51D-04  0.62D-04   392.26
    3     3     3     1.06101178    -0.75470378 -2259.79345014    -0.01782589    -0.00058520  0.55D-04  0.64D-04   392.26
    3     4     4     1.06100856    -0.75469620 -2259.79344256    -0.01784462    -0.00057511  0.52D-04  0.64D-04   392.26
    3     5     5     1.06096607    -0.75467316 -2259.79341952    -0.01815470    -0.00059767  0.55D-04  0.67D-04   392.26
    4     1     1     1.06131198    -0.75532953 -2259.79407589    -0.00060672    -0.00004947  0.35D-05  0.73D-05   570.71
    4     2     2     1.06129141    -0.75532898 -2259.79407534    -0.00060874    -0.00005061  0.37D-05  0.74D-05   570.71
    4     3     3     1.06132166    -0.75532764 -2259.79407400    -0.00062386    -0.00005020  0.35D-05  0.75D-05   570.71
    4     4     4     1.06129088    -0.75532158 -2259.79406794    -0.00062538    -0.00005404  0.37D-05  0.80D-05   570.71
    4     5     5     1.06126113    -0.75531908 -2259.79406544    -0.00064592    -0.00005647  0.40D-05  0.83D-05   570.71
    5     1     1     1.06179111    -0.75538852 -2259.79413488    -0.00005899    -0.00000529  0.39D-06  0.71D-06   747.91
    5     2     2     1.06179731    -0.75538851 -2259.79413487    -0.00005953    -0.00000529  0.39D-06  0.69D-06   747.91
    5     3     3     1.06179989    -0.75538817 -2259.79413453    -0.00006053    -0.00000557  0.42D-06  0.72D-06   747.91
    5     4     4     1.06179767    -0.75538740 -2259.79413376    -0.00006582    -0.00000615  0.46D-06  0.77D-06   747.91
    5     5     5     1.06179121    -0.75538705 -2259.79413341    -0.00006797    -0.00000639  0.47D-06  0.81D-06   747.91
    6     1     1     1.06185010    -0.75539480 -2259.79414116    -0.00000627    -0.00000049  0.33D-07  0.67D-07   924.86
    6     2     2     1.06185108    -0.75539479 -2259.79414115    -0.00000628    -0.00000049  0.32D-07  0.67D-07   924.86
    6     3     3     1.06184923    -0.75539478 -2259.79414113    -0.00000661    -0.00000051  0.34D-07  0.68D-07   924.86
    6     4     4     1.06184860    -0.75539470 -2259.79414106    -0.00000730    -0.00000057  0.37D-07  0.77D-07   924.86
    6     5     5     1.06184811    -0.75539463 -2259.79414099    -0.00000758    -0.00000061  0.40D-07  0.82D-07   924.86
    7     1     1     1.06186052    -0.75539535 -2259.79414171    -0.00000056    -0.00000006  0.48D-08  0.76D-08  1101.73
    7     2     2     1.06186029    -0.75539535 -2259.79414171    -0.00000056    -0.00000006  0.46D-08  0.77D-08  1101.73
    7     3     3     1.06185955    -0.75539535 -2259.79414171    -0.00000057    -0.00000006  0.47D-08  0.81D-08  1101.73
    7     4     4     1.06185843    -0.75539535 -2259.79414171    -0.00000065    -0.00000007  0.55D-08  0.94D-08  1101.73
    7     5     5     1.06185848    -0.75539532 -2259.79414168    -0.00000069    -0.00000008  0.63D-08  0.99D-08  1101.73
    8     1     1     1.06186313    -0.75539543 -2259.79414178    -0.00000007    -0.00000001  0.90D-09  0.14D-08  1279.07
    8     2     2     1.06186393    -0.75539542 -2259.79414178    -0.00000007    -0.00000001  0.72D-09  0.11D-08  1279.07
    8     3     3     1.06186358    -0.75539541 -2259.79414177    -0.00000007    -0.00000001  0.75D-09  0.11D-08  1279.07
    8     4     4     1.06186385    -0.75539541 -2259.79414177    -0.00000007    -0.00000001  0.71D-09  0.11D-08  1279.07
    8     5     5     1.06186306    -0.75539541 -2259.79414177    -0.00000008    -0.00000001  0.99D-09  0.15D-08  1279.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   1.2%  17.2%
 P   0.5%  58.7%  14.4%

 Initialization:   2.2%
 Other:            4.1%

 Total CPU:     1279.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000          -0.0003390   0.0791051  -0.0016697  -0.0000283   0.9630933
 2222222222//\000          -0.0009347   0.9630848  -0.0040698  -0.0000696  -0.0791119
 222222222220/000          -0.6833067  -0.0006784  -0.0000002  -0.0000000  -0.0001848
 222222222202/000           0.6833009   0.0006784   0.0000002   0.0000000   0.0001848
 22222222222/0000           0.0000000  -0.0000002   0.0116415  -0.6832049   0.0000001
 22222222220/2000          -0.0000000   0.0000002  -0.0116415   0.6832047  -0.0000001
 2222222222/20000          -0.0000034   0.0029652   0.6831981   0.0116414   0.0009412
 2222222222/02000           0.0000034  -0.0029652  -0.6831975  -0.0116414  -0.0009412

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000238    0.969953   -0.000005   -0.000000   -0.000969
 2          -0.024192    0.000963    0.004209    0.000000    0.969642
 3          -0.001231    0.000000    0.969802   -0.016525   -0.004241
 4          -0.000021    0.000000    0.016525    0.969812   -0.000072
 5           0.969651    0.000262    0.001336   -0.000000    0.024186

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969953    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.969953    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.969953    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.969953   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.969953


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96995288 (fixed)   0.97011384 (relaxed)   0.96995339 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098998   -0.00328129   -0.61652587
 Singles      0.02286851   -0.10147917   -0.11172208
 Pairs        0.03905586    0.00065012   -0.02714748
 Total        1.06291435   -0.10411035   -0.75539543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03874636
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15613660
 One electron energy                -3144.66192342
 Two electron energy                  884.86778164
 Virial quotient                       -0.94151964
 Correlation energy                    -0.75539543
 !MRCI STATE 1.2 Energy             -2259.794141784792

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84166700 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84140142 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84166700 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83967465 (Pople, fixed reference)
 Cluster corrected energies         -2259.83940667 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83967465 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96964168 (fixed)   0.97011347 (relaxed)   0.96995303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098996   -0.00328129   -0.00398710
 Singles      0.02286847   -0.10147892   -0.11172210
 Pairs        0.03905671   -0.65042636   -0.63968622
 Total        1.06291513   -0.75518656   -0.75539542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03874636
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15632436
 One electron energy                -3144.66206592
 Two electron energy                  884.86792414
 Virial quotient                       -0.94151957
 Correlation energy                    -0.75539542
 !MRCI STATE 2.2 Energy             -2259.794141775441

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84166758 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84140202 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84166758 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83967523 (Pople, fixed reference)
 Cluster corrected energies         -2259.83940728 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83967523 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96980236 (fixed)   0.97011363 (relaxed)   0.96995319 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098997   -0.00328129   -0.61859031
 Singles      0.02286842   -0.10147896   -0.11172201
 Pairs        0.03905640    0.00284451   -0.02508310
 Total        1.06291479   -0.10191574   -0.75539541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03874636
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15627598
 One electron energy                -3144.66202976
 Two electron energy                  884.86788799
 Virial quotient                       -0.94151959
 Correlation energy                    -0.75539541
 !MRCI STATE 3.2 Energy             -2259.794141773586

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84166732 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84140175 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84166732 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83967497 (Pople, fixed reference)
 Cluster corrected energies         -2259.83940700 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83967497 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.96981229 (fixed)   0.97011351 (relaxed)   0.96995307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098996   -0.00328129   -0.61595979
 Singles      0.02286843   -0.10147892   -0.11172204
 Pairs        0.03905666    0.00004863   -0.02771358
 Total        1.06291505   -0.10471158   -0.75539541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03874636
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15631774
 One electron energy                -3144.66206321
 Two electron energy                  884.86792144
 Virial quotient                       -0.94151957
 Correlation energy                    -0.75539541
 !MRCI STATE 4.2 Energy             -2259.794141773328

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84166752 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84140196 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84166752 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83967517 (Pople, fixed reference)
 Cluster corrected energies         -2259.83940721 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83967517 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96965087 (fixed)   0.97011387 (relaxed)   0.96995341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00099000   -0.00328129   -0.60065069
 Singles      0.02286863   -0.10147931   -0.11172220
 Pairs        0.03905568   -0.01622373   -0.04302252
 Total        1.06291430   -0.12098433   -0.75539541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03874636
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15605657
 One electron energy                -3144.66185379
 Two electron energy                  884.86771203
 Virial quotient                       -0.94151967
 Correlation energy                    -0.75539541
 !MRCI STATE 5.2 Energy             -2259.794141766090

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84166694 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84140135 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84166694 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83967459 (Pople, fixed reference)
 Cluster corrected energies         -2259.83940660 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83967459 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1510.86   1379.47    125.22      4.47      0.14      1.25
 REAL TIME  *      1544.52 SEC
 DISK USED  *       425.35 MB (local),        5.04 GB (total)
 SF USED    *         3.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2259.84166700  AU                              
 SETTING HLSDIAG(3)     =     -2259.84166758  AU                              
 SETTING HLSDIAG(4)     =     -2259.84166732  AU                              
 SETTING HLSDIAG(5)     =     -2259.84166752  AU                              
 SETTING HLSDIAG(6)     =     -2259.84166694  AU                              


         HLSDIAG
    -2259.893158
    -2259.841667
    -2259.841668
    -2259.841667
    -2259.841668
    -2259.841667
                                                  

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

 Time for Seward_LS:       7.84 sec

       14212507. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3485 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.84 sec, REAL time:      8.04 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.15 sec, REAL time:      0.22 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:   278.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1519.35      8.46   1379.47    125.22      4.47      0.14      1.25
 REAL TIME  *      1554.01 SEC
 DISK USED  *       425.43 MB (local),        5.79 GB (total)
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

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:  -2259.849745
 Replaced energies:  -2259.893158

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:  -2259.794142  -2259.794142  -2259.794142  -2259.794142  -2259.794142
 Replaced energies:  -2259.841667  -2259.841668  -2259.841667  -2259.841668  -2259.841667



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2259.89315807

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11300.98       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       1.22      -0.03      -0.00      14.78       0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11300.86       0.00       0.00       0.00       0.03
                            0.00      -0.00      -0.00      -0.00      -1.22      -0.00      -0.00       0.03       0.01      -0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11300.91       0.00       0.00       7.41
                            0.00      -0.00      -0.00      -0.00       0.03       0.00      -0.00       7.41       0.00       0.14

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11300.87       0.00       0.11
                            0.00       0.00      -0.00      -0.00       0.00      -0.03      -7.41      -0.00      -0.01      -7.42

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11301.00       0.01
                           -0.00      -0.00       0.00      -0.00     -14.78      -0.01      -0.00       0.01       0.00       0.00

   10   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.03       7.41       0.11       0.01   11300.98
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.14       7.42      -0.00       0.00

   11   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.03      -0.00      -0.22      13.41      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      12.19       0.22       0.05       1.22

   12   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -7.41       0.22       0.00      -0.07       0.11       0.00
                           -0.00       0.00      -0.00      -0.00       0.14     -12.19      -0.00       0.00       8.44      -0.03

   13   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.11     -13.41       0.07      -0.00      -6.34       0.00
                           -0.00       0.00       0.00      -0.00      -7.42      -0.22      -0.00       0.00       0.14      -0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.01       0.00      -0.11       6.34       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.05      -8.44      -0.14      -0.00      14.78


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

    4   1.2  1.5 -1.5      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

    5   1.2  0.5  0.5      -0.03      -7.41      -0.11      -0.01
                            0.00      -0.14       7.42      -0.00

    6   2.2  0.5  0.5      -0.00       0.22     -13.41       0.00
                            0.00      12.19       0.22       0.05

    7   3.2  0.5  0.5      -0.22       0.00       0.07      -0.11
                          -12.19       0.00       0.00       8.44

    8   4.2  0.5  0.5      13.41      -0.07      -0.00       6.34
                           -0.22      -0.00      -0.00       0.14

    9   5.2  0.5  0.5      -0.00       0.11      -6.34       0.00
                           -0.05      -8.44      -0.14       0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                           -1.22       0.03       0.00     -14.78

   11   2.2  0.5 -0.5   11300.86       0.00       0.00       0.00
                            0.00       0.00      -0.03      -0.01

   12   3.2  0.5 -0.5       0.00   11300.91       0.00       0.00
                           -0.00       0.00      -7.41      -0.00

   13   4.2  0.5 -0.5       0.00       0.00   11300.87       0.00
                            0.03       7.41       0.00       0.01

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11301.00
                            0.01       0.00      -0.01      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2259.89315807     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2259.89315807     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2259.89315807     0.00000000        0.00      0.00000000        0.00      0.0000
     4 -2259.89315807     0.00000000        0.00      0.00000000        0.00      0.0000
     5 -2259.84176885     0.05138922    11278.63      0.05138922    11278.63      1.3984
     6 -2259.84176885     0.05138922    11278.63      0.05138922    11278.63      1.3984
     7 -2259.84176844     0.05138962    11278.72      0.05138962    11278.72      1.3984
     8 -2259.84176844     0.05138962    11278.72      0.05138962    11278.72      1.3984
     9 -2259.84159996     0.05155811    11315.70      0.05155811    11315.70      1.4030
    10 -2259.84159996     0.05155811    11315.70      0.05155811    11315.70      1.4030
    11 -2259.84159972     0.05155834    11315.75      0.05155834    11315.75      1.4030
    12 -2259.84159972     0.05155834    11315.75      0.05155834    11315.75      1.4030
    13 -2259.84159938     0.05155869    11315.82      0.05155869    11315.82      1.4030
    14 -2259.84159938     0.05155869    11315.82      0.05155869    11315.82      1.4030


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000756536   0.006393490   0.999979035   0.000692984  -0.000000000  -0.000000017  -0.000000016  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.907858261   0.107401681   0.000004662  -0.006502183  -0.000000041  -0.000000000   0.000000000   0.000000007
                        -0.392682089  -0.100082259   0.000342510   0.000424267   0.000000053   0.000000000   0.000000002   0.000000224

    3    1.2  1.5 -0.5  -0.138572062   0.989130042  -0.006428905  -0.000083430   0.000000000  -0.000000067  -0.000000224   0.000000002
                        -0.048471901  -0.005344165  -0.000002743   0.000346272   0.000000000   0.000000001  -0.000000001  -0.000000000

    4    1.2  1.5 -1.5   0.005788259   0.000786085  -0.000689260   0.993671498  -0.000000010  -0.000000000   0.000000000   0.000000000
                        -0.002887474  -0.000353508   0.000077784  -0.112133356   0.000000013   0.000000000  -0.000000000   0.000000016

    5    1.2  0.5  0.5   0.000000142   0.000000036  -0.000000000  -0.000000000   0.103705574   0.000501240   0.004482600   0.617909776
                         0.000000328   0.000000039   0.000000000  -0.000000002   0.081693053  -0.000001039  -0.000002923  -0.020142117

    6    2.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.382374289   0.000017436   0.000002894  -0.004266389
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.497622909   0.003735367  -0.002285771  -0.081104217

    7    3.2  0.5  0.5   0.000000000   0.000000001   0.000000001  -0.000000000   0.002451171   0.007608912   0.007674623   0.000025575
                        -0.000000001   0.000000010  -0.000000018  -0.000000000  -0.003181513   0.468959387  -0.424222050   0.002435306

    8    4.2  0.5  0.5   0.000000003  -0.000000024  -0.000000041  -0.000000000   0.001364057  -0.601765812  -0.195432308   0.001545080
                         0.000000001   0.000000000  -0.000000000  -0.000000000   0.000997816   0.007190822  -0.006387826  -0.000015668

    9    5.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.051009952  -0.000008810   0.000013134   0.020682304
                         0.000000000   0.000000000   0.000000000   0.000000000   0.062784689   0.001008002   0.003949448   0.626458997

   10    1.2  0.5 -0.5   0.000000018   0.000000002   0.000000000  -0.000000000   0.000307470   0.001176865  -0.003580599  -0.000117170
                        -0.000000050   0.000000357  -0.000000002  -0.000000000  -0.000395860   0.132012181   0.618227609  -0.004481070

   11    2.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.002944119   0.627562582  -0.081189406   0.002284873
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.002299007   0.001965221  -0.002092012  -0.000064131

   12    3.2  0.5 -0.5  -0.000000003  -0.000000001   0.000000000   0.000000003  -0.366305832  -0.004016243   0.002435117   0.423864172
                        -0.000000009  -0.000000001  -0.000000000   0.000000017  -0.292917804  -0.000007430  -0.000039678  -0.019037110

   13    4.2  0.5 -0.5  -0.000000022  -0.000000003   0.000000000  -0.000000041  -0.373835101  -0.000045198   0.000025731   0.011621319
                         0.000000009   0.000000002  -0.000000000   0.000000005   0.471615435   0.001689451   0.001544945   0.195191025

   14    5.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000802750   0.080871307   0.626788232  -0.003948382
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000609704  -0.001940109   0.003891551   0.000092680


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5  -0.000000000   0.000000021   0.000000002   0.000000032   0.000000000   0.000000001
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000005   0.000000000   0.000000024  -0.000000001  -0.000000241   0.000000007
                         0.000000004  -0.000000000  -0.000000115   0.000000006   0.000000063  -0.000000012

    3    1.2  1.5 -0.5  -0.000000000  -0.000000007  -0.000000007  -0.000000118   0.000000010   0.000000249
                         0.000000000   0.000000001  -0.000000000  -0.000000001   0.000000009   0.000000003

    4    1.2  1.5 -1.5  -0.000000018  -0.000000000  -0.000000007   0.000000000  -0.000000001   0.000000000
                        -0.000000011  -0.000000000   0.000000032  -0.000000002   0.000000000  -0.000000000

    5    1.2  0.5  0.5   0.035266586  -0.000037779  -0.329761446   0.018396057   0.175211402  -0.032330868
                        -0.055757552  -0.001049270  -0.070320849   0.003872935   0.670660533  -0.020203950

    6    2.2  0.5  0.5   0.646581937   0.011949587  -0.035961225   0.001982793   0.018607069  -0.000578679
                         0.373708882   0.007098819   0.199683661  -0.009336282  -0.004508193   0.001264921

    7    3.2  0.5  0.5  -0.001296334  -0.000716891  -0.000831410  -0.016105063  -0.002248009  -0.000140658
                         0.003693142  -0.241636650   0.040158546   0.733221341   0.001959247   0.045547381

    8    4.2  0.5  0.5  -0.011175522   0.612921899   0.024610093   0.472294031  -0.000114282  -0.000190412
                        -0.000299169   0.000125827   0.000317227   0.010953713  -0.000242999   0.000781279

    9    5.2  0.5  0.5   0.050146913   0.000945190   0.059837996  -0.003302271   0.693759820  -0.020903063
                         0.031757332  -0.000233383  -0.278551094   0.015658107  -0.181040057   0.033077557

   10    1.2  0.5 -0.5   0.000572116   0.001563145  -0.000179578  -0.002344135   0.026519040   0.008677786
                        -0.000880386   0.065955995   0.018798465   0.337167819  -0.027390238  -0.693115634

   11    2.2  0.5 -0.5  -0.013899007   0.746712788  -0.009544218  -0.202742698   0.000866061   0.019145142
                        -0.000058860   0.012105422  -0.000074323  -0.007884962   0.001088501  -0.000101810

   12    3.2  0.5 -0.5   0.124906532   0.000787967   0.719485558  -0.039395326   0.011096866  -0.002653418
                        -0.206850533  -0.003833913   0.142173978  -0.007836348   0.044175143  -0.001360724

   13    4.2  0.5 -0.5  -0.525685471  -0.009737629  -0.091013071   0.004990065   0.000372821  -0.000052449
                        -0.315163539  -0.005491847   0.463571199  -0.024100966   0.000712501   0.000263358

   14    5.2  0.5 -0.5  -0.000690517   0.059339433   0.016001863   0.284901539   0.028248488   0.716938742
                        -0.000686323  -0.001439699   0.000147228   0.001552738   0.027075556   0.008776647


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.004%  99.996%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  97.841%   2.155%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   2.155%  97.841%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.004%   0.000%   0.000%  99.996%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.743%   0.000%   0.002%  38.222%   0.435%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  39.384%   0.001%   0.001%   0.660%  55.773%   0.019%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%  21.998%  18.002%   0.001%   0.002%   5.839%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  36.217%   3.823%   0.000%   0.012%  37.567%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.654%   0.000%   0.002%  39.288%   0.352%   0.000%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   1.743%  38.222%   0.002%   0.000%   0.435%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  39.384%   0.660%   0.001%   0.019%  55.773%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.998%   0.002%   0.001%  18.002%   5.839%   0.002%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  36.217%   0.000%   0.000%   3.823%  37.567%   0.012%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.654%  39.288%   0.002%   0.000%   0.352%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5  11.369%   0.035%  48.048%   0.145%
    6    2.2  0.5  0.5   4.117%   0.009%   0.037%   0.000%
    7    3.2  0.5  0.5   0.161%  53.787%   0.001%   0.207%
    8    4.2  0.5  0.5   0.061%  22.318%   0.000%   0.000%
    9    5.2  0.5  0.5   8.117%   0.026%  51.408%   0.153%
   10    1.2  0.5 -0.5   0.035%  11.369%   0.145%  48.048%
   11    2.2  0.5 -0.5   0.009%   4.117%   0.000%   0.037%
   12    3.2  0.5 -0.5  53.787%   0.161%   0.207%   0.001%
   13    4.2  0.5 -0.5  22.318%   0.061%   0.000%   0.000%
   14    5.2  0.5 -0.5   0.026%   8.117%   0.153%  51.408%


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

              2       7      377.94       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6085.45   4566.09      8.46   1379.47    125.22      4.47      0.14      1.25
 REAL TIME  *      6167.50 SEC
 DISK USED  *       425.43 MB (local),        5.79 GB (total)
 SF USED    *         3.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2259.841599378117

              CI              CI           MULTI         RHF-SCF
  -2259.79414177  -2259.84974462  -2259.03874636  -2259.09416026
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
