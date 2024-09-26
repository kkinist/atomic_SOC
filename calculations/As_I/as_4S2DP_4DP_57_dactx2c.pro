
 Working directory              : /wrk/irikura/molpro.n2qvC616WP/
 Global scratch directory       : /wrk/irikura/molpro.n2qvC616WP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.n2qvC616WP/

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
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Aug-24          TIME: 11:47:37  
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

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     27.263 MB (compressed) written to integral file ( 14.7%)

     Node minimum: 1.573 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.12 SEC
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
 CPU TIMES  *         1.45      1.13
 REAL TIME  *         2.36 SEC
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
   2    -2259.09075973      -0.01486757     0.81D-02     0.73D-02     1     0       0.00      0.02    diag2
   3    -2259.09385482      -0.00309509     0.49D-02     0.19D-02     2     0       0.01      0.03    diag2
   4    -2259.09412628      -0.00027146     0.48D-03     0.94D-03     3     0       0.01      0.04    diag2
   5    -2259.09415912      -0.00003284     0.15D-03     0.41D-03     4     0       0.01      0.05    diag2
   6    -2259.09416023      -0.00000112     0.24D-04     0.95D-04     5     0       0.01      0.06    diag2
   7    -2259.09416026      -0.00000002     0.35D-05     0.14D-04     6     0       0.00      0.06    diag2
   8    -2259.09416026      -0.00000000     0.23D-06     0.78D-06     7     0       0.01      0.07    fixocc
   9    -2259.09416026      -0.00000000     0.34D-07     0.14D-06     0     0       0.01      0.08    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2259.094160256924
  RHF One-electron energy           -3146.447871085845
  RHF Two-electron energy             887.353710828921
  RHF Kinetic energy                 2399.925828541628
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
    6.1     2.00000    -2.06760     1  1  d1+  0.99855
    7.1     2.00000    -2.06760     1  1  d1-  0.99856
    8.1     2.00000    -2.06760     1  1  d0   0.99994
    9.1     2.00000    -0.70333     1  4  s    0.99679
    1.2     2.00000   -50.48634     1  1  py   0.99991
    2.2     2.00000   -50.48634     1  1  px   0.99993
    3.2     2.00000   -50.48634     1  1  pz   0.99991
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
 CPU TIMES  *         1.53      0.08      1.13
 REAL TIME  *         2.88 SEC
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
 Number of states:             9
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.564D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.534D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.513D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   6 4 3 5 2 1 4 6 3 5   2 1 4 6 3 5 2 3 5 4   6 2 1 2 3 5 6 4 812
                                        91114151013 7 1 2 5   3 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.716D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.106D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.436D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.226D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.225D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.115D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.115D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 1 2 3 1   2 3 1 2 310 8 9 7 6   5 4 1 2 3 9 7 5 4 6   810 2 1 3 6 4 5 9 7
                                        810 810 6 4 5 7 9 2   1 3 6 7 910 8 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    5159
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0  -2258.91870422   -2258.93278581   -0.01408158    0.07844676 0.00052961 0.00000000  0.12E+01      1.23
   2    7   12    0  -2258.93245450   -2258.93247029   -0.00001579    0.00489191 0.00000002 0.00000000  0.22E-01      2.37
   3    6   12    0  -2258.93247031   -2258.93247031   -0.00000000    0.00000813 0.00000000 0.00000000  0.40E-04      3.48

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:  -2258.93247031
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2259.092413435183
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.49061331
 One electron energy                         -3147.66399453
 Two electron energy                           888.57158109
 Virial ratio                                    1.94109612
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2258.830240805311
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11828423
 One electron energy                         -3137.81081385
 Two electron energy                           878.98057305
 Virial ratio                                    1.94152517
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2258.830240805269
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11828423
 One electron energy                         -3137.81081385
 Two electron energy                           878.98057305
 Virial ratio                                    1.94152517
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2258.830240805260
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11828423
 One electron energy                         -3137.81081387
 Two electron energy                           878.98057307
 Virial ratio                                    1.94152517
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2258.830240805164
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11828423
 One electron energy                         -3137.81081388
 Two electron energy                           878.98057307
 Virial ratio                                    1.94152517
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2258.830240805154
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11828423
 One electron energy                         -3137.81081388
 Two electron energy                           878.98057307
 Virial ratio                                    1.94152517
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2258.825471571720
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11779684
 One electron energy                         -3137.80905486
 Two electron energy                           878.98358328
 Virial ratio                                    1.94152337
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2258.825471571684
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11779684
 One electron energy                         -3137.80905488
 Two electron energy                           878.98358330
 Virial ratio                                    1.94152337
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy             -2258.825471571553
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.11779684
 One electron energy                         -3137.80905488
 Two electron energy                           878.98358331
 Virial ratio                                    1.94152337
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2259.025859773726
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.35383987
 One electron energy                         -3147.07542756
 Two electron energy                           888.04956779
 Virial ratio                                    1.94112202
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2259.025859773679
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.35383987
 One electron energy                         -3147.07542757
 Two electron energy                           888.04956779
 Virial ratio                                    1.94112202
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2259.025859773677
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.35383987
 One electron energy                         -3147.07542756
 Two electron energy                           888.04956779
 Virial ratio                                    1.94112202
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2259.025859773666
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.35383987
 One electron energy                         -3147.07542756
 Two electron energy                           888.04956779
 Virial ratio                                    1.94112202
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2259.025859773633
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.35383987
 One electron energy                         -3147.07542757
 Two electron energy                           888.04956779
 Virial ratio                                    1.94112202
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -2259.000888052040
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.25516586
 One electron energy                         -3146.66787372
 Two electron energy                           887.66698567
 Virial ratio                                    1.94115031
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy             -2259.000888052035
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.25516586
 One electron energy                         -3146.66787372
 Two electron energy                           887.66698567
 Virial ratio                                    1.94115031
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy             -2259.000888051969
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.25516586
 One electron energy                         -3146.66787372
 Two electron energy                           887.66698567
 Virial ratio                                    1.94115031
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     2.874092261386
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.000000184659
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     4.000000000000
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.125927364420
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000074322
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.999999997424
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000002617
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999999862
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.078649787077
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999989784
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999141870
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.921395434145
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000111162
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999795
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.005079710823
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999932630
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000000000
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.994918775469
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999992763
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999999999818
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999862
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000320
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     2.919231156166
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000026125
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999993525840
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.080729867349
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999959330
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000001436
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999998661
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.120828027791
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     3.999999882712
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000000000
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.879153860111
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.999999932915
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000002758
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.999999997521
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999818
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.002119056757
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999984091
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000007332290
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.997874698505
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.999999929508
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999998769
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000001340
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 1   6 4 2 5 3 1 3 5 4 6   2 1 6 2 4 3 5 6 2 4   3 5 1 6 2 4 3 511 7
                                        812 914151013 1 6 2   4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 1 3 2 9 710 8 4   6 5 1 3 2 5 6 4 810   9 7 3 2 1 5 6 4 810
                                        9 7 5 6 4 810 7 9 3   2 1 5 6 410 8 7 9 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -439.08383     1  1  s    1.00001
    2.1     2.00000   -57.89571     1  2  s    0.99976
    3.1     2.00000    -8.39251     1  3  s    0.99855
    4.1     2.00000    -2.18483     1  1  d1-  1.00034
    5.1     2.00000    -2.18483     1  1  d0   1.00034
    6.1     2.00000    -2.18483     1  1  d1+  1.00034
    7.1     2.00000    -2.18483     1  1  d2-  1.00034
    8.1     2.00000    -2.18483     1  1  d2+  1.00034
    9.1     1.97954    -0.79070     1  4  s    1.04951
    1.2     2.00000   -50.60449     1  1  pz   0.99994
    2.2     2.00000   -50.60449     1  1  py   0.99994
    3.2     2.00000   -50.60449     1  1  px   0.99994
    4.2     2.00000    -6.05055     1  2  pz   0.99944
    5.2     2.00000    -6.05055     1  2  py   0.99944
    6.2     2.00000    -6.05055     1  2  px   0.99944
    7.2     0.84698    -0.20930     1  3  px   1.02172
    8.2     0.84698    -0.20930     1  3  py   1.02172
    9.2     0.84698    -0.20930     1  3  pz   1.02172
   10.2     0.15984     0.04453     1  3  pz  -0.48846    1  8  pz   0.71546    1  9  pz   0.41625
   11.2     0.15984     0.04453     1  3  py  -0.48846    1  8  py   0.71546    1  9  py   0.41625
   12.2     0.15984     0.04453     1  3  px  -0.48846    1  8  px   0.71546    1  9  px   0.41625
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aaa000       0.99914166     -0.00000006     -0.00000000     -0.00000000      0.00000009     -0.00000000     -0.00000000
 2 a0a0a0       0.00611544      0.80814469      0.00018390      0.00001522      0.02881721     -0.00004000      0.00000000
 2 aa0a00      -0.00611543      0.37911588      0.00011353      0.00000714      0.71428231     -0.00044838     -0.00000000
 2 aa00a0      -0.00000000     -0.00001319     -0.00001167      0.70031869     -0.00000000      0.00000001      0.00003554
 2 0aa0a0       0.00000000      0.00015840     -0.70031864     -0.00001166      0.00002727      0.00003618      0.70021671
 2 a0aa00      -0.00000000      0.00001319      0.00001167     -0.70031863      0.00000000     -0.00000001      0.00003554
 2 a0a00a       0.00000000     -0.00015840      0.70031863      0.00001166     -0.00002727     -0.00003618      0.70021673
 2 aa000a      -0.00000000      0.00001934      0.00003620     -0.00000001      0.00042934      0.70031854      0.00000945
 2 0aaa00      -0.00000000      0.00001934      0.00003620     -0.00000001      0.00042934      0.70031850     -0.00000945
 2 0aa00a      -0.00611530      0.42902878      0.00007037      0.00000808     -0.68546511      0.00040838      0.00000000
 0 a2a0a0       0.01896870     -0.08383519     -0.00001908     -0.00000158     -0.00298943      0.00000415     -0.00000000
 0 aa2a00      -0.01896870     -0.03932866     -0.00001178     -0.00000074     -0.07409811      0.00004651      0.00000000
 0 2aaa00       0.00000000     -0.00000201     -0.00000376      0.00000000     -0.00004454     -0.07264954      0.00000099
 0 a2aa00      -0.00000000     -0.00000137     -0.00000121      0.07264955     -0.00000000      0.00000000     -0.00000373
 0 2aa0a0      -0.00000000     -0.00001643      0.07264955      0.00000121     -0.00000283     -0.00000375     -0.07357943
 0 a2a00a      -0.00000000      0.00001643     -0.07264954     -0.00000121      0.00000283      0.00000375     -0.07357943
 0 aa20a0      -0.00000000      0.00000137      0.00000121     -0.07264955      0.00000000     -0.00000000     -0.00000373
 0 aa200a       0.00000000     -0.00000201     -0.00000376      0.00000000     -0.00004454     -0.07264954     -0.00000099
 0 2aa00a      -0.01896870     -0.04450652     -0.00000730     -0.00000084      0.07110867     -0.00004236     -0.00000000
 2 0a0a0a      -0.01223084     -0.07057132     -0.00001606     -0.00000133     -0.00251637      0.00000349     -0.00000000
 2 00a0aa       0.01223084     -0.03310625     -0.00000991     -0.00000062     -0.06237482      0.00003915     -0.00000000
 2 0a0aa0      -0.00000000     -0.00001383      0.06115544      0.00000102     -0.00000238     -0.00000316     -0.06114912
 2 a00a0a      -0.00000000      0.00001383     -0.06115544     -0.00000102      0.00000238      0.00000316     -0.06114912
 2 a000aa      -0.00000000     -0.00000169     -0.00000316      0.00000000     -0.00003749     -0.06115543     -0.00000083
 2 00aaa0       0.00000000     -0.00000169     -0.00000316      0.00000000     -0.00003749     -0.06115543      0.00000083
 2 0a00aa      -0.00000000      0.00000115      0.00000102     -0.06115535      0.00000000     -0.00000000     -0.00000310
 2 00aa0a      -0.00000000     -0.00000115     -0.00000102      0.06115535     -0.00000000      0.00000000     -0.00000310
 2 a00aa0       0.01223084     -0.03746501     -0.00000614     -0.00000071      0.05985836     -0.00003566     -0.00000000
 
 Energy:    -2259.09241344  -2258.83024081  -2258.83024081  -2258.83024081  -2258.83024081  -2258.83024081  -2258.82547157

 State:              8               9
 2 aaa000       0.00000000      0.00000000
 2 a0a0a0       0.00000000      0.00000000
 2 aa0a00       0.00000000     -0.00000000
 2 aa00a0       0.70021670      0.00000821
 2 0aa0a0      -0.00003554     -0.00000945
 2 a0aa00       0.70021675      0.00000821
 2 a0a00a      -0.00003554     -0.00000945
 2 aa000a      -0.00000821      0.70021670
 2 0aaa00       0.00000821     -0.70021674
 2 0aa00a       0.00000000      0.00000000
 0 a2a0a0      -0.00000000     -0.00000000
 0 aa2a00      -0.00000000      0.00000000
 0 2aaa00      -0.00000086      0.07357944
 0 a2aa00      -0.07357943     -0.00000086
 0 2aa0a0       0.00000373      0.00000099
 0 a2a00a       0.00000373      0.00000099
 0 aa20a0      -0.07357943     -0.00000086
 0 aa200a       0.00000086     -0.07357943
 0 2aa00a      -0.00000000     -0.00000000
 2 0a0a0a      -0.00000000     -0.00000000
 2 00a0aa      -0.00000000      0.00000000
 2 0a0aa0       0.00000310      0.00000083
 2 a00a0a       0.00000310      0.00000083
 2 a000aa       0.00000072     -0.06114912
 2 00aaa0      -0.00000072      0.06114913
 2 0a00aa      -0.06114903     -0.00000072
 2 00aa0a      -0.06114903     -0.00000072
 2 a00aa0      -0.00000000     -0.00000000
 
 Energy:    -2258.82547157  -2258.82547157
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aab000       0.81355312      0.00002843      0.00013960     -0.01872969     -0.00009168      0.00000000      0.00000000
 2 baa000      -0.39055602     -0.00000367     -0.00117336      0.71392165     -0.00009198     -0.00000000     -0.00000000
 2 a02000       0.00002486     -0.70474438      0.00000556      0.00000998     -0.00000223      0.00000994      0.69477326
 2 a20000      -0.00002486      0.70474437     -0.00000556     -0.00000998      0.00000223      0.00000994      0.69477327
 2 02a000      -0.00008255      0.00000223      0.00002605     -0.00013592     -0.70474436     -0.00002438      0.00000000
 2 20a000       0.00008255     -0.00000223     -0.00002605      0.00013592      0.70474435     -0.00002438      0.00000000
 2 0a2000       0.00009547     -0.00000557     -0.70474351     -0.00110605     -0.00002584      0.69477326     -0.00000994
 2 2a0000      -0.00009547      0.00000557      0.70474349      0.00110605      0.00002584      0.69477326     -0.00000994
 2 aba000      -0.42299710     -0.00002476      0.00103375     -0.69519196      0.00018366     -0.00000000     -0.00000000
 0 22a000       0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000529     -0.00000000
 0 2a2000      -0.00000000      0.00000000      0.00000001      0.00000000      0.00000000     -0.15085456      0.00000216
 0 a22000       0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000216     -0.15085455
 2 aa000b       0.00000480     -0.00000028     -0.03546999     -0.00005567     -0.00000130     -0.05423846      0.00000078
 2 a0a00b      -0.00000415      0.00000011      0.00000131     -0.00000684     -0.03547004      0.00000190     -0.00000000
 2 a0ab00       0.00000125     -0.03546994      0.00000028      0.00000050     -0.00000011      0.00000078      0.05423836
 2 0aab00       0.00000480     -0.00000028     -0.03546990     -0.00005567     -0.00000130      0.05423836     -0.00000078
 2 aa00b0      -0.00000125      0.03546994     -0.00000028     -0.00000050      0.00000011      0.00000078      0.05423836
 2 0aa0b0       0.00000415     -0.00000011     -0.00000131      0.00000684      0.03546994      0.00000190     -0.00000000
 
 Energy:    -2259.02585977  -2259.02585977  -2259.02585977  -2259.02585977  -2259.02585977  -2259.00088805  -2259.00088805

 State:              8
 2 aab000      -0.00000000
 2 baa000       0.00000000
 2 a02000       0.00000000
 2 a20000       0.00000000
 2 02a000       0.69477326
 2 20a000       0.69477325
 2 0a2000       0.00002438
 2 2a0000       0.00002438
 2 aba000      -0.00000000
 0 22a000      -0.15085456
 0 2a2000      -0.00000529
 0 a22000      -0.00000000
 2 aa000b      -0.00000190
 2 a0a00b      -0.05423846
 2 a0ab00       0.00000000
 2 0aab00       0.00000190
 2 aa00b0       0.00000000
 2 0aa0b0      -0.05423836
 
 Energy:    -2259.00088805
 


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
 CPU TIMES  *         5.01      3.48      0.08      1.13
 REAL TIME  *         6.88 SEC
 DISK USED  *        48.34 MB (local),      641.32 MB (total)
 SF USED    *        45.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2259.092413   0.0
    -2258.830241   6.0
    -2258.830241   6.0
    -2258.830241   6.0
    -2258.830241   6.0
    -2258.830241   6.0
    -2258.825472   2.0
    -2258.825472   2.0
    -2258.825472   2.0
    -2259.025860   6.0
    -2259.025860   6.0
    -2259.025860   6.0
    -2259.025860   6.0
    -2259.025860   6.0
    -2259.000888   2.0
    -2259.000888   2.0
    -2259.000888   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.13 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2259.09241344
     2     -2258.83024081
     3     -2258.83024081
     4     -2258.83024081
     5     -2258.83024081
     6     -2258.83024081
     7     -2258.82547157
     8     -2258.82547157
     9     -2258.82547157

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1743D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1994
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:       4499175
 Total number of contracted configurations:      9348065
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  20919763 words, CPU-Time:     43.59 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1660164 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.09241344    -0.00000000    -0.90805187  0.44D-01  0.59D-01    54.12
    1     2     2     1.00000000     0.00000000 -2258.83024081     0.00000000    -0.88164941  0.38D-01  0.55D-01    54.12
    1     3     3     1.00000000     0.00000000 -2258.83024081     0.00000000    -0.88167194  0.38D-01  0.55D-01    54.12
    1     4     4     1.00000000     0.00000000 -2258.83024081     0.00000000    -0.88192035  0.38D-01  0.55D-01    54.12
    1     5     5     1.00000000     0.00000000 -2258.83024081     0.00000000    -0.88131511  0.38D-01  0.55D-01    54.12
    1     6     6     1.00000000     0.00000000 -2258.83024081     0.00000000    -0.88187701  0.38D-01  0.55D-01    54.12
    1     7     7     1.00000000     0.00000000 -2258.82547157     0.00000000    -0.88243004  0.39D-01  0.56D-01    54.12
    1     8     8     1.00000000     0.00000000 -2258.82547157    -0.00000000    -0.88263442  0.39D-01  0.56D-01    54.12
    1     9     9     1.00000000     0.00000000 -2258.82547157     0.00000000    -0.88256857  0.39D-01  0.56D-01    54.12
    2     1     1     1.06792186    -0.73652184 -2259.82893527    -0.73652184    -0.01829141  0.28D-02  0.88D-03   383.95
    2     2     2     1.06224660    -0.72380786 -2259.55404866    -0.72380786    -0.01629027  0.20D-02  0.77D-03   383.95
    2     3     3     1.06247192    -0.72372101 -2259.55396182    -0.72372101    -0.01635695  0.20D-02  0.77D-03   383.95
    2     4     4     1.06256948    -0.72365872 -2259.55389953    -0.72365872    -0.01640831  0.20D-02  0.78D-03   383.95
    2     5     5     1.06266427    -0.72362168 -2259.55386248    -0.72362168    -0.01645520  0.21D-02  0.78D-03   383.95
    2     6     6     1.06244659    -0.72360134 -2259.55384214    -0.72360134    -0.01648132  0.20D-02  0.78D-03   383.95
    2     7     7     1.06313898    -0.72379494 -2259.54926651    -0.72379494    -0.01659283  0.22D-02  0.78D-03   383.95
    2     8     8     1.06323463    -0.72373731 -2259.54920888    -0.72373731    -0.01664329  0.22D-02  0.78D-03   383.95
    2     9     9     1.06328603    -0.72371943 -2259.54919100    -0.72371943    -0.01666662  0.22D-02  0.78D-03   383.95
    3     1     1     1.05961107    -0.75430683 -2259.84672026    -0.01778499    -0.00059366  0.75D-04  0.58D-04   713.14
    3     2     2     1.05730256    -0.73892532 -2259.56916613    -0.01511747    -0.00049526  0.64D-04  0.39D-04   713.14
    3     3     3     1.05730463    -0.73891909 -2259.56915990    -0.01519808    -0.00049988  0.64D-04  0.40D-04   713.14
    3     4     4     1.05724183    -0.73891766 -2259.56915846    -0.01525893    -0.00050066  0.64D-04  0.40D-04   713.14
    3     5     5     1.05730526    -0.73891731 -2259.56915811    -0.01529563    -0.00050148  0.64D-04  0.40D-04   713.14
    3     6     6     1.05729557    -0.73891466 -2259.56915547    -0.01531333    -0.00050230  0.64D-04  0.41D-04   713.14
    3     7     7     1.05750545    -0.73926458 -2259.56473616    -0.01546965    -0.00051752  0.69D-04  0.42D-04   713.14
    3     8     8     1.05750573    -0.73926325 -2259.56473482    -0.01552594    -0.00051864  0.69D-04  0.43D-04   713.14
    3     9     9     1.05749815    -0.73925914 -2259.56473071    -0.01553971    -0.00051996  0.69D-04  0.43D-04   713.14
    4     1     1     1.05922314    -0.75494148 -2259.84735492    -0.00063465    -0.00004363  0.34D-05  0.62D-05  1046.61
    4     2     2     1.05695391    -0.73942785 -2259.56966865    -0.00050253    -0.00003599  0.32D-05  0.51D-05  1046.61
    4     3     3     1.05694627    -0.73942712 -2259.56966793    -0.00050803    -0.00003665  0.32D-05  0.52D-05  1046.61
    4     4     4     1.05694301    -0.73942697 -2259.56966778    -0.00050932    -0.00003680  0.32D-05  0.53D-05  1046.61
    4     5     5     1.05693624    -0.73942614 -2259.56966695    -0.00050884    -0.00003687  0.32D-05  0.53D-05  1046.61
    4     6     6     1.05693737    -0.73942585 -2259.56966665    -0.00051118    -0.00003730  0.32D-05  0.54D-05  1046.61
    4     7     7     1.05713530    -0.73979214 -2259.56526372    -0.00052756    -0.00003932  0.33D-05  0.58D-05  1046.61
    4     8     8     1.05713249    -0.73979196 -2259.56526353    -0.00052871    -0.00003947  0.33D-05  0.58D-05  1046.61
    4     9     9     1.05712645    -0.73979028 -2259.56526185    -0.00053113    -0.00004025  0.33D-05  0.60D-05  1046.61
    5     1     1     1.05968465    -0.75499143 -2259.84740486    -0.00004995    -0.00000519  0.32D-06  0.71D-06  1377.62
    5     2     2     1.05716665    -0.73947140 -2259.56971220    -0.00004355    -0.00000494  0.20D-06  0.82D-06  1377.62
    5     3     3     1.05716718    -0.73947137 -2259.56971218    -0.00004425    -0.00000496  0.20D-06  0.83D-06  1377.62
    5     4     4     1.05716768    -0.73947137 -2259.56971217    -0.00004439    -0.00000488  0.20D-06  0.81D-06  1377.62
    5     5     5     1.05716623    -0.73947110 -2259.56971191    -0.00004496    -0.00000512  0.21D-06  0.85D-06  1377.62
    5     6     6     1.05716966    -0.73947096 -2259.56971176    -0.00004511    -0.00000512  0.21D-06  0.85D-06  1377.62
    5     7     7     1.05738920    -0.73983998 -2259.56531155    -0.00004784    -0.00000533  0.22D-06  0.87D-06  1377.62
    5     8     8     1.05738961    -0.73983995 -2259.56531152    -0.00004799    -0.00000535  0.22D-06  0.87D-06  1377.62
    5     9     9     1.05738824    -0.73983956 -2259.56531113    -0.00004928    -0.00000559  0.23D-06  0.90D-06  1377.62
    6     1     1     1.05976327    -0.75499773 -2259.84741116    -0.00000630    -0.00000057  0.33D-07  0.69D-07  1709.92
    6     2     2     1.05724153    -0.73947812 -2259.56971892    -0.00000672    -0.00000069  0.38D-07  0.94D-07  1709.92
    6     3     3     1.05724155    -0.73947812 -2259.56971892    -0.00000674    -0.00000069  0.38D-07  0.94D-07  1709.92
    6     4     4     1.05724182    -0.73947808 -2259.56971888    -0.00000671    -0.00000072  0.39D-07  0.97D-07  1709.92
    6     5     5     1.05724160    -0.73947801 -2259.56971882    -0.00000691    -0.00000068  0.37D-07  0.91D-07  1709.92
    6     6     6     1.05724234    -0.73947797 -2259.56971877    -0.00000701    -0.00000072  0.39D-07  0.95D-07  1709.92
    6     7     7     1.05746985    -0.73984713 -2259.56531870    -0.00000715    -0.00000071  0.39D-07  0.96D-07  1709.92
    6     8     8     1.05746959    -0.73984713 -2259.56531870    -0.00000718    -0.00000071  0.39D-07  0.96D-07  1709.92
    6     9     9     1.05746967    -0.73984708 -2259.56531865    -0.00000752    -0.00000075  0.41D-07  0.10D-06  1709.92
    7     1     1     1.05974947    -0.75499836 -2259.84741180    -0.00000064    -0.00000006  0.34D-08  0.83D-08  2041.66
    7     2     2     1.05723335    -0.73947893 -2259.56971973    -0.00000081    -0.00000010  0.79D-08  0.14D-07  2041.66
    7     3     3     1.05723333    -0.73947893 -2259.56971973    -0.00000081    -0.00000010  0.79D-08  0.14D-07  2041.66
    7     4     4     1.05723306    -0.73947892 -2259.56971973    -0.00000084    -0.00000011  0.82D-08  0.14D-07  2041.66
    7     5     5     1.05723344    -0.73947881 -2259.56971962    -0.00000080    -0.00000010  0.77D-08  0.13D-07  2041.66
    7     6     6     1.05723299    -0.73947880 -2259.56971961    -0.00000084    -0.00000010  0.81D-08  0.14D-07  2041.66
    7     7     7     1.05746113    -0.73984796 -2259.56531953    -0.00000083    -0.00000010  0.81D-08  0.14D-07  2041.66
    7     8     8     1.05746112    -0.73984796 -2259.56531953    -0.00000083    -0.00000010  0.81D-08  0.14D-07  2041.66
    7     9     9     1.05746069    -0.73984795 -2259.56531952    -0.00000087    -0.00000011  0.86D-08  0.15D-07  2041.66
    8     1     1     1.05975467    -0.75499843 -2259.84741186    -0.00000007    -0.00000001  0.82D-09  0.11D-08  2372.43
    8     2     2     1.05723706    -0.73947904 -2259.56971984    -0.00000011    -0.00000002  0.14D-08  0.27D-08  2372.43
    8     3     3     1.05723707    -0.73947904 -2259.56971984    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2372.43
    8     4     4     1.05723701    -0.73947904 -2259.56971984    -0.00000011    -0.00000002  0.14D-08  0.27D-08  2372.43
    8     5     5     1.05723704    -0.73947892 -2259.56971972    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2372.43
    8     6     6     1.05723693    -0.73947892 -2259.56971972    -0.00000011    -0.00000002  0.14D-08  0.27D-08  2372.43
    8     7     7     1.05746555    -0.73984807 -2259.56531964    -0.00000011    -0.00000002  0.13D-08  0.27D-08  2372.43
    8     8     8     1.05746558    -0.73984807 -2259.56531964    -0.00000011    -0.00000002  0.13D-08  0.27D-08  2372.43
    8     9     9     1.05746532    -0.73984807 -2259.56531964    -0.00000012    -0.00000002  0.14D-08  0.29D-08  2372.43


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.8%  13.4%
 P   0.3%  51.2%  25.0%

 Initialization:   1.9%
 Other:            6.2%

 Total CPU:     2372.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9705497  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0000001   0.0000000  -0.0000000
                            0.0000000
 2222222222//0/00          -0.0116249   0.0063653  -0.0101388  -0.0012321   0.0089669   0.7866885   0.0000003  -0.0000006
                           -0.0000001
 2222222222/0/0/0           0.0116249   0.0036694  -0.0054173   0.0011046   0.6858534   0.3855721  -0.0000002  -0.0000009
                           -0.0000002
 22222222220//0/0          -0.0000000  -0.1178746   0.6702545  -0.0331804   0.0006193   0.0095327   0.6812293   0.0000021
                            0.0000003
 2222222222/0/00/           0.0000000   0.1178742  -0.6702552   0.0331807  -0.0006187  -0.0095332   0.6812284   0.0000022
                           -0.0000008
 22222222220//00/          -0.0116248  -0.0026958   0.0047215   0.0023366   0.6768857  -0.4011170  -0.0000004  -0.0000003
                           -0.0000001
 2222222222//00/0           0.0000000   0.5399614   0.0747774  -0.4088530   0.0006391  -0.0040523  -0.0000019   0.6765213
                           -0.0799523
 22222222220///00          -0.0000000   0.3985529   0.0970454   0.5441157  -0.0016220  -0.0011036   0.0000000  -0.0799524
                           -0.6765211
 2222222222//000/          -0.0000000   0.3985536   0.0970444   0.5441158  -0.0016216  -0.0011032   0.0000001   0.0799517
                            0.6765207
 2222222222/0//00          -0.0000000  -0.5399617  -0.0747772   0.4088540  -0.0006380   0.0040533  -0.0000025   0.6765204
                           -0.0799518
 2222220222//2/00          -0.0160356  -0.0006116   0.0009741   0.0001184  -0.0008615  -0.0755828  -0.0000000   0.0000000
                            0.0000000
 222222222200/0//           0.0108780  -0.0005723   0.0009115   0.0001108  -0.0008062  -0.0707281  -0.0000000   0.0000001
                            0.0000000
 22222202222//0/0           0.0000000   0.0113251  -0.0643962   0.0031879  -0.0000595  -0.0009158  -0.0665799  -0.0000002
                           -0.0000000
 2222220222/2/00/           0.0000000  -0.0113250   0.0643964  -0.0031879   0.0000595   0.0009159  -0.0665799  -0.0000002
                            0.0000001
 22222202222///00           0.0000000  -0.0382919  -0.0093239  -0.0522772   0.0001558   0.0001060  -0.0000000   0.0078141
                            0.0661198
 2222220222//20/0           0.0000000  -0.0518780  -0.0071844   0.0392815  -0.0000614   0.0003893   0.0000002  -0.0661198
                            0.0078141
 2222220222/2//00          -0.0000000   0.0518781   0.0071844  -0.0392816   0.0000613  -0.0003894   0.0000002  -0.0661198
                            0.0078141
 2222220222//200/           0.0000000  -0.0382920  -0.0093238  -0.0522772   0.0001558   0.0001060  -0.0000000  -0.0078141
                           -0.0661197
 2222220222/2/0/0           0.0160356  -0.0003525   0.0005205  -0.0001062  -0.0658949  -0.0370447   0.0000000   0.0000001
                            0.0000000
 22222202222//00/          -0.0160356   0.0002590  -0.0004536  -0.0002245  -0.0650334   0.0385382   0.0000000   0.0000000
                            0.0000000
 22222222220/0/0/          -0.0108781  -0.0003299   0.0004871  -0.0000993  -0.0616625  -0.0346651   0.0000000   0.0000001
                            0.0000000
 22222222220/0//0          -0.0000000   0.0105977  -0.0602601   0.0029831  -0.0000557  -0.0008570  -0.0612457  -0.0000002
                           -0.0000000
 2222222222/00/0/           0.0000000  -0.0105976   0.0602601  -0.0029831   0.0000556   0.0008571  -0.0612455  -0.0000002
                            0.0000001
 2222222222/00//0           0.0108780   0.0002424  -0.0004245  -0.0002101  -0.0608562   0.0360628   0.0000000   0.0000000
                            0.0000000
 22222222220/00//           0.0000000  -0.0485459  -0.0067229   0.0367584  -0.0000574   0.0003644   0.0000002  -0.0608223
                            0.0071881
 222222222200///0          -0.0000000  -0.0358324  -0.0087250  -0.0489193   0.0001458   0.0000992  -0.0000000   0.0071881
                            0.0608223
 2222222222/000//           0.0000000  -0.0358324  -0.0087249  -0.0489194   0.0001458   0.0000992  -0.0000000  -0.0071880
                           -0.0608222
 222222222200//0/           0.0000000   0.0485458   0.0067229  -0.0367584   0.0000574  -0.0003644   0.0000002  -0.0608222
                            0.0071880

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971306    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.004305   -0.168209    0.770537    0.006621    0.568744   -0.000000   -0.000000    0.000001
 3           0.000000   -0.006318    0.956468    0.106709   -0.010832    0.138485   -0.000001    0.000000   -0.000001
 4           0.000000    0.001454   -0.047349   -0.583443   -0.002497    0.776465    0.000000    0.000001    0.000000
 5          -0.000000    0.863846    0.000883    0.000911   -0.446449   -0.002314    0.000000    0.000001    0.000000
 6          -0.000000    0.446389    0.013604   -0.005783    0.863753   -0.001575   -0.000000    0.000001    0.000000
 7          -0.000000   -0.000000    0.000001    0.000000    0.000001    0.000000    0.972292   -0.000003    0.000000
 8          -0.000000   -0.000001   -0.000000    0.000001   -0.000000   -0.000000    0.000003    0.965572    0.114113
 9           0.000000   -0.000000    0.000001   -0.000000   -0.000000   -0.000000   -0.000000   -0.114112    0.965573

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971306   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.972396    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.972396    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.972396   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.972396   -0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.972396    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.972292    0.000000    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.972292    0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.972292


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97130615 (fixed)   0.97136696 (relaxed)   0.97130615 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018971   -0.00027542   -0.65974539
 Singles      0.01596082   -0.05584076   -0.06404801
 Pairs        0.04380519   -0.00000000   -0.03120502
 Total        1.05995571   -0.05611618   -0.75499843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.09241344
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.39218026
 One electron energy                -3145.64065113
 Two electron energy                  885.79323927
 Virial quotient                       -0.94144925
 Correlation energy                    -0.75499843
 !MRCI STATE 1.2 Energy             -2259.847411863720

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.89267833 (Davidson, fixed reference)
 Cluster corrected energies         -2259.89257814 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.89267833 (Davidson, rotated reference)

 Cluster corrected energies         -2259.89018894 (Pople, fixed reference)
 Cluster corrected energies         -2259.89008957 (Pople, relaxed reference)
 Cluster corrected energies         -2259.89018894 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.77053662 (fixed)   0.97242897 (relaxed)   0.97239557 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032627   -0.00085395   -0.64260308
 Singles      0.01778507   -0.06011454   -0.06927643
 Pairs        0.03947067   -0.00000032   -0.02759953
 Total        1.05758201   -0.06096880   -0.73947904
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.83024081
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76340918
 One electron energy                -3137.34246649
 Two electron energy                  877.77274664
 Virial quotient                       -0.94158020
 Correlation energy                    -0.73947904
 !MRCI STATE 2.2 Energy             -2259.569719844812

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.61230054 (Davidson, fixed reference)
 Cluster corrected energies         -2259.61224682 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.61230054 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60987991 (Pople, fixed reference)
 Cluster corrected energies         -2259.60982684 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60987991 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95646798 (fixed)   0.97242896 (relaxed)   0.97239557 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032627   -0.00085395   -0.64260389
 Singles      0.01778502   -0.06011447   -0.06927641
 Pairs        0.03947073    0.00000048   -0.02759875
 Total        1.05758202   -0.06096794   -0.73947904
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.83024081
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76343122
 One electron energy                -3137.34248618
 Two electron energy                  877.77276633
 Virial quotient                       -0.94158020
 Correlation energy                    -0.73947904
 !MRCI STATE 3.2 Energy             -2259.569719844354

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.61230054 (Davidson, fixed reference)
 Cluster corrected energies         -2259.61224683 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.61230054 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60987991 (Pople, fixed reference)
 Cluster corrected energies         -2259.60982684 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60987991 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.77646477 (fixed)   0.97242899 (relaxed)   0.97239560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032627   -0.00085395   -0.64260341
 Singles      0.01778507   -0.06011454   -0.06927643
 Pairs        0.03947062    0.00000000   -0.02759919
 Total        1.05758196   -0.06096849   -0.73947904
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.83024081
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76338526
 One electron energy                -3137.34244653
 Two electron energy                  877.77272669
 Virial quotient                       -0.94158021
 Correlation energy                    -0.73947904
 !MRCI STATE 4.2 Energy             -2259.569719843491

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.61230049 (Davidson, fixed reference)
 Cluster corrected energies         -2259.61224678 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.61230049 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60987986 (Pople, fixed reference)
 Cluster corrected energies         -2259.60982680 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60987986 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86384581 (fixed)   0.97242899 (relaxed)   0.97239559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032625   -0.00085389   -0.64260324
 Singles      0.01778497   -0.06011437   -0.06927632
 Pairs        0.03947075   -0.00000020   -0.02759936
 Total        1.05758196   -0.06096846   -0.73947892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.83024081
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76343203
 One electron energy                -3137.34249028
 Two electron energy                  877.77277056
 Virial quotient                       -0.94158019
 Correlation energy                    -0.73947892
 !MRCI STATE 5.2 Energy             -2259.569719722386

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.61230037 (Davidson, fixed reference)
 Cluster corrected energies         -2259.61224666 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.61230037 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60987974 (Pople, fixed reference)
 Cluster corrected energies         -2259.60982667 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60987974 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86375303 (fixed)   0.97242904 (relaxed)   0.97239564 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032625   -0.00085389   -0.64260326
 Singles      0.01778502   -0.06011446   -0.06927633
 Pairs        0.03947058   -0.00000017   -0.02759933
 Total        1.05758185   -0.06096851   -0.73947892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.83024081
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76336909
 One electron energy                -3137.34243720
 Two electron energy                  877.77271748
 Virial quotient                       -0.94158022
 Correlation energy                    -0.73947892
 !MRCI STATE 6.2 Energy             -2259.569719721297

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.61230029 (Davidson, fixed reference)
 Cluster corrected energies         -2259.61224657 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.61230029 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60987966 (Pople, fixed reference)
 Cluster corrected energies         -2259.60982659 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60987966 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97229200 (fixed)   0.97232304 (relaxed)   0.97229200 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032321   -0.00085573   -0.64270270
 Singles      0.01787551   -0.06023155   -0.06944186
 Pairs        0.03960861   -0.00000002   -0.02770352
 Total        1.05780733   -0.06108730   -0.73984807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.82547157
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76503636
 One electron energy                -3137.33708168
 Two electron energy                  877.77176203
 Virial quotient                       -0.94157773
 Correlation energy                    -0.73984807
 !MRCI STATE 7.2 Energy             -2259.565319642938

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.60808829 (Davidson, fixed reference)
 Cluster corrected energies         -2259.60803832 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.60808829 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60566449 (Pople, fixed reference)
 Cluster corrected energies         -2259.60561510 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60566449 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.96557239 (fixed)   0.97232303 (relaxed)   0.97229199 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032321   -0.00085574   -0.56739368
 Singles      0.01787555   -0.06023161   -0.06944187
 Pairs        0.03960860   -0.07966237   -0.10301252
 Total        1.05780737   -0.14074972   -0.73984807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.82547157
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76503570
 One electron energy                -3137.33708040
 Two electron energy                  877.77176076
 Virial quotient                       -0.94157773
 Correlation energy                    -0.73984807
 !MRCI STATE 8.2 Energy             -2259.565319642850

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.60808831 (Davidson, fixed reference)
 Cluster corrected energies         -2259.60803834 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.60808831 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60566451 (Pople, fixed reference)
 Cluster corrected energies         -2259.60561512 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60566451 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.96557251 (fixed)   0.97232315 (relaxed)   0.97229210 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032321   -0.00085574   -0.00546965
 Singles      0.01787554   -0.06023162   -0.06944188
 Pairs        0.03960836   -0.67406974   -0.66493654
 Total        1.05780711   -0.73515710   -0.73984807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2258.82547157
 Nuclear energy                         0.00000000
 Kinetic energy                      2399.76494295
 One electron energy                -3137.33700422
 Two electron energy                  877.77168458
 Virial quotient                       -0.94157777
 Correlation energy                    -0.73984807
 !MRCI STATE 9.2 Energy             -2259.565319641662

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.60808812 (Davidson, fixed reference)
 Cluster corrected energies         -2259.60803815 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.60808812 (Davidson, rotated reference)

 Cluster corrected energies         -2259.60566432 (Pople, fixed reference)
 Cluster corrected energies         -2259.60561493 (Pople, relaxed reference)
 Cluster corrected energies         -2259.60566432 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      654.91       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2861.62   2856.60      3.48      0.08      1.13
 REAL TIME  *      2938.84 SEC
 DISK USED  *       702.32 MB (local),        8.29 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2259.89257814  AU                              
 SETTING HLSDIAG(2)     =     -2259.61224682  AU                              
 SETTING HLSDIAG(3)     =     -2259.61224683  AU                              
 SETTING HLSDIAG(4)     =     -2259.61224678  AU                              
 SETTING HLSDIAG(5)     =     -2259.61224666  AU                              
 SETTING HLSDIAG(6)     =     -2259.61224657  AU                              
 SETTING HLSDIAG(7)     =     -2259.60803832  AU                              
 SETTING HLSDIAG(8)     =     -2259.60803834  AU                              
 SETTING HLSDIAG(9)     =     -2259.60803815  AU                              


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
     1     -2259.02585977
     2     -2259.02585977
     3     -2259.02585977
     4     -2259.02585977
     5     -2259.02585977
     6     -2259.00088805
     7     -2259.00088805
     8     -2259.00088805

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1979D-06

 Number of blocks in overlap matrix:   796   Smallest eigenvalue:  0.20D-06
 Number of N-2 electron functions:    1848
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       4171995
 Total number of contracted configurations:     10143421
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  27648406 words, CPU-Time:     63.95 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1521866 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.02585977     0.00000000    -0.92269378  0.52D-01  0.62D-01    74.87
    1     2     2     1.00000000     0.00000000 -2259.02585977    -0.00000000    -0.92251503  0.52D-01  0.62D-01    74.87
    1     3     3     1.00000000     0.00000000 -2259.02585977     0.00000000    -0.92210437  0.51D-01  0.62D-01    74.87
    1     4     4     1.00000000     0.00000000 -2259.02585977     0.00000000    -0.92179044  0.51D-01  0.61D-01    74.87
    1     5     5     1.00000000     0.00000000 -2259.02585977     0.00000000    -0.92186272  0.51D-01  0.62D-01    74.87
    1     6     6     1.00000000     0.00000000 -2259.00088805    -0.00000000    -0.90450416  0.35D-01  0.64D-01    74.87
    1     7     7     1.00000000     0.00000000 -2259.00088805    -0.00000000    -0.90453632  0.35D-01  0.64D-01    74.87
    1     8     8     1.00000000     0.00000000 -2259.00088805     0.00000000    -0.90396316  0.35D-01  0.64D-01    74.87
    2     1     1     1.07328098    -0.74449497 -2259.77035475    -0.74449497    -0.01998736  0.31D-02  0.12D-02   412.07
    2     2     2     1.07338510    -0.74443049 -2259.77029026    -0.74443049    -0.02007012  0.31D-02  0.12D-02   412.07
    2     3     3     1.07333529    -0.74437746 -2259.77023723    -0.74437746    -0.02011011  0.32D-02  0.12D-02   412.07
    2     4     4     1.07375467    -0.74421399 -2259.77007376    -0.74421399    -0.02028590  0.32D-02  0.12D-02   412.07
    2     5     5     1.07417343    -0.74390605 -2259.76976583    -0.74390605    -0.02059113  0.34D-02  0.12D-02   412.07
    2     6     6     1.06582899    -0.73842988 -2259.73931793    -0.73842988    -0.01945142  0.30D-02  0.12D-02   412.07
    2     7     7     1.06584729    -0.73842212 -2259.73931017    -0.73842212    -0.01945880  0.30D-02  0.12D-02   412.07
    2     8     8     1.06558999    -0.73839451 -2259.73928256    -0.73839451    -0.01944607  0.30D-02  0.12D-02   412.07
    3     1     1     1.06449400    -0.76342249 -2259.78928226    -0.01892751    -0.00058586  0.66D-04  0.67D-04   751.11
    3     2     2     1.06449522    -0.76341758 -2259.78927735    -0.01898709    -0.00058860  0.66D-04  0.67D-04   751.11
    3     3     3     1.06448881    -0.76341643 -2259.78927621    -0.01903897    -0.00059049  0.67D-04  0.67D-04   751.11
    3     4     4     1.06448443    -0.76341533 -2259.78927510    -0.01920134    -0.00059460  0.67D-04  0.67D-04   751.11
    3     5     5     1.06447232    -0.76340697 -2259.78926674    -0.01950092    -0.00060050  0.68D-04  0.68D-04   751.11
    3     6     6     1.06053042    -0.75701793 -2259.75790599    -0.01858805    -0.00065587  0.51D-04  0.92D-04   751.11
    3     7     7     1.06053087    -0.75701791 -2259.75790597    -0.01859580    -0.00065587  0.51D-04  0.92D-04   751.11
    3     8     8     1.06045131    -0.75699724 -2259.75788529    -0.01860273    -0.00066737  0.51D-04  0.94D-04   751.11
    4     1     1     1.06440162    -0.76407016 -2259.78992993    -0.00064767    -0.00004523  0.30D-05  0.70D-05  1088.63
    4     2     2     1.06439134    -0.76406994 -2259.78992972    -0.00065237    -0.00004570  0.31D-05  0.70D-05  1088.63
    4     3     3     1.06439783    -0.76406984 -2259.78992961    -0.00065341    -0.00004546  0.30D-05  0.70D-05  1088.63
    4     4     4     1.06439447    -0.76406917 -2259.78992894    -0.00065384    -0.00004589  0.30D-05  0.71D-05  1088.63
    4     5     5     1.06438386    -0.76406833 -2259.78992810    -0.00066136    -0.00004689  0.32D-05  0.72D-05  1088.63
    4     6     6     1.06145753    -0.75777064 -2259.75865869    -0.00075270    -0.00006101  0.45D-05  0.93D-05  1088.63
    4     7     7     1.06145776    -0.75777061 -2259.75865866    -0.00075270    -0.00006103  0.45D-05  0.93D-05  1088.63
    4     8     8     1.06143411    -0.75776700 -2259.75865505    -0.00076976    -0.00006345  0.47D-05  0.97D-05  1088.63
    5     1     1     1.06479194    -0.76412328 -2259.78998305    -0.00005312    -0.00000545  0.41D-06  0.72D-06  1425.76
    5     2     2     1.06479188    -0.76412323 -2259.78998301    -0.00005329    -0.00000549  0.41D-06  0.72D-06  1425.76
    5     3     3     1.06478976    -0.76412316 -2259.78998294    -0.00005333    -0.00000555  0.41D-06  0.73D-06  1425.76
    5     4     4     1.06479050    -0.76412315 -2259.78998292    -0.00005398    -0.00000557  0.42D-06  0.73D-06  1425.76
    5     5     5     1.06478749    -0.76412291 -2259.78998268    -0.00005458    -0.00000576  0.43D-06  0.76D-06  1425.76
    5     6     6     1.06217390    -0.75784326 -2259.75873131    -0.00007262    -0.00000747  0.62D-06  0.92D-06  1425.76
    5     7     7     1.06217379    -0.75784326 -2259.75873131    -0.00007265    -0.00000747  0.61D-06  0.92D-06  1425.76
    5     8     8     1.06217124    -0.75784278 -2259.75873084    -0.00007578    -0.00000783  0.65D-06  0.96D-06  1425.76
    6     1     1     1.06484687    -0.76412966 -2259.78998943    -0.00000638    -0.00000057  0.41D-07  0.76D-07  1760.59
    6     2     2     1.06484683    -0.76412966 -2259.78998943    -0.00000642    -0.00000057  0.41D-07  0.76D-07  1760.59
    6     3     3     1.06484648    -0.76412965 -2259.78998943    -0.00000649    -0.00000057  0.42D-07  0.76D-07  1760.59
    6     4     4     1.06484674    -0.76412964 -2259.78998941    -0.00000649    -0.00000058  0.43D-07  0.78D-07  1760.59
    6     5     5     1.06484673    -0.76412963 -2259.78998940    -0.00000672    -0.00000061  0.44D-07  0.81D-07  1760.59
    6     6     6     1.06225876    -0.75785182 -2259.75873988    -0.00000856    -0.00000076  0.39D-07  0.10D-06  1760.59
    6     7     7     1.06225877    -0.75785182 -2259.75873987    -0.00000856    -0.00000076  0.39D-07  0.10D-06  1760.59
    6     8     8     1.06225723    -0.75785176 -2259.75873981    -0.00000898    -0.00000080  0.40D-07  0.11D-06  1760.59
    7     1     1     1.06486506    -0.76413033 -2259.78999010    -0.00000067    -0.00000006  0.41D-08  0.95D-08  2098.24
    7     2     2     1.06486487    -0.76413032 -2259.78999010    -0.00000067    -0.00000007  0.44D-08  0.99D-08  2098.24
    7     3     3     1.06486552    -0.76413031 -2259.78999009    -0.00000066    -0.00000006  0.40D-08  0.93D-08  2098.24
    7     4     4     1.06486539    -0.76413031 -2259.78999009    -0.00000067    -0.00000006  0.40D-08  0.93D-08  2098.24
    7     5     5     1.06486550    -0.76413031 -2259.78999008    -0.00000068    -0.00000006  0.40D-08  0.94D-08  2098.24
    7     6     6     1.06227765    -0.75785271 -2259.75874076    -0.00000088    -0.00000009  0.52D-08  0.14D-07  2098.24
    7     7     7     1.06227765    -0.75785270 -2259.75874076    -0.00000088    -0.00000009  0.52D-08  0.14D-07  2098.24
    7     8     8     1.06227682    -0.75785270 -2259.75874075    -0.00000094    -0.00000010  0.56D-08  0.15D-07  2098.24
    8     1     1     1.06487068    -0.76413040 -2259.78999017    -0.00000007    -0.00000001  0.93D-09  0.14D-08  2437.40
    8     2     2     1.06487080    -0.76413040 -2259.78999017    -0.00000008    -0.00000001  0.84D-09  0.13D-08  2437.40
    8     3     3     1.06487085    -0.76413039 -2259.78999016    -0.00000007    -0.00000001  0.83D-09  0.13D-08  2437.40
    8     4     4     1.06487085    -0.76413038 -2259.78999016    -0.00000007    -0.00000001  0.83D-09  0.12D-08  2437.40
    8     5     5     1.06487086    -0.76413038 -2259.78999016    -0.00000007    -0.00000001  0.81D-09  0.12D-08  2437.40
    8     6     6     1.06228899    -0.75785281 -2259.75874087    -0.00000011    -0.00000002  0.13D-08  0.19D-08  2437.40
    8     7     7     1.06228878    -0.75785281 -2259.75874086    -0.00000011    -0.00000002  0.14D-08  0.21D-08  2437.40
    8     8     8     1.06228899    -0.75785281 -2259.75874086    -0.00000012    -0.00000002  0.13D-08  0.19D-08  2437.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.9%  13.0%
 P   0.4%  55.8%  20.9%

 Initialization:   2.7%
 Other:            5.1%

 Total CPU:     2437.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9564126   0.1340672  -0.0311934   0.0283215   0.0013445   0.0000000  -0.0000000  -0.0000000
 2222222222//\000           0.0039546   0.0009348   0.6759940   0.6209611  -0.3031483   0.0000000   0.0000000  -0.0000000
 222222222202/000          -0.0940530   0.6733623  -0.0112591  -0.0206253  -0.0665056   0.0211349   0.6750163   0.0256918
 222222222220/000           0.0940530  -0.6733623   0.0112590   0.0206253   0.0665056   0.0211349   0.6750162   0.0256918
 22222222222/0000           0.0228039  -0.0630546   0.0755511  -0.3612613  -0.5714229   0.6714400  -0.0238082   0.0731795
 22222222220/2000          -0.0228039   0.0630546  -0.0755511   0.3612614   0.5714232   0.6714398  -0.0238082   0.0731794
 2222222222/20000          -0.0223981  -0.0292884  -0.4821127   0.3782926  -0.3005665  -0.0739958  -0.0232362   0.6713706
 2222222222/02000           0.0223981   0.0292884   0.4821129  -0.3782928   0.3005667  -0.0739958  -0.0232362   0.6713704
 222222022222/000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0042893  -0.1369945  -0.0052141
 22222202222/2000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1362688   0.0048319  -0.0148518
 2222220222/22000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0150175   0.0047158  -0.1362547
 2222222222/0/00\          -0.0046212   0.0330849  -0.0005532  -0.0010134  -0.0032677  -0.0017746  -0.0566796  -0.0021573
 22222222220//0\0           0.0046212  -0.0330848   0.0005532   0.0010134   0.0032677  -0.0017746  -0.0566795  -0.0021573
 2222222222//000\          -0.0011204   0.0030981  -0.0037121   0.0177502   0.0280762  -0.0563795   0.0019991  -0.0061447
 22222222220//\00          -0.0011204   0.0030981  -0.0037121   0.0177501   0.0280761   0.0563795  -0.0019991   0.0061447
 2222222222/0/\00           0.0011005   0.0014390   0.0236880  -0.0185869   0.0147679  -0.0062133  -0.0019511   0.0563737
 2222222222//00\0          -0.0011005  -0.0014390  -0.0236880   0.0185869  -0.0147679  -0.0062133  -0.0019511   0.0563736

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.003944   -0.031746   -0.032321    0.958529   -0.133305   -0.000000    0.000000    0.000000
 2           0.000934   -0.041512    0.089370    0.134364    0.954385    0.000000    0.000000   -0.000000
 3           0.677490   -0.683319   -0.107082   -0.031248   -0.015958   -0.000000    0.000000   -0.000000
 4           0.622334    0.536170    0.512031    0.028397   -0.029233    0.000000   -0.000000   -0.000000
 5          -0.303819   -0.426006    0.809902    0.001341   -0.094261    0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.963690   -0.106203    0.030334
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.034171   -0.033350    0.968823
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.105031    0.963590    0.036874

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968822    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.968822   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.968822    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.968822   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.968822    0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.969998    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.969999    0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.969998


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95852860 (fixed)   0.96894793 (relaxed)   0.96882163 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049627   -0.00077716   -0.65809565
 Singles      0.01993904   -0.06337506   -0.07378294
 Pairs        0.04496384   -0.00000001   -0.03225181
 Total        1.06539915   -0.06415223   -0.76413040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.02585977
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.32006783
 One electron energy                -3145.16163274
 Two electron energy                  885.37164257
 Virial quotient                       -0.94145361
 Correlation energy                    -0.76413040
 !MRCI STATE 1.2 Energy             -2259.789990174639

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.83996365 (Davidson, fixed reference)
 Cluster corrected energies         -2259.83975143 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.83996365 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83797002 (Pople, fixed reference)
 Cluster corrected energies         -2259.83775497 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83797002 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95438491 (fixed)   0.96894788 (relaxed)   0.96882158 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049627   -0.00077716   -0.65809568
 Singles      0.01993896   -0.06337500   -0.07378292
 Pairs        0.04496402    0.00000003   -0.03225180
 Total        1.06539926   -0.06415213   -0.76413040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.02585977
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.32015250
 One electron energy                -3145.16170856
 Two electron energy                  885.37171838
 Virial quotient                       -0.94145358
 Correlation energy                    -0.76413040
 !MRCI STATE 2.2 Energy             -2259.789990173422

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.83996374 (Davidson, fixed reference)
 Cluster corrected energies         -2259.83975152 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.83996374 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83797011 (Pople, fixed reference)
 Cluster corrected energies         -2259.83775506 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83797011 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.68331887 (fixed)   0.96894785 (relaxed)   0.96882156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049627   -0.00077716   -0.65809564
 Singles      0.01993898   -0.06337496   -0.07378292
 Pairs        0.04496406    0.00000000   -0.03225182
 Total        1.06539932   -0.06415212   -0.76413039
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.02585977
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.32016892
 One electron energy                -3145.16172331
 Two electron energy                  885.37173315
 Virial quotient                       -0.94145357
 Correlation energy                    -0.76413039
 !MRCI STATE 3.2 Energy             -2259.789990159406

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.83996376 (Davidson, fixed reference)
 Cluster corrected energies         -2259.83975155 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.83996376 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83797014 (Pople, fixed reference)
 Cluster corrected energies         -2259.83775509 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83797014 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.62233427 (fixed)   0.96894785 (relaxed)   0.96882156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049627   -0.00077716   -0.65809563
 Singles      0.01993898   -0.06337496   -0.07378292
 Pairs        0.04496407    0.00000000   -0.03225183
 Total        1.06539932   -0.06415212   -0.76413038
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.02585977
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.32017037
 One electron energy                -3145.16172447
 Two electron energy                  885.37173432
 Virial quotient                       -0.94145357
 Correlation energy                    -0.76413038
 !MRCI STATE 4.2 Energy             -2259.789990157139

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.83996376 (Davidson, fixed reference)
 Cluster corrected energies         -2259.83975154 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.83996376 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83797013 (Pople, fixed reference)
 Cluster corrected energies         -2259.83775508 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83797013 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.80990206 (fixed)   0.96894785 (relaxed)   0.96882155 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049627   -0.00077716   -0.65809562
 Singles      0.01993896   -0.06337496   -0.07378292
 Pairs        0.04496409   -0.00000000   -0.03225185
 Total        1.06539933   -0.06415213   -0.76413038
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.02585977
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.32017969
 One electron energy                -3145.16173332
 Two electron energy                  885.37174316
 Virial quotient                       -0.94145356
 Correlation energy                    -0.76413038
 !MRCI STATE 5.2 Energy             -2259.789990156494

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.83996377 (Davidson, fixed reference)
 Cluster corrected energies         -2259.83975155 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.83996377 (Davidson, rotated reference)

 Cluster corrected energies         -2259.83797014 (Pople, fixed reference)
 Cluster corrected energies         -2259.83775509 (Pople, relaxed reference)
 Cluster corrected energies         -2259.83797014 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96368967 (fixed)   0.97014294 (relaxed)   0.96999847 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049569   -0.00068128   -0.64694363
 Singles      0.01307604   -0.04848451   -0.05493942
 Pairs        0.04924382   -0.02216221   -0.05596977
 Total        1.06281556   -0.07132800   -0.75785281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.00088805
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.27028383
 One electron energy                -3144.84095853
 Two electron energy                  885.08221766
 Virial quotient                       -0.94146012
 Correlation energy                    -0.75785281
 !MRCI STATE 6.2 Energy             -2259.758740865012

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80634581 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80610593 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80634581 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80434629 (Pople, fixed reference)
 Cluster corrected energies         -2259.80410427 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80434629 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96882266 (fixed)   0.97014304 (relaxed)   0.96999856 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049570   -0.00068128   -0.00180282
 Singles      0.01307612   -0.04848462   -0.05493940
 Pairs        0.04924354   -0.70782779   -0.70111058
 Total        1.06281535   -0.75699369   -0.75785281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.00088805
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.27018608
 One electron energy                -3144.84087468
 Two electron energy                  885.08213382
 Virial quotient                       -0.94146015
 Correlation energy                    -0.75785281
 !MRCI STATE 7.2 Energy             -2259.758740863792

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80634566 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80610577 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80634566 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80434613 (Pople, fixed reference)
 Cluster corrected energies         -2259.80410411 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80434613 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96359002 (fixed)   0.97014294 (relaxed)   0.96999847 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049569   -0.00068128   -0.64244765
 Singles      0.01307604   -0.04848451   -0.05493941
 Pairs        0.04924382   -0.02694061   -0.06046575
 Total        1.06281556   -0.07610639   -0.75785281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.00088805
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.27028373
 One electron energy                -3144.84095801
 Two electron energy                  885.08221715
 Virial quotient                       -0.94146012
 Correlation energy                    -0.75785281
 !MRCI STATE 8.2 Energy             -2259.758740862781

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80634581 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80610593 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80634581 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80434629 (Pople, fixed reference)
 Cluster corrected energies         -2259.80410427 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80434629 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5785.11   2923.47   2856.60      3.48      0.08      1.13
 REAL TIME  *      5930.07 SEC
 DISK USED  *         1.30 GB (local),       15.67 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =     -2259.83996365  AU                              
 SETTING HLSDIAG(11)    =     -2259.83996374  AU                              
 SETTING HLSDIAG(12)    =     -2259.83996376  AU                              
 SETTING HLSDIAG(13)    =     -2259.83996376  AU                              
 SETTING HLSDIAG(14)    =     -2259.83996377  AU                              
 SETTING HLSDIAG(15)    =     -2259.80634581  AU                              
 SETTING HLSDIAG(16)    =     -2259.80634566  AU                              
 SETTING HLSDIAG(17)    =     -2259.80634581  AU                              


         HLSDIAG
    -2259.892578
    -2259.612247
    -2259.612247
    -2259.612247
    -2259.612247
    -2259.612247
    -2259.608038
    -2259.608038
    -2259.608038
    -2259.839964
    -2259.839964
    -2259.839964
    -2259.839964
    -2259.839964
    -2259.806346
    -2259.806346
    -2259.806346
                                                  

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

 Time for Seward_LS:       7.22 sec

       14212507. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3485 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.22 sec, REAL time:      7.41 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.11 sec, REAL time:      0.20 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.10 sec

 FILE SIZES: FILE 1:   278.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5793.18      8.04   2923.47   2856.60      3.48      0.08      1.13
 REAL TIME  *      5938.51 SEC
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

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:  -2259.847412  -2259.569720  -2259.569720  -2259.569720  -2259.569720  -2259.569720  -2259.565320  -2259.565320
                     -2259.565320
 Replaced energies:  -2259.892578  -2259.612247  -2259.612247  -2259.612247  -2259.612247  -2259.612247  -2259.608038  -2259.608038
                     -2259.608038

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:  -2259.789990  -2259.789990  -2259.789990  -2259.789990  -2259.789990  -2259.758741  -2259.758741  -2259.758741
 Replaced energies:  -2259.839964  -2259.839964  -2259.839964  -2259.839964  -2259.839964  -2259.806346  -2259.806346  -2259.806346



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2259.89257814

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     370.48       0.00      -0.00      -0.00

    2   2.2  1.5  1.5       0.00   61525.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      20.22     418.88    -148.47       2.61      -3.41     177.90    -312.00      -0.00

    3   3.2  1.5  1.5       0.00       0.00   61525.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -20.22       0.00      75.86     838.17      -9.27       5.43      46.88     -45.84       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   61525.62       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00    -418.88     -75.86       0.00     -41.21       2.88       0.66     314.85     183.11       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   61525.65       0.00       0.00       0.00       0.00      -0.00
                           -0.00     148.47    -838.17      41.21       0.00     -11.94      -4.80      -0.90      -0.24       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   61525.67       0.00       0.00       0.00      -0.00
                            0.00      -2.61       9.27      -2.88      11.94      -0.00    -421.00      -0.33       2.22       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   62449.27       0.00       0.00      -0.00
                         -370.48       3.41      -5.43      -0.66       4.80     421.00       0.00      -0.00      -0.00      -0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62449.27       0.00     -25.10
                           -0.00    -177.90     -46.88    -314.85       0.90       0.33       0.00       0.00     423.74     212.42

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62449.31    -212.42
                            0.00     312.00      45.84    -183.11       0.24      -2.22       0.00    -423.74      -0.00     -25.10

   10   1.2  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -25.10    -212.42       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -212.42      25.10      -0.00

   11   2.2  1.5  0.5       0.00       0.00     200.06     -31.67     141.27    -248.39     166.83      36.04      -5.40       0.00
                           -0.00       0.00     152.47      24.84    -198.78    -333.50    -123.14       3.45      36.27       0.00

   12   3.2  1.5  0.5      -0.00    -200.06      -0.00     139.80      34.16     -59.26      23.10    -205.46      25.97       0.00
                            0.00    -152.47       0.00    -191.59     -26.93     -45.54     -29.98     -22.86    -205.83       0.00

   13   4.2  1.5  0.5       0.00      31.67    -139.80      -0.00     192.46    -344.62    -126.33      10.14      -1.54       0.00
                            0.00     -24.84     191.59       0.00     150.69     256.71    -168.12       1.92      10.10      -0.00

   14   5.2  1.5  0.5       0.00    -141.27     -34.16    -192.46      -0.00       1.42       0.20     -25.06    -210.42       0.00
                            0.00     198.78      26.93    -150.69      -0.00      -1.90       0.50     207.67     -24.74      -0.00

   15   6.2  1.5  0.5       0.00     248.39      59.26     344.62      -1.42       0.00      -1.25     -16.91    -117.96       0.00
                            0.00     333.50      45.54    -256.71       1.90       0.00       0.34    -123.42      11.62       0.00

   16   7.2  1.5  0.5       0.00    -166.83     -23.10     126.33      -0.20       1.25       0.00    -242.95      28.71       0.00
                           -0.00     123.14      29.98     168.12      -0.50      -0.34      -0.00      28.71     242.95    -123.49

   17   8.2  1.5  0.5      25.10     -36.04     205.46     -10.14      25.06      16.91     242.95       0.00       0.00       0.00
                          212.42      -3.45      22.86      -1.92    -207.67     123.42     -28.71       0.00       0.00      -0.00

   18   9.2  1.5  0.5     212.42       5.40     -25.97       1.54     210.42     117.96     -28.71      -0.00       0.00       0.00
                          -25.10     -36.27     205.83     -10.10      24.74     -11.62    -242.95      -0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   22   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   23   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      28.99
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     245.28

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     245.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -28.99

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

   37   1.2  0.5  0.5      -0.00     -68.47     -13.39    -125.52       5.03      -8.12      -4.07      -2.59     123.79       0.00
                           -0.00     121.66      22.97     -68.65      -4.68      -8.84       4.15    -124.37      -2.52      -0.00

   38   2.2  0.5  0.5       0.00    -123.98     -12.55      67.98     -12.98      23.90      -5.32     123.56       2.68       0.00
                            0.00     -64.54     -30.68    -123.33      -5.89     -10.59     -11.46      -2.82     123.58       0.00

   39   3.2  0.5  0.5      -0.00    -114.15      75.64    -140.55      15.95     -25.83     -87.63      -8.39     -53.55       0.00
                           -0.00    -143.43      -1.33     107.59    -102.78    -171.86      13.73     -46.07       3.38      -0.00

   40   4.2  0.5  0.5       0.00     -77.22    -102.05    -129.24     -73.60     130.59      68.76      -8.70     -41.70       0.00
                           -0.00    -105.76     -92.33      99.84      80.30     135.71     -65.66     -49.81       2.11      -0.00

   41   5.2  0.5  0.5       0.00      46.95      71.65      49.72    -117.04     208.60     -54.63      -9.34      23.93       0.00
                            0.00      89.40    -105.40     -29.71     -64.05    -110.09    -103.87      20.75     -14.62      -0.00

   42   6.2  0.5  0.5     958.50       4.38     -11.00      -1.72    -114.16     -64.37      14.76      -4.19       0.49       0.00
                          105.63      17.48    -111.97       2.71      12.32      -8.94    -133.92       0.49       4.19      34.84

   43   7.2  0.5  0.5     -33.99      91.05       8.62     -68.21       4.15       1.54       4.64    -133.70      15.80       0.00
                           33.17     -67.40     -12.25     -91.22       4.17      -2.07       4.75      15.80     133.70    1112.68

   44   8.2  0.5  0.5     104.47     -16.24     112.12      -8.15     -12.33      -5.43    -133.91      -5.09       0.60       0.00
                         -958.40       0.05     -13.56      -3.25    -112.64      66.59     -14.60       0.60       5.09      42.35

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     553.39
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      60.99

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      19.15

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      60.31
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -553.33


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00      25.10     212.42       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00    -212.42      25.10       0.00       0.00

    2   2.2  1.5  1.5       0.00    -200.06      31.67    -141.27     248.39    -166.83     -36.04       5.40       0.00       0.00
                           -0.00     152.47      24.84    -198.78    -333.50    -123.14       3.45      36.27       0.00       0.00

    3   3.2  1.5  1.5     200.06      -0.00    -139.80     -34.16      59.26     -23.10     205.46     -25.97       0.00       0.00
                         -152.47      -0.00    -191.59     -26.93     -45.54     -29.98     -22.86    -205.83       0.00       0.00

    4   4.2  1.5  1.5     -31.67     139.80      -0.00    -192.46     344.62     126.33     -10.14       1.54       0.00       0.00
                          -24.84     191.59      -0.00     150.69     256.71    -168.12       1.92      10.10       0.00       0.00

    5   5.2  1.5  1.5     141.27      34.16     192.46      -0.00      -1.42      -0.20      25.06     210.42       0.00       0.00
                          198.78      26.93    -150.69       0.00      -1.90       0.50     207.67     -24.74       0.00       0.00

    6   6.2  1.5  1.5    -248.39     -59.26    -344.62       1.42       0.00       1.25      16.91     117.96       0.00       0.00
                          333.50      45.54    -256.71       1.90      -0.00       0.34    -123.42      11.62       0.00       0.00

    7   7.2  1.5  1.5     166.83      23.10    -126.33       0.20      -1.25       0.00     242.95     -28.71       0.00       0.00
                          123.14      29.98     168.12      -0.50      -0.34       0.00      28.71     242.95       0.00       0.00

    8   8.2  1.5  1.5      36.04    -205.46      10.14     -25.06     -16.91    -242.95       0.00      -0.00       0.00       0.00
                           -3.45      22.86      -1.92    -207.67     123.42     -28.71      -0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5      -5.40      25.97      -1.54    -210.42    -117.96      28.71       0.00       0.00       0.00       0.00
                          -36.27     205.83     -10.10      24.74     -11.62    -242.95      -0.00      -0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     123.49       0.00      -0.00      -0.00       0.00

   11   2.2  1.5  0.5   61525.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       6.74     139.63     -49.49       0.87      -1.14      59.30    -104.00      -0.00      -0.00

   12   3.2  1.5  0.5       0.00   61525.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00     231.01
                           -6.74       0.00      25.29     279.39      -3.09       1.81      15.63     -15.28       0.00    -176.05

   13   4.2  1.5  0.5       0.00       0.00   61525.62       0.00       0.00       0.00       0.00       0.00      -0.00     -36.56
                         -139.63     -25.29       0.00     -13.74       0.96       0.22     104.95      61.04       0.00     -28.68

   14   5.2  1.5  0.5       0.00       0.00       0.00   61525.65       0.00       0.00       0.00       0.00      -0.00     163.13
                           49.49    -279.39      13.74       0.00      -3.98      -1.60      -0.30      -0.08       0.00     229.53

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00   61525.67       0.00       0.00       0.00      -0.00    -286.82
                           -0.87       3.09      -0.96       3.98      -0.00    -140.33      -0.11       0.74       0.00     385.09

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   62449.27       0.00       0.00      -0.00     192.64
                            1.14      -1.81      -0.22       1.60     140.33       0.00      -0.00      -0.00      -0.00     142.19

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   62449.27       0.00     -28.99      41.61
                          -59.30     -15.63    -104.95       0.30       0.11       0.00       0.00     141.25     245.28      -3.98

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62449.31    -245.28      -6.24
                          104.00      15.28     -61.04       0.08      -0.74       0.00    -141.25      -0.00     -28.99     -41.88

   19   1.2  1.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -28.99    -245.28       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00    -245.28      28.99       0.00       0.00

   20   2.2  1.5 -0.5       0.00     231.01     -36.56     163.13    -286.82     192.64      41.61      -6.24       0.00   61525.61
                            0.00     176.05      28.68    -229.53    -385.09    -142.19       3.98      41.88      -0.00      -0.00

   21   3.2  1.5 -0.5    -231.01      -0.00     161.43      39.44     -68.43      26.68    -237.25      29.98       0.00       0.00
                         -176.05       0.00    -221.23     -31.10     -52.58     -34.62     -26.39    -237.67      -0.00       6.74

   22   4.2  1.5 -0.5      36.56    -161.43      -0.00     222.24    -397.93    -145.87      11.71      -1.78       0.00       0.00
                          -28.68     221.23       0.00     174.00     296.42    -194.12       2.22      11.66       0.00     139.63

   23   5.2  1.5 -0.5    -163.13     -39.44    -222.24      -0.00       1.63       0.23     -28.94    -242.98       0.00       0.00
                          229.53      31.10    -174.00      -0.00      -2.19       0.58     239.80     -28.56       0.00     -49.49

   24   6.2  1.5 -0.5     286.82      68.43     397.93      -1.63       0.00      -1.45     -19.52    -136.21       0.00       0.00
                          385.09      52.58    -296.42       2.19       0.00       0.39    -142.52      13.42      -0.00       0.87

   25   7.2  1.5 -0.5    -192.64     -26.68     145.87      -0.23       1.45       0.00    -280.54      33.15       0.00       0.00
                          142.19      34.62     194.12      -0.58      -0.39      -0.00      33.15     280.54     123.49      -1.14

   26   8.2  1.5 -0.5     -41.61     237.25     -11.71      28.94      19.52     280.54       0.00       0.00       0.00       0.00
                           -3.98      26.39      -2.22    -239.80     142.52     -33.15       0.00       0.00       0.00      59.30

   27   9.2  1.5 -0.5       6.24     -29.98       1.78     242.98     136.21     -33.15      -0.00       0.00       0.00       0.00
                          -41.88     237.67     -11.66      28.56     -13.42    -280.54      -0.00       0.00      -0.00    -104.00

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -200.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -152.47

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      31.67
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -24.84

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -141.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     198.78

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     248.39
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     333.50

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -166.83
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     123.14

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      25.10     -36.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     212.42      -3.45

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     212.42       5.40
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -25.10     -36.27

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -39.53
                          -55.17     320.49     -23.37      45.65       4.02       0.68       4.20      -5.23       0.00     -70.24

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -71.58
                          -24.31      42.44       0.44    -324.56       4.44       0.16     -13.86      -4.55      -0.00      37.26

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -65.90
                          -51.70     -25.01    -103.19       5.71      -0.13     115.84       3.87    -102.35       0.00      82.81

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -44.59
                          -17.33      12.92     124.62       9.65       0.39     106.41     -65.98      87.75       0.00      61.06

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      27.11
                         -151.58     -25.00      24.85      32.10       0.58     -51.95    -126.51     -48.57      -0.00     -51.62

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     553.39       2.53
                           95.37      12.25     -90.11       0.21       4.00      -0.00     151.57     -35.07     -60.99     -10.09

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.62      52.57
                           -5.10      -3.11      -1.07       1.74     152.02       0.00      -6.07      -4.67     -19.15      38.91

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      60.31      -9.38
                           87.94      20.14      95.99      -0.23       5.49      -0.00      34.88     151.58     553.33      -0.03

   45   1.2  0.5 -0.5     -39.53      -7.73     -72.47       2.90      -4.69      -2.35      -1.49      71.47       0.00       0.00
                           70.24      13.26     -39.64      -2.70      -5.11       2.39     -71.80      -1.45      -0.00     -55.17

   46   2.2  0.5 -0.5     -71.58      -7.25      39.25      -7.49      13.80      -3.07      71.34       1.55       0.00       0.00
                          -37.26     -17.71     -71.21      -3.40      -6.11      -6.62      -1.63      71.35       0.00     -24.31

   47   3.2  0.5 -0.5     -65.90      43.67     -81.15       9.21     -14.91     -50.59      -4.84     -30.92       0.00       0.00
                          -82.81      -0.77      62.11     -59.34     -99.23       7.93     -26.60       1.95      -0.00     -51.70

   48   4.2  0.5 -0.5     -44.59     -58.92     -74.62     -42.49      75.40      39.70      -5.02     -24.08       0.00       0.00
                          -61.06     -53.31      57.64      46.36      78.35     -37.91     -28.76       1.22      -0.00     -17.33

   49   5.2  0.5 -0.5      27.11      41.37      28.70     -67.57     120.44     -31.54      -5.40      13.82       0.00       0.00
                           51.62     -60.85     -17.16     -36.98     -63.56     -59.97      11.98      -8.44      -0.00    -151.58

   50   6.2  0.5 -0.5       2.53      -6.35      -0.99     -65.91     -37.16       8.52      -2.42       0.29       0.00       0.00
                           10.09     -64.65       1.57       7.11      -5.16     -77.32       0.29       2.42      34.84      95.37

   51   7.2  0.5 -0.5      52.57       4.98     -39.38       2.40       0.89       2.68     -77.19       9.12       0.00       0.00
                          -38.91      -7.08     -52.67       2.41      -1.19       2.74       9.12      77.19    1112.68      -5.10

   52   8.2  0.5 -0.5      -9.38      64.73      -4.70      -7.12      -3.14     -77.31      -2.94       0.35       0.00       0.00
                            0.03      -7.83      -1.88     -65.03      38.44      -8.43       0.35       2.94      42.35      87.94


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

   10   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00      28.99     245.28       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -245.28      28.99       0.00       0.00       0.00

   11   2.2  1.5  0.5    -231.01      36.56    -163.13     286.82    -192.64     -41.61       6.24       0.00       0.00       0.00
                          176.05      28.68    -229.53    -385.09    -142.19       3.98      41.88       0.00       0.00       0.00

   12   3.2  1.5  0.5      -0.00    -161.43     -39.44      68.43     -26.68     237.25     -29.98       0.00       0.00       0.00
                           -0.00    -221.23     -31.10     -52.58     -34.62     -26.39    -237.67       0.00       0.00       0.00

   13   4.2  1.5  0.5     161.43      -0.00    -222.24     397.93     145.87     -11.71       1.78       0.00       0.00       0.00
                          221.23      -0.00     174.00     296.42    -194.12       2.22      11.66       0.00       0.00       0.00

   14   5.2  1.5  0.5      39.44     222.24      -0.00      -1.63      -0.23      28.94     242.98       0.00       0.00       0.00
                           31.10    -174.00       0.00      -2.19       0.58     239.80     -28.56       0.00       0.00       0.00

   15   6.2  1.5  0.5     -68.43    -397.93       1.63       0.00       1.45      19.52     136.21       0.00       0.00       0.00
                           52.58    -296.42       2.19      -0.00       0.39    -142.52      13.42       0.00       0.00       0.00

   16   7.2  1.5  0.5      26.68    -145.87       0.23      -1.45       0.00     280.54     -33.15       0.00       0.00       0.00
                           34.62     194.12      -0.58      -0.39       0.00      33.15     280.54       0.00       0.00       0.00

   17   8.2  1.5  0.5    -237.25      11.71     -28.94     -19.52    -280.54       0.00      -0.00       0.00       0.00       0.00
                           26.39      -2.22    -239.80     142.52     -33.15      -0.00       0.00       0.00       0.00       0.00

   18   9.2  1.5  0.5      29.98      -1.78    -242.98    -136.21      33.15       0.00       0.00       0.00       0.00       0.00
                          237.67     -11.66      28.56     -13.42    -280.54      -0.00      -0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -123.49      -0.00       0.00      -0.00       0.00      -0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -200.06
                           -6.74    -139.63      49.49      -0.87       1.14     -59.30     104.00      -0.00      -0.00     152.47

   21   3.2  1.5 -0.5   61525.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00     200.06      -0.00
                           -0.00     -25.29    -279.39       3.09      -1.81     -15.63      15.28       0.00    -152.47      -0.00

   22   4.2  1.5 -0.5       0.00   61525.62       0.00       0.00       0.00       0.00       0.00      -0.00     -31.67     139.80
                           25.29      -0.00      13.74      -0.96      -0.22    -104.95     -61.04       0.00     -24.84     191.59

   23   5.2  1.5 -0.5       0.00       0.00   61525.65       0.00       0.00       0.00       0.00      -0.00     141.27      34.16
                          279.39     -13.74      -0.00       3.98       1.60       0.30       0.08       0.00     198.78      26.93

   24   6.2  1.5 -0.5       0.00       0.00       0.00   61525.67       0.00       0.00       0.00      -0.00    -248.39     -59.26
                           -3.09       0.96      -3.98       0.00     140.33       0.11      -0.74       0.00     333.50      45.54

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00   62449.27       0.00       0.00      -0.00     166.83      23.10
                            1.81       0.22      -1.60    -140.33      -0.00       0.00       0.00      -0.00     123.14      29.98

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   62449.27       0.00     -25.10      36.04    -205.46
                           15.63     104.95      -0.30      -0.11      -0.00      -0.00    -141.25     212.42      -3.45      22.86

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   62449.31    -212.42      -5.40      25.97
                          -15.28      61.04      -0.08       0.74      -0.00     141.25       0.00     -25.10     -36.27     205.83

   28   1.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00      -0.00     -25.10    -212.42       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -212.42      25.10       0.00       0.00       0.00

   29   2.2  1.5 -1.5     200.06     -31.67     141.27    -248.39     166.83      36.04      -5.40       0.00   61525.61       0.00
                          152.47      24.84    -198.78    -333.50    -123.14       3.45      36.27      -0.00      -0.00     -20.22

   30   3.2  1.5 -1.5      -0.00     139.80      34.16     -59.26      23.10    -205.46      25.97       0.00       0.00   61525.61
                            0.00    -191.59     -26.93     -45.54     -29.98     -22.86    -205.83      -0.00      20.22      -0.00

   31   4.2  1.5 -1.5    -139.80      -0.00     192.46    -344.62    -126.33      10.14      -1.54       0.00       0.00       0.00
                          191.59       0.00     150.69     256.71    -168.12       1.92      10.10       0.00     418.88      75.86

   32   5.2  1.5 -1.5     -34.16    -192.46      -0.00       1.42       0.20     -25.06    -210.42       0.00       0.00       0.00
                           26.93    -150.69      -0.00      -1.90       0.50     207.67     -24.74       0.00    -148.47     838.17

   33   6.2  1.5 -1.5      59.26     344.62      -1.42       0.00      -1.25     -16.91    -117.96       0.00       0.00       0.00
                           45.54    -256.71       1.90       0.00       0.34    -123.42      11.62      -0.00       2.61      -9.27

   34   7.2  1.5 -1.5     -23.10     126.33      -0.20       1.25       0.00    -242.95      28.71       0.00       0.00       0.00
                           29.98     168.12      -0.50      -0.34      -0.00      28.71     242.95     370.48      -3.41       5.43

   35   8.2  1.5 -1.5     205.46     -10.14      25.06      16.91     242.95       0.00       0.00       0.00       0.00       0.00
                           22.86      -1.92    -207.67     123.42     -28.71       0.00       0.00       0.00     177.90      46.88

   36   9.2  1.5 -1.5     -25.97       1.54     210.42     117.96     -28.71      -0.00       0.00       0.00       0.00       0.00
                          205.83     -10.10      24.74     -11.62    -242.95      -0.00       0.00      -0.00    -312.00     -45.84

   37   1.2  0.5  0.5      -7.73     -72.47       2.90      -4.69      -2.35      -1.49      71.47       0.00       0.00       0.00
                          -13.26      39.64       2.70       5.11      -2.39      71.80       1.45      -0.00      -0.00      -0.00

   38   2.2  0.5  0.5      -7.25      39.25      -7.49      13.80      -3.07      71.34       1.55       0.00       0.00       0.00
                           17.71      71.21       3.40       6.11       6.62       1.63     -71.35      -0.00      -0.00      -0.00

   39   3.2  0.5  0.5      43.67     -81.15       9.21     -14.91     -50.59      -4.84     -30.92       0.00       0.00       0.00
                            0.77     -62.11      59.34      99.23      -7.93      26.60      -1.95      -0.00      -0.00      -0.00

   40   4.2  0.5  0.5     -58.92     -74.62     -42.49      75.40      39.70      -5.02     -24.08       0.00       0.00       0.00
                           53.31     -57.64     -46.36     -78.35      37.91      28.76      -1.22      -0.00      -0.00      -0.00

   41   5.2  0.5  0.5      41.37      28.70     -67.57     120.44     -31.54      -5.40      13.82       0.00       0.00       0.00
                           60.85      17.16      36.98      63.56      59.97     -11.98       8.44      -0.00      -0.00      -0.00

   42   6.2  0.5  0.5      -6.35      -0.99     -65.91     -37.16       8.52      -2.42       0.29       0.00       0.00       0.00
                           64.65      -1.57      -7.11       5.16      77.32      -0.29      -2.42      -0.00      -0.00      -0.00

   43   7.2  0.5  0.5       4.98     -39.38       2.40       0.89       2.68     -77.19       9.12       0.00       0.00       0.00
                            7.08      52.67      -2.41       1.19      -2.74      -9.12     -77.19      -0.00      -0.00      -0.00

   44   8.2  0.5  0.5      64.73      -4.70      -7.12      -3.14     -77.31      -2.94       0.35       0.00       0.00       0.00
                            7.83       1.88      65.03     -38.44       8.43      -0.35      -2.94      -0.00      -0.00      -0.00

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -68.47     -13.39
                          320.49     -23.37      45.65       4.02       0.68       4.20      -5.23       0.00    -121.66     -22.97

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -123.98     -12.55
                           42.44       0.44    -324.56       4.44       0.16     -13.86      -4.55      -0.00      64.54      30.68

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -114.15      75.64
                          -25.01    -103.19       5.71      -0.13     115.84       3.87    -102.35       0.00     143.43       1.33

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -77.22    -102.05
                           12.92     124.62       9.65       0.39     106.41     -65.98      87.75       0.00     105.76      92.33

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      46.95      71.65
                          -25.00      24.85      32.10       0.58     -51.95    -126.51     -48.57      -0.00     -89.40     105.40

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     958.50       4.38     -11.00
                           12.25     -90.11       0.21       4.00      -0.00     151.57     -35.07    -105.63     -17.48     111.97

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -33.99      91.05       8.62
                           -3.11      -1.07       1.74     152.02       0.00      -6.07      -4.67     -33.17      67.40      12.25

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     104.47     -16.24     112.12
                           20.14      95.99      -0.23       5.49      -0.00      34.88     151.58     958.40      -0.05      13.56


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     -68.47    -123.98    -114.15     -77.22
                            0.00       0.00       0.00       0.00       0.00       0.00    -121.66      64.54     143.43     105.76

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     -13.39     -12.55      75.64    -102.05
                            0.00       0.00       0.00       0.00       0.00       0.00     -22.97      30.68       1.33      92.33

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    -125.52      67.98    -140.55    -129.24
                            0.00       0.00       0.00       0.00       0.00       0.00      68.65     123.33    -107.59     -99.84

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       5.03     -12.98      15.95     -73.60
                            0.00       0.00       0.00       0.00       0.00       0.00       4.68       5.89     102.78     -80.30

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -8.12      23.90     -25.83     130.59
                            0.00       0.00       0.00       0.00       0.00       0.00       8.84      10.59     171.86    -135.71

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -4.07      -5.32     -87.63      68.76
                            0.00       0.00       0.00       0.00       0.00       0.00      -4.15      11.46     -13.73      65.66

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -2.59     123.56      -8.39      -8.70
                            0.00       0.00       0.00       0.00       0.00       0.00     124.37       2.82      46.07      49.81

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     123.79       2.68     -53.55     -41.70
                            0.00       0.00       0.00       0.00       0.00       0.00       2.52    -123.58      -3.38      -2.11

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      55.17      24.31      51.70      17.33

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -320.49     -42.44      25.01     -12.92

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      23.37      -0.44     103.19    -124.62

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -45.65     324.56      -5.71      -9.65

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -4.02      -4.44       0.13      -0.39

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.68      -0.16    -115.84    -106.41

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -4.20      13.86      -3.87      65.98

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       5.23       4.55     102.35     -87.75

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      25.10     212.42      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -212.42      25.10      -0.00       0.00      -0.00      -0.00

   20   2.2  1.5 -0.5      31.67    -141.27     248.39    -166.83     -36.04       5.40     -39.53     -71.58     -65.90     -44.59
                           24.84    -198.78    -333.50    -123.14       3.45      36.27      70.24     -37.26     -82.81     -61.06

   21   3.2  1.5 -0.5    -139.80     -34.16      59.26     -23.10     205.46     -25.97      -7.73      -7.25      43.67     -58.92
                         -191.59     -26.93     -45.54     -29.98     -22.86    -205.83      13.26     -17.71      -0.77     -53.31

   22   4.2  1.5 -0.5      -0.00    -192.46     344.62     126.33     -10.14       1.54     -72.47      39.25     -81.15     -74.62
                           -0.00     150.69     256.71    -168.12       1.92      10.10     -39.64     -71.21      62.11      57.64

   23   5.2  1.5 -0.5     192.46      -0.00      -1.42      -0.20      25.06     210.42       2.90      -7.49       9.21     -42.49
                         -150.69       0.00      -1.90       0.50     207.67     -24.74      -2.70      -3.40     -59.34      46.36

   24   6.2  1.5 -0.5    -344.62       1.42       0.00       1.25      16.91     117.96      -4.69      13.80     -14.91      75.40
                         -256.71       1.90      -0.00       0.34    -123.42      11.62      -5.11      -6.11     -99.23      78.35

   25   7.2  1.5 -0.5    -126.33       0.20      -1.25       0.00     242.95     -28.71      -2.35      -3.07     -50.59      39.70
                          168.12      -0.50      -0.34       0.00      28.71     242.95       2.39      -6.62       7.93     -37.91

   26   8.2  1.5 -0.5      10.14     -25.06     -16.91    -242.95       0.00      -0.00      -1.49      71.34      -4.84      -5.02
                           -1.92    -207.67     123.42     -28.71      -0.00       0.00     -71.80      -1.63     -26.60     -28.76

   27   9.2  1.5 -0.5      -1.54    -210.42    -117.96      28.71       0.00       0.00      71.47       1.55     -30.92     -24.08
                          -10.10      24.74     -11.62    -242.95      -0.00      -0.00      -1.45      71.35       1.95       1.22

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -370.48      -0.00       0.00       0.00       0.00       0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -418.88     148.47      -2.61       3.41    -177.90     312.00       0.00       0.00       0.00       0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.86    -838.17       9.27      -5.43     -46.88      45.84       0.00       0.00       0.00       0.00

   31   4.2  1.5 -1.5   61525.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      41.21      -2.88      -0.66    -314.85    -183.11       0.00       0.00       0.00       0.00

   32   5.2  1.5 -1.5       0.00   61525.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -41.21      -0.00      11.94       4.80       0.90       0.24       0.00       0.00       0.00       0.00

   33   6.2  1.5 -1.5       0.00       0.00   61525.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.88     -11.94       0.00     421.00       0.33      -2.22       0.00       0.00       0.00       0.00

   34   7.2  1.5 -1.5       0.00       0.00       0.00   62449.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.66      -4.80    -421.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00   62449.27       0.00       0.00       0.00       0.00       0.00
                          314.85      -0.90      -0.33      -0.00      -0.00    -423.74       0.00       0.00       0.00       0.00

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   62449.31       0.00       0.00       0.00       0.00
                          183.11      -0.24       2.22      -0.00     423.74       0.00       0.00       0.00       0.00       0.00

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11547.55       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -14.20       0.15       0.38

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11547.53       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      14.20       0.00       0.08      -0.05

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11547.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.15      -0.08       0.00      -2.24

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11547.52
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.38       0.05       2.24      -0.00

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.07      -0.25       4.59      -4.99

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      19.81      36.26     456.98    -354.88

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.84       0.38    -575.31    -484.40

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      25.15     -59.96     107.10    -422.38

   45   1.2  0.5 -0.5    -125.52       5.03      -8.12      -4.07      -2.59     123.79       0.00       0.96       0.18       3.47
                           68.65       4.68       8.84      -4.15     124.37       2.52      -0.00       0.41       5.33      -4.15

   46   2.2  0.5 -0.5      67.98     -12.98      23.90      -5.32     123.56       2.68      -0.96      -0.00      -5.84       3.65
                          123.33       5.89      10.59      11.46       2.82    -123.58      -0.41      -0.00       0.30       3.52

   47   3.2  0.5 -0.5    -140.55      15.95     -25.83     -87.63      -8.39     -53.55      -0.18       5.84      -0.00       5.12
                         -107.59     102.78     171.86     -13.73      46.07      -3.38      -5.33      -0.30       0.00      10.26

   48   4.2  0.5 -0.5    -129.24     -73.60     130.59      68.76      -8.70     -41.70      -3.47      -3.65      -5.12       0.00
                          -99.84     -80.30    -135.71      65.66      49.81      -2.11       4.15      -3.52     -10.26       0.00

   49   5.2  0.5 -0.5      49.72    -117.04     208.60     -54.63      -9.34      23.93      -6.22       1.92      -6.16      -9.32
                           29.71      64.05     110.09     103.87     -20.75      14.62      -2.11      -6.20       6.81       1.06

   50   6.2  0.5 -0.5      -1.72    -114.16     -64.37      14.76      -4.19       0.49     664.43     167.91    -314.84    -224.12
                           -2.71     -12.32       8.94     133.92      -0.49      -4.19    -168.25     661.71     -36.91     -62.22

   51   7.2  0.5 -0.5     -68.21       4.15       1.54       4.64    -133.70      15.80     -49.76      -9.50    -475.09     388.36
                           91.22      -4.17       2.07      -4.75     -15.80    -133.70       2.80     -90.67      67.65    -372.38

   52   8.2  0.5 -0.5      -8.15     -12.33      -5.43    -133.91      -5.09       0.60     166.93    -664.95     -39.72       9.66
                            3.25     112.64     -66.59      14.60      -0.60      -5.09     669.29     166.36     255.87     257.75


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00     958.50     -33.99     104.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -105.63     -33.17     958.40       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5      46.95       4.38      91.05     -16.24       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.40     -17.48      67.40      -0.05       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5      71.65     -11.00       8.62     112.12       0.00       0.00       0.00       0.00       0.00       0.00
                          105.40     111.97      12.25      13.56       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5      49.72      -1.72     -68.21      -8.15       0.00       0.00       0.00       0.00       0.00       0.00
                           29.71      -2.71      91.22       3.25       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5    -117.04    -114.16       4.15     -12.33       0.00       0.00       0.00       0.00       0.00       0.00
                           64.05     -12.32      -4.17     112.64       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5     208.60     -64.37       1.54      -5.43       0.00       0.00       0.00       0.00       0.00       0.00
                          110.09       8.94       2.07     -66.59       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5     -54.63      14.76       4.64    -133.91       0.00       0.00       0.00       0.00       0.00       0.00
                          103.87     133.92      -4.75      14.60       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5      -9.34      -4.19    -133.70      -5.09       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.75      -0.49     -15.80      -0.60       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5      23.93       0.49      15.80       0.60       0.00       0.00       0.00       0.00       0.00       0.00
                           14.62      -4.19    -133.70      -5.09       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     553.39
                            0.00     -34.84   -1112.68     -42.35       0.00      -0.00       0.00       0.00      -0.00     -60.99

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00     -39.53     -71.58     -65.90     -44.59      27.11       2.53
                          151.58     -95.37       5.10     -87.94     -70.24      37.26      82.81      61.06     -51.62     -10.09

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00      -7.73      -7.25      43.67     -58.92      41.37      -6.35
                           25.00     -12.25       3.11     -20.14     -13.26      17.71       0.77      53.31      60.85      64.65

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00     -72.47      39.25     -81.15     -74.62      28.70      -0.99
                          -24.85      90.11       1.07     -95.99      39.64      71.21     -62.11     -57.64      17.16      -1.57

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00       2.90      -7.49       9.21     -42.49     -67.57     -65.91
                          -32.10      -0.21      -1.74       0.23       2.70       3.40      59.34     -46.36      36.98      -7.11

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00      -4.69      13.80     -14.91      75.40     120.44     -37.16
                           -0.58      -4.00    -152.02      -5.49       5.11       6.11      99.23     -78.35      63.56       5.16

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00      -2.35      -3.07     -50.59      39.70     -31.54       8.52
                           51.95       0.00      -0.00       0.00      -2.39       6.62      -7.93      37.91      59.97      77.32

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00      -1.49      71.34      -4.84      -5.02      -5.40      -2.42
                          126.51    -151.57       6.07     -34.88      71.80       1.63      26.60      28.76     -11.98      -0.29

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00      71.47       1.55     -30.92     -24.08      13.82       0.29
                           48.57      35.07       4.67    -151.58       1.45     -71.35      -1.95      -1.22       8.44      -2.42

   19   1.2  1.5 -0.5       0.00     553.39     -19.62      60.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      60.99      19.15    -553.33       0.00      -0.00       0.00       0.00       0.00     -34.84

   20   2.2  1.5 -0.5      27.11       2.53      52.57      -9.38       0.00       0.00       0.00       0.00       0.00       0.00
                           51.62      10.09     -38.91       0.03      55.17      24.31      51.70      17.33     151.58     -95.37

   21   3.2  1.5 -0.5      41.37      -6.35       4.98      64.73       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.85     -64.65      -7.08      -7.83    -320.49     -42.44      25.01     -12.92      25.00     -12.25

   22   4.2  1.5 -0.5      28.70      -0.99     -39.38      -4.70       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.16       1.57     -52.67      -1.88      23.37      -0.44     103.19    -124.62     -24.85      90.11

   23   5.2  1.5 -0.5     -67.57     -65.91       2.40      -7.12       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.98       7.11       2.41     -65.03     -45.65     324.56      -5.71      -9.65     -32.10      -0.21

   24   6.2  1.5 -0.5     120.44     -37.16       0.89      -3.14       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.56      -5.16      -1.19      38.44      -4.02      -4.44       0.13      -0.39      -0.58      -4.00

   25   7.2  1.5 -0.5     -31.54       8.52       2.68     -77.31       0.00       0.00       0.00       0.00       0.00       0.00
                          -59.97     -77.32       2.74      -8.43      -0.68      -0.16    -115.84    -106.41      51.95       0.00

   26   8.2  1.5 -0.5      -5.40      -2.42     -77.19      -2.94       0.00       0.00       0.00       0.00       0.00       0.00
                           11.98       0.29       9.12       0.35      -4.20      13.86      -3.87      65.98     126.51    -151.57

   27   9.2  1.5 -0.5      13.82       0.29       9.12       0.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.44       2.42      77.19       2.94       5.23       4.55     102.35     -87.75      48.57      35.07

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     958.50
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     105.63

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00     -68.47    -123.98    -114.15     -77.22      46.95       4.38
                            0.00       0.00       0.00       0.00     121.66     -64.54    -143.43    -105.76      89.40      17.48

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00     -13.39     -12.55      75.64    -102.05      71.65     -11.00
                            0.00       0.00       0.00       0.00      22.97     -30.68      -1.33     -92.33    -105.40    -111.97

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00    -125.52      67.98    -140.55    -129.24      49.72      -1.72
                            0.00       0.00       0.00       0.00     -68.65    -123.33     107.59      99.84     -29.71       2.71

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       5.03     -12.98      15.95     -73.60    -117.04    -114.16
                            0.00       0.00       0.00       0.00      -4.68      -5.89    -102.78      80.30     -64.05      12.32

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00      -8.12      23.90     -25.83     130.59     208.60     -64.37
                            0.00       0.00       0.00       0.00      -8.84     -10.59    -171.86     135.71    -110.09      -8.94

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00      -4.07      -5.32     -87.63      68.76     -54.63      14.76
                            0.00       0.00       0.00       0.00       4.15     -11.46      13.73     -65.66    -103.87    -133.92

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00      -2.59     123.56      -8.39      -8.70      -9.34      -4.19
                            0.00       0.00       0.00       0.00    -124.37      -2.82     -46.07     -49.81      20.75       0.49

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00     123.79       2.68     -53.55     -41.70      23.93       0.49
                            0.00       0.00       0.00       0.00      -2.52     123.58       3.38       2.11     -14.62       4.19

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.96      -0.18      -3.47      -6.22     664.43
                            1.07     -19.81       4.84     -25.15       0.00       0.41       5.33      -4.15       2.11     168.25

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.96      -0.00       5.84      -3.65       1.92     167.91
                            0.25     -36.26      -0.38      59.96      -0.41       0.00       0.30       3.52       6.20    -661.71

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.18      -5.84      -0.00      -5.12      -6.16    -314.84
                           -4.59    -456.98     575.31    -107.10      -5.33      -0.30      -0.00      10.26      -6.81      36.91

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       3.47       3.65       5.12       0.00      -9.32    -224.12
                            4.99     354.88     484.40     422.38       4.15      -3.52     -10.26      -0.00      -1.06      62.22

   41   5.2  0.5  0.5   11547.52       0.00       0.00       0.00       6.22      -1.92       6.16       9.32       0.00     108.05
                           -0.00    -371.80    -258.28     529.80      -2.11      -6.20       6.81       1.06       0.00      71.05

   42   6.2  0.5  0.5       0.00   18925.81       0.00       0.00    -664.43    -167.91     314.84     224.12    -108.05      -0.00
                          371.80       0.00      -0.30       8.00    -168.25     661.71     -36.91     -62.22     -71.05       0.00

   43   7.2  0.5  0.5       0.00       0.00   18925.84       0.00      49.76       9.50     475.09    -388.36     309.28       0.87
                          258.28       0.30      -0.00      -0.25       2.80     -90.67      67.65    -372.38    -568.57       7.96

   44   8.2  0.5  0.5       0.00       0.00       0.00   18925.81    -166.93     664.95      39.72      -9.66     -68.68       0.28
                         -529.80      -8.00       0.25      -0.00     669.29     166.36     255.87     257.75    -152.10       0.28

   45   1.2  0.5 -0.5       6.22    -664.43      49.76    -166.93   11547.55       0.00       0.00       0.00       0.00       0.00
                            2.11     168.25      -2.80    -669.29      -0.00      14.20      -0.15      -0.38      -1.07      19.81

   46   2.2  0.5 -0.5      -1.92    -167.91       9.50     664.95       0.00   11547.53       0.00       0.00       0.00       0.00
                            6.20    -661.71      90.67    -166.36     -14.20      -0.00      -0.08       0.05      -0.25      36.26

   47   3.2  0.5 -0.5       6.16     314.84     475.09      39.72       0.00       0.00   11547.52       0.00       0.00       0.00
                           -6.81      36.91     -67.65    -255.87       0.15       0.08      -0.00       2.24       4.59     456.98

   48   4.2  0.5 -0.5       9.32     224.12    -388.36      -9.66       0.00       0.00       0.00   11547.52       0.00       0.00
                           -1.06      62.22     372.38    -257.75       0.38      -0.05      -2.24       0.00      -4.99    -354.88

   49   5.2  0.5 -0.5       0.00    -108.05     309.28     -68.68       0.00       0.00       0.00       0.00   11547.52       0.00
                           -0.00      71.05     568.57     152.10       1.07       0.25      -4.59       4.99       0.00     371.80

   50   6.2  0.5 -0.5     108.05      -0.00       0.87       0.28       0.00       0.00       0.00       0.00       0.00   18925.81
                          -71.05      -0.00      -7.96      -0.28     -19.81     -36.26    -456.98     354.88    -371.80      -0.00

   51   7.2  0.5 -0.5    -309.28      -0.87      -0.00       7.96       0.00       0.00       0.00       0.00       0.00       0.00
                         -568.57       7.96      -0.00       0.88       4.84      -0.38     575.31     484.40    -258.28      -0.30

   52   8.2  0.5 -0.5      68.68      -0.28      -7.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -152.10       0.28      -0.88      -0.00     -25.15      59.96    -107.10     422.38     529.80       8.00


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

   10   1.2  1.5  0.5     -19.62      60.31
                          -19.15     553.33

   11   2.2  1.5  0.5      52.57      -9.38
                           38.91      -0.03

   12   3.2  1.5  0.5       4.98      64.73
                            7.08       7.83

   13   4.2  1.5  0.5     -39.38      -4.70
                           52.67       1.88

   14   5.2  1.5  0.5       2.40      -7.12
                           -2.41      65.03

   15   6.2  1.5  0.5       0.89      -3.14
                            1.19     -38.44

   16   7.2  1.5  0.5       2.68     -77.31
                           -2.74       8.43

   17   8.2  1.5  0.5     -77.19      -2.94
                           -9.12      -0.35

   18   9.2  1.5  0.5       9.12       0.35
                          -77.19      -2.94

   19   1.2  1.5 -0.5       0.00       0.00
                        -1112.68     -42.35

   20   2.2  1.5 -0.5       0.00       0.00
                            5.10     -87.94

   21   3.2  1.5 -0.5       0.00       0.00
                            3.11     -20.14

   22   4.2  1.5 -0.5       0.00       0.00
                            1.07     -95.99

   23   5.2  1.5 -0.5       0.00       0.00
                           -1.74       0.23

   24   6.2  1.5 -0.5       0.00       0.00
                         -152.02      -5.49

   25   7.2  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   26   8.2  1.5 -0.5       0.00       0.00
                            6.07     -34.88

   27   9.2  1.5 -0.5       0.00       0.00
                            4.67    -151.58

   28   1.2  1.5 -1.5     -33.99     104.47
                           33.17    -958.40

   29   2.2  1.5 -1.5      91.05     -16.24
                          -67.40       0.05

   30   3.2  1.5 -1.5       8.62     112.12
                          -12.25     -13.56

   31   4.2  1.5 -1.5     -68.21      -8.15
                          -91.22      -3.25

   32   5.2  1.5 -1.5       4.15     -12.33
                            4.17    -112.64

   33   6.2  1.5 -1.5       1.54      -5.43
                           -2.07      66.59

   34   7.2  1.5 -1.5       4.64    -133.91
                            4.75     -14.60

   35   8.2  1.5 -1.5    -133.70      -5.09
                           15.80       0.60

   36   9.2  1.5 -1.5      15.80       0.60
                          133.70       5.09

   37   1.2  0.5  0.5     -49.76     166.93
                           -2.80    -669.29

   38   2.2  0.5  0.5      -9.50    -664.95
                           90.67    -166.36

   39   3.2  0.5  0.5    -475.09     -39.72
                          -67.65    -255.87

   40   4.2  0.5  0.5     388.36       9.66
                          372.38    -257.75

   41   5.2  0.5  0.5    -309.28      68.68
                          568.57     152.10

   42   6.2  0.5  0.5      -0.87      -0.28
                           -7.96      -0.28

   43   7.2  0.5  0.5      -0.00      -7.96
                            0.00       0.88

   44   8.2  0.5  0.5       7.96      -0.00
                           -0.88       0.00

   45   1.2  0.5 -0.5       0.00       0.00
                           -4.84      25.15

   46   2.2  0.5 -0.5       0.00       0.00
                            0.38     -59.96

   47   3.2  0.5 -0.5       0.00       0.00
                         -575.31     107.10

   48   4.2  0.5 -0.5       0.00       0.00
                         -484.40    -422.38

   49   5.2  0.5 -0.5       0.00       0.00
                          258.28    -529.80

   50   6.2  0.5 -0.5       0.00       0.00
                            0.30      -8.00

   51   7.2  0.5 -0.5   18925.84       0.00
                            0.00       0.25

   52   8.2  0.5 -0.5       0.00   18925.81
                           -0.25       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2259.89304651    -0.00046837     -102.80      0.00000000        0.00      0.0000
     2 -2259.89304651    -0.00046837     -102.80      0.00000000        0.00      0.0000
     3 -2259.89304651    -0.00046837     -102.80      0.00000000        0.00      0.0000
     4 -2259.89304651    -0.00046837     -102.80      0.00000000        0.00      0.0000
     5 -2259.84144788     0.05113027    11221.80      0.05159864    11324.59      1.4041
     6 -2259.84144788     0.05113027    11221.80      0.05159864    11324.59      1.4041
     7 -2259.84144784     0.05113031    11221.81      0.05159868    11324.60      1.4041
     8 -2259.84144784     0.05113031    11221.81      0.05159868    11324.60      1.4041
     9 -2259.83992148     0.05265667    11556.80      0.05312504    11659.60      1.4456
    10 -2259.83992148     0.05265667    11556.80      0.05312504    11659.60      1.4456
    11 -2259.83992146     0.05265668    11556.81      0.05312505    11659.60      1.4456
    12 -2259.83992146     0.05265668    11556.81      0.05312505    11659.60      1.4456
    13 -2259.83992139     0.05265675    11556.82      0.05312512    11659.62      1.4456
    14 -2259.83992139     0.05265675    11556.82      0.05312512    11659.62      1.4456
    15 -2259.80643096     0.08614718    18907.12      0.08661555    19009.92      2.3569
    16 -2259.80643096     0.08614718    18907.12      0.08661555    19009.92      2.3569
    17 -2259.80449358     0.08808456    19332.33      0.08855293    19435.12      2.4096
    18 -2259.80449358     0.08808456    19332.33      0.08855293    19435.12      2.4096
    19 -2259.80449348     0.08808466    19332.35      0.08855303    19435.14      2.4097
    20 -2259.80449348     0.08808466    19332.35      0.08855303    19435.14      2.4097
    21 -2259.61827910     0.27429905    60201.68      0.27476742    60304.48      7.4768
    22 -2259.61827910     0.27429905    60201.68      0.27476742    60304.48      7.4768
    23 -2259.61677066     0.27580749    60532.75      0.27627585    60635.54      7.5178
    24 -2259.61677066     0.27580749    60532.75      0.27627585    60635.54      7.5178
    25 -2259.61677065     0.27580750    60532.75      0.27627587    60635.54      7.5178
    26 -2259.61677065     0.27580750    60532.75      0.27627587    60635.54      7.5178
    27 -2259.61372793     0.27885021    61200.55      0.27931858    61303.34      7.6006
    28 -2259.61372793     0.27885021    61200.55      0.27931858    61303.34      7.6006
    29 -2259.61372792     0.27885022    61200.55      0.27931859    61303.35      7.6006
    30 -2259.61372792     0.27885022    61200.55      0.27931859    61303.35      7.6006
    31 -2259.61372781     0.27885034    61200.57      0.27931870    61303.37      7.6006
    32 -2259.61372781     0.27885034    61200.57      0.27931870    61303.37      7.6006
    33 -2259.61103693     0.28154121    61791.15      0.28200958    61893.95      7.6739
    34 -2259.61103693     0.28154121    61791.15      0.28200958    61893.95      7.6739
    35 -2259.60864580     0.28393235    62315.95      0.28440072    62418.74      7.7389
    36 -2259.60864580     0.28393235    62315.95      0.28440072    62418.74      7.7389
    37 -2259.60864570     0.28393244    62315.97      0.28440081    62418.76      7.7389
    38 -2259.60864570     0.28393244    62315.97      0.28440081    62418.76      7.7389
    39 -2259.60836317     0.28421497    62377.98      0.28468334    62480.77      7.7466
    40 -2259.60836317     0.28421497    62377.98      0.28468334    62480.77      7.7466
    41 -2259.60836312     0.28421502    62377.99      0.28468339    62480.78      7.7466
    42 -2259.60836312     0.28421502    62377.99      0.28468339    62480.78      7.7466
    43 -2259.60836311     0.28421504    62377.99      0.28468341    62480.79      7.7466
    44 -2259.60836311     0.28421504    62377.99      0.28468341    62480.79      7.7466
    45 -2259.60836305     0.28421509    62378.00      0.28468346    62480.80      7.7466
    46 -2259.60836305     0.28421509    62378.00      0.28468346    62480.80      7.7466
    47 -2259.60525110     0.28732705    63061.00      0.28779541    63163.79      7.8313
    48 -2259.60525110     0.28732705    63061.00      0.28779541    63163.79      7.8313
    49 -2259.60525103     0.28732711    63061.01      0.28779548    63163.81      7.8313
    50 -2259.60525103     0.28732711    63061.01      0.28779548    63163.81      7.8313
    51 -2259.60525101     0.28732713    63061.02      0.28779550    63163.81      7.8313
    52 -2259.60525101     0.28732713    63061.02      0.28779550    63163.81      7.8313


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.164266459  -0.048180527   0.982489928  -0.004407849  -0.000290326  -0.002722520   0.023134159   0.000026454
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000008842  -0.000138937  -0.000009535   0.000022868   0.001212947   0.000762050   0.000132963   0.000099268
                        -0.000009629   0.000080983   0.000005522  -0.000013042   0.002719978   0.001527744   0.000214285  -0.000313667

    3    3.2  1.5  1.5   0.000001952  -0.000007675   0.000001446   0.000001201   0.000362210  -0.000797691  -0.000133983  -0.000186571
                         0.000161106   0.000006015  -0.000026689  -0.000008784  -0.001575640   0.002920923   0.000323816   0.000132062

    4    4.2  1.5  1.5  -0.000018801  -0.000081701  -0.000000537   0.000014532  -0.002410515  -0.001974287  -0.000268392   0.000295311
                         0.000001496  -0.000137935  -0.000006909   0.000023052   0.001357185   0.000487615   0.000074353   0.000056282

    5    5.2  1.5  1.5  -0.000160347   0.000001775   0.000025034   0.000007462   0.002091450  -0.002585404  -0.000238115  -0.000182201
                         0.000000918   0.000020871   0.000000857  -0.000003521   0.000258018  -0.000828647  -0.000094032  -0.000214971

    6    6.2  1.5  1.5  -0.000025241   0.000008796  -0.000161635   0.000000492  -0.000075870  -0.000394258   0.003434122   0.000003255
                         0.000002146  -0.000001034  -0.000000411   0.000000069  -0.000043134   0.000035507   0.000003629   0.000006780

    7    7.2  1.5  1.5   0.000000001  -0.000000004  -0.000000000   0.000000001   0.000000001  -0.000000006   0.000000001  -0.000000001
                         0.001012200  -0.000296875   0.006054042  -0.000027163  -0.000011307  -0.000106005   0.000900801   0.000001028

    8    8.2  1.5  1.5  -0.000374623   0.001707691   0.000145172  -0.000268945   0.000347649   0.000233798   0.000031888  -0.000013158
                        -0.000243568  -0.003016867  -0.000104886   0.000516221   0.000219301   0.000216351   0.000028267  -0.000042268

    9    9.2  1.5  1.5   0.000243571   0.003016869   0.000104905  -0.000516221  -0.000219280  -0.000216350  -0.000028260   0.000042547
                        -0.000374623   0.001707691   0.000145169  -0.000268945   0.000347619   0.000233795   0.000031896  -0.000013173

   10    1.2  1.5  0.5   0.055633269   0.898483691   0.034073075  -0.152973597  -0.007873280  -0.008337860  -0.001082108   0.001804876
                        -0.112609992   0.377169583   0.037063403  -0.058044992   0.016503839   0.011458828   0.001556553  -0.000803064

   11    2.2  1.5  0.5  -0.000015191   0.000007592  -0.000094321   0.000010849  -0.000066814  -0.000220957   0.002009816  -0.000057294
                        -0.000022798   0.000002452  -0.000127973  -0.000025324  -0.000101706  -0.000328860   0.002719878  -0.000587098

   12    3.2  1.5  0.5  -0.000006938  -0.000010912  -0.000023331  -0.000060539   0.000268364  -0.000104386   0.000486620   0.000318371
                         0.000004472   0.000024601  -0.000017135   0.000146803   0.000299105  -0.000051464   0.000375957   0.003361553

   13    4.2  1.5  0.5  -0.000021435   0.000006528  -0.000128890   0.000003263  -0.000051230  -0.000323056   0.002741768  -0.000020557
                         0.000015852  -0.000006086   0.000096805  -0.000007832   0.000016983   0.000246441  -0.002059815  -0.000168216

   14    5.2  1.5  0.5  -0.000007147  -0.000023282  -0.000000222  -0.000149343  -0.000263285   0.000044571  -0.000002434  -0.003421703
                        -0.000003260  -0.000009583  -0.000000362  -0.000062026   0.000266536  -0.000051158   0.000000214   0.000322238

   15    6.2  1.5  0.5   0.000009224   0.000147714   0.000005861  -0.000024297   0.001175786   0.001237270   0.000154980  -0.000224416
                        -0.000018204   0.000062373   0.000007059  -0.000006746  -0.002448495  -0.001698210  -0.000251473   0.000163359

   16    7.2  1.5  0.5   0.000231299  -0.000774697  -0.000076128   0.000119223  -0.000214138  -0.000148680  -0.000020201   0.000010424
                         0.000114284   0.001845467   0.000069994  -0.000314205  -0.000102160  -0.000108184  -0.000014039   0.000023417

   17    8.2  1.5  0.5   0.000381153  -0.000495181  -0.000510400   0.000065945   0.000089561  -0.000189707  -0.000083033  -0.000041159
                        -0.004557956   0.000143837  -0.002806523   0.000212203  -0.000350503   0.000492676  -0.000470044   0.000026480

   18    9.2  1.5  0.5   0.003397250   0.000196613  -0.004135765  -0.000181058   0.000363460  -0.000371132  -0.000562674  -0.000027663
                         0.000518325  -0.000535413   0.000310048   0.000062264   0.000088028  -0.000204058   0.000039017  -0.000041018

   19    1.2  1.5 -0.5   0.974425802  -0.008342067  -0.163532320  -0.045703716   0.014058636  -0.017413671  -0.001871456  -0.001221530
                        -0.004916887  -0.125325500  -0.005229059   0.021114868   0.001783088  -0.005579363  -0.000632567  -0.001449718

   20    2.2  1.5 -0.5   0.000007953   0.000022754   0.000000279   0.000136272  -0.000088006   0.000028260   0.000002710   0.001749452
                         0.000000638  -0.000015256   0.000027549  -0.000081874  -0.000386298   0.000118362  -0.000589880  -0.002894221

   21    3.2  1.5 -0.5  -0.000000675   0.000004700   0.000000554   0.000028125   0.000034076  -0.000033845  -0.000005878   0.000449735
                        -0.000026905   0.000006785  -0.000158795  -0.000006848  -0.000111283  -0.000400422   0.003376590  -0.000419382

   22    4.2  1.5 -0.5   0.000003705   0.000013744   0.000000001   0.000081766   0.000400875  -0.000047480   0.000004899   0.002920645
                         0.000008120   0.000022845   0.000008485   0.000138918  -0.000066312   0.000025662  -0.000169397   0.001797211

   23    5.2  1.5 -0.5  -0.000025177   0.000007850  -0.000161711   0.000000344  -0.000067801  -0.000374538   0.003436841  -0.000002443
                        -0.000000049  -0.000000279  -0.000000158  -0.000000249  -0.000002612   0.000009017   0.000004161   0.000000012

   24    6.2  1.5 -0.5   0.000160339  -0.000001562  -0.000025024  -0.000008124  -0.002084594   0.002588763   0.000238573   0.000177590
                        -0.000001146  -0.000020347  -0.000003114   0.000004263  -0.000263097   0.000822134   0.000141887   0.000236050

   25    7.2  1.5 -0.5  -0.000010098  -0.000257422  -0.000010741   0.000043366   0.000023137  -0.000072390  -0.000008212  -0.000018815
                        -0.002001450   0.000017148   0.000335893   0.000093883  -0.000182412   0.000225946   0.000024281   0.000015848

   26    8.2  1.5 -0.5  -0.000402540   0.001390807   0.000142461   0.001550176   0.000488767   0.000316603   0.000043433  -0.000039172
                        -0.000322265  -0.004357281  -0.000170540  -0.002394585   0.000199562   0.000175032   0.000022557   0.000475711

   27    9.2  1.5 -0.5  -0.000023076  -0.003337251  -0.000143204   0.003698689   0.000105802   0.000185030   0.000023748  -0.000563870
                         0.000569905  -0.000820199  -0.000127089   0.001876267  -0.000410103  -0.000324986  -0.000043402   0.000013229

   28    1.2  1.5 -1.5   0.044518506   0.151781221   0.004069065   0.906976053  -0.001866094   0.000198998   0.000026340  -0.023034859
                         0.018424518   0.062816479   0.001694657   0.377731282   0.001982374  -0.000211398  -0.000002448   0.002141171

   29    2.2  1.5 -1.5   0.000097409   0.000004488  -0.000016096  -0.000006679  -0.000590079   0.001149134   0.000127874  -0.000112559
                         0.000127959   0.000012279  -0.000020832  -0.000008763  -0.001602039   0.002747547   0.000303133   0.000225671

   30    3.2  1.5 -1.5   0.000004791   0.000063412   0.000002269  -0.000008926  -0.002673600  -0.001395555  -0.000197993   0.000163379
                         0.000008492  -0.000148115  -0.000008570   0.000025193  -0.001421255  -0.000816250  -0.000114227   0.000310026

   31    4.2  1.5 -1.5   0.000128238  -0.000016800  -0.000022278  -0.000003153  -0.001708285   0.002640457   0.000288834   0.000274122
                        -0.000096208  -0.000008572   0.000015693   0.000006172   0.001103331  -0.000824937  -0.000083372   0.000049193

   32    5.2  1.5 -1.5  -0.000009621  -0.000147809  -0.000005535   0.000023439  -0.001168740  -0.001245667  -0.000161523   0.000228389
                         0.000018606  -0.000062166  -0.000006120   0.000008833   0.002450513   0.001699721   0.000230912  -0.000115667

   33    6.2  1.5 -1.5  -0.000007732  -0.000022502  -0.000000481  -0.000149370  -0.000296090   0.000020596   0.000002613  -0.003419045
                        -0.000004319  -0.000011635  -0.000000126  -0.000061763   0.000262738  -0.000084809  -0.000007052   0.000321457

   34    7.2  1.5 -1.5   0.000113531   0.000387073   0.000010442   0.002327556   0.000077183  -0.000008234  -0.000000096   0.000083373
                        -0.000274309  -0.000935267  -0.000025075  -0.005588731   0.000072663  -0.000007750  -0.000001024   0.000896935

   35    8.2  1.5 -1.5  -0.000424228  -0.000439291   0.000049806   0.000093689   0.000002718  -0.000078607  -0.000009189  -0.000029135
                        -0.003440599   0.000081797   0.000579944   0.000152637  -0.000318530   0.000403452   0.000043305   0.000031097

   36    9.2  1.5 -1.5  -0.003440601   0.000081800   0.000579944   0.000152654  -0.000318528   0.000403416   0.000043584   0.000031091
                         0.000424228   0.000439293  -0.000049806  -0.000093680  -0.000002717   0.000078602   0.000009179   0.000029143

   37    1.2  0.5  0.5   0.000402080   0.000814689  -0.000106375   0.005106898   0.043286010   0.009480353   0.011375331   0.617095868
                        -0.000034253   0.000476629  -0.000057527   0.003025015  -0.034474036  -0.003966268   0.009305109   0.028111159

   38    2.2  0.5  0.5  -0.000278990   0.000458273   0.000364806   0.003034310  -0.016817224  -0.023598317  -0.031839260   0.027758015
                        -0.000486172  -0.000784295  -0.000110991  -0.005080141  -0.038338856  -0.024339733   0.010745987  -0.616621958

   39    3.2  0.5  0.5   0.000244955  -0.004282760  -0.000586781   0.000484816  -0.212662605  -0.024060492   0.028983357   0.041498824
                        -0.003471942  -0.001529568  -0.001649249   0.000452083   0.531376240  -0.081495190   0.217457122  -0.018940868

   40    4.2  0.5  0.5  -0.002629278  -0.003162275   0.001903963   0.000743514   0.064537371  -0.407338298  -0.212266171   0.016992344
                         0.003557965  -0.001183040   0.001040590   0.000259354   0.126735009   0.370410051  -0.127722771   0.000827437

   41    5.2  0.5  0.5  -0.003763397   0.001293046   0.003247692  -0.000266874   0.327215933  -0.179802643  -0.278209844  -0.017819192
                        -0.002625387   0.001435614  -0.000833254   0.000444955   0.042188908  -0.396381192   0.091230369   0.026134385

   42    6.2  0.5  0.5  -0.037239198   0.003806310  -0.045178207   0.001393566   0.042500999  -0.078445843   0.127136900  -0.004295529
                         0.002278967   0.002267023  -0.005958186  -0.000461409  -0.001060779  -0.015728515   0.013109397  -0.003999699

   43    7.2  0.5  0.5  -0.005344159   0.022347767   0.003803228  -0.003511493  -0.112333665  -0.075044595  -0.015063746   0.005369579
                        -0.002594204  -0.053214693  -0.003920937   0.009034223  -0.054817441  -0.053913784  -0.002346400   0.012450360

   44    8.2  0.5  0.5  -0.004435922  -0.002543767  -0.005003644   0.000661627  -0.005243455   0.007655734   0.015633868   0.004623058
                        -0.020409108  -0.003831379   0.054822598   0.001396901   0.047310100  -0.046612022  -0.140703134  -0.004302820

   45    1.2  0.5 -0.5  -0.000935034   0.000358421  -0.005877390  -0.000120316   0.009386105  -0.054771393   0.611845243  -0.010465274
                         0.000128860   0.000185408   0.000829098   0.000012208  -0.004184424   0.007888749  -0.085105500   0.010318006

   46    2.2  0.5 -0.5  -0.000123523  -0.000443701  -0.000847966   0.000294095   0.001547750  -0.016389022   0.084710010   0.032697183
                        -0.000899931   0.000342533  -0.005856263   0.000242715   0.033866025  -0.038523848   0.611406052   0.007752994

   47    3.2  0.5 -0.5   0.004542162  -0.001101355  -0.000621362  -0.001175756   0.042848107   0.532681132   0.043073757  -0.008732312
                         0.000224442   0.003301727   0.000230942   0.001296892   0.073378560   0.209372642   0.015018664   0.219206253

   48    4.2  0.5 -0.5   0.003374326  -0.001068851  -0.000786080   0.002157694  -0.548911660   0.048044978   0.016842824   0.199533725
                         0.000116151  -0.004292992  -0.000046434  -0.000228607   0.042709308   0.133860057  -0.002396604  -0.146820728

   49    5.2  0.5 -0.5  -0.001743755  -0.004481322   0.000075293   0.002677719   0.165378850  -0.193563877  -0.020161561   0.285459444
                         0.000832030   0.000986696   0.000513360   0.002017829   0.402612563   0.267176339  -0.024372960   0.065089198

   50    6.2  0.5 -0.5  -0.004383932  -0.033537315  -0.001109062  -0.043996529  -0.042316502  -0.029903812  -0.003906900  -0.125377847
                         0.000639161  -0.016346249  -0.000961721  -0.011869120   0.067900295   0.030219566   0.004380102   0.024820220

   51    7.2  0.5 -0.5  -0.000299586  -0.005930012  -0.000231726   0.002003456  -0.012180987   0.037082008   0.004194193   0.014781917
                        -0.057715998   0.000353390   0.009689899   0.005081775   0.091597003  -0.119368039  -0.012893897  -0.003730546

   52    8.2  0.5 -0.5   0.003815568  -0.011903336  -0.001147832   0.016458209   0.039187515   0.038042367   0.005001460  -0.028589471
                        -0.002567419   0.017161580   0.001035165  -0.052532665   0.026374789   0.028609747   0.003856466  -0.138652197


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000107   0.000000007   0.000000303   0.000000008   0.000000004   0.000000685   0.000000112  -0.000000001
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.000413744  -0.003311425  -0.000191539  -0.000213702  -0.002805002   0.000008838  -0.001571485   0.000107541
                         0.001502990  -0.000074823  -0.000405614   0.001368638   0.002581416  -0.000055409   0.000302912   0.000463946

    3    3.2  1.5  1.5  -0.001741559  -0.000854855   0.000458425   0.000362514  -0.000404835   0.000051175  -0.000096219   0.000838283
                        -0.001421393   0.000665189   0.000317613   0.000311444   0.000581948   0.000026553  -0.000509632  -0.003002291

    4    4.2  1.5  1.5  -0.000984506   0.000278721   0.000805761   0.000188169   0.002731588   0.000075610  -0.000217668   0.000031928
                        -0.000484990  -0.003517886   0.000132006   0.001172535   0.002742815  -0.000014804  -0.001539067   0.000399631

    5    5.2  1.5  1.5   0.001622232  -0.000827205  -0.000445534  -0.000009755   0.000004554  -0.000055026   0.000480471   0.003052964
                        -0.001615007  -0.000275941   0.000364981   0.000383713  -0.000048115   0.000021848   0.000191579   0.000803409

    6    6.2  1.5  1.5  -0.001507167   0.000224090  -0.005774740   0.000246033   0.000339928  -0.001645698   0.000005661  -0.000024816
                        -0.000106420  -0.000524773   0.000107298  -0.000029939   0.000139943  -0.000025960  -0.000013614  -0.000050979

    7    7.2  1.5  1.5   0.000045057   0.000255932  -0.000050013   0.000009789  -0.000071500   0.000012748  -0.000000005  -0.000000001
                        -0.000706782   0.000095541  -0.002786871   0.000115174   0.000153207  -0.000792977  -0.000000002  -0.000000000

    8    8.2  1.5  1.5   0.000094521  -0.000803971   0.000107817   0.001020744   0.003121803  -0.000016369   0.001434025  -0.000210998
                         0.000335388   0.000327119  -0.000267253  -0.000231028  -0.000772586  -0.000033128  -0.001113306   0.000207295

    9    9.2  1.5  1.5  -0.000395440  -0.000582515   0.000022266  -0.000374803  -0.000763099  -0.000001356   0.001113305  -0.000207296
                        -0.000075737  -0.000883455  -0.000252381  -0.000607644  -0.003155766   0.000002357   0.001434023  -0.000210998

   10    1.2  1.5  0.5   0.000000019  -0.000000027   0.000000008   0.000000018  -0.000000004  -0.000000011   0.000001773  -0.000000153
                        -0.000000014  -0.000000031   0.000000015  -0.000000028   0.000000010   0.000000011   0.000001757  -0.000000351

   11    2.2  1.5  0.5  -0.000643634  -0.000947930  -0.000456790   0.000086209   0.000911561  -0.000136512  -0.000353808  -0.002103236
                        -0.003429438   0.000813158  -0.000028072   0.000667338  -0.000152926  -0.000194699   0.000251354   0.001683681

   12    3.2  1.5  0.5   0.000305406  -0.000145578  -0.000286022   0.002189242  -0.005358771  -0.000188284  -0.000105495  -0.000448026
                        -0.000660174  -0.000702130   0.000100188  -0.001565374   0.000966095   0.000174658  -0.000006713   0.000194767

   13    4.2  1.5  0.5   0.003068889  -0.000739567  -0.001504256  -0.000419690   0.000365065  -0.000275687  -0.000236683  -0.001691215
                        -0.000303845  -0.001089368   0.000682392   0.000501419  -0.000093734   0.000145281  -0.000382518  -0.002143709

   14    5.2  1.5  0.5   0.000076960   0.001130300   0.000218397   0.002238732   0.000102830  -0.000146488   0.000026084   0.000001065
                         0.000498750   0.000170152   0.000406558   0.004499394   0.003433588  -0.000168262   0.000026413   0.000000469

   15    6.2  1.5  0.5  -0.000854682  -0.001329092   0.000319610  -0.000111747  -0.000070525   0.000035781   0.002216862  -0.000392596
                         0.000138317  -0.001900910  -0.000214978   0.000436163  -0.000067382  -0.000015192   0.002246990  -0.000336655

   16    7.2  1.5  0.5  -0.000180876   0.002717650   0.000307530  -0.000739811   0.000060360   0.000030564   0.001493654  -0.000213880
                        -0.001253286  -0.001907701   0.000468604  -0.000163336   0.000009406   0.000051799  -0.001471095   0.000266312

   17    8.2  1.5  0.5  -0.001051360  -0.000040885  -0.000097497   0.000297245  -0.000074996  -0.000056865  -0.000080731  -0.000384957
                        -0.001923714   0.000628505  -0.002089820   0.000139841   0.000131389  -0.000655538   0.000150505   0.000975068

   18    9.2  1.5  0.5   0.000698821  -0.000516197  -0.002693690   0.000056276   0.000146660  -0.000711036  -0.000150505  -0.000975065
                        -0.000985187  -0.000500536   0.000555052   0.000256989   0.000016824   0.000082384  -0.000080735  -0.000384958

   19    1.2  1.5 -0.5  -0.000000032  -0.000000017  -0.000000015  -0.000000017   0.000000006  -0.000000007   0.000000381   0.000002405
                         0.000000026  -0.000000017   0.000000030   0.000000001  -0.000000014   0.000000008  -0.000000041   0.000000667

   20    2.2  1.5 -0.5  -0.000786227   0.001249925   0.000614324   0.000262224  -0.000232185  -0.000208703  -0.000417646   0.000042585
                        -0.000970384  -0.003257760  -0.000274549   0.000375078  -0.000051317  -0.000900429   0.002661570  -0.000431909

   21    3.2  1.5 -0.5  -0.000269482  -0.000181693  -0.000193572   0.000063718   0.000089003   0.001164942   0.000053307  -0.000058192
                         0.000664499  -0.000704337   0.002684345   0.000296287  -0.000240904   0.005319086   0.000485613  -0.000088250

   22    4.2  1.5 -0.5  -0.000923431  -0.002964200   0.000208877   0.000202459   0.000028326  -0.000053581   0.002700445  -0.000449550
                         0.000938594  -0.000850831  -0.000619622   0.001639346  -0.000310334  -0.000373079   0.000404096  -0.000015598

   23    5.2  1.5 -0.5   0.001142471  -0.000165406   0.005006548  -0.000460787  -0.000211602  -0.003210016  -0.000000935   0.000035877
                         0.000035907   0.000476776  -0.000436972   0.000025741  -0.000070676   0.001223069  -0.000000692   0.000009533

   24    6.2  1.5 -0.5  -0.001649299   0.000815869   0.000313833   0.000016697  -0.000000294   0.000089292   0.000487126   0.003051018
                         0.001630876   0.000289777  -0.000322853  -0.000384821   0.000038871   0.000039256   0.000173713   0.000809152

   25    7.2  1.5 -0.5   0.002330236   0.000403331  -0.000525259  -0.000560216   0.000059563  -0.000031855  -0.000125025  -0.000535674
                         0.002365364  -0.001200320  -0.000545988  -0.000017940   0.000008338  -0.000052125   0.000317861   0.002026864

   26    8.2  1.5 -0.5   0.000072819   0.001380197   0.000274360   0.001833838  -0.000627146  -0.000092535  -0.000655389   0.000090583
                        -0.000625609  -0.001703259   0.000180657  -0.001006922   0.000199127   0.000119686   0.000818178  -0.000144790

   27    9.2  1.5 -0.5  -0.000597802  -0.000510240   0.000248612   0.000931542  -0.000196867  -0.000071833   0.000818178  -0.000144793
                         0.000399536  -0.001094805  -0.000086039   0.002587717  -0.000688188  -0.000128967   0.000655386  -0.000090581

   28    1.2  1.5 -1.5  -0.000000007   0.000000105  -0.000000004   0.000000158  -0.000000263   0.000000001  -0.000000000  -0.000000055
                        -0.000000001   0.000000019  -0.000000007   0.000000258  -0.000000633   0.000000003  -0.000000000  -0.000000097

   29    2.2  1.5 -1.5   0.003270886  -0.000136684  -0.001056214  -0.000445971   0.000047771   0.001306924   0.000456137   0.000517073
                         0.000521958  -0.001552894   0.000896242   0.000048162  -0.000029431  -0.003581018  -0.000136930   0.001514581

   30    3.2  1.5 -1.5   0.000721282  -0.001968799  -0.000454813   0.000510105  -0.000044163   0.000381965  -0.002190229   0.000490178
                         0.000808088   0.001084996  -0.000146831   0.000225441  -0.000037061  -0.000597208   0.002217964  -0.000169436

   31    4.2  1.5 -1.5   0.000358517  -0.001055678  -0.001098530   0.000532930  -0.000015354   0.003581241   0.000362772   0.001444126
                        -0.003510651   0.000300018   0.000451083   0.000618596  -0.000075500   0.001469462  -0.000170646  -0.000574983

   32    5.2  1.5 -1.5   0.000863344   0.001305320  -0.000322285   0.000078990   0.000000948  -0.000042681   0.002212842  -0.000404802
                        -0.000122669   0.001880432   0.000208477  -0.000570502   0.000059197   0.000022675   0.002251530  -0.000322009

   33    6.2  1.5 -1.5  -0.000126056  -0.001501731  -0.000102794  -0.002920709   0.000655691   0.000259707  -0.000056573   0.000009008
                        -0.000556519  -0.000166380  -0.000225526  -0.004982829   0.001509658   0.000260167   0.000003761  -0.000011672

   34    7.2  1.5 -1.5  -0.000268941  -0.000082792  -0.000103370  -0.002403775   0.000727335   0.000114024  -0.000000001   0.000000004
                         0.000047954   0.000703360   0.000051726   0.001411034  -0.000316164  -0.000124833  -0.000000001   0.000000003

   35    8.2  1.5 -1.5   0.000732029   0.000153300  -0.000335340  -0.000171774   0.000036873   0.000484941   0.000075223   0.000254671
                         0.000466379  -0.000312920  -0.000991383   0.000231393   0.000002399   0.003179209  -0.000286065  -0.001797504

   36    9.2  1.5 -1.5   0.000731906  -0.000402614   0.000713933  -0.000203710  -0.000001656  -0.003206929  -0.000286065  -0.001797502
                        -0.000764284   0.000003382   0.000002809   0.000150645   0.000002157   0.000506738  -0.000075224  -0.000254672

   37    1.2  0.5  0.5  -0.000461512  -0.037784605   0.003251449  -0.046379145   0.198283818   0.009584564  -0.000000086   0.000000113
                         0.002900131  -0.017638023   0.002380011  -0.101936941   0.739069830   0.005719745  -0.000000113  -0.000000274

   38    2.2  0.5  0.5   0.006265466  -0.037890006  -0.003706886  -0.444423769  -0.577050722   0.030474593  -0.000000003  -0.000000519
                        -0.011548312   0.093195839   0.007216446   0.186089101   0.152640388  -0.014544002  -0.000000105  -0.000000191

   39    3.2  0.5  0.5  -0.025485095  -0.188116999  -0.040655972  -0.057229588   0.005440241  -0.011739458  -0.000002179   0.000001444
                         0.154952885  -0.491298569  -0.513407489   0.116046974  -0.008039582  -0.127675062  -0.000002723  -0.000002348

   40    4.2  0.5  0.5  -0.099557357  -0.403663978   0.381717948   0.010403174   0.010558092   0.092671777  -0.000002293  -0.000002597
                        -0.197637672  -0.298408042   0.348236497   0.116972594  -0.017835572   0.095854301  -0.000001565   0.000002093

   41    5.2  0.5  0.5   0.581003644   0.034327847   0.376546651   0.001418161   0.028246886   0.129079485   0.000000514  -0.000002945
                        -0.180785201   0.118521436  -0.224934870   0.000746877  -0.003811599  -0.067802288   0.000000697  -0.000002961

   42    6.2  0.5  0.5   0.000000520  -0.000000038   0.000001534   0.000000013   0.000000055   0.000003983   0.102252375   0.561457588
                         0.000000089  -0.000000082   0.000000331   0.000000030  -0.000000046   0.000000482   0.011799519   0.086598471

   43    7.2  0.5  0.5   0.000000082   0.000000404  -0.000000111   0.000000302   0.000000138  -0.000000218   0.403588703  -0.072459485
                         0.000000065  -0.000000349   0.000000137   0.000000048  -0.000000047   0.000000071  -0.403507363   0.048225189

   44    8.2  0.5  0.5   0.000000145   0.000000100   0.000000021  -0.000000034   0.000000066   0.000000402  -0.008971217  -0.087195174
                        -0.000000569  -0.000000208  -0.000001871  -0.000000102  -0.000000012  -0.000004107   0.074305905   0.565794723

   45    1.2  0.5 -0.5   0.040340691   0.000067603   0.111162547   0.003726604  -0.008960704   0.758563733  -0.000000182   0.000000141
                        -0.010554844  -0.002935845  -0.013603444   0.001532577  -0.006654709  -0.100606903   0.000000235   0.000000018

   46    2.2  0.5 -0.5   0.020510868   0.004086333   0.073056465   0.004223280   0.001731778  -0.080560750  -0.000000424   0.000000093
                         0.098490710   0.012486850   0.476239848  -0.006926905  -0.033722837  -0.591436041  -0.000000356  -0.000000049

   47    3.2  0.5 -0.5   0.273409752   0.002798779  -0.069155864  -0.459233313   0.122400296  -0.005335377  -0.000001322   0.000003446
                        -0.449454557  -0.157009719   0.109359913   0.233119975  -0.038169416   0.008109553   0.000002419   0.000000540

   48    4.2  0.5 -0.5   0.450750603  -0.133479159  -0.105224576   0.496220396  -0.124084089  -0.012416358   0.000000528   0.000002497
                        -0.220943117   0.176509572   0.052140207   0.144022814  -0.048777500   0.016595632  -0.000003293   0.000001214

   49    5.2  0.5 -0.5  -0.055084211   0.539015526  -0.001376967   0.004507786   0.013059380   0.007323292  -0.000004033  -0.000000860
                         0.110414951   0.282330997  -0.000820347   0.438591781  -0.145217480   0.027546038  -0.000001087  -0.000000101

   50    6.2  0.5 -0.5   0.000000052   0.000000528  -0.000000032   0.000001083  -0.000001974  -0.000000021   0.353866626  -0.060998086
                        -0.000000074   0.000000006   0.000000005   0.000001136  -0.000003493   0.000000069   0.444423592  -0.082909651

   51    7.2  0.5 -0.5  -0.000000334   0.000000093  -0.000000198   0.000000059   0.000000018   0.000000010   0.005898334   0.149961330
                        -0.000000416  -0.000000049  -0.000000232  -0.000000166   0.000000229   0.000000146  -0.086840403  -0.550648375

   52    8.2  0.5 -0.5  -0.000000061   0.000000041   0.000000104  -0.000001585   0.000003638   0.000000015   0.447892529  -0.060052853
                        -0.000000223   0.000000585  -0.000000025   0.000000993  -0.000001948   0.000000066  -0.356537445   0.044671077


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5   0.069143957   0.000035188   0.000021358  -0.002898260  -0.000000012   0.000000000  -0.000027726   0.001570654
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000049886  -0.000006246   0.000079405  -0.001480241  -0.049973857  -0.150039930  -0.149606893  -0.015354005
                         0.000007060   0.000005434   0.000183814   0.000169846  -0.002745908   0.166839442   0.239386553   0.038597382

    3    3.2  1.5  1.5  -0.000027737   0.000058338   0.000012020  -0.000198147   0.433760088   0.000678613  -0.008007160  -0.063183795
                        -0.000005040  -0.000021631  -0.001483457  -0.000131608   0.028847523  -0.017363653   0.035211807  -0.276907658

    4    4.2  1.5  1.5  -0.000008552  -0.000004378   0.000079830  -0.000147252  -0.023346081  -0.162686691  -0.243004106   0.012803938
                        -0.000062325   0.000005136   0.000152232  -0.001485745   0.025640277  -0.145523389  -0.148472114  -0.014621148

    5    5.2  1.5  1.5   0.000020346   0.000022488   0.001498293   0.000087217  -0.027548198   0.039379244   0.000207266   0.281997703
                         0.000002952   0.000058679  -0.000006182   0.000071136   0.436422240   0.034803059   0.029967598  -0.055610769

    6    6.2  1.5  1.5   0.001502850   0.000001304  -0.000016976  -0.000054802   0.006269741   0.000518980  -0.004923197   0.316040946
                        -0.000000252  -0.000000983  -0.000020297  -0.000006209  -0.004541002  -0.002198287  -0.002057233  -0.003269873

    7    7.2  1.5  1.5   0.000000000  -0.000000000  -0.000000001  -0.000000006   0.000000322   0.000000011   0.000000050  -0.000000080
                        -0.004137483  -0.000002106  -0.000001278   0.000173434   0.000001029   0.000000328   0.002898577  -0.164181062

    8    8.2  1.5  1.5   0.000081101  -0.000006651  -0.000048387   0.001934462  -0.009197944   0.018281158   0.002061142   0.008667825
                        -0.000058355   0.000000966   0.000167720  -0.001390658   0.004430313  -0.083876437  -0.084104778  -0.001643053

    9    9.2  1.5  1.5   0.000058342  -0.000000975  -0.000167721   0.001390656  -0.004430231   0.083875023   0.084105971   0.001642476
                         0.000081103  -0.000006626  -0.000048387   0.001934458  -0.009197844   0.018281026   0.002060411   0.008667810

   10    1.2  1.5  0.5  -0.001952580   0.000050446   0.004985510  -0.046545366   0.000000002   0.000000025  -0.001387961  -0.000043885
                        -0.002133103   0.000187526   0.000820967  -0.050881116  -0.000000002   0.000000002   0.000129655  -0.000139439

   11    2.2  1.5  0.5   0.000879444  -0.000232444   0.000007428  -0.000028601  -0.285619622  -0.039893025  -0.017041911   0.186884034
                         0.001191279  -0.000114971  -0.000007258  -0.000041031  -0.240622771   0.009485720  -0.057652672   0.252767911

   12    3.2  1.5  0.5   0.000212804   0.001321939  -0.000044090  -0.000022341  -0.037677818  -0.013690471   0.085590370   0.047030860
                         0.000163982   0.000661907   0.000042261  -0.000020857  -0.055924703  -0.001119937   0.301209925   0.040058666

   13    4.2  1.5  0.5   0.001199976  -0.000066506   0.000002754  -0.000051862   0.246168152  -0.009576920  -0.010174978   0.255322400
                        -0.000901752  -0.000029855  -0.000002392   0.000036049  -0.287260641  -0.044172177  -0.011267276  -0.192232838

   14    5.2  1.5  0.5  -0.000002751  -0.000672208  -0.000043937   0.000011359  -0.000730017   0.005012923  -0.303207819  -0.006068999
                         0.000001255   0.001343896  -0.000046503   0.000012198   0.000376884   0.000583487   0.091341052   0.002241464

   15    6.2  1.5  0.5   0.000039983   0.000025379  -0.000108501   0.001011616  -0.025702283   0.435468866   0.287403255   0.008502007
                         0.000037419  -0.000009981  -0.000016722   0.001106121  -0.043125172   0.042183030  -0.023119134   0.026547104

   16    7.2  1.5  0.5  -0.000042547   0.000003741   0.000016370  -0.001014816  -0.009947161   0.009596728   0.004518214  -0.004858696
                         0.000038939  -0.000001007  -0.000099448   0.000928341   0.006326944  -0.098662111   0.048362605   0.001528602

   17    8.2  1.5  0.5   0.000274561  -0.000111712  -0.000314246  -0.000153681  -0.048751575  -0.004409183  -0.010293482   0.018782745
                         0.002377406   0.000029437   0.002733633   0.000043689  -0.008949526   0.003912113  -0.003011034   0.190978888

   18    9.2  1.5  0.5   0.002367119  -0.000027023  -0.002732162  -0.000242560   0.008948453  -0.003912403  -0.000312372  -0.002704456
                        -0.000286152  -0.000111997  -0.000314420  -0.000130174  -0.048750122  -0.004408885  -0.009900523  -0.003467829

   19    1.2  1.5 -0.5   0.000145034   0.001031873   0.068958776   0.003980549  -0.000000002   0.000000003  -0.000002224   0.001367164
                         0.000129136   0.002701469  -0.000215178   0.003111998   0.000000025  -0.000000002   0.000146165  -0.000272229

   20    2.2  1.5 -0.5   0.000001389  -0.000670839   0.000049558  -0.000000309   0.015753263   0.191765600   0.106891792  -0.000137127
                        -0.000259319  -0.001320054  -0.000006746   0.000010381  -0.037858514   0.320474400  -0.295620368  -0.060118537

   21    3.2  1.5 -0.5  -0.000000701  -0.000051226   0.000030476   0.000001232   0.001087448   0.049167410   0.033628097   0.004018971
                         0.001478392  -0.000263727   0.000002312  -0.000061060  -0.013693090   0.046149281  -0.051824217   0.313108576

   22    4.2  1.5 -0.5   0.000003115   0.001343894   0.000008602   0.000000105  -0.042067804   0.322982483   0.299596342   0.006532420
                        -0.000072834  -0.000668617   0.000062571   0.000003647  -0.016528715  -0.196976522   0.111288011  -0.013704349

   23    5.2  1.5 -0.5   0.001502638  -0.000002354  -0.000016667  -0.000063972  -0.000227011  -0.000488951  -0.006456405   0.316665948
                         0.000001332   0.000001897  -0.000000096  -0.000000831   0.005041659   0.000660222  -0.000414410   0.000921376

   24    6.2  1.5 -0.5  -0.000020296  -0.000015533  -0.001498948  -0.000085788  -0.028114578   0.038451375   0.000564356  -0.282031807
                         0.000018215  -0.000052513   0.000004861  -0.000068503   0.436602922   0.032278159  -0.027869596   0.059943167

   25    7.2  1.5 -0.5  -0.000002577  -0.000053877   0.000004291  -0.000062081  -0.098925379  -0.007838576  -0.005092899   0.009485205
                         0.000002893   0.000020585   0.001375372   0.000079397  -0.006330777   0.008805280  -0.000076984   0.047638080

   26    8.2  1.5 -0.5   0.000076379  -0.002002266   0.000071940   0.001798400   0.004567859   0.001024994  -0.036554496   0.009004445
                        -0.000086674  -0.001310868   0.000142658  -0.002082608  -0.003725613   0.049555620  -0.188386561  -0.005825983

   27    9.2  1.5 -0.5  -0.000088011   0.001316621   0.000260052  -0.002081740  -0.003725273   0.049554014  -0.001601155  -0.002528805
                        -0.000074348  -0.001987875   0.000090297  -0.001797200  -0.004568097  -0.001024168   0.004095883  -0.009577217

   28    1.2  1.5 -1.5   0.000015769  -0.030986489  -0.001962903  -0.000014465  -0.000000000   0.000000002  -0.001505208  -0.000026571
                        -0.000031457   0.061812008  -0.002132351  -0.000015714  -0.000000000  -0.000000012   0.000448669   0.000007920

   29    2.2  1.5 -1.5  -0.000007657   0.000028667  -0.000877561  -0.000189017  -0.188718447   0.005294307   0.025739872  -0.211755650
                         0.000003149  -0.000041433  -0.001204097   0.000066071   0.121378449  -0.049768430   0.032603104  -0.186675352

   30    3.2  1.5 -1.5   0.000045481   0.000007925  -0.000231028   0.001083291   0.017248152  -0.041004188  -0.018549785  -0.017732041
                        -0.000042458  -0.000027054  -0.000056650  -0.001013544   0.002111441   0.432780141  -0.283418331  -0.031457283

   31    4.2  1.5 -1.5  -0.000006553  -0.000051884  -0.001192843  -0.000166069   0.117585408   0.029048760  -0.016447065  -0.190466326
                         0.000001612  -0.000035576   0.000897911   0.000044368   0.183895862  -0.018937604  -0.010354366   0.211701537

   32    5.2  1.5 -1.5  -0.000042378  -0.000006479   0.000111407  -0.001010200  -0.028045956   0.435199795  -0.286132989  -0.008361847
                        -0.000046400   0.000019512   0.000015990  -0.001106534  -0.044445496   0.042713156   0.027261266  -0.028778105

   33    6.2  1.5 -1.5   0.000001464  -0.000673719  -0.000041684   0.000026430   0.002253033  -0.005486649  -0.303806122  -0.004130391
                        -0.000000725   0.001343377  -0.000036115  -0.000001257  -0.000160160   0.005461413   0.087145909   0.003377861

   34    7.2  1.5 -1.5   0.000001882  -0.003698749   0.000127597   0.000000941  -0.000000322   0.000000965  -0.046899509  -0.000827953
                         0.000000944  -0.001854190  -0.000117466  -0.000000865  -0.000000063   0.000000482  -0.157339940  -0.002777813

   35    8.2  1.5 -1.5  -0.000003844  -0.000088512   0.000286997  -0.000090626   0.085721680   0.005846425  -0.008776003   0.026000439
                         0.000005513   0.000046349   0.002365101   0.000149191  -0.004609873  -0.008369537   0.000901441   0.080011493

   36    9.2  1.5 -1.5   0.000005487   0.000046358   0.002365097   0.000149192  -0.004609969  -0.008369452   0.000901991   0.080012845
                         0.000003841   0.000088501  -0.000286995   0.000090627  -0.085720264  -0.005846329   0.008775823  -0.026000080

   37    1.2  0.5  0.5  -0.001973323  -0.068962039   0.000559411   0.000759168   0.000000001   0.000000005  -0.002802632  -0.000039333
                        -0.002036634   0.100537023  -0.007674711   0.000379767   0.000000004  -0.000000026   0.000438380  -0.000123044

   38    2.2  0.5  0.5   0.005571514   0.099960757  -0.013937574  -0.000545037   0.000000002  -0.000000015   0.000434564  -0.000077706
                        -0.002674779   0.068583418  -0.001597949  -0.000481916  -0.000000004  -0.000000008   0.002790170  -0.000064074

   39    3.2  0.5  0.5  -0.004172298   0.002989992   0.005438754   0.061784212   0.000000040  -0.000000023   0.002005239  -0.000165162
                        -0.040553114  -0.005332713  -0.075371556   0.060862604   0.000000021  -0.000000004  -0.000190649  -0.002397870

   40    4.2  0.5  0.5   0.034252736  -0.008057029  -0.061180176   0.045589627  -0.000000037  -0.000000027   0.001378047  -0.000096530
                         0.036220024   0.000041220   0.057395225   0.057145914  -0.000000038  -0.000000000  -0.000347787   0.002371035

   41    5.2  0.5  0.5   0.049856071  -0.010143629  -0.085156946  -0.030905006   0.000000018   0.000000009  -0.000791868  -0.000821335
                        -0.028282873  -0.009228394  -0.045987671  -0.033705476  -0.000000042  -0.000000001  -0.000371157  -0.001300886

   42    6.2  0.5  0.5   0.688620623   0.007908236   0.395299788   0.014377630  -0.000187929  -0.000440139   0.000050454  -0.004849972
                         0.075647595   0.014899854  -0.042998769  -0.004646403  -0.004406224  -0.000166089  -0.000064093   0.000150075

   43    7.2  0.5  0.5   0.000239330  -0.001848816  -0.023544271   0.587652283   0.000280384  -0.000424043   0.000302760  -0.000150285
                         0.001198554  -0.000160386   0.043861438  -0.539237555  -0.000135602   0.004403832   0.003336622   0.000037870

   44    8.2  0.5  0.5   0.075154829  -0.014892924   0.044004116   0.003836232   0.004413443   0.000287396   0.000192678  -0.000868704
                        -0.686810629   0.007279497   0.397321027   0.033133051  -0.000207206  -0.000259710   0.000053069   0.001653335

   45    1.2  0.5 -0.5  -0.120781151  -0.000936338   0.000793570   0.005267681   0.000000026   0.000000003   0.000002545  -0.002811078
                         0.016594259  -0.002676780   0.000301342  -0.005609426  -0.000000001   0.000000002  -0.000129153   0.000380480

   46    2.2  0.5 -0.5  -0.016514037  -0.004887992  -0.000723700   0.010615162   0.000000005  -0.000000004   0.000056165  -0.000380577
                        -0.120096315   0.003782029  -0.000074615   0.009172119   0.000000016   0.000000001  -0.000083601  -0.002798045

   47    3.2  0.5 -0.5   0.006107187  -0.034383113   0.086623313   0.051769986   0.000000001   0.000000015  -0.000526690   0.001976145
                        -0.000283111  -0.021903529   0.004236415  -0.055048343   0.000000023   0.000000043  -0.002345135  -0.000390107

   48    4.2  0.5 -0.5  -0.003647562   0.017029115   0.072920714  -0.000792202  -0.000000004  -0.000000032   0.000769812   0.001419974
                         0.007184198   0.046852420  -0.005161306   0.083884434   0.000000027  -0.000000043   0.002244663  -0.000060355

   49    5.2  0.5 -0.5   0.003704013  -0.047626516  -0.045729317   0.091508946   0.000000003  -0.000000044   0.000415504  -0.000652848
                         0.013203664   0.031894573   0.000089800   0.031506892  -0.000000008   0.000000011  -0.001481301   0.000581895

   50    6.2  0.5 -0.5  -0.009775857  -0.240975584   0.006319010  -0.236088819   0.000093444  -0.004319228   0.004690752   0.000066660
                        -0.013746943   0.649501107   0.013724992  -0.319957631   0.000461060  -0.000891286  -0.001241610   0.000047010

   51    7.2  0.5 -0.5  -0.000685158   0.000964206   0.001263087  -0.016324575  -0.004414892  -0.000178763   0.000154841  -0.000662988
                         0.001724646   0.000751078   0.797565515   0.047028361  -0.000286833   0.000255043  -0.000006638  -0.003284076

   52    8.2  0.5 -0.5  -0.013181770  -0.647662213   0.026975307  -0.322125618   0.000302392  -0.000911471   0.001304794   0.000169490
                         0.010051428  -0.240604959  -0.019617557   0.236718074  -0.000242085   0.004323267   0.001336291  -0.000105897


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000000000  -0.001401642   0.000000041  -0.000000003  -0.000000043  -0.000000008  -0.000000000   0.000000047
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.042071963  -0.019455450  -0.033940218   0.435377484  -0.061877219   0.025973728   0.085984502  -0.001492610
                        -0.314332281   0.038515406  -0.032058144  -0.365923308  -0.025328611  -0.081871051  -0.112614987   0.005686672

    3    3.2  1.5  1.5  -0.013782969  -0.062349765   0.151111363   0.060449989   0.205010229   0.067635664   0.009071816  -0.006289335
                        -0.032698072  -0.310992443  -0.066845796  -0.089416260   0.010811356  -0.008349094  -0.025509783  -0.001782620

    4    4.2  1.5  1.5   0.315852029   0.020163652   0.015497055  -0.027711230  -0.075954713   0.349726411  -0.119618090   0.003253202
                        -0.045007341  -0.013447267  -0.026257844  -0.076528219  -0.110428136   0.440197894  -0.097730376   0.008790567

    5    5.2  1.5  1.5  -0.025181401   0.308656548   0.061410966   0.020630004  -0.021193543   0.014324907   0.001247838   0.010314537
                        -0.021322424  -0.062913166   0.155907152  -0.014107875   0.214026521   0.043288518   0.000363381   0.002942211

    6    6.2  1.5  1.5   0.000944605  -0.289635653   0.177180765  -0.004809829  -0.132669670  -0.037817412   0.012741984   0.639126972
                         0.002294516  -0.003623741  -0.038623362   0.003214498  -0.040539098  -0.012700816  -0.000353539   0.009190509

    7    7.2  1.5  1.5  -0.000000266  -0.000000294  -0.010666360   0.000401823  -0.011275683  -0.003962794  -0.000229625   0.002733950
                        -0.000000300   0.146515054  -0.051747795   0.000526711   0.040051429   0.011450117  -0.003983871  -0.188355140

    8    8.2  1.5  1.5   0.058188026   0.009672507   0.012868452   0.154162925   0.038341318  -0.139941697   0.071433749  -0.004734489
                         0.074224040  -0.000176372   0.001626529   0.018111915  -0.017514398   0.060326675  -0.029064745   0.000255073

    9    9.2  1.5  1.5  -0.074222048   0.000176775  -0.004879068  -0.063901395   0.000308283  -0.044356645  -0.027412501   0.000171900
                         0.058184615   0.009672193  -0.001619737  -0.177630598  -0.022171796   0.106878876  -0.070087395   0.004304526

   10    1.2  1.5  0.5   0.001108180  -0.000021720  -0.000000002  -0.000000035   0.000000002  -0.000000018  -0.000000004  -0.000000001
                        -0.001101778  -0.000158814   0.000000002  -0.000000013   0.000000002   0.000000002  -0.000000020   0.000000001

   11    2.2  1.5  0.5  -0.042973730  -0.166925594   0.247690024  -0.084237760   0.202655924   0.128373625   0.044470080   0.067161335
                        -0.025486392  -0.225942655   0.083740906  -0.035009627   0.183967660   0.016382320  -0.011038729   0.084718515

   12    3.2  1.5  0.5   0.236319970  -0.040710737   0.059413253   0.489986529   0.123822380  -0.360540725  -0.240473239   0.014753527
                         0.153193877  -0.031743014   0.024331588  -0.013589986   0.031669806  -0.010207206   0.065149088   0.009613984

   13    4.2  1.5  0.5  -0.011598339  -0.227947743  -0.048119681   0.012038627  -0.235193621  -0.009218687   0.014213382   0.087083864
                        -0.007485246   0.171228839   0.209164852   0.001336568   0.238562912   0.068059688  -0.005312188  -0.056597906

   14    5.2  1.5  0.5  -0.161148054   0.000729563  -0.002307917  -0.005344562  -0.009806160  -0.012077234  -0.155372110   0.000726515
                         0.239891595   0.000101149  -0.016200421  -0.258956900  -0.043926525   0.185536684  -0.578016563   0.019164083

   15    6.2  1.5  0.5  -0.220519349   0.004884708   0.008787698   0.172103139  -0.038705957   0.205781954  -0.005186197   0.000036493
                         0.223863760   0.034035768  -0.023240682   0.029887948  -0.027574928   0.037986604   0.005269378  -0.000050639

   16    7.2  1.5  0.5  -0.038390149  -0.005533954  -0.020671461   0.023713423  -0.024188441   0.035579657  -0.001978936   0.000723170
                        -0.038613565   0.000756705  -0.008904589  -0.145856006   0.033944394  -0.186793956   0.003111499  -0.000230840

   17    8.2  1.5  0.5   0.008343986  -0.001146835  -0.086109316   0.005703276  -0.098598937  -0.022582897  -0.000670083  -0.018207787
                        -0.007427022   0.024536435  -0.025484348   0.010337756   0.015689535   0.014798515  -0.003029400  -0.161083664

   18    9.2  1.5  0.5   0.007426749  -0.192548700  -0.061345660  -0.009513855   0.055481820   0.005699126  -0.003776268  -0.163444549
                         0.008343796   0.018708877  -0.057244265   0.004904668  -0.087344304  -0.018093262   0.000534461   0.015377449

   19    1.2  1.5 -0.5  -0.000119887   0.001532042   0.000000020   0.000000001  -0.000000007   0.000000002  -0.000000001  -0.000000020
                        -0.000106399  -0.000307937   0.000000032  -0.000000003   0.000000017   0.000000002   0.000000001   0.000000001

   20    2.2  1.5 -0.5  -0.094889915  -0.002728235   0.051170714   0.131649441   0.019915498   0.120446366  -0.098597232   0.000199221
                        -0.264405263   0.049888419   0.075519748   0.225901116  -0.127873143   0.245776717  -0.044344756   0.045819230

   21    3.2  1.5 -0.5  -0.003729783   0.004167300  -0.084815321   0.035737383  -0.090327648  -0.003965417  -0.012937250   0.004213056
                        -0.051488560  -0.281599225  -0.482781370   0.053336670   0.349191514   0.127746755  -0.011946665  -0.249106469

   22    4.2  1.5 -0.5   0.269096601  -0.000232240  -0.003720475   0.195290332  -0.067942460   0.294498117   0.033523798  -0.001665919
                        -0.094162148   0.013802045  -0.011527056  -0.089034415  -0.010046263  -0.159684563  -0.098300953   0.015081919

   23    5.2  1.5 -0.5  -0.000321811  -0.288992151   0.254780947  -0.016334419  -0.181591688  -0.039474934  -0.018757464  -0.598467810
                         0.000662518   0.000455480  -0.046625215   0.000983310  -0.039927164  -0.021620127   0.003993428  -0.008939797

   24    6.2  1.5 -0.5   0.025565423  -0.308702354  -0.063749665  -0.021009921   0.020659832  -0.015740261   0.000040148   0.003837289
                         0.022993543   0.058707963  -0.162630745   0.013264094  -0.208236325  -0.044841632  -0.000047793  -0.006319668

   25    7.2  1.5 -0.5   0.003707402   0.010730004   0.138151940  -0.012864077   0.189326851   0.039326862   0.000046523   0.002531459
                        -0.004177609   0.053382375  -0.052443698  -0.018469341   0.017698533  -0.013809435  -0.000757692  -0.002681292

   26    8.2  1.5 -0.5   0.021027139   0.010813515  -0.011270519  -0.042213229  -0.020488293   0.042456261   0.160632212  -0.003101230
                         0.012696897  -0.002801901  -0.003517381  -0.079261023   0.017584456  -0.090362478  -0.021834904   0.000092972

   27    9.2  1.5 -0.5   0.122663580  -0.002801896  -0.002899955  -0.068370274   0.018964277  -0.099317099   0.025157619  -0.000407539
                        -0.149595020  -0.010813182   0.010303371  -0.048638479  -0.000449858   0.029040896   0.162227251  -0.003792065

   28    1.2  1.5 -1.5  -0.000779749   0.000000000  -0.000000001  -0.000000008   0.000000002  -0.000000012   0.000000011  -0.000000000
                         0.001164728  -0.000000000  -0.000000003  -0.000000040  -0.000000008   0.000000041   0.000000045   0.000000000

   29    2.2  1.5 -1.5  -0.042828587  -0.237796880  -0.271316528   0.038205899  -0.085863865   0.007146941   0.005147276   0.088101238
                        -0.005259574  -0.209827260   0.499840736   0.026832300   0.002213781   0.066477440  -0.002841068  -0.110966849

   30    3.2  1.5 -1.5   0.223740790  -0.019503631  -0.075498373   0.035228349  -0.026805144   0.046551644  -0.003269964   0.022507642
                         0.224819594  -0.029643591   0.077132771  -0.161437197   0.062656003  -0.199947551  -0.005660460  -0.015048353

   31    4.2  1.5 -1.5   0.022391594  -0.213111935  -0.080527557   0.022622268   0.325750210   0.084988804   0.009319830   0.124071047
                        -0.009274608   0.237426767  -0.011823456  -0.020441772   0.458224343   0.103635876   0.000999074   0.092011352

   32    5.2  1.5 -1.5   0.223988281  -0.003709688  -0.009690471  -0.165047389   0.037607031  -0.211492586   0.005380890  -0.000658182
                        -0.221486295  -0.032786994   0.023037448  -0.028943169   0.025783908  -0.039082006   0.009278594  -0.001120688

   33    6.2  1.5 -1.5  -0.158116314   0.001381189   0.002186106   0.002356747  -0.001698089   0.002097782   0.165582134  -0.002780747
                         0.242695645   0.002061407  -0.005356155  -0.181326316  -0.039857044   0.138709263   0.617373719  -0.012439879

   34    7.2  1.5 -1.5  -0.121750374  -0.000000101   0.000596513   0.052835575   0.012100248  -0.041607369  -0.181938068   0.003918609
                        -0.081507716  -0.000000388   0.000288197   0.000086695  -0.000626842  -0.000291433   0.048822867  -0.000753965

   35    8.2  1.5 -1.5   0.005527484   0.029307608   0.048619306  -0.004170751   0.096819489   0.027473930  -0.000913296   0.010667081
                        -0.007939484   0.089644402   0.147412389  -0.012281999  -0.117681658  -0.031968640  -0.004652563  -0.076379010

   36    9.2  1.5 -1.5  -0.007939000   0.089640460  -0.186829489   0.002564057   0.114993354   0.021385153   0.004215329   0.074668713
                        -0.005527644  -0.029307850  -0.027032572   0.004455835  -0.012928044   0.005861637  -0.000888532   0.009395286

   37    1.2  0.5  0.5  -0.001714879   0.000107311   0.000065978   0.000471104   0.000277405  -0.000149013   0.000381031  -0.000134014
                         0.001909820  -0.000052314   0.000167884   0.004056544   0.000890207  -0.003038151  -0.000497855  -0.000186961

   38    2.2  0.5  0.5   0.001898705  -0.000360975  -0.000041764  -0.002977930  -0.000477015   0.002147519  -0.003456094   0.000508197
                         0.001716605  -0.000003759  -0.000210130   0.000647073   0.000017216  -0.000341374   0.000869626  -0.000179423

   39    3.2  0.5  0.5  -0.001537865   0.000093131   0.000856077  -0.002202096   0.002051625  -0.002492949   0.000095806  -0.000382545
                         0.001424456  -0.000654728  -0.000716312  -0.000657612   0.001370768  -0.000317696  -0.000039862  -0.002861894

   40    4.2  0.5  0.5  -0.001207790  -0.001655436  -0.000689038  -0.001944082  -0.001006616  -0.003053955   0.000187532   0.002044405
                         0.001290745   0.001072140   0.000235686   0.000002058  -0.001597257  -0.000921227   0.000037032   0.002239077

   41    5.2  0.5  0.5   0.000508223  -0.003308978   0.001102478   0.001000492   0.000212052   0.000863839   0.000380947   0.003350184
                        -0.000540394  -0.000185759  -0.002515575   0.000201524  -0.001844634  -0.000221984  -0.000151042  -0.001749247

   42    6.2  0.5  0.5   0.000074245   0.001096877  -0.000000040   0.000000002   0.000000041   0.000000009   0.000000000  -0.000000044
                         0.000027934   0.000889396  -0.000000004   0.000000001   0.000000010   0.000000005  -0.000000001  -0.000000010

   43    7.2  0.5  0.5  -0.002642933  -0.000406033   0.000000005  -0.000000014   0.000000005  -0.000000002  -0.000000004  -0.000000001
                        -0.002667035   0.000202503   0.000000002   0.000000056  -0.000000003   0.000000036   0.000000008  -0.000000002

   44    8.2  0.5  0.5  -0.000211870  -0.000265308   0.000000003  -0.000000003   0.000000012   0.000000001  -0.000000000  -0.000000001
                         0.000055656  -0.004680296   0.000000041  -0.000000001  -0.000000044  -0.000000009   0.000000002   0.000000049

   45    1.2  0.5 -0.5   0.000103170   0.002541017   0.004068709  -0.000177696  -0.002877242  -0.000778141  -0.000214108   0.000389261
                        -0.000060070  -0.000362566  -0.000350848  -0.000031019  -0.000986939  -0.000513729  -0.000084095  -0.000491447

   46    2.2  0.5 -0.5  -0.000197691   0.000370183   0.000037571   0.000214237  -0.000924376  -0.000149020  -0.000049372   0.000004115
                         0.000302052   0.002532741  -0.003047189  -0.000001165   0.001968223   0.000453467   0.000536674   0.003563821

   47    3.2  0.5 -0.5   0.000595872   0.002039217  -0.001085305   0.000530353   0.000387171  -0.000747041  -0.002868350   0.000015160
                         0.000286843  -0.000485485  -0.002025782  -0.000982190  -0.002483108  -0.002351617   0.000330675  -0.000102654

   48    4.2  0.5 -0.5  -0.001811858   0.001744482  -0.000387326  -0.000092917  -0.000036807   0.001254851   0.002671915  -0.000081873
                         0.000779181  -0.000285586  -0.001905108   0.000722280  -0.003189663   0.001410623   0.001433154  -0.000172732

   49    5.2  0.5 -0.5  -0.001686460  -0.000731784   0.000397811   0.002243816  -0.000453166   0.001830957  -0.000874630   0.000053050
                         0.002853014   0.000121692   0.000939864  -0.001583938   0.000768203   0.000308602   0.003676768  -0.000406349

   50    6.2  0.5 -0.5  -0.000128861  -0.000018091   0.000000002   0.000000012   0.000000002   0.000000002  -0.000000021   0.000000001
                        -0.001406257   0.000077236   0.000000002   0.000000038   0.000000009  -0.000000043  -0.000000040  -0.000000000

   51    7.2  0.5 -0.5  -0.000394155  -0.000745944   0.000000052  -0.000000003   0.000000035   0.000000004  -0.000000002  -0.000000006
                         0.000224748  -0.003679910  -0.000000025  -0.000000005   0.000000008  -0.000000004  -0.000000000   0.000000006

   52    8.2  0.5 -0.5   0.003741611   0.000164115  -0.000000001  -0.000000040  -0.000000009   0.000000045   0.000000047  -0.000000002
                         0.002824165  -0.000145097  -0.000000003   0.000000005  -0.000000001   0.000000001  -0.000000013   0.000000001


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5  -0.000000013   0.000000071   0.005998676  -0.000074628   0.004107989   0.000081246   0.000000025   0.000000049
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.031962973  -0.009279679  -0.003672429   0.070583251   0.006283778  -0.073502115  -0.417749820  -0.165977022
                         0.021117612  -0.008675895  -0.012711403   0.002447477   0.017171850   0.072459136   0.226947379   0.040543065

    3    3.2  1.5  1.5  -0.009133101   0.015468692   0.016017446   0.012859345  -0.019880843  -0.018785118  -0.058199361  -0.050219233
                        -0.013142584   0.073070651   0.068998276   0.004079954  -0.100811370   0.006797348   0.052600796   0.059372761

    4    4.2  1.5  1.5  -0.018350765  -0.005113616  -0.000161990  -0.003105538   0.001959652  -0.072324511   0.212593347   0.047132556
                        -0.032307149  -0.009961783  -0.003585847   0.071647910   0.008026872  -0.075451532   0.381558542   0.154455538

    5    5.2  1.5  1.5   0.015078229  -0.073846817  -0.071399070  -0.000128036   0.101648196   0.002393751   0.000750884   0.028943168
                        -0.002492380   0.017095921   0.014930607   0.000423582  -0.021759468  -0.002118250   0.000304196   0.003668961

    6    6.2  1.5  1.5  -0.000060070   0.001109994  -0.103763678   0.000896751  -0.073247099  -0.001208630  -0.058404984   0.165930947
                        -0.000362563   0.000801883   0.000816274   0.000139589  -0.001175806  -0.000589644   0.045525257  -0.092006198

    7    7.2  1.5  1.5   0.000000446   0.000000171  -0.000000155  -0.000000636   0.000000026   0.000000145   0.000001382  -0.000002714
                        -0.000000633  -0.000005360  -0.612660690   0.007622469  -0.419569669  -0.008299196  -0.000000970  -0.000010512

    8    8.2  1.5  1.5  -0.245466406  -0.044356594  -0.001567056   0.214497466   0.008115106  -0.097573397   0.000006036   0.000001489
                         0.415772596   0.086240633  -0.001345991  -0.112655216  -0.006807428   0.339870728  -0.000007945  -0.000001360

    9    9.2  1.5  1.5  -0.415762703  -0.086238562   0.001343782   0.112651135   0.006805545  -0.339853272   0.000007881   0.000001649
                        -0.245461223  -0.044355686  -0.001567054   0.214488667   0.008114735  -0.097569529   0.000002588   0.000000229

   10    1.2  1.5  0.5  -0.000000033  -0.000000006  -0.000019512  -0.002324129  -0.000130772   0.005918000  -0.000000134  -0.000000025
                        -0.000000016   0.000000000   0.000029072  -0.003388114  -0.000123122   0.000966809  -0.000000057  -0.000000012

   11    2.2  1.5  0.5  -0.005296430   0.025862680  -0.061495804  -0.012015304  -0.042020196   0.000633905   0.001465873  -0.237730170
                         0.011844255  -0.059285847  -0.082909654   0.013735878  -0.057184626   0.011411861   0.003573235  -0.082734561

   12    3.2  1.5  0.5  -0.002498553   0.007312656  -0.014048050   0.071762137  -0.010132263  -0.004831613   0.496067398   0.132574801
                         0.001338042  -0.009191908  -0.012441813  -0.073805335  -0.006460405  -0.070902021   0.072260703   0.057825288

   13    4.2  1.5  0.5  -0.011816206   0.059917217  -0.083784313  -0.002221023  -0.057324104  -0.000954666   0.002779036  -0.090282344
                        -0.006087959   0.026618586   0.062956140   0.003190267   0.043026579   0.004306664  -0.063892140   0.132262596

   14    5.2  1.5  0.5   0.000823205  -0.000003714   0.001190596   0.075489206  -0.001273358   0.072855371   0.036150017   0.040082755
                         0.000352995   0.000035088   0.000808134   0.071519093  -0.000024810  -0.003200941  -0.300887558  -0.103471432

   15    6.2  1.5  0.5   0.069356727   0.014247744  -0.000168944  -0.040448788  -0.002150927   0.102495718  -0.052814733  -0.017149225
                         0.030529762   0.005731359   0.001112221  -0.061074549  -0.001705990   0.015927176  -0.025467844  -0.013147870

   16    7.2  1.5  0.5  -0.225136033  -0.039177498   0.000989724  -0.115338534  -0.004191649   0.032915633  -0.000002696  -0.000000637
                         0.510041290   0.104904236   0.000661954   0.079118154   0.004452723  -0.201482033   0.000004177   0.000000590

   17    8.2  1.5  0.5  -0.002825591   0.030254142   0.066947814   0.001769298  -0.008516207  -0.007165141   0.000000159   0.000005679
                        -0.055918931   0.277118813   0.629868468  -0.003694063  -0.166060856  -0.004722027   0.000003926  -0.000006655

   18    9.2  1.5  0.5   0.055918192  -0.277106377   0.072686282  -0.005045805   0.647164553   0.014236174   0.000001967   0.000003670
                        -0.002824479   0.030252785  -0.016080729   0.002802578  -0.065373751  -0.008289543  -0.000003148   0.000010914

   19    1.2  1.5 -0.5  -0.000000005   0.000000035   0.004019504   0.000005915  -0.005866899  -0.000124932   0.000000019  -0.000000096
                        -0.000000001  -0.000000009  -0.000851167  -0.000034509   0.001239737   0.000129044   0.000000020  -0.000000110

   20    2.2  1.5 -0.5   0.014244337   0.002972978  -0.000769775  -0.101708091  -0.000104932  -0.039327874   0.152713095   0.003852130
                         0.063093492   0.012629329   0.018233194   0.017641112   0.011428972   0.059068576   0.200098356   0.000279069

   21    3.2  1.5 -0.5   0.005452298   0.002202126  -0.001079609  -0.018753380   0.001544136  -0.009822326  -0.096267938   0.223284539
                         0.010403776   0.001784311  -0.102936224  -0.000676142  -0.071049677   0.006922536  -0.107945940   0.448830132

   22    4.2  1.5 -0.5   0.063855828   0.012750729  -0.000591329  -0.017267587   0.001153012  -0.059254493  -0.097532450  -0.059842864
                        -0.014867929  -0.003755645   0.003842015  -0.103368840   0.004257852  -0.040326721   0.127010697   0.022555714

   23    5.2  1.5 -0.5   0.000002955  -0.000874925  -0.103988147   0.001419522  -0.072925444  -0.001270844   0.085822809  -0.274629661
                        -0.000035160   0.000191779  -0.000257533   0.000235705   0.000175215   0.000083731  -0.070337827   0.128135460

   24    6.2  1.5 -0.5   0.015071723  -0.073862698   0.071408633   0.000644584  -0.101648507  -0.002069645   0.017838254  -0.040661365
                        -0.002947853   0.016932921  -0.016340501  -0.000922003   0.020654977   0.001803735   0.012196685  -0.042245240

   25    7.2  1.5 -0.5  -0.018736898   0.125135306   0.028975580   0.001173244  -0.042207635  -0.004393287  -0.000000362   0.000003129
                        -0.110402462   0.543295045   0.136832289   0.000203061  -0.199742245  -0.004253903   0.000000790  -0.000003864

   26    8.2  1.5 -0.5   0.081861367   0.013297835   0.001265878   0.482815122   0.006938860  -0.000819551   0.000004554   0.000003780
                        -0.266474888  -0.054388220  -0.003895391  -0.410007140  -0.005048664   0.166277063  -0.000007470  -0.000001073

   27    9.2  1.5 -0.5  -0.266462931  -0.054387703   0.001721804   0.041553230  -0.014604663   0.649497092  -0.000011514  -0.000002378
                        -0.081857694  -0.013296604   0.005509082   0.061767422  -0.007621615   0.035344204  -0.000000085   0.000002850

   28    1.2  1.5 -1.5  -0.000000070  -0.000000013  -0.000054048  -0.004344437   0.000081158  -0.004103585   0.000000015  -0.000000008
                        -0.000000013  -0.000000002  -0.000051460  -0.004136420  -0.000003761   0.000190173   0.000000047  -0.000000023

   29    2.2  1.5 -1.5   0.010746511  -0.027418078   0.052806374   0.011424913  -0.076777693  -0.005482098  -0.013211659  -0.085428771
                        -0.006774666  -0.026755079   0.046898532  -0.006673671  -0.068978787   0.017444337  -0.170345426   0.467677185

   30    3.2  1.5 -1.5  -0.028942645  -0.011443085   0.012126514  -0.059178507  -0.019079650   0.015192626   0.040761566  -0.031839576
                         0.068854366   0.011189140   0.005912397   0.038925893  -0.005920434  -0.101623641  -0.066223794   0.071695543

   31    4.2  1.5 -1.5   0.006896851  -0.024102427   0.047156084   0.002589959  -0.068754062  -0.001585960   0.161451871  -0.428814788
                        -0.008821544   0.028276764  -0.054031205  -0.002485287   0.078718788   0.008108985  -0.003359215  -0.083070636

   32    5.2  1.5 -1.5   0.069310457   0.014339843   0.000199356   0.041414062   0.002489245  -0.102546537   0.012507739  -0.000523092
                         0.030686862   0.005285247  -0.000395060   0.060046863   0.002005164  -0.017030497   0.026357631  -0.000618659

   33    6.2  1.5 -1.5  -0.001241061  -0.000127223   0.000745711   0.074586189  -0.001180038   0.073114137  -0.035701984  -0.025052441
                         0.000578681   0.000344782   0.000517264   0.072141997   0.000644964  -0.004565404   0.186342663   0.069685482

   34    7.2  1.5 -1.5   0.000000841   0.000000319   0.005255655   0.422463714   0.000384343  -0.019423340  -0.000010834   0.000000491
                        -0.000005297   0.000000705  -0.005520880  -0.443708835   0.008290292  -0.419119842   0.000000698  -0.000001616

   35    8.2  1.5 -1.5   0.027335553  -0.162841788   0.077664058   0.002063049  -0.113202565  -0.008421545  -0.000000828   0.000005668
                         0.093046880  -0.454536204   0.229496523   0.000105762  -0.334989342  -0.006424453   0.000001839  -0.000008212

   36    9.2  1.5 -1.5   0.093044675  -0.454525511   0.229487501   0.000107360  -0.334972083  -0.006422590   0.000000732  -0.000004915
                        -0.027335050   0.162838559  -0.077660499  -0.002061524   0.113197893   0.008421087   0.000001495  -0.000006681

   37    1.2  0.5  0.5   0.000000136   0.000000028   0.000018883   0.001291038   0.000042181   0.001427337  -0.000000005   0.000000003
                         0.000000069   0.000000009   0.000102550   0.001623290  -0.000049621   0.000130027  -0.000000015   0.000000008

   38    2.2  0.5  0.5  -0.000000031  -0.000000007   0.000046582   0.001624797  -0.000247119   0.000128059  -0.000000008   0.000000010
                         0.000000035   0.000000006   0.000056791  -0.001289162   0.000017254  -0.001409459   0.000000005  -0.000000003

   39    3.2  0.5  0.5  -0.000000050  -0.000000013   0.000156372  -0.000630800  -0.000019964   0.001370094  -0.000000044   0.000000027
                        -0.000000018  -0.000000032   0.001621791  -0.000850673  -0.000812628   0.000239460  -0.000000018  -0.000000008

   40    4.2  0.5  0.5  -0.000000034  -0.000000003  -0.000057582  -0.000515345  -0.001132840   0.001357563  -0.000000026  -0.000000051
                        -0.000000022   0.000000023  -0.001372700  -0.000667213   0.000750171   0.000290124  -0.000000025  -0.000000020

   41    5.2  0.5  0.5   0.000000024   0.000000008   0.000252734   0.000132260  -0.002220446  -0.000696093   0.000000012  -0.000000015
                         0.000000008  -0.000000012   0.000773977   0.000503974  -0.000139758   0.000055366   0.000000018  -0.000000032

   42    6.2  0.5  0.5   0.000277866  -0.001271736  -0.003183345  -0.000019159  -0.000309728   0.000006862  -0.000000016   0.000000007
                        -0.000113040   0.000437423   0.000033430   0.000043527  -0.000592069  -0.000118065  -0.000000002   0.000000019

   43    7.2  0.5  0.5   0.000533862   0.000151615   0.000133181  -0.001515757  -0.000054753   0.000431453  -0.000000026  -0.000000005
                        -0.001241940  -0.000219301  -0.000047017   0.001040041  -0.000031664  -0.002647335   0.000000053   0.000000007

   44    8.2  0.5  0.5   0.000094802  -0.000440148  -0.000538046  -0.000062349   0.000243334   0.000044768   0.000000002  -0.000000024
                         0.000213847  -0.001284554   0.001437610   0.000010332   0.002859080  -0.000044774   0.000000006   0.000000042

   45    1.2  0.5 -0.5  -0.000000029   0.000000147   0.002054360  -0.000084390   0.001419787  -0.000044433   0.000000008   0.000000016
                         0.000000004  -0.000000042  -0.000285398   0.000061249  -0.000195964  -0.000047615  -0.000000000   0.000000000

   46    2.2  0.5 -0.5   0.000000006  -0.000000024   0.000287783  -0.000072897   0.000193171   0.000247653   0.000000000  -0.000000002
                         0.000000007  -0.000000040   0.002054041   0.000009009   0.001402020   0.000005796   0.000000010   0.000000009

   47    3.2  0.5 -0.5   0.000000019  -0.000000052  -0.001043432  -0.001231564   0.001357540  -0.000017676   0.000000000   0.000000030
                        -0.000000029   0.000000008   0.000181113   0.001066727  -0.000302629  -0.000812681   0.000000028   0.000000036

   48    4.2  0.5 -0.5  -0.000000002  -0.000000037  -0.000833310   0.000988256   0.001342677   0.001166353  -0.000000035   0.000000032
                         0.000000023   0.000000015   0.000127859  -0.000954448  -0.000352660   0.000696923  -0.000000043   0.000000017

   49    5.2  0.5 -0.5  -0.000000006   0.000000025   0.000443305  -0.000716738  -0.000697910   0.002211596  -0.000000035  -0.000000021
                        -0.000000014  -0.000000003  -0.000273794   0.000386266  -0.000023082  -0.000242400  -0.000000004  -0.000000006

   50    6.2  0.5 -0.5   0.001166703   0.000251630   0.000016139   0.002282430   0.000012320   0.000281987   0.000000020   0.000000007
                         0.000668921   0.000163309  -0.000044735   0.002219304   0.000117621  -0.000605773   0.000000001   0.000000015

   51    7.2  0.5 -0.5  -0.000107639   0.000290618  -0.000380595  -0.000064033   0.000553545   0.000053229   0.000000005  -0.000000042
                        -0.000243913   0.001320214  -0.001798431  -0.000125887   0.002624523  -0.000034164  -0.000000007   0.000000042

   52    8.2  0.5 -0.5   0.000674010   0.000133350  -0.000038030  -0.000601642   0.000046793  -0.000110717   0.000000033  -0.000000007
                        -0.001178779  -0.000192187  -0.000050476   0.001412177   0.000042654   0.002867280  -0.000000036   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.000000070   0.000000012   0.000000015   0.000000558  -0.000000018   0.000000106   0.000000000   0.000000026
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.114913642  -0.032572813   0.192137781   0.015596795   0.179013771  -0.000165091  -0.016929836   0.002381554
                         0.022123907   0.013061253   0.029906016  -0.002099822   0.081383090  -0.033261417  -0.095943791   0.013038708

    3    3.2  1.5  1.5   0.639460869   0.195936799   0.015809033  -0.112841173   0.037675869   0.012187164   0.001781437  -0.008053702
                        -0.140349427  -0.101190376   0.011959874   0.000537563   0.022988885   0.063421170  -0.022632586  -0.072791890

    4    4.2  1.5  1.5  -0.038938772  -0.019537189  -0.074622363   0.010360032  -0.001893414   0.023356077   0.090619628   0.000267279
                         0.045221255  -0.120194621  -0.195463337   0.003169623   0.251519237  -0.017519111  -0.104944953   0.003688837

    5    5.2  1.5  1.5  -0.136226210  -0.090300305   0.013199578  -0.055115731   0.000475141   0.280610288   0.000326149   0.072958938
                        -0.589152896  -0.180816275   0.016389910   0.138650663  -0.029270506  -0.067890432   0.000519607  -0.010123282

    6    6.2  1.5  1.5  -0.054245991  -0.003154726  -0.025221179  -0.472826411  -0.004496719  -0.121108300  -0.003499484  -0.114739356
                         0.016488552  -0.002066743  -0.006316523   0.000789349   0.008074594  -0.045905812  -0.001940841  -0.015834289

    7    7.2  1.5  1.5   0.000000209  -0.000000118  -0.000000157  -0.000000043   0.000000189  -0.000000388   0.005953412   0.039357056
                        -0.000006637  -0.000001278  -0.000001067  -0.000052048   0.000002098  -0.000009256  -0.010022612  -0.300323828

    8    8.2  1.5  1.5  -0.000007718   0.000024080  -0.000007781   0.000003731  -0.000019939  -0.000000161  -0.336700566  -0.001802356
                         0.000001968  -0.000013591  -0.000002868   0.000000191   0.000005729   0.000001975  -0.164921656  -0.001229824

    9    9.2  1.5  1.5  -0.000002129   0.000012662  -0.000000660  -0.000000019  -0.000007371  -0.000001991  -0.008790977  -0.001171626
                        -0.000007819   0.000025058  -0.000001293   0.000003559  -0.000020143   0.000000061   0.031763491   0.004646213

   10    1.2  1.5  0.5   0.000000048  -0.000000259   0.000000005  -0.000000006   0.000000125   0.000000030   0.000000004   0.000000000
                         0.000000124  -0.000000374   0.000000079  -0.000000057   0.000000281   0.000000000  -0.000000007  -0.000000002

   11    2.2  1.5  0.5   0.137815773   0.036588311  -0.000491380   0.252709513  -0.019019224   0.168737774  -0.019825450   0.042621080
                         0.093022585   0.016733560   0.019323517   0.460430041  -0.033590502  -0.230567353  -0.007686441  -0.109986364

   12    3.2  1.5  0.5   0.032232583  -0.020154351   0.050051456   0.049075788   0.010507414   0.051260094   0.117581984   0.009277237
                         0.030667031   0.004724331   0.053599701   0.061580035   0.030562026  -0.037512976   0.034496148  -0.014955041

   13    4.2  1.5  0.5  -0.007354069  -0.002539664   0.014398162   0.287447059   0.026101275   0.478838105  -0.006073182   0.077625248
                         0.043710009   0.029390552  -0.011898861  -0.312669045  -0.038413199   0.109404012  -0.000643393   0.062241900

   14    5.2  1.5  0.5   0.015751492  -0.055753428  -0.223958776   0.004167645  -0.064112997  -0.007394834   0.020549573  -0.000730821
                        -0.015021619   0.065546225   0.338564642  -0.012841873  -0.067278328   0.008475958   0.031757103  -0.003644227

   15    6.2  1.5  0.5   0.027364837  -0.116565657  -0.127733477   0.007395996   0.289939155   0.042880458   0.027520855  -0.000009993
                         0.049565590  -0.143281489   0.089697519  -0.006927053   0.599896585  -0.052552963  -0.070108121   0.001452425

   16    7.2  1.5  0.5   0.000006308  -0.000017961   0.000002468  -0.000002096   0.000010902   0.000000115   0.556260317  -0.004879394
                        -0.000002312   0.000012566   0.000000448   0.000000169  -0.000005118  -0.000001106   0.206571222   0.000678367

   17    8.2  1.5  0.5  -0.000028267  -0.000007982   0.000003199   0.000009005   0.000001264   0.000003890   0.005236672  -0.001037018
                         0.000007507   0.000003506  -0.000001507   0.000034652  -0.000002489   0.000024758  -0.011410728  -0.558944052

   18    9.2  1.5  0.5   0.000001566  -0.000002087   0.000003639   0.000039907   0.000000411  -0.000010130  -0.007039341   0.034369158
                        -0.000028380  -0.000007608   0.000002952  -0.000000303   0.000001432   0.000003119  -0.002966141  -0.007684972

   19    1.2  1.5 -0.5   0.000000097   0.000000058  -0.000000043  -0.000000062  -0.000000020   0.000000294   0.000000002  -0.000000008
                         0.000000444   0.000000120  -0.000000038  -0.000000049  -0.000000022  -0.000000090   0.000000000   0.000000002

   20    2.2  1.5 -0.5   0.012675230  -0.025786559   0.230420875  -0.016070010   0.063541234  -0.037835187   0.116692957  -0.003106567
                        -0.038184485   0.164260270   0.471978968  -0.010742185  -0.278561039   0.007651885  -0.017213675  -0.021035187

   21    3.2  1.5 -0.5  -0.017188379   0.000492240   0.022007352  -0.014925043  -0.005265581   0.029969011   0.016637819   0.007608771
                         0.011535890   0.044487793   0.075605624  -0.071800552  -0.063301614  -0.012095518  -0.005736144   0.122301324

   22    4.2  1.5 -0.5  -0.023245878   0.037008398  -0.421206720   0.018024190  -0.396473228  -0.011904185  -0.043512015   0.000717109
                        -0.018162701   0.024393174   0.054521936  -0.004900873  -0.289938179   0.044890319  -0.089478700  -0.006064920

   23    5.2  1.5 -0.5  -0.085965282  -0.021727270  -0.012894789  -0.405749631  -0.001554708  -0.092833942   0.003392002   0.026419616
                        -0.003837357   0.001297837  -0.004000925  -0.012279431   0.011140391  -0.004325378   0.001519478   0.027070324

   24    6.2  1.5 -0.5   0.025482519   0.017643279  -0.009924336  -0.146942002   0.011585720   0.643110068  -0.001418596  -0.074461244
                         0.182942008   0.053798668   0.002047528   0.052626357  -0.066830522  -0.174212709  -0.000311806   0.011316764

   25    7.2  1.5 -0.5  -0.000021435  -0.000005990   0.000001346   0.000001058   0.000000760   0.000003281  -0.001741779   0.078295281
                         0.000004588   0.000003042  -0.000001615  -0.000002275  -0.000000812   0.000011588   0.004608131   0.588189646

   26    8.2  1.5 -0.5  -0.000008005   0.000024752   0.000023116   0.000003076  -0.000021248  -0.000001051   0.544844577  -0.012286920
                         0.000003455  -0.000015579   0.000027340  -0.000001744   0.000013289   0.000002586   0.124755424   0.002580516

   27    9.2  1.5 -0.5   0.000004148  -0.000021842  -0.000023262  -0.000000313   0.000004284   0.000001351   0.015103231  -0.001334104
                         0.000006711  -0.000018187   0.000032428  -0.000004676   0.000009696  -0.000000628  -0.031814937  -0.007521335

   28    1.2  1.5 -1.5  -0.000000008   0.000000048   0.000000322  -0.000000008   0.000000069   0.000000012  -0.000000006   0.000000000
                         0.000000009  -0.000000051  -0.000000456   0.000000012   0.000000080   0.000000014   0.000000025  -0.000000000

   29    2.2  1.5 -1.5   0.031751437  -0.094479407   0.010709950  -0.086371241  -0.025229062  -0.178796154   0.012187909   0.089814917
                        -0.014947585   0.069052551  -0.011531092   0.174216261   0.021675874  -0.081860084   0.005209085   0.037750644

   30    3.2  1.5 -1.5  -0.207557002   0.538368418  -0.065513215   0.000653935   0.055887011  -0.042056403  -0.069202597   0.022465361
                         0.074503778  -0.372515256   0.091877266   0.019812531  -0.032363776  -0.013387270  -0.023969187   0.003273377

   31    4.2  1.5 -1.5  -0.074680731  -0.059631343   0.003385026  -0.116652937   0.002076895  -0.188720198   0.003538128   0.122403003
                        -0.096183361  -0.002300665  -0.010291665  -0.173685069   0.029122364   0.166283487   0.001077315  -0.065137279

   32    5.2  1.5 -1.5  -0.070853292   0.338495483  -0.145057263   0.005777957   0.132646052   0.021795279  -0.026024394  -0.000434507
                        -0.189284129   0.501078365  -0.034930426   0.020235448   0.256429855  -0.019543647   0.068907317  -0.000433092

   33    6.2  1.5 -1.5   0.000636121  -0.049024976  -0.273317835   0.009384354  -0.114048722  -0.003151090   0.009960677   0.001117933
                        -0.003717401   0.028478933   0.385827424  -0.024247478  -0.061379581   0.008688508  -0.115397702   0.003842327

   34    7.2  1.5 -1.5  -0.000000855   0.000005001   0.000042497  -0.000000781  -0.000007245  -0.000001708  -0.301584681   0.011091927
                        -0.000000957   0.000004368   0.000030050  -0.000000743   0.000005773   0.000001232  -0.028108000  -0.003586784

   35    8.2  1.5 -1.5  -0.000026353  -0.000006698   0.000001996   0.000002144   0.000001386   0.000008742  -0.000800285   0.086287368
                         0.000008369   0.000004309  -0.000003158  -0.000008011  -0.000001416   0.000018814  -0.002029901   0.364857388

   36    9.2  1.5 -1.5   0.000009718   0.000004274  -0.000002919  -0.000000676  -0.000001259   0.000020044   0.004790304  -0.032921524
                         0.000026340   0.000006886  -0.000002037  -0.000001285  -0.000001544  -0.000007636  -0.000113932   0.001540740

   37    1.2  0.5  0.5  -0.000000007  -0.000000024  -0.000000145   0.000000009  -0.000000018  -0.000000005  -0.000904519   0.000125751
                        -0.000000007   0.000000021   0.000000159  -0.000000000  -0.000000034  -0.000000001   0.002569585  -0.000030541

   38    2.2  0.5  0.5  -0.000000009   0.000000019   0.000000141  -0.000000019  -0.000000035   0.000000006  -0.000307178  -0.000547942
                         0.000000007   0.000000019   0.000000136  -0.000000001   0.000000020   0.000000005  -0.000362324  -0.000009745

   39    3.2  0.5  0.5  -0.000000080  -0.000000096   0.000000017   0.000000023   0.000000044   0.000000020  -0.001088548   0.000083139
                         0.000000049  -0.000000092   0.000000007   0.000000044   0.000000071   0.000000083   0.002954338  -0.000242433

   40    4.2  0.5  0.5   0.000000094  -0.000000038  -0.000000019  -0.000000074   0.000000029   0.000000033  -0.001068065  -0.002232183
                         0.000000082  -0.000000083   0.000000020  -0.000000066   0.000000071  -0.000000080   0.002769332   0.000165370

   41    5.2  0.5  0.5  -0.000000050   0.000000027  -0.000000024  -0.000000101  -0.000000010   0.000000080   0.000413006  -0.004370489
                         0.000000124   0.000000086  -0.000000033   0.000000029  -0.000000049   0.000000022  -0.001281362  -0.000083221

   42    6.2  0.5  0.5  -0.000000054  -0.000000024   0.000000006  -0.000000194   0.000000016  -0.000000099  -0.000000001  -0.000000002
                        -0.000000091  -0.000000019   0.000000007  -0.000000017   0.000000003   0.000000018   0.000000000  -0.000000003

   43    7.2  0.5  0.5   0.000000051  -0.000000158   0.000000037  -0.000000018   0.000000116   0.000000005  -0.000000009  -0.000000001
                        -0.000000017   0.000000112  -0.000000002  -0.000000005  -0.000000051  -0.000000013  -0.000000003  -0.000000000

   44    8.2  0.5  0.5   0.000000097   0.000000019  -0.000000006  -0.000000031   0.000000002  -0.000000030  -0.000000000   0.000000001
                        -0.000000006  -0.000000007   0.000000016   0.000000225  -0.000000004  -0.000000014  -0.000000001   0.000000014

   45    1.2  0.5 -0.5   0.000000032   0.000000000   0.000000005   0.000000213  -0.000000005   0.000000037  -0.000057623  -0.002706073
                        -0.000000003   0.000000010  -0.000000007  -0.000000027  -0.000000003  -0.000000009   0.000115869   0.000313196

   46    2.2  0.5 -0.5   0.000000001  -0.000000012  -0.000000010   0.000000030   0.000000007   0.000000008   0.000111805   0.000285327
                         0.000000027   0.000000002   0.000000016   0.000000194   0.000000002   0.000000039  -0.000536503   0.000379770

   47    3.2  0.5 -0.5  -0.000000002  -0.000000090  -0.000000023  -0.000000004   0.000000076  -0.000000083  -0.000254824  -0.003122021
                        -0.000000133   0.000000026  -0.000000044   0.000000018  -0.000000039   0.000000014   0.000027404   0.000407477

   48    4.2  0.5 -0.5  -0.000000035   0.000000004   0.000000011   0.000000027  -0.000000038  -0.000000072   0.000655448  -0.002937070
                        -0.000000084  -0.000000125   0.000000099  -0.000000004   0.000000078   0.000000025  -0.002140182   0.000428461

   49    5.2  0.5 -0.5   0.000000045  -0.000000124  -0.000000082  -0.000000013   0.000000069   0.000000044   0.000886422   0.001341001
                         0.000000079  -0.000000048   0.000000066  -0.000000039   0.000000046  -0.000000024  -0.004280463  -0.000119078

   50    6.2  0.5 -0.5   0.000000002   0.000000029  -0.000000098   0.000000002  -0.000000052  -0.000000012  -0.000000002  -0.000000000
                        -0.000000031   0.000000101   0.000000168   0.000000009  -0.000000086  -0.000000010  -0.000000003   0.000000001

   51    7.2  0.5 -0.5   0.000000190   0.000000047  -0.000000006  -0.000000023  -0.000000006  -0.000000037  -0.000000000   0.000000001
                        -0.000000040  -0.000000025   0.000000017   0.000000030   0.000000012  -0.000000122  -0.000000001   0.000000010

   52    8.2  0.5 -0.5  -0.000000019   0.000000071  -0.000000202   0.000000016  -0.000000030   0.000000001   0.000000013   0.000000001
                         0.000000009  -0.000000067  -0.000000104   0.000000004  -0.000000014  -0.000000004   0.000000004   0.000000000


   Nr   State  S   Sz       49            50            51            52

    1    1.2  1.5  1.5   0.000000057  -0.000000012   0.000000062   0.000000003
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.011545740  -0.023793329   0.008361473   0.045321842
                         0.017315551   0.067398876   0.011109683  -0.149834526

    3    3.2  1.5  1.5  -0.003941013  -0.000635734  -0.017584690   0.005788984
                        -0.015627774   0.018409349  -0.047179491  -0.024655424

    4    4.2  1.5  1.5   0.021420128   0.091007063  -0.000786751  -0.046555413
                         0.019722602   0.077111751  -0.003869359   0.065554265

    5    5.2  1.5  1.5   0.021121894  -0.003362888   0.049294279   0.001651944
                        -0.000784163  -0.001619732  -0.017087177   0.000093088

    6    6.2  1.5  1.5   0.158356826  -0.034970593   0.108663357   0.003158903
                        -0.002281733   0.004107397   0.006766354  -0.000210787

    7    7.2  1.5  1.5   0.005226130  -0.011288561  -0.019204743   0.003186550
                         0.418398793  -0.093264203   0.289065064   0.009349684

    8    8.2  1.5  1.5   0.105203693   0.410884932  -0.019217872  -0.155767299
                        -0.041575630  -0.236383841  -0.011129203   0.303170448

    9    9.2  1.5  1.5  -0.027558515  -0.166743691  -0.018061409   0.527028155
                        -0.103089372  -0.356177720   0.020374033   0.221614095

   10    1.2  1.5  0.5   0.000000021   0.000000105   0.000000001  -0.000000008
                         0.000000031   0.000000121  -0.000000004  -0.000000024

   11    2.2  1.5  0.5   0.033576302   0.000762818   0.029952662  -0.004927542
                         0.000386670   0.006915274  -0.055432632   0.028089041

   12    3.2  1.5  0.5  -0.005272495  -0.050347563   0.013728845   0.041319517
                        -0.013697847  -0.051992260  -0.002361734  -0.167024036

   13    4.2  1.5  0.5   0.044495196  -0.003504023   0.085339594  -0.000236111
                         0.000625275   0.002987683   0.011548627   0.009048979

   14    5.2  1.5  0.5   0.024598222   0.130757947   0.001535986  -0.026845649
                         0.041170948   0.155211106  -0.004895759  -0.077101609

   15    6.2  1.5  0.5   0.002550120   0.014386156  -0.001425208   0.051193881
                        -0.000546948   0.007611458   0.000920892   0.007068145

   16    7.2  1.5  0.5  -0.000795508  -0.079972078  -0.003396620  -0.067745124
                         0.024545549   0.130926093  -0.011686394   0.398408804

   17    8.2  1.5  0.5   0.053315029  -0.026101233  -0.032204157   0.005055670
                         0.282854955  -0.068915233   0.053588687   0.001790034

   18    9.2  1.5  0.5   0.435779446  -0.089216784   0.447548782   0.013648408
                        -0.040729495   0.012273258  -0.057933766  -0.002325140

   19    1.2  1.5 -0.5  -0.000000151   0.000000033   0.000000004   0.000000002
                         0.000000054  -0.000000016  -0.000000025   0.000000004

   20    2.2  1.5 -0.5  -0.004057756   0.029446398   0.009719811   0.039104076
                         0.005651329   0.016137757   0.026810449   0.049404554

   21    3.2  1.5 -0.5   0.069381022  -0.011315223  -0.069633690   0.013930406
                        -0.020599661   0.009348581  -0.157338744  -0.000052689

   22    4.2  1.5 -0.5   0.001587277   0.039077639   0.001800394   0.082047930
                         0.004322612   0.021287357   0.008871209  -0.026160166

   23    5.2  1.5 -0.5  -0.190092288   0.041634734   0.013080757   0.002361010
                         0.071084810  -0.023804798  -0.080586853   0.004555584

   24    6.2  1.5 -0.5  -0.016270029   0.001953677  -0.049194954  -0.001563209
                        -0.000426533   0.001727835   0.015831255  -0.000660028

   25    7.2  1.5 -0.5   0.005442862   0.011350453   0.135750074  -0.001320427
                         0.153321722  -0.021778064   0.380645365   0.012098154

   26    8.2  1.5 -0.5   0.056557502   0.185242727  -0.004669059  -0.041002029
                        -0.047242276  -0.220305585   0.002638922  -0.047198394

   27    9.2  1.5 -0.5   0.071716899   0.359731436  -0.013844845   0.450817647
                         0.054469752   0.249310876   0.000074792  -0.020486149

   28    1.2  1.5 -1.5  -0.000000011  -0.000000050   0.000000003  -0.000000061
                        -0.000000006  -0.000000028  -0.000000000   0.000000011

   29    2.2  1.5 -1.5   0.012337909   0.001564251   0.070597174  -0.006310112
                        -0.070402464   0.020752964   0.139715760   0.012390390

   30    3.2  1.5 -1.5   0.008478858   0.011101983   0.009973305   0.009144265
                        -0.016352897  -0.011683530   0.023279507  -0.049512707

   31    4.2  1.5 -1.5   0.117134861  -0.028341575  -0.057209426   0.000104435
                        -0.022537351   0.006675182  -0.056496457  -0.003947152

   32    5.2  1.5 -1.5  -0.003724993  -0.018019778   0.001610831  -0.051509309
                        -0.000238697  -0.011047032  -0.000377901  -0.008287862

   33    6.2  1.5 -1.5  -0.028456235  -0.136864479   0.003147648  -0.105847526
                        -0.020737786  -0.079688176  -0.000339722   0.025491370

   34    7.2  1.5 -1.5  -0.055597659  -0.209846998   0.001518400   0.068998598
                         0.075726769   0.362007046  -0.009760387   0.281365645

   35    8.2  1.5 -1.5   0.242039092  -0.071269456  -0.205939669   0.016998932
                         0.407579228  -0.087846540  -0.271596436  -0.014290628

   36    9.2  1.5 -1.5  -0.320055503   0.074595322   0.480659601   0.021318308
                         0.228539937  -0.076304839  -0.309576856   0.016936511

   37    1.2  0.5  0.5  -0.000110224  -0.000323059  -0.000176760   0.004289920
                        -0.000666784  -0.001894983  -0.000009918   0.001258583

   38    2.2  0.5  0.5   0.001266562   0.003811860  -0.000134437  -0.001478814
                        -0.000704390  -0.002805604  -0.000169745   0.002085498

   39    3.2  0.5  0.5  -0.000476518  -0.000677432  -0.000307749  -0.002244128
                        -0.002711523   0.000244622  -0.002850021  -0.000528600

   40    4.2  0.5  0.5   0.001221323  -0.001101864   0.000587809  -0.001757191
                         0.002130685  -0.000758776   0.002539698  -0.000292201

   41    5.2  0.5  0.5   0.002040598  -0.000565164   0.000229898   0.001170253
                        -0.001673495   0.000909336  -0.001070799  -0.000101201

   42    6.2  0.5  0.5   0.000000004   0.000000002  -0.000000006  -0.000000001
                        -0.000000016   0.000000002  -0.000000011   0.000000000

   43    7.2  0.5  0.5   0.000000016   0.000000062  -0.000000002  -0.000000014
                        -0.000000012  -0.000000052  -0.000000002   0.000000021

   44    8.2  0.5  0.5   0.000000012  -0.000000000   0.000000000   0.000000000
                         0.000000062  -0.000000015   0.000000046   0.000000002

   45    1.2  0.5 -0.5  -0.001211297   0.000423211   0.004006972   0.000172368
                         0.001492678  -0.000526919  -0.001982833  -0.000040394

   46    2.2  0.5 -0.5   0.001944851  -0.000757998  -0.001817788   0.000102993
                         0.004315002  -0.001235226  -0.001797732  -0.000190470

   47    3.2  0.5 -0.5  -0.000470252   0.001745660  -0.002118600  -0.000190709
                        -0.000545542  -0.002128872   0.000909430  -0.002860237

   48    4.2  0.5 -0.5  -0.001332412  -0.002109649  -0.001679987  -0.000138882
                         0.000120514   0.001257311   0.000592238   0.002603132

   49    5.2  0.5 -0.5  -0.000046276  -0.000956949   0.001170088  -0.000411951
                        -0.001069655  -0.002459446  -0.000103091  -0.001014771

   50    6.2  0.5 -0.5   0.000000002   0.000000004  -0.000000001   0.000000004
                        -0.000000000  -0.000000016   0.000000000  -0.000000012

   51    7.2  0.5 -0.5   0.000000029  -0.000000008  -0.000000018   0.000000002
                         0.000000075  -0.000000019  -0.000000018  -0.000000003

   52    8.2  0.5 -0.5  -0.000000008  -0.000000041  -0.000000000   0.000000008
                         0.000000013   0.000000048  -0.000000002   0.000000046


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   2.698%   0.232%  96.529%   0.002%   0.000%   0.001%   0.054%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    1.2  1.5  0.5   1.578%  94.953%   0.253%   2.677%   0.033%   0.020%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   13    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   14    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   15    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   17    8.2  1.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    9.2  1.5  0.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5  94.953%   1.578%   2.677%   0.253%   0.020%   0.033%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   23    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   26    8.2  1.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.232%   2.698%   0.002%  96.529%   0.001%   0.000%   0.000%   0.054%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   31    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   32    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   33    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   34    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.004%   0.306%   0.011%   0.022%  38.160%   0.001%   0.174%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.004%   0.175%   0.115%   0.113%  38.099%   0.017%   1.012%
   39    3.2  0.5  0.5   0.001%   0.002%   0.000%   0.000%  32.759%   0.722%   4.813%   0.208%   2.466%  27.676%
   40    4.2  0.5  0.5   0.002%   0.001%   0.000%   0.000%   2.023%  30.313%   6.137%   0.029%   4.897%  25.199%
   41    5.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%  10.885%  18.945%   8.572%   0.100%  37.025%   1.523%
   42    6.2  0.5  0.5   0.139%   0.002%   0.208%   0.000%   0.181%   0.640%   1.634%   0.003%   0.000%   0.000%
   43    7.2  0.5  0.5   0.004%   0.333%   0.003%   0.009%   1.562%   0.854%   0.023%   0.018%   0.000%   0.000%
   44    8.2  0.5  0.5   0.044%   0.002%   0.303%   0.000%   0.227%   0.223%   2.004%   0.004%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.011%   0.306%  38.160%   0.022%   0.174%   0.001%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.115%   0.175%  38.099%   0.113%   1.012%   0.017%
   47    3.2  0.5 -0.5   0.002%   0.001%   0.000%   0.000%   0.722%  32.759%   0.208%   4.813%  27.676%   2.466%
   48    4.2  0.5 -0.5   0.001%   0.002%   0.000%   0.000%  30.313%   2.023%   0.029%   6.137%  25.199%   4.897%
   49    5.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%  18.945%  10.885%   0.100%   8.572%   1.523%  37.025%
   50    6.2  0.5 -0.5   0.002%   0.139%   0.000%   0.208%   0.640%   0.181%   0.003%   1.634%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.333%   0.004%   0.009%   0.003%   0.854%   1.562%   0.018%   0.023%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.002%   0.044%   0.000%   0.303%   0.223%   0.227%   0.004%   2.004%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.478%   0.000%   0.000%   0.001%
    2    2.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    9    9.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.476%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   12    3.2  1.5  0.5   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   14    5.2  1.5  0.5   0.000%   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   18    9.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.476%   0.003%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.2  1.5 -0.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   27    9.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.478%   0.001%   0.000%
   29    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    6.2  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   36    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   37    1.2  0.5  0.5   0.002%   1.254%  58.554%   0.012%   0.000%   0.000%   0.001%   1.486%   0.006%   0.000%
   38    2.2  0.5  0.5   0.007%  23.214%  35.629%   0.114%   0.000%   0.000%   0.004%   1.470%   0.020%   0.000%
   39    3.2  0.5  0.5  26.524%   1.674%   0.009%   1.644%   0.000%   0.000%   0.166%   0.004%   0.571%   0.752%
   40    4.2  0.5  0.5  26.698%   1.379%   0.043%   1.778%   0.000%   0.000%   0.249%   0.006%   0.704%   0.534%
   41    5.2  0.5  0.5  19.238%   0.000%   0.081%   2.126%   0.000%   0.000%   0.329%   0.019%   0.937%   0.209%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.059%  32.273%  47.992%   0.028%  15.811%   0.023%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  32.570%   0.758%   0.000%   0.000%   0.248%  63.611%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.560%  32.773%  47.736%   0.027%  15.980%   0.111%
   45    1.2  0.5 -0.5   1.254%   0.002%   0.012%  58.554%   0.000%   0.000%   1.486%   0.001%   0.000%   0.006%
   46    2.2  0.5 -0.5  23.214%   0.007%   0.114%  35.629%   0.000%   0.000%   1.470%   0.004%   0.000%   0.020%
   47    3.2  0.5 -0.5   1.674%  26.524%   1.644%   0.009%   0.000%   0.000%   0.004%   0.166%   0.752%   0.571%
   48    4.2  0.5 -0.5   1.379%  26.698%   1.778%   0.043%   0.000%   0.000%   0.006%   0.249%   0.534%   0.704%
   49    5.2  0.5 -0.5   0.000%  19.238%   2.126%   0.081%   0.000%   0.000%   0.019%   0.329%   0.209%   0.937%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  32.273%   1.059%   0.028%  47.992%   0.023%  15.811%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.758%  32.570%   0.000%   0.000%  63.611%   0.248%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  32.773%   0.560%   0.027%  47.736%   0.111%  15.980%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.250%   5.035%   7.969%   0.173%  10.057%   0.186%   0.218%  32.345%   0.447%   0.738%
    3    3.2  1.5  1.5  18.898%   0.030%   0.130%   8.067%   0.126%  10.060%   2.730%   1.165%   4.215%   0.464%
    4    4.2  1.5  1.5   0.120%   4.764%   8.109%   0.038%  10.179%   0.059%   0.093%   0.662%   1.796%  31.608%
    5    5.2  1.5  1.5  19.122%   0.276%   0.090%   8.262%   0.109%   9.923%   2.808%   0.062%   4.626%   0.208%
    6    6.2  1.5  1.5   0.006%   0.001%   0.003%   9.989%   0.001%   8.390%   3.288%   0.003%   1.924%   0.159%
    7    7.2  1.5  1.5   0.000%   0.000%   0.001%   2.696%   0.000%   2.147%   0.279%   0.000%   0.173%   0.015%
    8    8.2  1.5  1.5   0.010%   0.737%   0.708%   0.008%   0.890%   0.009%   0.017%   2.409%   0.178%   2.322%
    9    9.2  1.5  1.5   0.010%   0.737%   0.708%   0.008%   0.889%   0.009%   0.003%   3.564%   0.049%   1.339%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5  13.948%   0.168%   0.361%   9.882%   0.250%   7.891%   6.836%   0.832%   7.491%   1.675%
   12    3.2  1.5  0.5   0.455%   0.019%   9.805%   0.382%   7.932%   0.266%   0.412%  24.027%   1.633%  13.009%
   13    4.2  1.5  0.5  14.312%   0.204%   0.023%  10.214%   0.019%   8.128%   4.607%   0.015%  11.223%   0.472%
   14    5.2  1.5  0.5   0.000%   0.003%  10.028%   0.004%   8.352%   0.000%   0.027%   6.709%   0.203%   3.457%
   15    6.2  1.5  0.5   0.252%  19.141%   8.314%   0.078%   9.874%   0.118%   0.062%   3.051%   0.226%   4.379%
   16    7.2  1.5  0.5   0.014%   0.983%   0.236%   0.003%   0.296%   0.003%   0.051%   2.184%   0.174%   3.616%
   17    8.2  1.5  0.5   0.246%   0.003%   0.012%   3.683%   0.012%   0.060%   0.806%   0.014%   0.997%   0.073%
   18    9.2  1.5  0.5   0.246%   0.003%   0.010%   0.002%   0.012%   3.743%   0.704%   0.011%   1.071%   0.036%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.168%  13.948%   9.882%   0.361%   7.891%   0.250%   0.832%   6.836%   1.675%   7.491%
   21    3.2  1.5 -0.5   0.019%   0.455%   0.382%   9.805%   0.266%   7.932%  24.027%   0.412%  13.009%   1.633%
   22    4.2  1.5 -0.5   0.204%  14.312%  10.214%   0.023%   8.128%   0.019%   0.015%   4.607%   0.472%  11.223%
   23    5.2  1.5 -0.5   0.003%   0.000%   0.004%  10.028%   0.000%   8.352%   6.709%   0.027%   3.457%   0.203%
   24    6.2  1.5 -0.5  19.141%   0.252%   0.078%   8.314%   0.118%   9.874%   3.051%   0.062%   4.379%   0.226%
   25    7.2  1.5 -0.5   0.983%   0.014%   0.003%   0.236%   0.003%   0.296%   2.184%   0.051%   3.616%   0.174%
   26    8.2  1.5 -0.5   0.003%   0.246%   3.683%   0.012%   0.060%   0.012%   0.014%   0.806%   0.073%   0.997%
   27    9.2  1.5 -0.5   0.003%   0.246%   0.002%   0.010%   3.743%   0.012%   0.011%   0.704%   0.036%   1.071%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   5.035%   0.250%   0.173%   7.969%   0.186%  10.057%  32.345%   0.218%   0.738%   0.447%
   30    3.2  1.5 -1.5   0.030%  18.898%   8.067%   0.130%  10.060%   0.126%   1.165%   2.730%   0.464%   4.215%
   31    4.2  1.5 -1.5   4.764%   0.120%   0.038%   8.109%   0.059%  10.179%   0.662%   0.093%  31.608%   1.796%
   32    5.2  1.5 -1.5   0.276%  19.122%   8.262%   0.090%   9.923%   0.109%   0.062%   2.808%   0.208%   4.626%
   33    6.2  1.5 -1.5   0.001%   0.006%   9.989%   0.003%   8.390%   0.001%   0.003%   3.288%   0.159%   1.924%
   34    7.2  1.5 -1.5   0.000%   0.000%   2.696%   0.001%   2.147%   0.000%   0.000%   0.279%   0.015%   0.173%
   35    8.2  1.5 -1.5   0.737%   0.010%   0.008%   0.708%   0.009%   0.890%   2.409%   0.017%   2.322%   0.178%
   36    9.2  1.5 -1.5   0.737%   0.010%   0.008%   0.708%   0.009%   0.889%   3.564%   0.003%   1.339%   0.049%
   37    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.001%
   38    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   41    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.001%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.002%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   2.008%   0.003%   0.147%   0.016%   0.018%   0.499%   0.033%   1.065%  22.602%   2.919%
    3    3.2  1.5  1.5   0.073%   0.004%   0.026%   0.558%   0.502%   0.018%   1.056%   0.040%   0.615%   0.605%
    4    4.2  1.5  1.5   2.386%   0.009%   0.138%   0.013%   0.001%   0.514%   0.007%   1.092%  19.078%   2.608%
    5    5.2  1.5  1.5   0.000%   0.012%   0.023%   0.575%   0.532%   0.000%   1.081%   0.001%   0.000%   0.085%
    6    6.2  1.5  1.5   0.016%  40.857%   0.000%   0.000%   1.077%   0.000%   0.537%   0.000%   0.548%   3.600%
    7    7.2  1.5  1.5   0.002%   3.549%   0.000%   0.000%  37.535%   0.006%  17.604%   0.007%   0.000%   0.000%
    8    8.2  1.5  1.5   0.595%   0.002%  23.312%   0.940%   0.000%   5.870%   0.011%  12.503%   0.000%   0.000%
    9    9.2  1.5  1.5   0.566%   0.002%  23.311%   0.940%   0.000%   5.870%   0.011%  12.502%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.004%   0.000%   0.000%
   11    2.2  1.5  0.5   0.210%   1.169%   0.017%   0.418%   1.066%   0.033%   0.504%   0.013%   0.001%   6.336%
   12    3.2  1.5  0.5   6.207%   0.031%   0.001%   0.014%   0.035%   1.060%   0.014%   0.505%  25.130%   2.092%
   13    4.2  1.5  0.5   0.023%   1.079%   0.018%   0.430%   1.098%   0.002%   0.514%   0.002%   0.409%   2.564%
   14    5.2  1.5  0.5  35.824%   0.037%   0.000%   0.000%   0.000%   1.081%   0.000%   0.532%   9.184%   1.231%
   15    6.2  1.5  0.5   0.005%   0.000%   0.574%   0.024%   0.000%   0.537%   0.001%   1.076%   0.344%   0.047%
   16    7.2  1.5  0.5   0.001%   0.000%  31.083%   1.254%   0.000%   1.956%   0.004%   4.168%   0.000%   0.000%
   17    8.2  1.5  0.5   0.001%   2.628%   0.313%   7.771%  40.122%   0.002%   2.765%   0.007%   0.000%   0.000%
   18    9.2  1.5  0.5   0.001%   2.695%   0.313%   7.770%   0.554%   0.003%  42.310%   0.027%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.004%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   1.169%   0.210%   0.418%   0.017%   0.033%   1.066%   0.013%   0.504%   6.336%   0.001%
   21    3.2  1.5 -0.5   0.031%   6.207%   0.014%   0.001%   1.060%   0.035%   0.505%   0.014%   2.092%  25.130%
   22    4.2  1.5 -0.5   1.079%   0.023%   0.430%   0.018%   0.002%   1.098%   0.002%   0.514%   2.564%   0.409%
   23    5.2  1.5 -0.5   0.037%  35.824%   0.000%   0.000%   1.081%   0.000%   0.532%   0.000%   1.231%   9.184%
   24    6.2  1.5 -0.5   0.000%   0.005%   0.024%   0.574%   0.537%   0.000%   1.076%   0.001%   0.047%   0.344%
   25    7.2  1.5 -0.5   0.000%   0.001%   1.254%  31.083%   1.956%   0.000%   4.168%   0.004%   0.000%   0.000%
   26    8.2  1.5 -0.5   2.628%   0.001%   7.771%   0.313%   0.002%  40.122%   0.007%   2.765%   0.000%   0.000%
   27    9.2  1.5 -0.5   2.695%   0.001%   7.770%   0.313%   0.003%   0.554%   0.027%  42.310%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.002%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.003%   2.008%   0.016%   0.147%   0.499%   0.018%   1.065%   0.033%   2.919%  22.602%
   30    3.2  1.5 -1.5   0.004%   0.073%   0.558%   0.026%   0.018%   0.502%   0.040%   1.056%   0.605%   0.615%
   31    4.2  1.5 -1.5   0.009%   2.386%   0.013%   0.138%   0.514%   0.001%   1.092%   0.007%   2.608%  19.078%
   32    5.2  1.5 -1.5   0.012%   0.000%   0.575%   0.023%   0.000%   0.532%   0.001%   1.081%   0.085%   0.000%
   33    6.2  1.5 -1.5  40.857%   0.016%   0.000%   0.000%   0.000%   1.077%   0.000%   0.537%   3.600%   0.548%
   34    7.2  1.5 -1.5   3.549%   0.002%   0.000%   0.000%   0.006%  37.535%   0.007%  17.604%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.002%   0.595%   0.940%  23.312%   5.870%   0.000%  12.503%   0.011%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.002%   0.566%   0.940%  23.311%   5.870%   0.000%  12.502%   0.011%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    2.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    3.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    5.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    4.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    5.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   1.369%   0.123%   3.781%   0.025%   3.867%   0.111%   0.949%   0.018%   0.043%   0.511%
    3    3.2  1.5  1.5  42.861%   4.863%   0.039%   1.273%   0.195%   0.417%   0.052%   0.536%   0.026%   0.034%
    4    4.2  1.5  1.5   0.356%   1.483%   4.377%   0.012%   6.327%   0.085%   1.923%   0.001%   0.085%   1.423%
    5    5.2  1.5  1.5  36.566%   4.085%   0.044%   2.226%   0.086%   8.335%   0.000%   0.543%   0.045%   0.001%
    6    6.2  1.5  1.5   0.321%   0.001%   0.068%  22.357%   0.009%   1.677%   0.002%   1.342%   2.508%   0.124%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   9.174%  17.508%   0.883%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.057%   0.000%   1.280%  22.470%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%   0.002%   1.139%  15.467%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5   2.765%   0.162%   0.037%  27.586%   0.149%   8.163%   0.045%   1.391%   0.113%   0.005%
   12    3.2  1.5  0.5   0.198%   0.043%   0.538%   0.620%   0.104%   0.403%   1.502%   0.031%   0.022%   0.524%
   13    4.2  1.5  0.5   0.196%   0.087%   0.035%  18.039%   0.216%  24.126%   0.004%   0.990%   0.198%   0.002%
   14    5.2  1.5  0.5   0.047%   0.740%  16.478%   0.018%   0.864%   0.013%   0.143%   0.001%   0.230%   4.119%
   15    6.2  1.5  0.5   0.321%   3.412%   2.436%   0.010%  44.394%   0.460%   0.567%   0.000%   0.001%   0.026%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  35.210%   0.002%   0.060%   2.354%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%  31.242%   8.285%   0.543%
   18    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.124%  19.156%   0.811%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.162%   2.765%  27.586%   0.037%   8.163%   0.149%   1.391%   0.045%   0.005%   0.113%
   21    3.2  1.5 -0.5   0.043%   0.198%   0.620%   0.538%   0.403%   0.104%   0.031%   1.502%   0.524%   0.022%
   22    4.2  1.5 -0.5   0.087%   0.196%  18.039%   0.035%  24.126%   0.216%   0.990%   0.004%   0.002%   0.198%
   23    5.2  1.5 -0.5   0.740%   0.047%   0.018%  16.478%   0.013%   0.864%   0.001%   0.143%   4.119%   0.230%
   24    6.2  1.5 -0.5   3.412%   0.321%   0.010%   2.436%   0.460%  44.394%   0.000%   0.567%   0.026%   0.001%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  35.210%   2.354%   0.060%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.242%   0.016%   0.543%   8.285%
   27    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.124%   0.006%   0.811%  19.156%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.123%   1.369%   0.025%   3.781%   0.111%   3.867%   0.018%   0.949%   0.511%   0.043%
   30    3.2  1.5 -1.5   4.863%  42.861%   1.273%   0.039%   0.417%   0.195%   0.536%   0.052%   0.034%   0.026%
   31    4.2  1.5 -1.5   1.483%   0.356%   0.012%   4.377%   0.085%   6.327%   0.001%   1.923%   1.423%   0.085%
   32    5.2  1.5 -1.5   4.085%  36.566%   2.226%   0.044%   8.335%   0.086%   0.543%   0.000%   0.001%   0.045%
   33    6.2  1.5 -1.5   0.001%   0.321%  22.357%   0.068%   1.677%   0.009%   1.342%   0.002%   0.124%   2.508%
   34    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.174%   0.014%   0.883%  17.508%
   35    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.057%  22.470%   1.280%
   36    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.109%  15.467%   1.139%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%   0.000%
   41    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52

    1    1.2  1.5  1.5   0.000%   0.000%
    2    2.2  1.5  1.5   0.019%   2.450%
    3    3.2  1.5  1.5   0.254%   0.064%
    4    4.2  1.5  1.5   0.002%   0.646%
    5    5.2  1.5  1.5   0.272%   0.000%
    6    6.2  1.5  1.5   1.185%   0.001%
    7    7.2  1.5  1.5   8.393%   0.010%
    8    8.2  1.5  1.5   0.049%  11.618%
    9    9.2  1.5  1.5   0.074%  32.687%
   10    1.2  1.5  0.5   0.000%   0.000%
   11    2.2  1.5  0.5   0.397%   0.081%
   12    3.2  1.5  0.5   0.019%   2.960%
   13    4.2  1.5  0.5   0.742%   0.008%
   14    5.2  1.5  0.5   0.003%   0.667%
   15    6.2  1.5  0.5   0.000%   0.267%
   16    7.2  1.5  0.5   0.015%  16.332%
   17    8.2  1.5  0.5   0.391%   0.003%
   18    9.2  1.5  0.5  20.366%   0.019%
   19    1.2  1.5 -0.5   0.000%   0.000%
   20    2.2  1.5 -0.5   0.081%   0.397%
   21    3.2  1.5 -0.5   2.960%   0.019%
   22    4.2  1.5 -0.5   0.008%   0.742%
   23    5.2  1.5 -0.5   0.667%   0.003%
   24    6.2  1.5 -0.5   0.267%   0.000%
   25    7.2  1.5 -0.5  16.332%   0.015%
   26    8.2  1.5 -0.5   0.003%   0.391%
   27    9.2  1.5 -0.5   0.019%  20.366%
   28    1.2  1.5 -1.5   0.000%   0.000%
   29    2.2  1.5 -1.5   2.450%   0.019%
   30    3.2  1.5 -1.5   0.064%   0.254%
   31    4.2  1.5 -1.5   0.646%   0.002%
   32    5.2  1.5 -1.5   0.000%   0.272%
   33    6.2  1.5 -1.5   0.001%   1.185%
   34    7.2  1.5 -1.5   0.010%   8.393%
   35    8.2  1.5 -1.5  11.618%   0.049%
   36    9.2  1.5 -1.5  32.687%   0.074%
   37    1.2  0.5  0.5   0.000%   0.002%
   38    2.2  0.5  0.5   0.000%   0.001%
   39    3.2  0.5  0.5   0.001%   0.001%
   40    4.2  0.5  0.5   0.001%   0.000%
   41    5.2  0.5  0.5   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%
   45    1.2  0.5 -0.5   0.002%   0.000%
   46    2.2  0.5 -0.5   0.001%   0.000%
   47    3.2  0.5 -0.5   0.001%   0.001%
   48    4.2  0.5 -0.5   0.000%   0.001%
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
              1      24      265.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1285.03       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    102184.95  96391.77      8.04   2923.47   2856.60      3.48      0.08      1.13
 REAL TIME  *    103258.27 SEC
 DISK USED  *         1.30 GB (local),       16.42 GB (total)
 SF USED    *         6.81 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2259.605251011537

              CI              CI           MULTI         RHF-SCF
  -2259.75874086  -2259.56531964  -2259.00088805  -2259.09416026
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
