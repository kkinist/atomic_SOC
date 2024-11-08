
 Working directory              : /wrk/irikura/molpro.OGrBdTmotb/
 Global scratch directory       : /wrk/irikura/molpro.OGrBdTmotb/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OGrBdTmotb/

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
 ND=5
 PAR=2                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,9
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
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Aug-24          TIME: 16:25:32  
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

     27.525 MB (compressed) written to integral file ( 14.5%)

     Node minimum: 1.311 MB, node maximum: 4.194 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189026. INTEGRALS IN      1 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.14 SEC
 SORT2 READ     2334228. AND WROTE    11712051. INTEGRALS IN     96 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.46      1.18
 REAL TIME  *         2.29 SEC
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
   9    -2224.45353352       0.00000000     0.36D-07     0.23D-06     0     0       0.01      0.09    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2224.453533522606
  RHF One-electron energy           -3106.800285298008
  RHF Two-electron energy             882.346751775402
  RHF Kinetic energy                 2334.570791239976
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
    4.1     2.00000    -2.12352     1  1  d2-  0.99655
    5.1     2.00000    -2.12352     1  1  d2+  0.99678
    6.1     2.00000    -2.12352     1  1  d1+  0.94164    1  1  d1- -0.34746
    7.1     2.00000    -2.12352     1  1  d1+  0.34726    1  1  d1-  0.94176
    8.1     2.00000    -2.12352     1  1  d0   1.00384
    9.1     2.00000    -0.68235     1  3  s    0.34769    1  4  s    1.14791    1  7  s   -0.26036
    1.2     2.00000   -50.02660     1  1  py   1.02057
    2.2     2.00000   -50.02660     1  1  px   1.02057
    3.2     2.00000   -50.02660     1  1  pz   1.02057
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
 CPU TIMES  *         1.55      0.09      1.18
 REAL TIME  *         3.36 SEC
 DISK USED  *        30.40 MB (local),      425.96 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      98 (   45   53)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             5
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.107D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.280D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.278D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   4 6 3 5 2 1 6 4 2 3   5 1 6 4 3 5 2 3 5 6   4 2 1 2 3 5 6 4 812
                                        91115141310 7 1 2 5   3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.292D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.429D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.327D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.494D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.494D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.527D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.727D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.218D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 1 3 2   1 3 1 2 3 7 9 810 6   4 5 2 1 3 7 9 5 4 6  10 8 1 2 3 6 5 4 9 7
                                        810 810 6 4 5 9 7 2   1 3 6 9 7 810 5 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  908  ( 26 closed/active, 678 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    969
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -2224.39740577   -2224.39800549   -0.00059972    0.01982981 0.00000372 0.00000000  0.37E-01      0.36
   2    4    8    0  -2224.39800769   -2224.39800772   -0.00000002    0.00011457 0.00000001 0.00000000  0.22E-03      0.66
   3    2    4    0  -2224.39800772   -2224.39800772   -0.00000000    0.00000001 0.00000001 0.00000000  0.17E-07      0.87

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.91E-08)
                       Final energy:  -2224.39800772
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2224.452925662099
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           881.96964435
 Virial ratio                                    1.95285482
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2224.387024126837
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           882.03554589
 Virial ratio                                    1.95282659
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2224.387024126797
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           882.03554589
 Virial ratio                                    1.95282659
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2224.387024126471
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           882.03554589
 Virial ratio                                    1.95282659
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2224.387024126308
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           882.03554589
 Virial ratio                                    1.95282659
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2224.387024126262
 Nuclear energy                                  0.00000000
 Kinetic energy                               2334.51399865
 One electron energy                         -3106.42257002
 Two electron energy                           882.03554589
 Virial ratio                                    1.95282659
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.623997114474
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000015
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.375998156486
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.486835262592
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999999985
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.513167885855
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.889167622934
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.110833957659
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 6 5 3 1 1   4 2 6 3 5 1 4 6 2 5   3 1 4 6 2 3 5 4 2 6   5 3 1 2 4 6 3 5 812
                                        911 714151310 1 2 5   3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 2 1 3 3   1 2 3 1 2 6 4 5 810   9 7 3 1 2 6 4 510 8   7 9 1 2 3 6 4 5 7 9
                                       10 8 6 4 810 5 9 7 1   2 3 6 9 7 810 4 5 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.69769     1  1  s    0.74069    1  2  s   -1.38205    1  3  s   -2.14452    1  4  s   -0.53659
                                    1  5  s    0.59354    1  6  s    0.31192    1  7  s    1.60206    1  8  s    0.54321
    2.1     2.00000   -55.85199     1  2  s    2.35584    1  3  s    2.11404    1  4  s    0.51034    1  5  s   -0.56820
                                    1  6  s   -0.29606    1  7  s   -1.63508    1  8  s   -0.46807
    3.1     2.00000    -7.98438     1  2  s   -0.71392    1  4  s   -0.29574    1  5  s    0.32719    1  7  s    0.92553
    4.1     2.00000    -2.13589     1  1  d1+  1.00395
    5.1     2.00000    -2.13589     1  1  d0   1.00395
    6.1     2.00000    -2.13589     1  1  d1-  1.00395
    7.1     2.00000    -2.13589     1  1  d2+  1.00395
    8.1     2.00000    -2.13589     1  1  d2-  1.00395
    9.1     2.00000    -0.68995     1  3  s    0.34802    1  4  s    1.14958    1  7  s   -0.26195
    1.2     2.00000   -50.03935     1  1  px   1.02057
    2.2     2.00000   -50.03935     1  1  py   1.02057
    3.2     2.00000   -50.03935     1  1  pz   1.02057
    4.2     2.00000    -5.88644     1  2  pz   0.92911
    5.2     2.00000    -5.88644     1  2  px   0.92911
    6.2     2.00000    -5.88644     1  2  py   0.92911
    7.2     1.00000    -0.15958     1  3  py   0.97357
    8.2     1.00000    -0.15958     1  3  px   0.97357
    9.2     1.00000    -0.15958     1  3  pz   0.97357
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:    -2224.45292566
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 aab         -0.13591197      0.00000000      0.00000000      0.00000000      0.80510517
 2 baa          0.76519766      0.00000000      0.00000000      0.00000000     -0.28484853
 2 2a0         -0.00000000     -0.00000000      0.70710680      0.00000159      0.00000000
 2 a20          0.00000000      0.00000000     -0.00000000      0.70710680     -0.00000000
 2 20a         -0.00000000      0.70710679      0.00000021      0.00000000      0.00000000
 2 02a         -0.00000000     -0.70710677     -0.00000021     -0.00000000      0.00000000
 2 a02          0.00000000      0.00000000      0.00000000     -0.70710677     -0.00000000
 2 0a2          0.00000000      0.00000000     -0.70710676     -0.00000159     -0.00000000
 2 aba         -0.62928569     -0.00000000     -0.00000000     -0.00000000     -0.52025664
 
 Energy:    -2224.38702413  -2224.38702413  -2224.38702413  -2224.38702413  -2224.38702413
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       42.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.43      0.88      0.09      1.18
 REAL TIME  *         4.48 SEC
 DISK USED  *        43.44 MB (local),      582.52 MB (total)
 SF USED    *        32.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2224.452926  -0.0
    -2224.387024   6.0
    -2224.387024   6.0
    -2224.387024   6.0
    -2224.387024   6.0
    -2224.387024   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 33
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:      166 conf      166 CSFs
 N-1 el internal:      238 conf      673 CSFs
 N-2 el internal:       88 conf      793 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      98 (  45  53 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.83 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.45292566

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     163
 Number of N-1 electron functions:     673

 Number of internal configurations:                   82
 Number of singly external configurations:         33093
 Number of doubly external configurations:        391626
 Total number of contracted configurations:       424801
 Total number of uncontracted configurations:    1928695

 Diagonal Coupling coefficients finished.               Storage:    276275 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    460087 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.45292566    -0.00000000    -0.90937036  0.38D-01  0.73D-01     0.11
    2     1     1     1.07125222    -0.73163877 -2225.18456443    -0.73163877    -0.01721799  0.23D-02  0.99D-03     0.63
    3     1     1     1.06096310    -0.74789435 -2225.20082001    -0.01625558    -0.00042686  0.56D-04  0.29D-04     1.14
    4     1     1     1.05987767    -0.74828906 -2225.20121473    -0.00039472    -0.00001527  0.21D-05  0.88D-06     1.66
    5     1     1     1.05994277    -0.74830377 -2225.20122943    -0.00001471    -0.00000046  0.51D-07  0.35D-07     2.19
    6     1     1     1.05997544    -0.74830424 -2225.20122990    -0.00000047    -0.00000001  0.13D-08  0.13D-08     2.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  45.6%
 P   1.5%  19.1%  14.0%

 Initialization:   3.7%
 Other:           15.1%

 Total CPU:        2.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///           0.9712925


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97129245 (fixed)   0.97129245 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000961   -0.00004831   -0.00005236
 Singles      0.01450959   -0.04487970   -0.05258021
 Pairs        0.04546642   -0.70337623   -0.69567167
 Total        1.05998562   -0.74830424   -0.74830424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.45292566
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.84891128
 One electron energy                -3105.36450760
 Two electron energy                  880.16327770
 Virial quotient                       -0.95303864
 Correlation energy                    -0.74830424
 !CI(SD) STATE 1.2 Energy           -2225.201229900127

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.24611739 (Davidson, fixed reference)
 Cluster corrected energies         -2225.24611739 (Davidson, relaxed reference)

 Cluster corrected energies         -2225.24364989 (Pople, fixed reference)
 Cluster corrected energies         -2225.24364989 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       42.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       6        4.54       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.23      2.79      0.88      0.09      1.18
 REAL TIME  *         7.48 SEC
 DISK USED  *        47.05 MB (local),      625.76 MB (total)
 SF USED    *        58.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2225.24611739  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 33
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:      286 conf      488 CSFs
 N-1 el internal:      613 conf     1943 CSFs
 N-2 el internal:      637 conf     3149 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      98 (  45  53 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.38702413
     2     -2224.38702413
     3     -2224.38702413
     4     -2224.38702413
     5     -2224.38702413

 Number of blocks in overlap matrix:   606   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     666
 Number of N-1 electron functions:    1943

 Number of internal configurations:                  248
 Number of singly external configurations:         95331
 Number of doubly external configurations:       1601868
 Total number of contracted configurations:      1697447
 Total number of uncontracted configurations:    7643990

 Diagonal Coupling coefficients finished.               Storage:    547885 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    562370 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.38702413     0.00000000    -0.92099827  0.42D-01  0.75D-01     0.18
    1     2     2     1.00000000     0.00000000 -2224.38702413    -0.00000000    -0.92064216  0.42D-01  0.75D-01     0.18
    1     3     3     1.00000000     0.00000000 -2224.38702413    -0.00000000    -0.92077494  0.42D-01  0.75D-01     0.18
    1     4     4     1.00000000     0.00000000 -2224.38702413    -0.00000000    -0.92101263  0.43D-01  0.75D-01     0.18
    1     5     5     1.00000000     0.00000000 -2224.38702413     0.00000000    -0.92170311  0.43D-01  0.75D-01     0.18
    2     1     1     1.07528357    -0.74067846 -2225.12770259    -0.74067846    -0.01798818  0.24D-02  0.11D-02     7.60
    2     2     2     1.07534343    -0.74064745 -2225.12767157    -0.74064745    -0.01802601  0.24D-02  0.11D-02     7.60
    2     3     3     1.07538076    -0.74059695 -2225.12762107    -0.74059695    -0.01809905  0.24D-02  0.11D-02     7.60
    2     4     4     1.07564277    -0.74044935 -2225.12747348    -0.74044935    -0.01822543  0.25D-02  0.11D-02     7.60
    2     5     5     1.07606585    -0.74017804 -2225.12720216    -0.74017804    -0.01852516  0.26D-02  0.12D-02     7.60
    3     1     1     1.06562806    -0.75745022 -2225.14447435    -0.01677176    -0.00040545  0.48D-04  0.32D-04    14.65
    3     2     2     1.06563230    -0.75744957 -2225.14447370    -0.01680213    -0.00040580  0.48D-04  0.32D-04    14.65
    3     3     3     1.06562018    -0.75744766 -2225.14447179    -0.01685071    -0.00040721  0.49D-04  0.32D-04    14.65
    3     4     4     1.06564405    -0.75744529 -2225.14446942    -0.01699594    -0.00041316  0.49D-04  0.33D-04    14.65
    3     5     5     1.06563386    -0.75744381 -2225.14446794    -0.01726577    -0.00041366  0.49D-04  0.33D-04    14.65
    4     1     1     1.06461667    -0.75784067 -2225.14486479    -0.00039044    -0.00001694  0.25D-05  0.12D-05    21.74
    4     2     2     1.06461782    -0.75784063 -2225.14486476    -0.00039105    -0.00001698  0.25D-05  0.12D-05    21.74
    4     3     3     1.06461531    -0.75784052 -2225.14486464    -0.00039286    -0.00001711  0.26D-05  0.12D-05    21.74
    4     4     4     1.06461562    -0.75784033 -2225.14486446    -0.00039504    -0.00001742  0.26D-05  0.12D-05    21.74
    4     5     5     1.06461844    -0.75784011 -2225.14486423    -0.00039629    -0.00001761  0.27D-05  0.12D-05    21.74
    5     1     1     1.06462903    -0.75785701 -2225.14488113    -0.00001634    -0.00000062  0.94D-07  0.47D-07    28.83
    5     2     2     1.06462921    -0.75785700 -2225.14488113    -0.00001637    -0.00000062  0.94D-07  0.48D-07    28.83
    5     3     3     1.06462996    -0.75785700 -2225.14488112    -0.00001648    -0.00000062  0.95D-07  0.48D-07    28.83
    5     4     4     1.06463043    -0.75785700 -2225.14488112    -0.00001666    -0.00000063  0.96D-07  0.49D-07    28.83
    5     5     5     1.06462885    -0.75785698 -2225.14488111    -0.00001688    -0.00000064  0.98D-07  0.50D-07    28.83
    6     1     1     1.06462345    -0.75785764 -2225.14488177    -0.00000063    -0.00000002  0.21D-08  0.25D-08    35.93
    6     2     2     1.06462331    -0.75785764 -2225.14488177    -0.00000063    -0.00000002  0.21D-08  0.25D-08    35.93
    6     3     3     1.06462321    -0.75785764 -2225.14488177    -0.00000064    -0.00000002  0.21D-08  0.25D-08    35.93
    6     4     4     1.06462335    -0.75785764 -2225.14488177    -0.00000064    -0.00000002  0.20D-08  0.25D-08    35.93
    6     5     5     1.06462366    -0.75785764 -2225.14488176    -0.00000065    -0.00000002  0.22D-08  0.26D-08    35.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   1.5%
 P   0.3%  17.7%  29.0%

 Initialization:   0.4%
 Other:           50.7%

 Total CPU:       35.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\          -0.0000000   0.0000000   0.0000000   0.9114833   0.3291855
 2222222222/\/           0.0000000   0.0000000  -0.0000000  -0.3291855   0.9114831
 22222222220/2           0.0000000  -0.6852610   0.0000000   0.0000000  -0.0000000
 2222222222/02           0.0000000  -0.0000000   0.6852610  -0.0000000  -0.0000000
 222222222202/          -0.6852610  -0.0000000   0.0000000   0.0000000  -0.0000000
 2222222222/20           0.0000000  -0.0000000  -0.6852608   0.0000000  -0.0000000
 22222222222/0          -0.0000000   0.6852607  -0.0000000  -0.0000000  -0.0000000
 222222222220/           0.6852607   0.0000000   0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.969105   -0.000000    0.000000   -0.000000
 2           0.000000    0.000000    0.969105    0.000000    0.000000
 3           0.000000   -0.000000   -0.000000    0.969105    0.000000
 4          -0.172882    0.000000   -0.000000   -0.000000    0.953560
 5           0.953560    0.000000   -0.000000    0.000000    0.172882

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969105   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.969105    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.969105   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.969105    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.969105


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96910514 (fixed)   0.96910514 (relaxed)   0.96910514 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014318   -0.00043856   -0.66401838
 Singles      0.01754008   -0.05093539   -0.06031856
 Pairs        0.04709263   -0.00000000   -0.03352070
 Total        1.06477589   -0.05137395   -0.75785764
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38702413
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83500297
 One electron energy                -3105.22908295
 Two electron energy                  880.08420119
 Virial quotient                       -0.95302018
 Correlation energy                    -0.75785764
 !MRCI STATE 1.2 Energy             -2225.144881765711

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19397267 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19397267 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19397267 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19198924 (Pople, fixed reference)
 Cluster corrected energies         -2225.19198924 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19198924 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96910520 (fixed)   0.96910520 (relaxed)   0.96910520 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014318   -0.00043856   -0.66401853
 Singles      0.01754002   -0.05093533   -0.06031853
 Pairs        0.04709254   -0.00000000   -0.03352059
 Total        1.06477575   -0.05137389   -0.75785764
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38702413
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83499877
 One electron energy                -3105.22908352
 Two electron energy                  880.08420176
 Virial quotient                       -0.95302018
 Correlation energy                    -0.75785764
 !MRCI STATE 2.2 Energy             -2225.144881765543

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19397256 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19397256 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19397256 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19198913 (Pople, fixed reference)
 Cluster corrected energies         -2225.19198913 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19198913 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96910525 (fixed)   0.96910525 (relaxed)   0.96910525 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014318   -0.00043856   -0.66401879
 Singles      0.01753988   -0.05093511   -0.06031841
 Pairs        0.04709259    0.00000000   -0.03352044
 Total        1.06477565   -0.05137367   -0.75785764
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38702413
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83499482
 One electron energy                -3105.22908213
 Two electron energy                  880.08420036
 Virial quotient                       -0.95302019
 Correlation energy                    -0.75785764
 !MRCI STATE 3.2 Energy             -2225.144881765412

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19397248 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19397248 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19397248 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19198905 (Pople, fixed reference)
 Cluster corrected energies         -2225.19198905 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19198905 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95355991 (fixed)   0.96910519 (relaxed)   0.96910519 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014318   -0.00043856   -0.01115698
 Singles      0.01754010   -0.05093523   -0.06031857
 Pairs        0.04709251   -0.69515124   -0.68638209
 Total        1.06477578   -0.74652503   -0.75785764
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38702413
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83497723
 One electron energy                -3105.22910409
 Two electron energy                  880.08422232
 Virial quotient                       -0.95302019
 Correlation energy                    -0.75785764
 !MRCI STATE 4.2 Energy             -2225.144881765410

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19397259 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19397259 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19397259 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19198916 (Pople, fixed reference)
 Cluster corrected energies         -2225.19198916 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19198916 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95355977 (fixed)   0.96910504 (relaxed)   0.96910504 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014318   -0.00043856   -0.54565280
 Singles      0.01754039   -0.05093577   -0.06031879
 Pairs        0.04709252   -0.12603232   -0.15188605
 Total        1.06477610   -0.17740665   -0.75785764
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.38702413
 Nuclear energy                         0.00000000
 Kinetic energy                      2334.83498197
 One electron energy                -3105.22906068
 Two electron energy                  880.08417891
 Virial quotient                       -0.95302019
 Correlation energy                    -0.75785764
 !MRCI STATE 5.2 Energy             -2225.144881764689

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.19397283 (Davidson, fixed reference)
 Cluster corrected energies         -2225.19397283 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.19397283 (Davidson, rotated reference)

 Cluster corrected energies         -2225.19198940 (Pople, fixed reference)
 Cluster corrected energies         -2225.19198940 (Pople, relaxed reference)
 Cluster corrected energies         -2225.19198940 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       42.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       7       69.97       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        43.01     37.77      2.79      0.88      0.09      1.18
 REAL TIME  *        50.14 SEC
 DISK USED  *       112.48 MB (local),        1.38 GB (total)
 SF USED    *       677.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2225.19397267  AU                              
 SETTING HLSDIAG(3)     =     -2225.19397256  AU                              
 SETTING HLSDIAG(4)     =     -2225.19397248  AU                              
 SETTING HLSDIAG(5)     =     -2225.19397259  AU                              
 SETTING HLSDIAG(6)     =     -2225.19397283  AU                              


         HLSDIAG
    -2225.246117
    -2225.193973
    -2225.193973
    -2225.193972
    -2225.193973
    -2225.193973
                                                  

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       7.72 sec

 CPU time:      7.72 sec, REAL time:      8.24 sec


 SORTLS1 read    14245904. and wrote    14245904. SO integrals in    72 records. CPU time:      0.15 sec, REAL time:      0.23 sec
 SORTLS2 read    14245904. and wrote    69083406. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:    44.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    44.8 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       42.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7       69.97       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        52.08      9.00     37.77      2.79      0.88      0.09      1.18
 REAL TIME  *        59.91 SEC
 DISK USED  *       112.76 MB (local),        2.13 GB (total)
 SF USED    *       677.77 MB
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

 Original energies:  -2225.201230
 Replaced energies:  -2225.246117

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:  -2225.144882  -2225.144882  -2225.144882  -2225.144882  -2225.144882
 Replaced energies:  -2225.193973  -2225.193973  -2225.193972  -2225.193973  -2225.193973



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2225.24611739

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11444.44       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -1.26       3.47       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   11444.47       0.00       0.00       0.00       1.84
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       1.85      -0.00      -0.00      -0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11444.48       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -1.85      -0.00       0.00      -0.00      -1.85

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11444.46       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       1.26       0.00      -0.00      -0.00       0.00      -0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11444.41      -0.00
                           -0.00       0.00       0.00      -0.00      -3.47       0.00       0.00      -0.00       0.00      -0.00

   10   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       1.84       0.00      -0.00      -0.00   11444.44
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       1.85       0.00       0.00      -0.00

   11   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -1.84       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       2.38       2.82      -0.00

   12   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       3.64      -0.65       0.00
                           -0.00       0.00      -0.00      -0.00      -1.85      -0.00       0.00       0.00       0.00      -0.00

   13   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -3.64       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -2.38      -0.00       0.00      -0.00      -1.26

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.65      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -2.82      -0.00       0.00       0.00       3.47


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

    5   1.2  0.5  0.5      -1.84      -0.00       0.00       0.00
                            0.00       1.85       0.00       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       2.38       2.82

    7   3.2  0.5  0.5      -0.00       0.00      -3.64       0.65
                           -0.00      -0.00       0.00       0.00

    8   4.2  0.5  0.5      -0.00       3.64       0.00      -0.00
                           -2.38      -0.00      -0.00      -0.00

    9   5.2  0.5  0.5      -0.00      -0.65       0.00      -0.00
                           -2.82      -0.00       0.00      -0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       1.26      -3.47

   11   2.2  0.5 -0.5   11444.47       0.00       0.00       0.00
                            0.00      -1.85       0.00       0.00

   12   3.2  0.5 -0.5       0.00   11444.48       0.00       0.00
                            1.85       0.00      -0.00       0.00

   13   4.2  0.5 -0.5       0.00       0.00   11444.46       0.00
                           -0.00       0.00       0.00      -0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11444.41
                           -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2225.24611739     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2225.24611739     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2225.24611739     0.00000000        0.00      0.00000000        0.00      0.0000
     4 -2225.24611739     0.00000000        0.00      0.00000000        0.00      0.0000
     5 -2225.19399790     0.05211949    11438.91      0.05211949    11438.91      1.4182
     6 -2225.19399790     0.05211949    11438.91      0.05211949    11438.91      1.4182
     7 -2225.19399781     0.05211958    11438.93      0.05211958    11438.93      1.4182
     8 -2225.19399781     0.05211958    11438.93      0.05211958    11438.93      1.4182
     9 -2225.19395595     0.05216145    11448.11      0.05216145    11448.11      1.4194
    10 -2225.19395595     0.05216145    11448.11      0.05216145    11448.11      1.4194
    11 -2225.19395577     0.05216162    11448.15      0.05216162    11448.15      1.4194
    12 -2225.19395577     0.05216162    11448.15      0.05216162    11448.15      1.4194
    13 -2225.19395570     0.05216170    11448.17      0.05216170    11448.17      1.4194
    14 -2225.19395570     0.05216170    11448.17      0.05216170    11448.17      1.4194


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.002166108  -0.645172066   0.007852953   0.763993877   0.000000003  -0.000000039  -0.000000027   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.802368848  -0.002754039   0.596788428  -0.006185079  -0.000000004  -0.000000000   0.000000000   0.000000005
                         0.001080492  -0.000003680   0.000892538  -0.000009219   0.000000027   0.000000002   0.000000000  -0.000000039

    3    1.2  1.5 -0.5   0.002762132   0.764029247   0.006498413   0.645142970   0.000000002  -0.000000028   0.000000039   0.000000000
                         0.000000004  -0.000004455  -0.000000023  -0.000003762   0.000000000   0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.596817160   0.002175043   0.802333392  -0.008102394  -0.000000005  -0.000000000  -0.000000000  -0.000000004
                         0.000145341  -0.000000518  -0.000075890   0.000000755   0.000000038   0.000000003  -0.000000000   0.000000026

    5    1.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.598481535   0.048604744   0.000000004  -0.179722219
                         0.000000063  -0.000000000   0.000000047  -0.000000000   0.078830915   0.006402102  -0.000000002  -0.023913055

    6    2.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000077  -0.000001233  -0.000001611  -0.000000000
                         0.000000000   0.000000088  -0.000000000  -0.000000032   0.037050803  -0.456215011  -0.435009815   0.000000042

    7    3.2  0.5  0.5   0.000000000   0.000000003  -0.000000000  -0.000000016   0.011804937  -0.145357145   0.614225196  -0.000000038
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000024   0.000000356  -0.000002236   0.000000002

    8    4.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.004680209   0.000380094  -0.000000008  -0.083344130
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.035532219  -0.002885677   0.000000042   0.626384768

    9    5.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.082438330  -0.006695071  -0.000000001  -0.004788029
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.625868817   0.050828966   0.000000020   0.035984882

   10    1.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000102   0.000001594  -0.000000632   0.000000003
                         0.000000000   0.000000060   0.000000001   0.000000051  -0.049024566   0.603650943  -0.181306123  -0.000000004

   11    2.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.452308177   0.036733519   0.000000042   0.431209524
                        -0.000000086   0.000000000   0.000000037  -0.000000000   0.059577251   0.004838452   0.000000005   0.057374955

   12    3.2  0.5 -0.5   0.000000002  -0.000000000  -0.000000016   0.000000000  -0.018982195  -0.001541603   0.000000007   0.081012255
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.144112373   0.011703846  -0.000000037  -0.608859266

   13    4.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.002910602  -0.035839126   0.631905153  -0.000000042
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000006   0.000000064  -0.000002306   0.000000002

   14    5.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.051267999   0.631274785   0.036302024  -0.000000020
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000106  -0.000001678  -0.000000164  -0.000000002


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5   0.000000019   0.000000004   0.000000059  -0.000000000   0.000000005   0.000000024
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000000  -0.000000001   0.000000000   0.000000059  -0.000000001   0.000000000
                         0.000000008  -0.000000036   0.000000000   0.000000030  -0.000000018   0.000000004

    3    1.2  1.5 -0.5   0.000000036   0.000000008  -0.000000067   0.000000001  -0.000000004  -0.000000018
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000053   0.000000002  -0.000000000
                         0.000000004  -0.000000019  -0.000000000  -0.000000027   0.000000024  -0.000000005

    5    1.2  0.5  0.5   0.137465281  -0.591066938   0.001505970   0.197024933  -0.207062203   0.042096250
                        -0.003048220   0.013107628  -0.002942351  -0.384917770   0.015617921  -0.003175170

    6    2.2  0.5  0.5   0.000000646   0.000000247   0.000001984   0.000000146   0.000000048   0.000000270
                         0.236741213   0.055059240   0.716313917  -0.005475495   0.033955207   0.167018192

    7    3.2  0.5  0.5   0.006753390   0.001570645   0.094317676  -0.000720965   0.153354895   0.754319037
                        -0.000000019  -0.000000007  -0.000000263  -0.000000018  -0.000000217  -0.000001208

    8    4.2  0.5  0.5   0.000285819  -0.001229045   0.003515130   0.459848694   0.042294237  -0.008598542
                         0.012889520  -0.055421772   0.001799131   0.235379253   0.560736413  -0.113999074

    9    5.2  0.5  0.5  -0.003788744   0.016291953   0.001056242   0.138177331  -0.004806284   0.000977132
                        -0.170860657   0.734658847   0.000540611   0.070727780  -0.063721661   0.012954769

   10    1.2  0.5 -0.5  -0.000001612  -0.000000615   0.000001198   0.000000088   0.000000059   0.000000334
                        -0.591212259  -0.137499074   0.432412435  -0.003305355   0.042215826   0.207650368

   11    2.2  0.5 -0.5   0.055045708  -0.236683022  -0.002494718  -0.326382153   0.166545117  -0.033859029
                        -0.001220609   0.005248733   0.004874159   0.637636509  -0.012561868   0.002553866

   12    3.2  0.5 -0.5   0.000034820  -0.000149728  -0.000641786  -0.083958152   0.056734288  -0.011534248
                         0.001570259  -0.006751730  -0.000328484  -0.042975024   0.752182445  -0.152920519

   13    4.2  0.5 -0.5  -0.055435398  -0.012892689   0.516589019  -0.003948798  -0.114322892  -0.562329199
                         0.000000151   0.000000057  -0.000001429  -0.000000106   0.000000162   0.000000899

   14    5.2  0.5 -0.5   0.734839472   0.170902658   0.155226910  -0.001186553   0.012991568   0.063902664
                        -0.000002004  -0.000000765  -0.000000430  -0.000000032  -0.000000018  -0.000000103


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%  41.625%   0.006%  58.369%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  64.380%   0.001%  35.616%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.001%  58.374%   0.004%  41.621%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  35.619%   0.000%  64.374%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  36.439%   0.240%   0.000%   3.287%   1.891%  34.953%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.137%  20.813%  18.923%   0.000%   5.605%   0.303%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.014%   2.113%  37.727%   0.000%   0.005%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.128%   0.001%   0.000%  39.930%   0.017%   0.307%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  39.851%   0.263%   0.000%   0.132%   2.921%  53.999%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.240%  36.439%   3.287%   0.000%  34.953%   1.891%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  20.813%   0.137%   0.000%  18.923%   0.303%   5.605%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.113%   0.014%   0.000%  37.727%   0.000%   0.005%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.128%  39.930%   0.000%   0.307%   0.017%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.263%  39.851%   0.132%   0.000%  53.999%   2.921%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.001%  18.698%   4.312%   0.178%
    6    2.2  0.5  0.5  51.311%   0.003%   0.115%   2.790%
    7    3.2  0.5  0.5   0.890%   0.000%   2.352%  56.900%
    8    4.2  0.5  0.5   0.002%  26.686%  31.621%   1.307%
    9    5.2  0.5  0.5   0.000%   2.410%   0.408%   0.017%
   10    1.2  0.5 -0.5  18.698%   0.001%   0.178%   4.312%
   11    2.2  0.5 -0.5   0.003%  51.311%   2.790%   0.115%
   12    3.2  0.5 -0.5   0.000%   0.890%  56.900%   2.352%
   13    4.2  0.5 -0.5  26.686%   0.002%   1.307%  31.621%
   14    5.2  0.5 -0.5   2.410%   0.000%   0.017%   0.408%


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
              1      24       42.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7       69.97       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       110.45     58.36      9.00     37.77      2.79      0.88      0.09      1.18
 REAL TIME  *       123.86 SEC
 DISK USED  *       112.76 MB (local),        2.13 GB (total)
 SF USED    *       677.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2225.193955698578

              CI              CI           MULTI         RHF-SCF
  -2225.14488176  -2225.20122990  -2224.38702413  -2224.45353352
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
