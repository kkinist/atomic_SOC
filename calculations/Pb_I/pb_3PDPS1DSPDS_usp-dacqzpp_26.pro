
 Working directory              : /wrk/irikura/molpro.eOZwEpuidA/
 Global scratch directory       : /wrk/irikura/molpro.eOZwEpuidA/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.eOZwEpuidA/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Pb SO-CI
                                                                                 ! p-only active space
                                                                                 ! uncontracted s and p basis functions
 memory,3000,M;
 
 gprint,orbitals,civector;
 gprint,basis
 
 symmetry,xyz
 geometry={Pb};
 
 basis={
 ecp,pb,ECP60MDF;
 sp,pb,aug-cc-pwCVQZ-PP
 dfgh,pb,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
                                                                                 ! add 7p to active space
 {multi
     closed,7,3
     occ,7,9
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 03-Feb-25          TIME: 10:18:11  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  72000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW



 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Pb   ECP ECP60MDF                 selected for group  1
 Library entry PB     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Pb S diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry PB     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Pb P diffuse               selected for group 1    nprim= 1    centre=  0.005    ratio= 3.000    dratio= 1.000
 Library entry PB     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Pb D diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry PB     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Pb F diffuse               selected for group 1    nprim= 1    centre=  0.024    ratio= 3.000    dratio= 1.000
 Library entry PB     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry PB     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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

   1  PB     22.00    0.000000000    0.000000000    0.000000000


          PB  CORE POTENTIAL

          h POTENTIAL

 POWERS             2
 EXPONENTIALS   1.000000    
 COEFFICIENTS   0.000000    

          s - h POTENTIAL

 POWERS             2              2
 EXPONENTIALS   12.29630       8.632634    
 COEFFICIENTS   281.2855       62.52022    

          p - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   10.24179       8.924176       6.581342       6.255403    
 COEFFICIENTS   72.27690       144.5911       4.758693       9.940621    

          d - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   7.754336       7.720281       4.970264       4.563789    
 COEFFICIENTS   35.84851       53.72434       10.11526       14.83373    

          f - h POTENTIAL

 POWERS             2              2
 EXPONENTIALS   3.887512       3.811963    
 COEFFICIENTS   12.20989       16.19029    

          g - h POTENTIAL

 POWERS             2              2
 EXPONENTIALS   5.691577       5.715567    
 COEFFICIENTS  -9.096665      -11.53200    


          PB  SPIN-ORBIT POTENTIAL

          p POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   10.24179       8.924176       6.581342       6.255403    
 COEFFICIENTS  -144.5538       144.5911      -9.517385       9.940621    

          d POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   7.754336       7.720281       4.970264       4.563789    
 COEFFICIENTS  -35.84851       35.81623      -10.11526       9.889154    

          f POTENTIAL

 POWERS             2              2
 EXPONENTIALS   3.887512       3.811963    
 COEFFICIENTS  -8.139928       8.095145    

          g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   5.691577       5.715567    
 COEFFICIENTS   4.548332      -4.612798    


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        9368.330000     1.000000
    2.1 Ag    1  1s        1366.930000     1.000000
    3.1 Ag    1  1s         299.682000     1.000000
    4.1 Ag    1  1s          34.859700     1.000000
    5.1 Ag    1  1s          21.788900     1.000000
    6.1 Ag    1  1s          13.620000     1.000000
    7.1 Ag    1  1s           8.512950     1.000000
    8.1 Ag    1  1s           5.303320     1.000000
    9.1 Ag    1  1s           1.928160     1.000000
   10.1 Ag    1  1s           1.036010     1.000000
   11.1 Ag    1  1s           0.501270     1.000000
   12.1 Ag    1  1s           0.262519     1.000000
   13.1 Ag    1  1s           0.122161     1.000000
   14.1 Ag    1  1s           0.055088     1.000000
   15.1 Ag    1  1s           5.794700     1.000000
   16.1 Ag    1  1s           2.617500     1.000000
   17.1 Ag    1  1s           1.182400     1.000000
   18.1 Ag    1  1s           0.021600     1.000000
   19.1 Ag    1  1s           0.007200     1.000000
   20.1 Ag    1  3d0        174.502000     0.000043
                             51.637900     0.000330
                             12.813500     0.010755
                              6.665400    -0.075094
                              2.589270     0.180678
                              1.561410     0.305696
                              0.931233     0.314749
                              0.548547     0.231609
                              0.318298     0.115015
                              0.180251     0.037382
                              0.083200     0.004038
   21.1 Ag    1  3d2-       174.502000     0.000043
                             51.637900     0.000330
                             12.813500     0.010755
                              6.665400    -0.075094
                              2.589270     0.180678
                              1.561410     0.305696
                              0.931233     0.314749
                              0.548547     0.231609
                              0.318298     0.115015
                              0.180251     0.037382
                              0.083200     0.004038
   22.1 Ag    1  3d1+       174.502000     0.000043
                             51.637900     0.000330
                             12.813500     0.010755
                              6.665400    -0.075094
                              2.589270     0.180678
                              1.561410     0.305696
                              0.931233     0.314749
                              0.548547     0.231609
                              0.318298     0.115015
                              0.180251     0.037382
                              0.083200     0.004038
   23.1 Ag    1  3d2+       174.502000     0.000043
                             51.637900     0.000330
                             12.813500     0.010755
                              6.665400    -0.075094
                              2.589270     0.180678
                              1.561410     0.305696
                              0.931233     0.314749
                              0.548547     0.231609
                              0.318298     0.115015
                              0.180251     0.037382
                              0.083200     0.004038
   24.1 Ag    1  3d1-       174.502000     0.000043
                             51.637900     0.000330
                             12.813500     0.010755
                              6.665400    -0.075094
                              2.589270     0.180678
                              1.561410     0.305696
                              0.931233     0.314749
                              0.548547     0.231609
                              0.318298     0.115015
                              0.180251     0.037382
                              0.083200     0.004038
   25.1 Ag    1  3d0        174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     1.000000
                              0.180251     0.000000
                              0.083200     0.000000
   26.1 Ag    1  3d2-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     1.000000
                              0.180251     0.000000
                              0.083200     0.000000
   27.1 Ag    1  3d1+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     1.000000
                              0.180251     0.000000
                              0.083200     0.000000
   28.1 Ag    1  3d2+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     1.000000
                              0.180251     0.000000
                              0.083200     0.000000
   29.1 Ag    1  3d1-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     1.000000
                              0.180251     0.000000
                              0.083200     0.000000
   30.1 Ag    1  3d0        174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     1.000000
                              0.083200     0.000000
   31.1 Ag    1  3d2-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     1.000000
                              0.083200     0.000000
   32.1 Ag    1  3d1+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     1.000000
                              0.083200     0.000000
   33.1 Ag    1  3d2+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     1.000000
                              0.083200     0.000000
   34.1 Ag    1  3d1-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     1.000000
                              0.083200     0.000000
   35.1 Ag    1  3d0        174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     0.000000
                              0.083200     1.000000
   36.1 Ag    1  3d2-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     0.000000
                              0.083200     1.000000
   37.1 Ag    1  3d1+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     0.000000
                              0.083200     1.000000
   38.1 Ag    1  3d2+       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     0.000000
                              0.083200     1.000000
   39.1 Ag    1  3d1-       174.502000     0.000000
                             51.637900     0.000000
                             12.813500     0.000000
                              6.665400     0.000000
                              2.589270     0.000000
                              1.561410     0.000000
                              0.931233     0.000000
                              0.548547     0.000000
                              0.318298     0.000000
                              0.180251     0.000000
                              0.083200     1.000000
   40.1 Ag    1  3d0          3.176200     1.000000
   41.1 Ag    1  3d2-         3.176200     1.000000
   42.1 Ag    1  3d1+         3.176200     1.000000
   43.1 Ag    1  3d2+         3.176200     1.000000
   44.1 Ag    1  3d1-         3.176200     1.000000
   45.1 Ag    1  3d0          1.525200     1.000000
   46.1 Ag    1  3d2-         1.525200     1.000000
   47.1 Ag    1  3d1+         1.525200     1.000000
   48.1 Ag    1  3d2+         1.525200     1.000000
   49.1 Ag    1  3d1-         1.525200     1.000000
   50.1 Ag    1  3d0          0.732400     1.000000
   51.1 Ag    1  3d2-         0.732400     1.000000
   52.1 Ag    1  3d1+         0.732400     1.000000
   53.1 Ag    1  3d2+         0.732400     1.000000
   54.1 Ag    1  3d1-         0.732400     1.000000
   55.1 Ag    1  3d0          0.033900     1.000000
   56.1 Ag    1  3d2-         0.033900     1.000000
   57.1 Ag    1  3d1+         0.033900     1.000000
   58.1 Ag    1  3d2+         0.033900     1.000000
   59.1 Ag    1  3d1-         0.033900     1.000000
   60.1 Ag    1  3d0          0.011300     1.000000
   61.1 Ag    1  3d2-         0.011300     1.000000
   62.1 Ag    1  3d1+         0.011300     1.000000
   63.1 Ag    1  3d2+         0.011300     1.000000
   64.1 Ag    1  3d1-         0.011300     1.000000
   65.1 Ag    1  5g0          0.388100     1.000000
   66.1 Ag    1  5g2-         0.388100     1.000000
   67.1 Ag    1  5g1+         0.388100     1.000000
   68.1 Ag    1  5g4+         0.388100     1.000000
   69.1 Ag    1  5g1-         0.388100     1.000000
   70.1 Ag    1  5g2+         0.388100     1.000000
   71.1 Ag    1  5g4-         0.388100     1.000000
   72.1 Ag    1  5g3+         0.388100     1.000000
   73.1 Ag    1  5g3-         0.388100     1.000000
   74.1 Ag    1  5g0          3.200500     1.000000
   75.1 Ag    1  5g2-         3.200500     1.000000
   76.1 Ag    1  5g1+         3.200500     1.000000
   77.1 Ag    1  5g4+         3.200500     1.000000
   78.1 Ag    1  5g1-         3.200500     1.000000
   79.1 Ag    1  5g2+         3.200500     1.000000
   80.1 Ag    1  5g4-         3.200500     1.000000
   81.1 Ag    1  5g3+         3.200500     1.000000
   82.1 Ag    1  5g3-         3.200500     1.000000
   83.1 Ag    1  5g0          1.028400     1.000000
   84.1 Ag    1  5g2-         1.028400     1.000000
   85.1 Ag    1  5g1+         1.028400     1.000000
   86.1 Ag    1  5g4+         1.028400     1.000000
   87.1 Ag    1  5g1-         1.028400     1.000000
   88.1 Ag    1  5g2+         1.028400     1.000000
   89.1 Ag    1  5g4-         1.028400     1.000000
   90.1 Ag    1  5g3+         1.028400     1.000000
   91.1 Ag    1  5g3-         1.028400     1.000000
   92.1 Ag    1  5g0          0.174600     1.000000
   93.1 Ag    1  5g2-         0.174600     1.000000
   94.1 Ag    1  5g1+         0.174600     1.000000
   95.1 Ag    1  5g4+         0.174600     1.000000
   96.1 Ag    1  5g1-         0.174600     1.000000
   97.1 Ag    1  5g2+         0.174600     1.000000
   98.1 Ag    1  5g4-         0.174600     1.000000
   99.1 Ag    1  5g3+         0.174600     1.000000
  100.1 Ag    1  5g3-         0.174600     1.000000
    1.2 Au    1  2px         59.090100     1.000000
    2.2 Au    1  2py         59.090100     1.000000
    3.2 Au    1  2pz         59.090100     1.000000
    4.2 Au    1  2px         20.919700     1.000000
    5.2 Au    1  2py         20.919700     1.000000
    6.2 Au    1  2pz         20.919700     1.000000
    7.2 Au    1  2px         13.077700     1.000000
    8.2 Au    1  2py         13.077700     1.000000
    9.2 Au    1  2pz         13.077700     1.000000
   10.2 Au    1  2px          6.899100     1.000000
   11.2 Au    1  2py          6.899100     1.000000
   12.2 Au    1  2pz          6.899100     1.000000
   13.2 Au    1  2px          2.196270     1.000000
   14.2 Au    1  2py          2.196270     1.000000
   15.2 Au    1  2pz          2.196270     1.000000
   16.2 Au    1  2px          1.304860     1.000000
   17.2 Au    1  2py          1.304860     1.000000
   18.2 Au    1  2pz          1.304860     1.000000
   19.2 Au    1  2px          0.779572     1.000000
   20.2 Au    1  2py          0.779572     1.000000
   21.2 Au    1  2pz          0.779572     1.000000
   22.2 Au    1  2px          0.424477     1.000000
   23.2 Au    1  2py          0.424477     1.000000
   24.2 Au    1  2pz          0.424477     1.000000
   25.2 Au    1  2px          0.180733     1.000000
   26.2 Au    1  2py          0.180733     1.000000
   27.2 Au    1  2pz          0.180733     1.000000
   28.2 Au    1  2px          0.079737     1.000000
   29.2 Au    1  2py          0.079737     1.000000
   30.2 Au    1  2pz          0.079737     1.000000
   31.2 Au    1  2px          0.034649     1.000000
   32.2 Au    1  2py          0.034649     1.000000
   33.2 Au    1  2pz          0.034649     1.000000
   34.2 Au    1  2px          2.887000     1.000000
   35.2 Au    1  2py          2.887000     1.000000
   36.2 Au    1  2pz          2.887000     1.000000
   37.2 Au    1  2px          1.642600     1.000000
   38.2 Au    1  2py          1.642600     1.000000
   39.2 Au    1  2pz          1.642600     1.000000
   40.2 Au    1  2px          0.934600     1.000000
   41.2 Au    1  2py          0.934600     1.000000
   42.2 Au    1  2pz          0.934600     1.000000
   43.2 Au    1  2px          0.013700     1.000000
   44.2 Au    1  2py          0.013700     1.000000
   45.2 Au    1  2pz          0.013700     1.000000
   46.2 Au    1  2px          0.004567     1.000000
   47.2 Au    1  2py          0.004567     1.000000
   48.2 Au    1  2pz          0.004567     1.000000
   49.2 Au    1  4f1+         0.441300     1.000000
   50.2 Au    1  4f1-         0.441300     1.000000
   51.2 Au    1  4f0          0.441300     1.000000
   52.2 Au    1  4f3+         0.441300     1.000000
   53.2 Au    1  4f2-         0.441300     1.000000
   54.2 Au    1  4f3-         0.441300     1.000000
   55.2 Au    1  4f2+         0.441300     1.000000
   56.2 Au    1  4f1+         0.178200     1.000000
   57.2 Au    1  4f1-         0.178200     1.000000
   58.2 Au    1  4f0          0.178200     1.000000
   59.2 Au    1  4f3+         0.178200     1.000000
   60.2 Au    1  4f2-         0.178200     1.000000
   61.2 Au    1  4f3-         0.178200     1.000000
   62.2 Au    1  4f2+         0.178200     1.000000
   63.2 Au    1  4f1+         3.073500     1.000000
   64.2 Au    1  4f1-         3.073500     1.000000
   65.2 Au    1  4f0          3.073500     1.000000
   66.2 Au    1  4f3+         3.073500     1.000000
   67.2 Au    1  4f2-         3.073500     1.000000
   68.2 Au    1  4f3-         3.073500     1.000000
   69.2 Au    1  4f2+         3.073500     1.000000
   70.2 Au    1  4f1+         1.718100     1.000000
   71.2 Au    1  4f1-         1.718100     1.000000
   72.2 Au    1  4f0          1.718100     1.000000
   73.2 Au    1  4f3+         1.718100     1.000000
   74.2 Au    1  4f2-         1.718100     1.000000
   75.2 Au    1  4f3-         1.718100     1.000000
   76.2 Au    1  4f2+         1.718100     1.000000
   77.2 Au    1  4f1+         0.960500     1.000000
   78.2 Au    1  4f1-         0.960500     1.000000
   79.2 Au    1  4f0          0.960500     1.000000
   80.2 Au    1  4f3+         0.960500     1.000000
   81.2 Au    1  4f2-         0.960500     1.000000
   82.2 Au    1  4f3-         0.960500     1.000000
   83.2 Au    1  4f2+         0.960500     1.000000
   84.2 Au    1  4f1+         0.072300     1.000000
   85.2 Au    1  4f1-         0.072300     1.000000
   86.2 Au    1  4f0          0.072300     1.000000
   87.2 Au    1  4f3+         0.072300     1.000000
   88.2 Au    1  4f2-         0.072300     1.000000
   89.2 Au    1  4f3-         0.072300     1.000000
   90.2 Au    1  4f2+         0.072300     1.000000
   91.2 Au    1  4f1+         0.024100     1.000000
   92.2 Au    1  4f1-         0.024100     1.000000
   93.2 Au    1  4f0          0.024100     1.000000
   94.2 Au    1  4f3+         0.024100     1.000000
   95.2 Au    1  4f2-         0.024100     1.000000
   96.2 Au    1  4f3-         0.024100     1.000000
   97.2 Au    1  4f2+         0.024100     1.000000
   98.2 Au    1  6h1+         1.013800     1.000000
   99.2 Au    1  6h1-         1.013800     1.000000
  100.2 Au    1  6h2+         1.013800     1.000000
  101.2 Au    1  6h3+         1.013800     1.000000
  102.2 Au    1  6h4-         1.013800     1.000000
  103.2 Au    1  6h3-         1.013800     1.000000
  104.2 Au    1  6h4+         1.013800     1.000000
  105.2 Au    1  6h5-         1.013800     1.000000
  106.2 Au    1  6h0          1.013800     1.000000
  107.2 Au    1  6h5+         1.013800     1.000000
  108.2 Au    1  6h2-         1.013800     1.000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         314
 NUMBER OF SYMMETRY AOS:          243
 NUMBER OF CONTRACTIONS:          208   (  100Ag  +  108Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 7 8 9101112  131415 7 8 910111213
                                       1415 7 8 91011121314  15 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 1
                                        2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910 4   5 6 7 8 910 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910111213  1415161718192021


 Eigenvalues of metric

         1 0.125E-07 0.259E-06 0.679E-05 0.437E-04 0.412E-03 0.671E-03 0.671E-03 0.671E-03
         2 0.464E-07 0.464E-07 0.464E-07 0.216E-05 0.216E-05 0.216E-05 0.595E-04 0.595E-04


 Contracted 2-electron integrals neglected if value below      1.0D-16
 AO integral compression algorithm  1   Integral accuracy      1.0D-16

     350.224 MB (compressed) written to integral file ( 20.8%)

     Node minimum: 6.029 MB, node maximum: 20.972 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4966710.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4966710      RECORD LENGTH: 524288

 Memory used in sort:       5.52 MW

 SORT1 READ   210684113. AND WROTE      863323. INTEGRALS IN      3 RECORDS. CPU TIME:     1.27 SEC, REAL TIME:     1.31 SEC
 SORT2 READ    21399213. AND WROTE   119252116. INTEGRALS IN   1776 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.12 SEC

 Node minimum:     4960795.  Node maximum:     4984602. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.75       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.94      3.66
 REAL TIME  *         5.70 SEC
 DISK USED  *        30.13 MB (local),        1.24 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=PB basis=cc-pVTZ-PP        lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86190964    -191.86190964     0.00D+00     0.67D-01     0     0       0.03      0.07    start
   2     -191.86408435      -0.00217471     0.83D-03     0.22D-02     1     0       0.04      0.11    diag2
   3     -191.86431748      -0.00023312     0.46D-03     0.58D-03     2     0       0.04      0.15    diag2
   4     -191.86437891      -0.00006144     0.11D-03     0.44D-03     3     0       0.04      0.19    diag2
   5     -191.86438693      -0.00000802     0.30D-04     0.14D-03     4     0       0.03      0.22    diag2
   6     -191.86438924      -0.00000231     0.92D-05     0.13D-03     5     0       0.04      0.26    diag2
   7     -191.86439027      -0.00000103     0.46D-05     0.15D-03     6     0       0.04      0.30    diag2
   8     -191.86439051      -0.00000024     0.21D-05     0.52D-04     7     0       0.03      0.33    fixocc
   9     -191.86439054      -0.00000003     0.70D-06     0.23D-04     8     0       0.04      0.37    diag2
  10     -191.86439054      -0.00000000     0.24D-06     0.20D-04     9     0       0.04      0.41    diag2/orth
  11     -191.86439054      -0.00000000     0.10D-06     0.33D-05     9     0       0.03      0.44    diag2
  12     -191.86439054      -0.00000000     0.31D-07     0.57D-06     9     0       0.04      0.48    diag2
  13     -191.86439054       0.00000000     0.49D-08     0.11D-06     0     0       0.03      0.51    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864390541581
  RHF One-electron energy            -340.681666318639
  RHF Two-electron energy             148.817275777058
  RHF Kinetic energy                   62.712630314122
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059421835451

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  6  s    0.69718    1  7  s   -0.59987    1  8  s   -0.58113    1  9  s    0.76291
                                    1 10  s    0.60192
    2.1     2.00000    -0.84962     1  1  d2-  0.63237    1  1  d1+  0.48111    1  1  d2+ -0.26839    1  1  d1-  0.53464
    3.1     2.00000    -0.84962     1  1  d0   0.37708    1  1  d2+  0.87781    1  1  d1-  0.28331
    4.1     2.00000    -0.84962     1  1  d0   0.31490    1  1  d1+  0.77671    1  1  d1- -0.50777
    5.1     2.00000    -0.84962     1  1  d0   0.85693    1  1  d1+ -0.30321    1  1  d2+ -0.38380
    6.1     2.00000    -0.84962     1  1  d2-  0.73387    1  1  d1+ -0.26844    1  1  d1- -0.60649
    7.1     2.00000    -0.35280     1  6  s   -0.30019    1  7  s    0.33022    1  8  s    0.47486    1  9  s   -0.34028
                                    1 10  s   -0.39553    1 12  s    0.50994    1 13  s    0.54588    1 15  s   -0.25178
    1.2     2.00000    -3.63192     1  4  py  -0.35180    1  5  py   0.46396    1  6  py   0.50634    1  7  py   0.27745
    2.2     2.00000    -3.63192     1  4  pz  -0.35180    1  5  pz   0.46396    1  6  pz   0.50634    1  7  pz   0.27746
    3.2     2.00000    -3.63192     1  4  px  -0.37124    1  5  px   0.48960    1  6  px   0.53433    1  7  px   0.29279
    4.2     1.00000    -0.05163     1  9  pz   0.28941    1 10  pz   0.34186
    5.2     1.00000    -0.05163     1  9  py   0.28915    1 10  py   0.34155
    6.2     1.00000    -0.05163     1  9  px   0.34746    1 10  px   0.41042    1 11  px   0.28585


 HOMO      6.2    -0.051634 =      -1.4050eV
 LUMO      7.2     0.066560 =       1.8112eV
 LUMO-HOMO         0.118194 =       3.2162eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.75       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.07       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.46      0.53      3.66
 REAL TIME  *         6.28 SEC
 DISK USED  *        33.93 MB (local),        1.33 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     192 (   93   99)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.686D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.456D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.577D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.514D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 2 4   6 5 3 1 3 5 6 4 2 1   6 4 2 5 3 2 6 4 5 3   11411 8 7151012 913
                                        2 6 4 5 3 1 9 7 811  1410121513 2 6 3 4 5   91510 81214 71113 1   1101315111412 8 9 7
                                        2 4 3 6 5 1 1 6 2 3   5 4 1 1 1 1 1 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.462D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.403D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.416D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.492D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.234D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.234D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 2 1 3   2 1 5 6 4 8 9 710 2   3 110 4 7 9 8 6 5 3   2 1 6 5 410 8 9 7 2
                                        3 1 6 4 5 810 7 9 2   3 1 410 9 7 8 5 619  11211612141317151820   3 2 1 6 410 7 5 8 9
                                        3 2 1 9 7 810 5 4 6   3 2 1 3 2 1 3 2 1 3   2 1 3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  1560  ( 18 closed/active, 948 closed/virtual, 0 active/active, 594 active/virtual )
 Total number of variables:    2280
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    3   -191.65607429    -191.70343141   -0.04735713    0.17399705 0.00002436 0.00000000  0.15E+01      1.44
   2    5    8    0   -191.70310325    -191.70329834   -0.00019509    0.01074222 0.00000051 0.00000000  0.96E-01      2.72
   3    6   12    0   -191.70329837    -191.70329837   -0.00000000    0.00002243 0.00000000 0.00000000  0.11E-03      3.91
   4    2    4    0   -191.70329837    -191.70329837   -0.00000000    0.00000000 0.00000000 0.00000000  0.30E-08      4.80

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-08)
                       Final energy:   -191.70329837
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.828353996903
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.90553347
 One electron energy                          -336.49267969
 Two electron energy                           144.66432569
 Virial ratio                                    4.04946709
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.828353996852
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.90553347
 One electron energy                          -336.49267969
 Two electron energy                           144.66432570
 Virial ratio                                    4.04946709
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.828353996842
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.90553347
 One electron energy                          -336.49267970
 Two electron energy                           144.66432570
 Virial ratio                                    4.04946709
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.658769958650
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91614855
 Virial ratio                                    4.07169656
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.658769958647
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91614855
 Virial ratio                                    4.07169656
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.658769958624
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91614855
 Virial ratio                                    4.07169656
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.658769958602
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91614855
 Virial ratio                                    4.07169656
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.658769958598
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91614855
 Virial ratio                                    4.07169656
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.656923932531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44117173
 One electron energy                          -331.80678148
 Two electron energy                           140.14985755
 Virial ratio                                    4.06939986
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.656923932526
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44117173
 One electron energy                          -331.80678147
 Two electron energy                           140.14985754
 Virial ratio                                    4.06939986
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.656923932496
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44117173
 One electron energy                          -331.80678147
 Two electron energy                           140.14985754
 Virial ratio                                    4.06939986
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -191.653496770739
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.92142174
 Virial ratio                                    4.07161205
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.793576386190
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87832300
 One electron energy                          -336.33505732
 Two electron energy                           144.54148093
 Virial ratio                                    4.05023365
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.793576386190
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87832300
 One electron energy                          -336.33505732
 Two electron energy                           144.54148093
 Virial ratio                                    4.05023365
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.793576386117
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87832300
 One electron energy                          -336.33505732
 Two electron energy                           144.54148094
 Virial ratio                                    4.05023365
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.793576386106
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87832300
 One electron energy                          -336.33505732
 Two electron energy                           144.54148094
 Virial ratio                                    4.05023365
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.793576386085
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87832300
 One electron energy                          -336.33505732
 Two electron energy                           144.54148094
 Virial ratio                                    4.05023365
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.744000782043
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.80323513
 One electron energy                          -335.85136742
 Two electron energy                           144.10736664
 Virial ratio                                    4.05309114
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -191.662285417237
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91263309
 Virial ratio                                    4.07175290
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -191.662285417208
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91263309
 Virial ratio                                    4.07175290
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -191.662285417198
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.39508565
 One electron energy                          -331.57491851
 Two electron energy                           139.91263309
 Virial ratio                                    4.07175290
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -191.650011613058
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46993493
 One electron energy                          -331.97101189
 Two electron energy                           140.32100028
 Virial ratio                                    4.06787596
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -191.650011613049
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46993493
 One electron energy                          -331.97101189
 Two electron energy                           140.32100028
 Virial ratio                                    4.06787596
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -191.650011613033
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46993493
 One electron energy                          -331.97101189
 Two electron energy                           140.32100028
 Virial ratio                                    4.06787596
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -191.650011612995
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46993493
 One electron energy                          -331.97101189
 Two electron energy                           140.32100028
 Virial ratio                                    4.06787596
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -191.650011612993
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46993493
 One electron energy                          -331.97101189
 Two electron energy                           140.32100028
 Virial ratio                                    4.06787596
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -191.637078562884
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.54713482
 One electron energy                          -332.46340962
 Two electron energy                           140.82633105
 Virial ratio                                    4.06388261
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000001
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.291442195323
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000006
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000007
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000038
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.708560057628
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000006
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.000000000006
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>    -0.000000000012
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000009
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.986250420689
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000003
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000001
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.013749246245
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000002
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000006
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000006
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>    -0.000000000013
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.088873540295
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000006
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000000006
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     4.000000000034
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     3.911126252777
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000007
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999998308
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000839
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.754624764192
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000013
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000007
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000006
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.245377315950
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000019652
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999980342
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000006
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000009
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.804126300778
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000001
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000002216
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999997041
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.195871418535
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000002
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000084
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999941
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000006
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     2.444978524702
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000000000623
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     4.000000000016
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000000006
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     1.555022159903
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000007
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000001691
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999161
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.953933040535
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000031
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     4.000000000037
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000006
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     2.046062626473
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999980342
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000019652
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000006
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000009
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.209623278537
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000001
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999997788
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002963
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.790379335224
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000002
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999999909
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000000052
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000006
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.466147935048
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.999999999417
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000024
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     1.000000000006
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     0.533851587366
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000007
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000051
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000051
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000051
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000051
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000051
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000026
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000004
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000004
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000004
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000004
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000004
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000005
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000045
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000045
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000045
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000045
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000045
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000020
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 3 5   4 6 2 1 3 5 4 6 2 1   3 5 4 6 2 5 3 4 2 6   11310 91415 812 711
                                        4 5 3 2 6 1 9131015  14 812 711 4 5 3 2 6   913101514 812 711 1   1 913101514 812 711
                                        4 3 5 2 6 1 1 4 3 5   2 6 1 1 1 1 1 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 1 2 1   2 3 7 9 810 4 5 6 1   2 3 7 9 810 4 6 5 1   2 3 7 9 4 810 6 5 1
                                        3 2 4 7 9 810 6 5 1   3 2 4 7 9 810 6 511  20181517141621131912   1 3 2 4 9 7 810 6 5
                                        1 3 2 4 9 7 810 6 5   3 1 2 1 2 3 1 3 2 1   3 2 1 3 2 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.29167     1  6  s    0.69729    1  7  s   -0.60004    1  8  s   -0.58101    1  9  s    0.76310
                                    1 10  s    0.60421
    2.1     2.00000    -1.19197     1  1  d1+  1.00154
    3.1     2.00000    -1.19197     1  1  d2-  1.00154
    4.1     2.00000    -1.19197     1  1  d2+  1.00154
    5.1     2.00000    -1.19197     1  1  d0   1.00154
    6.1     2.00000    -1.19197     1  1  d1- -1.00154
    7.1     2.00000    -0.66282     1  6  s   -0.31956    1  7  s    0.35784    1  8  s    0.55671    1  9  s   -0.31812
                                    1 10  s   -0.32982    1 12  s    0.59907    1 13  s    0.60841    1 15  s   -0.32059
    1.2     2.00000    -3.97417     1  4  px  -0.37094    1  5  px   0.49015    1  6  px   0.53556    1  7  px   0.29525
    2.2     2.00000    -3.97417     1  4  pz  -0.37094    1  5  pz   0.49015    1  6  pz   0.53556    1  7  pz   0.29525
    3.2     2.00000    -3.97417     1  4  py  -0.37094    1  5  py   0.49015    1  6  py   0.53556    1  7  py   0.29525
    4.2     0.44444    -0.11888     1  9  py   0.47567    1 10  py   0.48988
    5.2     0.44444    -0.11888     1  9  pz   0.47567    1 10  pz   0.48988
    6.2     0.44444    -0.11888     1  9  px   0.47567    1 10  px   0.48988
    7.2     0.22223     0.01127     1 15  pz   0.88458    1 16  pz   0.27030
    8.2     0.22223     0.01127     1 15  px   0.88458    1 16  px   0.27030
    9.2     0.22223     0.01127     1 15  py   0.88458    1 16  py   0.27030
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a0a000        -0.00000000      0.99384509      0.00004088      0.00000000      0.00000000     -0.00000001     -0.00000000
 aa0000         0.99384509     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000003
 0aa000        -0.00000000     -0.00004088      0.99384509      0.00000000      0.00000002      0.00000000      0.00000000
 a0000a        -0.00000000      0.00000000     -0.00000000     -0.20222728      0.00000133      0.00000001      0.00000030
 00a0a0         0.00000000      0.00000000     -0.00000000      0.78618889     -0.00000625      0.00000287     -0.00000116
 00a00a         0.00000000     -0.07829744     -0.00000322     -0.00000279     -0.00000204      0.70710680      0.00000000
 00aa00         0.00000000      0.00000322     -0.07829748      0.00000569      0.70710679      0.00000204     -0.00000000
 0a000a        -0.07829744     -0.00000000      0.00000000      0.00000105      0.00000000     -0.00000000      0.70710678
 a00a00         0.07829748      0.00000000      0.00000000      0.00000105      0.00000000     -0.00000000      0.70710678
 0a00a0         0.00000000     -0.00000322      0.07829745      0.00000569      0.70710677      0.00000204     -0.00000000
 a000a0        -0.00000000      0.07829745      0.00000322     -0.00000279     -0.00000204      0.70710677      0.00000000
 0a0a00        -0.00000000      0.00000000      0.00000000     -0.58396160      0.00000491     -0.00000288      0.00000086
 
 Energy:     -191.82835400   -191.82835400   -191.82835400   -191.65876996   -191.65876996   -191.65876996   -191.65876996

 State:              8               9              10              11              12
 a0a000         0.00000000     -0.00001553     -0.11071640      0.00000001      0.00000000
 aa0000        -0.00000000     -0.00000000     -0.00000001     -0.11071641      0.00000000
 0aa000         0.00000000     -0.11071643      0.00001553      0.00000000      0.00000000
 a0000a         0.79105676      0.00000000      0.00000000     -0.00000000      0.57735027
 00a0a0        -0.22039442      0.00000000      0.00000000      0.00000000      0.57735026
 00a00a        -0.00000072     -0.00009855     -0.70275420      0.00000005      0.00000000
 00aa00         0.00000026     -0.70275420      0.00009855      0.00000001      0.00000000
 0a000a        -0.00000000     -0.00000001     -0.00000005     -0.70275422     -0.00000000
 a00a00        -0.00000000      0.00000001      0.00000005      0.70275422      0.00000000
 0a00a0         0.00000026      0.70275422     -0.00009855     -0.00000001     -0.00000000
 a000a0        -0.00000072      0.00009855      0.70275423     -0.00000005     -0.00000000
 0a0a00        -0.57066234     -0.00000000      0.00000000     -0.00000000      0.57735027
 
 Energy:     -191.65876996   -191.65692393   -191.65692393   -191.65692393   -191.65349677
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 002000        -0.04722006      0.00000000      0.00000000     -0.00000000      0.80401500      0.55218374     -0.00000000
 200000         0.71990746      0.00000000     -0.00000000      0.00000000     -0.36111373      0.55218374      0.00000000
 a0b000         0.00000000      0.00000000      0.69749724      0.00001895      0.00000000      0.00000000      0.00000000
 b0a000        -0.00000000     -0.00000000     -0.69749724     -0.00001895     -0.00000000     -0.00000000     -0.00000000
 ab0000        -0.00000000      0.69749724     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 ba0000         0.00000000     -0.69749724      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0ba000         0.00000000     -0.00000000      0.00001895     -0.69749724     -0.00000000     -0.00000000     -0.00000001
 0ab000        -0.00000000      0.00000000     -0.00001895      0.69749724      0.00000000      0.00000000      0.00000001
 020000        -0.67268738     -0.00000000      0.00000000     -0.00000000     -0.44290128      0.55218373      0.00000000
 00a0b0        -0.00555826      0.00000000      0.00000000     -0.00000000      0.09464038      0.11914454      0.00000000
 00b0a0         0.00555826     -0.00000000     -0.00000000      0.00000000     -0.09464038     -0.11914454     -0.00000000
 0a0b00        -0.07918185     -0.00000000      0.00000000     -0.00000000     -0.05213379      0.11914455      0.00000000
 0b0a00         0.07918185      0.00000000     -0.00000000      0.00000000      0.05213379     -0.11914455     -0.00000000
 00b00a        -0.00000000     -0.00000000     -0.08210219     -0.00000223      0.00000000      0.00000000     -0.00000493
 00a00b         0.00000000      0.00000000      0.08210219      0.00000223     -0.00000000     -0.00000000      0.00000493
 00ab00        -0.00000000      0.00000000     -0.00000223      0.08210221     -0.00000000      0.00000000     -0.50000000
 00ba00         0.00000000     -0.00000000      0.00000223     -0.08210221      0.00000000     -0.00000000      0.50000000
 0b000a         0.00000000     -0.08210219     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0a000b        -0.00000000      0.08210219      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 a00b00        -0.00000000      0.08210221     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 b00a00         0.00000000     -0.08210221      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0a00b0        -0.00000000      0.00000000     -0.00000223      0.08210220     -0.00000000     -0.00000000      0.50000000
 0b00a0         0.00000000     -0.00000000      0.00000223     -0.08210220      0.00000000      0.00000000     -0.50000000
 b000a0        -0.00000000     -0.00000000     -0.08210220     -0.00000223      0.00000000     -0.00000000      0.00000493
 a000b0         0.00000000      0.00000000      0.08210220      0.00000223     -0.00000000      0.00000000     -0.00000493
 a0000b         0.08474009      0.00000000     -0.00000000      0.00000000     -0.04250659      0.11914453     -0.00000000
 b0000a        -0.08474009     -0.00000000      0.00000000     -0.00000000      0.04250659     -0.11914453      0.00000000
 
 Energy:     -191.79357639   -191.79357639   -191.79357639   -191.79357639   -191.79357639   -191.74400078   -191.66228542

 State:              8               9              10              11              12              13              14
 002000        -0.00000000     -0.00000000     -0.13257583      0.00000100     -0.00000032     -0.00000000      0.01998479
 200000        -0.00000000     -0.00000000      0.08359524     -0.00000063      0.00000020     -0.00000000      0.10482163
 a0b000        -0.00000001      0.00000000     -0.00000088     -0.11611118      0.00000167     -0.00000000     -0.00000000
 b0a000         0.00000001     -0.00000000      0.00000088      0.11611118     -0.00000167      0.00000000      0.00000000
 ab0000         0.00000000     -0.00000002     -0.00000000      0.00000000      0.00000001     -0.11611119     -0.00000000
 ba0000        -0.00000000      0.00000002      0.00000000     -0.00000000     -0.00000001      0.11611119      0.00000000
 0ba000        -0.00000000     -0.00000000     -0.00000028      0.00000167      0.11611120      0.00000001     -0.00000000
 0ab000         0.00000000      0.00000000      0.00000028     -0.00000167     -0.11611120     -0.00000001      0.00000000
 020000         0.00000000      0.00000000      0.04898059     -0.00000037      0.00000012      0.00000000     -0.12480646
 00a0b0         0.00000000     -0.00000000      0.56315097     -0.00000425      0.00000137      0.00000000     -0.08489071
 00b0a0        -0.00000000      0.00000000     -0.56315097      0.00000425     -0.00000137     -0.00000000      0.08489071
 0a0b00        -0.00000000     -0.00000000     -0.20805798      0.00000157     -0.00000051     -0.00000000      0.53014840
 0b0a00         0.00000000      0.00000000      0.20805798     -0.00000157      0.00000051      0.00000000     -0.53014840
 00b00a         0.50000000     -0.00000001     -0.00000372     -0.49321303      0.00000707     -0.00000002     -0.00000000
 00a00b        -0.50000000      0.00000001      0.00000372      0.49321303     -0.00000707      0.00000002      0.00000000
 00ab00        -0.00000493      0.00000000     -0.00000120      0.00000707      0.49321302      0.00000003     -0.00000000
 00ba00         0.00000493     -0.00000000      0.00000120     -0.00000707     -0.49321302     -0.00000003      0.00000000
 0b000a         0.00000001      0.50000000     -0.00000000      0.00000002      0.00000003     -0.49321303     -0.00000000
 0a000b        -0.00000001     -0.50000000      0.00000000     -0.00000002     -0.00000003      0.49321303      0.00000000
 a00b00         0.00000001      0.50000000     -0.00000000     -0.00000002     -0.00000003      0.49321302      0.00000000
 b00a00        -0.00000001     -0.50000000      0.00000000      0.00000002      0.00000003     -0.49321302     -0.00000000
 0a00b0         0.00000493     -0.00000000     -0.00000120      0.00000707      0.49321303      0.00000003     -0.00000000
 0b00a0        -0.00000493      0.00000000      0.00000120     -0.00000707     -0.49321303     -0.00000003      0.00000000
 b000a0        -0.50000000      0.00000001     -0.00000372     -0.49321303      0.00000707     -0.00000002     -0.00000000
 a000b0         0.50000000     -0.00000001      0.00000372      0.49321303     -0.00000707      0.00000002      0.00000000
 a0000b         0.00000000     -0.00000000     -0.35509300      0.00000268     -0.00000087      0.00000000     -0.44525770
 b0000a        -0.00000000      0.00000000      0.35509300     -0.00000268      0.00000087     -0.00000000      0.44525770
 
 Energy:     -191.66228542   -191.66228542   -191.65001161   -191.65001161   -191.65001161   -191.65001161   -191.65001161

 State:             15
 002000        -0.16852510
 200000        -0.16852509
 a0b000        -0.00000000
 b0a000         0.00000000
 ab0000        -0.00000000
 ba0000         0.00000000
 0ba000        -0.00000000
 0ab000         0.00000000
 020000        -0.16852512
 00a0b0         0.39046633
 00b0a0        -0.39046633
 0a0b00         0.39046633
 0b0a00        -0.39046633
 00b00a        -0.00000000
 00a00b         0.00000000
 00ab00        -0.00000000
 00ba00         0.00000000
 0b000a         0.00000000
 0a000b        -0.00000000
 a00b00         0.00000000
 b00a00        -0.00000000
 0a00b0        -0.00000000
 0b00a0         0.00000000
 b000a0        -0.00000000
 a000b0         0.00000000
 a0000b         0.39046633
 b0000a        -0.39046633
 
 Energy:     -191.63707856
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       64.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.92       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.89      4.43      0.53      3.66
 REAL TIME  *        12.10 SEC
 DISK USED  *        66.59 MB (local),        2.10 GB (total)
 SF USED    *        87.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8283540   2.0
    -191.8283540   2.0
    -191.8283540   2.0
    -191.6587700   6.0
    -191.6587700   6.0
    -191.6587700   6.0
    -191.6587700   6.0
    -191.6587700   6.0
    -191.6569239   2.0
    -191.6569239   2.0
    -191.6569239   2.0
    -191.6534968  -0.0
    -191.7935764   6.0
    -191.7935764   6.0
    -191.7935764   6.0
    -191.7935764   6.0
    -191.7935764   6.0
    -191.7440008  -0.0
    -191.6622854   2.0
    -191.6622854   2.0
    -191.6622854   2.0
    -191.6500116   6.0
    -191.6500116   6.0
    -191.6500116   6.0
    -191.6500116   6.0
    -191.6500116   6.0
    -191.6370786  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       15 conf       15 CSFs
 N elec internal:     5315 conf    16815 CSFs
 N-1 el internal:     2966 conf    13566 CSFs
 N-2 el internal:      886 conf     6706 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     192 (  93  99 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.82835400
     2      -191.82835400
     3      -191.82835400
     4      -191.65876996
     5      -191.65876996
     6      -191.65876996
     7      -191.65876996
     8      -191.65876996
     9      -191.65692393
    10      -191.65692393
    11      -191.65692393
    12      -191.65349677

 Number of blocks in overlap matrix:  1261   Smallest eigenvalue:  0.99D+00
 Number of N-2 electron functions:    1321
 Number of N-1 electron functions:   13566

 Number of internal configurations:                 9255
 Number of singly external configurations:       1306872
 Number of doubly external configurations:      12187065
 Total number of contracted configurations:     13503192
 Total number of uncontracted configurations:   63005775

 Diagonal Coupling coefficients finished.               Storage:   5281699 words, CPU-Time:      1.53 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2101841 words, CPU-time:      2.88 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.82835400    -0.00000000    -0.92288795  0.52D-01  0.13D+00     6.27
    1     2     2     1.00000000     0.00000000  -191.82835400    -0.00000000    -0.92274067  0.52D-01  0.13D+00     6.27
    1     3     3     1.00000000     0.00000000  -191.82835400    -0.00000000    -0.92265154  0.51D-01  0.13D+00     6.27
    1     4     4     1.00000000     0.00000000  -191.65876996    -0.00000000    -0.87561630  0.43D-01  0.11D+00     6.27
    1     5     5     1.00000000     0.00000000  -191.65876996    -0.00000000    -0.87572018  0.43D-01  0.11D+00     6.27
    1     6     6     1.00000000     0.00000000  -191.65876996     0.00000000    -0.87571474  0.43D-01  0.11D+00     6.27
    1     7     7     1.00000000     0.00000000  -191.65876996    -0.00000000    -0.87576522  0.43D-01  0.11D+00     6.27
    1     8     8     1.00000000     0.00000000  -191.65876996    -0.00000000    -0.87566562  0.43D-01  0.11D+00     6.27
    1     9     9     1.00000000     0.00000000  -191.65692393    -0.00000000    -0.87827490  0.42D-01  0.11D+00     6.27
    1    10    10     1.00000000     0.00000000  -191.65692393     0.00000000    -0.87827551  0.42D-01  0.11D+00     6.27
    1    11    11     1.00000000     0.00000000  -191.65692393    -0.00000000    -0.87832790  0.42D-01  0.11D+00     6.27
    1    12    12     1.00000000     0.00000000  -191.65349677    -0.00000000    -0.87631835  0.42D-01  0.11D+00     6.27
    2     1     1     1.10498161    -0.71371798  -192.54207198    -0.71371798    -0.02820440  0.43D-02  0.26D-02   167.74
    2     2     2     1.10506828    -0.71363058  -192.54198457    -0.71363058    -0.02829868  0.44D-02  0.26D-02   167.74
    2     3     3     1.10514273    -0.71353994  -192.54189394    -0.71353994    -0.02840310  0.44D-02  0.26D-02   167.74
    2     4     4     1.09610212    -0.70673102  -192.36550098    -0.70673102    -0.02160729  0.29D-02  0.16D-02   167.74
    2     5     5     1.09613068    -0.70670114  -192.36547110    -0.70670114    -0.02164524  0.29D-02  0.16D-02   167.74
    2     6     6     1.09613138    -0.70669675  -192.36546671    -0.70669675    -0.02164533  0.29D-02  0.16D-02   167.74
    2     7     7     1.09613602    -0.70669641  -192.36546637    -0.70669641    -0.02164890  0.29D-02  0.16D-02   167.74
    2     8     8     1.09615845    -0.70666927  -192.36543923    -0.70666927    -0.02168116  0.29D-02  0.16D-02   167.74
    2     9     9     1.09566739    -0.70680341  -192.36372734    -0.70680341    -0.02206594  0.30D-02  0.17D-02   167.74
    2    10    10     1.09567717    -0.70679551  -192.36371944    -0.70679551    -0.02207428  0.30D-02  0.17D-02   167.74
    2    11    11     1.09569447    -0.70676990  -192.36369383    -0.70676990    -0.02210393  0.30D-02  0.17D-02   167.74
    2    12    12     1.09629905    -0.70701096  -192.36050774    -0.70701096    -0.02173097  0.29D-02  0.17D-02   167.74
    3     1     1     1.09000756    -0.73991244  -192.56826644    -0.02619446    -0.00038626  0.54D-04  0.46D-04   327.89
    3     2     2     1.09000481    -0.73991043  -192.56826443    -0.02627985    -0.00038828  0.55D-04  0.46D-04   327.89
    3     3     3     1.09000405    -0.73990779  -192.56826179    -0.02636785    -0.00039117  0.55D-04  0.46D-04   327.89
    3     4     4     1.08611000    -0.72706553  -192.38583549    -0.02033452    -0.00026953  0.36D-04  0.26D-04   327.89
    3     5     5     1.08611424    -0.72706515  -192.38583511    -0.02036401    -0.00027010  0.36D-04  0.26D-04   327.89
    3     6     6     1.08611558    -0.72706507  -192.38583503    -0.02036832    -0.00027021  0.36D-04  0.26D-04   327.89
    3     7     7     1.08610932    -0.72706490  -192.38583486    -0.02036850    -0.00027022  0.36D-04  0.26D-04   327.89
    3     8     8     1.08611462    -0.72706448  -192.38583444    -0.02039521    -0.00027083  0.36D-04  0.26D-04   327.89
    3     9     9     1.08576405    -0.72746703  -192.38439097    -0.02066362    -0.00027449  0.32D-04  0.28D-04   327.89
    3    10    10     1.08576296    -0.72746703  -192.38439096    -0.02067152    -0.00027447  0.32D-04  0.28D-04   327.89
    3    11    11     1.08576323    -0.72746635  -192.38439028    -0.02069645    -0.00027524  0.32D-04  0.28D-04   327.89
    3    12    12     1.08625840    -0.72744163  -192.38093840    -0.02043066    -0.00026480  0.28D-04  0.28D-04   327.89
    4     1     1     1.08956444    -0.74030851  -192.56866251    -0.00039607    -0.00001042  0.23D-05  0.94D-06   489.47
    4     2     2     1.08956379    -0.74030849  -192.56866248    -0.00039806    -0.00001044  0.23D-05  0.94D-06   489.47
    4     3     3     1.08956292    -0.74030839  -192.56866238    -0.00040060    -0.00001054  0.23D-05  0.95D-06   489.47
    4     4     4     1.08617478    -0.72734416  -192.38611411    -0.00027862    -0.00000794  0.16D-05  0.64D-06   489.47
    4     5     5     1.08617475    -0.72734415  -192.38611411    -0.00027900    -0.00000796  0.16D-05  0.65D-06   489.47
    4     6     6     1.08617327    -0.72734414  -192.38611410    -0.00027907    -0.00000795  0.16D-05  0.64D-06   489.47
    4     7     7     1.08617439    -0.72734413  -192.38611409    -0.00027923    -0.00000797  0.16D-05  0.65D-06   489.47
    4     8     8     1.08617292    -0.72734412  -192.38611408    -0.00027963    -0.00000797  0.16D-05  0.65D-06   489.47
    4     9     9     1.08586489    -0.72774805  -192.38467198    -0.00028102    -0.00000806  0.16D-05  0.67D-06   489.47
    4    10    10     1.08586482    -0.72774804  -192.38467197    -0.00028101    -0.00000807  0.16D-05  0.67D-06   489.47
    4    11    11     1.08586448    -0.72774802  -192.38467196    -0.00028168    -0.00000808  0.16D-05  0.67D-06   489.47
    4    12    12     1.08636085    -0.72771321  -192.38120998    -0.00027158    -0.00000739  0.13D-05  0.65D-06   489.47
    5     1     1     1.08960690    -0.74031948  -192.56867348    -0.00001097    -0.00000033  0.52D-07  0.32D-07   650.81
    5     2     2     1.08960669    -0.74031948  -192.56867348    -0.00001100    -0.00000033  0.53D-07  0.32D-07   650.81
    5     3     3     1.08960651    -0.74031947  -192.56867347    -0.00001109    -0.00000034  0.54D-07  0.32D-07   650.81
    5     4     4     1.08625032    -0.72735266  -192.38612261    -0.00000850    -0.00000026  0.47D-07  0.23D-07   650.81
    5     5     5     1.08625028    -0.72735265  -192.38612261    -0.00000850    -0.00000026  0.47D-07  0.22D-07   650.81
    5     6     6     1.08625028    -0.72735265  -192.38612261    -0.00000851    -0.00000026  0.48D-07  0.23D-07   650.81
    5     7     7     1.08625014    -0.72735265  -192.38612261    -0.00000851    -0.00000026  0.47D-07  0.22D-07   650.81
    5     8     8     1.08625016    -0.72735264  -192.38612260    -0.00000853    -0.00000026  0.48D-07  0.23D-07   650.81
    5     9     9     1.08595466    -0.72775658  -192.38468051    -0.00000853    -0.00000028  0.49D-07  0.24D-07   650.81
    5    10    10     1.08595463    -0.72775658  -192.38468051    -0.00000854    -0.00000028  0.49D-07  0.24D-07   650.81
    5    11    11     1.08595461    -0.72775658  -192.38468051    -0.00000855    -0.00000028  0.49D-07  0.25D-07   650.81
    5    12    12     1.08644968    -0.72772110  -192.38121787    -0.00000789    -0.00000024  0.41D-07  0.21D-07   650.81
    6     1     1     1.08961262    -0.74031981  -192.56867381    -0.00000033    -0.00000001  0.12D-08  0.12D-08   812.30
    6     2     2     1.08961261    -0.74031981  -192.56867381    -0.00000033    -0.00000001  0.12D-08  0.11D-08   812.30
    6     3     3     1.08961256    -0.74031980  -192.56867380    -0.00000033    -0.00000001  0.12D-08  0.12D-08   812.30
    6     4     4     1.08626744    -0.72735293  -192.38612289    -0.00000027    -0.00000001  0.11D-08  0.92D-09   812.30
    6     5     5     1.08626745    -0.72735292  -192.38612288    -0.00000027    -0.00000001  0.11D-08  0.92D-09   812.30
    6     6     6     1.08626746    -0.72735292  -192.38612288    -0.00000027    -0.00000001  0.11D-08  0.91D-09   812.30
    6     7     7     1.08626741    -0.72735292  -192.38612288    -0.00000027    -0.00000001  0.11D-08  0.92D-09   812.30
    6     8     8     1.08626741    -0.72735292  -192.38612288    -0.00000027    -0.00000001  0.11D-08  0.92D-09   812.30
    6     9     9     1.08597332    -0.72775686  -192.38468080    -0.00000028    -0.00000001  0.12D-08  0.10D-08   812.30
    6    10    10     1.08597333    -0.72775686  -192.38468080    -0.00000028    -0.00000001  0.12D-08  0.99D-09   812.30
    6    11    11     1.08597334    -0.72775686  -192.38468080    -0.00000028    -0.00000001  0.12D-08  0.99D-09   812.30
    6    12    12     1.08647096    -0.72772135  -192.38121812    -0.00000025    -0.00000001  0.10D-08  0.84D-09   812.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%   6.4%
 P   0.7%  17.6%  19.0%

 Initialization:   0.6%
 Other:           54.7%

 Total CPU:      812.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0000          -0.0000000   0.0000000   0.9535014   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0810652   0.0000000   0.0000000   0.0000000
 2222222222/0/000           0.0000000   0.9535014  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0000000  -0.0000000  -0.0810652  -0.0000000
 22222222220//000           0.9535014  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0810652   0.0000000   0.0000000
 222222222200/0/0          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.7565698  -0.1975771
                            0.0000000   0.0000000  -0.0000000   0.5528533
 2222222222/0000/          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2071781   0.7539972
                           -0.0000000   0.0000000   0.0000000   0.5528533
 22222222220/000/          -0.0000000   0.0000000  -0.0576304   0.0000000   0.6771824   0.0000000   0.0000000   0.0000000
                           -0.6748750  -0.0000000  -0.0000000  -0.0000000
 222222222200//00          -0.0576305  -0.0000000  -0.0000000   0.6771824  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0000000   0.6748750  -0.0000000   0.0000000
 222222222200/00/           0.0000000  -0.0576304   0.0000000  -0.0000000   0.0000000   0.6771824   0.0000000   0.0000000
                            0.0000000   0.0000000  -0.6748750  -0.0000000
 2222222222/000/0          -0.0000000   0.0576305  -0.0000000  -0.0000000   0.0000000   0.6771823   0.0000000   0.0000000
                            0.0000000   0.0000000   0.6748751  -0.0000000
 22222222220/00/0           0.0576305  -0.0000000   0.0000000   0.6771823  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.6748751   0.0000000   0.0000000
 2222222222/00/00           0.0000000   0.0000000   0.0576305   0.0000000   0.6771823  -0.0000000  -0.0000000   0.0000000
                            0.6748751  -0.0000000  -0.0000000   0.0000000
 22222222220/0/00           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.5493917  -0.5564201
                           -0.0000000   0.0000000   0.0000000   0.5528533

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.956669   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.024582   -0.000000
             0.000000   -0.000000
 2           0.000000    0.956669   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.024582
             0.000000    0.000000
 3           0.956669   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.024582   -0.000000
 4           0.000000    0.000000    0.000000   -0.000000    0.957680   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957680   -0.000000    0.000000    0.000000
            -0.000000    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.957680   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.957534    0.000000    0.000000    0.000000   -0.016768    0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000    0.016768   -0.000000    0.000000    0.000000    0.957534   -0.000000    0.000000
             0.000000   -0.000000
 9           0.025118    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.957515   -0.000000
 10          0.000000   -0.000000   -0.025118   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957515    0.000000
             0.000000    0.000000
 11          0.000000    0.025118    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957515
             0.000000   -0.000000
 12          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.957570

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956985    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000257
            -0.000000   -0.000000
 2           0.000000    0.956985    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000257    0.000000
 3           0.000000    0.000000    0.956985   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000257    0.000000
             0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.957680   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.957680    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.957680   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957680    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.957680   -0.000000   -0.000000
             0.000000   -0.000000
 9           0.000000    0.000000    0.000257   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957845    0.000000
            -0.000000   -0.000000
 10         -0.000257   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957845
            -0.000000   -0.000000
 11         -0.000000    0.000257    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.957845   -0.000000
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.957570


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95666889 (fixed)   0.95698468 (relaxed)   0.95698461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211593   -0.00418819   -0.62685499
 Singles      0.01602959   -0.05741192   -0.06345075
 Pairs        0.07377265    0.00000000   -0.05001407
 Total        1.09191816   -0.06160011   -0.74031981
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.82823851
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17705474
 One electron energy                 -335.74481243
 Two electron energy                  143.17613862
 Virial quotient                       -3.04807932
 Correlation energy                    -0.74043530
 !MRCI STATE 1.1 Energy              -192.568673806309

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63673326 (Davidson, fixed reference)
 Cluster corrected energies          -192.63673315 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63673326 (Davidson, rotated reference)

 Cluster corrected energies          -192.63473060 (Pople, fixed reference)
 Cluster corrected energies          -192.63473049 (Pople, relaxed reference)
 Cluster corrected energies          -192.63473060 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95666889 (fixed)   0.95698468 (relaxed)   0.95698462 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211593   -0.00418819   -0.62685506
 Singles      0.01602954   -0.05741185   -0.06345070
 Pairs        0.07377269   -0.00000000   -0.05001405
 Total        1.09191815   -0.06160005   -0.74031981
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.82823851
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17705615
 One electron energy                 -335.74481366
 Two electron energy                  143.17613985
 Virial quotient                       -3.04807925
 Correlation energy                    -0.74043530
 !MRCI STATE 2.1 Energy              -192.568673806240

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63673325 (Davidson, fixed reference)
 Cluster corrected energies          -192.63673314 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63673325 (Davidson, rotated reference)

 Cluster corrected energies          -192.63473059 (Pople, fixed reference)
 Cluster corrected energies          -192.63473048 (Pople, relaxed reference)
 Cluster corrected energies          -192.63473059 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95666891 (fixed)   0.95698470 (relaxed)   0.95698464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211593   -0.00418819   -0.62685514
 Singles      0.01602946   -0.05741180   -0.06345065
 Pairs        0.07377271    0.00000000   -0.05001401
 Total        1.09191810   -0.06159999   -0.74031980
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.82823851
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17705453
 One electron energy                 -335.74481102
 Two electron energy                  143.17613721
 Virial quotient                       -3.04807933
 Correlation energy                    -0.74043529
 !MRCI STATE 3.1 Energy              -192.568673800929

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63673321 (Davidson, fixed reference)
 Cluster corrected energies          -192.63673310 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63673321 (Davidson, rotated reference)

 Cluster corrected energies          -192.63473055 (Pople, fixed reference)
 Cluster corrected energies          -192.63473044 (Pople, relaxed reference)
 Cluster corrected energies          -192.63473055 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95768046 (fixed)   0.95768046 (relaxed)   0.95768046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00374173   -0.00753951   -0.61264687
 Singles      0.01752592   -0.06208602   -0.06863752
 Pairs        0.06906432    0.00000000   -0.04606853
 Total        1.09033196   -0.06962552   -0.72735293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65876996
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90097827
 One electron energy                 -331.33848402
 Two electron energy                  138.95236114
 Virial quotient                       -3.05855534
 Correlation energy                    -0.72735293
 !MRCI STATE 4.1 Energy              -192.386122887191

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45182611 (Davidson, fixed reference)
 Cluster corrected energies          -192.45182611 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45182611 (Davidson, rotated reference)

 Cluster corrected energies          -192.44980763 (Pople, fixed reference)
 Cluster corrected energies          -192.44980763 (Pople, relaxed reference)
 Cluster corrected energies          -192.44980763 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95768046 (fixed)   0.95768046 (relaxed)   0.95768046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00374173   -0.00753951   -0.61264688
 Singles      0.01752591   -0.06208600   -0.06863751
 Pairs        0.06906433   -0.00000000   -0.04606853
 Total        1.09033197   -0.06962551   -0.72735292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65876996
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90097812
 One electron energy                 -331.33848380
 Two electron energy                  138.95236092
 Virial quotient                       -3.05855535
 Correlation energy                    -0.72735292
 !MRCI STATE 5.1 Energy              -192.386122881025

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45182610 (Davidson, fixed reference)
 Cluster corrected energies          -192.45182610 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45182610 (Davidson, rotated reference)

 Cluster corrected energies          -192.44980762 (Pople, fixed reference)
 Cluster corrected energies          -192.44980762 (Pople, relaxed reference)
 Cluster corrected energies          -192.44980762 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95768046 (fixed)   0.95768046 (relaxed)   0.95768046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00374173   -0.00753951   -0.61264685
 Singles      0.01752593   -0.06208602   -0.06863752
 Pairs        0.06906433   -0.00000000   -0.04606855
 Total        1.09033198   -0.06962553   -0.72735292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65876996
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90097963
 One electron energy                 -331.33848553
 Two electron energy                  138.95236264
 Virial quotient                       -3.05855527
 Correlation energy                    -0.72735292
 !MRCI STATE 6.1 Energy              -192.386122880838

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45182611 (Davidson, fixed reference)
 Cluster corrected energies          -192.45182611 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45182611 (Davidson, rotated reference)

 Cluster corrected energies          -192.44980764 (Pople, fixed reference)
 Cluster corrected energies          -192.44980764 (Pople, relaxed reference)
 Cluster corrected energies          -192.44980764 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95753367 (fixed)   0.95768048 (relaxed)   0.95768048 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00374173   -0.00753951   -0.61264689
 Singles      0.01752588   -0.06208603   -0.06863751
 Pairs        0.06906432    0.00000002   -0.04606852
 Total        1.09033193   -0.06962552   -0.72735292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65876996
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90097765
 One electron energy                 -331.33848100
 Two electron energy                  138.95235812
 Virial quotient                       -3.05855537
 Correlation energy                    -0.72735292
 !MRCI STATE 7.1 Energy              -192.386122877793

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45182607 (Davidson, fixed reference)
 Cluster corrected energies          -192.45182607 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45182607 (Davidson, rotated reference)

 Cluster corrected energies          -192.44980759 (Pople, fixed reference)
 Cluster corrected energies          -192.44980759 (Pople, relaxed reference)
 Cluster corrected energies          -192.44980759 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95753367 (fixed)   0.95768048 (relaxed)   0.95768048 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00374173   -0.00753951   -0.61264689
 Singles      0.01752588   -0.06208602   -0.06863750
 Pairs        0.06906433    0.00000001   -0.04606852
 Total        1.09033193   -0.06962551   -0.72735292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65876996
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90097765
 One electron energy                 -331.33848094
 Two electron energy                  138.95235806
 Virial quotient                       -3.05855537
 Correlation energy                    -0.72735292
 !MRCI STATE 8.1 Energy              -192.386122877217

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45182607 (Davidson, fixed reference)
 Cluster corrected energies          -192.45182607 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45182607 (Davidson, rotated reference)

 Cluster corrected energies          -192.44980759 (Pople, fixed reference)
 Cluster corrected energies          -192.44980759 (Pople, relaxed reference)
 Cluster corrected energies          -192.44980759 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95751530 (fixed)   0.95785420 (relaxed)   0.95784466 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00366938   -0.00737312   -0.61364219
 Singles      0.01709217   -0.06158296   -0.06791689
 Pairs        0.06919663    0.00000000   -0.04619779
 Total        1.08995818   -0.06895608   -0.72775686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65703942
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91935255
 One electron energy                 -331.45408363
 Two electron energy                  139.06940283
 Virial quotient                       -3.05763923
 Correlation energy                    -0.72764138
 !MRCI STATE 9.1 Energy              -192.384680796504

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45013809 (Davidson, fixed reference)
 Cluster corrected energies          -192.45012229 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45013809 (Davidson, rotated reference)

 Cluster corrected energies          -192.44810720 (Pople, fixed reference)
 Cluster corrected energies          -192.44809074 (Pople, relaxed reference)
 Cluster corrected energies          -192.44810720 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95751530 (fixed)   0.95785420 (relaxed)   0.95784466 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00366938   -0.00737312   -0.61364217
 Singles      0.01709217   -0.06158298   -0.06791689
 Pairs        0.06919662   -0.00000000   -0.04619780
 Total        1.08995818   -0.06895610   -0.72775686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65703942
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91935286
 One electron energy                 -331.45408418
 Two electron energy                  139.06940338
 Virial quotient                       -3.05763922
 Correlation energy                    -0.72764138
 !MRCI STATE 10.1 Energy             -192.384680796225

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45013809 (Davidson, fixed reference)
 Cluster corrected energies          -192.45012229 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45013809 (Davidson, rotated reference)

 Cluster corrected energies          -192.44810720 (Pople, fixed reference)
 Cluster corrected energies          -192.44809074 (Pople, relaxed reference)
 Cluster corrected energies          -192.44810720 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95751530 (fixed)   0.95785419 (relaxed)   0.95784466 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00366938   -0.00737312   -0.61364217
 Singles      0.01709218   -0.06158298   -0.06791689
 Pairs        0.06919663    0.00000000   -0.04619780
 Total        1.08995819   -0.06895610   -0.72775686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65703942
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91935357
 One electron energy                 -331.45408493
 Two electron energy                  139.06940414
 Virial quotient                       -3.05763918
 Correlation energy                    -0.72764138
 !MRCI STATE 11.1 Energy             -192.384680795771

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45013810 (Davidson, fixed reference)
 Cluster corrected energies          -192.45012230 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45013810 (Davidson, rotated reference)

 Cluster corrected energies          -192.44810721 (Pople, fixed reference)
 Cluster corrected energies          -192.44809075 (Pople, relaxed reference)
 Cluster corrected energies          -192.44810721 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95756999 (fixed)   0.95756999 (relaxed)   0.95756999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00378529   -0.00758117   -0.00947732
 Singles      0.01746541   -0.06206112   -0.06856451
 Pairs        0.06933287   -0.65807905   -0.64967952
 Total        1.09058357   -0.72772135   -0.72772135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65349677
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90179603
 One electron energy                 -331.33731425
 Two electron energy                  138.95609613
 Virial quotient                       -3.05843760
 Correlation energy                    -0.72772135
 !MRCI STATE 12.1 Energy             -192.381218121045

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44713772 (Davidson, fixed reference)
 Cluster corrected energies          -192.44713772 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44713772 (Davidson, rotated reference)

 Cluster corrected energies          -192.44512613 (Pople, fixed reference)
 Cluster corrected energies          -192.44512613 (Pople, relaxed reference)
 Cluster corrected energies          -192.44512613 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       64.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1248.15       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       924.64    915.73      4.43      0.53      3.66
 REAL TIME  *      1017.58 SEC
 DISK USED  *         1.28 GB (local),       31.31 GB (total)
 SF USED    *        11.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.63673326  AU                              
 SETTING HLSDIAG(2)     =      -192.63673325  AU                              
 SETTING HLSDIAG(3)     =      -192.63673321  AU                              
 SETTING HLSDIAG(4)     =      -192.45182611  AU                              
 SETTING HLSDIAG(5)     =      -192.45182610  AU                              
 SETTING HLSDIAG(6)     =      -192.45182611  AU                              
 SETTING HLSDIAG(7)     =      -192.45182607  AU                              
 SETTING HLSDIAG(8)     =      -192.45182607  AU                              
 SETTING HLSDIAG(9)     =      -192.45013809  AU                              
 SETTING HLSDIAG(10)    =      -192.45013809  AU                              
 SETTING HLSDIAG(11)    =      -192.45013810  AU                              
 SETTING HLSDIAG(12)    =      -192.44713772  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       21 conf       21 CSFs
 N elec internal:     5471 conf    11221 CSFs
 N-1 el internal:     2966 conf     8266 CSFs
 N-2 el internal:     1216 conf     4396 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     192 (  93  99 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.79357639
     2      -191.79357639
     3      -191.79357639
     4      -191.79357639
     5      -191.79357639
     6      -191.74400078
     7      -191.66228542
     8      -191.66228542
     9      -191.66228542
    10      -191.65001161
    11      -191.65001161
    12      -191.65001161
    13      -191.65001161
    14      -191.65001161
    15      -191.63707856

 Number of blocks in overlap matrix:  1561   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:    1621
 Number of N-1 electron functions:    8266

 Number of internal configurations:                 6321
 Number of singly external configurations:        796662
 Number of doubly external configurations:      14955369
 Total number of contracted configurations:     15758352
 Total number of uncontracted configurations:   41292981

 Diagonal Coupling coefficients finished.               Storage:   5003235 words, CPU-Time:      1.82 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2197636 words, CPU-time:      3.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.79357639    -0.00000000    -0.92987236  0.60D-01  0.13D+00     7.42
    1     2     2     1.00000000     0.00000000  -191.79357639     0.00000000    -0.93073910  0.61D-01  0.13D+00     7.42
    1     3     3     1.00000000     0.00000000  -191.79357639     0.00000000    -0.93053677  0.61D-01  0.13D+00     7.42
    1     4     4     1.00000000     0.00000000  -191.79357639    -0.00000000    -0.93081122  0.61D-01  0.13D+00     7.42
    1     5     5     1.00000000     0.00000000  -191.79357639    -0.00000000    -0.92976345  0.60D-01  0.13D+00     7.42
    1     6     6     1.00000000     0.00000000  -191.74400078    -0.00000000    -0.92955663  0.45D-01  0.15D+00     7.42
    1     7     7     1.00000000     0.00000000  -191.66228542    -0.00000000    -0.87514433  0.43D-01  0.11D+00     7.42
    1     8     8     1.00000000     0.00000000  -191.66228542     0.00000000    -0.87511835  0.43D-01  0.11D+00     7.42
    1     9     9     1.00000000     0.00000000  -191.66228542    -0.00000000    -0.87518237  0.43D-01  0.11D+00     7.42
    1    10    10     1.00000000     0.00000000  -191.65001161    -0.00000000    -0.88185586  0.44D-01  0.11D+00     7.42
    1    11    11     1.00000000     0.00000000  -191.65001161    -0.00000000    -0.88210469  0.45D-01  0.11D+00     7.42
    1    12    12     1.00000000     0.00000000  -191.65001161    -0.00000000    -0.88215645  0.45D-01  0.11D+00     7.42
    1    13    13     1.00000000     0.00000000  -191.65001161    -0.00000000    -0.88217851  0.45D-01  0.11D+00     7.42
    1    14    14     1.00000000     0.00000000  -191.65001161    -0.00000000    -0.88189653  0.44D-01  0.11D+00     7.42
    1    15    15     1.00000000     0.00000000  -191.63707856    -0.00000000    -0.89184310  0.52D-01  0.12D+00     7.42
    2     1     1     1.11093993    -0.71886952  -192.51244591    -0.71886952    -0.02919842  0.49D-02  0.27D-02   244.73
    2     2     2     1.11101519    -0.71873394  -192.51231032    -0.71873394    -0.02936331  0.50D-02  0.27D-02   244.73
    2     3     3     1.11132391    -0.71843678  -192.51201317    -0.71843678    -0.02968319  0.52D-02  0.27D-02   244.73
    2     4     4     1.11146557    -0.71831553  -192.51189191    -0.71831553    -0.02981872  0.52D-02  0.28D-02   244.73
    2     5     5     1.11142078    -0.71830127  -192.51187766    -0.71830127    -0.02984686  0.53D-02  0.28D-02   244.73
    2     6     6     1.11187604    -0.72180857  -192.46580935    -0.72180857    -0.03174708  0.55D-02  0.39D-02   244.73
    2     7     7     1.09583316    -0.70662525  -192.36891067    -0.70662525    -0.02149508  0.29D-02  0.16D-02   244.73
    2     8     8     1.09583518    -0.70661916  -192.36890457    -0.70661916    -0.02150387  0.28D-02  0.16D-02   244.73
    2     9     9     1.09585958    -0.70659297  -192.36887839    -0.70659297    -0.02153266  0.29D-02  0.16D-02   244.73
    2    10    10     1.09750432    -0.70767332  -192.35768493    -0.70767332    -0.02275934  0.34D-02  0.18D-02   244.73
    2    11    11     1.09753288    -0.70763580  -192.35764741    -0.70763580    -0.02280409  0.34D-02  0.18D-02   244.73
    2    12    12     1.09772189    -0.70748578  -192.35749739    -0.70748578    -0.02297665  0.35D-02  0.18D-02   244.73
    2    13    13     1.09774979    -0.70746202  -192.35747364    -0.70746202    -0.02300572  0.35D-02  0.19D-02   244.73
    2    14    14     1.09775359    -0.70744587  -192.35745749    -0.70744587    -0.02302562  0.36D-02  0.19D-02   244.73
    2    15    15     1.10313470    -0.70799321  -192.34507177    -0.70799321    -0.02623379  0.56D-02  0.23D-02   244.73
    3     1     1     1.09408789    -0.74601367  -192.53959006    -0.02714416    -0.00048079  0.78D-04  0.60D-04   478.72
    3     2     2     1.09408802    -0.74600845  -192.53958483    -0.02727451    -0.00048615  0.79D-04  0.61D-04   478.72
    3     3     3     1.09410962    -0.74599993  -192.53957632    -0.02756315    -0.00049531  0.80D-04  0.62D-04   478.72
    3     4     4     1.09411682    -0.74599596  -192.53957235    -0.02768044    -0.00049934  0.81D-04  0.63D-04   478.72
    3     5     5     1.09411404    -0.74599469  -192.53957108    -0.02769342    -0.00050087  0.81D-04  0.63D-04   478.72
    3     6     6     1.09391580    -0.75132018  -192.49532096    -0.02951161    -0.00062062  0.82D-04  0.11D-03   478.72
    3     7     7     1.08602230    -0.72684320  -192.38912861    -0.02021795    -0.00026354  0.34D-04  0.24D-04   478.72
    3     8     8     1.08602348    -0.72684288  -192.38912830    -0.02022373    -0.00026392  0.34D-04  0.24D-04   478.72
    3     9     9     1.08602285    -0.72684236  -192.38912778    -0.02024939    -0.00026443  0.34D-04  0.24D-04   478.72
    3    10    10     1.08657491    -0.72897647  -192.37898808    -0.02130315    -0.00031003  0.37D-04  0.36D-04   478.72
    3    11    11     1.08657471    -0.72897542  -192.37898703    -0.02133962    -0.00031116  0.37D-04  0.36D-04   478.72
    3    12    12     1.08658816    -0.72896915  -192.37898077    -0.02148338    -0.00031794  0.38D-04  0.38D-04   478.72
    3    13    13     1.08659026    -0.72896826  -192.37897987    -0.02150623    -0.00031894  0.38D-04  0.38D-04   478.72
    3    14    14     1.08658924    -0.72896788  -192.37897950    -0.02152201    -0.00031935  0.38D-04  0.38D-04   478.72
    3    15    15     1.08783801    -0.73237142  -192.36944998    -0.02437821    -0.00047521  0.73D-04  0.73D-04   478.72
    4     1     1     1.09324888    -0.74651462  -192.54009101    -0.00050095    -0.00001753  0.39D-05  0.19D-05   713.60
    4     2     2     1.09324933    -0.74651443  -192.54009082    -0.00050599    -0.00001770  0.40D-05  0.19D-05   713.60
    4     3     3     1.09324902    -0.74651442  -192.54009080    -0.00051448    -0.00001780  0.40D-05  0.19D-05   713.60
    4     4     4     1.09324896    -0.74651431  -192.54009070    -0.00051835    -0.00001789  0.40D-05  0.19D-05   713.60
    4     5     5     1.09324942    -0.74651425  -192.54009064    -0.00051956    -0.00001795  0.40D-05  0.20D-05   713.60
    4     6     6     1.09280891    -0.75195757  -192.49595835    -0.00063739    -0.00002386  0.49D-05  0.35D-05   713.60
    4     7     7     1.08609656    -0.72711711  -192.38940252    -0.00027391    -0.00000837  0.18D-05  0.71D-06   713.60
    4     8     8     1.08609643    -0.72711709  -192.38940251    -0.00027421    -0.00000839  0.18D-05  0.71D-06   713.60
    4     9     9     1.08609623    -0.72711707  -192.38940249    -0.00027471    -0.00000840  0.18D-05  0.71D-06   713.60
    4    10    10     1.08659421    -0.72929677  -192.37930838    -0.00032029    -0.00001100  0.29D-05  0.11D-05   713.60
    4    11    11     1.08659406    -0.72929671  -192.37930833    -0.00032130    -0.00001104  0.29D-05  0.11D-05   713.60
    4    12    12     1.08659497    -0.72929640  -192.37930801    -0.00032725    -0.00001140  0.31D-05  0.11D-05   713.60
    4    13    13     1.08659484    -0.72929637  -192.37930799    -0.00032812    -0.00001144  0.31D-05  0.11D-05   713.60
    4    14    14     1.08659477    -0.72929635  -192.37930797    -0.00032847    -0.00001146  0.32D-05  0.11D-05   713.60
    4    15    15     1.08745319    -0.73286643  -192.36994500    -0.00049502    -0.00002235  0.73D-05  0.25D-05   713.60
    5     1     1     1.09320356    -0.74653384  -192.54011023    -0.00001922    -0.00000055  0.68D-07  0.70D-07   950.37
    5     2     2     1.09320325    -0.74653384  -192.54011023    -0.00001941    -0.00000055  0.68D-07  0.69D-07   950.37
    5     3     3     1.09320370    -0.74653384  -192.54011022    -0.00001942    -0.00000055  0.67D-07  0.70D-07   950.37
    5     4     4     1.09320314    -0.74653384  -192.54011022    -0.00001953    -0.00000055  0.69D-07  0.70D-07   950.37
    5     5     5     1.09320353    -0.74653383  -192.54011022    -0.00001958    -0.00000055  0.67D-07  0.70D-07   950.37
    5     6     6     1.09277974    -0.75198363  -192.49598441    -0.00002606    -0.00000075  0.87D-07  0.12D-06   950.37
    5     7     7     1.08616176    -0.72712621  -192.38941163    -0.00000910    -0.00000031  0.61D-07  0.28D-07   950.37
    5     8     8     1.08616174    -0.72712621  -192.38941162    -0.00000912    -0.00000031  0.62D-07  0.28D-07   950.37
    5     9     9     1.08616172    -0.72712621  -192.38941162    -0.00000913    -0.00000031  0.61D-07  0.28D-07   950.37
    5    10    10     1.08667143    -0.72930860  -192.37932022    -0.00001184    -0.00000042  0.66D-07  0.54D-07   950.37
    5    11    11     1.08667147    -0.72930860  -192.37932021    -0.00001188    -0.00000042  0.66D-07  0.54D-07   950.37
    5    12    12     1.08667153    -0.72930859  -192.37932021    -0.00001219    -0.00000045  0.71D-07  0.58D-07   950.37
    5    13    13     1.08667152    -0.72930859  -192.37932020    -0.00001221    -0.00000045  0.71D-07  0.58D-07   950.37
    5    14    14     1.08667154    -0.72930858  -192.37932019    -0.00001223    -0.00000045  0.71D-07  0.58D-07   950.37
    5    15    15     1.08749092    -0.73289037  -192.36996893    -0.00002394    -0.00000092  0.14D-06  0.15D-06   950.37
    6     1     1     1.09319725    -0.74653441  -192.54011080    -0.00000057    -0.00000001  0.16D-08  0.21D-08  1185.77
    6     2     2     1.09319732    -0.74653441  -192.54011079    -0.00000056    -0.00000002  0.16D-08  0.21D-08  1185.77
    6     3     3     1.09319726    -0.74653441  -192.54011079    -0.00000057    -0.00000002  0.17D-08  0.21D-08  1185.77
    6     4     4     1.09319732    -0.74653440  -192.54011078    -0.00000056    -0.00000001  0.15D-08  0.21D-08  1185.77
    6     5     5     1.09319723    -0.74653440  -192.54011078    -0.00000056    -0.00000001  0.16D-08  0.21D-08  1185.77
    6     6     6     1.09276856    -0.75198440  -192.49598518    -0.00000077    -0.00000002  0.28D-08  0.34D-08  1185.77
    6     7     7     1.08617216    -0.72712653  -192.38941195    -0.00000032    -0.00000001  0.19D-08  0.13D-08  1185.77
    6     8     8     1.08617215    -0.72712653  -192.38941195    -0.00000032    -0.00000001  0.19D-08  0.13D-08  1185.77
    6     9     9     1.08617218    -0.72712653  -192.38941195    -0.00000032    -0.00000001  0.19D-08  0.13D-08  1185.77
    6    10    10     1.08668510    -0.72930905  -192.37932066    -0.00000044    -0.00000002  0.33D-08  0.20D-08  1185.77
    6    11    11     1.08668509    -0.72930905  -192.37932066    -0.00000045    -0.00000002  0.33D-08  0.20D-08  1185.77
    6    12    12     1.08668534    -0.72930904  -192.37932065    -0.00000045    -0.00000002  0.31D-08  0.18D-08  1185.77
    6    13    13     1.08668512    -0.72930904  -192.37932065    -0.00000045    -0.00000002  0.33D-08  0.20D-08  1185.77
    6    14    14     1.08668533    -0.72930903  -192.37932064    -0.00000045    -0.00000002  0.31D-08  0.18D-08  1185.77
    6    15    15     1.08749009    -0.73289130  -192.36996986    -0.00000093    -0.00000003  0.60D-08  0.51D-08  1185.77
    7     1     1     1.09319725    -0.74653441  -192.54011080     0.00000000    -0.00000001  0.16D-08  0.21D-08  1210.91
    7     2     2     1.09319732    -0.74653441  -192.54011079     0.00000000    -0.00000002  0.16D-08  0.21D-08  1210.91
    7     3     3     1.09319726    -0.74653441  -192.54011079     0.00000000    -0.00000002  0.17D-08  0.21D-08  1210.91
    7     4     4     1.09319732    -0.74653440  -192.54011078     0.00000000    -0.00000001  0.15D-08  0.21D-08  1210.91
    7     5     5     1.09319723    -0.74653440  -192.54011078     0.00000000    -0.00000001  0.16D-08  0.21D-08  1210.91
    7     6     6     1.09276787    -0.75198441  -192.49598519    -0.00000001    -0.00000002  0.15D-08  0.24D-08  1210.91
    7     7     7     1.08617216    -0.72712653  -192.38941195    -0.00000000    -0.00000001  0.19D-08  0.13D-08  1210.91
    7     8     8     1.08617215    -0.72712653  -192.38941195    -0.00000000    -0.00000001  0.19D-08  0.13D-08  1210.91
    7     9     9     1.08617218    -0.72712653  -192.38941195    -0.00000000    -0.00000001  0.19D-08  0.13D-08  1210.91
    7    10    10     1.08668510    -0.72930905  -192.37932066     0.00000000    -0.00000002  0.33D-08  0.20D-08  1210.91
    7    11    11     1.08668509    -0.72930905  -192.37932066     0.00000000    -0.00000002  0.33D-08  0.20D-08  1210.91
    7    12    12     1.08668534    -0.72930904  -192.37932065     0.00000000    -0.00000002  0.31D-08  0.18D-08  1210.91
    7    13    13     1.08668512    -0.72930904  -192.37932065    -0.00000000    -0.00000002  0.33D-08  0.20D-08  1210.91
    7    14    14     1.08668533    -0.72930903  -192.37932064     0.00000000    -0.00000002  0.31D-08  0.18D-08  1210.91
    7    15    15     1.08749219    -0.73289133  -192.36996990    -0.00000004    -0.00000000  0.13D-09  0.16D-09  1210.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%   3.1%
 P   0.7%  13.5%  24.0%

 Initialization:   0.4%
 Other:           57.3%

 Total CPU:     1210.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9483648  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000  -0.1134724  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222/\0000           0.9483648  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0000000   0.0000000  -0.1134724   0.0000000   0.0000000   0.0000000  -0.0000000
 2222222222/0\000          -0.0000000  -0.0000000  -0.0000000   0.9483648   0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0000000   0.0000000  -0.0000000   0.0000000  -0.1134724   0.0000000   0.0000000
 222222222200/0\0           0.0000000   0.0928538  -0.0104303  -0.0000000   0.0000000   0.1097769  -0.0000000  -0.0000000
                            0.0000000   0.0000000  -0.0000000   0.7700155  -0.0000000  -0.0985904   0.5416652
 2222222222002000           0.0000000   0.7694971  -0.0864377  -0.0000000   0.0000000   0.5396083   0.0000000   0.0000000
                           -0.0000000  -0.0000000   0.0000000  -0.0918996  -0.0000000   0.0117665  -0.1087798
 22222222220/0\00           0.0000000  -0.0554598  -0.0751986  -0.0000000   0.0000000   0.1097769  -0.0000000  -0.0000000
                           -0.0000000  -0.0000000   0.0000000  -0.2996260   0.0000000   0.7161482   0.5416652
 2222222222200000           0.0000000  -0.3098913   0.7096228  -0.0000000  -0.0000000   0.5396083   0.0000000  -0.0000000
                           -0.0000000  -0.0000000   0.0000000   0.0561399  -0.0000000   0.0737041  -0.1087798
 22222222220/00\0          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0809195  -0.0000000  -0.6772210  -0.0000000
                           -0.0000000   0.6722969   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222222/00\00           0.0809195  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.6772210
                           -0.0000000   0.0000000   0.6722968   0.0000000   0.0000000  -0.0000000   0.0000000
 222222222200/00\          -0.0000000  -0.0000000  -0.0000000   0.0809194  -0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.6772210   0.0000000  -0.0000000   0.0000000   0.6722968  -0.0000000   0.0000000
 22222222220/000\           0.0809194   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6772210
                           -0.0000000  -0.0000000   0.6722969  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222222/000\0          -0.0000000  -0.0000000   0.0000000   0.0809195   0.0000000   0.0000000  -0.0000000  -0.0000000
                            0.6772210   0.0000000  -0.0000000  -0.0000000   0.6722969  -0.0000000   0.0000000
 222222222200/\00          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0809194  -0.0000000   0.6772210  -0.0000000
                            0.0000000   0.6722968  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222020000          -0.0000000  -0.4596057  -0.6231852  -0.0000000   0.0000000   0.5396083   0.0000000   0.0000000
                            0.0000000   0.0000000   0.0000000   0.0357597  -0.0000000  -0.0854706  -0.1087798
 2222222222/0000\           0.0000000  -0.0373940   0.0856289  -0.0000000  -0.0000000   0.1097769  -0.0000000  -0.0000000
                           -0.0000000   0.0000000  -0.0000000  -0.4703895  -0.0000000  -0.6175578   0.5416652

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.954299   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.042844   -0.000000    0.000000
 2           0.050999   -0.000000   -0.000000   -0.000000    0.952936    0.000000   -0.000000    0.000000   -0.000000   -0.041396
             0.000000    0.000000    0.000000    0.011045   -0.000000
 3           0.952936   -0.000000   -0.000000    0.000000   -0.050999   -0.000000    0.000000    0.000000    0.000000    0.011045
             0.000000    0.000000    0.000000    0.041396    0.000000
 4           0.000000    0.000000    0.954299   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.042844   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.954299    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.042844   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.949479    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.090919
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.957735   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957735   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957735    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000000    0.044214    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.956498   -0.000000   -0.000000    0.000000
 11         -0.000000    0.044214   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.956498    0.000000   -0.000000
 12         -0.008165   -0.000000   -0.000000   -0.000000    0.043454   -0.000000   -0.000000   -0.000000    0.000000    0.956276
            -0.000000   -0.000000   -0.000000   -0.020596   -0.000000
 13         -0.000000    0.000000    0.044214   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.956498   -0.000000    0.000000    0.000000   -0.000000
 14         -0.043454    0.000000   -0.000000    0.000000   -0.008165   -0.000000   -0.000000    0.000000   -0.000000    0.020596
            -0.000000    0.000000   -0.000000    0.956276   -0.000000
 15         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.093693    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.952355

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955260    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000634    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.955260   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000616   -0.000000   -0.000150   -0.000000
 3           0.000000   -0.000000    0.955260    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000150   -0.000000   -0.000616    0.000000
 4           0.000000   -0.000000    0.000000    0.955260   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000634   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.955260   -0.000000   -0.000000    0.000000    0.000000    0.000634
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.953821   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.001241
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957735   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.957735    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.957735   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000634    0.000000   -0.000000   -0.000000   -0.000000    0.957519
            -0.000000    0.000000   -0.000000    0.000000   -0.000000
 11          0.000634   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.957519    0.000000   -0.000000    0.000000    0.000000
 12          0.000000    0.000616   -0.000150   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.957519    0.000000    0.000000    0.000000
 13         -0.000000   -0.000000   -0.000000    0.000634    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.957519    0.000000   -0.000000
 14         -0.000000   -0.000150   -0.000616   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.957519    0.000000
 15          0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.001241    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.956952


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95429932 (fixed)   0.95526062 (relaxed)   0.95526039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00243893   -0.00488118   -0.62699275
 Singles      0.01839095   -0.06125670   -0.06843038
 Pairs        0.07503360   -0.00000000   -0.05111128
 Total        1.09586349   -0.06613788   -0.74653441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79327899
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16517389
 One electron energy                 -335.64424395
 Two electron energy                  143.10413316
 Virial quotient                       -3.04820044
 Correlation energy                    -0.74683181
 !MRCI STATE 1.1 Energy              -192.540110796862

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61170470 (Davidson, fixed reference)
 Cluster corrected energies          -192.61170432 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61170470 (Davidson, rotated reference)

 Cluster corrected energies          -192.61067248 (Pople, fixed reference)
 Cluster corrected energies          -192.61067207 (Pople, relaxed reference)
 Cluster corrected energies          -192.61067248 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95293558 (fixed)   0.95526058 (relaxed)   0.95526036 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00243894   -0.00488118   -0.62699277
 Singles      0.01839101   -0.06125664   -0.06843031
 Pairs        0.07503362    0.00000001   -0.05111133
 Total        1.09586356   -0.06613781   -0.74653441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79327899
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16515918
 One electron energy                 -335.64422482
 Two electron energy                  143.10411402
 Virial quotient                       -3.04820115
 Correlation energy                    -0.74683181
 !MRCI STATE 2.1 Energy              -192.540110793632

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61170475 (Davidson, fixed reference)
 Cluster corrected energies          -192.61170437 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61170475 (Davidson, rotated reference)

 Cluster corrected energies          -192.61067254 (Pople, fixed reference)
 Cluster corrected energies          -192.61067213 (Pople, relaxed reference)
 Cluster corrected energies          -192.61067254 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95293560 (fixed)   0.95526061 (relaxed)   0.95526038 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00243894   -0.00488119   -0.62699283
 Singles      0.01839094   -0.06125658   -0.06843026
 Pairs        0.07503363   -0.00000002   -0.05111132
 Total        1.09586351   -0.06613778   -0.74653441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79327899
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16516124
 One electron energy                 -335.64422600
 Two electron energy                  143.10411521
 Virial quotient                       -3.04820105
 Correlation energy                    -0.74683180
 !MRCI STATE 3.1 Energy              -192.540110791758

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61170471 (Davidson, fixed reference)
 Cluster corrected energies          -192.61170432 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61170471 (Davidson, rotated reference)

 Cluster corrected energies          -192.61067249 (Pople, fixed reference)
 Cluster corrected energies          -192.61067208 (Pople, relaxed reference)
 Cluster corrected energies          -192.61067249 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95429930 (fixed)   0.95526059 (relaxed)   0.95526037 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00243893   -0.00488118   -0.62699267
 Singles      0.01839101   -0.06125673   -0.06843041
 Pairs        0.07503360    0.00000000   -0.05111131
 Total        1.09586355   -0.06613791   -0.74653440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79327899
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16517304
 One electron energy                 -335.64424456
 Two electron energy                  143.10413378
 Virial quotient                       -3.04820048
 Correlation energy                    -0.74683180
 !MRCI STATE 4.1 Energy              -192.540110784877

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61170473 (Davidson, fixed reference)
 Cluster corrected energies          -192.61170435 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61170473 (Davidson, rotated reference)

 Cluster corrected energies          -192.61067252 (Pople, fixed reference)
 Cluster corrected energies          -192.61067211 (Pople, relaxed reference)
 Cluster corrected energies          -192.61067252 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95429933 (fixed)   0.95526063 (relaxed)   0.95526040 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00243893   -0.00488117   -0.62699273
 Singles      0.01839094   -0.06125672   -0.06843038
 Pairs        0.07503359    0.00000000   -0.05111129
 Total        1.09586346   -0.06613790   -0.74653440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79327899
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16517378
 One electron energy                 -335.64424429
 Two electron energy                  143.10413351
 Virial quotient                       -3.04820044
 Correlation energy                    -0.74683179
 !MRCI STATE 5.1 Energy              -192.540110781554

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61170466 (Davidson, fixed reference)
 Cluster corrected energies          -192.61170428 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61170466 (Davidson, rotated reference)

 Cluster corrected energies          -192.61067244 (Pople, fixed reference)
 Cluster corrected energies          -192.61067203 (Pople, relaxed reference)
 Cluster corrected energies          -192.61067244 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.94947862 (fixed)   0.95382178 (relaxed)   0.95382097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00586189   -0.01092864   -0.71260068
 Singles      0.01297440   -0.05202233   -0.05620876
 Pairs        0.08033726    0.07890169    0.01682502
 Total        1.09917355    0.01595072   -0.75198441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.74300269
 Nuclear energy                         0.00000000
 Kinetic energy                        63.13932775
 One electron energy                 -335.40328091
 Two electron energy                  142.90729571
 Virial quotient                       -3.04874936
 Correlation energy                    -0.75298250
 !MRCI STATE 6.1 Energy              -192.495985191394

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.57066114 (Davidson, fixed reference)
 Cluster corrected energies          -192.57065973 (Davidson, relaxed reference)
 Cluster corrected energies          -192.57066114 (Davidson, rotated reference)

 Cluster corrected energies          -192.56979637 (Pople, fixed reference)
 Cluster corrected energies          -192.56979486 (Pople, relaxed reference)
 Cluster corrected energies          -192.56979637 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95773511 (fixed)   0.95773511 (relaxed)   0.95773511 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371524   -0.00751366   -0.61247916
 Singles      0.01757701   -0.06209857   -0.06868661
 Pairs        0.06891530    0.00000000   -0.04596076
 Total        1.09020755   -0.06961223   -0.72712653
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66228542
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90045476
 One electron energy                 -331.33998054
 Two electron energy                  138.95056859
 Virial quotient                       -3.05863308
 Correlation energy                    -0.72712653
 !MRCI STATE 7.1 Energy              -192.389411951778

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45500426 (Davidson, fixed reference)
 Cluster corrected energies          -192.45500426 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45500426 (Davidson, rotated reference)

 Cluster corrected energies          -192.45374265 (Pople, fixed reference)
 Cluster corrected energies          -192.45374265 (Pople, relaxed reference)
 Cluster corrected energies          -192.45374265 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95773511 (fixed)   0.95773511 (relaxed)   0.95773511 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371524   -0.00751366   -0.61247918
 Singles      0.01757700   -0.06209856   -0.06868660
 Pairs        0.06891530    0.00000000   -0.04596075
 Total        1.09020754   -0.06961222   -0.72712653
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66228542
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90045442
 One electron energy                 -331.33998010
 Two electron energy                  138.95056815
 Virial quotient                       -3.05863310
 Correlation energy                    -0.72712653
 !MRCI STATE 8.1 Energy              -192.389411949621

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45500425 (Davidson, fixed reference)
 Cluster corrected energies          -192.45500425 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45500425 (Davidson, rotated reference)

 Cluster corrected energies          -192.45374264 (Pople, fixed reference)
 Cluster corrected energies          -192.45374264 (Pople, relaxed reference)
 Cluster corrected energies          -192.45374264 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95773510 (fixed)   0.95773510 (relaxed)   0.95773510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371524   -0.00751366   -0.61247914
 Singles      0.01757702   -0.06209858   -0.06868661
 Pairs        0.06891531   -0.00000000   -0.04596078
 Total        1.09020757   -0.06961224   -0.72712653
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66228542
 Nuclear energy                         0.00000000
 Kinetic energy                        62.90045631
 One electron energy                 -331.33998217
 Two electron energy                  138.95057023
 Virial quotient                       -3.05863301
 Correlation energy                    -0.72712653
 !MRCI STATE 9.1 Energy              -192.389411946310

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45500426 (Davidson, fixed reference)
 Cluster corrected energies          -192.45500426 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45500426 (Davidson, rotated reference)

 Cluster corrected energies          -192.45374265 (Pople, fixed reference)
 Cluster corrected energies          -192.45374265 (Pople, relaxed reference)
 Cluster corrected energies          -192.45374265 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95649769 (fixed)   0.95752775 (relaxed)   0.95751883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369472   -0.00740114   -0.61441694
 Singles      0.01731257   -0.06185903   -0.06829613
 Pairs        0.06969280   -0.00000000   -0.04659598
 Total        1.09070010   -0.06926017   -0.72930905
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65030901
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92979830
 One electron energy                 -331.52352520
 Two electron energy                  139.14420454
 Virial quotient                       -3.05704652
 Correlation energy                    -0.72901165
 !MRCI STATE 10.1 Energy             -192.379320661331

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44544209 (Davidson, fixed reference)
 Cluster corrected energies          -192.44542728 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44544209 (Davidson, rotated reference)

 Cluster corrected energies          -192.44419793 (Pople, fixed reference)
 Cluster corrected energies          -192.44418226 (Pople, relaxed reference)
 Cluster corrected energies          -192.44419793 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95649769 (fixed)   0.95752776 (relaxed)   0.95751884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369472   -0.00740114   -0.61441697
 Singles      0.01731255   -0.06185900   -0.06829611
 Pairs        0.06969281    0.00000000   -0.04659597
 Total        1.09070009   -0.06926014   -0.72930905
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65030901
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92979794
 One electron energy                 -331.52352463
 Two electron energy                  139.14420397
 Virial quotient                       -3.05704653
 Correlation energy                    -0.72901165
 !MRCI STATE 11.1 Energy             -192.379320659014

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44544208 (Davidson, fixed reference)
 Cluster corrected energies          -192.44542727 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44544208 (Davidson, rotated reference)

 Cluster corrected energies          -192.44419792 (Pople, fixed reference)
 Cluster corrected energies          -192.44418225 (Pople, relaxed reference)
 Cluster corrected energies          -192.44419792 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95627583 (fixed)   0.95752765 (relaxed)   0.95751873 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369471   -0.00740112   -0.61441655
 Singles      0.01731282   -0.06185929   -0.06829626
 Pairs        0.06969280   -0.00000000   -0.04659623
 Total        1.09070033   -0.06926041   -0.72930904
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65030901
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92982801
 One electron energy                 -331.52356031
 Two electron energy                  139.14423966
 Virial quotient                       -3.05704507
 Correlation energy                    -0.72901164
 !MRCI STATE 12.1 Energy             -192.379320650304

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44544224 (Davidson, fixed reference)
 Cluster corrected energies          -192.44542743 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44544224 (Davidson, rotated reference)

 Cluster corrected energies          -192.44419810 (Pople, fixed reference)
 Cluster corrected energies          -192.44418242 (Pople, relaxed reference)
 Cluster corrected energies          -192.44419810 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95649768 (fixed)   0.95752774 (relaxed)   0.95751882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369472   -0.00740114   -0.61441691
 Singles      0.01731259   -0.06185903   -0.06829613
 Pairs        0.06969281    0.00000000   -0.04659599
 Total        1.09070012   -0.06926017   -0.72930904
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65030901
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92979898
 One electron energy                 -331.52352670
 Two electron energy                  139.14420605
 Virial quotient                       -3.05704648
 Correlation energy                    -0.72901164
 !MRCI STATE 13.1 Energy             -192.379320649412

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44544209 (Davidson, fixed reference)
 Cluster corrected energies          -192.44542728 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44544209 (Davidson, rotated reference)

 Cluster corrected energies          -192.44419794 (Pople, fixed reference)
 Cluster corrected energies          -192.44418226 (Pople, relaxed reference)
 Cluster corrected energies          -192.44419794 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95627583 (fixed)   0.95752765 (relaxed)   0.95751874 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369471   -0.00740113   -0.61441657
 Singles      0.01731280   -0.06185926   -0.06829625
 Pairs        0.06969281   -0.00000001   -0.04659621
 Total        1.09070032   -0.06926040   -0.72930903
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65030901
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92982777
 One electron energy                 -331.52355983
 Two electron energy                  139.14423919
 Virial quotient                       -3.05704508
 Correlation energy                    -0.72901163
 !MRCI STATE 14.1 Energy             -192.379320644836

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44544223 (Davidson, fixed reference)
 Cluster corrected energies          -192.44542742 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44544223 (Davidson, rotated reference)

 Cluster corrected energies          -192.44419808 (Pople, fixed reference)
 Cluster corrected energies          -192.44418241 (Pople, relaxed reference)
 Cluster corrected energies          -192.44419808 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95235525 (fixed)   0.95696083 (relaxed)   0.95695211 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00413809   -0.00822085   -0.01292213
 Singles      0.01688924   -0.06057929   -0.06681073
 Pairs        0.07096500   -0.66123395   -0.65315848
 Total        1.09199233   -0.73003410   -0.73289134
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.63807666
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95478022
 One electron energy                 -331.71508087
 Two electron energy                  139.34511097
 Virial quotient                       -3.05568488
 Correlation energy                    -0.73189324
 !MRCI STATE 15.1 Energy             -192.369969898057

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.43729846 (Davidson, fixed reference)
 Cluster corrected energies          -192.43728390 (Davidson, relaxed reference)
 Cluster corrected energies          -192.43729846 (Davidson, rotated reference)

 Cluster corrected energies          -192.43610550 (Pople, fixed reference)
 Cluster corrected energies          -192.43609006 (Pople, relaxed reference)
 Cluster corrected energies          -192.43610550 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       64.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     3061.60       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2308.14   1383.48    915.73      4.43      0.53      3.66
 REAL TIME  *      2547.51 SEC
 DISK USED  *         3.05 GB (local),       73.81 GB (total)
 SF USED    *        17.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -192.61170470  AU                              
 SETTING HLSDIAG(14)    =      -192.61170475  AU                              
 SETTING HLSDIAG(15)    =      -192.61170471  AU                              
 SETTING HLSDIAG(16)    =      -192.61170473  AU                              
 SETTING HLSDIAG(17)    =      -192.61170466  AU                              
 SETTING HLSDIAG(18)    =      -192.57066114  AU                              
 SETTING HLSDIAG(19)    =      -192.45500426  AU                              
 SETTING HLSDIAG(20)    =      -192.45500425  AU                              
 SETTING HLSDIAG(21)    =      -192.45500426  AU                              
 SETTING HLSDIAG(22)    =      -192.44544209  AU                              
 SETTING HLSDIAG(23)    =      -192.44544208  AU                              
 SETTING HLSDIAG(24)    =      -192.44544224  AU                              
 SETTING HLSDIAG(25)    =      -192.44544209  AU                              
 SETTING HLSDIAG(26)    =      -192.44544223  AU                              
 SETTING HLSDIAG(27)    =      -192.43729846  AU                              


         HLSDIAG
    -192.6367333
    -192.6367333
    -192.6367332
    -192.4518261
    -192.4518261
    -192.4518261
    -192.4518261
    -192.4518261
    -192.4501381
    -192.4501381
    -192.4501381
    -192.4471377
    -192.6117047
    -192.6117048
    -192.6117047
    -192.6117047
    -192.6117047
    -192.5706611
    -192.4550043
    -192.4550042
    -192.4550043
    -192.4454421
    -192.4454421
    -192.4454422
    -192.4454421
    -192.4454422
    -192.4372985
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -192.568674   -192.568674   -192.568674   -192.386123   -192.386123   -192.386123   -192.386123   -192.386123
                      -192.384681   -192.384681   -192.384681   -192.381218
 Replaced energies:   -192.636733   -192.636733   -192.636733   -192.451826   -192.451826   -192.451826   -192.451826   -192.451826
                      -192.450138   -192.450138   -192.450138   -192.447138

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -192.540111   -192.540111   -192.540111   -192.540111   -192.540111   -192.495985   -192.389412   -192.389412
                      -192.389412   -192.379321   -192.379321   -192.379321   -192.379321   -192.379321   -192.369970
 Replaced energies:   -192.611705   -192.611705   -192.611705   -192.611705   -192.611705   -192.570661   -192.455004   -192.455004
                      -192.455004   -192.445442   -192.445442   -192.445442   -192.445442   -192.445442   -192.437298



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.63673326

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    3504.40       0.00     720.39       0.00      -0.00      -0.00    -635.76       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00     584.45     591.92       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3504.40      -0.00      -0.00     720.39       0.00       0.00      -0.00      -0.00       0.00    -635.76

    4   4.1  1.0  1.0       0.00       0.00       0.00   40582.43       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -720.39      -0.00   -2032.70       0.00      -0.00       0.00   -1803.72       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40582.43       0.00       0.00       0.00       0.00       0.00
                         -720.39       0.00      -0.00    2032.70       0.00      -0.00       0.00      -0.00      -0.00    1803.72

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40582.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    2892.88   -2856.34       0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40582.44       0.00       0.00       0.00
                            0.00    -584.45       0.00       0.00      -0.00   -2892.88       0.00      -0.00      -0.00      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40582.44       0.00       0.00
                            0.00    -591.92       0.00      -0.00       0.00    2856.34       0.00      -0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40952.91       0.00
                          635.76      -0.00      -0.00    1803.72       0.00      -0.00       0.00      -0.00       0.00    2100.40

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40952.91
                           -0.00      -0.00     635.76      -0.00   -1803.72       0.00       0.00      -0.00   -2100.40      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00    1463.34    1482.06      -0.00       0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1165.52       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       0.00     155.84    -567.18       0.00      -0.00
                            0.00    2477.98      -0.00       0.00       0.00     509.39      -0.00      -0.00      -0.00       0.00

   14   2.1  1.0  0.0       0.00      -0.00   -2477.99      -0.00     509.40      -0.00       0.00       0.00     449.55      -0.00
                        -2477.98       0.00      -0.00    -509.39      -0.00      -0.00      -0.00      -0.00       0.00    -449.55

   15   3.1  1.0  0.0       0.00    2477.99       0.00      -0.00      -0.00    -509.39      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     569.11    -148.62      -0.00      -0.00

   16   4.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00    2771.93     761.65      -0.00      -0.00
                           -0.00     509.39      -0.00       0.00       0.00    1437.33       0.00       0.00      -0.00       0.00

   17   5.1  1.0  0.0       0.00    -509.40       0.00      -0.00      -0.00    1437.33      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00     726.35    2781.39       0.00       0.00

   18   6.1  1.0  0.0      -0.00       0.00     509.39       0.00   -1437.33       0.00       0.00      -0.00    1275.43       0.00
                         -509.39       0.00       0.00   -1437.33       0.00      -0.00      -0.00      -0.00       0.00    1275.42

   19   7.1  1.0  0.0    -155.84      -0.00       0.00   -2771.93       0.00      -0.00      -0.00      -0.00       0.00     390.21
                            0.00       0.00    -569.11      -0.00    -726.35       0.00      -0.00       0.00   -1424.94       0.00

   20   8.1  1.0  0.0     567.18      -0.00       0.00    -761.65      -0.00       0.00       0.00      -0.00      -0.00   -1420.10
                            0.00       0.00     148.62      -0.00   -2781.39       0.00      -0.00      -0.00     372.12       0.00

   21   9.1  1.0  0.0      -0.00    -449.55      -0.00       0.00      -0.00   -1275.43      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00    1424.94    -372.12       0.00      -0.00

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00    -390.21    1420.10       0.00      -0.00
                           -0.00     449.55       0.00      -0.00      -0.00   -1275.42      -0.00      -0.00       0.00       0.00

   23  11.1  1.0  0.0      -0.00       0.00     449.55       0.00    1275.42      -0.00       0.00      -0.00   -1485.21      -0.00
                          449.55       0.00       0.00   -1275.42       0.00      -0.00       0.00       0.00      -0.00    1485.21

   24  12.1  1.0  0.0    -824.15       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    2090.44
                            0.00       0.00     824.15       0.00      -0.00       0.00      -0.00      -0.00    2090.44      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.00    2455.07       0.00       0.00      -0.00    -556.16       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00    -281.05   -1076.23      -0.00       0.00

   38   2.1  0.0  0.0    1134.51      -0.00       0.00    1019.35      -0.00       0.00       0.00       0.00      -0.00     181.36
                           -0.00       0.00    2817.13      -0.00     124.17       0.00       0.00       0.00    -450.33       0.00

   39   3.1  0.0  0.0   -2597.93      -0.00      -0.00     445.15      -0.00       0.00      -0.00      -0.00       0.00    -415.29
                            0.00      -0.00    -316.45       0.00    1105.36      -0.00      -0.00       0.00      50.59      -0.00

   40   4.1  0.0  0.0      -0.00      -0.00   -2455.07       0.00     556.16      -0.00       0.00       0.00     392.45       0.00
                         2455.07      -0.00       0.00     556.16       0.00       0.00       0.00      -0.00       0.00     392.46

   41   5.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00   -1072.57    -294.71      -0.00       0.00
                            0.00   -2455.07       0.00       0.00      -0.00    -556.16      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0    3925.56      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     432.76
                            0.00       0.00   -3925.55       0.00      -0.00       0.00       0.00       0.00     432.76      -0.00

   43   7.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       0.00     439.25   -1598.59       0.00       0.00
                            0.00     513.73      -0.00      -0.00      -0.00    1435.74      -0.00      -0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00    -513.73       0.00      -0.00      -0.00    1435.74       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00   -1604.05     418.90       0.00       0.00

   45   9.1  0.0  0.0      -0.00       0.00     513.73       0.00   -1435.74       0.00       0.00      -0.00    1272.07      -0.00
                          513.73       0.00       0.00    1435.74      -0.00       0.00       0.00       0.00       0.00   -1272.07

   46  10.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00   -2432.58    -668.41      -0.00      -0.00
                            0.00     523.52       0.00       0.00       0.00   -1261.37      -0.00       0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.00    -523.52       0.00       0.00      -0.00   -1261.37      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -637.43   -2440.88       0.00      -0.00

   48  12.1  0.0  0.0    -366.30      -0.00      -0.00    2006.87       0.00       0.00       0.00       0.00      -0.00   -1049.37
                           -0.00      -0.00    -599.62      -0.00    -320.39       0.00      -0.00       0.00    1717.79       0.00

   49  13.1  0.0  0.0      -0.00       0.00     523.52      -0.00    1261.37      -0.00       0.00       0.00   -1499.80      -0.00
                         -523.52       0.00       0.00    1261.37      -0.00       0.00      -0.00      -0.00       0.00   -1499.80

   50  14.1  0.0  0.0    -480.90       0.00      -0.00   -1528.62      -0.00       0.00      -0.00       0.00       0.00   -1377.68
                            0.00       0.00      76.77      -0.00   -2502.31      -0.00       0.00      -0.00    -219.94       0.00

   51  15.1  0.0  0.0   -1146.37      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00   -2491.94
                           -0.00       0.00    1146.37       0.00       0.00       0.00      -0.00       0.00   -2491.94      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -155.84     567.18
                            0.00      -0.00      -0.00    2477.98      -0.00       0.00       0.00     509.39      -0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00      -0.00      -0.00    2477.99       0.00    -509.40       0.00      -0.00      -0.00
                           -0.00    1165.52   -2477.98      -0.00      -0.00    -509.39      -0.00      -0.00      -0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00      -0.00   -2477.99       0.00       0.00       0.00     509.39       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     569.11    -148.62

    4   4.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00   -2771.93    -761.65
                            0.00      -0.00      -0.00     509.39      -0.00      -0.00       0.00    1437.33       0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00      -0.00     509.40      -0.00       0.00      -0.00   -1437.33       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     726.35    2781.39

    6   6.1  1.0  1.0       0.00       0.00       0.00      -0.00    -509.39      -0.00    1437.33       0.00      -0.00       0.00
                           -0.00      -0.00    -509.39       0.00       0.00   -1437.33       0.00       0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00     155.84       0.00      -0.00    2771.93      -0.00       0.00      -0.00       0.00
                        -1463.34       0.00       0.00       0.00    -569.11      -0.00    -726.35       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00    -567.18       0.00      -0.00     761.65       0.00      -0.00      -0.00      -0.00
                        -1482.06      -0.00       0.00       0.00     148.62      -0.00   -2781.39       0.00      -0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00     449.55       0.00      -0.00       0.00    1275.43       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    1424.94    -372.12

   10  10.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     390.21   -1420.10
                           -0.00       0.00      -0.00     449.55       0.00      -0.00      -0.00   -1275.42      -0.00      -0.00

   11  11.1  1.0  1.0   40952.90       0.00       0.00      -0.00    -449.55      -0.00   -1275.42       0.00      -0.00       0.00
                           -0.00    2956.33     449.55       0.00       0.00   -1275.42       0.00      -0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00   41611.41     824.15      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                        -2956.33      -0.00       0.00       0.00     824.15       0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0       0.00     824.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -449.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0    -449.55       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00    -824.15      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00   40582.43       0.00       0.00       0.00       0.00
                         1275.42      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0   -1275.42      -0.00       0.00       0.00       0.00       0.00   40582.43       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40582.43       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   40582.44       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40582.44
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0    1485.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -2090.44      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.00   -2090.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1485.21       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     155.84    -567.18
                           -0.00      -0.00       0.00    2477.98      -0.00       0.00       0.00     509.39      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00   -2477.99      -0.00     509.40      -0.00       0.00       0.00
                           -0.00      -0.00   -2477.98       0.00      -0.00    -509.39      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00    2477.99       0.00      -0.00      -0.00    -509.39      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     569.11    -148.62

   28   4.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    2771.93     761.65
                           -0.00      -0.00      -0.00     509.39      -0.00       0.00       0.00    1437.33       0.00       0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00    -509.40       0.00      -0.00      -0.00    1437.33      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00     726.35    2781.39

   30   6.1  1.0 -1.0       0.00       0.00      -0.00       0.00     509.39       0.00   -1437.33       0.00       0.00      -0.00
                           -0.00      -0.00    -509.39       0.00       0.00   -1437.33       0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00    -155.84      -0.00       0.00   -2771.93       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00    -569.11      -0.00    -726.35       0.00      -0.00       0.00

   32   8.1  1.0 -1.0       0.00       0.00     567.18      -0.00       0.00    -761.65      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00     148.62      -0.00   -2781.39       0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00      -0.00    -449.55      -0.00       0.00      -0.00   -1275.43      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    1424.94    -372.12

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -390.21    1420.10
                           -0.00      -0.00      -0.00     449.55       0.00      -0.00      -0.00   -1275.42      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00      -0.00       0.00     449.55       0.00    1275.42      -0.00       0.00      -0.00
                           -0.00      -0.00     449.55       0.00       0.00   -1275.42       0.00      -0.00       0.00       0.00

   36  12.1  1.0 -1.0       0.00       0.00    -824.15       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00     824.15       0.00      -0.00       0.00      -0.00      -0.00

   37   1.1  0.0  0.0    -392.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -3471.99      -0.00       0.00     786.53       0.00       0.00      -0.00      -0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -2379.58       0.00      -0.00       0.00   -1265.99      -0.00       0.00

   39   3.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -3226.51      -0.00      -0.00      -0.00     933.68       0.00       0.00

   40   4.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    1119.37   -1105.23

   41   5.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          392.45       0.00      -0.00       0.00   -3471.99       0.00    -786.53      -0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -5551.58       0.00      -0.00       0.00      -0.00       0.00      -0.00

   43   7.1  0.0  0.0       0.00    2349.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1272.07      -0.00       0.00      -0.00    -726.52       0.00   -2030.44      -0.00       0.00      -0.00

   44   8.1  0.0  0.0   -1272.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    2349.00    -726.52      -0.00       0.00    2030.44       0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    1647.27    1668.35

   46  10.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1499.80       0.00      -0.00       0.00     740.37       0.00   -1783.85      -0.00       0.00      -0.00

   47  11.1  0.0  0.0    1499.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     740.38      -0.00       0.00    1783.85       0.00      -0.00       0.00       0.00

   48  12.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     329.97      -0.00       0.00       0.00   -3291.24      -0.00      -0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    2538.72   -2506.65

   50  14.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -788.68       0.00      -0.00      -0.00   -1377.01      -0.00       0.00

   51  15.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    1621.21      -0.00       0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.00       0.00      -0.00    -824.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -449.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -449.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -449.55      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      -0.00       0.00     449.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -824.15       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    1275.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -0.00      -0.00    1275.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0   -1275.43      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1275.42       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      -0.00    -390.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1424.94       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00    1420.10      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          372.12       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00   -1485.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -2090.44       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.00      -0.00      -0.00    2090.44       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1485.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    1485.21       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1485.21       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00   -2090.44       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2090.44      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    2477.98      -0.00       0.00       0.00     509.39

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00    2477.99       0.00    -509.40       0.00
                            0.00       0.00       0.00       0.00   -2477.98      -0.00      -0.00    -509.39      -0.00      -0.00

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00   -2477.99       0.00       0.00       0.00     509.39
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     509.39      -0.00      -0.00       0.00    1437.33

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00     509.40      -0.00       0.00      -0.00   -1437.33
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -509.39      -0.00    1437.33       0.00
                            0.00       0.00       0.00       0.00    -509.39       0.00       0.00   -1437.33       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     155.84       0.00      -0.00    2771.93      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -569.11      -0.00    -726.35       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00    -567.18       0.00      -0.00     761.65       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     148.62      -0.00   -2781.39       0.00

   21   9.1  1.0  0.0   40952.91       0.00       0.00       0.00       0.00     449.55       0.00      -0.00       0.00    1275.43
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.00   40952.91       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     449.55       0.00      -0.00      -0.00   -1275.42

   23  11.1  1.0  0.0       0.00       0.00   40952.90       0.00       0.00      -0.00    -449.55      -0.00   -1275.42       0.00
                           -0.00      -0.00       0.00       0.00     449.55       0.00       0.00   -1275.42       0.00      -0.00

   24  12.1  1.0  0.0       0.00       0.00       0.00   41611.41     824.15      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     824.15       0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00      -0.00       0.00     824.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -449.55      -0.00      -0.00      -0.00   -3504.40      -0.00    -720.39      -0.00

   26   2.1  1.0 -1.0     449.55      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -449.55      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   27   3.1  1.0 -1.0       0.00      -0.00    -449.55       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -824.15    3504.40       0.00       0.00    -720.39      -0.00      -0.00

   28   4.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   40582.43       0.00       0.00
                           -0.00       0.00    1275.42      -0.00       0.00      -0.00     720.39       0.00    2032.70      -0.00

   29   5.1  1.0 -1.0       0.00       0.00   -1275.42      -0.00       0.00       0.00       0.00       0.00   40582.43       0.00
                            0.00       0.00      -0.00       0.00     720.39      -0.00       0.00   -2032.70      -0.00       0.00

   30   6.1  1.0 -1.0    1275.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40582.43
                            0.00    1275.42       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00     390.21      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1424.94       0.00      -0.00       0.00      -0.00     584.45      -0.00      -0.00       0.00    2892.88

   32   8.1  1.0 -1.0      -0.00   -1420.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          372.12       0.00      -0.00       0.00      -0.00     591.92      -0.00       0.00      -0.00   -2856.34

   33   9.1  1.0 -1.0       0.00      -0.00    1485.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00   -2090.44    -635.76       0.00       0.00   -1803.72      -0.00       0.00

   34  10.1  1.0 -1.0       0.00      -0.00       0.00   -2090.44       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1485.21       0.00       0.00       0.00    -635.76       0.00    1803.72      -0.00

   35  11.1  1.0 -1.0   -1485.21      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1485.21      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   36  12.1  1.0 -1.0      -0.00    2090.44      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2090.44      -0.00       0.00       0.00      -0.00    1165.52      -0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    2455.07       0.00       0.00      -0.00    -556.16
                           -0.00    -555.01      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    1134.51      -0.00       0.00    1019.35      -0.00       0.00
                           -0.00      -0.00     380.39       0.00       0.00      -0.00   -2817.13       0.00    -124.17      -0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00   -2597.93      -0.00      -0.00     445.15      -0.00       0.00
                           -0.00       0.00     515.77       0.00      -0.00       0.00     316.45      -0.00   -1105.36       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00   -2455.07       0.00     556.16      -0.00
                            0.00       0.00       0.00      -0.00   -2455.07       0.00      -0.00    -556.16      -0.00      -0.00

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                          555.01       0.00      -0.00       0.00      -0.00    2455.07      -0.00      -0.00       0.00     556.16

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00    3925.56      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00     612.02       0.00      -0.00      -0.00    3925.55      -0.00       0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                        -1798.98       0.00       0.00      -0.00      -0.00    -513.73       0.00       0.00       0.00   -1435.74

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    -513.73       0.00      -0.00      -0.00    1435.74
                            0.00    1798.98       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     513.73       0.00   -1435.74       0.00
                           -0.00       0.00      -0.00    3321.99    -513.73      -0.00      -0.00   -1435.74       0.00      -0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                        -2121.03       0.00      -0.00      -0.00      -0.00    -523.52      -0.00      -0.00      -0.00    1261.37

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    -523.52       0.00       0.00      -0.00   -1261.37
                            0.00    2121.03       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00    -366.30      -0.00      -0.00    2006.87       0.00       0.00
                            0.00      -0.00    -945.29      -0.00       0.00       0.00     599.62       0.00     320.39      -0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     523.52      -0.00    1261.37      -0.00
                            0.00       0.00       0.00      -0.00     523.52      -0.00      -0.00   -1261.37       0.00      -0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00    -480.90       0.00      -0.00   -1528.62      -0.00       0.00
                           -0.00      -0.00    2259.38       0.00      -0.00      -0.00     -76.77       0.00    2502.31       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00   -1146.37      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00   -3524.14      -0.00       0.00      -0.00   -1146.37      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1134.51   -2597.93      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -2455.07

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    2455.07      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -2455.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2817.13     316.45      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1019.35     445.15       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -556.16

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     556.16
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -124.17   -1105.36      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -556.16       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     281.05      -0.00       0.00      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    1076.23      -0.00      -0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     392.45
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     450.33     -50.59      -0.00

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     181.36    -415.29       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -392.46

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -392.45       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0    -155.84     567.18      -0.00       0.00      -0.00    -824.15       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -449.55      -0.00    3471.99      -0.00      -0.00       0.00

   14   2.1  1.0  0.0      -0.00      -0.00    -449.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -449.55      -0.00      -0.00       0.00    2379.58    3226.51      -0.00

   15   3.1  1.0  0.0       0.00       0.00      -0.00       0.00     449.55      -0.00       0.00       0.00       0.00       0.00
                          569.11    -148.62      -0.00      -0.00      -0.00    -824.15      -0.00      -0.00       0.00      -0.00

   16   4.1  1.0  0.0   -2771.93    -761.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    1275.42      -0.00    -786.53       0.00       0.00      -0.00

   17   5.1  1.0  0.0       0.00      -0.00      -0.00      -0.00    1275.42       0.00       0.00       0.00       0.00       0.00
                          726.35    2781.39       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   18   6.1  1.0  0.0      -0.00       0.00   -1275.43      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    1275.42       0.00      -0.00      -0.00    1265.99    -933.68       0.00

   19   7.1  1.0  0.0      -0.00       0.00      -0.00    -390.21       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1424.94       0.00      -0.00       0.00       0.00       0.00      -0.00   -1119.37

   20   8.1  1.0  0.0      -0.00      -0.00       0.00    1420.10      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     372.12       0.00      -0.00       0.00       0.00      -0.00      -0.00    1105.23

   21   9.1  1.0  0.0       0.00      -0.00       0.00       0.00   -1485.21      -0.00       0.00       0.00       0.00       0.00
                         1424.94    -372.12      -0.00      -0.00       0.00   -2090.44       0.00       0.00       0.00      -0.00

   22  10.1  1.0  0.0     390.21   -1420.10      -0.00      -0.00      -0.00    2090.44       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -1485.21       0.00     555.01       0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00       0.00    1485.21       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1485.21       0.00      -0.00       0.00    -380.39    -515.77      -0.00

   24  12.1  1.0  0.0      -0.00       0.00       0.00   -2090.44       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    2090.44      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1134.51   -2597.93      -0.00
                            0.00       0.00     635.76      -0.00      -0.00       0.00       0.00      -0.00       0.00    2455.07

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    2455.07      -0.00      -0.00      -0.00
                         -584.45    -591.92      -0.00      -0.00       0.00   -1165.52       0.00       0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -2455.07
                            0.00       0.00      -0.00     635.76       0.00       0.00      -0.00    2817.13    -316.45       0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1019.35     445.15       0.00
                            0.00      -0.00    1803.72      -0.00      -0.00       0.00      -0.00      -0.00       0.00     556.16

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     556.16
                           -0.00       0.00       0.00   -1803.72       0.00      -0.00       0.00     124.17    1105.36       0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -556.16       0.00       0.00      -0.00
                        -2892.88    2856.34      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   31   7.1  1.0 -1.0   40582.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00    1463.34      -0.00    -281.05       0.00      -0.00       0.00

   32   8.1  1.0 -1.0       0.00   40582.44       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00    1482.06       0.00   -1076.23       0.00       0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00   40952.91       0.00       0.00       0.00       0.00      -0.00       0.00     392.45
                           -0.00       0.00      -0.00   -2100.40      -0.00      -0.00      -0.00    -450.33      50.59       0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00   40952.91       0.00       0.00      -0.00     181.36    -415.29       0.00
                           -0.00       0.00    2100.40       0.00       0.00      -0.00       0.00       0.00      -0.00     392.46

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   40952.90       0.00    -392.45       0.00      -0.00       0.00
                        -1463.34   -1482.06       0.00      -0.00       0.00   -2956.33       0.00      -0.00      -0.00       0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   41611.41       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00    2956.33       0.00       0.00      -0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00    -392.45       0.00    5493.13       0.00       0.00       0.00
                          281.05    1076.23       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00      -0.00     181.36       0.00       0.00       0.00    5493.12       0.00       0.00
                           -0.00      -0.00     450.33      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      -0.00      -0.00       0.00    -415.29      -0.00      -0.00       0.00       0.00    5493.13       0.00
                            0.00      -0.00     -50.59       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00     392.45       0.00       0.00      -0.00       0.00       0.00       0.00    5493.13
                           -0.00       0.00      -0.00    -392.46      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0   -1072.57    -294.71      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -392.45      -0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00       0.00      -0.00     432.76       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -432.76       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0     439.25   -1598.59       0.00       0.00       0.00    2349.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00   -1272.07       0.00      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.00       0.00      -0.00       0.00   -1272.07      -0.00       0.00       0.00       0.00       0.00
                         1604.05    -418.90      -0.00      -0.00      -0.00   -2349.00      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0       0.00      -0.00    1272.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    1272.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0   -2432.58    -668.41      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    1499.80      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0      -0.00       0.00       0.00      -0.00    1499.80      -0.00       0.00       0.00       0.00       0.00
                          637.43    2440.88      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0       0.00       0.00      -0.00   -1049.37      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1717.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0       0.00       0.00   -1499.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1499.80      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.00       0.00       0.00   -1377.68      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     219.94      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00      -0.00      -0.00   -2491.94      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    2491.94       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0       0.00    3925.56       0.00       0.00      -0.00       0.00       0.00    -366.30      -0.00    -480.90
                           -0.00      -0.00      -0.00       0.00    -513.73      -0.00      -0.00       0.00     523.52      -0.00

    2   2.1  1.0  1.0       0.00      -0.00      -0.00    -513.73       0.00       0.00    -523.52      -0.00       0.00       0.00
                         2455.07      -0.00    -513.73      -0.00      -0.00    -523.52       0.00       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00       0.00      -0.00       0.00     513.73      -0.00       0.00      -0.00     523.52      -0.00
                           -0.00    3925.55       0.00       0.00      -0.00      -0.00       0.00     599.62      -0.00     -76.77

    4   4.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    2006.87      -0.00   -1528.62
                           -0.00      -0.00       0.00       0.00   -1435.74      -0.00       0.00       0.00   -1261.37       0.00

    5   5.1  1.0  1.0      -0.00       0.00       0.00      -0.00   -1435.74       0.00      -0.00       0.00    1261.37      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     320.39       0.00    2502.31

    6   6.1  1.0  1.0       0.00       0.00       0.00    1435.74       0.00       0.00   -1261.37       0.00      -0.00       0.00
                          556.16      -0.00   -1435.74      -0.00      -0.00    1261.37       0.00      -0.00      -0.00       0.00

    7   7.1  1.0  1.0   -1072.57       0.00     439.25       0.00       0.00   -2432.58      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00    1604.05      -0.00       0.00     637.43       0.00       0.00      -0.00

    8   8.1  1.0  1.0    -294.71       0.00   -1598.59       0.00      -0.00    -668.41       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -418.90      -0.00      -0.00    2440.88      -0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -0.00       0.00      -0.00    1272.07      -0.00       0.00      -0.00   -1499.80       0.00
                            0.00    -432.76      -0.00      -0.00      -0.00       0.00      -0.00   -1717.79      -0.00     219.94

   10  10.1  1.0  1.0       0.00     432.76       0.00       0.00      -0.00      -0.00      -0.00   -1049.37      -0.00   -1377.68
                            0.00       0.00      -0.00      -0.00    1272.07       0.00       0.00      -0.00    1499.80      -0.00

   11  11.1  1.0  1.0      -0.00       0.00       0.00   -1272.07      -0.00      -0.00    1499.80      -0.00       0.00      -0.00
                         -392.45       0.00   -1272.07      -0.00      -0.00    1499.80       0.00      -0.00      -0.00       0.00

   12  12.1  1.0  1.0       0.00       0.00    2349.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00   -2349.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     726.52       0.00       0.00    -740.38      -0.00       0.00       0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    5551.58       0.00       0.00      -0.00      -0.00       0.00    -329.97      -0.00     788.68

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3471.99      -0.00     726.52      -0.00      -0.00    -740.37      -0.00       0.00      -0.00      -0.00

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -2030.44       0.00      -0.00   -1783.85      -0.00      -0.00       0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          786.53      -0.00    2030.44      -0.00       0.00    1783.85      -0.00      -0.00      -0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    3291.24       0.00    1377.01

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00   -1647.27      -0.00      -0.00       0.00   -2538.72       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00   -1668.35       0.00      -0.00       0.00    2506.65      -0.00

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -555.01       0.00    1798.98      -0.00       0.00    2121.03      -0.00      -0.00      -0.00       0.00

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -1798.98      -0.00      -0.00   -2121.03       0.00      -0.00       0.00

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -612.02      -0.00      -0.00       0.00       0.00      -0.00     945.29      -0.00   -2259.38

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -3321.99       0.00      -0.00       0.00       0.00      -0.00

   25   1.1  1.0 -1.0       0.00    3925.56       0.00       0.00      -0.00       0.00       0.00    -366.30      -0.00    -480.90
                            0.00       0.00       0.00      -0.00     513.73       0.00       0.00      -0.00    -523.52       0.00

   26   2.1  1.0 -1.0       0.00      -0.00      -0.00    -513.73       0.00       0.00    -523.52      -0.00       0.00       0.00
                        -2455.07       0.00     513.73       0.00       0.00     523.52      -0.00      -0.00       0.00       0.00

   27   3.1  1.0 -1.0      -0.00       0.00      -0.00       0.00     513.73      -0.00       0.00      -0.00     523.52      -0.00
                            0.00   -3925.55      -0.00      -0.00       0.00       0.00      -0.00    -599.62       0.00      76.77

   28   4.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    2006.87      -0.00   -1528.62
                            0.00       0.00      -0.00      -0.00    1435.74       0.00      -0.00      -0.00    1261.37      -0.00

   29   5.1  1.0 -1.0      -0.00       0.00       0.00      -0.00   -1435.74       0.00      -0.00       0.00    1261.37      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -320.39      -0.00   -2502.31

   30   6.1  1.0 -1.0       0.00       0.00       0.00    1435.74       0.00       0.00   -1261.37       0.00      -0.00       0.00
                         -556.16       0.00    1435.74       0.00       0.00   -1261.37      -0.00       0.00       0.00      -0.00

   31   7.1  1.0 -1.0   -1072.57       0.00     439.25       0.00       0.00   -2432.58      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00   -1604.05       0.00      -0.00    -637.43      -0.00      -0.00       0.00

   32   8.1  1.0 -1.0    -294.71       0.00   -1598.59       0.00      -0.00    -668.41       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     418.90       0.00       0.00   -2440.88       0.00      -0.00      -0.00

   33   9.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00    1272.07      -0.00       0.00      -0.00   -1499.80       0.00
                           -0.00     432.76       0.00       0.00       0.00      -0.00       0.00    1717.79       0.00    -219.94

   34  10.1  1.0 -1.0       0.00     432.76       0.00       0.00      -0.00      -0.00      -0.00   -1049.37      -0.00   -1377.68
                           -0.00      -0.00       0.00       0.00   -1272.07      -0.00      -0.00       0.00   -1499.80       0.00

   35  11.1  1.0 -1.0      -0.00       0.00       0.00   -1272.07      -0.00      -0.00    1499.80      -0.00       0.00      -0.00
                          392.45      -0.00    1272.07       0.00       0.00   -1499.80      -0.00       0.00       0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00    2349.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00    2349.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5493.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14501.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   39884.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   39884.91       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   39884.91       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   41983.56       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   41983.56       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41983.53       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41983.56       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41983.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0   -1146.37
                            0.00

    2   2.1  1.0  1.0      -0.00
                           -0.00

    3   3.1  1.0  1.0      -0.00
                        -1146.37

    4   4.1  1.0  1.0      -0.00
                           -0.00

    5   5.1  1.0  1.0       0.00
                           -0.00

    6   6.1  1.0  1.0       0.00
                           -0.00

    7   7.1  1.0  1.0       0.00
                            0.00

    8   8.1  1.0  1.0      -0.00
                           -0.00

    9   9.1  1.0  1.0      -0.00
                         2491.94

   10  10.1  1.0  1.0   -2491.94
                            0.00

   11  11.1  1.0  1.0      -0.00
                           -0.00

   12  12.1  1.0  1.0       0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                           -0.00

   14   2.1  1.0  0.0       0.00
                        -1621.21

   15   3.1  1.0  0.0       0.00
                            0.00

   16   4.1  1.0  0.0       0.00
                           -0.00

   17   5.1  1.0  0.0       0.00
                            0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                           -0.00

   20   8.1  1.0  0.0       0.00
                            0.00

   21   9.1  1.0  0.0       0.00
                            0.00

   22  10.1  1.0  0.0       0.00
                           -0.00

   23  11.1  1.0  0.0       0.00
                         3524.14

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0   -1146.37
                           -0.00

   26   2.1  1.0 -1.0      -0.00
                            0.00

   27   3.1  1.0 -1.0      -0.00
                         1146.37

   28   4.1  1.0 -1.0      -0.00
                            0.00

   29   5.1  1.0 -1.0       0.00
                            0.00

   30   6.1  1.0 -1.0       0.00
                            0.00

   31   7.1  1.0 -1.0       0.00
                           -0.00

   32   8.1  1.0 -1.0      -0.00
                            0.00

   33   9.1  1.0 -1.0      -0.00
                        -2491.94

   34  10.1  1.0 -1.0   -2491.94
                           -0.00

   35  11.1  1.0 -1.0      -0.00
                            0.00

   36  12.1  1.0 -1.0       0.00
                            0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   43770.88
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -192.63673326 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.011       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40582.430       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40582.431       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40582.428       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40582.437       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40582.437
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000    3504.398      -0.000       0.000       0.000     720.393      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -3504.398       0.000      -0.000    -720.393      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     804.845    -210.184

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000     720.393      -0.000       0.000       0.000    2032.696       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000    1027.221    3933.473

    6    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                             -720.393       0.000       0.000   -2032.696       0.000       0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000    -804.845      -0.000   -1027.221       0.000       0.000       0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000     210.184      -0.000   -3933.473       0.000      -0.000       0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000    2015.176    -526.261

   10    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000     635.760       0.000      -0.000      -0.000   -1803.723      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                              635.760       0.000       0.000   -1803.723       0.000      -0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000    1165.524       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    3504.401       0.000     720.394       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000     584.447     591.924

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3504.401      -0.000      -0.000     720.393       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -720.393      -0.000   -2032.697       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -720.394       0.000      -0.000    2032.697       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000    2892.878   -2856.337

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -584.447       0.000       0.000      -0.000   -2892.878       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -591.924       0.000      -0.000       0.000    2856.337       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              635.760      -0.000      -0.000    1803.724       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     635.760      -0.000   -1803.723       0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000    1463.343    1482.064

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1165.524       0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |0 0>               0.000    3471.994       0.000       0.000      -0.000    -786.530       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            1604.442      -0.000       0.000    1441.582      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>           -3674.035      -0.000      -0.000     629.537      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000   -3471.992       0.000     786.530      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000       0.000   -1516.839    -416.787
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            5551.577      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000     621.194   -2260.754
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000    -726.521       0.000      -0.000      -0.000    2030.437       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000       0.000     726.521       0.000   -2030.437       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000   -3440.184    -945.270
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000    -740.374       0.000       0.000      -0.000   -1783.847      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>            -518.026      -0.000      -0.000    2838.146       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              -0.000       0.000     740.374      -0.000    1783.846      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>            -680.098       0.000      -0.000   -2161.797      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>           -1621.214      -0.000      -0.000      -0.001       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    3504.398      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000   -3504.398       0.000      -0.000    -720.393

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     720.393      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -720.393       0.000       0.000   -2032.696

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000    -804.845      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     210.184      -0.000

    9    1  |1 1>+          40952.907       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>+              0.000   40952.907       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     635.760       0.000      -0.000

   11    1  |1 1>+              0.000       0.000   40952.905       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     635.760       0.000       0.000   -1803.723

   12    1  |1 1>+              0.000       0.000       0.000   41611.411      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000    1165.524       0.000

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -635.760      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.002       0.000       0.000
                                0.000    -635.760      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.011       0.000
                               -0.000      -0.000      -0.000   -1165.524      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000   40582.430
                               -0.000       0.000    1803.723      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    1803.723       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -2015.176       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              526.261       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -2956.328      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -2100.398       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    2100.398       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             2956.328      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                             -635.760       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000    3504.402       0.000
                                0.000       0.000      -0.000    1165.524       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000   -3504.402       0.000       0.000
                                0.000    -635.760      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                            -1803.724       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000     720.393      -0.000       0.000
                               -0.000    1803.723      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -720.393      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     220.397       0.000      -0.000    3920.098
                               -0.000      -0.000   -1463.343       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000    -802.109       0.000      -0.000    1077.138
                                0.000       0.000   -1482.064      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     635.760       0.000      -0.000
                                0.000    2100.398       0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                            -2100.398      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -635.760      -0.000
                               -0.000       0.000      -0.000    2956.328      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000    1165.525      -0.000       0.000      -0.001
                               -0.000      -0.000   -2956.328      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000      -0.000    -555.014       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3471.994      -0.000       0.000     786.530

    2    1  |0 0>              -0.000     256.478       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -2379.581       0.000      -0.000

    3    1  |0 0>               0.000    -587.313      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3226.510      -0.000      -0.000

    4    1  |0 0>             555.013       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000      -0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000   -3471.989       0.000

    6    1  |0 0>              -0.000     612.017       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -5551.577       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000    3321.992       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000    -726.521       0.000

    8    1  |0 0>              -0.000       0.000   -1798.980      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -726.523      -0.000       0.000    2030.438

    9    1  |0 0>            1798.981      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |0 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     740.373       0.000

   11    1  |0 0>               0.000      -0.000    2121.031      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     740.375      -0.000       0.000    1783.846

   12    1  |0 0>              -0.000   -1484.035      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     329.969      -0.000       0.000

   13    1  |0 0>           -2121.030      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |0 0>               0.000   -1948.338      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -788.675       0.000      -0.000

   15    1  |0 0>              -0.000   -3524.137      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    1621.214      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000     720.393      -0.000      -0.000      -0.000       0.000    -635.760      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000    -635.760      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000     804.845    -210.184      -0.000      -0.000      -0.000   -1165.524

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000    2032.696       0.000       0.000      -0.000       0.000    1803.723      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000    1027.221    3933.473       0.000       0.000      -0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000    1803.723       0.000      -0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                            -1027.221       0.000       0.000       0.000   -2015.176       0.000      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                            -3933.473       0.000      -0.000       0.000     526.261       0.000      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000    2015.176    -526.261       0.000      -0.000       0.000   -2956.328

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000   -1803.723      -0.000      -0.000       0.000       0.000   -2100.398       0.000

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000    2100.398       0.000      -0.000

   12    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000    2956.328      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40582.431       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40582.428       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40582.437       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40582.437       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   40952.907       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   40952.907       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   40952.905       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41611.411
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000      -0.000    -220.397     802.109      -0.000       0.000      -0.000   -1165.525
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-           -720.393       0.000      -0.000      -0.000    -635.760       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000     720.393       0.000       0.000      -0.000       0.000     635.760      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000       0.000   -3920.098   -1077.138       0.000       0.000       0.000       0.001
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000   -2032.697       0.000      -0.000      -0.000      -0.000    1803.723       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-           2032.697       0.000      -0.000       0.000   -1803.723      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000       0.000       0.000      -0.000    -551.833       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000    2008.323      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000    1803.723       0.000      -0.000       0.000       0.000   -2100.397      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000     551.833   -2008.323      -0.000       0.000      -0.000    2956.327
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-          -1803.723       0.000      -0.000       0.000    2100.397       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000   -2956.327       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000    -555.014      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1265.986      -0.000       0.000      -0.000      -0.000     380.388       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     933.677       0.000       0.000      -0.000       0.000     515.775       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1119.367   -1105.228       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -786.531      -0.000       0.000       0.000     555.013       0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000     612.017       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2030.438      -0.000       0.000      -0.000   -1798.981       0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000    1798.980       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1647.274    1668.348      -0.000       0.000      -0.000    3321.993

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1783.846      -0.000       0.000      -0.000   -2121.031       0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000    2121.031       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3291.244      -0.000      -0.000       0.000      -0.000    -945.292      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    2538.721   -2506.653       0.000       0.000       0.000      -0.001

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1377.009      -0.000       0.000      -0.000      -0.000    2259.382       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000   -3524.137      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    3504.401       0.000     720.394       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000     584.447     591.924

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3504.401      -0.000      -0.000     720.393       0.000       0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -720.393      -0.000   -2032.697       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -720.394       0.000      -0.000    2032.697       0.000      -0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000    2892.878   -2856.337

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -584.447       0.000       0.000      -0.000   -2892.878       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -591.924       0.000      -0.000       0.000    2856.337       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              635.760      -0.000      -0.000    1803.724       0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     635.760      -0.000   -1803.723       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000    1463.343    1482.064

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1165.524       0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000     220.397    -802.109
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000   -3504.402      -0.000     720.393      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000    3504.402       0.000      -0.000      -0.000    -720.393      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000    3920.098    1077.138
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000    -720.393       0.000      -0.000       0.000    2032.697      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.000     720.393       0.000   -2032.697       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>            -220.397      -0.000       0.000   -3920.098       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>             802.109      -0.000       0.000   -1077.138      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000    -635.760      -0.000       0.000      -0.000   -1803.723      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000    -551.833    2008.323
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000     635.760       0.000    1803.723      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>           -1165.525       0.000      -0.000       0.001       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.011       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40582.430       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40582.431       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40582.428       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40582.437       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40582.437
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000    -397.472   -1522.014

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    3984.027      -0.000     175.596       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -447.530       0.000    1563.214      -0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3471.991      -0.000       0.000     786.530       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3471.988       0.000       0.000      -0.000    -786.529      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -5551.572       0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     726.521      -0.000      -0.000      -0.000    2030.437      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000   -2268.467     592.407

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              726.521       0.000       0.000    2030.437      -0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     740.375       0.000       0.000       0.000   -1783.846      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000    -901.464   -3451.923

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -847.996      -0.000    -453.097       0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -740.376       0.000       0.000    1783.845      -0.000       0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     108.574      -0.000   -3538.805      -0.000       0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    1621.213       0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    1604.442   -3674.035      -0.000
                             -635.760       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000    3471.994      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000    1165.524       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000   -3471.992
                                0.000    -635.760      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    1441.582     629.537       0.000
                            -1803.724       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000     786.530
                               -0.000    1803.723      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    -786.530       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000   -1463.343       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000   -1482.064      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000     555.013
                                0.000    2100.398       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000     256.478    -587.313       0.000
                            -2100.398      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000    -555.014       0.000      -0.000       0.000
                               -0.000       0.000      -0.000    2956.328       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000   -2956.328      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000    1165.525       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    3471.994      -0.000      -0.000       0.000

    2    1  |1 0>             635.760      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000    2379.581    3226.510      -0.000

    3    1  |1 0>               0.000      -0.000    -635.760       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -786.530       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000   -1803.723      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>            1803.723       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000    1265.986    -933.677       0.000

    7    1  |1 0>               0.000     551.833      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000   -1119.367

    8    1  |1 0>              -0.000   -2008.323       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000    1105.228

    9    1  |1 0>               0.000      -0.000    2100.397       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000   -2956.327       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     555.014       0.000      -0.000      -0.000

   11    1  |1 0>           -2100.397      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000    -380.388    -515.775      -0.000

   12    1  |1 0>              -0.000    2956.327      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000   -3471.991

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3984.027     447.530      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -786.530

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -175.596   -1563.214      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     397.472      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1522.014      -0.000      -0.000       0.000

    9    1  |1 1>-          40952.907       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     636.869     -71.540      -0.000

   10    1  |1 1>-              0.000   40952.907       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000    -555.015

   11    1  |1 1>-              0.000       0.000   40952.905       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000   41611.411       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5493.134       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5493.123       0.000       0.000
                             -636.869       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5493.132       0.000
                               71.540      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5493.127
                                0.000     555.015       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     555.014       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              612.015      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    1798.980      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3321.993      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1798.980       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -2121.031       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.001      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2429.328       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -2121.031       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -311.044       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3524.137      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+              0.000    5551.577       0.000       0.000      -0.000       0.000       0.000    -518.026
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000    -726.521       0.000       0.000    -740.374      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000     726.521      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000    2838.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000      -0.000   -2030.437       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000    2030.437       0.000       0.000   -1783.847       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+          -1516.839       0.000     621.194       0.000       0.000   -3440.184      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -416.787       0.000   -2260.754       0.000      -0.000    -945.270       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000    1798.981      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     612.017       0.000       0.000      -0.000      -0.000      -0.000   -1484.035
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000   -1798.980      -0.000      -0.000    2121.031      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.001       0.000    3321.992      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     726.523       0.000       0.000    -740.375      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    5551.577       0.000       0.000      -0.000      -0.000       0.000    -329.969

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3471.989      -0.000     726.521      -0.000      -0.000    -740.373      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000   -2030.438       0.000      -0.000   -1783.846      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              786.531      -0.000    2030.438      -0.000       0.000    1783.846      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    3291.244

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000   -1647.274      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000   -1668.348       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -555.013       0.000    1798.981      -0.000       0.000    2121.031      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000   -1798.980      -0.000      -0.000   -2121.031       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -612.017      -0.000      -0.000       0.000       0.000      -0.000     945.292

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000   -3321.993       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -726.521      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3471.988      -0.000    -726.521      -0.000      -0.000    -740.375       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    5551.572       0.000       0.000      -0.000      -0.000       0.000     847.996

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000   -2030.437      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000     453.097

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              786.529      -0.000   -2030.437      -0.000      -0.000    1783.846       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    2268.467      -0.000       0.000     901.464       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -592.407      -0.000      -0.000    3451.923      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -612.015      -0.000      -0.000      -0.000       0.000      -0.000   -2429.328

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    1798.980       0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -555.014       0.000   -1798.980      -0.000      -0.000    2121.031       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000   -3321.993      -0.000      -0.000       0.001      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5493.142       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14501.154       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   39884.906       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   39884.908       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   39884.905       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   41983.559       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   41983.561       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41983.525
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             -0.000    -680.098   -1621.214
                                0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000
                                0.000       0.000       0.000

    3    1  |1 1>+            740.374      -0.000      -0.000
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.000   -2161.797      -0.001
                                0.000       0.000       0.000

    5    1  |1 1>+           1783.846      -0.000       0.000
                                0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000      -0.000
                                0.000       0.000       0.000

    9    1  |1 1>+          -2121.030       0.000      -0.000
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.000   -1948.338   -3524.137
                                0.000       0.000       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000
                                0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                                0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000
                               -0.000     788.675   -1621.214

    3    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000
                                0.000    1377.009      -0.000

    7    1  |1 0>               0.000       0.000       0.000
                            -2538.721       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000
                             2506.653      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000
                               -0.000   -2259.382    3524.137

   12    1  |1 0>               0.000       0.000       0.000
                                0.001      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                              740.376      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000
                               -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000
                               -0.000    -108.574   -1621.213

    4    1  |1 1>-              0.000       0.000       0.000
                            -1783.845       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000
                                0.000    3538.805      -0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000
                               -0.000     311.044    3524.137

   10    1  |1 1>-              0.000       0.000       0.000
                             2121.031      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           41983.559       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   41983.528       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   43770.879
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.68630653    -0.04957327   -10880.07      0.00000000        0.00      0.0000
    2  -192.65321079    -0.01647753    -3616.40      0.03309574     7263.68      0.9006
    3  -192.65321078    -0.01647752    -3616.40      0.03309574     7263.68      0.9006
    4  -192.65321078    -0.01647752    -3616.40      0.03309575     7263.68      0.9006
    5  -192.63965379    -0.00292053     -640.98      0.04665274    10239.09      1.2695
    6  -192.63965377    -0.00292051     -640.98      0.04665276    10239.10      1.2695
    7  -192.63965372    -0.00292046     -640.97      0.04665281    10239.11      1.2695
    8  -192.63965366    -0.00292040     -640.95      0.04665287    10239.12      1.2695
    9  -192.63965361    -0.00292035     -640.94      0.04665292    10239.13      1.2695
   10  -192.59367032     0.04306294     9451.22      0.09263621    20331.30      2.5208
   11  -192.59367028     0.04306298     9451.23      0.09263624    20331.31      2.5208
   12  -192.59367017     0.04306309     9451.26      0.09263636    20331.33      2.5208
   13  -192.59367014     0.04306312     9451.26      0.09263638    20331.34      2.5208
   14  -192.59367014     0.04306312     9451.26      0.09263639    20331.34      2.5208
   15  -192.55413282     0.08260044    18128.70      0.13217371    29008.78      3.5966
   16  -192.48944214     0.14729112    32326.66      0.19686439    43206.74      5.3570
   17  -192.48944214     0.14729112    32326.66      0.19686439    43206.74      5.3570
   18  -192.48944214     0.14729112    32326.66      0.19686439    43206.74      5.3570
   19  -192.48463478     0.15209848    33381.76      0.20167175    44261.83      5.4878
   20  -192.48403106     0.15270220    33514.26      0.20227547    44394.33      5.5042
   21  -192.48403105     0.15270221    33514.26      0.20227547    44394.34      5.5042
   22  -192.48403105     0.15270221    33514.26      0.20227548    44394.34      5.5042
   23  -192.48329534     0.15343792    33675.73      0.20301118    44555.80      5.5242
   24  -192.48329534     0.15343792    33675.73      0.20301119    44555.81      5.5242
   25  -192.48329525     0.15343801    33675.75      0.20301128    44555.83      5.5242
   26  -192.48329525     0.15343801    33675.75      0.20301128    44555.83      5.5242
   27  -192.48329525     0.15343801    33675.75      0.20301128    44555.83      5.5242
   28  -192.43621654     0.20051672    44008.33      0.25008999    54888.41      6.8053
   29  -192.43621654     0.20051672    44008.33      0.25008999    54888.41      6.8053
   30  -192.43621654     0.20051672    44008.33      0.25008999    54888.41      6.8053
   31  -192.43436802     0.20236524    44414.04      0.25193851    55294.11      6.8556
   32  -192.43436801     0.20236525    44414.04      0.25193852    55294.11      6.8556
   33  -192.43436798     0.20236528    44414.05      0.25193855    55294.12      6.8556
   34  -192.43436798     0.20236528    44414.05      0.25193855    55294.12      6.8556
   35  -192.43436797     0.20236529    44414.05      0.25193855    55294.12      6.8556
   36  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   37  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   38  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   39  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   40  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   41  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   42  -192.43330281     0.20343045    44647.82      0.25300372    55527.90      6.8846
   43  -192.43126114     0.20547212    45095.92      0.25504539    55975.99      6.9401
   44  -192.43126114     0.20547212    45095.92      0.25504539    55975.99      6.9401
   45  -192.43126114     0.20547212    45095.92      0.25504539    55975.99      6.9401
   46  -192.42858142     0.20815184    45684.05      0.25772511    56564.12      7.0131
   47  -192.42858141     0.20815185    45684.05      0.25772512    56564.12      7.0131
   48  -192.42858136     0.20815189    45684.06      0.25772516    56564.14      7.0131
   49  -192.42858136     0.20815190    45684.06      0.25772517    56564.14      7.0131
   50  -192.42858136     0.20815190    45684.06      0.25772517    56564.14      7.0131
   51  -192.42083148     0.21590178    47384.96      0.26547504    58265.04      7.2239

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.53842614 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000003 -0.00000067  0.58331429
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.70621694  0.00000020  0.00000263 -0.54533693  0.00000098  0.00000007 -0.00000003
                          -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000263 -0.00000320 -0.70621610  0.00000098  0.54533667 -0.00000020 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00047552  0.00000000  0.00087576 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001 -0.01675760
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000004 -0.00000005 -0.01177880 -0.00000004 -0.02224271  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000793 -0.00000000 -0.00003572  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.01177877  0.00000000  0.00000004  0.02224273 -0.00000004 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00360357 -0.00000002  0.00000001  0.00000002  0.04289558  0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.01311486  0.00000006  0.00000000  0.00000000  0.01178655  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000002  0.00000003  0.00611589  0.00000000  0.00199615 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000412  0.00000000  0.00000321 -0.00000000 -0.00000000

  10    1  |1 1>+          0.02280542 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00213520
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00611589 -0.00000000 -0.00000002 -0.00199617  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000001 -0.03736948  0.00000017 -0.00000000  0.00000000 -0.00000006 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000002  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70621729 -0.00000020 -0.00000263 -0.54533652  0.00000098  0.00000007 -0.00000003

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.53842623 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000001  0.00000045 -0.49708545

   3    1  |1 0>           0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000020 -0.70621647  0.00000320 -0.00000007 -0.00000020 -0.54533739 -0.00000058

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.01177875 -0.00000000 -0.00000004  0.02224274 -0.00000004 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.01177879 -0.00000005 -0.00000000 -0.00000001 -0.02224275 -0.00000002

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.02730859

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000643 -0.00000000 -0.00005084  0.00000000  0.00000000
                          -0.00000000 -0.00000004 -0.00000004 -0.00955596  0.00000006  0.03165519 -0.00000001 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000652  0.00000000  0.00005019 -0.00000000 -0.00000000
                           0.00000000 -0.00000004 -0.00000004 -0.00967828 -0.00000006 -0.03125534  0.00000001  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00611590 -0.00000003 -0.00000000 -0.00000000 -0.00199618 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00611590 -0.00000000 -0.00000002  0.00199617 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02280543  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00181954

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00002516  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000014  0.00000017  0.03736949  0.00000000 -0.00000004  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00047552 -0.00000000 -0.00087576  0.00000000  0.00000000
                          -0.00000000  0.00000263  0.00000320  0.70621780  0.00000098  0.54533482 -0.00000020 -0.00000002

   2    1  |1 1>-         -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000020  0.70621775 -0.00000320 -0.00000007 -0.00000020 -0.54533609 -0.00000058

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.53842584  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001  0.00000022 -0.08622865

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000793 -0.00000000 -0.00003572  0.00000000  0.00000000
                          -0.00000000 -0.00000004 -0.00000005 -0.01177874  0.00000004  0.02224272 -0.00000001 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.04406621

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.01177875  0.00000005 -0.00000000 -0.00000001 -0.02224274 -0.00000002

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.01315958  0.00000000  0.00000005 -0.01124035  0.00000002  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00343662 -0.00000000 -0.00000001 -0.04304192  0.00000008  0.00000001 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02280542 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00031563

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000412  0.00000000  0.00000321 -0.00000000 -0.00000000
                           0.00000000  0.00000002  0.00000003  0.00611588 -0.00000000 -0.00199613  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00611589  0.00000003 -0.00000000 -0.00000000 -0.00199616 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.03736950  0.00000001  0.00000014  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000 -0.00000015  0.00000000  0.00000000  0.63408683 -0.00000114 -0.00000008  0.00000004
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000001  0.00000014 -0.01617138
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000019 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000002 -0.00000067  0.63388012
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000059  0.00000114  0.63408649 -0.00000023 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00101829 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000036  0.00000000  0.00000008  0.00000023  0.63408680  0.00000068
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.35495568  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000010
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000001  0.02410455 -0.00000011 -0.00000000  0.00000000  0.00000004  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.02410458  0.00000001  0.00000009  0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000009  0.00000011  0.02410455  0.00000000 -0.00000003 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00001623  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.01316079 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000003 -0.00000000  0.00000000 -0.01316081  0.00000002  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00344333
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000002 -0.01316079  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002114  0.00000000  0.00000000

  14    1  |0 0>          -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.01270261
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.05232881 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.23720796  0.20354070 -0.47711069 -0.00000001  0.00000007  0.00000015  0.20461787  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000006  0.00000001  0.00000007 -0.00000005  0.44921924  0.00000073 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000001 -0.00000002  0.00000000 -0.44921697 -0.00000005 -0.00000003 -0.00000000  0.00037874
                          -0.00000000 -0.00000000 -0.00000000  0.00158583  0.00000000 -0.00000000 -0.00000000 -0.00000125

   4    1  |1 1>+         -0.04120829 -0.01820372 -0.00776595  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00989561 -0.00000000 -0.00000000 -0.00000000  0.46410930
                           0.00000000 -0.00000000 -0.00000000  0.00003493  0.00000000 -0.00000000 -0.00000000 -0.00153078

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00989571  0.00000002 -0.00000000  0.00000281
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   7    1  |1 1>+         -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01908407 -0.00000000  0.00000159
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00524382 -0.00000000 -0.00000577
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.01829760 -0.00000000 -0.00000000  0.00000000 -0.00631254
                          -0.00000000 -0.00000000 -0.00000000  0.00006459  0.00000000 -0.00000000 -0.00000000  0.00002082

  10    1  |1 1>+          0.00086829 -0.00829065  0.01943381  0.00000000 -0.00000000 -0.00000001 -0.01018307  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.01829774  0.00000003  0.00000000 -0.00000004
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000204
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006  0.00000001  0.00000007 -0.00000005  0.44921918  0.00000073 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.38656038  0.31141992  0.41482678 -0.00000001 -0.00000007 -0.00000011  0.20461791 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000011 -0.00000002  0.00000013 -0.00000003 -0.00000073  0.44921940 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00989570  0.00000002 -0.00000000 -0.00000281

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00989573  0.00000000  0.00000518

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.03511666 -0.01582734  0.01188194  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00004972  0.00000000 -0.00000000  0.00000000  0.00124190
                           0.00000000  0.00000000 -0.00000000  0.01408318  0.00000000  0.00000000  0.00000000  0.37652690

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00004909 -0.00000000  0.00000000  0.00000000  0.00125779
                          -0.00000000 -0.00000000  0.00000000 -0.01390527 -0.00000000 -0.00000000 -0.00000000  0.38134427

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01829772 -0.00000000  0.00000007

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01829776 -0.00000003 -0.00000000 -0.00000004

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00141499  0.01268482  0.01689687 -0.00000000 -0.00000000 -0.00000000  0.01018308 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00060143
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.18234322

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00158583 -0.00000000  0.00000000 -0.00000000 -0.00000125
                           0.00000001 -0.00000002  0.00000000 -0.44921653 -0.00000005 -0.00000003 -0.00000000 -0.00037870

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000011 -0.00000002  0.00000013 -0.00000003 -0.00000073  0.44921898 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.62376874 -0.51496106  0.06228407  0.00000002  0.00000000 -0.00000004  0.20461767 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00003493  0.00000000 -0.00000000  0.00000000  0.00153078
                           0.00000000  0.00000000 -0.00000000  0.00989561  0.00000000  0.00000000  0.00000000  0.46410904

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00609163  0.00237638  0.01964786  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00989568  0.00000000 -0.00000518

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00500076 -0.00000001  0.00000000  0.00000314

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.01914916 -0.00000003  0.00000000 -0.00000082

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00228324 -0.02097553  0.00253698  0.00000000  0.00000000 -0.00000000  0.01018300  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00006459  0.00000000 -0.00000000  0.00000000 -0.00002082
                          -0.00000000  0.00000000 -0.00000000  0.01829767  0.00000000  0.00000000 -0.00000000 -0.00631228

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01829777  0.00000000 -0.00000007

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000111

   1    1  |0 0>           0.00000007  0.00000002  0.00000011 -0.00000009  0.77116318  0.00000125  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.63388083  0.77113513 -0.00655720 -0.00000003 -0.00000002  0.00000004  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.01617138  0.00655719  0.77113571  0.00000000 -0.00000011 -0.00000022  0.00000009 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000001  0.00000003 -0.00000000  0.77115798  0.00000009  0.00000006 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00272235 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000013 -0.00000004  0.00000022 -0.00000006 -0.00000125  0.77116320  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000006 -0.00000004 -0.00000012  0.00000000 -0.00000000 -0.00000000  0.93428345 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000557
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000302
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.49866771
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00164476

  10    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.02131649  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.02131650  0.00000003 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.01270258  0.02066598 -0.00522647 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.02131639  0.00000000  0.00000000  0.00000000 -0.00000031
                           0.00000000  0.00000000  0.00000000 -0.00007525 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00344334 -0.00522648 -0.02066599  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.03461204 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000 -0.00000000  0.03289328  0.00000000  0.00000000 -0.00000000 -0.00454320 -0.01099739
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00037873 -0.00000000 -0.00000002 -0.00000024 -0.02010824 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000002  0.02010825 -0.00000024 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001090 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000151 -0.00000000 -0.00000000 -0.00000000  0.55209477 -0.22808355
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000518 -0.00000281  0.00000000 -0.00000016 -0.17858016  0.00000211 -0.00000001  0.00000001
                          -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00009679  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000125  0.46411199  0.00000000  0.00000021  0.00000211  0.17858015 -0.00000000 -0.00000009
                          -0.00000002 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.14199092 -0.00000038 -0.00000000 -0.05463501  0.00000005  0.00000007  0.00000004 -0.00000007
                           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.51675701  0.00000139 -0.00000000  0.19883747 -0.00000017 -0.00000024  0.00000001 -0.00000002
                          -0.00000002 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000007  0.00000004  0.00000000 -0.00000044 -0.50415522  0.00000596  0.00000001 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027326  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.50072346 -0.00000000 -0.00000000  0.00000000 -0.13020746 -0.31517472
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000002 -0.00631249  0.00000000  0.00000061  0.00000596  0.50415530  0.00000000  0.00000009
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

  12    1  |1 1>+         -0.18234386 -0.00000049 -0.00000000  0.50816366 -0.00000045 -0.00000061  0.00000000 -0.00000000
                           0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00037876  0.00000000  0.00000002  0.00000024  0.02010823 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.03289327  0.00000000  0.00000000 -0.00000000 -0.00725229  0.00943330

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00037871  0.00000000  0.00000000 -0.02010822  0.00000002  0.00000002  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000002 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000125 -0.46411163 -0.00000000 -0.00000021 -0.00000211 -0.17858137 -0.00000000 -0.00000009

   5    1  |1 0>          -0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.46411178 -0.00000125  0.00000000 -0.17858063  0.00000016  0.00000021 -0.00000002  0.00000004

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000159  0.00000000 -0.00000000 -0.00000000  0.47357354  0.36408651

   7    1  |1 0>           0.00000003  0.00000000 -0.00000000  0.00000000 -0.00007853 -0.00000000  0.00000000  0.00000000
                           0.00000421 -0.00000228 -0.00000000 -0.00000013 -0.14488194  0.00000171  0.00000001 -0.00000002

   8    1  |1 0>           0.00000003  0.00000000 -0.00000000  0.00000000 -0.00007953 -0.00000000 -0.00000000 -0.00000000
                           0.00000426 -0.00000231  0.00000000 -0.00000013 -0.14673329  0.00000174 -0.00000001  0.00000002

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00631213 -0.00000002 -0.00000000  0.50415444 -0.00000044 -0.00000061 -0.00000002  0.00000004

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000002 -0.00631217  0.00000000  0.00000061  0.00000596  0.50415388 -0.00000000 -0.00000009

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.50072367  0.00000000  0.00000000 -0.00000000  0.20784752 -0.27034868

  12    1  |1 0>           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00027543  0.00000000 -0.00000000  0.00000000
                           0.00000204 -0.00000111 -0.00000000  0.00000045  0.50816345 -0.00000601  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001090 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000002 -0.02010823  0.00000024 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00037871 -0.00000000 -0.00000000  0.02010824 -0.00000002 -0.00000002  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.03289319  0.00000000  0.00000000 -0.00000000  0.01179575  0.00156410

   4    1  |1 1>-          0.00000004  0.00000000 -0.00000000  0.00000000 -0.00009679 -0.00000000  0.00000000  0.00000000
                           0.00000518 -0.00000281  0.00000000 -0.00000016 -0.17858177  0.00000211  0.00000001 -0.00000001

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.07852134  0.59216986

   6    1  |1 1>-          0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.46411192  0.00000125 -0.00000000  0.17858060 -0.00000016 -0.00000021 -0.00000002  0.00000004

   7    1  |1 1>-          0.00000003  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000139  0.51851998  0.00000000  0.00000024  0.00000236  0.19951639  0.00000000  0.00000004

   8    1  |1 1>-         -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000036 -0.13541109 -0.00000000 -0.00000006 -0.00000062 -0.05210200  0.00000000  0.00000017

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.50072496  0.00000000  0.00000000 -0.00000000 -0.33805067 -0.04482509

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00027326 -0.00000000 -0.00000000 -0.00000000
                          -0.00000007  0.00000004  0.00000000 -0.00000044 -0.50415369  0.00000596 -0.00000001  0.00000001

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00631212  0.00000002  0.00000000 -0.50415464  0.00000044  0.00000061 -0.00000002  0.00000004

  12    1  |1 1>-         -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000049 -0.18234411  0.00000000  0.00000061  0.00000601  0.50816358  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.03583494  0.00071569
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00071570 -0.03583492
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000005  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.01967762 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.49867012  0.00000134  0.00000000 -0.35540682  0.00000031  0.00000043 -0.00000000  0.00000000
                          -0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000134 -0.49867021  0.00000000  0.00000043  0.00000421  0.35540655  0.00000000  0.00000000
                           0.00000003  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

   9    1  |0 0>           0.00000557 -0.00000302 -0.00000000  0.00000031  0.35540645 -0.00000421  0.00000000  0.00000000
                          -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00019264 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000004 -0.00000007
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000120 -0.00000000 -0.00000016
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000159 -0.00000000  0.00000000  0.00000000 -0.51947458 -0.13773223
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000130  0.00000000  0.00000002 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000  0.13773221 -0.51947451
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000 -0.49415912 -0.00000000 -0.00000000  0.00000000 -0.00000142 -0.00000033
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00258560 -0.01223803
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.01030480  0.00000038 -0.00000006 -0.00000010 -0.00000004 -0.02278145 -0.00000000  0.00000001
                           0.00000001  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000038 -0.01029622 -0.00000001  0.02278143  0.00000008 -0.00000010  0.00000000  0.00000000
                           0.00000000 -0.00041988 -0.00000000  0.00002726  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000007 -0.00000003 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.52481003  0.11087775
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00001110 -0.29842907 -0.00000034 -0.22866936 -0.00000082  0.00000101  0.00000000  0.00000001
                           0.00000000 -0.01216982 -0.00000000 -0.00027359 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.29867716  0.00001109 -0.00000171  0.00000101  0.00000036  0.22866997 -0.00000011  0.00000013
                           0.00000030  0.00000045 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000331 -0.00000065  0.57600476 -0.00000025  0.06995897 -0.00000011 -0.00000022  0.00000050
                           0.00000001 -0.00000002  0.00000260 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000091 -0.00000018  0.15827054  0.00000091 -0.25460792  0.00000040 -0.00000006  0.00000014
                           0.00000000 -0.00000001  0.00000072  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00001097  0.29507795  0.00000033  0.40186798  0.00000144 -0.00000177  0.00000000  0.00000001
                          -0.00000000  0.01203316  0.00000000  0.00048082  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000009 -0.00000001 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.10711051  0.50696415
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.29532339 -0.00001096  0.00000170 -0.00000177 -0.00000063 -0.40186863 -0.00000019  0.00000021
                          -0.00000030 -0.00000045  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000013  0.00000012 -0.03289121  0.00000005 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000001 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01030488  0.00000038 -0.00000006  0.00000010  0.00000004  0.02278149 -0.00000000  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01189125  0.00387979

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000006 -0.00000001  0.01030486 -0.00000008  0.02278147 -0.00000004 -0.00000000  0.00000001

   4    1  |1 0>          -0.00000030 -0.00000045  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.29867685  0.00001109 -0.00000171 -0.00000101 -0.00000036 -0.22866923 -0.00000011  0.00000013

   5    1  |1 0>           0.00000001 -0.00000001  0.00000135  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000171  0.00000034 -0.29867690 -0.00000082  0.22866915 -0.00000036  0.00000012 -0.00000026

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000011 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.16637883  0.50994115

   7    1  |1 0>           0.00000000 -0.01731973 -0.00000000  0.00022196  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001579  0.42471556  0.00000048 -0.18551656 -0.00000067  0.00000082 -0.00000000 -0.00000001

   8    1  |1 0>          -0.00000000  0.01710097  0.00000000  0.00022480  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001559 -0.41935114 -0.00000047 -0.18789071 -0.00000067  0.00000083  0.00000000  0.00000001

   9    1  |1 0>           0.00000001 -0.00000001  0.00000133  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000170  0.00000033 -0.29532463 -0.00000144  0.40186820 -0.00000063 -0.00000019  0.00000043

  10    1  |1 0>          -0.00000030 -0.00000045  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.29532562  0.00001096 -0.00000170 -0.00000177 -0.00000063 -0.40186840  0.00000019 -0.00000021

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00000002 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.49259907  0.16072241

  12    1  |1 0>           0.00000000 -0.00000005 -0.00000000 -0.00003935 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000134  0.00000000  0.03289159  0.00000012 -0.00000015 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00041988  0.00000000  0.00002726  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000038 -0.01029630 -0.00000001 -0.02278145 -0.00000008  0.00000010  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000006 -0.00000001  0.01030482  0.00000008 -0.02278142  0.00000004 -0.00000000  0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00930564  0.00835825

   4    1  |1 1>-          0.00000000 -0.01216980 -0.00000000  0.00027359  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001110  0.29842865  0.00000034 -0.22866988 -0.00000082  0.00000101 -0.00000000 -0.00000001

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000017  0.00000003  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.35842910  0.39905518

   6    1  |1 1>-          0.00000001 -0.00000001  0.00000135 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000171  0.00000034 -0.29867699  0.00000082 -0.22867026  0.00000036  0.00000012 -0.00000026

   7    1  |1 1>-          0.00000015  0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.15093587 -0.00000560  0.00000087  0.00000113  0.00000040  0.25547674  0.00000006 -0.00000006

   8    1  |1 1>-          0.00000058  0.00000088 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57797012 -0.00002146  0.00000332 -0.00000029 -0.00000010 -0.06671704  0.00000022 -0.00000024

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000  0.38548874  0.34624184

  10    1  |1 1>-         -0.00000000  0.01203327  0.00000000 -0.00048082 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001097 -0.29508056 -0.00000033  0.40186852  0.00000144 -0.00000177 -0.00000000 -0.00000001

  11    1  |1 1>-          0.00000001 -0.00000001  0.00000133 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000170  0.00000033 -0.29532448  0.00000144 -0.40186855  0.00000063 -0.00000019  0.00000043

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000122  0.00000000  0.00000000  0.00000015  0.00000005  0.03289185  0.00000000  0.00000000

   1    1  |0 0>           0.03584242 -0.00000133  0.00000021 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000002
                          -0.00000004 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.03531058  0.02520603
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.02520604 -0.03531056
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000133 -0.03581264 -0.00000004 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00146043 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000021  0.00000004 -0.03584245  0.00000000  0.00000003  0.00000000  0.00000002 -0.00000004
                          -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000003
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000020 -0.00000254  0.70752009 -0.00000111 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000117  0.00000000  0.00000000  0.00000312  0.00000111  0.70751992 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000115  0.00000000  0.70751935  0.00000254 -0.00000312 -0.00000000 -0.00000000
                          -0.00000000  0.00000005  0.00000000  0.00084651  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000309 -0.00000061  0.53742244  0.00000000 -0.00000057  0.00000000  0.00000018 -0.00000039
                           0.00000001 -0.00000002  0.00000243  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.53742237  0.00001995 -0.00000309 -0.00000000  0.00000000 -0.00000034  0.00000017 -0.00000019
                           0.00000054  0.00000082 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000004  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000  0.26413368  0.30628440
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00001997  0.53697619  0.00000061 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000000  0.02189768  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000015 -0.00000002 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.30628347  0.26413322
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000008
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000015 -0.01083204  0.00000001 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000001  0.01083118  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00014027 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000012 -0.00000017 -0.00000001 -0.00000007  0.57735020  0.00002244  0.00000236  0.00000043
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000

   5    1  |1 1>+          0.00000010  0.00000033  0.26817399 -0.00000003  0.00000608 -0.15716566 -0.00000255  0.00000010
                           0.00000000  0.00000000 -0.00347302  0.00000000  0.00000242 -0.06310049 -0.00000002  0.00000000

   6    1  |1 1>+         -0.00000373 -0.26819913  0.00000033  0.53864924  0.00000043  0.00000001 -0.00000011 -0.49313621
                          -0.00000001  0.00000202 -0.00000001 -0.00177837 -0.00000000  0.00000001 -0.00000002 -0.00138675

   7    1  |1 1>+          0.51722223 -0.00000720 -0.00000020  0.00000005 -0.00000240 -0.00000805  0.58974640 -0.00000007
                          -0.00000079  0.00000003  0.00000000 -0.00000002 -0.00000001 -0.00000322  0.00199715  0.00000000

   8    1  |1 1>+          0.14211994 -0.00000198 -0.00000006 -0.00000005  0.00000088  0.00000278 -0.19694101  0.00000006
                          -0.00000022  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000111 -0.00066693 -0.00000003

   9    1  |1 1>+          0.00000017  0.00000056  0.44870165  0.00000000  0.00000000 -0.00000051 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00581097 -0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000054  0.00000028 -0.00000002  0.00000000  0.00000222  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000625 -0.44873954  0.00000056 -0.00000107  0.00000000  0.00000000 -0.00000000  0.00000042
                          -0.00000002  0.00000338 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000013  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000015 -0.01083209  0.00000001 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01083206 -0.00000015 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

   4    1  |1 0>           0.00000001 -0.00000202  0.00000001  0.00202100 -0.00000000 -0.00000002  0.00000002 -0.00111996
                          -0.00000373 -0.26819871  0.00000033  0.61213843 -0.00000022  0.00000006 -0.00000001  0.39826271

   5    1  |1 0>          -0.00000041  0.00000001  0.00000000  0.00000002  0.00000001  0.00000169 -0.00107227  0.00000002
                          -0.26819700  0.00000373  0.00000010  0.00000000 -0.00000122 -0.00000425  0.31663402 -0.00000001

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000
                          -0.00000042  0.00000017 -0.00000002  0.00000007 -0.57734791 -0.00002244 -0.00000236 -0.00000043

   7    1  |1 0>           0.00000000  0.00000000 -0.00494272 -0.00000000  0.00000958 -0.24784726 -0.00000005  0.00000000
                          -0.00000015 -0.00000047 -0.38165850 -0.00000006 -0.00002403  0.61731806  0.00000978 -0.00000001

   8    1  |1 0>          -0.00000000 -0.00000000  0.00488029  0.00000000  0.00000481 -0.12477395 -0.00000003  0.00000000
                           0.00000015  0.00000047  0.37683755  0.00000001 -0.00001206  0.31077695  0.00000497 -0.00000009

   9    1  |1 0>           0.00000069 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.44873936 -0.00000625 -0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000117  0.00000000

  10    1  |1 0>          -0.00000002  0.00000338 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000625  0.44874009 -0.00000056  0.00000188 -0.00000000 -0.00000000 -0.00000000 -0.00000066

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000037  0.00000029 -0.00000000  0.00000000  0.00000134  0.00000000  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000019  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000054  0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00014027 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.01083121 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01083210 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00347303  0.00000000 -0.00000930  0.24049817  0.00000005 -0.00000000
                          -0.00000010 -0.00000033 -0.26817428  0.00000007  0.00002333 -0.59901353 -0.00000947 -0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000001 -0.00000000
                          -0.00000054  0.00000034 -0.00000001 -0.00000007  0.57735270  0.00002244  0.00000236  0.00000043

   6    1  |1 1>-         -0.00000041  0.00000001  0.00000000  0.00000002  0.00000002  0.00000392 -0.00242586 -0.00000001
                          -0.26819815  0.00000373  0.00000010  0.00000007 -0.00000294 -0.00000981  0.71634130 -0.00000010

   7    1  |1 1>-         -0.00000001  0.00000102 -0.00000000  0.00068331 -0.00000000 -0.00000002 -0.00000000 -0.00206673
                           0.00000189  0.13553283 -0.00000017  0.20696632 -0.00000052  0.00000005  0.00000008  0.73493911

   8    1  |1 1>-         -0.00000003  0.00000391 -0.00000001  0.00178496  0.00000000 -0.00000001  0.00000002  0.00067760
                           0.00000722  0.51898558 -0.00000064  0.54064553  0.00000025  0.00000002 -0.00000008 -0.24095661

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000017 -0.00000000 -0.00000001 -0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00581097 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000
                          -0.00000017 -0.00000056 -0.44870166 -0.00000000  0.00000000 -0.00000016  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000069 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.44873950 -0.00000625 -0.00000017  0.00000000 -0.00000000 -0.00000000  0.00000047 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000074 -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000  0.00000006

   1    1  |0 0>           0.00000060  0.04338446 -0.00000005  0.00000014 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                           0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000005 -0.00000003  0.00000000 -0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000002  0.00000005  0.04338081  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00056181  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.04338448  0.00000060  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000
                           0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000063 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000038 -0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00000052 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000

  10    1  |0 0>          -0.40444056  0.00000563  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000
                           0.00000062 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000563  0.40444009 -0.00000050  0.00000174 -0.00000000 -0.00000000 -0.00000000 -0.00000010
                           0.00000002 -0.00000305  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000018  0.00000003 -0.00000001  0.00000000  0.00000143  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000016  0.00000050  0.40440691  0.00000000 -0.00000000  0.00000033  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00523733  0.00000000 -0.00000000  0.00000013  0.00000000  0.00000000

  14    1  |0 0>          -0.00000039  0.00000026 -0.00000001  0.00000000  0.00000175  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01852065 -0.02095002 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.01827322 -0.00000096 -0.00000024 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000003 -0.00000024  0.00000016  0.01827320 -0.00000000  0.00000000 -0.00000007
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00002450  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000006  0.00000003 -0.00000000  0.00000000  0.00000000  0.10527884 -0.09307149  0.00000001
                           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000018  0.70948442 -0.00000022  0.00000015  0.01675802 -0.00000000  0.00000001 -0.00000021
                           0.00000000  0.03581110 -0.00000000  0.00000000  0.00002247  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000005  0.00000010 -0.01675845 -0.00000088 -0.00000022 -0.00000001 -0.00000001 -0.00000000
                           0.00000001  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.06519258  0.00000003 -0.00000027  0.00512717 -0.00000004  0.00000001 -0.00000000 -0.13550146
                          -0.00000709 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000730

   8    1  |1 1>+          0.73654193 -0.00000018  0.00000098 -0.01865859  0.00000016  0.00000000 -0.00000000 -0.03723201
                          -0.00008005 -0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000200

   9    1  |1 1>+         -0.00000000  0.00000003 -0.00000386  0.00000253  0.29026344  0.00000002 -0.00000005  0.00000136
                           0.00000000  0.00000000 -0.00000002  0.00000002  0.00038924 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.35137421 -0.39746359 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.29026387 -0.00001524 -0.00000386  0.00000008  0.00000004  0.00000000
                           0.00000000 -0.00000000 -0.00000011  0.00000014  0.00000002  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000115  0.00000000 -0.00004411  0.84026311 -0.00000733 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000041  0.00000051  0.00000006  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.01827325  0.00000096  0.00000024 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00888292  0.02651440 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000130
                           0.00000003 -0.00000000  0.00000096 -0.01827324  0.00000016  0.00000000 -0.00000000 -0.02421639

   4    1  |1 0>           0.00000002 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000001  0.01675895  0.00000088  0.00000022 -0.00000001 -0.00000001 -0.00000000

   5    1  |1 0>           0.00007152  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000378
                           0.65808418 -0.00000012 -0.00000088  0.01675951 -0.00000015 -0.00000000  0.00000000  0.07026224

   6    1  |1 0>           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000006 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.13324161  0.04463927  0.00000001

   7    1  |1 0>          -0.00000000 -0.00755528  0.00000000 -0.00000000 -0.00001823  0.00000000  0.00000000  0.00000000
                          -0.00000005  0.14968402 -0.00000018  0.00000012  0.01359620  0.00000000 -0.00000001  0.00000030

   8    1  |1 0>           0.00000000  0.03008678  0.00000000 -0.00000000 -0.00001847 -0.00000000 -0.00000000 -0.00000000
                          -0.00000018 -0.59607512 -0.00000018  0.00000012  0.01377099 -0.00000000  0.00000001 -0.00000029

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000014  0.00000018  0.00000002  0.00000000 -0.00000000  0.00002474
                          -0.00000009  0.00000000  0.00001524 -0.29026332  0.00000253 -0.00000002  0.00000001  0.45943199

  10    1  |1 0>          -0.00000000  0.00000000  0.00000011 -0.00000014 -0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.29026210 -0.00001524 -0.00000386 -0.00000008 -0.00000004 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.16852694 -0.50303026  0.00000002

  12    1  |1 0>           0.00000000 -0.00000004  0.00000007 -0.00000007 -0.00112678 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000079 -0.00001118  0.00000733  0.84026234  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002450 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000003  0.00000024 -0.00000016 -0.01827324 -0.00000000  0.00000000 -0.00000007

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000130
                          -0.00000003  0.00000000 -0.00000096  0.01827325 -0.00000016  0.00000000 -0.00000000 -0.02421645

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.02740356 -0.00556434  0.00000000

   4    1  |1 1>-          0.00000000  0.01721923  0.00000000 -0.00000000 -0.00002247  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.34114479 -0.00000022  0.00000015  0.01675858  0.00000000 -0.00000001  0.00000021

   5    1  |1 1>-         -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000003 -0.00000000  0.00000000  0.00000000  0.02796194  0.13771042 -0.00000000

   6    1  |1 1>-         -0.00001544  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000378
                          -0.14206024  0.00000009  0.00000088 -0.01675873  0.00000015 -0.00000000  0.00000000  0.07026163

   7    1  |1 1>-          0.00000003  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000008 -0.01872321 -0.00000098 -0.00000025  0.00000001  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003  0.00000006  0.00489031  0.00000026  0.00000007  0.00000002  0.00000001  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.51990108  0.10556675 -0.00000003

  10    1  |1 1>-          0.00000000 -0.00000001  0.00000002 -0.00000002 -0.00038924 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000023 -0.00000386  0.00000253  0.29026214 -0.00000002  0.00000005 -0.00000136

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000014 -0.00000018 -0.00000002  0.00000000 -0.00000000  0.00002474
                          -0.00000090  0.00000000 -0.00001524  0.29026319 -0.00000253 -0.00000002  0.00000001  0.45943151

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000032  0.00000041  0.00000005  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.84026308  0.00004411  0.00001118  0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00820642  0.00264855 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00264858  0.00820638 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000002 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000004 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00862289
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000046

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000037  0.00000000 -0.00001848  0.35192100 -0.00000307 -0.00000000 -0.00000000  0.00000043
                           0.00000000  0.00000000 -0.00000017  0.00000022  0.00000003 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.35192151 -0.00001848 -0.00000468 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000014  0.00000017  0.00000002 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000061  0.00000468 -0.00000307 -0.35192104 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003  0.00000003 -0.00000003 -0.00047192 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000004  0.00000002  0.73957917
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003982

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000035 -0.00000000  0.00000000  0.00000013  0.00000006  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.73760643 -0.05392949  0.00000004
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000000  0.00000057 -0.00000000 -0.00000000 -0.00000027 -0.00000003  0.00000008 -0.00000218
                           0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.05392940  0.73760705 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016  0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00000000  0.00000000 -0.02191539
                          -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000007 -0.02421646 -0.00000000
                           0.00000000  0.00000004  0.00000000

   3    1  |1 1>+          0.02421614  0.00000007 -0.00000000
                           0.00011838  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000001 -0.00000001 -0.00000005
                           0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.07026071  0.00000021  0.00000000
                           0.00034347  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000021 -0.07026205  0.00000000
                           0.00000000  0.00000012 -0.00000000

   7    1  |1 1>+         -0.00000040  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000011  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.45942626 -0.00000137 -0.00000000
                          -0.00224591 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000003  0.00000009 -0.28633019
                           0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000137  0.45943096 -0.00000000
                          -0.00000001 -0.00000077  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000004 -0.00000000
                           0.00000007 -0.02421643 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.02191540

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000007  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000012 -0.00000000
                           0.00000021 -0.07026247 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00000021 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000003 -0.00000006

   7    1  |1 0>           0.00048882  0.00000000 -0.00000000
                          -0.09999377 -0.00000030 -0.00000000

   8    1  |1 0>          -0.00048265 -0.00000000 -0.00000000
                           0.09873066  0.00000030  0.00000000

   9    1  |1 0>          -0.00000001 -0.00000000 -0.00000000
                           0.00000136 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000001 -0.00000077  0.00000000
                           0.00000137 -0.45943187 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000006  0.00000001  0.28633023

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00000060 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00011838 -0.00000000 -0.00000000
                           0.02421615  0.00000007  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00000007  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.02191539

   4    1  |1 1>-          0.00034347  0.00000000 -0.00000000
                          -0.07026038 -0.00000021 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000002 -0.00000005

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.00000021 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000006 -0.00000000
                          -0.00000011  0.03550659  0.00000000

   8    1  |1 1>-          0.00000000  0.00000023  0.00000000
                          -0.00000041  0.13596406 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000008  0.28633026

  10    1  |1 1>-         -0.00224591 -0.00000000  0.00000000
                           0.45942662  0.00000137  0.00000000

  11    1  |1 1>-         -0.00000001 -0.00000000 -0.00000000
                           0.00000136 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000084 -0.00000000

   1    1  |0 0>           0.00000003 -0.00862288  0.00000000
                           0.00000000  0.00000001 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00862282 -0.00000003  0.00000000
                          -0.00004215 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.02708661
                           0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000010 -0.00000000
                          -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000039  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000218 -0.00000000  0.00000000
                           0.00000001  0.00000001 -0.00000000

  11    1  |0 0>          -0.00000221  0.73957948 -0.00000000
                          -0.00000001 -0.00000123 -0.00000000

  12    1  |0 0>           0.00000004 -0.00000012 -0.00000016
                           0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.73957015  0.00000221  0.00000000
                           0.00361540  0.00000000 -0.00000000

  14    1  |0 0>          -0.00000008 -0.00000007 -0.00000007
                          -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000  0.00000000  0.86710465
                          -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.68630653     -0.04957327   -10880.07      0.00000000        0.00      0.0000
     2   1   -192.65321079     -0.01647753    -3616.40      0.03309574     7263.68      0.9006
     3   1   -192.65321078     -0.01647752    -3616.40      0.03309574     7263.68      0.9006
     4   1   -192.65321078     -0.01647752    -3616.40      0.03309575     7263.68      0.9006
     5   1   -192.63965379     -0.00292053     -640.98      0.04665274    10239.09      1.2695
     6   1   -192.63965377     -0.00292051     -640.98      0.04665276    10239.10      1.2695
     7   1   -192.63965372     -0.00292046     -640.97      0.04665281    10239.11      1.2695
     8   1   -192.63965366     -0.00292040     -640.95      0.04665287    10239.12      1.2695
     9   1   -192.63965361     -0.00292035     -640.94      0.04665292    10239.13      1.2695
    10   1   -192.59367032      0.04306294     9451.22      0.09263621    20331.30      2.5208
    11   1   -192.59367028      0.04306298     9451.23      0.09263624    20331.31      2.5208
    12   1   -192.59367017      0.04306309     9451.26      0.09263636    20331.33      2.5208
    13   1   -192.59367014      0.04306312     9451.26      0.09263638    20331.34      2.5208
    14   1   -192.59367014      0.04306312     9451.26      0.09263639    20331.34      2.5208
    15   1   -192.55413282      0.08260044    18128.70      0.13217371    29008.78      3.5966
    16   1   -192.48944214      0.14729112    32326.66      0.19686439    43206.74      5.3570
    17   1   -192.48944214      0.14729112    32326.66      0.19686439    43206.74      5.3570
    18   1   -192.48944214      0.14729112    32326.66      0.19686439    43206.74      5.3570
    19   1   -192.48463478      0.15209848    33381.76      0.20167175    44261.83      5.4878
    20   1   -192.48403106      0.15270220    33514.26      0.20227547    44394.33      5.5042
    21   1   -192.48403105      0.15270221    33514.26      0.20227547    44394.34      5.5042
    22   1   -192.48403105      0.15270221    33514.26      0.20227548    44394.34      5.5042
    23   1   -192.48329534      0.15343792    33675.73      0.20301118    44555.80      5.5242
    24   1   -192.48329534      0.15343792    33675.73      0.20301119    44555.81      5.5242
    25   1   -192.48329525      0.15343801    33675.75      0.20301128    44555.83      5.5242
    26   1   -192.48329525      0.15343801    33675.75      0.20301128    44555.83      5.5242
    27   1   -192.48329525      0.15343801    33675.75      0.20301128    44555.83      5.5242
    28   1   -192.43621654      0.20051672    44008.33      0.25008999    54888.41      6.8053
    29   1   -192.43621654      0.20051672    44008.33      0.25008999    54888.41      6.8053
    30   1   -192.43621654      0.20051672    44008.33      0.25008999    54888.41      6.8053
    31   1   -192.43436802      0.20236524    44414.04      0.25193851    55294.11      6.8556
    32   1   -192.43436801      0.20236525    44414.04      0.25193852    55294.11      6.8556
    33   1   -192.43436798      0.20236528    44414.05      0.25193855    55294.12      6.8556
    34   1   -192.43436798      0.20236528    44414.05      0.25193855    55294.12      6.8556
    35   1   -192.43436797      0.20236529    44414.05      0.25193855    55294.12      6.8556
    36   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    37   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    38   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    39   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    40   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    41   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    42   1   -192.43330281      0.20343045    44647.82      0.25300372    55527.90      6.8846
    43   1   -192.43126114      0.20547212    45095.92      0.25504539    55975.99      6.9401
    44   1   -192.43126114      0.20547212    45095.92      0.25504539    55975.99      6.9401
    45   1   -192.43126114      0.20547212    45095.92      0.25504539    55975.99      6.9401
    46   1   -192.42858142      0.20815184    45684.05      0.25772511    56564.12      7.0131
    47   1   -192.42858141      0.20815185    45684.05      0.25772512    56564.12      7.0131
    48   1   -192.42858136      0.20815189    45684.06      0.25772516    56564.14      7.0131
    49   1   -192.42858136      0.20815190    45684.06      0.25772517    56564.14      7.0131
    50   1   -192.42858136      0.20815190    45684.06      0.25772517    56564.14      7.0131
    51   1   -192.42083148      0.21590178    47384.96      0.26547504    58265.04      7.2239

 E0 =   -192.63673326 is the energy of the lowest zeroth-order state
 E1 =   -192.68630653 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.53842614 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000003 -0.00000067  0.58331429
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.70621694  0.00000020  0.00000263 -0.54533693  0.00000098  0.00000007 -0.00000003
                               -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000263 -0.00000320 -0.70621610  0.00000098  0.54533667 -0.00000020 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00047552  0.00000000  0.00087576 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001 -0.01675760
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00000004 -0.00000005 -0.01177880 -0.00000004 -0.02224271  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000793 -0.00000000 -0.00003572  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000000 -0.01177877  0.00000000  0.00000004  0.02224273 -0.00000004 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00000000  0.00360357 -0.00000002  0.00000001  0.00000002  0.04289558  0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.01311486  0.00000006  0.00000000  0.00000000  0.01178655  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000002  0.00000003  0.00611589  0.00000000  0.00199615 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000412  0.00000000  0.00000321 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.02280542 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00213520
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00000000  0.00611589 -0.00000000 -0.00000002 -0.00199617  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000001 -0.03736948  0.00000017 -0.00000000  0.00000000 -0.00000006 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000002  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70621729 -0.00000020 -0.00000263 -0.54533652  0.00000098  0.00000007 -0.00000003

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.53842623 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000001  0.00000045 -0.49708545

 15  1     3    1  |1 0>        0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000020 -0.70621647  0.00000320 -0.00000007 -0.00000020 -0.54533739 -0.00000058

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.01177875 -0.00000000 -0.00000004  0.02224274 -0.00000004 -0.00000000  0.00000000

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.01177879 -0.00000005 -0.00000000 -0.00000001 -0.02224275 -0.00000002

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.02730859

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000643 -0.00000000 -0.00005084  0.00000000  0.00000000
                               -0.00000000 -0.00000004 -0.00000004 -0.00955596  0.00000006  0.03165519 -0.00000001 -0.00000000

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000652  0.00000000  0.00005019 -0.00000000 -0.00000000
                                0.00000000 -0.00000004 -0.00000004 -0.00967828 -0.00000006 -0.03125534  0.00000001  0.00000000

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00611590 -0.00000003 -0.00000000 -0.00000000 -0.00199618 -0.00000000

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00611590 -0.00000000 -0.00000002  0.00199617 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02280543  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00181954

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00002516  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000014  0.00000017  0.03736949  0.00000000 -0.00000004  0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00047552 -0.00000000 -0.00087576  0.00000000  0.00000000
                               -0.00000000  0.00000263  0.00000320  0.70621780  0.00000098  0.54533482 -0.00000020 -0.00000002

 26  1     2    1  |1 1>-      -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000020  0.70621775 -0.00000320 -0.00000007 -0.00000020 -0.54533609 -0.00000058

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.53842584  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001  0.00000022 -0.08622865

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000793 -0.00000000 -0.00003572  0.00000000  0.00000000
                               -0.00000000 -0.00000004 -0.00000005 -0.01177874  0.00000004  0.02224272 -0.00000001 -0.00000000

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.04406621

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.01177875  0.00000005 -0.00000000 -0.00000001 -0.02224274 -0.00000002

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.01315958  0.00000000  0.00000005 -0.01124035  0.00000002  0.00000000 -0.00000000

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00343662 -0.00000000 -0.00000001 -0.04304192  0.00000008  0.00000001 -0.00000000

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02280542 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00031563

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000412  0.00000000  0.00000321 -0.00000000 -0.00000000
                                0.00000000  0.00000002  0.00000003  0.00611588 -0.00000000 -0.00199613  0.00000000  0.00000000

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00611589  0.00000003 -0.00000000 -0.00000000 -0.00199616 -0.00000000

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.03736950  0.00000001  0.00000014  0.00000000  0.00000000  0.00000000  0.00000000

 37  1     1    1  |0 0>       -0.00000000 -0.00000015  0.00000000  0.00000000  0.63408683 -0.00000114 -0.00000008  0.00000004
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000001  0.00000014 -0.01617138
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000019 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000002 -0.00000067  0.63388012
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000059  0.00000114  0.63408649 -0.00000023 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00101829 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000036  0.00000000  0.00000008  0.00000023  0.63408680  0.00000068
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.35495568  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000010
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000001  0.02410455 -0.00000011 -0.00000000  0.00000000  0.00000004  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.02410458  0.00000001  0.00000009  0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000009  0.00000011  0.02410455  0.00000000 -0.00000003 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00001623  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.01316079 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000003 -0.00000000  0.00000000 -0.01316081  0.00000002  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00344333
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000002 -0.01316079  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002114  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.01270261
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.05232881 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.23720796  0.20354070 -0.47711069 -0.00000001  0.00000007  0.00000015  0.20461787  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000006  0.00000001  0.00000007 -0.00000005  0.44921924  0.00000073 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000001 -0.00000002  0.00000000 -0.44921697 -0.00000005 -0.00000003 -0.00000000  0.00037874
                               -0.00000000 -0.00000000 -0.00000000  0.00158583  0.00000000 -0.00000000 -0.00000000 -0.00000125

  4  1     4    1  |1 1>+      -0.04120829 -0.01820372 -0.00776595  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00989561 -0.00000000 -0.00000000 -0.00000000  0.46410930
                                0.00000000 -0.00000000 -0.00000000  0.00003493  0.00000000 -0.00000000 -0.00000000 -0.00153078

  6  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00989571  0.00000002 -0.00000000  0.00000281
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

  7  1     7    1  |1 1>+      -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01908407 -0.00000000  0.00000159
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

  8  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00524382 -0.00000000 -0.00000577
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

  9  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.01829760 -0.00000000 -0.00000000  0.00000000 -0.00631254
                               -0.00000000 -0.00000000 -0.00000000  0.00006459  0.00000000 -0.00000000 -0.00000000  0.00002082

 10  1    10    1  |1 1>+       0.00086829 -0.00829065  0.01943381  0.00000000 -0.00000000 -0.00000001 -0.01018307  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.01829774  0.00000003  0.00000000 -0.00000004
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000204
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006  0.00000001  0.00000007 -0.00000005  0.44921918  0.00000073 -0.00000000 -0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.38656038  0.31141992  0.41482678 -0.00000001 -0.00000007 -0.00000011  0.20461791 -0.00000000

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000011 -0.00000002  0.00000013 -0.00000003 -0.00000073  0.44921940 -0.00000000 -0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00989570  0.00000002 -0.00000000 -0.00000281

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00989573  0.00000000  0.00000518

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.03511666 -0.01582734  0.01188194  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00004972  0.00000000 -0.00000000  0.00000000  0.00124190
                                0.00000000  0.00000000 -0.00000000  0.01408318  0.00000000  0.00000000  0.00000000  0.37652690

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00004909 -0.00000000  0.00000000  0.00000000  0.00125779
                               -0.00000000 -0.00000000  0.00000000 -0.01390527 -0.00000000 -0.00000000 -0.00000000  0.38134427

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01829772 -0.00000000  0.00000007

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01829776 -0.00000003 -0.00000000 -0.00000004

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00141499  0.01268482  0.01689687 -0.00000000 -0.00000000 -0.00000000  0.01018308 -0.00000000

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00060143
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.18234322

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00158583 -0.00000000  0.00000000 -0.00000000 -0.00000125
                                0.00000001 -0.00000002  0.00000000 -0.44921653 -0.00000005 -0.00000003 -0.00000000 -0.00037870

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000011 -0.00000002  0.00000013 -0.00000003 -0.00000073  0.44921898 -0.00000000  0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.62376874 -0.51496106  0.06228407  0.00000002  0.00000000 -0.00000004  0.20461767 -0.00000000

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00003493  0.00000000 -0.00000000  0.00000000  0.00153078
                                0.00000000  0.00000000 -0.00000000  0.00989561  0.00000000  0.00000000  0.00000000  0.46410904

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00609163  0.00237638  0.01964786  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00989568  0.00000000 -0.00000518

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00500076 -0.00000001  0.00000000  0.00000314

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.01914916 -0.00000003  0.00000000 -0.00000082

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00228324 -0.02097553  0.00253698  0.00000000  0.00000000 -0.00000000  0.01018300  0.00000000

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00006459  0.00000000 -0.00000000  0.00000000 -0.00002082
                               -0.00000000  0.00000000 -0.00000000  0.01829767  0.00000000  0.00000000 -0.00000000 -0.00631228

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.01829777  0.00000000 -0.00000007

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000111

 37  1     1    1  |0 0>        0.00000007  0.00000002  0.00000011 -0.00000009  0.77116318  0.00000125  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.63388083  0.77113513 -0.00655720 -0.00000003 -0.00000002  0.00000004  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.01617138  0.00655719  0.77113571  0.00000000 -0.00000011 -0.00000022  0.00000009 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000001  0.00000003 -0.00000000  0.77115798  0.00000009  0.00000006 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00272235 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000013 -0.00000004  0.00000022 -0.00000006 -0.00000125  0.77116320  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000006 -0.00000004 -0.00000012  0.00000000 -0.00000000 -0.00000000  0.93428345 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000557
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

 44  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000302
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 45  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.49866771
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00164476

 46  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000003  0.02131649  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.02131650  0.00000003 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.01270258  0.02066598 -0.00522647 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.02131639  0.00000000  0.00000000  0.00000000 -0.00000031
                                0.00000000  0.00000000  0.00000000 -0.00007525 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00344334 -0.00522648 -0.02066599  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.03461204 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.03289328  0.00000000  0.00000000 -0.00000000 -0.00454320 -0.01099739
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00037873 -0.00000000 -0.00000002 -0.00000024 -0.02010824 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000002  0.02010825 -0.00000024 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001090 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000151 -0.00000000 -0.00000000 -0.00000000  0.55209477 -0.22808355
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000518 -0.00000281  0.00000000 -0.00000016 -0.17858016  0.00000211 -0.00000001  0.00000001
                               -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00009679  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000125  0.46411199  0.00000000  0.00000021  0.00000211  0.17858015 -0.00000000 -0.00000009
                               -0.00000002 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.14199092 -0.00000038 -0.00000000 -0.05463501  0.00000005  0.00000007  0.00000004 -0.00000007
                                0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.51675701  0.00000139 -0.00000000  0.19883747 -0.00000017 -0.00000024  0.00000001 -0.00000002
                               -0.00000002 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000007  0.00000004  0.00000000 -0.00000044 -0.50415522  0.00000596  0.00000001 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027326  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.50072346 -0.00000000 -0.00000000  0.00000000 -0.13020746 -0.31517472
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000002 -0.00631249  0.00000000  0.00000061  0.00000596  0.50415530  0.00000000  0.00000009
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.18234386 -0.00000049 -0.00000000  0.50816366 -0.00000045 -0.00000061  0.00000000 -0.00000000
                                0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00037876  0.00000000  0.00000002  0.00000024  0.02010823 -0.00000000 -0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.03289327  0.00000000  0.00000000 -0.00000000 -0.00725229  0.00943330

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00037871  0.00000000  0.00000000 -0.02010822  0.00000002  0.00000002  0.00000000 -0.00000000

 16  1     4    1  |1 0>       -0.00000002 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000125 -0.46411163 -0.00000000 -0.00000021 -0.00000211 -0.17858137 -0.00000000 -0.00000009

 17  1     5    1  |1 0>       -0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.46411178 -0.00000125  0.00000000 -0.17858063  0.00000016  0.00000021 -0.00000002  0.00000004

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000159  0.00000000 -0.00000000 -0.00000000  0.47357354  0.36408651

 19  1     7    1  |1 0>        0.00000003  0.00000000 -0.00000000  0.00000000 -0.00007853 -0.00000000  0.00000000  0.00000000
                                0.00000421 -0.00000228 -0.00000000 -0.00000013 -0.14488194  0.00000171  0.00000001 -0.00000002

 20  1     8    1  |1 0>        0.00000003  0.00000000 -0.00000000  0.00000000 -0.00007953 -0.00000000 -0.00000000 -0.00000000
                                0.00000426 -0.00000231  0.00000000 -0.00000013 -0.14673329  0.00000174 -0.00000001  0.00000002

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00631213 -0.00000002 -0.00000000  0.50415444 -0.00000044 -0.00000061 -0.00000002  0.00000004

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000002 -0.00631217  0.00000000  0.00000061  0.00000596  0.50415388 -0.00000000 -0.00000009

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.50072367  0.00000000  0.00000000 -0.00000000  0.20784752 -0.27034868

 24  1    12    1  |1 0>        0.00000001  0.00000000 -0.00000000 -0.00000000  0.00027543  0.00000000 -0.00000000  0.00000000
                                0.00000204 -0.00000111 -0.00000000  0.00000045  0.50816345 -0.00000601  0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001090 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000002 -0.02010823  0.00000024 -0.00000000  0.00000000

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00037871 -0.00000000 -0.00000000  0.02010824 -0.00000002 -0.00000002  0.00000000 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.03289319  0.00000000  0.00000000 -0.00000000  0.01179575  0.00156410

 28  1     4    1  |1 1>-       0.00000004  0.00000000 -0.00000000  0.00000000 -0.00009679 -0.00000000  0.00000000  0.00000000
                                0.00000518 -0.00000281  0.00000000 -0.00000016 -0.17858177  0.00000211  0.00000001 -0.00000001

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.07852134  0.59216986

 30  1     6    1  |1 1>-       0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.46411192  0.00000125 -0.00000000  0.17858060 -0.00000016 -0.00000021 -0.00000002  0.00000004

 31  1     7    1  |1 1>-       0.00000003  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000139  0.51851998  0.00000000  0.00000024  0.00000236  0.19951639  0.00000000  0.00000004

 32  1     8    1  |1 1>-      -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000036 -0.13541109 -0.00000000 -0.00000006 -0.00000062 -0.05210200  0.00000000  0.00000017

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.50072496  0.00000000  0.00000000 -0.00000000 -0.33805067 -0.04482509

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00027326 -0.00000000 -0.00000000 -0.00000000
                               -0.00000007  0.00000004  0.00000000 -0.00000044 -0.50415369  0.00000596 -0.00000001  0.00000001

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00631212  0.00000002  0.00000000 -0.50415464  0.00000044  0.00000061 -0.00000002  0.00000004

 36  1    12    1  |1 1>-      -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000049 -0.18234411  0.00000000  0.00000061  0.00000601  0.50816358  0.00000000  0.00000000

 37  1     1    1  |0 0>       -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.03583494  0.00071569
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00071570 -0.03583492
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000005  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.01967762 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.49867012  0.00000134  0.00000000 -0.35540682  0.00000031  0.00000043 -0.00000000  0.00000000
                               -0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000134 -0.49867021  0.00000000  0.00000043  0.00000421  0.35540655  0.00000000  0.00000000
                                0.00000003  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000557 -0.00000302 -0.00000000  0.00000031  0.35540645 -0.00000421  0.00000000  0.00000000
                               -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00019264 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000004 -0.00000007
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000120 -0.00000000 -0.00000016
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000159 -0.00000000  0.00000000  0.00000000 -0.51947458 -0.13773223
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000130  0.00000000  0.00000002 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000  0.13773221 -0.51947451
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000 -0.49415912 -0.00000000 -0.00000000  0.00000000 -0.00000142 -0.00000033
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00258560 -0.01223803
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.01030480  0.00000038 -0.00000006 -0.00000010 -0.00000004 -0.02278145 -0.00000000  0.00000001
                                0.00000001  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000038 -0.01029622 -0.00000001  0.02278143  0.00000008 -0.00000010  0.00000000  0.00000000
                                0.00000000 -0.00041988 -0.00000000  0.00002726  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000007 -0.00000003 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.52481003  0.11087775
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00001110 -0.29842907 -0.00000034 -0.22866936 -0.00000082  0.00000101  0.00000000  0.00000001
                                0.00000000 -0.01216982 -0.00000000 -0.00027359 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.29867716  0.00001109 -0.00000171  0.00000101  0.00000036  0.22866997 -0.00000011  0.00000013
                                0.00000030  0.00000045 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000331 -0.00000065  0.57600476 -0.00000025  0.06995897 -0.00000011 -0.00000022  0.00000050
                                0.00000001 -0.00000002  0.00000260 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000091 -0.00000018  0.15827054  0.00000091 -0.25460792  0.00000040 -0.00000006  0.00000014
                                0.00000000 -0.00000001  0.00000072  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00001097  0.29507795  0.00000033  0.40186798  0.00000144 -0.00000177  0.00000000  0.00000001
                               -0.00000000  0.01203316  0.00000000  0.00048082  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000009 -0.00000001 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.10711051  0.50696415
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.29532339 -0.00001096  0.00000170 -0.00000177 -0.00000063 -0.40186863 -0.00000019  0.00000021
                               -0.00000030 -0.00000045  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000013  0.00000012 -0.03289121  0.00000005 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000001 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01030488  0.00000038 -0.00000006  0.00000010  0.00000004  0.02278149 -0.00000000  0.00000001

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01189125  0.00387979

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000006 -0.00000001  0.01030486 -0.00000008  0.02278147 -0.00000004 -0.00000000  0.00000001

 16  1     4    1  |1 0>       -0.00000030 -0.00000045  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.29867685  0.00001109 -0.00000171 -0.00000101 -0.00000036 -0.22866923 -0.00000011  0.00000013

 17  1     5    1  |1 0>        0.00000001 -0.00000001  0.00000135  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000171  0.00000034 -0.29867690 -0.00000082  0.22866915 -0.00000036  0.00000012 -0.00000026

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000011 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.16637883  0.50994115

 19  1     7    1  |1 0>        0.00000000 -0.01731973 -0.00000000  0.00022196  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001579  0.42471556  0.00000048 -0.18551656 -0.00000067  0.00000082 -0.00000000 -0.00000001

 20  1     8    1  |1 0>       -0.00000000  0.01710097  0.00000000  0.00022480  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001559 -0.41935114 -0.00000047 -0.18789071 -0.00000067  0.00000083  0.00000000  0.00000001

 21  1     9    1  |1 0>        0.00000001 -0.00000001  0.00000133  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000170  0.00000033 -0.29532463 -0.00000144  0.40186820 -0.00000063 -0.00000019  0.00000043

 22  1    10    1  |1 0>       -0.00000030 -0.00000045  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.29532562  0.00001096 -0.00000170 -0.00000177 -0.00000063 -0.40186840  0.00000019 -0.00000021

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00000002 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.49259907  0.16072241

 24  1    12    1  |1 0>        0.00000000 -0.00000005 -0.00000000 -0.00003935 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000134  0.00000000  0.03289159  0.00000012 -0.00000015 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00041988  0.00000000  0.00002726  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000038 -0.01029630 -0.00000001 -0.02278145 -0.00000008  0.00000010  0.00000000  0.00000000

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000006 -0.00000001  0.01030482  0.00000008 -0.02278142  0.00000004 -0.00000000  0.00000001

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00930564  0.00835825

 28  1     4    1  |1 1>-       0.00000000 -0.01216980 -0.00000000  0.00027359  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001110  0.29842865  0.00000034 -0.22866988 -0.00000082  0.00000101 -0.00000000 -0.00000001

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000017  0.00000003  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.35842910  0.39905518

 30  1     6    1  |1 1>-       0.00000001 -0.00000001  0.00000135 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000171  0.00000034 -0.29867699  0.00000082 -0.22867026  0.00000036  0.00000012 -0.00000026

 31  1     7    1  |1 1>-       0.00000015  0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.15093587 -0.00000560  0.00000087  0.00000113  0.00000040  0.25547674  0.00000006 -0.00000006

 32  1     8    1  |1 1>-       0.00000058  0.00000088 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57797012 -0.00002146  0.00000332 -0.00000029 -0.00000010 -0.06671704  0.00000022 -0.00000024

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000  0.38548874  0.34624184

 34  1    10    1  |1 1>-      -0.00000000  0.01203327  0.00000000 -0.00048082 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001097 -0.29508056 -0.00000033  0.40186852  0.00000144 -0.00000177 -0.00000000 -0.00000001

 35  1    11    1  |1 1>-       0.00000001 -0.00000001  0.00000133 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000170  0.00000033 -0.29532448  0.00000144 -0.40186855  0.00000063 -0.00000019  0.00000043

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000122  0.00000000  0.00000000  0.00000015  0.00000005  0.03289185  0.00000000  0.00000000

 37  1     1    1  |0 0>        0.03584242 -0.00000133  0.00000021 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000002
                               -0.00000004 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.03531058  0.02520603
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.02520604 -0.03531056
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000133 -0.03581264 -0.00000004 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00146043 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000021  0.00000004 -0.03584245  0.00000000  0.00000003  0.00000000  0.00000002 -0.00000004
                               -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000003
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000020 -0.00000254  0.70752009 -0.00000111 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000117  0.00000000  0.00000000  0.00000312  0.00000111  0.70751992 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000115  0.00000000  0.70751935  0.00000254 -0.00000312 -0.00000000 -0.00000000
                               -0.00000000  0.00000005  0.00000000  0.00084651  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000309 -0.00000061  0.53742244  0.00000000 -0.00000057  0.00000000  0.00000018 -0.00000039
                                0.00000001 -0.00000002  0.00000243  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.53742237  0.00001995 -0.00000309 -0.00000000  0.00000000 -0.00000034  0.00000017 -0.00000019
                                0.00000054  0.00000082 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000004  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000  0.26413368  0.30628440
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00001997  0.53697619  0.00000061 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000000  0.02189768  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000015 -0.00000002 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.30628347  0.26413322
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000008
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000015 -0.01083204  0.00000001 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000001  0.01083118  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00014027 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000012 -0.00000017 -0.00000001 -0.00000007  0.57735020  0.00002244  0.00000236  0.00000043
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000

  5  1     5    1  |1 1>+       0.00000010  0.00000033  0.26817399 -0.00000003  0.00000608 -0.15716566 -0.00000255  0.00000010
                                0.00000000  0.00000000 -0.00347302  0.00000000  0.00000242 -0.06310049 -0.00000002  0.00000000

  6  1     6    1  |1 1>+      -0.00000373 -0.26819913  0.00000033  0.53864924  0.00000043  0.00000001 -0.00000011 -0.49313621
                               -0.00000001  0.00000202 -0.00000001 -0.00177837 -0.00000000  0.00000001 -0.00000002 -0.00138675

  7  1     7    1  |1 1>+       0.51722223 -0.00000720 -0.00000020  0.00000005 -0.00000240 -0.00000805  0.58974640 -0.00000007
                               -0.00000079  0.00000003  0.00000000 -0.00000002 -0.00000001 -0.00000322  0.00199715  0.00000000

  8  1     8    1  |1 1>+       0.14211994 -0.00000198 -0.00000006 -0.00000005  0.00000088  0.00000278 -0.19694101  0.00000006
                               -0.00000022  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000111 -0.00066693 -0.00000003

  9  1     9    1  |1 1>+       0.00000017  0.00000056  0.44870165  0.00000000  0.00000000 -0.00000051 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00581097 -0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000054  0.00000028 -0.00000002  0.00000000  0.00000222  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000625 -0.44873954  0.00000056 -0.00000107  0.00000000  0.00000000 -0.00000000  0.00000042
                               -0.00000002  0.00000338 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000013  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000015 -0.01083209  0.00000001 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000001

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 0>        0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01083206 -0.00000015 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

 16  1     4    1  |1 0>        0.00000001 -0.00000202  0.00000001  0.00202100 -0.00000000 -0.00000002  0.00000002 -0.00111996
                               -0.00000373 -0.26819871  0.00000033  0.61213843 -0.00000022  0.00000006 -0.00000001  0.39826271

 17  1     5    1  |1 0>       -0.00000041  0.00000001  0.00000000  0.00000002  0.00000001  0.00000169 -0.00107227  0.00000002
                               -0.26819700  0.00000373  0.00000010  0.00000000 -0.00000122 -0.00000425  0.31663402 -0.00000001

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000
                               -0.00000042  0.00000017 -0.00000002  0.00000007 -0.57734791 -0.00002244 -0.00000236 -0.00000043

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00494272 -0.00000000  0.00000958 -0.24784726 -0.00000005  0.00000000
                               -0.00000015 -0.00000047 -0.38165850 -0.00000006 -0.00002403  0.61731806  0.00000978 -0.00000001

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00488029  0.00000000  0.00000481 -0.12477395 -0.00000003  0.00000000
                                0.00000015  0.00000047  0.37683755  0.00000001 -0.00001206  0.31077695  0.00000497 -0.00000009

 21  1     9    1  |1 0>        0.00000069 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.44873936 -0.00000625 -0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000117  0.00000000

 22  1    10    1  |1 0>       -0.00000002  0.00000338 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000625  0.44874009 -0.00000056  0.00000188 -0.00000000 -0.00000000 -0.00000000 -0.00000066

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000037  0.00000029 -0.00000000  0.00000000  0.00000134  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000019  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000054  0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00014027 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.01083121 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000

 26  1     2    1  |1 1>-       0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01083210 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00347303  0.00000000 -0.00000930  0.24049817  0.00000005 -0.00000000
                               -0.00000010 -0.00000033 -0.26817428  0.00000007  0.00002333 -0.59901353 -0.00000947 -0.00000001

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000001 -0.00000000
                               -0.00000054  0.00000034 -0.00000001 -0.00000007  0.57735270  0.00002244  0.00000236  0.00000043

 30  1     6    1  |1 1>-      -0.00000041  0.00000001  0.00000000  0.00000002  0.00000002  0.00000392 -0.00242586 -0.00000001
                               -0.26819815  0.00000373  0.00000010  0.00000007 -0.00000294 -0.00000981  0.71634130 -0.00000010

 31  1     7    1  |1 1>-      -0.00000001  0.00000102 -0.00000000  0.00068331 -0.00000000 -0.00000002 -0.00000000 -0.00206673
                                0.00000189  0.13553283 -0.00000017  0.20696632 -0.00000052  0.00000005  0.00000008  0.73493911

 32  1     8    1  |1 1>-      -0.00000003  0.00000391 -0.00000001  0.00178496  0.00000000 -0.00000001  0.00000002  0.00067760
                                0.00000722  0.51898558 -0.00000064  0.54064553  0.00000025  0.00000002 -0.00000008 -0.24095661

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000017 -0.00000000 -0.00000001 -0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00581097 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000
                               -0.00000017 -0.00000056 -0.44870166 -0.00000000  0.00000000 -0.00000016  0.00000000 -0.00000000

 35  1    11    1  |1 1>-       0.00000069 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.44873950 -0.00000625 -0.00000017  0.00000000 -0.00000000 -0.00000000  0.00000047 -0.00000000

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000074 -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000  0.00000006

 37  1     1    1  |0 0>        0.00000060  0.04338446 -0.00000005  0.00000014 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                                0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000005 -0.00000003  0.00000000 -0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000002  0.00000005  0.04338081  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00056181  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.04338448  0.00000060  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000
                                0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000063 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000038 -0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000000  0.00000052 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.40444056  0.00000563  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000
                                0.00000062 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000563  0.40444009 -0.00000050  0.00000174 -0.00000000 -0.00000000 -0.00000000 -0.00000010
                                0.00000002 -0.00000305  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000018  0.00000003 -0.00000001  0.00000000  0.00000143  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000016  0.00000050  0.40440691  0.00000000 -0.00000000  0.00000033  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00523733  0.00000000 -0.00000000  0.00000013  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000039  0.00000026 -0.00000001  0.00000000  0.00000175  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01852065 -0.02095002 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.01827322 -0.00000096 -0.00000024 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000003 -0.00000024  0.00000016  0.01827320 -0.00000000  0.00000000 -0.00000007
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00002450  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000006  0.00000003 -0.00000000  0.00000000  0.00000000  0.10527884 -0.09307149  0.00000001
                                0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000018  0.70948442 -0.00000022  0.00000015  0.01675802 -0.00000000  0.00000001 -0.00000021
                                0.00000000  0.03581110 -0.00000000  0.00000000  0.00002247  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000005  0.00000010 -0.01675845 -0.00000088 -0.00000022 -0.00000001 -0.00000001 -0.00000000
                                0.00000001  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.06519258  0.00000003 -0.00000027  0.00512717 -0.00000004  0.00000001 -0.00000000 -0.13550146
                               -0.00000709 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000730

  8  1     8    1  |1 1>+       0.73654193 -0.00000018  0.00000098 -0.01865859  0.00000016  0.00000000 -0.00000000 -0.03723201
                               -0.00008005 -0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000200

  9  1     9    1  |1 1>+      -0.00000000  0.00000003 -0.00000386  0.00000253  0.29026344  0.00000002 -0.00000005  0.00000136
                                0.00000000  0.00000000 -0.00000002  0.00000002  0.00038924 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.35137421 -0.39746359 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.29026387 -0.00001524 -0.00000386  0.00000008  0.00000004  0.00000000
                                0.00000000 -0.00000000 -0.00000011  0.00000014  0.00000002  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000115  0.00000000 -0.00004411  0.84026311 -0.00000733 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000041  0.00000051  0.00000006  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.01827325  0.00000096  0.00000024 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00888292  0.02651440 -0.00000000

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000130
                                0.00000003 -0.00000000  0.00000096 -0.01827324  0.00000016  0.00000000 -0.00000000 -0.02421639

 16  1     4    1  |1 0>        0.00000002 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000001  0.01675895  0.00000088  0.00000022 -0.00000001 -0.00000001 -0.00000000

 17  1     5    1  |1 0>        0.00007152  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000378
                                0.65808418 -0.00000012 -0.00000088  0.01675951 -0.00000015 -0.00000000  0.00000000  0.07026224

 18  1     6    1  |1 0>        0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000006 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.13324161  0.04463927  0.00000001

 19  1     7    1  |1 0>       -0.00000000 -0.00755528  0.00000000 -0.00000000 -0.00001823  0.00000000  0.00000000  0.00000000
                               -0.00000005  0.14968402 -0.00000018  0.00000012  0.01359620  0.00000000 -0.00000001  0.00000030

 20  1     8    1  |1 0>        0.00000000  0.03008678  0.00000000 -0.00000000 -0.00001847 -0.00000000 -0.00000000 -0.00000000
                               -0.00000018 -0.59607512 -0.00000018  0.00000012  0.01377099 -0.00000000  0.00000001 -0.00000029

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000014  0.00000018  0.00000002  0.00000000 -0.00000000  0.00002474
                               -0.00000009  0.00000000  0.00001524 -0.29026332  0.00000253 -0.00000002  0.00000001  0.45943199

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000011 -0.00000014 -0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.29026210 -0.00001524 -0.00000386 -0.00000008 -0.00000004 -0.00000000

 23  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.16852694 -0.50303026  0.00000002

 24  1    12    1  |1 0>        0.00000000 -0.00000004  0.00000007 -0.00000007 -0.00112678 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000079 -0.00001118  0.00000733  0.84026234  0.00000000 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002450 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000003  0.00000024 -0.00000016 -0.01827324 -0.00000000  0.00000000 -0.00000007

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000130
                               -0.00000003  0.00000000 -0.00000096  0.01827325 -0.00000016  0.00000000 -0.00000000 -0.02421645

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.02740356 -0.00556434  0.00000000

 28  1     4    1  |1 1>-       0.00000000  0.01721923  0.00000000 -0.00000000 -0.00002247  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.34114479 -0.00000022  0.00000015  0.01675858  0.00000000 -0.00000001  0.00000021

 29  1     5    1  |1 1>-      -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000003 -0.00000000  0.00000000  0.00000000  0.02796194  0.13771042 -0.00000000

 30  1     6    1  |1 1>-      -0.00001544  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000378
                               -0.14206024  0.00000009  0.00000088 -0.01675873  0.00000015 -0.00000000  0.00000000  0.07026163

 31  1     7    1  |1 1>-       0.00000003  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000008 -0.01872321 -0.00000098 -0.00000025  0.00000001  0.00000000  0.00000000

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003  0.00000006  0.00489031  0.00000026  0.00000007  0.00000002  0.00000001  0.00000000

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.51990108  0.10556675 -0.00000003

 34  1    10    1  |1 1>-       0.00000000 -0.00000001  0.00000002 -0.00000002 -0.00038924 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000023 -0.00000386  0.00000253  0.29026214 -0.00000002  0.00000005 -0.00000136

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000014 -0.00000018 -0.00000002  0.00000000 -0.00000000  0.00002474
                               -0.00000090  0.00000000 -0.00001524  0.29026319 -0.00000253 -0.00000002  0.00000001  0.45943151

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000032  0.00000041  0.00000005  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.84026308  0.00004411  0.00001118  0.00000000  0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00820642  0.00264855 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00264858  0.00820638 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000  0.00000002 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000004 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00862289
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000046

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000037  0.00000000 -0.00001848  0.35192100 -0.00000307 -0.00000000 -0.00000000  0.00000043
                                0.00000000  0.00000000 -0.00000017  0.00000022  0.00000003 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.35192151 -0.00001848 -0.00000468 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000014  0.00000017  0.00000002 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000061  0.00000468 -0.00000307 -0.35192104 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003  0.00000003 -0.00000003 -0.00047192 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000004  0.00000002  0.73957917
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003982

 47  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000035 -0.00000000  0.00000000  0.00000013  0.00000006  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

 48  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.73760643 -0.05392949  0.00000004
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00000057 -0.00000000 -0.00000000 -0.00000027 -0.00000003  0.00000008 -0.00000218
                                0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.05392940  0.73760705 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016  0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.02191539
                               -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000007 -0.02421646 -0.00000000
                                0.00000000  0.00000004  0.00000000

  3  1     3    1  |1 1>+       0.02421614  0.00000007 -0.00000000
                                0.00011838  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000001 -0.00000001 -0.00000005
                                0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.07026071  0.00000021  0.00000000
                                0.00034347  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000021 -0.07026205  0.00000000
                                0.00000000  0.00000012 -0.00000000

  7  1     7    1  |1 1>+      -0.00000040  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000011  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.45942626 -0.00000137 -0.00000000
                               -0.00224591 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000003  0.00000009 -0.28633019
                                0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000137  0.45943096 -0.00000000
                               -0.00000001 -0.00000077  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000004 -0.00000000
                                0.00000007 -0.02421643 -0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.02191540

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000007  0.00000000  0.00000000

 16  1     4    1  |1 0>       -0.00000000 -0.00000012 -0.00000000
                                0.00000021 -0.07026247 -0.00000000

 17  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00000021 -0.00000000  0.00000000

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000003 -0.00000006

 19  1     7    1  |1 0>        0.00048882  0.00000000 -0.00000000
                               -0.09999377 -0.00000030 -0.00000000

 20  1     8    1  |1 0>       -0.00048265 -0.00000000 -0.00000000
                                0.09873066  0.00000030  0.00000000

 21  1     9    1  |1 0>       -0.00000001 -0.00000000 -0.00000000
                                0.00000136 -0.00000000 -0.00000000

 22  1    10    1  |1 0>       -0.00000001 -0.00000077  0.00000000
                                0.00000137 -0.45943187 -0.00000000

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000006  0.00000001  0.28633023

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00000060 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00011838 -0.00000000 -0.00000000
                                0.02421615  0.00000007  0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00000007  0.00000000 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.02191539

 28  1     4    1  |1 1>-       0.00034347  0.00000000 -0.00000000
                               -0.07026038 -0.00000021 -0.00000000

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000002 -0.00000005

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.00000021 -0.00000000 -0.00000000

 31  1     7    1  |1 1>-       0.00000000  0.00000006 -0.00000000
                               -0.00000011  0.03550659  0.00000000

 32  1     8    1  |1 1>-       0.00000000  0.00000023  0.00000000
                               -0.00000041  0.13596406 -0.00000000

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000008  0.28633026

 34  1    10    1  |1 1>-      -0.00224591 -0.00000000  0.00000000
                                0.45942662  0.00000137  0.00000000

 35  1    11    1  |1 1>-      -0.00000001 -0.00000000 -0.00000000
                                0.00000136 -0.00000000 -0.00000000

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000084 -0.00000000

 37  1     1    1  |0 0>        0.00000003 -0.00862288  0.00000000
                                0.00000000  0.00000001 -0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00862282 -0.00000003  0.00000000
                               -0.00004215 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.02708661
                                0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00000010 -0.00000000
                               -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000039  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000218 -0.00000000  0.00000000
                                0.00000001  0.00000001 -0.00000000

 47  1    11    1  |0 0>       -0.00000221  0.73957948 -0.00000000
                               -0.00000001 -0.00000123 -0.00000000

 48  1    12    1  |0 0>        0.00000004 -0.00000012 -0.00000016
                                0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.73957015  0.00000221  0.00000000
                                0.00361540  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000008 -0.00000007 -0.00000007
                               -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000  0.00000000  0.86710465
                               -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        28.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.03%
  2  1     2    1  |1 1>+         0.00%   49.87%    0.00%    0.00%   29.74%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.87%    0.00%   29.74%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.05%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.01%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   49.87%    0.00%    0.00%   29.74%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>         28.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.71%
 15  1     3    1  |1 0>          0.00%    0.00%   49.87%    0.00%    0.00%    0.00%   29.74%    0.00%
 16  1     4    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.05%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.10%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.10%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%   49.87%    0.00%   29.74%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%   49.87%    0.00%    0.00%    0.00%   29.74%    0.00%
 27  1     3    1  |1 1>-        28.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.74%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.05%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.19%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.05%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   40.21%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.18%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   40.21%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.21%    0.00%
 42  1     6    1  |0 0>         12.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 51  1    15    1  |0 0>          0.27%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         5.63%    4.14%   22.76%    0.00%    0.00%    0.00%    4.19%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   20.18%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   20.18%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.17%    0.03%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   21.54%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.01%    0.04%    0.00%    0.00%    0.00%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   20.18%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>         14.94%    9.70%   17.21%    0.00%    0.00%    0.00%    4.19%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   20.18%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 18  1     6    1  |1 0>          0.12%    0.03%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   14.18%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   14.54%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.02%    0.03%    0.00%    0.00%    0.00%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.32%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%   20.18%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   20.18%    0.00%    0.00%
 27  1     3    1  |1 1>-        38.91%   26.52%    0.39%    0.00%    0.00%    0.00%    4.19%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   21.54%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   59.47%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>         40.18%   59.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.03%    0.00%   59.47%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%   59.47%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   59.47%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.29%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.87%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.02%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.12%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.48%    5.20%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.19%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%   21.54%    0.00%    0.00%    0.00%    3.19%    0.00%    0.00%
  7  1     7    1  |1 1>+         2.02%    0.00%    0.00%    0.30%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+        26.70%    0.00%    0.00%    3.95%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%   25.07%    0.00%    0.00%    0.00%    1.70%    9.93%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
 12  1    12    1  |1 1>+         3.32%    0.00%    0.00%   25.82%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.01%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%   21.54%    0.00%    0.00%    0.00%    3.19%    0.00%    0.00%
 17  1     5    1  |1 0>         21.54%    0.00%    0.00%    3.19%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.43%   13.26%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    2.10%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    2.15%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%   25.07%    0.00%    0.00%    0.00%    4.32%    7.31%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.82%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.01%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.19%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.62%   35.07%
 30  1     6    1  |1 1>-        21.54%    0.00%    0.00%    3.19%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%   26.89%    0.00%    0.00%    0.00%    3.98%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    1.83%    0.00%    0.00%    0.00%    0.27%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   25.07%    0.00%    0.00%    0.00%   11.43%    0.20%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    3.32%    0.00%    0.00%    0.00%   25.82%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>         24.87%    0.00%    0.00%   12.63%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%   24.87%    0.00%    0.00%    0.00%   12.63%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.63%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.99%    1.90%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.90%   26.99%
 51  1    15    1  |0 0>          0.00%    0.00%   24.42%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.54%    1.23%
  5  1     5    1  |1 1>+         0.00%    8.92%    0.00%    5.23%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         8.92%    0.00%    0.00%    0.00%    0.00%    5.23%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%   33.18%    0.00%    0.49%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    2.50%    0.00%    6.48%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    8.72%    0.00%   16.15%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.15%   25.70%
 11  1    11    1  |1 1>+         8.72%    0.00%    0.00%    0.00%    0.00%   16.15%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.05%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          8.92%    0.00%    0.00%    0.00%    0.00%    5.23%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    8.92%    0.00%    5.23%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.77%   26.00%
 19  1     7    1  |1 0>          0.00%   18.07%    0.00%    3.44%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%   17.61%    0.00%    3.53%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    8.72%    0.00%   16.15%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          8.72%    0.00%    0.00%    0.00%    0.00%   16.15%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.27%    2.58%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.05%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%
 28  1     4    1  |1 1>-         0.00%    8.92%    0.00%    5.23%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   12.85%   15.92%
 30  1     6    1  |1 1>-         0.00%    0.00%    8.92%    0.00%    5.23%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         2.28%    0.00%    0.00%    0.00%    0.00%    6.53%    0.00%    0.00%
 32  1     8    1  |1 1>-        33.40%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.86%   11.99%
 34  1    10    1  |1 1>-         0.00%    8.72%    0.00%   16.15%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    8.72%    0.00%   16.15%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%
 37  1     1    1  |0 0>          0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.12%    0.06%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.12%
 40  1     4    1  |0 0>          0.00%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   50.06%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   50.06%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%   50.06%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%   28.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>         28.88%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.98%    9.38%
 49  1    13    1  |0 0>          0.00%   28.88%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.38%    6.98%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    7.19%    0.00%    0.00%    2.87%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    7.19%    0.00%   29.01%    0.00%    0.00%    0.00%   24.32%
  7  1     7    1  |1 1>+        26.75%    0.00%    0.00%    0.00%    0.00%    0.00%   34.78%    0.00%
  8  1     8    1  |1 1>+         2.02%    0.00%    0.00%    0.00%    0.00%    0.00%    3.88%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%   20.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%   20.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    7.19%    0.00%   37.47%    0.00%    0.00%    0.00%   15.86%
 17  1     5    1  |1 0>          7.19%    0.00%    0.00%    0.00%    0.00%    0.00%   10.03%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%   14.57%    0.00%    0.00%   44.25%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%   14.20%    0.00%    0.00%   11.22%    0.00%    0.00%
 21  1     9    1  |1 0>         20.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%   20.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    7.19%    0.00%    0.00%   41.67%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         7.19%    0.00%    0.00%    0.00%    0.00%    0.00%   51.32%    0.00%
 31  1     7    1  |1 1>-         0.00%    1.84%    0.00%    4.28%    0.00%    0.00%    0.00%   54.01%
 32  1     8    1  |1 1>-         0.00%   26.93%    0.00%   29.23%    0.00%    0.00%    0.00%    5.81%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%   20.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-        20.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>         16.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%   16.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%   16.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.04%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    1.11%    0.87%    0.00%
  5  1     5    1  |1 1>+         0.00%   50.47%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.84%
  8  1     8    1  |1 1>+        54.25%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.14%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    8.43%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   12.35%   15.80%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    8.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   70.60%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.07%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.06%
 16  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>         43.31%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.49%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.78%    0.20%    0.00%
 19  1     7    1  |1 0>          0.00%    2.25%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%   35.62%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    8.43%    0.00%    0.00%    0.00%   21.11%
 22  1    10    1  |1 0>          0.00%    0.00%    8.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    2.84%   25.30%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   70.60%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.06%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%   11.67%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    1.90%    0.00%
 30  1     6    1  |1 1>-         2.02%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.49%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   27.03%    1.11%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    8.43%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    8.43%    0.00%    0.00%    0.00%   21.11%
 36  1    12    1  |1 1>-         0.00%    0.00%   70.60%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   12.38%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%   12.38%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.38%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.70%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   54.41%    0.29%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.29%   54.41%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.05%
  2  1     2    1  |1 1>+         0.00%    0.06%    0.00%
  3  1     3    1  |1 1>+         0.06%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.49%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.49%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+        21.11%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    8.20%
 11  1    11    1  |1 1>+         0.00%   21.11%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.06%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.05%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.49%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          1.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.97%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%   21.11%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    8.20%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.06%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.05%
 28  1     4    1  |1 1>-         0.49%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.13%    0.00%
 32  1     8    1  |1 1>-         0.00%    1.85%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    8.20%
 34  1    10    1  |1 1>-        21.11%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.01%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.07%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%   54.70%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         54.70%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   75.19%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       64.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     3061.60       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     17719.81  15411.66   1383.48    915.73      4.43      0.53      3.66
 REAL TIME  *     18394.89 SEC
 DISK USED  *         3.05 GB (local),       73.81 GB (total)
 SF USED    *        17.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -192.420831483270

              CI              CI           MULTI         RHF-SCF
   -192.36996990   -192.38121812   -191.65001161   -191.86439054
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
