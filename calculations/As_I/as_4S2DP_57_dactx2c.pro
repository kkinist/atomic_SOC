
 Working directory              : /wrk/irikura/molpro.co4M6DNegh/
 Global scratch directory       : /wrk/irikura/molpro.co4M6DNegh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.co4M6DNegh/

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
  (32 PROC) 64 bit mpp version                                                           DATE: 28-Aug-24          TIME: 09:32:49  
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

     Node minimum: 1.311 MB, node maximum: 3.932 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN     72 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

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
 CPU TIMES  *         1.48      1.24
 REAL TIME  *         2.31 SEC
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
   4    -2259.09412628      -0.00027146     0.48D-03     0.94D-03     3     0       0.00      0.04    diag2
   5    -2259.09415912      -0.00003284     0.15D-03     0.41D-03     4     0       0.01      0.05    diag2
   6    -2259.09416023      -0.00000112     0.24D-04     0.95D-04     5     0       0.01      0.06    diag2
   7    -2259.09416026      -0.00000002     0.35D-05     0.14D-04     6     0       0.01      0.07    diag2
   8    -2259.09416026      -0.00000000     0.23D-06     0.78D-06     7     0       0.00      0.07    fixocc
   9    -2259.09416026      -0.00000000     0.34D-07     0.14D-06     0     0       0.01      0.08    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2259.094160256937
  RHF One-electron energy           -3146.447871085861
  RHF Two-electron energy             887.353710828923
  RHF Kinetic energy                 2399.925828541703
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
    4.1     2.00000    -2.06760     1  1  d2-  0.99966
    5.1     2.00000    -2.06760     1  1  d2+  0.99966
    6.1     2.00000    -2.06760     1  1  d1+  0.99833
    7.1     2.00000    -2.06760     1  1  d1-  0.99834
    8.1     2.00000    -2.06760     1  1  d0   0.99994
    9.1     2.00000    -0.70333     1  4  s    0.99679
    1.2     2.00000   -50.48634     1  1  px   0.99475
    2.2     2.00000   -50.48634     1  1  py   0.99469
    3.2     2.00000   -50.48634     1  1  pz   0.99987
    4.2     2.00000    -5.93361     1  2  py   0.99942
    5.2     2.00000    -5.93361     1  2  pz   0.99942
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
 CPU TIMES  *         1.75      0.27      1.24
 REAL TIME  *         3.23 SEC
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
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.281D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.275D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.591D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.573D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.484D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   4 6 3 5 2 1 4 6 3 5   2 1 4 6 3 5 2 3 5 4   6 2 1 2 3 5 4 6 812
                                        91114151013 7 1 2 5   3 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.969D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.150D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.151D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.723D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.737D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.393D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.747D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 1 2 3 2   1 3 1 2 3 810 9 7 6   4 5 1 2 3 9 7 4 5 6  10 8 2 1 3 6 4 5 9 7
                                        810 810 6 4 5 9 7 2   1 3 6 7 910 8 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    4279
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    0  -2259.02556520   -2259.03828822   -0.01272302    0.02381516 0.00005762 0.00000000  0.17E+01      1.94
   2    8   14    0  -2259.03751232   -2259.03760382   -0.00009151    0.00488698 0.00001114 0.00000000  0.13E+00      3.46
   3    6   12    0  -2259.03760384   -2259.03760384   -0.00000000    0.00000319 0.00000001 0.00000000  0.11E-03      4.71

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.72E-08)
                       Final energy:  -2259.03760384
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2259.101785701315
 Nuclear energy                                  0.00000000
 Kinetic energy                               2400.02530031
 One electron energy                         -3146.32011019
 Two electron energy                           887.21832449
 Virial ratio                                    1.94128249
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2259.038758925748
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.86339966
 One electron energy                         -3145.80711670
 Two electron energy                           886.76835777
 Virial ratio                                    1.94131973
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2259.038758925714
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.86339966
 One electron energy                         -3145.80711670
 Two electron energy                           886.76835777
 Virial ratio                                    1.94131973
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2259.038758925573
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.86339966
 One electron energy                         -3145.80711670
 Two electron energy                           886.76835778
 Virial ratio                                    1.94131973
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2259.038758925507
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.86339966
 One electron energy                         -3145.80711671
 Two electron energy                           886.76835778
 Virial ratio                                    1.94131973
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2259.038758925504
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.86339966
 One electron energy                         -3145.80711671
 Two electron energy                           886.76835778
 Virial ratio                                    1.94131973
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -2259.014284743966
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.82334400
 One electron energy                         -3145.64751648
 Two electron energy                           886.63323174
 Virial ratio                                    1.94132524
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy             -2259.014284743706
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.82334400
 One electron energy                         -3145.64751649
 Two electron energy                           886.63323175
 Virial ratio                                    1.94132524
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy             -2259.014284743581
 Nuclear energy                                  0.00000000
 Kinetic energy                               2399.82334400
 One electron energy                         -3145.64751649
 Two electron energy                           886.63323175
 Virial ratio                                    1.94132524
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.506588728791
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999905000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000020688
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     4.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.493409132447
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999999
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.898787215120
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999991058
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999996892
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.101211750378
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000005058
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999994332
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.594624056088
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000103942
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999982420
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.405379117175
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999994942
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000005668
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   6 4 5 3 2 1 4 3 5 6   2 1 6 4 3 5 2 3 5 4   6 2 1 3 5 2 4 61013
                                       1415 812 911 7 1 2 5   3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 3 2 1 1   2 3 2 3 1 2 3 1 810   7 9 6 5 4 6 4 9 7 5   810 2 1 3 4 6 9 7 5
                                        810 810 9 7 4 6 5 1   2 3 7 9 610 8 4 5 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -438.98519     1  1  s    1.00001
    2.1     2.00000   -57.79807     1  2  s    0.99976
    3.1     2.00000    -8.29522     1  3  s    0.99852
    4.1     2.00000    -2.08793     1  1  d2-  1.00007
    5.1     2.00000    -2.08793     1  1  d2+  1.00007
    6.1     2.00000    -2.08793     1  1  d1+  1.00007
    7.1     2.00000    -2.08793     1  1  d1-  1.00007
    8.1     2.00000    -2.08793     1  1  d0   1.00007
    9.1     1.97816    -0.71351     1  4  s    1.01236
    1.2     2.00000   -50.50697     1  1  px   0.99994
    2.2     2.00000   -50.50697     1  1  py   0.99994
    3.2     2.00000   -50.50697     1  1  pz   0.99994
    4.2     2.00000    -5.95384     1  2  py   0.99950
    5.2     2.00000    -5.95384     1  2  px   0.99950
    6.2     2.00000    -5.95384     1  2  pz   0.99950
    7.2     1.00231    -0.16224     1  3  pz   0.93332
    8.2     1.00231    -0.16224     1  3  py   0.93332
    9.2     1.00231    -0.16224     1  3  px   0.93332
   10.2     0.00497     0.48182     1  3  px  -0.73703    1  4  px  -0.66168    1  5  px   1.27561
   11.2     0.00497     0.48182     1  3  py  -0.73703    1  4  py  -0.66168    1  5  py   1.27561
   12.2     0.00497     0.48182     1  3  pz  -0.73703    1  4  pz  -0.66168    1  5  pz   1.27561
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99645092
 
 Energy:    -2259.10178570
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.12928521     -0.00003669     -0.00006317     -0.00000003      0.80240924      0.00000000      0.00000000
 2 aab000       0.75954926      0.00044704      0.00000826      0.00000017     -0.28924035     -0.00000000     -0.00000000
 2 20a000      -0.00000016      0.00000037      0.00000200      0.70386892      0.00000000      0.00000008     -0.00000054
 2 a02000      -0.00001433     -0.00000715     -0.70386891      0.00000200     -0.00005772      0.00004950      0.69605371
 2 02a000       0.00000016     -0.00000037     -0.00000200     -0.70386891      0.00000000      0.00000008     -0.00000054
 2 a20000       0.00001433      0.00000715      0.70386891     -0.00000200      0.00005772      0.00004950      0.69605372
 2 0a2000       0.00042829     -0.70386878      0.00000714      0.00000037      0.00003682      0.69605371     -0.00004950
 2 2a0000      -0.00042829      0.70386878     -0.00000714     -0.00000037     -0.00003682      0.69605372     -0.00004950
 2 baa000      -0.63026405     -0.00041035      0.00005492     -0.00000014     -0.51316889      0.00000000     -0.00000000
 0 22a000      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000002      0.00000011
 0 a22000       0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00001030     -0.14483805
 0 2a2000      -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.14483805      0.00001030
 
 Energy:    -2259.03875893  -2259.03875893  -2259.03875893  -2259.03875893  -2259.03875893  -2259.01428474  -2259.01428474

 State:              8
 2 aba000      -0.00000000
 2 aab000       0.00000000
 2 20a000       0.69605372
 2 a02000       0.00000054
 2 02a000       0.69605372
 2 a20000       0.00000054
 2 0a2000      -0.00000008
 2 2a0000      -0.00000008
 2 baa000       0.00000000
 0 22a000      -0.14483805
 0 a22000      -0.00000011
 0 2a2000       0.00000002
 
 Energy:    -2259.01428474
 


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
 CPU TIMES  *         6.34      4.59      0.27      1.24
 REAL TIME  *         8.45 SEC
 DISK USED  *        48.34 MB (local),      641.32 MB (total)
 SF USED    *        45.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2259.101786   0.0
    -2259.038759   6.0
    -2259.038759   6.0
    -2259.038759   6.0
    -2259.038759   6.0
    -2259.038759   6.0
    -2259.014285   2.0
    -2259.014285   2.0
    -2259.014285   2.0
                                                  


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
     1     -2259.10178570

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.85D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4815210
 Number of doubly external configurations:        566835
 Total number of contracted configurations:      5415725
 Total number of uncontracted configurations:  143206415

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.87 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1238358 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.10178570    -0.00000000    -0.90424036  0.45D-01  0.55D-01     2.46
    2     1     1     1.06492254    -0.73068428 -2259.83246998    -0.73068428    -0.01810172  0.22D-02  0.82D-03    23.14
    3     1     1     1.05785467    -0.74731892 -2259.84910462    -0.01663464    -0.00047410  0.66D-04  0.33D-04    43.45
    4     1     1     1.05734595    -0.74777953 -2259.84956523    -0.00046060    -0.00002350  0.28D-05  0.24D-05    63.76
    5     1     1     1.05753646    -0.74780395 -2259.84958965    -0.00002442    -0.00000122  0.71D-07  0.19D-06    83.94
    6     1     1     1.05759605    -0.74780534 -2259.84959104    -0.00000139    -0.00000007  0.54D-08  0.95D-08   104.17
    7     1     1     1.05759769    -0.74780542 -2259.84959112    -0.00000008    -0.00000000  0.29D-09  0.45D-09   124.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   2.3%  29.0%
 P   0.7%  58.5%   3.8%

 Initialization:   0.9%
 Other:            1.7%

 Total CPU:      124.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9687304


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97194482 (fixed)   0.97215574 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00091291   -0.00269550   -0.00319129
 Singles      0.01957786   -0.09423696   -0.10285374
 Pairs        0.03807241   -0.65087295   -0.64176039
 Total        1.05856318   -0.74780542   -0.74780542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.10178570
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.22916781
 One electron energy                -3145.02202363
 Two electron energy                  885.17243251
 Virial quotient                       -0.94151409
 Correlation energy                    -0.74780542
 !MRCI STATE 1.2 Energy             -2259.849591120911

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.89338498 (Davidson, fixed reference)
 Cluster corrected energies         -2259.89304153 (Davidson, relaxed reference)

 Cluster corrected energies         -2259.89092891 (Pople, fixed reference)
 Cluster corrected energies         -2259.89058914 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       43.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       132.02    125.66      4.59      0.27      1.24
 REAL TIME  *       136.76 SEC
 DISK USED  *        90.69 MB (local),        1.12 GB (total)
 SF USED    *       657.15 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2259.89304153  AU                              


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
     1     -2259.03875893
     2     -2259.03875893
     3     -2259.03875893
     4     -2259.03875893
     5     -2259.03875893
     6     -2259.01428474
     7     -2259.01428474
     8     -2259.01428474

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1851D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1304D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1304D-06

 Number of blocks in overlap matrix:   778   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5927340
 Number of doubly external configurations:       4219480
 Total number of contracted configurations:     10190906
 Total number of uncontracted configurations:  189010621

 Diagonal Coupling coefficients finished.               Storage:  27654083 words, CPU-Time:     67.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1526948 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2259.03875893     0.00000000    -0.90315246  0.49D-01  0.51D-01    80.90
    1     2     2     1.00000000     0.00000000 -2259.03875893     0.00000000    -0.90347323  0.49D-01  0.52D-01    80.90
    1     3     3     1.00000000     0.00000000 -2259.03875893     0.00000000    -0.90351600  0.50D-01  0.51D-01    80.90
    1     4     4     1.00000000     0.00000000 -2259.03875893     0.00000000    -0.90391991  0.49D-01  0.52D-01    80.90
    1     5     5     1.00000000     0.00000000 -2259.03875893     0.00000000    -0.90356370  0.49D-01  0.51D-01    80.90
    1     6     6     1.00000000     0.00000000 -2259.01428474     0.00000000    -0.88633083  0.32D-01  0.53D-01    80.90
    1     7     7     1.00000000     0.00000000 -2259.01428474    -0.00000000    -0.88633710  0.32D-01  0.53D-01    80.90
    1     8     8     1.00000000     0.00000000 -2259.01428474    -0.00000000    -0.88698375  0.32D-01  0.54D-01    80.90
    2     1     1     1.06626307    -0.73673454 -2259.77549347    -0.73673454    -0.01953782  0.23D-02  0.12D-02   452.61
    2     2     2     1.06618170    -0.73672249 -2259.77548141    -0.73672249    -0.01950319  0.23D-02  0.11D-02   452.61
    2     3     3     1.06639416    -0.73657362 -2259.77533255    -0.73657362    -0.01963835  0.24D-02  0.11D-02   452.61
    2     4     4     1.06618963    -0.73654078 -2259.77529970    -0.73654078    -0.01971595  0.23D-02  0.12D-02   452.61
    2     5     5     1.06642073    -0.73635221 -2259.77511113    -0.73635221    -0.01984491  0.24D-02  0.11D-02   452.61
    2     6     6     1.05772445    -0.73074865 -2259.74503339    -0.73074865    -0.01898356  0.19D-02  0.13D-02   452.61
    2     7     7     1.05748737    -0.73067044 -2259.74495518    -0.73067044    -0.01901273  0.19D-02  0.13D-02   452.61
    2     8     8     1.05750961    -0.73056543 -2259.74485018    -0.73056543    -0.01905837  0.19D-02  0.13D-02   452.61
    3     1     1     1.06094277    -0.75473349 -2259.79349241    -0.01799895    -0.00062513  0.49D-04  0.75D-04   823.46
    3     2     2     1.06092594    -0.75472044 -2259.79347936    -0.01799795    -0.00063679  0.50D-04  0.77D-04   823.46
    3     3     3     1.06092723    -0.75471705 -2259.79347598    -0.01814343    -0.00063339  0.49D-04  0.76D-04   823.46
    3     4     4     1.06091247    -0.75471251 -2259.79347143    -0.01817173    -0.00064853  0.53D-04  0.77D-04   823.46
    3     5     5     1.06086683    -0.75468941 -2259.79344834    -0.01833721    -0.00066095  0.53D-04  0.80D-04   823.46
    3     6     6     1.05628377    -0.74842864 -2259.76271338    -0.01767999    -0.00076904  0.40D-04  0.11D-03   823.46
    3     7     7     1.05620727    -0.74841784 -2259.76270258    -0.01774740    -0.00078026  0.40D-04  0.12D-03   823.46
    3     8     8     1.05615093    -0.74837269 -2259.76265744    -0.01780726    -0.00079923  0.41D-04  0.12D-03   823.46
    4     1     1     1.06143522    -0.75543830 -2259.79419723    -0.00070482    -0.00006818  0.41D-05  0.10D-04  1194.84
    4     2     2     1.06142508    -0.75543817 -2259.79419709    -0.00071773    -0.00006870  0.42D-05  0.10D-04  1194.84
    4     3     3     1.06141194    -0.75543751 -2259.79419644    -0.00072046    -0.00006974  0.44D-05  0.10D-04  1194.84
    4     4     4     1.06142489    -0.75543443 -2259.79419336    -0.00072192    -0.00007059  0.42D-05  0.10D-04  1194.84
    4     5     5     1.06139258    -0.75543208 -2259.79419100    -0.00074266    -0.00007302  0.45D-05  0.10D-04  1194.84
    4     6     6     1.05813985    -0.74935152 -2259.76363626    -0.00092288    -0.00010165  0.64D-05  0.14D-04  1194.84
    4     7     7     1.05814400    -0.74935038 -2259.76363512    -0.00093254    -0.00010187  0.64D-05  0.14D-04  1194.84
    4     8     8     1.05810815    -0.74934035 -2259.76362509    -0.00096765    -0.00010880  0.68D-05  0.14D-04  1194.84
    5     1     1     1.06201148    -0.75552408 -2259.79428300    -0.00008577    -0.00000853  0.61D-06  0.99D-06  1565.76
    5     2     2     1.06201094    -0.75552401 -2259.79428294    -0.00008584    -0.00000851  0.60D-06  0.10D-05  1565.76
    5     3     3     1.06200646    -0.75552383 -2259.79428275    -0.00008632    -0.00000864  0.61D-06  0.10D-05  1565.76
    5     4     4     1.06201093    -0.75552351 -2259.79428243    -0.00008908    -0.00000892  0.63D-06  0.10D-05  1565.76
    5     5     5     1.06200613    -0.75552302 -2259.79428195    -0.00009094    -0.00000922  0.64D-06  0.11D-05  1565.76
    5     6     6     1.05908957    -0.74947644 -2259.76376119    -0.00012492    -0.00001154  0.77D-06  0.13D-05  1565.76
    5     7     7     1.05908808    -0.74947630 -2259.76376104    -0.00012592    -0.00001170  0.79D-06  0.13D-05  1565.76
    5     8     8     1.05908612    -0.74947499 -2259.76375974    -0.00013464    -0.00001263  0.85D-06  0.14D-05  1565.76
    6     1     1     1.06205229    -0.75553412 -2259.79429305    -0.00001005    -0.00000084  0.53D-07  0.11D-06  1933.22
    6     2     2     1.06205247    -0.75553407 -2259.79429300    -0.00001006    -0.00000085  0.52D-07  0.11D-06  1933.22
    6     3     3     1.06205255    -0.75553407 -2259.79429300    -0.00001024    -0.00000087  0.56D-07  0.11D-06  1933.22
    6     4     4     1.06205068    -0.75553403 -2259.79429295    -0.00001052    -0.00000089  0.55D-07  0.12D-06  1933.22
    6     5     5     1.06205096    -0.75553395 -2259.79429287    -0.00001093    -0.00000095  0.59D-07  0.12D-06  1933.22
    6     6     6     1.05913479    -0.74948971 -2259.76377446    -0.00001327    -0.00000119  0.55D-07  0.17D-06  1933.22
    6     7     7     1.05913582    -0.74948970 -2259.76377444    -0.00001340    -0.00000118  0.53D-07  0.17D-06  1933.22
    6     8     8     1.05913051    -0.74948950 -2259.76377424    -0.00001450    -0.00000132  0.59D-07  0.18D-06  1933.22
    7     1     1     1.06207008    -0.75553508 -2259.79429401    -0.00000096    -0.00000012  0.92D-08  0.15D-07  2303.33
    7     2     2     1.06206981    -0.75553507 -2259.79429400    -0.00000100    -0.00000012  0.10D-07  0.16D-07  2303.33
    7     3     3     1.06206894    -0.75553504 -2259.79429397    -0.00000097    -0.00000013  0.99D-08  0.17D-07  2303.33
    7     4     4     1.06206981    -0.75553503 -2259.79429396    -0.00000101    -0.00000011  0.92D-08  0.15D-07  2303.33
    7     5     5     1.06206917    -0.75553502 -2259.79429394    -0.00000107    -0.00000013  0.11D-07  0.17D-07  2303.33
    7     6     6     1.05915790    -0.74949111 -2259.76377585    -0.00000140    -0.00000019  0.15D-07  0.24D-07  2303.33
    7     7     7     1.05915803    -0.74949108 -2259.76377583    -0.00000138    -0.00000018  0.15D-07  0.23D-07  2303.33
    7     8     8     1.05915535    -0.74949106 -2259.76377580    -0.00000156    -0.00000021  0.17D-07  0.27D-07  2303.33
    8     1     1     1.06207614    -0.75553521 -2259.79429414    -0.00000013    -0.00000002  0.18D-08  0.26D-08  2671.89
    8     2     2     1.06207638    -0.75553521 -2259.79429414    -0.00000014    -0.00000002  0.16D-08  0.23D-08  2671.89
    8     3     3     1.06207611    -0.75553519 -2259.79429411    -0.00000014    -0.00000002  0.18D-08  0.25D-08  2671.89
    8     4     4     1.06207640    -0.75553516 -2259.79429409    -0.00000013    -0.00000002  0.16D-08  0.23D-08  2671.89
    8     5     5     1.06207619    -0.75553516 -2259.79429409    -0.00000014    -0.00000002  0.18D-08  0.25D-08  2671.89
    8     6     6     1.05917332    -0.74949132 -2259.76377607    -0.00000021    -0.00000003  0.25D-08  0.36D-08  2671.89
    8     7     7     1.05917245    -0.74949130 -2259.76377604    -0.00000022    -0.00000004  0.30D-08  0.41D-08  2671.89
    8     8     8     1.05917341    -0.74949129 -2259.76377603    -0.00000023    -0.00000003  0.24D-08  0.34D-08  2671.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   0.9%  13.1%
 P   0.4%  54.7%  22.1%

 Initialization:   2.6%
 Other:            4.9%

 Total CPU:     2671.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.1980114  -0.0212513  -0.1174522  -0.0134858   0.9379782  -0.0000000   0.0000001   0.0000000
 2222222222/\/000           0.9353987  -0.1050134  -0.0648206   0.0034588  -0.2079129  -0.0000000   0.0000001   0.0000000
 2222222222/02000          -0.0064243  -0.0476073  -0.0082291   0.6813683   0.0090436   0.0601194  -0.0012162   0.6745336
 2222222222/20000           0.0064243   0.0476074   0.0082291  -0.6813681  -0.0090436   0.0601193  -0.0012162   0.6745339
 222222222202/000           0.0759573   0.6772304   0.0010832   0.0480457   0.0001352   0.6745199   0.0046054  -0.0601099
 222222222220/000          -0.0759573  -0.6772301  -0.0010832  -0.0480458  -0.0001352   0.6745201   0.0046054  -0.0601098
 22222222220/2000           0.0618031  -0.0085393   0.6765004   0.0072064   0.0715735  -0.0044793   0.6771923   0.0016203
 22222222222/0000          -0.0618032   0.0085393  -0.6765004  -0.0072064  -0.0715737  -0.0044793   0.6771922   0.0016203
 22222202222/2000           0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0008745  -0.1322087  -0.0003163
 2222220222/22000          -0.0000000  -0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0117371   0.0002374  -0.1316898
 222222022222/000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1316871  -0.0008991   0.0117353

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.519603    0.087737   -0.009120    0.107831    0.806972   -0.000000    0.000000    0.000000
 2          -0.057416   -0.012123   -0.067585    0.961415   -0.090945    0.000000    0.000000    0.000000
 3          -0.133332    0.960378   -0.011682    0.001538   -0.018902    0.000000    0.000000    0.000000
 4          -0.011419    0.010230    0.967289    0.068207    0.008058   -0.000000    0.000000   -0.000000
 5           0.805859    0.101608    0.012838    0.000192   -0.529814   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.006424    0.086221    0.967373
 7           0.000000    0.000000    0.000000   -0.000000    0.000000    0.971205   -0.001744    0.006605
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.002324    0.967393   -0.086207

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969845   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.969845    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.969846    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.969845   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.969845   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971229   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971230    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.971229


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.80697247 (fixed)   0.97001917 (relaxed)   0.96984550 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101189   -0.00321140   -0.61660484
 Singles      0.02296902   -0.10075577   -0.11108980
 Pairs        0.03916994   -0.00000001   -0.02784058
 Total        1.06315085   -0.10396718   -0.75553521
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03875893
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15674085
 One electron energy                -3144.63511369
 Two electron energy                  884.84081955
 Virial quotient                       -0.94151947
 Correlation energy                    -0.75553521
 !MRCI STATE 1.2 Energy             -2259.794294140515

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84200683 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84171924 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84200683 (Davidson, rotated reference)

 Cluster corrected energies         -2259.84001582 (Pople, fixed reference)
 Cluster corrected energies         -2259.83972552 (Pople, relaxed reference)
 Cluster corrected energies         -2259.84001582 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96141456 (fixed)   0.97001906 (relaxed)   0.96984540 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101189   -0.00321141   -0.61660489
 Singles      0.02296885   -0.10075551   -0.11108966
 Pairs        0.03917034   -0.00000006   -0.02784066
 Total        1.06315108   -0.10396698   -0.75553521
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03875893
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15688304
 One electron energy                -3144.63523252
 Two electron energy                  884.84093838
 Virial quotient                       -0.94151941
 Correlation energy                    -0.75553521
 !MRCI STATE 2.2 Energy             -2259.794294138592

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84200700 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84171941 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84200700 (Davidson, rotated reference)

 Cluster corrected energies         -2259.84001599 (Pople, fixed reference)
 Cluster corrected energies         -2259.83972569 (Pople, relaxed reference)
 Cluster corrected energies         -2259.84001599 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96037841 (fixed)   0.97001918 (relaxed)   0.96984551 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101189   -0.00321141   -0.61660479
 Singles      0.02296896   -0.10075582   -0.11108969
 Pairs        0.03916996   -0.00000000   -0.02784071
 Total        1.06315082   -0.10396723   -0.75553519
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03875893
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15675918
 One electron energy                -3144.63512785
 Two electron energy                  884.84083374
 Virial quotient                       -0.94151946
 Correlation energy                    -0.75553519
 !MRCI STATE 3.2 Energy             -2259.794294111165

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84200678 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84171919 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84200678 (Davidson, rotated reference)

 Cluster corrected energies         -2259.84001576 (Pople, fixed reference)
 Cluster corrected energies         -2259.83972546 (Pople, relaxed reference)
 Cluster corrected energies         -2259.84001576 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96728894 (fixed)   0.97001905 (relaxed)   0.96984539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101188   -0.00321141   -0.61660474
 Singles      0.02296896   -0.10075572   -0.11108971
 Pairs        0.03917026    0.00000006   -0.02784071
 Total        1.06315110   -0.10396708   -0.75553516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03875893
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15688114
 One electron energy                -3144.63522318
 Two electron energy                  884.84092909
 Virial quotient                       -0.94151941
 Correlation energy                    -0.75553516
 !MRCI STATE 4.2 Energy             -2259.794294089402

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84200696 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84171938 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84200696 (Davidson, rotated reference)

 Cluster corrected energies         -2259.84001595 (Pople, fixed reference)
 Cluster corrected energies         -2259.83972566 (Pople, relaxed reference)
 Cluster corrected energies         -2259.84001595 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.80585908 (fixed)   0.97001915 (relaxed)   0.96984548 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101188   -0.00321141   -0.61660460
 Singles      0.02296910   -0.10075595   -0.11108983
 Pairs        0.03916990   -0.00000000   -0.02784073
 Total        1.06315088   -0.10396736   -0.75553516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.03875893
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.15677816
 One electron energy                -3144.63513496
 Two electron energy                  884.84084087
 Virial quotient                       -0.94151945
 Correlation energy                    -0.75553516
 !MRCI STATE 5.2 Energy             -2259.794294085396

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.84200680 (Davidson, fixed reference)
 Cluster corrected energies         -2259.84171921 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.84200680 (Davidson, rotated reference)

 Cluster corrected energies         -2259.84001578 (Pople, fixed reference)
 Cluster corrected energies         -2259.83972549 (Pople, relaxed reference)
 Cluster corrected energies         -2259.84001578 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96737306 (fixed)   0.97136799 (relaxed)   0.97122911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089746   -0.00307359   -0.00600673
 Singles      0.01594022   -0.08609467   -0.09247654
 Pairs        0.04328621   -0.65770141   -0.65100805
 Total        1.06012389   -0.74686966   -0.74949132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.01428474
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.12887434
 One electron energy                -3144.45218178
 Two electron energy                  884.68840571
 Virial quotient                       -0.94151768
 Correlation energy                    -0.74949132
 !MRCI STATE 6.2 Energy             -2259.763776065633

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80883840 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80861121 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80883840 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80684705 (Pople, fixed reference)
 Cluster corrected energies         -2259.80661888 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80684705 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97120548 (fixed)   0.97136839 (relaxed)   0.97122950 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089746   -0.00307359   -0.62217139
 Singles      0.01594038   -0.08609515   -0.09247658
 Pairs        0.04328518   -0.00449057   -0.03484332
 Total        1.06012302   -0.09365931   -0.74949130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.01428474
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.12864193
 One electron energy                -3144.45199126
 Two electron energy                  884.68821522
 Virial quotient                       -0.94151777
 Correlation energy                    -0.74949130
 !MRCI STATE 7.2 Energy             -2259.763776041048

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80883772 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80861054 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80883772 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80684637 (Pople, fixed reference)
 Cluster corrected energies         -2259.80661820 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80684637 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96739279 (fixed)   0.97136795 (relaxed)   0.97122908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089745   -0.00307359   -0.68169408
 Singles      0.01594022   -0.08609471   -0.09247656
 Pairs        0.04328629    0.05861102    0.02467935
 Total        1.06012396   -0.03055727   -0.74949129
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2259.01428474
 Nuclear energy                         0.00000000
 Kinetic energy                      2400.12890158
 One electron energy                -3144.45219458
 Two electron energy                  884.68841855
 Virial quotient                       -0.94151767
 Correlation energy                    -0.74949129
 !MRCI STATE 8.2 Energy             -2259.763776030173

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2259.80883841 (Davidson, fixed reference)
 Cluster corrected energies         -2259.80861124 (Davidson, relaxed reference)
 Cluster corrected energies         -2259.80883841 (Davidson, rotated reference)

 Cluster corrected energies         -2259.80684707 (Pople, fixed reference)
 Cluster corrected energies         -2259.80661891 (Pople, relaxed reference)
 Cluster corrected energies         -2259.80684707 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3314.71   3182.68    125.66      4.59      0.27      1.24
 REAL TIME  *      3391.16 SEC
 DISK USED  *       723.78 MB (local),        8.54 GB (total)
 SF USED    *         6.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2259.84200683  AU                              
 SETTING HLSDIAG(3)     =     -2259.84200700  AU                              
 SETTING HLSDIAG(4)     =     -2259.84200678  AU                              
 SETTING HLSDIAG(5)     =     -2259.84200696  AU                              
 SETTING HLSDIAG(6)     =     -2259.84200680  AU                              
 SETTING HLSDIAG(7)     =     -2259.80883840  AU                              
 SETTING HLSDIAG(8)     =     -2259.80883772  AU                              
 SETTING HLSDIAG(9)     =     -2259.80883841  AU                              


         HLSDIAG
    -2259.893042
    -2259.842007
    -2259.842007
    -2259.842007
    -2259.842007
    -2259.842007
    -2259.808838
    -2259.808838
    -2259.808838
                                                  

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

 Time for Seward_LS:       7.97 sec

       14212507. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3482 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.97 sec, REAL time:      8.19 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.15 sec, REAL time:      0.24 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:   277.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   277.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.03       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3323.69      8.94   3182.68    125.66      4.59      0.27      1.24
 REAL TIME  *      3400.54 SEC
 DISK USED  *       723.86 MB (local),        9.29 GB (total)
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

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:  -2259.849591
 Replaced energies:  -2259.893042

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:  -2259.794294  -2259.794294  -2259.794294  -2259.794294  -2259.794294  -2259.763776  -2259.763776  -2259.763776
 Replaced energies:  -2259.842007  -2259.842007  -2259.842007  -2259.842007  -2259.842007  -2259.808838  -2259.808838  -2259.808838



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2259.89304153

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       6.22
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -936.24

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      96.36

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       3.59
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00     540.54

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11200.82       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       1.01      -0.78      -4.57      -0.01       3.76

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11200.78       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -1.01      -0.00      -7.48       0.43       0.22      -3.28

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11200.83       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.78       7.48       0.00      -0.56       0.16    -669.77

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11200.79       0.00       0.00
                           -0.00       0.00       0.00      -0.00       4.57      -0.43       0.56       0.00     -14.32      -7.63

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11200.83       0.00
                            0.00       0.00      -0.00      -0.00       0.01      -0.22      -0.16      14.32      -0.00     -49.43

   10   6.2  0.5  0.5       6.22       0.00       3.59       0.00       0.00       0.00       0.00       0.00       0.00   18480.45
                          936.24     -96.36    -540.54      -0.00      -3.76       3.28     669.77       7.63      49.43       0.00

   11   7.2  0.5  0.5    -939.95       0.00    -542.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.39       1.95      -3.69      -0.00     -72.86    -665.13       3.29     -47.13       0.76       3.42

   12   8.2  0.5  0.5      -2.25       0.00      -1.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -83.43   -1081.11      48.17      -0.00    -731.49      80.26      32.76       2.25    -236.96       0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.04     -10.08       0.72      -0.03      -4.11
                           -0.00       0.00      -0.00      -0.00       0.00      14.70       0.07       0.34       0.35    -163.46

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.04       0.00       1.03       7.51       0.08     -12.05
                           -0.00       0.00      -0.00      -0.00     -14.70       0.00       0.48      -0.08       3.16      18.02

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      10.08      -1.03       0.00      -0.11      11.17       7.94
                           -0.00       0.00      -0.00      -0.00      -0.07      -0.48      -0.00      -7.52      -0.10      34.87

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.72      -7.51       0.11       0.00       0.14    -670.59
                           -0.00      -0.00       0.00       0.00      -0.34       0.08       7.52      -0.00       1.02       5.72

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.03      -0.08     -11.17      -0.14       0.00      -5.41
                           -0.00       0.00       0.00      -0.00      -0.35      -3.16       0.10      -1.02      -0.00    -755.27

   18   6.2  0.5 -0.5       0.00       3.59       0.00       6.22       4.11      12.05      -7.94     670.59       5.41      -0.00
                           -0.00     540.54     -96.36    -936.24     163.46     -18.02     -34.87      -5.72     755.27       0.00

   19   7.2  0.5 -0.5       0.00    -542.68       0.00    -939.95    -570.22      62.88      -2.13      -3.34     520.38      -0.01
                           -0.00       3.69       1.95      -6.39       7.28      46.64       6.25    -669.07      -3.89      -0.30

   20   8.2  0.5 -0.5       0.00      -1.30       0.00      -2.25      73.48     666.62       1.77     -12.41       0.59       3.43
                           -0.00     -48.17   -1081.11      83.43      46.37      -6.73     669.98       6.41       3.23      -0.02


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -939.95      -2.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.39      83.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       3.59    -542.68      -1.30
                           -1.95    1081.11      -0.00      -0.00      -0.00       0.00      -0.00    -540.54      -3.69      48.17

    3   1.2  1.5 -0.5    -542.68      -1.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.69     -48.17       0.00       0.00       0.00      -0.00      -0.00      96.36      -1.95    1081.11

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       6.22    -939.95      -2.25
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     936.24       6.39     -83.43

    5   1.2  0.5  0.5       0.00       0.00      -0.00      -0.04      10.08      -0.72       0.03       4.11    -570.22      73.48
                           72.86     731.49      -0.00      14.70       0.07       0.34       0.35    -163.46      -7.28     -46.37

    6   2.2  0.5  0.5       0.00       0.00       0.04       0.00      -1.03      -7.51      -0.08      12.05      62.88     666.62
                          665.13     -80.26     -14.70      -0.00       0.48      -0.08       3.16      18.02     -46.64       6.73

    7   3.2  0.5  0.5       0.00       0.00     -10.08       1.03       0.00       0.11     -11.17      -7.94      -2.13       1.77
                           -3.29     -32.76      -0.07      -0.48       0.00      -7.52      -0.10      34.87      -6.25    -669.98

    8   4.2  0.5  0.5       0.00       0.00       0.72       7.51      -0.11       0.00      -0.14     670.59      -3.34     -12.41
                           47.13      -2.25      -0.34       0.08       7.52       0.00       1.02       5.72     669.07      -6.41

    9   5.2  0.5  0.5       0.00       0.00      -0.03       0.08      11.17       0.14       0.00       5.41     520.38       0.59
                           -0.76     236.96      -0.35      -3.16       0.10      -1.02       0.00    -755.27       3.89      -3.23

   10   6.2  0.5  0.5       0.00       0.00      -4.11     -12.05       7.94    -670.59      -5.41      -0.00      -0.01       3.43
                           -3.42      -0.01     163.46     -18.02     -34.87      -5.72     755.27      -0.00       0.30       0.02

   11   7.2  0.5  0.5   18480.60       0.00     570.22     -62.88       2.13       3.34    -520.38       0.01      -0.00       0.02
                            0.00      -0.30       7.28      46.64       6.25    -669.07      -3.89      -0.30       0.00      -3.42

   12   8.2  0.5  0.5       0.00   18480.45     -73.48    -666.62      -1.77      12.41      -0.59      -3.43      -0.02      -0.00
                            0.30      -0.00      46.37      -6.73     669.98       6.41       3.23      -0.02       3.42       0.00

   13   1.2  0.5 -0.5     570.22     -73.48   11200.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.28     -46.37       0.00      -1.01       0.78       4.57       0.01      -3.76     -72.86    -731.49

   14   2.2  0.5 -0.5     -62.88    -666.62       0.00   11200.78       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.64       6.73       1.01       0.00       7.48      -0.43      -0.22       3.28    -665.13      80.26

   15   3.2  0.5 -0.5       2.13      -1.77       0.00       0.00   11200.83       0.00       0.00       0.00       0.00       0.00
                           -6.25    -669.98      -0.78      -7.48      -0.00       0.56      -0.16     669.77       3.29      32.76

   16   4.2  0.5 -0.5       3.34      12.41       0.00       0.00       0.00   11200.79       0.00       0.00       0.00       0.00
                          669.07      -6.41      -4.57       0.43      -0.56      -0.00      14.32       7.63     -47.13       2.25

   17   5.2  0.5 -0.5    -520.38      -0.59       0.00       0.00       0.00       0.00   11200.83       0.00       0.00       0.00
                            3.89      -3.23      -0.01       0.22       0.16     -14.32       0.00      49.43       0.76    -236.96

   18   6.2  0.5 -0.5       0.01      -3.43       0.00       0.00       0.00       0.00       0.00   18480.45       0.00       0.00
                            0.30       0.02       3.76      -3.28    -669.77      -7.63     -49.43      -0.00       3.42       0.01

   19   7.2  0.5 -0.5      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00   18480.60       0.00
                           -0.00      -3.42      72.86     665.13      -3.29      47.13      -0.76      -3.42      -0.00       0.30

   20   8.2  0.5 -0.5       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18480.45
                            3.42      -0.00     731.49     -80.26     -32.76      -2.25     236.96      -0.01      -0.30       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2259.89347958    -0.00043805      -96.14      0.00000000        0.00      0.0000
     2 -2259.89347958    -0.00043805      -96.14      0.00000000        0.00      0.0000
     3 -2259.89347957    -0.00043804      -96.14      0.00000000        0.00      0.0000
     4 -2259.89347957    -0.00043804      -96.14      0.00000000        0.00      0.0000
     5 -2259.84343124     0.04961029    10888.20      0.05004834    10984.34      1.3619
     6 -2259.84343124     0.04961029    10888.20      0.05004834    10984.34      1.3619
     7 -2259.84343117     0.04961036    10888.22      0.05004841    10984.36      1.3619
     8 -2259.84343117     0.04961036    10888.22      0.05004841    10984.36      1.3619
     9 -2259.84193824     0.05110329    11215.88      0.05154134    11312.02      1.4025
    10 -2259.84193824     0.05110329    11215.88      0.05154134    11312.02      1.4025
    11 -2259.84193817     0.05110336    11215.89      0.05154141    11312.03      1.4025
    12 -2259.84193817     0.05110336    11215.89      0.05154141    11312.03      1.4025
    13 -2259.84193808     0.05110345    11215.91      0.05154150    11312.05      1.4025
    14 -2259.84193808     0.05110345    11215.91      0.05154150    11312.05      1.4025
    15 -2259.80886946     0.08417207    18473.63      0.08461011    18569.77      2.3024
    16 -2259.80886946     0.08417207    18473.63      0.08461011    18569.77      2.3024
    17 -2259.80706344     0.08597809    18870.01      0.08641614    18966.15      2.3515
    18 -2259.80706344     0.08597809    18870.01      0.08641614    18966.15      2.3515
    19 -2259.80706301     0.08597852    18870.10      0.08641657    18966.24      2.3515
    20 -2259.80706301     0.08597852    18870.10      0.08641657    18966.24      2.3515


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.097704144  -0.001939523  -0.027845536   0.992159193  -0.001397623   0.020199959  -0.011260029  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.004171641   0.814505452  -0.096360716  -0.000701377   0.003708237   0.000578560   0.000577666  -0.006284179
                         0.003326137   0.567192715  -0.016244214   0.000325328  -0.010615599   0.000109452   0.001513989   0.019180367

    3    1.2  1.5 -0.5   0.992082197   0.001367409   0.000624133  -0.097676366  -0.000081319   0.011244015   0.020181576  -0.001273173
                         0.029993705   0.005157128   0.000456316  -0.002930781   0.000583179  -0.000118643  -0.000285232  -0.001002443

    4    1.2  1.5 -1.5   0.001557412   0.078455178   0.972968449   0.027306936   0.006459927   0.000446958   0.000000000   0.003354254
                         0.001155948   0.058231305   0.194196453   0.005450239  -0.019139166  -0.001324227   0.000000000  -0.010748825

    5    1.2  0.5  0.5  -0.000449559   0.004808584   0.001244705   0.000364549  -0.151355272  -0.019164108   0.042184262   0.128084067
                        -0.000607353   0.003358169   0.000333811  -0.000263416   0.422148661   0.066852398  -0.003474458  -0.401499829

    6    2.2  0.5  0.5   0.000220171  -0.000535511  -0.000226206  -0.000067204  -0.032808789   0.002430551   0.000449083  -0.011172800
                        -0.005477205  -0.000343038   0.000462026  -0.002472260  -0.080672150   0.525205146   0.319064894   0.008604416

    7    3.2  0.5  0.5  -0.004878933  -0.000572214   0.000393045   0.003510997   0.009870060  -0.009068756   0.614940403  -0.059150154
                        -0.000167070  -0.000406082   0.000165587   0.000015469   0.014253064   0.000866247  -0.001227855   0.057593618

    8    4.2  0.5  0.5  -0.000033652   0.000342586   0.001262288   0.000071588   0.508699241   0.035374909   0.007057785   0.286704890
                        -0.000399700  -0.000485001  -0.005882587  -0.000341208   0.177347437   0.049802546   0.022414567   0.093316160

    9    5.2  0.5  0.5  -0.000533062   0.001032802  -0.005783935   0.000211753   0.142980279   0.006173213   0.060238182   0.136309720
                        -0.000018397   0.000686962  -0.001228881  -0.000031938  -0.397553549  -0.034549550  -0.012761925  -0.428076014

   10    6.2  0.5  0.5  -0.001126293  -0.003124671   0.000081035  -0.000232043  -0.004415545   0.000692349  -0.000036128   0.008020568
                         0.024170962   0.004407885   0.000931470  -0.053412805  -0.009980477   0.078734369  -0.132522770   0.007949185

   11    7.2  0.5  0.5   0.034281659   0.000000306  -0.001407359   0.047854041   0.008507099  -0.154590581  -0.002293502   0.004004023
                         0.001051217   0.000066831   0.000033501  -0.000451117  -0.001958660   0.000943584   0.000058247   0.003305334

   12    8.2  0.5  0.5  -0.000034995  -0.033347888   0.000953288   0.000087680  -0.070867547   0.000394401   0.010164417   0.128074248
                        -0.002399714   0.047895733  -0.005795761   0.004718141  -0.024012259  -0.010900340   0.007932919   0.041491055

   13    1.2  0.5 -0.5  -0.005862688  -0.000722970   0.000305939  -0.001285966  -0.069470334   0.448382962   0.421426782  -0.015883002
                        -0.000169331   0.000219761   0.000329675   0.000083727  -0.003221619  -0.008404180  -0.002666137   0.039234093

   14    2.2  0.5 -0.5   0.000634458  -0.003087600  -0.000549803   0.000131397  -0.496846920  -0.065943465  -0.011542045   0.304445600
                         0.000043708   0.004529347   0.002411287   0.000497364  -0.170263005  -0.056884724   0.008102383   0.095475048

   15    3.2  0.5 -0.5   0.000701504  -0.004017294   0.003446114  -0.000417853  -0.003720936   0.010348135  -0.072599133  -0.184356923
                         0.000014959  -0.002773671   0.000672042   0.000085453   0.008315489   0.013909854   0.039308160   0.586656400

   16    4.2  0.5 -0.5   0.000013967  -0.000265242   0.000003418  -0.000086467  -0.035874324   0.005352586  -0.003672994   0.019294502
                        -0.000593630   0.000300897   0.000348620  -0.006015873  -0.049444015   0.538700642  -0.301486499   0.013414445

   17    5.2  0.5 -0.5  -0.001238754  -0.000439006   0.000201406   0.005912590   0.034709382  -0.422401137   0.449246753  -0.030126908
                        -0.000063925  -0.000302930   0.000072767  -0.000073015   0.005199884   0.008334489  -0.002601557   0.053701720

   18    6.2  0.5 -0.5  -0.000118012   0.013501404  -0.010682104  -0.000261785  -0.074378253  -0.008044269  -0.005199043  -0.126495486
                         0.005401768  -0.020080240   0.052334255   0.000897592  -0.025835165  -0.007375412  -0.010024420  -0.039511742

   19    7.2  0.5 -0.5  -0.000040076   0.028154255   0.046840131   0.001373580  -0.050331949  -0.004576363  -0.001962512   0.000738815
                         0.000053482   0.019587627   0.009808918   0.000308317   0.146170562   0.007433975  -0.004806867  -0.002172026

   20    8.2  0.5 -0.5  -0.001767750  -0.001458322   0.001009471   0.000199562   0.010454042  -0.000087893  -0.001455282   0.004544883
                         0.058334878   0.001906083  -0.004609719  -0.005870245   0.003112229  -0.074825063  -0.134619474   0.012066093


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000049  -0.000000020  -0.000001188   0.000000046   0.000000141   0.000000186   0.000010433  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000001040  -0.000000391   0.000000043  -0.000000089  -0.000000281   0.000000338   0.000000032   0.000006610
                        -0.000000008   0.000000412  -0.000000041   0.000000101  -0.000000044   0.000000028   0.000000022  -0.000000311

    3    1.2  1.5 -0.5  -0.000000389   0.000000051  -0.000000135  -0.000000059   0.000000339   0.000000284   0.000006617  -0.000000031
                         0.000000414   0.000001039   0.000000002   0.000000006   0.000000011  -0.000000011  -0.000000091   0.000000024

    4    1.2  1.5 -1.5  -0.000000001  -0.000000003  -0.000000030  -0.000000768  -0.000000185   0.000000141   0.000000000   0.000010414
                        -0.000000020  -0.000000048   0.000000035   0.000000907  -0.000000021   0.000000016   0.000000000  -0.000000634

    5    1.2  0.5  0.5  -0.381537894   0.097883591   0.006246022   0.349930778  -0.256652797   0.281135799   0.000000044   0.000017034
                         0.004587051  -0.103336392  -0.053466168  -0.398688573  -0.070393518  -0.003129223  -0.000002105  -0.000000697

    6    2.2  0.5  0.5   0.175000287   0.676837700   0.000572189  -0.008208862   0.008254913  -0.008582180  -0.000000142  -0.000001802
                         0.214751794  -0.043345560   0.234737637  -0.025963780  -0.063600395  -0.056447213  -0.000019202   0.000001497

    7    3.2  0.5  0.5  -0.052963839   0.001189817   0.171409598  -0.010528257   0.522774986   0.486160589   0.000000059  -0.000000019
                         0.083840727   0.224348308  -0.001073496  -0.009348923   0.017861073  -0.017723046   0.000000092   0.000000180

    8    4.2  0.5  0.5   0.000081704  -0.139155415   0.012086421   0.460024710  -0.003480212   0.000837289  -0.000000010  -0.000000952
                         0.433480776  -0.128893108   0.041435881   0.402155979   0.019242409  -0.021921409  -0.000001363  -0.000019346

    9    5.2  0.5  0.5  -0.106973153   0.035318669   0.001682118  -0.333412707  -0.387741015   0.419302521   0.000000022  -0.000014198
                         0.005035272  -0.025482516   0.019346246   0.378837262  -0.063976896   0.036885871   0.000000021   0.000000653

   10    6.2  0.5  0.5   0.000001340   0.000003427  -0.000000064   0.000000077   0.000000040  -0.000000033   0.003971155  -0.001398517
                         0.000000887   0.000000002  -0.000006598   0.000000579  -0.000000413  -0.000000417   0.575062617  -0.051930183

   11    7.2  0.5  0.5   0.000000935  -0.000000008   0.000007692  -0.000000083  -0.000002323  -0.000002339   0.577195473  -0.000680124
                        -0.000001380  -0.000003487  -0.000000064   0.000000003  -0.000000062   0.000000057  -0.003985790   0.000019101

   12    8.2  0.5  0.5  -0.000000172   0.000002502  -0.000000259   0.000000657  -0.000000254   0.000000163  -0.000371630  -0.027144731
                        -0.000007344   0.000002698   0.000000251   0.000000537   0.000001598  -0.000002033  -0.051937161  -0.574441563

   13    1.2  0.5 -0.5  -0.097567700   0.017246496  -0.530395100   0.044828904  -0.278926224  -0.263027575  -0.000017045   0.000000172
                         0.103634701   0.381175503   0.009228516   0.029799551  -0.035317011   0.040526536   0.000000339   0.000002098

   14    2.2  0.5 -0.5  -0.004555794  -0.224411088  -0.014501692  -0.178718607   0.014992561   0.000914165   0.000001889   0.000001025
                         0.678208931  -0.162428745  -0.023047868  -0.152189833  -0.055092330   0.064127359   0.000001385   0.000019175

   15    3.2  0.5 -0.5   0.224048986  -0.080673613  -0.000326267   0.111631957  -0.480929129   0.521379150   0.000000030   0.000000053
                        -0.011646070   0.057673251  -0.014076224  -0.130079626  -0.073303461   0.042148375   0.000000179  -0.000000095

   16    4.2  0.5 -0.5  -0.136642481  -0.432775595   0.009420104  -0.023799064   0.001679655  -0.001252786  -0.000000225   0.000000073
                        -0.131554153   0.024715879   0.610952884  -0.036008587  -0.021872997  -0.019514423  -0.000019368   0.000001361

   17    5.2  0.5 -0.5  -0.023420367   0.001092418   0.504571318  -0.013672386  -0.420767557  -0.392517551   0.000014211   0.000000021
                         0.036718571   0.107086022  -0.009459860  -0.013790309  -0.011394493   0.019134009  -0.000000211  -0.000000022

   18    6.2  0.5 -0.5   0.000000198  -0.000000962   0.000000392   0.000004992   0.000000080  -0.000000007  -0.001757551  -0.030957151
                         0.000003421  -0.000001288   0.000000433   0.000004314  -0.000000411   0.000000415  -0.051919272  -0.574242491

   19    7.2  0.5 -0.5  -0.000003482   0.000001324   0.000000056   0.000005022   0.000002317  -0.000002315   0.000680028   0.576372299
                         0.000000191  -0.000001013  -0.000000061  -0.000005827   0.000000325  -0.000000204  -0.000022235  -0.031072061

   20    8.2  0.5 -0.5   0.000002837   0.000007342  -0.000000015  -0.000000359   0.000000071  -0.000000069  -0.007788627   0.002782967
                         0.000002344  -0.000000248   0.000000848   0.000000036  -0.000002038  -0.000001617  -0.575029810   0.051863878


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.000000000   0.034692115  -0.059620272   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.058468577   0.000469922   0.000273437  -0.032901978
                        -0.011652845  -0.000193624  -0.000112666   0.010996653

    3    1.2  1.5 -0.5   0.000499981  -0.059613049  -0.034687854  -0.000295295
                         0.000091299   0.000804779   0.000468284  -0.000016195

    4    1.2  1.5 -1.5  -0.033928350   0.000000000   0.000000000  -0.056285354
                         0.007239467  -0.000000000  -0.000000000   0.019660512

    5    1.2  0.5  0.5   0.077930278   0.011833249   0.000565797  -0.084694753
                        -0.015964991   0.006243180   0.011399801   0.027792377

    6    2.2  0.5  0.5  -0.009400782  -0.000386243   0.000648437   0.007105025
                        -0.003191579   0.059542273   0.103896352  -0.009661806

    7    3.2  0.5  0.5  -0.017333116   0.119473504   0.000343130  -0.000191864
                         0.002480746  -0.001072781  -0.000513465  -0.000981612

    8    4.2  0.5  0.5   0.011420870   0.001356326   0.000052324   0.033186737
                         0.059440950   0.004209028   0.007362050   0.098710631

    9    5.2  0.5  0.5   0.087030250   0.012896672   0.000185497   0.076726196
                        -0.017348776  -0.000217327  -0.000112636  -0.025577624

   10    6.2  0.5  0.5  -0.011443915   0.004464326  -0.002700117   0.011207396
                        -0.063043000   0.690485186  -0.396004688   0.035549361

   11    7.2  0.5  0.5  -0.002651792  -0.002719629   0.799566283   0.001481903
                         0.000668413   0.000063578  -0.005411388  -0.000579469

   12    8.2  0.5  0.5  -0.134579976  -0.002655866   0.000371133   0.126931432
                        -0.674733574  -0.067008458   0.032103478   0.379590025

   13    1.2  0.5 -0.5  -0.010269923   0.079546139   0.089122145  -0.003225075
                         0.008575067  -0.000648789  -0.001691345  -0.010948721

   14    2.2  0.5 -0.5   0.012802877  -0.008527808  -0.009893697  -0.033648924
                         0.058150819   0.005083047  -0.006778395  -0.098298639

   15    3.2  0.5 -0.5  -0.117067099  -0.017469194  -0.000142566   0.000493258
                         0.023882279   0.001190902  -0.000989974   0.000371592

   16    4.2  0.5 -0.5  -0.000448136  -0.001234560   0.001220631  -0.002378329
                         0.004399399  -0.060515606   0.104132888  -0.006967500

   17    5.2  0.5 -0.5  -0.012658097   0.088734535  -0.080868976   0.000212264
                         0.002478703  -0.001194428   0.001154484   0.000045166

   18    6.2  0.5 -0.5   0.139722739   0.001963689   0.001142336   0.128038294
                         0.676215408   0.064043165   0.037256648   0.374744178

   19    7.2  0.5 -0.5   0.002673022  -0.002732895  -0.001590098   0.756626237
                        -0.000505347  -0.000100328  -0.000058380  -0.258558040

   20    8.2  0.5 -0.5  -0.011385768   0.009184642   0.005343043  -0.010236140
                        -0.066087453   0.687962795   0.400214477  -0.030430125


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.955%   0.000%   0.078%  98.438%   0.000%   0.041%   0.013%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.003%  98.513%   0.955%   0.000%   0.013%   0.000%   0.000%   0.041%   0.000%   0.000%
    3    1.2  1.5 -0.5  98.513%   0.003%   0.000%   0.955%   0.000%   0.013%   0.041%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.955%  98.438%   0.078%   0.041%   0.000%   0.000%   0.013%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%  20.112%   0.484%   0.179%  17.761%  14.559%   2.026%
    6    2.2  0.5  0.5   0.003%   0.000%   0.000%   0.001%   0.758%  27.585%  10.180%   0.020%   7.674%  45.999%
    7    3.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.030%   0.008%  37.815%   0.682%   0.983%   5.033%
    8    4.2  0.5  0.5   0.000%   0.000%   0.004%   0.000%  29.023%   0.373%   0.055%   9.091%  18.791%   3.598%
    9    5.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%  17.849%   0.123%   0.379%  20.183%   1.147%   0.190%
   10    6.2  0.5  0.5   0.059%   0.003%   0.000%   0.285%   0.012%   0.620%   1.756%   0.013%   0.000%   0.000%
   11    7.2  0.5  0.5   0.118%   0.000%   0.000%   0.229%   0.008%   2.390%   0.001%   0.003%   0.000%   0.000%
   12    8.2  0.5  0.5   0.001%   0.341%   0.003%   0.002%   0.560%   0.012%   0.017%   1.812%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.484%  20.112%  17.761%   0.179%   2.026%  14.559%
   14    2.2  0.5 -0.5   0.000%   0.003%   0.001%   0.000%  27.585%   0.758%   0.020%  10.180%  45.999%   7.674%
   15    3.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.008%   0.030%   0.682%  37.815%   5.033%   0.983%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.373%  29.023%   9.091%   0.055%   3.598%  18.791%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.123%  17.849%  20.183%   0.379%   0.190%   1.147%
   18    6.2  0.5 -0.5   0.003%   0.059%   0.285%   0.000%   0.620%   0.012%   0.013%   1.756%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.118%   0.229%   0.000%   2.390%   0.008%   0.003%   0.001%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.341%   0.001%   0.002%   0.003%   0.012%   0.560%   1.812%   0.017%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.120%   0.355%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.355%   0.000%   0.000%   0.120%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.355%   0.120%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.120%   0.000%   0.000%   0.355%
    5    1.2  0.5  0.5   0.290%  28.140%   7.083%   7.905%   0.000%   0.000%   0.633%   0.018%   0.013%   0.795%
    6    2.2  0.5  0.5   5.510%   0.074%   0.411%   0.326%   0.000%   0.000%   0.010%   0.355%   1.079%   0.014%
    7    3.2  0.5  0.5   2.938%   0.020%  27.361%  23.667%   0.000%   0.000%   0.031%   1.428%   0.000%   0.000%
    8    4.2  0.5  0.5   0.186%  37.335%   0.038%   0.048%   0.000%   0.000%   0.366%   0.002%   0.005%   1.085%
    9    5.2  0.5  0.5   0.038%  25.468%  15.444%  17.718%   0.000%   0.000%   0.788%   0.017%   0.000%   0.654%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.071%   0.270%   0.411%  47.679%  15.683%   0.139%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.317%   0.000%   0.001%   0.001%  63.934%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.270%  33.072%  47.338%   0.450%   0.103%  16.020%
   13    1.2  0.5 -0.5  28.140%   0.290%   7.905%   7.083%   0.000%   0.000%   0.018%   0.633%   0.795%   0.013%
   14    2.2  0.5 -0.5   0.074%   5.510%   0.326%   0.411%   0.000%   0.000%   0.355%   0.010%   0.014%   1.079%
   15    3.2  0.5 -0.5   0.020%   2.938%  23.667%  27.361%   0.000%   0.000%   1.428%   0.031%   0.000%   0.000%
   16    4.2  0.5 -0.5  37.335%   0.186%   0.048%   0.038%   0.000%   0.000%   0.002%   0.366%   1.085%   0.005%
   17    5.2  0.5 -0.5  25.468%   0.038%  17.718%  15.444%   0.000%   0.000%   0.017%   0.788%   0.654%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.270%  33.071%  47.679%   0.411%   0.139%  15.683%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.317%   0.001%   0.001%   0.000%  63.934%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.072%   0.270%   0.450%  47.338%  16.020%   0.103%


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
              1      24      265.03       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      676.37       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     33524.85  30201.15      8.94   3182.68    125.66      4.59      0.27      1.24
 REAL TIME  *     33859.62 SEC
 DISK USED  *       723.86 MB (local),        9.29 GB (total)
 SF USED    *         6.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2259.807063013047

              CI              CI           MULTI         RHF-SCF
  -2259.76377603  -2259.84959112  -2259.01428474  -2259.09416026
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
