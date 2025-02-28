
 Working directory              : /wrk/irikura/molpro.ODqC2RrhRN/
 Global scratch directory       : /wrk/irikura/molpro.ODqC2RrhRN/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ODqC2RrhRN/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,At SO-CI
                                                                                 ! active space (5/6)
                                                                                 ! additional diffuse spdf functions
                                                                                 ! uncontracted p basis functions
 memory,2000,M;
 
 gprint,orbitals,civector,basis;
 
 symmetry,xyz
 geometry={At};
 
 basis={
 ecp,at,ECP60MDF;
 p,at,aug-cc-pwCVQZ-PP
 sdfgh,at,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,7,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 03-Feb-25          TIME: 10:55:27  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry At   ECP ECP60MDF                 selected for group  1
 Library entry AT     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry AT     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At P diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry AT     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At D diffuse               selected for group 1    nprim= 1    centre=  0.018    ratio= 3.000    dratio= 1.000
 Library entry AT     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At F diffuse               selected for group 1    nprim= 1    centre=  0.040    ratio= 3.000    dratio= 1.000
 Library entry AT     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry AT     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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

   1  AT     25.00    0.000000000    0.000000000    0.000000000


          AT  CORE POTENTIAL

          h POTENTIAL

 POWERS             2
 EXPONENTIALS   1.000000    
 COEFFICIENTS   0.000000    

          s - h POTENTIAL

 POWERS             2              2              2
 EXPONENTIALS   30.20083       13.61231       8.529340    
 COEFFICIENTS   49.95716       283.2104       62.28105    

          p - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   10.85407       9.468229       7.031114       6.143858    
 COEFFICIENTS   71.98237       143.9035       4.871759       8.983059    

          d - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   8.313515       7.998965       5.179966       4.942226    
 COEFFICIENTS   36.36324       54.54897       9.776285       14.26475    

          f - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   5.812163       5.753715       2.513472       2.536261    
 COEFFICIENTS   19.87020       26.41645      0.9949700       1.490701    

          g - h POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   9.895778       9.737334       3.013331       3.097763    
 COEFFICIENTS  -22.22320      -26.71548     -0.3730440     -0.4859460    


          AT  SPIN-ORBIT POTENTIAL

          p POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   10.85407       9.468229       7.031114       6.143858    
 COEFFICIENTS  -143.9647       143.9035      -9.743517       8.983059    

          d POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   8.313515       7.998965       5.179966       4.942226    
 COEFFICIENTS  -36.36324       36.36598      -9.776285       9.509836    

          f POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   5.812163       5.753715       2.513472       2.536261    
 COEFFICIENTS  -13.24680       13.20823     -0.6633140      0.7453510    

          g POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   9.895778       9.737334       3.013331       3.097763    
 COEFFICIENTS   11.11160      -10.68619      0.1865220     -0.1943780    


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        9090.280000     0.000035    0.000019    0.000000    0.000000    0.000000    0.000000
    2.1 Ag                 1373.070000     0.000242    0.000127    0.000000    0.000000    0.000000    0.000000
    3.1 Ag                  307.950000     0.000815    0.000456    0.000000    0.000000    0.000000    0.000000
    4.1 Ag                   48.017600     0.008465    0.003675    0.000000    0.000000    0.000000    0.000000
    5.1 Ag                   23.909900    -0.147333   -0.068206    0.000000    0.000000    0.000000    0.000000
    6.1 Ag                   14.933400     0.632415    0.317399    0.000000    0.000000    0.000000    0.000000
                              9.331710    -0.616406   -0.363749    0.000000    0.000000    0.000000    0.000000
                              5.832060    -0.619258   -0.272537    0.000000    0.000000    0.000000    0.000000
                              2.287870     0.785124    0.534432    0.000000    0.000000    0.000000    0.000000
                              1.249830     0.656121    0.612899    0.000000    0.000000    0.000000    0.000000
                              0.575368     0.086170   -0.063656    1.000000    0.000000    0.000000    0.000000
                              0.331459    -0.010246   -0.641725    0.000000    1.000000    0.000000    0.000000
                              0.163367     0.002712   -0.532364    0.000000    0.000000    1.000000    0.000000
                              0.076210    -0.000414   -0.104371    0.000000    0.000000    0.000000    1.000000
    7.1 Ag    1  1s           6.150500     1.000000
    8.1 Ag    1  1s           3.085100     1.000000
    9.1 Ag    1  1s           1.547500     1.000000
   10.1 Ag    1  1s           0.029700     1.000000
   11.1 Ag    1  1s           0.009900     1.000000
   12.1 Ag    1  3d0        183.913000     0.000097
                             54.513300     0.000729
                             15.751600     0.009468
                              7.024370    -0.090091
                              4.386740     0.056446
                              2.561580     0.283874
                              1.508820     0.366445
                              0.892151     0.284452
                              0.518170     0.144966
                              0.283732     0.042781
                              0.127000     0.004225
   13.1 Ag    1  3d2-       183.913000     0.000097
                             54.513300     0.000729
                             15.751600     0.009468
                              7.024370    -0.090091
                              4.386740     0.056446
                              2.561580     0.283874
                              1.508820     0.366445
                              0.892151     0.284452
                              0.518170     0.144966
                              0.283732     0.042781
                              0.127000     0.004225
   14.1 Ag    1  3d1+       183.913000     0.000097
                             54.513300     0.000729
                             15.751600     0.009468
                              7.024370    -0.090091
                              4.386740     0.056446
                              2.561580     0.283874
                              1.508820     0.366445
                              0.892151     0.284452
                              0.518170     0.144966
                              0.283732     0.042781
                              0.127000     0.004225
   15.1 Ag    1  3d2+       183.913000     0.000097
                             54.513300     0.000729
                             15.751600     0.009468
                              7.024370    -0.090091
                              4.386740     0.056446
                              2.561580     0.283874
                              1.508820     0.366445
                              0.892151     0.284452
                              0.518170     0.144966
                              0.283732     0.042781
                              0.127000     0.004225
   16.1 Ag    1  3d1-       183.913000     0.000097
                             54.513300     0.000729
                             15.751600     0.009468
                              7.024370    -0.090091
                              4.386740     0.056446
                              2.561580     0.283874
                              1.508820     0.366445
                              0.892151     0.284452
                              0.518170     0.144966
                              0.283732     0.042781
                              0.127000     0.004225
   17.1 Ag    1  3d0        183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     1.000000
                              0.283732     0.000000
                              0.127000     0.000000
   18.1 Ag    1  3d2-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     1.000000
                              0.283732     0.000000
                              0.127000     0.000000
   19.1 Ag    1  3d1+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     1.000000
                              0.283732     0.000000
                              0.127000     0.000000
   20.1 Ag    1  3d2+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     1.000000
                              0.283732     0.000000
                              0.127000     0.000000
   21.1 Ag    1  3d1-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     1.000000
                              0.283732     0.000000
                              0.127000     0.000000
   22.1 Ag    1  3d0        183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     1.000000
                              0.127000     0.000000
   23.1 Ag    1  3d2-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     1.000000
                              0.127000     0.000000
   24.1 Ag    1  3d1+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     1.000000
                              0.127000     0.000000
   25.1 Ag    1  3d2+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     1.000000
                              0.127000     0.000000
   26.1 Ag    1  3d1-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     1.000000
                              0.127000     0.000000
   27.1 Ag    1  3d0        183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     0.000000
                              0.127000     1.000000
   28.1 Ag    1  3d2-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     0.000000
                              0.127000     1.000000
   29.1 Ag    1  3d1+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     0.000000
                              0.127000     1.000000
   30.1 Ag    1  3d2+       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     0.000000
                              0.127000     1.000000
   31.1 Ag    1  3d1-       183.913000     0.000000
                             54.513300     0.000000
                             15.751600     0.000000
                              7.024370     0.000000
                              4.386740     0.000000
                              2.561580     0.000000
                              1.508820     0.000000
                              0.892151     0.000000
                              0.518170     0.000000
                              0.283732     0.000000
                              0.127000     1.000000
   32.1 Ag    1  3d0          3.919100     1.000000
   33.1 Ag    1  3d2-         3.919100     1.000000
   34.1 Ag    1  3d1+         3.919100     1.000000
   35.1 Ag    1  3d2+         3.919100     1.000000
   36.1 Ag    1  3d1-         3.919100     1.000000
   37.1 Ag    1  3d0          2.049300     1.000000
   38.1 Ag    1  3d2-         2.049300     1.000000
   39.1 Ag    1  3d1+         2.049300     1.000000
   40.1 Ag    1  3d2+         2.049300     1.000000
   41.1 Ag    1  3d1-         2.049300     1.000000
   42.1 Ag    1  3d0          1.071600     1.000000
   43.1 Ag    1  3d2-         1.071600     1.000000
   44.1 Ag    1  3d1+         1.071600     1.000000
   45.1 Ag    1  3d2+         1.071600     1.000000
   46.1 Ag    1  3d1-         1.071600     1.000000
   47.1 Ag    1  3d0          0.054200     1.000000
   48.1 Ag    1  3d2-         0.054200     1.000000
   49.1 Ag    1  3d1+         0.054200     1.000000
   50.1 Ag    1  3d2+         0.054200     1.000000
   51.1 Ag    1  3d1-         0.054200     1.000000
   52.1 Ag    1  3d0          0.018067     1.000000
   53.1 Ag    1  3d2-         0.018067     1.000000
   54.1 Ag    1  3d1+         0.018067     1.000000
   55.1 Ag    1  3d2+         0.018067     1.000000
   56.1 Ag    1  3d1-         0.018067     1.000000
   57.1 Ag    1  5g0          0.436300     1.000000
   58.1 Ag    1  5g2-         0.436300     1.000000
   59.1 Ag    1  5g1+         0.436300     1.000000
   60.1 Ag    1  5g4+         0.436300     1.000000
   61.1 Ag    1  5g1-         0.436300     1.000000
   62.1 Ag    1  5g2+         0.436300     1.000000
   63.1 Ag    1  5g4-         0.436300     1.000000
   64.1 Ag    1  5g3+         0.436300     1.000000
   65.1 Ag    1  5g3-         0.436300     1.000000
   66.1 Ag    1  5g0          3.756600     1.000000
   67.1 Ag    1  5g2-         3.756600     1.000000
   68.1 Ag    1  5g1+         3.756600     1.000000
   69.1 Ag    1  5g4+         3.756600     1.000000
   70.1 Ag    1  5g1-         3.756600     1.000000
   71.1 Ag    1  5g2+         3.756600     1.000000
   72.1 Ag    1  5g4-         3.756600     1.000000
   73.1 Ag    1  5g3+         3.756600     1.000000
   74.1 Ag    1  5g3-         3.756600     1.000000
   75.1 Ag    1  5g0          1.215100     1.000000
   76.1 Ag    1  5g2-         1.215100     1.000000
   77.1 Ag    1  5g1+         1.215100     1.000000
   78.1 Ag    1  5g4+         1.215100     1.000000
   79.1 Ag    1  5g1-         1.215100     1.000000
   80.1 Ag    1  5g2+         1.215100     1.000000
   81.1 Ag    1  5g4-         1.215100     1.000000
   82.1 Ag    1  5g3+         1.215100     1.000000
   83.1 Ag    1  5g3-         1.215100     1.000000
   84.1 Ag    1  5g0          0.221700     1.000000
   85.1 Ag    1  5g2-         0.221700     1.000000
   86.1 Ag    1  5g1+         0.221700     1.000000
   87.1 Ag    1  5g4+         0.221700     1.000000
   88.1 Ag    1  5g1-         0.221700     1.000000
   89.1 Ag    1  5g2+         0.221700     1.000000
   90.1 Ag    1  5g4-         0.221700     1.000000
   91.1 Ag    1  5g3+         0.221700     1.000000
   92.1 Ag    1  5g3-         0.221700     1.000000
    1.2 Au    1  2px        124.602000     1.000000
    2.2 Au    1  2py        124.602000     1.000000
    3.2 Au    1  2pz        124.602000     1.000000
    4.2 Au    1  2px         20.889900     1.000000
    5.2 Au    1  2py         20.889900     1.000000
    6.2 Au    1  2pz         20.889900     1.000000
    7.2 Au    1  2px         13.058500     1.000000
    8.2 Au    1  2py         13.058500     1.000000
    9.2 Au    1  2pz         13.058500     1.000000
   10.2 Au    1  2px          8.160610     1.000000
   11.2 Au    1  2py          8.160610     1.000000
   12.2 Au    1  2pz          8.160610     1.000000
   13.2 Au    1  2px          5.098080     1.000000
   14.2 Au    1  2py          5.098080     1.000000
   15.2 Au    1  2pz          5.098080     1.000000
   16.2 Au    1  2px          2.378760     1.000000
   17.2 Au    1  2py          2.378760     1.000000
   18.2 Au    1  2pz          2.378760     1.000000
   19.2 Au    1  2px          1.237550     1.000000
   20.2 Au    1  2py          1.237550     1.000000
   21.2 Au    1  2pz          1.237550     1.000000
   22.2 Au    1  2px          0.608325     1.000000
   23.2 Au    1  2py          0.608325     1.000000
   24.2 Au    1  2pz          0.608325     1.000000
   25.2 Au    1  2px          0.289782     1.000000
   26.2 Au    1  2py          0.289782     1.000000
   27.2 Au    1  2pz          0.289782     1.000000
   28.2 Au    1  2px          0.130004     1.000000
   29.2 Au    1  2py          0.130004     1.000000
   30.2 Au    1  2pz          0.130004     1.000000
   31.2 Au    1  2px          0.056096     1.000000
   32.2 Au    1  2py          0.056096     1.000000
   33.2 Au    1  2pz          0.056096     1.000000
   34.2 Au    1  2px          3.309300     1.000000
   35.2 Au    1  2py          3.309300     1.000000
   36.2 Au    1  2pz          3.309300     1.000000
   37.2 Au    1  2px          2.071500     1.000000
   38.2 Au    1  2py          2.071500     1.000000
   39.2 Au    1  2pz          2.071500     1.000000
   40.2 Au    1  2px          1.296600     1.000000
   41.2 Au    1  2py          1.296600     1.000000
   42.2 Au    1  2pz          1.296600     1.000000
   43.2 Au    1  2px          0.022900     1.000000
   44.2 Au    1  2py          0.022900     1.000000
   45.2 Au    1  2pz          0.022900     1.000000
   46.2 Au    1  2px          0.007633     1.000000
   47.2 Au    1  2py          0.007633     1.000000
   48.2 Au    1  2pz          0.007633     1.000000
   49.2 Au    1  4f1+         0.538900     1.000000
   50.2 Au    1  4f1-         0.538900     1.000000
   51.2 Au    1  4f0          0.538900     1.000000
   52.2 Au    1  4f3+         0.538900     1.000000
   53.2 Au    1  4f2-         0.538900     1.000000
   54.2 Au    1  4f3-         0.538900     1.000000
   55.2 Au    1  4f2+         0.538900     1.000000
   56.2 Au    1  4f1+         0.228700     1.000000
   57.2 Au    1  4f1-         0.228700     1.000000
   58.2 Au    1  4f0          0.228700     1.000000
   59.2 Au    1  4f3+         0.228700     1.000000
   60.2 Au    1  4f2-         0.228700     1.000000
   61.2 Au    1  4f3-         0.228700     1.000000
   62.2 Au    1  4f2+         0.228700     1.000000
   63.2 Au    1  4f1+         3.459700     1.000000
   64.2 Au    1  4f1-         3.459700     1.000000
   65.2 Au    1  4f0          3.459700     1.000000
   66.2 Au    1  4f3+         3.459700     1.000000
   67.2 Au    1  4f2-         3.459700     1.000000
   68.2 Au    1  4f3-         3.459700     1.000000
   69.2 Au    1  4f2+         3.459700     1.000000
   70.2 Au    1  4f1+         2.031900     1.000000
   71.2 Au    1  4f1-         2.031900     1.000000
   72.2 Au    1  4f0          2.031900     1.000000
   73.2 Au    1  4f3+         2.031900     1.000000
   74.2 Au    1  4f2-         2.031900     1.000000
   75.2 Au    1  4f3-         2.031900     1.000000
   76.2 Au    1  4f2+         2.031900     1.000000
   77.2 Au    1  4f1+         1.193400     1.000000
   78.2 Au    1  4f1-         1.193400     1.000000
   79.2 Au    1  4f0          1.193400     1.000000
   80.2 Au    1  4f3+         1.193400     1.000000
   81.2 Au    1  4f2-         1.193400     1.000000
   82.2 Au    1  4f3-         1.193400     1.000000
   83.2 Au    1  4f2+         1.193400     1.000000
   84.2 Au    1  4f1+         0.121000     1.000000
   85.2 Au    1  4f1-         0.121000     1.000000
   86.2 Au    1  4f0          0.121000     1.000000
   87.2 Au    1  4f3+         0.121000     1.000000
   88.2 Au    1  4f2-         0.121000     1.000000
   89.2 Au    1  4f3-         0.121000     1.000000
   90.2 Au    1  4f2+         0.121000     1.000000
   91.2 Au    1  4f1+         0.040333     1.000000
   92.2 Au    1  4f1-         0.040333     1.000000
   93.2 Au    1  4f0          0.040333     1.000000
   94.2 Au    1  4f3+         0.040333     1.000000
   95.2 Au    1  4f2-         0.040333     1.000000
   96.2 Au    1  4f3-         0.040333     1.000000
   97.2 Au    1  4f2+         0.040333     1.000000
   98.2 Au    1  6h1+         1.310200     1.000000
   99.2 Au    1  6h1-         1.310200     1.000000
  100.2 Au    1  6h2+         1.310200     1.000000
  101.2 Au    1  6h3+         1.310200     1.000000
  102.2 Au    1  6h4-         1.310200     1.000000
  103.2 Au    1  6h3-         1.310200     1.000000
  104.2 Au    1  6h4+         1.310200     1.000000
  105.2 Au    1  6h5-         1.310200     1.000000
  106.2 Au    1  6h0          1.310200     1.000000
  107.2 Au    1  6h5+         1.310200     1.000000
  108.2 Au    1  6h2-         1.310200     1.000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         314
 NUMBER OF SYMMETRY AOS:          243
 NUMBER OF CONTRACTIONS:          200   (   92Ag  +  108Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 1
                                        2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910 4   5 6 7 8 910 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910111213  1415161718192021


 Eigenvalues of metric

         1 0.235E-05 0.327E-03 0.327E-03 0.327E-03 0.327E-03 0.327E-03 0.431E-03 0.126E-02
         2 0.118E-07 0.118E-07 0.118E-07 0.466E-06 0.466E-06 0.466E-06 0.265E-04 0.265E-04


 Contracted 2-electron integrals neglected if value below      1.0D-16
 AO integral compression algorithm  1   Integral accuracy      1.0D-16

     323.224 MB (compressed) written to integral file ( 21.7%)

     Node minimum: 9.175 MB, node maximum: 28.836 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    6362974.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    6362974      RECORD LENGTH: 524288

 Memory used in sort:       6.92 MW

 SORT1 READ   186133289. AND WROTE     1185059. INTEGRALS IN      4 RECORDS. CPU TIME:     0.88 SEC, REAL TIME:     0.91 SEC
 SORT2 READ    19101264. AND WROTE   102019146. INTEGRALS IN   1072 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.25 SEC

 Node minimum:     6362340.  Node maximum:     6380426. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.67       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.50      3.12
 REAL TIME  *         4.75 SEC
 DISK USED  *        30.04 MB (local),      993.50 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=AT basis=cc-pVTZ-PP        lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41333730    -261.41333730     0.00D+00     0.67D-01     0     0       0.02      0.07    start
   2     -261.43616303      -0.02282573     0.32D-02     0.77D-02     1     0       0.04      0.11    diag
   3     -261.43852345      -0.00236042     0.19D-02     0.20D-02     2     0       0.03      0.14    diag
   4     -261.43902922      -0.00050577     0.35D-03     0.26D-02     3     0       0.04      0.18    diag
   5     -261.43912601      -0.00009679     0.12D-03     0.18D-02     4     0       0.03      0.21    diag
   6     -261.43913550      -0.00000949     0.31D-04     0.13D-03     5     0       0.04      0.25    diag
   7     -261.43913597      -0.00000047     0.62D-05     0.38D-03     6     0       0.03      0.28    diag
   8     -261.43913599      -0.00000003     0.13D-05     0.78D-04     7     0       0.04      0.32    fixocc
   9     -261.43913600      -0.00000000     0.29D-06     0.27D-04     8     0       0.03      0.35    diag
  10     -261.43913600      -0.00000000     0.57D-07     0.46D-05     9     0       0.03      0.38    diag/orth
  11     -261.43913600      -0.00000000     0.16D-07     0.26D-06     9     0       0.04      0.42    diag
  12     -261.43913600      -0.00000000     0.44D-09     0.78D-07     0     0       0.03      0.45    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.439135995662
  RHF One-electron energy            -461.393607665002
  RHF Two-electron energy             199.954471669340
  RHF Kinetic energy                   82.729304896983
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160175663524

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53203     1  1  s    1.00164
    2.1     2.00000    -1.54348     1  1  d0   0.93324    1  1  d2+  0.35719
    3.1     2.00000    -1.54348     1  1  d1-  0.99926
    4.1     2.00000    -1.54348     1  1  d1+  0.99926
    5.1     2.00000    -1.54348     1  1  d2-  0.99926
    6.1     2.00000    -1.54348     1  1  d0  -0.35719    1  1  d2+  0.93324
    7.1     2.00000    -0.67783     1  2  s    0.97678
    1.2     2.00000    -4.82202     1  4  px  -0.40180    1  6  px   0.30303    1  7  px   0.80016    1 13  px   0.27893
                                    1 14  px  -0.35312
    2.2     2.00000    -4.82202     1  4  pz  -0.40180    1  6  pz   0.30303    1  7  pz   0.80016    1 13  pz   0.27893
                                    1 14  pz  -0.35312
    3.2     2.00000    -4.82202     1  4  py  -0.40180    1  6  py   0.30303    1  7  py   0.80016    1 13  py   0.27893
                                    1 14  py  -0.35312
    4.2     2.00000    -0.11634     1  6  px  -0.30604    1  7  px  -0.32259    1  9  px   0.42282    1 10  px   0.43314
    5.2     2.00000    -0.11634     1  6  pz  -0.30604    1  7  pz  -0.32259    1  9  pz   0.42282    1 10  pz   0.43314
    6.2     2.00000    -0.11634     1  6  py  -0.30604    1  7  py  -0.32259    1  9  py   0.42282    1 10  py   0.43314


 HOMO      6.2    -0.116339 =      -3.1658eV
 LUMO      7.2     0.090439 =       2.4610eV
 LUMO-HOMO         0.206778 =       5.6267eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.67       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.71       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.97      0.48      3.12
 REAL TIME  *         6.36 SEC
 DISK USED  *        31.88 MB (local),     1022.92 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     184 (   85   99)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.278D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.507D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.250D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.311D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 5 3   4 6 2 1 2 6 3 4 5 1   3 5 6 4 21310151412  11 8 9 7 1 3 5 4 6 2
                                       121113141015 8 9 7 3   5 6 2 4 11112131410  15 8 9 7 3 5 6 4 2 1  11 7 9 81215141310 5
                                        2 6 4 3 1 5 2 6 4 3   1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.201D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.434D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.434D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 2 3 1   2 3 7 910 8 4 5 6 1   3 2 9 710 8 5 4 6 1   2 3 9 710 8 5 6 4 5
                                       10 7 8 9 6 4 1 2 3 5   6 7 8 910 4 1 2 318  20131512141721161911   510 7 9 8 4 6 1 2 3
                                        1 2 3 5 6 410 8 7 9   2 1 3 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  1504  ( 18 closed/active, 892 closed/virtual, 0 active/active, 594 active/virtual )
 Total number of variables:    5914
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -261.02071221    -261.13622366   -0.11551145    0.37967909 0.00088372 0.00000000  0.13E+01      1.55
   2    6   10    0   -261.13324790    -261.13380893   -0.00056102    0.02343738 0.00000246 0.00000000  0.10E+00      2.99
   3    4    8    0   -261.13380955    -261.13380956   -0.00000001    0.00010176 0.00000019 0.00000000  0.34E-03      4.13
   4   11   22    0   -261.13380956    -261.13380956    0.00000000    0.00000003 0.00000001 0.00000000  0.83E-07      5.78

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:   -261.13380956
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.341581865516
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22405211
 One electron energy                          -455.89105677
 Two electron energy                           194.54947491
 Virial ratio                                    4.14021698
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.341581865201
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22405211
 One electron energy                          -455.89105679
 Two electron energy                           194.54947493
 Virial ratio                                    4.14021698
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.341581865096
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22405211
 One electron energy                          -455.89105679
 Two electron energy                           194.54947492
 Virial ratio                                    4.14021698
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -261.099014050558
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39537650
 One electron energy                          -449.25528671
 Two electron energy                           188.15627266
 Virial ratio                                    4.16885516
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -261.099014050558
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39537650
 One electron energy                          -449.25528671
 Two electron energy                           188.15627265
 Virial ratio                                    4.16885516
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -261.099014050506
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39537650
 One electron energy                          -449.25528674
 Two electron energy                           188.15627269
 Virial ratio                                    4.16885516
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -261.099014050503
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39537650
 One electron energy                          -449.25528672
 Two electron energy                           188.15627267
 Virial ratio                                    4.16885516
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -261.099014050487
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39537650
 One electron energy                          -449.25528673
 Two electron energy                           188.15627268
 Virial ratio                                    4.16885516
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -261.093818873291
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39268665
 One electron energy                          -449.24645475
 Two electron energy                           188.15263587
 Virial ratio                                    4.16889556
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -261.093734722481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46750702
 One electron energy                          -449.56150162
 Two electron energy                           188.46776690
 Virial ratio                                    4.16601949
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -261.093734722318
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46750702
 One electron energy                          -449.56150164
 Two electron energy                           188.46776691
 Virial ratio                                    4.16601949
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -261.093734722064
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46750703
 One electron energy                          -449.56150166
 Two electron energy                           188.46776694
 Virial ratio                                    4.16601949
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.105630527412
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38029346
 One electron energy                          -449.20293542
 Two electron energy                           188.09730489
 Virial ratio                                    4.16951566
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.105630527224
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38029345
 One electron energy                          -449.20293540
 Two electron energy                           188.09730488
 Virial ratio                                    4.16951566
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.105630527214
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38029345
 One electron energy                          -449.20293539
 Two electron energy                           188.09730487
 Virial ratio                                    4.16951566
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.100876788026
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38556016
 One electron energy                          -449.22168725
 Two electron energy                           188.12081046
 Virial ratio                                    4.16925534
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.100876788023
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38556016
 One electron energy                          -449.22168725
 Two electron energy                           188.12081047
 Virial ratio                                    4.16925534
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.100876787968
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38556016
 One electron energy                          -449.22168723
 Two electron energy                           188.12081044
 Virial ratio                                    4.16925534
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.100876787940
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38556016
 One electron energy                          -449.22168724
 Two electron energy                           188.12081045
 Virial ratio                                    4.16925534
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.100876787928
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38556016
 One electron energy                          -449.22168723
 Two electron energy                           188.12081044
 Virial ratio                                    4.16925534
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -261.093886278525
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39183287
 One electron energy                          -449.24298636
 Two electron energy                           188.14910008
 Virial ratio                                    4.16892922
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000000245
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999903
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.086532530444
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000941708369
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.999999953255
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999995
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     2.912376133382
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999999997
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.999999999994
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.000000000017
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000010
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999995
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999995
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.887501730847
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999974067
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000001798
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.999999986327
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.112568867137
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000000002
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.915923465170
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999083218482
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000042428
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.999999999970
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.085135088938
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999999994
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.000000000011
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.999999999995
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000106098
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999942088
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.483533895708
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.999999933047
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000004716
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.999999947359
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.516605345278
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999757
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000000000099
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.997544004345
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.999975073108
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000004277
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999999995
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.002488777639
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.000000000011
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999999997
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999999991
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999893907
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000057917
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.628964373404
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000092845
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999999993445
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000066273
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     2.370825787544
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000002
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000002
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000002
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999959
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999959
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     5.999999999959
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999959
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999959
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000020
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     2.000000000002
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999959
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999959
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999959
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     5.999999999959
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999959
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000020
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   6 2 4 1 3 5 6 2 4 1   3 5 6 2 4 113101415  11 812 7 9 5 3 6 2 4
                                       1310141511 812 7 9 5   3 6 2 4 11310141511   812 7 9 3 5 6 2 4 1  1310141511 812 7 9 5
                                        3 6 2 4 1 5 3 6 2 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 9 7 5 810 6 4 2   1 3 9 7 5 810 6 4 2   1 3 9 7 5 810 6 4 9
                                        7 5 810 6 4 2 1 3 9   7 510 8 6 4 2 1 318  20151712141621131911   7 9 510 8 6 4 2 1 3
                                        2 1 3 7 9 510 8 6 4   2 1 3 2 1 3 2 1 3 1   2 3 1 2 3 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.98700     1  1  s    1.00000
    2.1     2.00000    -1.99741     1  1  d2-  1.00141
    3.1     2.00000    -1.99741     1  1  d2+  1.00141
    4.1     2.00000    -1.99741     1  1  d1-  1.00141
    5.1     2.00000    -1.99741     1  1  d0   1.00141
    6.1     2.00000    -1.99741     1  1  d1+  1.00141
    7.1     2.00000    -1.08401     1  2  s    1.02158
    1.2     2.00000    -5.27667     1  4  py  -0.40144    1  6  py   0.29911    1  7  py   0.81223    1 13  py   0.28236
                                    1 14  py  -0.36616
    2.2     2.00000    -5.27667     1  4  px  -0.40144    1  6  px   0.29911    1  7  px   0.81223    1 13  px   0.28236
                                    1 14  px  -0.36616
    3.2     2.00000    -5.27667     1  4  pz  -0.40144    1  6  pz   0.29911    1  7  pz   0.81223    1 13  pz   0.28236
                                    1 14  pz  -0.36616
    4.2     1.38040    -0.41946     1  6  pz  -0.66960    1  7  pz   0.32723    1  9  pz   0.55099    1 10  pz   0.47028
                                    1 13  pz   0.40386    1 14  pz  -0.69493
    5.2     1.38039    -0.41946     1  6  px  -0.66960    1  7  px   0.32723    1  9  px   0.55099    1 10  px   0.47028
                                    1 13  px   0.40386    1 14  px  -0.69493
    6.2     1.38039    -0.41946     1  6  py  -0.66960    1  7  py   0.32723    1  9  py   0.55099    1 10  py   0.47028
                                    1 13  py   0.40386    1 14  py  -0.69493
    7.2     0.28627     0.00782     1  6  pz   0.64609    1  7  pz  -1.17857    1 13  pz  -0.65283    1 14  pz   1.37624
                                    1 15  pz   0.71907    1 16  pz   0.46257
    8.2     0.28627     0.00782     1  6  px   0.64609    1  7  px  -1.17857    1 13  px  -0.65283    1 14  px   1.37624
                                    1 15  px   0.71907    1 16  px   0.46257
    9.2     0.28627     0.00782     1  6  py   0.64609    1  7  py  -1.17857    1 13  py  -0.65283    1 14  py   1.37624
                                    1 15  py   0.71907    1 16  py   0.46257
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 22a000         0.00000007     -0.00000031      0.98902060      0.00000000     -0.00000000      0.00000000      0.00000004
 2a2000         0.98902059     -0.00001543     -0.00000007      0.00000000     -0.00000000     -0.00000004      0.00000000
 a22000         0.00001543      0.98902059      0.00000031     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aab00        -0.00000000     -0.00000000     -0.00000000     -0.01651275      0.00167802     -0.00003882      0.00000005
 aa200b        -0.00000000      0.00000000      0.00000000      0.58179718     -0.06338734      0.00003903     -0.00000160
 2aa0b0        -0.00000001      0.00000002     -0.07616543      0.00000154     -0.00000039      0.00006827      0.57712043
 2aa00b         0.07616544     -0.00000119     -0.00000001     -0.00001646      0.00003772      0.57712040     -0.00006827
 aa2b00        -0.07616540      0.00000119      0.00000001     -0.00001646      0.00003772      0.57712039     -0.00006827
 a2ab00        -0.00000001      0.00000002     -0.07616540     -0.00000154      0.00000039     -0.00006827     -0.57712037
 aa20b0         0.00000119      0.07616543      0.00000002     -0.06256512     -0.57371908      0.00003572     -0.00000023
 a2a00b         0.00000119      0.07616544      0.00000002      0.06256512      0.57371902     -0.00003572      0.00000023
 a2a0b0         0.00000000      0.00000000      0.00000000      0.56528444     -0.06170932      0.00000021     -0.00000155
 a2ba00         0.00000000     -0.00000000      0.01336531      0.00000078     -0.00000020      0.00003455      0.29210573
 b2a00a        -0.00000021     -0.01336531     -0.00000000     -0.03166693     -0.29038417      0.00001808     -0.00000011
 ab2a00         0.01336531     -0.00000021     -0.00000000      0.00000833     -0.00001909     -0.29210575      0.00003455
 2ba00a        -0.01336531      0.00000021      0.00000000      0.00000833     -0.00001909     -0.29210575      0.00003455
 ba20a0        -0.00000021     -0.01336531     -0.00000000      0.03166693      0.29038420     -0.00001808      0.00000011
 2ab0a0         0.00000000     -0.00000000      0.01336531     -0.00000078      0.00000020     -0.00003455     -0.29210577
 2aba00         0.00000000      0.00000000      0.00000000      0.00120925     -0.00007048      0.00001917     -0.00000001
 2baa00         0.00000000      0.00000000      0.00000000      0.01530350     -0.00160755      0.00001965     -0.00000004
 ba200a         0.00000000     -0.00000000     -0.00000000     -0.29426998      0.03206247     -0.00001928      0.00000081
 ab200a         0.00000000     -0.00000000      0.00000000     -0.28752720      0.03132487     -0.00001975      0.00000079
 b2a0a0        -0.00000000     -0.00000000     -0.00000000     -0.28631795      0.03125439     -0.00000058      0.00000078
 2ba0a0         0.00000000     -0.00000002      0.06280012     -0.00000076      0.00000019     -0.00003371     -0.28501466
 2ab00a        -0.06280013      0.00000098      0.00000000      0.00000813     -0.00001863     -0.28501465      0.00003371
 ba2a00         0.06280008     -0.00000098     -0.00000000      0.00000813     -0.00001863     -0.28501464      0.00003371
 b2aa00         0.00000000     -0.00000002      0.06280008      0.00000076     -0.00000019      0.00003371      0.28501463
 ab20a0        -0.00000098     -0.06280012     -0.00000002      0.03089819      0.28333488     -0.00001764      0.00000011
 a2b00a        -0.00000098     -0.06280013     -0.00000002     -0.03089819     -0.28333486      0.00001764     -0.00000011
 a2b0a0        -0.00000000     -0.00000000     -0.00000000     -0.27896649      0.03045493      0.00000037      0.00000076
 22000a         0.00000000     -0.00000001      0.04082872      0.00000000      0.00000000      0.00000000      0.00000000
 2020a0         0.04082871     -0.00000064     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 022a00         0.00000064      0.04082868      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:     -261.34158187   -261.34158187   -261.34158187   -261.09901405   -261.09901405   -261.09901405   -261.09901405

 State:              8               9              10              11              12
 22a000         0.00000000     -0.00000000     -0.00000019      0.11511734     -0.00000018
 2a2000        -0.00000000     -0.00000000     -0.00000001     -0.00000018     -0.11511735
 a22000        -0.00000000      0.00000000     -0.11511739     -0.00000019      0.00000001
 2aab00         0.66619450      0.47129879      0.00000000      0.00000000     -0.00000000
 aa200b        -0.31872354      0.47129877      0.00000000      0.00000000     -0.00000000
 2aa0b0         0.00000000     -0.00000000     -0.00000091      0.55934132     -0.00000087
 2aa00b         0.00003312      0.00000000      0.00000006      0.00000087      0.55934134
 aa2b00         0.00003312     -0.00000000     -0.00000006     -0.00000087     -0.55934135
 a2ab00        -0.00000000     -0.00000000     -0.00000091      0.55934138     -0.00000087
 aa20b0        -0.00010569     -0.00000000      0.55934132      0.00000091     -0.00000006
 a2a00b         0.00010569     -0.00000000      0.55934138      0.00000091     -0.00000006
 a2a0b0         0.34747098     -0.47129877     -0.00000000     -0.00000000      0.00000000
 a2ba00         0.00000000      0.00000000      0.00000059     -0.36309696      0.00000057
 b2a00a        -0.00005349      0.00000000     -0.36309696     -0.00000059      0.00000004
 ab2a00        -0.00001677      0.00000000      0.00000004      0.00000057      0.36309695
 2ba00a        -0.00001677     -0.00000000     -0.00000004     -0.00000057     -0.36309694
 ba20a0         0.00005349      0.00000000     -0.36309692     -0.00000059      0.00000004
 2ab0a0        -0.00000000      0.00000000      0.00000059     -0.36309692      0.00000057
 2aba00        -0.33327386     -0.23564939     -0.00000000     -0.00000000      0.00000000
 2baa00        -0.33292064     -0.23564939     -0.00000000     -0.00000000      0.00000000
 ba200a         0.15313429     -0.23564939     -0.00000000     -0.00000000      0.00000000
 ab200a         0.16558925     -0.23564939     -0.00000000     -0.00000000      0.00000000
 b2a0a0        -0.16768462      0.23564938      0.00000000      0.00000000     -0.00000000
 2ba0a0        -0.00000000      0.00000000      0.00000032     -0.19624439      0.00000031
 2ab00a        -0.00001636     -0.00000000     -0.00000002     -0.00000031     -0.19624440
 ba2a00        -0.00001636      0.00000000      0.00000002      0.00000031      0.19624441
 b2aa00         0.00000000      0.00000000      0.00000032     -0.19624443      0.00000031
 ab20a0         0.00005219      0.00000000     -0.19624440     -0.00000032      0.00000002
 a2b00a        -0.00005219      0.00000000     -0.19624442     -0.00000032      0.00000002
 a2b0a0        -0.17978636      0.23564938      0.00000000      0.00000000     -0.00000000
 22000a        -0.00000000     -0.00000000     -0.00000021      0.13017707     -0.00000020
 2020a0         0.00000000     -0.00000000     -0.00000001     -0.00000020     -0.13017707
 022a00         0.00000000      0.00000000     -0.13017706     -0.00000021      0.00000001
 
 Energy:     -261.09901405   -261.09381887   -261.09373472   -261.09373472   -261.09373472
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 a2a0a0         0.00000000     -0.00000000      0.00000000      0.13691002     -0.00010934     -0.00002151      0.00010128
 aa200a         0.00000000     -0.00000000      0.00000000      0.76544767     -0.00047950      0.00002240      0.00007209
 aa2a00         0.70700742      0.00000001      0.00000000      0.00043470      0.70700567     -0.00000019     -0.00000024
 2aa00a        -0.70700740     -0.00000001     -0.00000000      0.00043470      0.70700569     -0.00000019     -0.00000024
 a2aa00        -0.00000001      0.70700738     -0.00023028     -0.00003585      0.00000026      0.00000116      0.70700580
 aa20a0        -0.00000000      0.00023028      0.70700737     -0.00002956      0.00000021      0.70700581     -0.00000116
 a2a00a        -0.00000000      0.00023028      0.70700737      0.00002956     -0.00000021     -0.70700581      0.00000116
 2aa0a0        -0.00000001      0.70700736     -0.00023028      0.00003585     -0.00000026     -0.00000116     -0.70700581
 2aaa00         0.00000000      0.00000000     -0.00000000     -0.62853764      0.00037016     -0.00004390      0.00002920
 
 Energy:     -261.10563053   -261.10563053   -261.10563053   -261.10087679   -261.10087679   -261.10087679   -261.10087679

 State:              8               9
 a2a0a0         0.80481794     -0.57718790
 aa200a         0.28384137      0.57718790
 aa2a00         0.00002210     -0.00000000
 2aa00a         0.00002210      0.00000000
 a2aa00        -0.00008288     -0.00000000
 aa20a0         0.00002392      0.00000000
 a2a00a        -0.00002392     -0.00000000
 2aa0a0         0.00008288     -0.00000000
 2aaa00         0.52097656      0.57718791
 
 Energy:     -261.10087679   -261.09388628
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       61.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.62      5.64      0.48      3.12
 REAL TIME  *        12.96 SEC
 DISK USED  *        63.57 MB (local),        1.49 GB (total)
 SF USED    *        82.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3415819   2.0
    -261.3415819   2.0
    -261.3415819   2.0
    -261.0990141   6.0
    -261.0990141   6.0
    -261.0990141   6.0
    -261.0990141   6.0
    -261.0990141   6.0
    -261.0938189   0.0
    -261.0937347   2.0
    -261.0937347   2.0
    -261.0937347   2.0
    -261.1056305   2.0
    -261.1056305   2.0
    -261.1056305   2.0
    -261.1008768   6.0
    -261.1008768   6.0
    -261.1008768   6.0
    -261.1008768   6.0
    -261.1008768   6.0
    -261.0938863   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      126 conf      210 CSFs
 N elec internal:     8466 conf    28630 CSFs
 N-1 el internal:     9105 conf    51730 CSFs
 N-2 el internal:     7880 conf    73240 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     184 (  85  99 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.34158187
     2      -261.34158187
     3      -261.34158187
     4      -261.09901405
     5      -261.09901405
     6      -261.09901405
     7      -261.09901405
     8      -261.09901405
     9      -261.09381887
    10      -261.09373472
    11      -261.09373472
    12      -261.09373472

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1532D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2231D-06

 Number of blocks in overlap matrix:  1282   Smallest eigenvalue:  0.15D-06
 Number of N-2 electron functions:    2790
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       4791990
 Number of doubly external configurations:      23612478
 Total number of contracted configurations:     28419966
 Total number of uncontracted configurations:  624104320

 Diagonal Coupling coefficients finished.               Storage:  14672150 words, CPU-Time:     22.75 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2790672 words, CPU-time:      4.44 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34158187    -0.00000000    -1.05934443  0.47D-01  0.13D+00    34.75
    1     2     2     1.00000000     0.00000000  -261.34158187     0.00000000    -1.05943292  0.47D-01  0.13D+00    34.75
    1     3     3     1.00000000     0.00000000  -261.34158187    -0.00000000    -1.05957601  0.47D-01  0.13D+00    34.75
    1     4     4     1.00000000     0.00000000  -261.09901405     0.00000000    -1.01032020  0.32D-01  0.12D+00    34.75
    1     5     5     1.00000000     0.00000000  -261.09901405     0.00000000    -1.00944603  0.32D-01  0.12D+00    34.75
    1     6     6     1.00000000     0.00000000  -261.09901405     0.00000000    -1.00954132  0.32D-01  0.12D+00    34.75
    1     7     7     1.00000000     0.00000000  -261.09901405     0.00000000    -1.00945428  0.32D-01  0.12D+00    34.75
    1     8     8     1.00000000     0.00000000  -261.09901405     0.00000000    -1.01163239  0.32D-01  0.12D+00    34.75
    1     9     9     1.00000000     0.00000000  -261.09381887     0.00000000    -1.01283185  0.32D-01  0.12D+00    34.75
    1    10    10     1.00000000     0.00000000  -261.09373472     0.00000000    -1.01781597  0.38D-01  0.13D+00    34.75
    1    11    11     1.00000000     0.00000000  -261.09373472     0.00000000    -1.01787251  0.38D-01  0.13D+00    34.75
    1    12    12     1.00000000     0.00000000  -261.09373472     0.00000000    -1.01795321  0.38D-01  0.13D+00    34.75
    2     1     1     1.11272908    -0.83667775  -262.17825961    -0.83667775    -0.02886027  0.55D-02  0.20D-02   894.70
    2     2     2     1.11281638    -0.83667112  -262.17825298    -0.83667112    -0.02887594  0.55D-02  0.20D-02   894.70
    2     3     3     1.11264111    -0.83663632  -262.17821818    -0.83663632    -0.02890490  0.55D-02  0.20D-02   894.70
    2     4     4     1.10059216    -0.81502314  -261.91403719    -0.81502314    -0.02225012  0.21D-02  0.19D-02   894.70
    2     5     5     1.10062166    -0.81499756  -261.91401161    -0.81499756    -0.02227455  0.22D-02  0.19D-02   894.70
    2     6     6     1.10059755    -0.81498543  -261.91399948    -0.81498543    -0.02228683  0.22D-02  0.19D-02   894.70
    2     7     7     1.10075200    -0.81487898  -261.91389303    -0.81487898    -0.02242365  0.22D-02  0.19D-02   894.70
    2     8     8     1.10104284    -0.81459411  -261.91360816    -0.81459411    -0.02274464  0.21D-02  0.20D-02   894.70
    2     9     9     1.10170184    -0.81509448  -261.90891336    -0.81509448    -0.02278062  0.21D-02  0.20D-02   894.70
    2    10    10     1.10404976    -0.81441069  -261.90814541    -0.81441069    -0.02488264  0.35D-02  0.20D-02   894.70
    2    11    11     1.10403043    -0.81440962  -261.90814434    -0.81440962    -0.02488115  0.35D-02  0.20D-02   894.70
    2    12    12     1.10409006    -0.81440943  -261.90814415    -0.81440943    -0.02488335  0.35D-02  0.20D-02   894.70
    3     1     1     1.09926207    -0.86424053  -262.20582240    -0.02756278    -0.00051834  0.75D-04  0.53D-04  1757.57
    3     2     2     1.09923596    -0.86423838  -262.20582024    -0.02756726    -0.00051893  0.75D-04  0.54D-04  1757.57
    3     3     3     1.09920511    -0.86423427  -262.20581614    -0.02759796    -0.00052221  0.75D-04  0.54D-04  1757.57
    3     4     4     1.09183823    -0.83587114  -261.93488519    -0.02084800    -0.00027545  0.29D-04  0.29D-04  1757.57
    3     5     5     1.09181286    -0.83587082  -261.93488487    -0.02087327    -0.00027507  0.29D-04  0.29D-04  1757.57
    3     6     6     1.09180101    -0.83586897  -261.93488302    -0.02088355    -0.00027628  0.30D-04  0.30D-04  1757.57
    3     7     7     1.09181116    -0.83586840  -261.93488245    -0.02098942    -0.00027627  0.30D-04  0.30D-04  1757.57
    3     8     8     1.09185012    -0.83586663  -261.93488068    -0.02127252    -0.00027942  0.29D-04  0.31D-04  1757.57
    3     9     9     1.09246912    -0.83762612  -261.93144500    -0.02253164    -0.00036436  0.49D-04  0.40D-04  1757.57
    3    10    10     1.09247629    -0.83771018  -261.93144490    -0.02329949    -0.00036456  0.49D-04  0.40D-04  1757.57
    3    11    11     1.09248655    -0.83770976  -261.93144449    -0.02330015    -0.00036480  0.49D-04  0.40D-04  1757.57
    3    12    12     1.09225529    -0.83652254  -261.93025726    -0.02211311    -0.00028599  0.33D-04  0.31D-04  1757.57
    4     1     1     1.09895838    -0.86477687  -262.20635874    -0.00053634    -0.00002124  0.20D-05  0.28D-05  2617.74
    4     2     2     1.09895021    -0.86477655  -262.20635842    -0.00053817    -0.00002143  0.20D-05  0.29D-05  2617.74
    4     3     3     1.09893971    -0.86477602  -262.20635789    -0.00054175    -0.00002184  0.20D-05  0.30D-05  2617.74
    4     4     4     1.09175184    -0.83616070  -261.93517475    -0.00028956    -0.00001086  0.13D-05  0.17D-05  2617.74
    4     5     5     1.09174875    -0.83616056  -261.93517462    -0.00028974    -0.00001090  0.13D-05  0.17D-05  2617.74
    4     6     6     1.09174466    -0.83616049  -261.93517454    -0.00029152    -0.00001097  0.13D-05  0.17D-05  2617.74
    4     7     7     1.09174135    -0.83616025  -261.93517430    -0.00029185    -0.00001113  0.13D-05  0.18D-05  2617.74
    4     8     8     1.09174078    -0.83615988  -261.93517393    -0.00029325    -0.00001127  0.13D-05  0.18D-05  2617.74
    4     9     9     1.09222265    -0.83801144  -261.93183032    -0.00038532    -0.00001599  0.24D-05  0.24D-05  2617.74
    4    10    10     1.09222183    -0.83809553  -261.93183025    -0.00038535    -0.00001603  0.24D-05  0.24D-05  2617.74
    4    11    11     1.09222433    -0.83809540  -261.93183013    -0.00038564    -0.00001609  0.24D-05  0.24D-05  2617.74
    4    12    12     1.09210334    -0.83682577  -261.93056049    -0.00030323    -0.00001155  0.15D-05  0.18D-05  2617.74
    5     1     1     1.09909904    -0.86479938  -262.20638125    -0.00002251    -0.00000096  0.34D-07  0.17D-06  3481.41
    5     2     2     1.09909727    -0.86479934  -262.20638121    -0.00002279    -0.00000099  0.34D-07  0.18D-06  3481.41
    5     3     3     1.09909526    -0.86479930  -262.20638117    -0.00002328    -0.00000103  0.35D-07  0.18D-06  3481.41
    5     4     4     1.09183664    -0.83617356  -261.93518761    -0.00001286    -0.00000080  0.25D-07  0.17D-06  3481.41
    5     5     5     1.09183690    -0.83617354  -261.93518759    -0.00001298    -0.00000081  0.25D-07  0.18D-06  3481.41
    5     6     6     1.09183688    -0.83617354  -261.93518759    -0.00001305    -0.00000081  0.25D-07  0.18D-06  3481.41
    5     7     7     1.09183633    -0.83617351  -261.93518756    -0.00001327    -0.00000083  0.26D-07  0.18D-06  3481.41
    5     8     8     1.09183583    -0.83617344  -261.93518749    -0.00001355    -0.00000087  0.28D-07  0.19D-06  3481.41
    5     9     9     1.09230280    -0.83803026  -261.93184913    -0.00001882    -0.00000116  0.48D-07  0.24D-06  3481.41
    5    10    10     1.09230249    -0.83811439  -261.93184911    -0.00001886    -0.00000118  0.49D-07  0.24D-06  3481.41
    5    11    11     1.09230241    -0.83811437  -261.93184909    -0.00001896    -0.00000119  0.49D-07  0.25D-06  3481.41
    5    12    12     1.09219111    -0.83683966  -261.93057438    -0.00001389    -0.00000084  0.34D-07  0.17D-06  3481.41
    6     1     1     1.09911907    -0.86480047  -262.20638233    -0.00000108    -0.00000005  0.30D-08  0.94D-08  4343.81
    6     2     2     1.09911847    -0.86480046  -262.20638233    -0.00000112    -0.00000006  0.34D-08  0.10D-07  4343.81
    6     3     3     1.09911871    -0.86480046  -262.20638233    -0.00000116    -0.00000006  0.32D-08  0.98D-08  4343.81
    6     4     4     1.09186501    -0.83617456  -261.93518861    -0.00000099    -0.00000007  0.41D-08  0.13D-07  4343.81
    6     5     5     1.09186511    -0.83617455  -261.93518861    -0.00000101    -0.00000007  0.42D-08  0.14D-07  4343.81
    6     6     6     1.09186510    -0.83617455  -261.93518860    -0.00000101    -0.00000007  0.42D-08  0.14D-07  4343.81
    6     7     7     1.09186520    -0.83617455  -261.93518860    -0.00000103    -0.00000008  0.46D-08  0.14D-07  4343.81
    6     8     8     1.09186468    -0.83617455  -261.93518860    -0.00000111    -0.00000008  0.42D-08  0.17D-07  4343.81
    6     9     9     1.09232677    -0.83803168  -261.93185056    -0.00000142    -0.00000009  0.61D-08  0.16D-07  4343.81
    6    10    10     1.09232666    -0.83811583  -261.93185055    -0.00000144    -0.00000009  0.62D-08  0.16D-07  4343.81
    6    11    11     1.09232646    -0.83811583  -261.93185055    -0.00000146    -0.00000009  0.63D-08  0.17D-07  4343.81
    6    12    12     1.09221843    -0.83684070  -261.93057542    -0.00000104    -0.00000007  0.38D-08  0.13D-07  4343.81
    7     1     1     1.09912335    -0.86480053  -262.20638240    -0.00000007    -0.00000000  0.33D-09  0.65D-09  5204.84
    7     2     2     1.09912338    -0.86480053  -262.20638239    -0.00000006    -0.00000000  0.31D-09  0.62D-09  5204.84
    7     3     3     1.09912342    -0.86480053  -262.20638239    -0.00000006    -0.00000000  0.29D-09  0.57D-09  5204.84
    7     4     4     1.09187019    -0.83617464  -261.93518869    -0.00000008    -0.00000001  0.28D-09  0.16D-08  5204.84
    7     5     5     1.09187030    -0.83617464  -261.93518869    -0.00000008    -0.00000001  0.32D-09  0.14D-08  5204.84
    7     6     6     1.09187016    -0.83617464  -261.93518869    -0.00000008    -0.00000001  0.27D-09  0.16D-08  5204.84
    7     7     7     1.09187028    -0.83617463  -261.93518868    -0.00000009    -0.00000001  0.26D-09  0.12D-08  5204.84
    7     8     8     1.09186990    -0.83617463  -261.93518868    -0.00000009    -0.00000001  0.27D-09  0.23D-08  5204.84
    7     9     9     1.09233250    -0.83803179  -261.93185066    -0.00000010    -0.00000001  0.43D-09  0.13D-08  5204.84
    7    10    10     1.09233245    -0.83811593  -261.93185066    -0.00000011    -0.00000001  0.44D-09  0.15D-08  5204.84
    7    11    11     1.09233239    -0.83811593  -261.93185066    -0.00000011    -0.00000001  0.44D-09  0.16D-08  5204.84
    7    12    12     1.09222325    -0.83684078  -261.93057550    -0.00000008    -0.00000001  0.23D-09  0.14D-08  5204.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   3.7%
 P   0.3%  31.9%  44.0%

 Initialization:   0.5%
 Other:           19.2%

 Total CPU:     5204.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2000           0.9473653   0.0031286   0.0026841  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0015627  -0.0051000  -0.0759963   0.0000000
 222222222222/000          -0.0027510   0.0204146   0.9471503   0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000
                            0.0761664   0.0004650   0.0015349   0.0000000
 2222222222/22000          -0.0030701   0.9471491  -0.0204234   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                            0.0003611  -0.0760110   0.0051084   0.0000000
 2222222222/2/0\0          -0.0000000  -0.0000000   0.0000000   0.0358187   0.0059980   0.0119510   0.2002508   0.7539280
                           -0.0000000   0.0000000   0.0000000   0.5522694
 22222222222//\00          -0.0000000  -0.0000000  -0.0000000  -0.0001714   0.0001912   0.0000430   0.7538070   0.2043147
                           -0.0000000  -0.0000000   0.0000000  -0.5522692
 22222222222//0\0           0.0001892  -0.0014040  -0.0651412   0.0166206   0.0144348   0.6758887   0.0033520  -0.0125088
                            0.6582132   0.0040186   0.0132646   0.0000000
 2222222222/2/\00           0.0001892  -0.0014040  -0.0651412  -0.0166206  -0.0144347  -0.6758876  -0.0033520   0.0125088
                            0.6582143   0.0040186   0.0132646   0.0000000
 22222222222//00\           0.0651560   0.0002152   0.0001846  -0.0416456   0.6749444  -0.0134566   0.0007342  -0.0033728
                           -0.0135041   0.0440729   0.6567437  -0.0000000
 2222222222//2\00          -0.0651559  -0.0002152  -0.0001846  -0.0416456   0.6749440  -0.0134565   0.0007342  -0.0033728
                            0.0135041  -0.0440730  -0.6567442  -0.0000000
 2222222222/2/00\          -0.0002111   0.0651411  -0.0014046   0.6739269   0.0410381  -0.0181361   0.0095180  -0.0345850
                           -0.0031208   0.6568704  -0.0441456  -0.0000000
 2222222222//20\0          -0.0002111   0.0651411  -0.0014046  -0.6739267  -0.0410381   0.0181361  -0.0095179   0.0345850
                           -0.0031208   0.6568706  -0.0441456  -0.0000000
 2222222222//200\           0.0000000  -0.0000000   0.0000000   0.0359902   0.0058068   0.0119080  -0.5535558   0.5496131
                            0.0000000  -0.0000000   0.0000000  -0.5522696
 222222222222000/          -0.0001087   0.0008064   0.0374140   0.0000000   0.0000000   0.0000002   0.0000000  -0.0000000
                            0.1223887   0.0007472   0.0024664   0.0000000
 2222222222022/00          -0.0001213   0.0374138  -0.0008068   0.0000001   0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0005803  -0.1221386   0.0082084   0.0000000
 22222222222020/0           0.0374225   0.0001236   0.0001060   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0025110  -0.0081949  -0.1221152   0.0000000
 22222222222/\0/0           0.0000940  -0.0006978  -0.0323755  -0.0001185  -0.0001029  -0.0048199  -0.0000239   0.0000892
                           -0.1110192  -0.0006778  -0.0022373  -0.0000000
 2222222222/2\/00           0.0000940  -0.0006978  -0.0323755   0.0001185   0.0001029   0.0048197   0.0000239  -0.0000892
                           -0.1110190  -0.0006778  -0.0022373  -0.0000000
 2222222222/2\00/           0.0001049  -0.0323755   0.0006981   0.0048060   0.0002927  -0.0001293   0.0000679  -0.0002466
                           -0.0005264   0.1107927  -0.0074459  -0.0000000
 2222222222/\20/0           0.0001049  -0.0323754   0.0006981  -0.0048057  -0.0002926   0.0001293  -0.0000679   0.0002466
                           -0.0005264   0.1107925  -0.0074459  -0.0000000
 22222222222/\00/          -0.0323829  -0.0001069  -0.0000918  -0.0002970   0.0048133  -0.0000960   0.0000052  -0.0000241
                           -0.0022777   0.0074337   0.1107714  -0.0000000
 2222222222/\2/00          -0.0323828  -0.0001069  -0.0000918   0.0002970  -0.0048131   0.0000960  -0.0000052   0.0000241
                           -0.0022777   0.0074337   0.1107711   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.953211   -0.003089   -0.002768   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000106
            -0.000095   -0.032712
 2           0.003148    0.952994    0.020541   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.032704
             0.000705   -0.000108
 3           0.002701   -0.020549    0.952995    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000705
             0.032704   -0.000093
 4          -0.000000    0.000000   -0.000000    0.050789    0.953520   -0.058923    0.023516    0.001077    0.000000    0.000000
             0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.008343    0.058064    0.954960    0.020423    0.000446    0.000000    0.000000
             0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.016872   -0.025660   -0.019039    0.956295    0.000480    0.000000   -0.000000
             0.000001   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.273265    0.013467    0.001039    0.004743    0.917021   -0.000000    0.000000
             0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.915532   -0.048933   -0.004772   -0.017698    0.273636    0.000000   -0.000000
            -0.000000   -0.000000
 9          -0.000706   -0.000163   -0.034396    0.000000   -0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.004532
             0.955930   -0.019612
 10          0.002303    0.034326   -0.000210   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.953980
             0.005836    0.064008
 11          0.034319   -0.002307   -0.000693    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.064113
             0.019264    0.953796
 12          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956829   -0.000000
             0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953781   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000014    0.000051
             0.000792    0.000000
 2          -0.000000    0.953781   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000021    0.000792
            -0.000051   -0.000000
 3           0.000000   -0.000000    0.953781   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000794   -0.000022
            -0.000013    0.000000
 4          -0.000000    0.000000   -0.000000    0.956978    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.956978   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956978   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956978   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956978    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000014   -0.000021   -0.000794    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956761    0.000000
             0.000000    0.000000
 10          0.000051    0.000792   -0.000022   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956761
             0.000000   -0.000000
 11          0.000792   -0.000051   -0.000013   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.956761   -0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.956829


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95321145 (fixed)   0.95382656 (relaxed)   0.95378127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012891   -0.00012778   -0.78883776
 Singles      0.01107136   -0.03744574   -0.04277187
 Pairs        0.08806477    0.03967550   -0.03319091
 Total        1.09926504    0.00210197   -0.86480053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127601
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45656057
 One electron energy                 -454.80360385
 Two electron energy                  192.59722145
 Virial quotient                       -3.14183068
 Correlation energy                    -0.86510639
 !MRCI STATE 1.2 Energy              -262.206382398178

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29225722 (Davidson, fixed reference)
 Cluster corrected energies          -262.29216693 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29225722 (Davidson, rotated reference)

 Cluster corrected energies          -262.29212325 (Pople, fixed reference)
 Cluster corrected energies          -262.29202515 (Pople, relaxed reference)
 Cluster corrected energies          -262.29212325 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95299393 (fixed)   0.95382655 (relaxed)   0.95378126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012891   -0.00012778   -0.75286427
 Singles      0.01107132   -0.03744565   -0.04277182
 Pairs        0.08806483    0.00013103   -0.06916443
 Total        1.09926507   -0.03744240   -0.86480053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127601
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45656305
 One electron energy                 -454.80360828
 Two electron energy                  192.59722588
 Virial quotient                       -3.14183059
 Correlation energy                    -0.86510639
 !MRCI STATE 2.2 Energy              -262.206382394342

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29225724 (Davidson, fixed reference)
 Cluster corrected energies          -262.29216694 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29225724 (Davidson, rotated reference)

 Cluster corrected energies          -262.29212327 (Pople, fixed reference)
 Cluster corrected energies          -262.29202517 (Pople, relaxed reference)
 Cluster corrected energies          -262.29212327 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95299509 (fixed)   0.95382653 (relaxed)   0.95378125 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012891   -0.00012778   -0.75284739
 Singles      0.01107127   -0.03744555   -0.04277177
 Pairs        0.08806492    0.00011241   -0.06918136
 Total        1.09926511   -0.03746092   -0.86480053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127601
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45656491
 One electron energy                 -454.80361010
 Two electron energy                  192.59722770
 Virial quotient                       -3.14183052
 Correlation energy                    -0.86510639
 !MRCI STATE 3.2 Energy              -262.206382393916

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29225727 (Davidson, fixed reference)
 Cluster corrected energies          -262.29216698 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29225727 (Davidson, rotated reference)

 Cluster corrected energies          -262.29212331 (Pople, fixed reference)
 Cluster corrected energies          -262.29202521 (Pople, relaxed reference)
 Cluster corrected energies          -262.29212331 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95352033 (fixed)   0.95698157 (relaxed)   0.95697788 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005800   -0.00017814   -0.72260983
 Singles      0.01256820   -0.04718125   -0.05283097
 Pairs        0.07930732    0.00000001   -0.06073384
 Total        1.09193352   -0.04735939   -0.83617464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09901405
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02981562
 One electron energy                 -448.99775617
 Two electron energy                  187.06256748
 Virial quotient                       -3.15471240
 Correlation energy                    -0.83617464
 !MRCI STATE 4.2 Energy              -261.935188689861

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01206117 (Davidson, fixed reference)
 Cluster corrected energies          -262.01205412 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01206117 (Davidson, rotated reference)

 Cluster corrected energies          -262.01144385 (Pople, fixed reference)
 Cluster corrected energies          -262.01143630 (Pople, relaxed reference)
 Cluster corrected energies          -262.01144385 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95495983 (fixed)   0.95698152 (relaxed)   0.95697784 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005800   -0.00017814   -0.72260928
 Singles      0.01256830   -0.04718153   -0.05283115
 Pairs        0.07930733   -0.00000023   -0.06073420
 Total        1.09193363   -0.04735990   -0.83617464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09901405
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02981813
 One electron energy                 -448.99774894
 Two electron energy                  187.06256025
 Virial quotient                       -3.15471230
 Correlation energy                    -0.83617464
 !MRCI STATE 5.2 Energy              -261.935188689245

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01206126 (Davidson, fixed reference)
 Cluster corrected energies          -262.01205422 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01206126 (Davidson, rotated reference)

 Cluster corrected energies          -262.01144395 (Pople, fixed reference)
 Cluster corrected energies          -262.01143640 (Pople, relaxed reference)
 Cluster corrected energies          -262.01144395 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95629538 (fixed)   0.95698159 (relaxed)   0.95697790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005800   -0.00017814   -0.72260992
 Singles      0.01256815   -0.04718117   -0.05283092
 Pairs        0.07930734    0.00000002   -0.06073380
 Total        1.09193349   -0.04735930   -0.83617464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09901405
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02981442
 One electron energy                 -448.99775630
 Two electron energy                  187.06256762
 Virial quotient                       -3.15471244
 Correlation energy                    -0.83617464
 !MRCI STATE 6.2 Energy              -261.935188687220

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01206114 (Davidson, fixed reference)
 Cluster corrected energies          -262.01205410 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01206114 (Davidson, rotated reference)

 Cluster corrected energies          -262.01144383 (Pople, fixed reference)
 Cluster corrected energies          -262.01143628 (Pople, relaxed reference)
 Cluster corrected energies          -262.01144383 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.91702133 (fixed)   0.95698154 (relaxed)   0.95697785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005800   -0.00017814   -0.72260987
 Singles      0.01256815   -0.04718113   -0.05283092
 Pairs        0.07930745   -0.00000000   -0.06073384
 Total        1.09193361   -0.04735927   -0.83617463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09901405
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02981198
 One electron energy                 -448.99775052
 Two electron energy                  187.06256184
 Virial quotient                       -3.15471254
 Correlation energy                    -0.83617463
 !MRCI STATE 7.2 Energy              -261.935188684593

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01206123 (Davidson, fixed reference)
 Cluster corrected energies          -262.01205419 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01206123 (Davidson, rotated reference)

 Cluster corrected energies          -262.01144393 (Pople, fixed reference)
 Cluster corrected energies          -262.01143638 (Pople, relaxed reference)
 Cluster corrected energies          -262.01144393 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.91553239 (fixed)   0.95698170 (relaxed)   0.95697801 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005800   -0.00017814   -0.72261032
 Singles      0.01256809   -0.04718091   -0.05283071
 Pairs        0.07930715    0.00000000   -0.06073360
 Total        1.09193323   -0.04735904   -0.83617463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09901405
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02981450
 One electron energy                 -448.99777553
 Two electron energy                  187.06258685
 Virial quotient                       -3.15471244
 Correlation energy                    -0.83617463
 !MRCI STATE 8.2 Energy              -261.935188683094

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01206092 (Davidson, fixed reference)
 Cluster corrected energies          -262.01205388 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01206092 (Davidson, rotated reference)

 Cluster corrected energies          -262.01144359 (Pople, fixed reference)
 Cluster corrected energies          -262.01143604 (Pople, relaxed reference)
 Cluster corrected energies          -262.01144359 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95593042 (fixed)   0.95677424 (relaxed)   0.95676075 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008853   -0.00022188   -0.73850393
 Singles      0.01288023   -0.04754595   -0.05340108
 Pairs        0.07946044    0.01620324   -0.04612677
 Total        1.09242920   -0.03156460   -0.83803179
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09404058
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05286605
 One electron energy                 -449.12026850
 Two electron energy                  187.18841784
 Virial quotient                       -3.15379665
 Correlation energy                    -0.83781008
 !MRCI STATE 9.2 Energy              -261.931850658566

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00928878 (Davidson, fixed reference)
 Cluster corrected energies          -262.00926295 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00928878 (Davidson, rotated reference)

 Cluster corrected energies          -262.00870062 (Pople, fixed reference)
 Cluster corrected energies          -262.00867290 (Pople, relaxed reference)
 Cluster corrected energies          -262.00870062 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95397964 (fixed)   0.95677427 (relaxed)   0.95676077 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008853   -0.00022188   -0.67534079
 Singles      0.01288027   -0.04754599   -0.05340210
 Pairs        0.07946035   -0.05288218   -0.10937305
 Total        1.09242915   -0.10065005   -0.83811593
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09404058
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05286460
 One electron energy                 -449.12026761
 Two electron energy                  187.18841695
 Virial quotient                       -3.15379670
 Correlation energy                    -0.83781008
 !MRCI STATE 10.2 Energy             -261.931850656977

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00928873 (Davidson, fixed reference)
 Cluster corrected energies          -262.00926291 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00928873 (Davidson, rotated reference)

 Cluster corrected energies          -262.00870057 (Pople, fixed reference)
 Cluster corrected energies          -262.00867285 (Pople, relaxed reference)
 Cluster corrected energies          -262.00870057 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95379590 (fixed)   0.95677429 (relaxed)   0.95676079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008853   -0.00022188   -0.00240885
 Singles      0.01288027   -0.04754600   -0.05340210
 Pairs        0.07946030   -0.78801264   -0.78230499
 Total        1.09242909   -0.83578052   -0.83811593
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09404058
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05286580
 One electron energy                 -449.12027006
 Two electron energy                  187.18841941
 Virial quotient                       -3.15379666
 Correlation energy                    -0.83781008
 !MRCI STATE 11.2 Energy             -261.931850656122

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00928868 (Davidson, fixed reference)
 Cluster corrected energies          -262.00926286 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00928868 (Davidson, rotated reference)

 Cluster corrected energies          -262.00870052 (Pople, fixed reference)
 Cluster corrected energies          -262.00867280 (Pople, relaxed reference)
 Cluster corrected energies          -262.00870052 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95682913 (fixed)   0.95683297 (relaxed)   0.95682913 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004560   -0.00013839   -0.72241995
 Singles      0.01290155   -0.04779909   -0.05364353
 Pairs        0.07932591    0.00000000   -0.06077730
 Total        1.09227306   -0.04793748   -0.83684078
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09381887
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02949230
 One electron energy                 -448.98920235
 Two electron energy                  187.05862685
 Virial quotient                       -3.15466912
 Correlation energy                    -0.83675663
 !MRCI STATE 12.2 Energy             -261.930575499370

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00778560 (Davidson, fixed reference)
 Cluster corrected energies          -262.00777827 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00778560 (Davidson, rotated reference)

 Cluster corrected energies          -262.00718859 (Pople, fixed reference)
 Cluster corrected energies          -262.00718072 (Pople, relaxed reference)
 Cluster corrected energies          -262.00718859 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       61.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2618.87       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6065.54   6055.91      5.64      0.48      3.12
 REAL TIME  *      6307.67 SEC
 DISK USED  *         2.62 GB (local),       42.39 GB (total)
 SF USED    *        25.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.29225722  AU                              
 SETTING HLSDIAG(2)     =      -262.29225724  AU                              
 SETTING HLSDIAG(3)     =      -262.29225727  AU                              
 SETTING HLSDIAG(4)     =      -262.01206117  AU                              
 SETTING HLSDIAG(5)     =      -262.01206126  AU                              
 SETTING HLSDIAG(6)     =      -262.01206114  AU                              
 SETTING HLSDIAG(7)     =      -262.01206123  AU                              
 SETTING HLSDIAG(8)     =      -262.01206092  AU                              
 SETTING HLSDIAG(9)     =      -262.00928878  AU                              
 SETTING HLSDIAG(10)    =      -262.00928873  AU                              
 SETTING HLSDIAG(11)    =      -262.00928868  AU                              
 SETTING HLSDIAG(12)    =      -262.00778560  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       66 conf       84 CSFs
 N elec internal:     7606 conf    20444 CSFs
 N-1 el internal:     7990 conf    43460 CSFs
 N-2 el internal:     4430 conf    58610 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     184 (  85  99 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  42

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.10563053
     2      -261.10563053
     3      -261.10563053
     4      -261.10087679
     5      -261.10087679
     6      -261.10087679
     7      -261.10087679
     8      -261.10087679
     9      -261.09388628

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3634D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4787D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1004D-06

 Number of blocks in overlap matrix:   989   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2080
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       4021476
 Number of doubly external configurations:      17598668
 Total number of contracted configurations:     21630956
 Total number of uncontracted configurations:  499081334

 Diagonal Coupling coefficients finished.               Storage:   8771374 words, CPU-Time:      7.39 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2682051 words, CPU-time:      3.31 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10563053     0.00000000    -1.00930899  0.32D-01  0.12D+00    13.99
    1     2     2     1.00000000     0.00000000  -261.10563053     0.00000000    -1.01036778  0.32D-01  0.12D+00    13.99
    1     3     3     1.00000000     0.00000000  -261.10563053     0.00000000    -1.00903129  0.33D-01  0.12D+00    13.99
    1     4     4     1.00000000     0.00000000  -261.10087679     0.00000000    -1.01173650  0.32D-01  0.12D+00    13.99
    1     5     5     1.00000000     0.00000000  -261.10087679     0.00000000    -1.00976981  0.32D-01  0.12D+00    13.99
    1     6     6     1.00000000     0.00000000  -261.10087679     0.00000000    -1.01017971  0.32D-01  0.12D+00    13.99
    1     7     7     1.00000000     0.00000000  -261.10087679     0.00000000    -1.01152836  0.32D-01  0.13D+00    13.99
    1     8     8     1.00000000     0.00000000  -261.10087679     0.00000000    -1.01232217  0.32D-01  0.13D+00    13.99
    1     9     9     1.00000000     0.00000000  -261.09388628     0.00000000    -1.01337125  0.32D-01  0.13D+00    13.99
    2     1     1     1.10102974    -0.81404006  -261.91967058    -0.81404006    -0.02240471  0.22D-02  0.19D-02   423.98
    2     2     2     1.10112595    -0.81396234  -261.91959287    -0.81396234    -0.02248587  0.22D-02  0.19D-02   423.98
    2     3     3     1.10159234    -0.81384135  -261.91947188    -0.81384135    -0.02261965  0.22D-02  0.20D-02   423.98
    2     4     4     1.10114624    -0.81468118  -261.91555797    -0.81468118    -0.02231227  0.21D-02  0.19D-02   423.98
    2     5     5     1.10126850    -0.81461708  -261.91549387    -0.81461708    -0.02238465  0.21D-02  0.19D-02   423.98
    2     6     6     1.10183635    -0.81440721  -261.91528400    -0.81440721    -0.02261144  0.21D-02  0.20D-02   423.98
    2     7     7     1.10153059    -0.81410210  -261.91497889    -0.81410210    -0.02295732  0.21D-02  0.21D-02   423.98
    2     8     8     1.10138783    -0.81407092  -261.91494771    -0.81407092    -0.02297625  0.21D-02  0.21D-02   423.98
    2     9     9     1.10205860    -0.81468906  -261.90857533    -0.81468906    -0.02307775  0.22D-02  0.21D-02   423.98
    3     1     1     1.09172221    -0.83502577  -261.94065630    -0.02098571    -0.00027061  0.31D-04  0.27D-04   831.05
    3     2     2     1.09172767    -0.83502408  -261.94065461    -0.02106174    -0.00027235  0.31D-04  0.27D-04   831.05
    3     3     3     1.09181093    -0.83502249  -261.94065302    -0.02118114    -0.00027457  0.31D-04  0.27D-04   831.05
    3     4     4     1.09195720    -0.83557729  -261.93645407    -0.02089610    -0.00026775  0.30D-04  0.26D-04   831.05
    3     5     5     1.09194608    -0.83557668  -261.93645347    -0.02095960    -0.00026831  0.30D-04  0.26D-04   831.05
    3     6     6     1.09204695    -0.83557365  -261.93645044    -0.02116644    -0.00027219  0.30D-04  0.27D-04   831.05
    3     7     7     1.09192424    -0.83556779  -261.93644458    -0.02146569    -0.00027503  0.29D-04  0.29D-04   831.05
    3     8     8     1.09186180    -0.83556111  -261.93643790    -0.02149019    -0.00027983  0.29D-04  0.30D-04   831.05
    3     9     9     1.09221456    -0.83630395  -261.93019023    -0.02161490    -0.00028626  0.34D-04  0.31D-04   831.05
    4     1     1     1.09156208    -0.83530608  -261.94093661    -0.00028031    -0.00000878  0.11D-05  0.12D-05  1239.73
    4     2     2     1.09154532    -0.83530606  -261.94093659    -0.00028198    -0.00000883  0.10D-05  0.12D-05  1239.73
    4     3     3     1.09154542    -0.83530597  -261.94093649    -0.00028348    -0.00000884  0.10D-05  0.12D-05  1239.73
    4     4     4     1.09178476    -0.83585322  -261.93673001    -0.00027593    -0.00000832  0.10D-05  0.11D-05  1239.73
    4     5     5     1.09176594    -0.83585314  -261.93672993    -0.00027646    -0.00000841  0.99D-06  0.11D-05  1239.73
    4     6     6     1.09176682    -0.83585311  -261.93672989    -0.00027945    -0.00000836  0.98D-06  0.11D-05  1239.73
    4     7     7     1.09175040    -0.83585242  -261.93672920    -0.00028462    -0.00000883  0.97D-06  0.13D-05  1239.73
    4     8     8     1.09173295    -0.83585184  -261.93672863    -0.00029072    -0.00000935  0.97D-06  0.14D-05  1239.73
    4     9     9     1.09202897    -0.83660097  -261.93048725    -0.00029702    -0.00000978  0.11D-05  0.15D-05  1239.73
    5     1     1     1.09158947    -0.83531602  -261.94094655    -0.00000994    -0.00000048  0.15D-07  0.10D-06  1649.50
    5     2     2     1.09159073    -0.83531601  -261.94094653    -0.00000995    -0.00000048  0.15D-07  0.10D-06  1649.50
    5     3     3     1.09158908    -0.83531598  -261.94094651    -0.00001001    -0.00000050  0.15D-07  0.11D-06  1649.50
    5     4     4     1.09180763    -0.83586250  -261.93673929    -0.00000928    -0.00000044  0.14D-07  0.96D-07  1649.50
    5     5     5     1.09180933    -0.83586249  -261.93673928    -0.00000935    -0.00000044  0.14D-07  0.99D-07  1649.50
    5     6     6     1.09180725    -0.83586246  -261.93673925    -0.00000936    -0.00000046  0.14D-07  0.10D-06  1649.50
    5     7     7     1.09180082    -0.83586241  -261.93673920    -0.00000999    -0.00000053  0.15D-07  0.11D-06  1649.50
    5     8     8     1.09180271    -0.83586240  -261.93673918    -0.00001056    -0.00000051  0.15D-07  0.11D-06  1649.50
    5     9     9     1.09208552    -0.83661186  -261.93049814    -0.00001089    -0.00000062  0.13D-07  0.15D-06  1649.50
    6     1     1     1.09160646    -0.83531660  -261.94094713    -0.00000058    -0.00000004  0.20D-08  0.70D-08  2058.06
    6     2     2     1.09160616    -0.83531660  -261.94094712    -0.00000059    -0.00000004  0.22D-08  0.73D-08  2058.06
    6     3     3     1.09160648    -0.83531660  -261.94094712    -0.00000062    -0.00000004  0.23D-08  0.77D-08  2058.06
    6     4     4     1.09182227    -0.83586303  -261.93673982    -0.00000052    -0.00000004  0.19D-08  0.90D-08  2058.06
    6     5     5     1.09182274    -0.83586302  -261.93673981    -0.00000053    -0.00000004  0.17D-08  0.89D-08  2058.06
    6     6     6     1.09182298    -0.83586302  -261.93673981    -0.00000056    -0.00000003  0.16D-08  0.83D-08  2058.06
    6     7     7     1.09182300    -0.83586302  -261.93673981    -0.00000061    -0.00000004  0.19D-08  0.91D-08  2058.06
    6     8     8     1.09182260    -0.83586301  -261.93673980    -0.00000061    -0.00000004  0.21D-08  0.94D-08  2058.06
    6     9     9     1.09210449    -0.83661254  -261.93049882    -0.00000068    -0.00000006  0.23D-08  0.17D-07  2058.06
    7     1     1     1.09161067    -0.83531664  -261.94094717    -0.00000004    -0.00000000  0.16D-09  0.59D-09  2347.76
    7     2     2     1.09160646    -0.83531660  -261.94094713    -0.00000000    -0.00000004  0.20D-08  0.70D-08  2347.76
    7     3     3     1.09160625    -0.83531660  -261.94094713    -0.00000000    -0.00000004  0.21D-08  0.72D-08  2347.76
    7     4     4     1.09182690    -0.83586307  -261.93673986    -0.00000004    -0.00000000  0.11D-09  0.86D-09  2347.76
    7     5     5     1.09182618    -0.83586307  -261.93673986    -0.00000004    -0.00000000  0.14D-09  0.94D-09  2347.76
    7     6     6     1.09182633    -0.83586306  -261.93673985    -0.00000004    -0.00000000  0.15D-09  0.98D-09  2347.76
    7     7     7     1.09182700    -0.83586306  -261.93673984    -0.00000004    -0.00000000  0.12D-09  0.92D-09  2347.76
    7     8     8     1.09182298    -0.83586302  -261.93673981    -0.00000001    -0.00000003  0.16D-08  0.83D-08  2347.76
    7     9     9     1.09210925    -0.83661261  -261.93049889    -0.00000006    -0.00000001  0.23D-09  0.15D-08  2347.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   5.2%
 P   0.4%  33.7%  37.7%

 Initialization:   0.5%
 Other:           22.0%

 Total CPU:     2347.8 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222///00          -0.0000000  -0.0000000   0.0000000   0.7810882  -0.0000000   0.0000000  -0.0161182   0.0000000
                            0.5522615
 2222222222//200/          -0.0000000  -0.0000000  -0.0000000  -0.3765842   0.0000000  -0.0000000   0.6845006   0.0000000
                            0.5522631
 2222222222/2//00          -0.0000000  -0.0000000   0.6766748   0.0000000   0.6765846  -0.0000000  -0.0000000  -0.0000000
                            0.0000000
 2222222222//2/00          -0.0000000   0.6766745   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.6765860
                           -0.0000000
 22222222222//00/           0.0000000  -0.6766728   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6765875
                           -0.0000000
 22222222222//0/0          -0.0000000   0.0000000   0.6766726  -0.0000000  -0.6765869  -0.0000000   0.0000000  -0.0000000
                           -0.0000000
 2222222222//20/0           0.6766726   0.0000000   0.0000000   0.0000000   0.0000000   0.6765855   0.0000000  -0.0000000
                            0.0000000
 2222222222/2/00/           0.6766721   0.0000000   0.0000000   0.0000000   0.0000000  -0.6765860   0.0000000   0.0000000
                            0.0000000
 2222222222/2/0/0          -0.0000000  -0.0000000  -0.0000000   0.4045017  -0.0000000  -0.0000000   0.6683825  -0.0000000
                           -0.5522631

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.957097    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.957099    0.000000    0.000000    0.000000    0.000001    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.957099    0.000000   -0.000000    0.000000   -0.000000    0.000002   -0.000000    0.000000
 4           0.000000    0.000000    0.000000   -0.723314   -0.000000   -0.000000    0.000000    0.626634    0.000001
 5           0.000000   -0.000002    0.000000    0.000000   -0.000000    0.000000    0.957003   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957003   -0.000000   -0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.626634    0.000000   -0.000000   -0.000000    0.723314   -0.000000
 8          -0.000001   -0.000000   -0.000000   -0.000000    0.957004   -0.000000    0.000000   -0.000000    0.000000
 9          -0.000000    0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000001    0.956867

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957097   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.957099    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.957099    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.957002    0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.957003    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957003   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957002    0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957004   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956867


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95709690 (fixed)   0.95710404 (relaxed)   0.95709690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004699   -0.00011604   -0.72187458
 Singles      0.01264269   -0.04731287   -0.05301246
 Pairs        0.07897228    0.00000000   -0.06042961
 Total        1.09166196   -0.04742891   -0.83531664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10563053
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02063270
 One electron energy                 -448.97213318
 Two electron energy                  187.03118600
 Virial quotient                       -3.15513070
 Correlation energy                    -0.83531665
 !MRCI STATE 1.2 Energy              -261.940947172313

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01751394 (Davidson, fixed reference)
 Cluster corrected energies          -262.01750034 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01751394 (Davidson, rotated reference)

 Cluster corrected energies          -262.01613578 (Pople, fixed reference)
 Cluster corrected energies          -262.01612137 (Pople, relaxed reference)
 Cluster corrected energies          -262.01613578 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95709875 (fixed)   0.95710588 (relaxed)   0.95709875 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004699   -0.00011605   -0.72188329
 Singles      0.01263991   -0.04730636   -0.05300826
 Pairs        0.07897085   -0.00000000   -0.06042505
 Total        1.09165776   -0.04742241   -0.83531660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10563053
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02055095
 One electron energy                 -448.97226691
 Two electron energy                  187.03131978
 Virial quotient                       -3.15513381
 Correlation energy                    -0.83531660
 !MRCI STATE 2.2 Energy              -261.940947128317

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01751037 (Davidson, fixed reference)
 Cluster corrected energies          -262.01749677 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01751037 (Davidson, rotated reference)

 Cluster corrected energies          -262.01613201 (Pople, fixed reference)
 Cluster corrected energies          -262.01611759 (Pople, relaxed reference)
 Cluster corrected energies          -262.01613201 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95709884 (fixed)   0.95710598 (relaxed)   0.95709884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004699   -0.00011605   -0.72188342
 Singles      0.01263990   -0.04730637   -0.05300824
 Pairs        0.07897065   -0.00000000   -0.06042493
 Total        1.09165754   -0.04742241   -0.83531660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10563053
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02055470
 One electron energy                 -448.97226837
 Two electron energy                  187.03132125
 Virial quotient                       -3.15513367
 Correlation energy                    -0.83531660
 !MRCI STATE 3.2 Energy              -261.940947125595

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01751019 (Davidson, fixed reference)
 Cluster corrected energies          -262.01749659 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01751019 (Davidson, rotated reference)

 Cluster corrected energies          -262.01613182 (Pople, fixed reference)
 Cluster corrected energies          -262.01611740 (Pople, relaxed reference)
 Cluster corrected energies          -262.01613182 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.72331423 (fixed)   0.95700814 (relaxed)   0.95700244 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004632   -0.00012551   -0.72210560
 Singles      0.01269798   -0.04744985   -0.05317677
 Pairs        0.07913317   -0.00000111   -0.06058071
 Total        1.09187747   -0.04757647   -0.83586307
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087679
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02434460
 One electron energy                 -448.97978023
 Two electron energy                  187.04304037
 Virial quotient                       -3.15493897
 Correlation energy                    -0.83586307
 !MRCI STATE 4.2 Energy              -261.936739858852

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01353685 (Davidson, fixed reference)
 Cluster corrected energies          -262.01352598 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01353685 (Davidson, rotated reference)

 Cluster corrected energies          -262.01216861 (Pople, fixed reference)
 Cluster corrected energies          -262.01215710 (Pople, relaxed reference)
 Cluster corrected energies          -262.01216861 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95700276 (fixed)   0.95700845 (relaxed)   0.95700276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004632   -0.00012552   -0.72210644
 Singles      0.01269826   -0.04745055   -0.05317726
 Pairs        0.07913217   -0.00000000   -0.06057936
 Total        1.09187676   -0.04757607   -0.83586307
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087679
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02436724
 One electron energy                 -448.97977677
 Two electron energy                  187.04303692
 Virial quotient                       -3.15493810
 Correlation energy                    -0.83586307
 !MRCI STATE 5.2 Energy              -261.936739855160

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01353624 (Davidson, fixed reference)
 Cluster corrected energies          -262.01352538 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01353624 (Davidson, rotated reference)

 Cluster corrected energies          -262.01216797 (Pople, fixed reference)
 Cluster corrected energies          -262.01215646 (Pople, relaxed reference)
 Cluster corrected energies          -262.01216797 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95700269 (fixed)   0.95700839 (relaxed)   0.95700269 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004632   -0.00012552   -0.72210617
 Singles      0.01269834   -0.04745074   -0.05317737
 Pairs        0.07913224   -0.00000000   -0.06057953
 Total        1.09187690   -0.04757626   -0.83586306
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087679
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02437002
 One electron energy                 -448.97977460
 Two electron energy                  187.04303475
 Virial quotient                       -3.15493800
 Correlation energy                    -0.83586306
 !MRCI STATE 6.2 Energy              -261.936739852451

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01353636 (Davidson, fixed reference)
 Cluster corrected energies          -262.01352550 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01353636 (Davidson, rotated reference)

 Cluster corrected energies          -262.01216810 (Pople, fixed reference)
 Cluster corrected energies          -262.01215658 (Pople, relaxed reference)
 Cluster corrected energies          -262.01216810 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.72331421 (fixed)   0.95700810 (relaxed)   0.95700240 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004632   -0.00012551   -0.72210656
 Singles      0.01269797   -0.04744989   -0.05317675
 Pairs        0.07913328    0.00000007   -0.06057975
 Total        1.09187757   -0.04757534   -0.83586306
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087679
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02434419
 One electron energy                 -448.97977715
 Two electron energy                  187.04303730
 Virial quotient                       -3.15493898
 Correlation energy                    -0.83586306
 !MRCI STATE 7.2 Energy              -261.936739844908

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01353691 (Davidson, fixed reference)
 Cluster corrected energies          -262.01352605 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01353691 (Davidson, rotated reference)

 Cluster corrected energies          -262.01216868 (Pople, fixed reference)
 Cluster corrected energies          -262.01215717 (Pople, relaxed reference)
 Cluster corrected energies          -262.01216868 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95700416 (fixed)   0.95700986 (relaxed)   0.95700416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004632   -0.00012552   -0.72211424
 Singles      0.01269560   -0.04744431   -0.05317342
 Pairs        0.07913163   -0.00000000   -0.06057537
 Total        1.09187355   -0.04756983   -0.83586302
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087679
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02428528
 One electron energy                 -448.97988296
 Two electron energy                  187.04314315
 Virial quotient                       -3.15494122
 Correlation energy                    -0.83586302
 !MRCI STATE 8.2 Energy              -261.936739811939

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01353352 (Davidson, fixed reference)
 Cluster corrected energies          -262.01352265 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01353352 (Davidson, rotated reference)

 Cluster corrected energies          -262.01216509 (Pople, fixed reference)
 Cluster corrected energies          -262.01215357 (Pople, relaxed reference)
 Cluster corrected energies          -262.01216509 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95686688 (fixed)   0.95687154 (relaxed)   0.95686688 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007109   -0.00020942   -0.00024620
 Singles      0.01274755   -0.04748213   -0.05323793
 Pairs        0.07936825   -0.78892106   -0.78312848
 Total        1.09218689   -0.83661261   -0.83661261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09388628
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02888274
 One electron energy                 -448.98630565
 Two electron energy                  187.05580677
 Virial quotient                       -3.15469136
 Correlation energy                    -0.83661261
 !MRCI STATE 9.2 Energy              -261.930498885605

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00762360 (Davidson, fixed reference)
 Cluster corrected energies          -262.00761468 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00762360 (Davidson, rotated reference)

 Cluster corrected energies          -262.00626982 (Pople, fixed reference)
 Cluster corrected energies          -262.00626036 (Pople, relaxed reference)
 Cluster corrected energies          -262.00626982 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       61.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4111.86       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8671.92   2606.37   6055.91      5.64      0.48      3.12
 REAL TIME  *      9029.72 SEC
 DISK USED  *         4.08 GB (local),       65.72 GB (total)
 SF USED    *        25.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -262.01751394  AU                              
 SETTING HLSDIAG(14)    =      -262.01751037  AU                              
 SETTING HLSDIAG(15)    =      -262.01751019  AU                              
 SETTING HLSDIAG(16)    =      -262.01353685  AU                              
 SETTING HLSDIAG(17)    =      -262.01353624  AU                              
 SETTING HLSDIAG(18)    =      -262.01353636  AU                              
 SETTING HLSDIAG(19)    =      -262.01353691  AU                              
 SETTING HLSDIAG(20)    =      -262.01353352  AU                              
 SETTING HLSDIAG(21)    =      -262.00762360  AU                              


         HLSDIAG
    -262.2922572
    -262.2922572
    -262.2922573
    -262.0120612
    -262.0120613
    -262.0120611
    -262.0120612
    -262.0120609
    -262.0092888
    -262.0092887
    -262.0092887
    -262.0077856
    -262.0175139
    -262.0175104
    -262.0175102
    -262.0135368
    -262.0135362
    -262.0135364
    -262.0135369
    -262.0135335
    -262.0076236
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -262.206382   -262.206382   -262.206382   -261.935189   -261.935189   -261.935189   -261.935189   -261.935189
                      -261.931851   -261.931851   -261.931851   -261.930575
 Replaced energies:   -262.292257   -262.292257   -262.292257   -262.012061   -262.012061   -262.012061   -262.012061   -262.012061
                      -262.009289   -262.009289   -262.009289   -262.007786

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -261.940947   -261.940947   -261.940947   -261.936740   -261.936740   -261.936740   -261.936740   -261.936740
                      -261.930499
 Replaced energies:   -262.017514   -262.017510   -262.017510   -262.013537   -262.013536   -262.013536   -262.013537   -262.013534
                      -262.007624



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.29225727

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     156.58    7261.34      15.13      11.27     610.72       0.82     -11.89     327.29       1.93

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -156.58      -0.00      23.54      -0.92      13.36       1.79     680.95     184.46       0.94       0.48

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7261.34     -23.54      -0.00     -37.57     609.72     -10.43     -14.01      -7.06      -5.79      21.91

    4   4.2  0.5  0.5       0.00       0.00       0.00   61495.94       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.13       0.92      37.57       0.00      40.13      62.13    1408.08   -5195.09    -149.99      -4.34

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   61495.92       0.00       0.00       0.00       0.00       0.00
                          -11.27     -13.36    -609.72     -40.13       0.00   -2696.53      72.84    -268.19    2451.94      10.76

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   61495.94       0.00       0.00       0.00       0.00
                         -610.72      -1.79      10.43     -62.13    2696.53      -0.00     -33.23     120.03       1.49    -164.79

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   61495.92       0.00       0.00       0.00
                           -0.82    -680.95      14.01   -1408.08     -72.84      33.23       0.00      -1.12      15.89   -2732.44

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61495.99       0.00       0.00
                           11.89    -184.46       7.06    5195.09     268.19    -120.03       1.12      -0.00      -9.66    -737.43

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62104.41       0.00
                         -327.29      -0.94       5.79     149.99   -2451.94      -1.49     -15.89       9.66      -0.00      70.06

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62104.42
                           -1.93      -0.48     -21.91       4.34     -10.76     164.79    2732.44     737.43     -70.06       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.65      -7.06    -326.48      63.31       2.86    2449.79    -171.49     -94.83   -1042.41      -4.95

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.77    -853.83      18.41      -0.00      -0.00       0.00       0.00       0.00      23.20   -4884.03

   13   1.2  0.5 -0.5       0.00    7261.34    -156.51     608.88      39.07     -16.39       7.15     -29.82       1.57    -326.67
                           -0.00     -20.58      23.99     -30.64      -5.35     -12.82    -180.92    -681.25       1.06       0.95

   14   2.2  0.5 -0.5   -7261.34      -0.00     -21.09      38.93    -609.68      11.87      10.14      -7.76      -6.71      20.83
                           20.58      -0.00   -7262.99       1.79      12.22     610.86       2.25     -12.88    -327.17      -9.04

   15   3.2  0.5 -0.5     156.51      21.09       0.00     -31.60       8.01     -11.07     500.08    -496.63       0.15      -1.40
                          -23.99    7262.99       0.00    -609.19     -37.37       3.19      -9.18      29.55       8.61    -326.48

   16   4.2  0.5 -0.5    -608.88     -38.93      31.60       0.00   -2693.05     -82.92      87.49     118.37     -79.76    -315.57
                           30.64      -1.79     609.19      -0.00      91.90   -2686.04    -333.08     130.32   -2449.55     -66.46

   17   5.2  0.5 -0.5     -39.07     609.68      -8.01    2693.05      -0.00     -92.51     118.72     -54.78     -29.65    2435.75
                            5.35     -12.22      37.37     -91.90       0.00    -212.64    5200.07   -1373.46    -149.22     -51.76

   18   6.2  0.5 -0.5      16.39     -11.87      11.07      82.92      92.51      -0.00    3799.17    3820.03     -44.36     -44.62
                           12.82    -610.86      -3.19    2686.04     212.64       0.00     -65.35    -111.95      76.60   -2445.98

   19   7.2  0.5 -0.5      -7.15     -10.14    -500.08     -87.49    -118.72   -3799.17      -0.00      89.30    2010.77      12.62
                          180.92      -2.25       9.18     333.08   -5200.07      65.35       0.00      24.51     -49.42      36.33

   20   8.2  0.5 -0.5      29.82       7.76     496.63    -118.37      54.78   -3820.03     -89.30       0.00   -1998.28     -16.00
                          681.25      12.88     -29.55    -130.32    1373.46     111.95     -24.51      -0.00      69.20     229.41

   21   9.2  0.5 -0.5      -1.57       6.71      -0.15      79.76      29.65      44.36   -2010.77    1998.28      -0.00     -21.05
                           -1.06     327.17      -8.61    2449.55     149.22     -76.60      49.42     -69.20       0.00   -1042.20

   22  10.2  0.5 -0.5     326.67     -20.83       1.40     315.57   -2435.75      44.62     -12.62      16.00      21.05       0.00
                           -0.95       9.04     326.48      66.46      51.76    2445.98     -36.33    -229.41    1042.20      -0.00

   23  11.2  0.5 -0.5     -20.89    -326.54       6.98    2434.19     313.49     -68.12      -5.84     -85.91      -6.38    1044.53
                            0.04       6.12     -22.09     -84.50     -22.24    -209.23    -725.65   -2731.04     -69.94     -21.43

   24  12.2  0.5 -0.5      -2.48      18.40     853.84      -0.00      -0.00      -0.01      -0.00       0.00   -4894.02     -29.88
                         -854.03      -2.82      -2.42       0.00      -0.01      -0.00      -0.00       0.00     100.41    -327.70

   25   1.2  1.5  1.5    1234.51       4.08       3.50     100.68   -1631.73      32.53      -1.78       8.16      53.43    -174.40
                            3.58     -26.60   -1234.45     -40.18     -34.89   -1633.85      -8.10      30.24   -2604.08     -15.90

   26   2.2  1.5  1.5      -3.99    1231.04     -26.54   -1622.79     -98.82      43.67     -22.92      83.28      12.37   -2603.77
                           -0.00      -0.00      -0.00     -86.11     -14.42     -28.73    -488.11   -1814.29       0.01       0.00

   27   3.2  1.5  1.5       0.00      -0.00       0.00      86.52      13.96      28.63   -1337.23    1319.37      -0.00       0.00
                            3.99   -1231.06      26.55   -1622.97     -98.83      43.68     -22.92      83.29     -12.38    2603.83

   28   4.2  1.5  1.5       2.03     -15.07    -699.15     -68.85     -59.80   -2799.89     -13.88      51.82     785.50       4.79
                         -750.99      -2.48      -2.13    -168.52    2731.23     -54.45       2.97     -13.65      17.28     -56.41

   29   5.2  1.5  1.5       0.00      -0.00      -0.00     -84.94     -14.75     -28.58   -2266.34   -2281.40      -0.00      -0.00
                            4.06   -1251.65      26.99    1603.07      97.62     -43.14      22.64     -82.27       6.66   -1401.50

   30   6.2  1.5  1.5    1255.46       4.15       3.56     -98.64    1598.68     -31.87       1.74      -7.99     -28.94      94.44
                           -3.64      27.05    1255.17     -39.37     -34.19   -1600.95      -7.94      29.63   -1411.19      -8.62

   31   7.2  1.5  1.5      -3.69      27.39    1270.75     -37.88     -32.90   -1540.36      -7.64      28.51   -1427.76      -8.71
                        -1240.88      -4.10      -3.51     101.85   -1650.69      32.91      -1.80       8.25      28.57     -93.25

   32   8.2  1.5  1.5      -4.06    1251.70     -26.99    1603.18      97.62     -43.14      22.64     -82.27      -6.66    1401.51
                           -0.00      -0.00      -0.00      86.18      13.38      28.28   -3108.14     824.91       0.00       0.00

   33   9.2  1.5  1.5       6.50     -48.26   -2239.00      -0.00      -0.00      -0.04      -0.00       0.00    1327.42       8.10
                        -2239.61      -7.40      -6.34       0.07      -1.18       0.02      -0.00       0.01      27.26     -88.97

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.11       0.59       0.24    2094.55     574.81      -0.00       0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.14      30.72    1425.33     -46.40     -40.30   -1886.79      -9.36      34.92    3007.24      18.35

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1422.05      -4.70      -4.03     115.79   -1876.58      37.41      -2.04       9.38     -61.80     201.70

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.42   -1673.84      36.09      75.91       4.62      -2.04       1.07      -3.90       8.90   -1872.97

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1445.62       4.77       4.10     114.40   -1853.99      36.97      -2.02       9.27     -33.29     108.64

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     197.20      32.42      65.52    -974.18    3578.62      -0.00      -0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11      34.52      -0.74    3678.64     224.00     -99.00      51.95    -188.79      -0.18      38.67

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.21     -31.24   -1449.45     -45.46     -39.48   -1848.58      -9.17      34.21    1629.52       9.94

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.38    2585.62     -55.75      -0.06      -0.00       0.00      -0.00       0.00      -7.28    1532.74

   43   1.2  1.5 -0.5     712.75       2.35       2.02      58.13    -942.08      18.78      -1.03       4.71      30.85    -100.69
                           -2.07      15.36     712.71      23.20      20.14     943.31       4.68     -17.46    1503.47       9.18

   44   2.2  1.5 -0.5      -2.30     710.74     -15.33    -936.92     -57.05      25.21     -13.23      48.08       7.14   -1503.29
                            0.00       0.00       0.00      49.71       8.33      16.59     281.81    1047.48      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00      -0.00       0.00      49.95       8.06      16.53    -772.05     761.74      -0.00       0.00
                           -2.30     710.76     -15.33     937.02      57.06     -25.22      13.23     -48.09       7.15   -1503.32

   46   4.2  1.5 -0.5       1.17      -8.70    -403.66     -39.75     -34.52   -1616.52      -8.02      29.92     453.51       2.77
                          433.58       1.43       1.23      97.30   -1576.87      31.44      -1.71       7.88      -9.98      32.57

   47   5.2  1.5 -0.5       0.00      -0.00      -0.00     -49.04      -8.51     -16.50   -1308.47   -1317.17      -0.00      -0.00
                           -2.34     722.64     -15.58    -925.53     -56.36      24.91     -13.07      47.50      -3.84     809.15

   48   6.2  1.5 -0.5     724.84       2.39       2.05     -56.95     923.00     -18.40       1.00      -4.61     -16.71      54.52
                            2.10     -15.62    -724.67      22.73      19.74     924.31       4.58     -17.11     814.75       4.97

   49   7.2  1.5 -0.5      -2.13      15.81     733.67     -21.87     -18.99    -889.33      -4.41      16.46    -824.32      -5.03
                          716.42       2.37       2.03     -58.80     953.03     -19.00       1.04      -4.76     -16.50      53.84

   50   8.2  1.5 -0.5      -2.34     722.67     -15.58     925.60      56.36     -24.91      13.07     -47.50      -3.85     809.16
                            0.00       0.00       0.00     -49.75      -7.73     -16.33    1794.48    -476.26      -0.00      -0.00

   51   9.2  1.5 -0.5       3.75     -27.86   -1292.69      -0.00      -0.00      -0.02      -0.00       0.00     766.39       4.68
                         1293.04       4.27       3.66      -0.04       0.68      -0.01       0.00      -0.00     -15.74      51.37

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00       0.00       0.00   -7261.34     156.51    -608.88     -39.07      16.39      -7.15      29.82
                            5.65      -2.77       0.00     -20.58      23.99     -30.64      -5.35     -12.82    -180.92    -681.25

    2   2.2  0.5  0.5       0.00       0.00    7261.34      -0.00      21.09     -38.93     609.68     -11.87     -10.14       7.76
                            7.06     853.83      20.58       0.00   -7262.99       1.79      12.22     610.86       2.25     -12.88

    3   3.2  0.5  0.5       0.00       0.00    -156.51     -21.09       0.00      31.60      -8.01      11.07    -500.08     496.63
                          326.48     -18.41     -23.99    7262.99      -0.00    -609.19     -37.37       3.19      -9.18      29.55

    4   4.2  0.5  0.5       0.00       0.00     608.88      38.93     -31.60       0.00    2693.05      82.92     -87.49    -118.37
                          -63.31       0.00      30.64      -1.79     609.19       0.00      91.90   -2686.04    -333.08     130.32

    5   5.2  0.5  0.5       0.00       0.00      39.07    -609.68       8.01   -2693.05      -0.00      92.51    -118.72      54.78
                           -2.86       0.00       5.35     -12.22      37.37     -91.90      -0.00    -212.64    5200.07   -1373.46

    6   6.2  0.5  0.5       0.00       0.00     -16.39      11.87     -11.07     -82.92     -92.51      -0.00   -3799.17   -3820.03
                        -2449.79      -0.00      12.82    -610.86      -3.19    2686.04     212.64      -0.00     -65.35    -111.95

    7   7.2  0.5  0.5       0.00       0.00       7.15      10.14     500.08      87.49     118.72    3799.17      -0.00     -89.30
                          171.49      -0.00     180.92      -2.25       9.18     333.08   -5200.07      65.35      -0.00      24.51

    8   8.2  0.5  0.5       0.00       0.00     -29.82      -7.76    -496.63     118.37     -54.78    3820.03      89.30       0.00
                           94.83      -0.00     681.25      12.88     -29.55    -130.32    1373.46     111.95     -24.51       0.00

    9   9.2  0.5  0.5       0.00       0.00       1.57      -6.71       0.15     -79.76     -29.65     -44.36    2010.77   -1998.28
                         1042.41     -23.20      -1.06     327.17      -8.61    2449.55     149.22     -76.60      49.42     -69.20

   10  10.2  0.5  0.5       0.00       0.00    -326.67      20.83      -1.40    -315.57    2435.75     -44.62      12.62     -16.00
                            4.95    4884.03      -0.95       9.04     326.48      66.46      51.76    2445.98     -36.33    -229.41

   11  11.2  0.5  0.5   62104.43       0.00      20.89     326.54      -6.98   -2434.19    -313.49      68.12       5.84      85.91
                            0.00    -328.24       0.04       6.12     -22.09     -84.50     -22.24    -209.23    -725.65   -2731.04

   12  12.2  0.5  0.5       0.00   62434.32       2.48     -18.40    -853.84       0.00       0.00       0.01       0.00      -0.00
                          328.24       0.00    -854.03      -2.82      -2.42       0.00      -0.01      -0.00      -0.00       0.00

   13   1.2  0.5 -0.5      20.89       2.48       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     854.03      -0.00    -156.58   -7261.34     -15.13     -11.27    -610.72      -0.82      11.89

   14   2.2  0.5 -0.5     326.54     -18.40       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.12       2.82     156.58       0.00     -23.54       0.92     -13.36      -1.79    -680.95    -184.46

   15   3.2  0.5 -0.5      -6.98    -853.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.09       2.42    7261.34      23.54       0.00      37.57    -609.72      10.43      14.01       7.06

   16   4.2  0.5 -0.5   -2434.19       0.00       0.00       0.00       0.00   61495.94       0.00       0.00       0.00       0.00
                           84.50      -0.00      15.13      -0.92     -37.57      -0.00     -40.13     -62.13   -1408.08    5195.09

   17   5.2  0.5 -0.5    -313.49       0.00       0.00       0.00       0.00       0.00   61495.92       0.00       0.00       0.00
                           22.24       0.01      11.27      13.36     609.72      40.13      -0.00    2696.53     -72.84     268.19

   18   6.2  0.5 -0.5      68.12       0.01       0.00       0.00       0.00       0.00       0.00   61495.94       0.00       0.00
                          209.23       0.00     610.72       1.79     -10.43      62.13   -2696.53       0.00      33.23    -120.03

   19   7.2  0.5 -0.5       5.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61495.92       0.00
                          725.65       0.00       0.82     680.95     -14.01    1408.08      72.84     -33.23      -0.00       1.12

   20   8.2  0.5 -0.5      85.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61495.99
                         2731.04      -0.00     -11.89     184.46      -7.06   -5195.09    -268.19     120.03      -1.12       0.00

   21   9.2  0.5 -0.5       6.38    4894.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           69.94    -100.41     327.29       0.94      -5.79    -149.99    2451.94       1.49      15.89      -9.66

   22  10.2  0.5 -0.5   -1044.53      29.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.43     327.70       1.93       0.48      21.91      -4.34      10.76    -164.79   -2732.44    -737.43

   23  11.2  0.5 -0.5      -0.00      98.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    4883.09       5.65       7.06     326.48     -63.31      -2.86   -2449.79     171.49      94.83

   24  12.2  0.5 -0.5     -98.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -4883.09       0.00      -2.77     853.83     -18.41       0.00       0.00      -0.00      -0.00      -0.00

   25   1.2  1.5  1.5   -2598.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.48       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5     174.99      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    2571.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5       0.00    2571.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -174.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5      15.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -840.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5       0.00      -5.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5    1407.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.44       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5     -28.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1389.56       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5     -94.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.13      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      26.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1325.83       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00     712.75       2.35       2.02      58.13    -942.08      18.78      -1.03       4.71
                            0.00    2968.60       2.07     -15.36    -712.71     -23.20     -20.14    -943.31      -4.68      17.46

   35   2.2  1.5  0.5       0.00       0.00      -2.30     710.74     -15.33    -936.92     -57.05      25.21     -13.23      48.08
                           60.60       0.00      -0.00      -0.00      -0.00     -49.71      -8.33     -16.59    -281.81   -1047.48

   36   3.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      49.95       8.06      16.53    -772.05     761.74
                         3005.59       0.00       2.30    -710.76      15.33    -937.02     -57.06      25.22     -13.23      48.09

   37   4.2  1.5  0.5       0.00       0.00       1.17      -8.70    -403.66     -39.75     -34.52   -1616.52      -8.02      29.92
                          125.87       0.00    -433.58      -1.43      -1.23     -97.30    1576.87     -31.44       1.71      -7.88

   38   5.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00     -49.04      -8.51     -16.50   -1308.47   -1317.17
                         1618.85       0.00       2.34    -722.64      15.58     925.53      56.36     -24.91      13.07     -47.50

   39   6.2  1.5  0.5       0.00       0.00     724.84       2.39       2.05     -56.95     923.00     -18.40       1.00      -4.61
                            0.00      -5.92      -2.10      15.62     724.67     -22.73     -19.74    -924.31      -4.58      17.11

   40   7.2  1.5  0.5       0.00       0.00      -2.13      15.81     733.67     -21.87     -18.99    -889.33      -4.41      16.46
                           -2.60       0.00    -716.42      -2.37      -2.03      58.80    -953.03      19.00      -1.04       4.76

   41   8.2  1.5  0.5       0.00       0.00      -2.34     722.67     -15.58     925.60      56.36     -24.91      13.07     -47.50
                           32.84       0.00      -0.00      -0.00      -0.00      49.75       7.73      16.33   -1794.48     476.26

   42   9.2  1.5  0.5       0.00       0.00       3.75     -27.86   -1292.69      -0.00      -0.00      -0.02      -0.00       0.00
                         -103.01      -0.00   -1293.04      -4.27      -3.66       0.04      -0.68       0.01      -0.00       0.00

   43   1.2  1.5 -0.5   -1500.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.30      -0.00      -0.00       0.00       0.00      -0.11       0.59       0.24    2094.55     574.81

   44   2.2  1.5 -0.5     101.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1484.46      -4.14      30.72    1425.33     -46.40     -40.30   -1886.79      -9.36      34.92

   45   3.2  1.5 -0.5       0.00    1484.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          101.03       0.00   -1422.05      -4.70      -4.03     115.79   -1876.58      37.41      -2.04       9.38

   46   4.2  1.5 -0.5       9.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          485.31       0.00       5.42   -1673.84      36.09      75.91       4.62      -2.04       1.07      -3.90

   47   5.2  1.5 -0.5       0.00      -2.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -54.38       0.00    1445.62       4.77       4.10     114.40   -1853.99      36.97      -2.02       9.27

   48   6.2  1.5 -0.5     812.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.42      -0.00       0.00      -0.00       0.00     197.20      32.42      65.52    -974.18    3578.62

   49   7.2  1.5 -0.5     -16.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          802.26      -0.00      -0.11      34.52      -0.74    3678.64     224.00     -99.00      51.95    -188.79

   50   8.2  1.5 -0.5     -54.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.96       4.21     -31.24   -1449.45     -45.46     -39.48   -1848.58      -9.17      34.21

   51   9.2  1.5 -0.5      15.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          765.47      -0.00      -8.38    2585.62     -55.75      -0.06      -0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00    1234.51       4.08       3.50     100.68   -1631.73      32.53      -1.78       8.16
                           -0.00      -0.00      -3.58      26.60    1234.45      40.18      34.89    1633.85       8.10     -30.24

   53   2.2  1.5 -1.5       0.00       0.00      -3.99    1231.04     -26.54   -1622.79     -98.82      43.67     -22.92      83.28
                           -0.00      -0.00       0.00       0.00       0.00      86.11      14.42      28.73     488.11    1814.29

   54   3.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      86.52      13.96      28.63   -1337.23    1319.37
                           -0.00      -0.00      -3.99    1231.06     -26.55    1622.97      98.83     -43.68      22.92     -83.29

   55   4.2  1.5 -1.5       0.00       0.00       2.03     -15.07    -699.15     -68.85     -59.80   -2799.89     -13.88      51.82
                           -0.00      -0.00     750.99       2.48       2.13     168.52   -2731.23      54.45      -2.97      13.65

   56   5.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00     -84.94     -14.75     -28.58   -2266.34   -2281.40
                           -0.00      -0.00      -4.06    1251.65     -26.99   -1603.07     -97.62      43.14     -22.64      82.27

   57   6.2  1.5 -1.5       0.00       0.00    1255.46       4.15       3.56     -98.64    1598.68     -31.87       1.74      -7.99
                           -0.00      -0.00       3.64     -27.05   -1255.17      39.37      34.19    1600.95       7.94     -29.63

   58   7.2  1.5 -1.5       0.00       0.00      -3.69      27.39    1270.75     -37.88     -32.90   -1540.36      -7.64      28.51
                           -0.00      -0.00    1240.88       4.10       3.51    -101.85    1650.69     -32.91       1.80      -8.25

   59   8.2  1.5 -1.5       0.00       0.00      -4.06    1251.70     -26.99    1603.18      97.62     -43.14      22.64     -82.27
                           -0.00      -0.00       0.00       0.00       0.00     -86.18     -13.38     -28.28    3108.14    -824.91

   60   9.2  1.5 -1.5       0.00       0.00       6.50     -48.26   -2239.00      -0.00      -0.00      -0.04      -0.00       0.00
                           -0.00      -0.00    2239.61       7.40       6.34      -0.07       1.18      -0.02       0.00      -0.01


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      -1.57     326.67     -20.89      -2.48    1234.51      -3.99       0.00       2.03       0.00    1255.46
                            1.06       0.95      -0.04     854.03      -3.58       0.00      -3.99     750.99      -4.06       3.64

    2   2.2  0.5  0.5       6.71     -20.83    -326.54      18.40       4.08    1231.04      -0.00     -15.07      -0.00       4.15
                         -327.17      -9.04      -6.12       2.82      26.60       0.00    1231.06       2.48    1251.65     -27.05

    3   3.2  0.5  0.5      -0.15       1.40       6.98     853.84       3.50     -26.54       0.00    -699.15      -0.00       3.56
                            8.61    -326.48      22.09       2.42    1234.45       0.00     -26.55       2.13     -26.99   -1255.17

    4   4.2  0.5  0.5      79.76     315.57    2434.19      -0.00     100.68   -1622.79      86.52     -68.85     -84.94     -98.64
                        -2449.55     -66.46      84.50      -0.00      40.18      86.11    1622.97     168.52   -1603.07      39.37

    5   5.2  0.5  0.5      29.65   -2435.75     313.49      -0.00   -1631.73     -98.82      13.96     -59.80     -14.75    1598.68
                         -149.22     -51.76      22.24       0.01      34.89      14.42      98.83   -2731.23     -97.62      34.19

    6   6.2  0.5  0.5      44.36      44.62     -68.12      -0.01      32.53      43.67      28.63   -2799.89     -28.58     -31.87
                           76.60   -2445.98     209.23       0.00    1633.85      28.73     -43.68      54.45      43.14    1600.95

    7   7.2  0.5  0.5   -2010.77     -12.62      -5.84      -0.00      -1.78     -22.92   -1337.23     -13.88   -2266.34       1.74
                          -49.42      36.33     725.65       0.00       8.10     488.11      22.92      -2.97     -22.64       7.94

    8   8.2  0.5  0.5    1998.28      16.00     -85.91       0.00       8.16      83.28    1319.37      51.82   -2281.40      -7.99
                           69.20     229.41    2731.04      -0.00     -30.24    1814.29     -83.29      13.65      82.27     -29.63

    9   9.2  0.5  0.5      -0.00      21.05      -6.38   -4894.02      53.43      12.37      -0.00     785.50      -0.00     -28.94
                           -0.00   -1042.20      69.94    -100.41    2604.08      -0.01      12.38     -17.28      -6.66    1411.19

   10  10.2  0.5  0.5     -21.05       0.00    1044.53     -29.88    -174.40   -2603.77       0.00       4.79      -0.00      94.44
                         1042.20       0.00      21.43     327.70      15.90      -0.00   -2603.83      56.41    1401.50       8.62

   11  11.2  0.5  0.5       6.38   -1044.53      -0.00     -98.63   -2598.71     174.99       0.00      15.83       0.00    1407.26
                          -69.94     -21.43      -0.00    4883.09      52.48      -0.00     174.99     840.59     -94.19      28.44

   12  12.2  0.5  0.5    4894.02      29.88      98.63       0.00      -0.00      -0.01    2571.01      -0.00      -5.11       0.00
                          100.41    -327.70   -4883.09      -0.00      -0.00   -2571.16       0.00       0.00       0.00      -0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -327.29      -1.93      -5.65       2.77       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.94      -0.48      -7.06    -853.83       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.79     -21.91    -326.48      18.41       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          149.99       4.34      63.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2451.94     -10.76       2.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.49     164.79    2449.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.89    2732.44    -171.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.66     737.43     -94.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   62104.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -70.06   -1042.41      23.20       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   62104.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           70.06      -0.00      -4.95   -4884.03       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   62104.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1042.41       4.95      -0.00     328.24       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   62434.32       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.20    4884.03    -328.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   60299.19       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    4673.47       0.00      -0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   60299.97       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    3765.14       0.00    4048.29       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   60300.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -3765.14       0.00      -0.00       0.00      -0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.06       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4673.47      -0.00       0.00       0.00       0.00    -155.49

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.20       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -4048.29      -0.00      -0.00       0.00      -0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.17
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     155.49       0.00       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      96.43      -0.00       0.00       0.00       0.00   -7534.81

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    4048.36      -0.00    3768.28       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    6632.01       0.00      -0.00       0.00      -0.00       0.00

   34   1.2  1.5  0.5      30.85    -100.69   -1500.37      -0.00      -0.00    2173.72       0.00       0.00       0.00      -0.00
                        -1503.47      -9.18     -30.30       0.00       0.00      -0.00    2173.72       0.00   -2337.24      -0.00

   35   2.2  1.5  0.5       7.14   -1503.29     101.03      -0.00   -2173.72       0.00       0.00       0.00      -0.00    2337.27
                            0.00       0.00       0.00    1484.46       0.00       0.00       0.00    1397.38      -0.00       0.00

   36   3.2  1.5  0.5      -0.00       0.00       0.00    1484.38      -0.00      -0.00       0.00   -1300.94       0.00      -0.00
                           -7.15    1503.32    -101.03      -0.00   -2173.72      -0.00       0.00       0.00      -0.00   -2337.27

   37   4.2  1.5  0.5     453.51       2.77       9.14      -0.00      -0.00      -0.00    1300.94       0.00    3812.29       0.00
                            9.98     -32.57    -485.31      -0.00      -0.00   -1397.38      -0.00       0.00       0.00      -0.00

   38   5.2  1.5  0.5      -0.00      -0.00       0.00      -2.95      -0.00       0.00      -0.00   -3812.29      -0.00      -0.00
                            3.84    -809.15      54.38      -0.00    2337.24       0.00       0.00      -0.00       0.00    2175.58

   39   6.2  1.5  0.5     -16.71      54.52     812.48       0.00       0.00   -2337.27       0.00      -0.00       0.00      -0.00
                         -814.75      -4.97     -16.42       0.00       0.00      -0.00    2337.27       0.00   -2175.58      -0.00

   40   7.2  1.5  0.5    -824.32      -5.03     -16.61       0.00      -0.00       0.00   -2364.62      -0.00    2097.37       0.00
                           16.50     -53.84    -802.26       0.00       0.00   -2308.93      -0.00      -0.00       0.00       0.00

   41   8.2  1.5  0.5      -3.85     809.16     -54.38      -0.00    2337.26      -0.00       0.00      -0.00      -0.00   -2175.61
                            0.00       0.00       0.00      -2.96       0.00      -0.00       0.00    3722.59      -0.00       0.00

   42   9.2  1.5  0.5     766.39       4.68      15.44       0.00      -0.00       0.00    3829.07       0.00      -0.01       0.00
                           15.74     -51.37    -765.47       0.00      -0.00   -3829.06       0.00      -0.00      -0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    2968.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3007.24      18.35      60.60       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -61.80     201.70    3005.59       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.90   -1872.97     125.87       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.29     108.64    1618.85       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -5.92      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      38.67      -2.60       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1629.52       9.94      32.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.28    1532.74    -103.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5      53.43    -174.40   -2598.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2604.08      15.90      52.48      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5      12.37   -2603.77     174.99      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00   -2571.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5      -0.00       0.00       0.00    2571.01       0.00       0.00       0.00       0.00       0.00       0.00
                           12.38   -2603.83     174.99       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5     785.50       4.79      15.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.28      56.41     840.59       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5      -0.00      -0.00       0.00      -5.11       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.66    1401.50     -94.19       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     -28.94      94.44    1407.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1411.19       8.62      28.44      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5   -1427.76      -8.71     -28.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.57      93.25    1389.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      -6.66    1401.51     -94.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       5.13      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5    1327.42       8.10      26.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.26      88.97    1325.83      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5      -3.69      -4.06       6.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1240.88       0.00    2239.61       0.00       4.14    1422.05      -5.42   -1445.62      -0.00       0.11

    2   2.2  0.5  0.5      27.39    1251.70     -48.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.10       0.00       7.40      -0.00     -30.72       4.70    1673.84      -4.77       0.00     -34.52

    3   3.2  0.5  0.5    1270.75     -26.99   -2239.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.51       0.00       6.34      -0.00   -1425.33       4.03     -36.09      -4.10      -0.00       0.74

    4   4.2  0.5  0.5     -37.88    1603.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -101.85     -86.18      -0.07       0.11      46.40    -115.79     -75.91    -114.40    -197.20   -3678.64

    5   5.2  0.5  0.5     -32.90      97.62      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1650.69     -13.38       1.18      -0.59      40.30    1876.58      -4.62    1853.99     -32.42    -224.00

    6   6.2  0.5  0.5   -1540.36     -43.14      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -32.91     -28.28      -0.02      -0.24    1886.79     -37.41       2.04     -36.97     -65.52      99.00

    7   7.2  0.5  0.5      -7.64      22.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.80    3108.14       0.00   -2094.55       9.36       2.04      -1.07       2.02     974.18     -51.95

    8   8.2  0.5  0.5      28.51     -82.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.25    -824.91      -0.01    -574.81     -34.92      -9.38       3.90      -9.27   -3578.62     188.79

    9   9.2  0.5  0.5   -1427.76      -6.66    1327.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.57      -0.00     -27.26       0.00   -3007.24      61.80      -8.90      33.29       0.00       0.18

   10  10.2  0.5  0.5      -8.71    1401.51       8.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.25      -0.00      88.97      -0.00     -18.35    -201.70    1872.97    -108.64       0.00     -38.67

   11  11.2  0.5  0.5     -28.77     -94.19      26.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1389.56      -0.00    1325.83      -0.00     -60.60   -3005.59    -125.87   -1618.85      -0.00       2.60

   12  12.2  0.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.13      -0.00   -2968.60      -0.00      -0.00      -0.00      -0.00       5.92      -0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00     712.75      -2.30       0.00       1.17       0.00     724.84      -2.13
                            0.00       0.00       0.00      -2.07       0.00      -2.30     433.58      -2.34       2.10     716.42

   14   2.2  0.5 -0.5       0.00       0.00       0.00       2.35     710.74      -0.00      -8.70      -0.00       2.39      15.81
                            0.00       0.00       0.00      15.36       0.00     710.76       1.43     722.64     -15.62       2.37

   15   3.2  0.5 -0.5       0.00       0.00       0.00       2.02     -15.33       0.00    -403.66      -0.00       2.05     733.67
                            0.00       0.00       0.00     712.71       0.00     -15.33       1.23     -15.58    -724.67       2.03

   16   4.2  0.5 -0.5       0.00       0.00       0.00      58.13    -936.92      49.95     -39.75     -49.04     -56.95     -21.87
                            0.00       0.00       0.00      23.20      49.71     937.02      97.30    -925.53      22.73     -58.80

   17   5.2  0.5 -0.5       0.00       0.00       0.00    -942.08     -57.05       8.06     -34.52      -8.51     923.00     -18.99
                            0.00       0.00       0.00      20.14       8.33      57.06   -1576.87     -56.36      19.74     953.03

   18   6.2  0.5 -0.5       0.00       0.00       0.00      18.78      25.21      16.53   -1616.52     -16.50     -18.40    -889.33
                            0.00       0.00       0.00     943.31      16.59     -25.22      31.44      24.91     924.31     -19.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00      -1.03     -13.23    -772.05      -8.02   -1308.47       1.00      -4.41
                            0.00       0.00       0.00       4.68     281.81      13.23      -1.71     -13.07       4.58       1.04

   20   8.2  0.5 -0.5       0.00       0.00       0.00       4.71      48.08     761.74      29.92   -1317.17      -4.61      16.46
                            0.00       0.00       0.00     -17.46    1047.48     -48.09       7.88      47.50     -17.11      -4.76

   21   9.2  0.5 -0.5       0.00       0.00       0.00      30.85       7.14      -0.00     453.51      -0.00     -16.71    -824.32
                            0.00       0.00       0.00    1503.47      -0.00       7.15      -9.98      -3.84     814.75     -16.50

   22  10.2  0.5 -0.5       0.00       0.00       0.00    -100.69   -1503.29       0.00       2.77      -0.00      54.52      -5.03
                            0.00       0.00       0.00       9.18      -0.00   -1503.32      32.57     809.15       4.97      53.84

   23  11.2  0.5 -0.5       0.00       0.00       0.00   -1500.37     101.03       0.00       9.14       0.00     812.48     -16.61
                            0.00       0.00       0.00      30.30      -0.00     101.03     485.31     -54.38      16.42     802.26

   24  12.2  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00    1484.38      -0.00      -2.95       0.00       0.00
                            0.00       0.00       0.00      -0.00   -1484.46       0.00       0.00       0.00      -0.00      -0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00   -2173.72      -0.00      -0.00      -0.00       0.00      -0.00
                          -96.43      -0.00   -6632.01      -0.00      -0.00    2173.72       0.00   -2337.24      -0.00      -0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00    2173.72       0.00      -0.00      -0.00       0.00   -2337.27       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00    1397.38      -0.00       0.00    2308.93

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    1300.94      -0.00       0.00   -2364.62
                           -0.00   -4048.36       0.00   -2173.72      -0.00      -0.00       0.00      -0.00   -2337.27       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   -1300.94       0.00   -3812.29      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00   -1397.38      -0.00      -0.00       0.00      -0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00    3812.29      -0.00       0.00    2097.37
                           -0.00   -3768.28       0.00    2337.24       0.00       0.00      -0.00      -0.00    2175.58      -0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00      -0.00    2337.27      -0.00       0.00      -0.00      -0.00       0.00
                         7534.81      -0.00      -0.00       0.00      -0.00    2337.27       0.00   -2175.58       0.00      -0.00

   31   7.2  1.5  1.5   61172.05       0.00       0.00       0.00      -0.00    2364.62       0.00   -2097.37      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00   -2308.93      -0.00      -0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00   61172.79       0.00   -2337.26       0.00      -0.00       0.00       0.00    2175.61       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00    3722.59      -0.00       0.00   -2252.89

   33   9.2  1.5  1.5       0.00       0.00   62469.87       0.00      -0.00   -3829.07      -0.00       0.01      -0.00      -0.00
                            0.00       0.00       0.00      -0.00   -3829.06       0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00   -2337.26       0.00   60299.19       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    1557.82       0.00      -0.00     -32.14

   35   2.2  1.5  0.5      -0.00       0.00      -0.00       0.00   60299.97       0.00       0.00       0.00       0.00       0.00
                         2308.93       0.00    3829.06       0.00       0.00    1255.05       0.00    1349.43       0.00       0.00

   36   3.2  1.5  0.5    2364.62      -0.00   -3829.07       0.00       0.00   60300.01       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00   -1255.05       0.00      -0.00       0.00      -0.00      -0.00

   37   4.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00   61172.06       0.00       0.00       0.00
                            0.00   -3722.59       0.00   -1557.82      -0.00       0.00       0.00       0.00     -51.83      -0.00

   38   5.2  1.5  0.5   -2097.37       0.00       0.01       0.00       0.00       0.00       0.00   61172.20       0.00       0.00
                           -0.00       0.00       0.00      -0.00   -1349.43      -0.00      -0.00       0.00      -0.00      -0.00

   39   6.2  1.5  0.5      -0.00    2175.61      -0.00       0.00       0.00       0.00       0.00       0.00   61172.17       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      51.83       0.00       0.00    2511.60

   40   7.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.05
                           -0.00    2252.89       0.00      32.14      -0.00       0.00       0.00       0.00   -2511.60       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2252.89       0.00       0.00       0.00      -0.00    1349.45      -0.00    1256.09       0.00       0.00

   42   9.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    2210.67       0.00      -0.00       0.00      -0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00    2510.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    2510.00       0.00   -2698.81      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00   -2510.00       0.00       0.00       0.00      -0.00    2698.85      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    1613.56      -0.00       0.00    2666.12

   45   3.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00   -1502.19       0.00      -0.00    2730.43
                           -0.00      -0.00      -0.00   -2510.00      -0.00       0.00       0.00      -0.00   -2698.85       0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00    1502.19       0.00    4402.05       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -1613.56      -0.00       0.00       0.00      -0.00       0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00      -0.00   -4402.05      -0.00      -0.00   -2421.84
                           -0.00      -0.00      -0.00    2698.81       0.00       0.00      -0.00       0.00    2512.14      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00   -2698.85       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    2698.85       0.00   -2512.14      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00   -2730.43      -0.00    2421.84       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -2666.12      -0.00      -0.00       0.00       0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00    2698.84      -0.00       0.00      -0.00      -0.00   -2512.18      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    4298.48      -0.00       0.00   -2601.42

   51   9.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00    4421.43       0.00      -0.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4421.42       0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  0.5  0.5       0.00       0.00     712.75      -2.30       0.00       1.17       0.00     724.84      -2.13      -2.34
                           -4.21       8.38       2.07      -0.00       2.30    -433.58       2.34      -2.10    -716.42      -0.00

    2   2.2  0.5  0.5       0.00       0.00       2.35     710.74      -0.00      -8.70      -0.00       2.39      15.81     722.67
                           31.24   -2585.62     -15.36      -0.00    -710.76      -1.43    -722.64      15.62      -2.37      -0.00

    3   3.2  0.5  0.5       0.00       0.00       2.02     -15.33       0.00    -403.66      -0.00       2.05     733.67     -15.58
                         1449.45      55.75    -712.71      -0.00      15.33      -1.23      15.58     724.67      -2.03      -0.00

    4   4.2  0.5  0.5       0.00       0.00      58.13    -936.92      49.95     -39.75     -49.04     -56.95     -21.87     925.60
                           45.46       0.06     -23.20     -49.71    -937.02     -97.30     925.53     -22.73      58.80      49.75

    5   5.2  0.5  0.5       0.00       0.00    -942.08     -57.05       8.06     -34.52      -8.51     923.00     -18.99      56.36
                           39.48       0.00     -20.14      -8.33     -57.06    1576.87      56.36     -19.74    -953.03       7.73

    6   6.2  0.5  0.5       0.00       0.00      18.78      25.21      16.53   -1616.52     -16.50     -18.40    -889.33     -24.91
                         1848.58      -0.00    -943.31     -16.59      25.22     -31.44     -24.91    -924.31      19.00      16.33

    7   7.2  0.5  0.5       0.00       0.00      -1.03     -13.23    -772.05      -8.02   -1308.47       1.00      -4.41      13.07
                            9.17       0.00      -4.68    -281.81     -13.23       1.71      13.07      -4.58      -1.04   -1794.48

    8   8.2  0.5  0.5       0.00       0.00       4.71      48.08     761.74      29.92   -1317.17      -4.61      16.46     -47.50
                          -34.21      -0.00      17.46   -1047.48      48.09      -7.88     -47.50      17.11       4.76     476.26

    9   9.2  0.5  0.5       0.00       0.00      30.85       7.14      -0.00     453.51      -0.00     -16.71    -824.32      -3.85
                        -1629.52       7.28   -1503.47       0.00      -7.15       9.98       3.84    -814.75      16.50       0.00

   10  10.2  0.5  0.5       0.00       0.00    -100.69   -1503.29       0.00       2.77      -0.00      54.52      -5.03     809.16
                           -9.94   -1532.74      -9.18       0.00    1503.32     -32.57    -809.15      -4.97     -53.84       0.00

   11  11.2  0.5  0.5       0.00       0.00   -1500.37     101.03       0.00       9.14       0.00     812.48     -16.61     -54.38
                          -32.84     103.01     -30.30       0.00    -101.03    -485.31      54.38     -16.42    -802.26       0.00

   12  12.2  0.5  0.5       0.00       0.00      -0.00      -0.00    1484.38      -0.00      -2.95       0.00       0.00      -0.00
                           -0.00       0.00       0.00    1484.46      -0.00      -0.00      -0.00       0.00       0.00      -2.96

   13   1.2  0.5 -0.5      -2.34       3.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1293.04       0.00       4.14    1422.05      -5.42   -1445.62      -0.00       0.11      -4.21

   14   2.2  0.5 -0.5     722.67     -27.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.27      -0.00     -30.72       4.70    1673.84      -4.77       0.00     -34.52      31.24

   15   3.2  0.5 -0.5     -15.58   -1292.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.66      -0.00   -1425.33       4.03     -36.09      -4.10      -0.00       0.74    1449.45

   16   4.2  0.5 -0.5     925.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -49.75      -0.04       0.11      46.40    -115.79     -75.91    -114.40    -197.20   -3678.64      45.46

   17   5.2  0.5 -0.5      56.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.73       0.68      -0.59      40.30    1876.58      -4.62    1853.99     -32.42    -224.00      39.48

   18   6.2  0.5 -0.5     -24.91      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.33      -0.01      -0.24    1886.79     -37.41       2.04     -36.97     -65.52      99.00    1848.58

   19   7.2  0.5 -0.5      13.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1794.48       0.00   -2094.55       9.36       2.04      -1.07       2.02     974.18     -51.95       9.17

   20   8.2  0.5 -0.5     -47.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -476.26      -0.00    -574.81     -34.92      -9.38       3.90      -9.27   -3578.62     188.79     -34.21

   21   9.2  0.5 -0.5      -3.85     766.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -15.74       0.00   -3007.24      61.80      -8.90      33.29       0.00       0.18   -1629.52

   22  10.2  0.5 -0.5     809.16       4.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      51.37      -0.00     -18.35    -201.70    1872.97    -108.64       0.00     -38.67      -9.94

   23  11.2  0.5 -0.5     -54.38      15.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     765.47      -0.00     -60.60   -3005.59    -125.87   -1618.85      -0.00       2.60     -32.84

   24  12.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.96      -0.00   -2968.60      -0.00      -0.00      -0.00      -0.00       5.92      -0.00      -0.00

   25   1.2  1.5  1.5    2337.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    3829.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00    3829.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3722.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5   -2175.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2252.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00   -2510.00      -0.00      -0.00      -0.00       0.00      -0.00    2698.84
                           -0.00   -2210.67      -0.00      -0.00    2510.00       0.00   -2698.81      -0.00      -0.00      -0.00

   35   2.2  1.5  0.5       0.00       0.00    2510.00       0.00      -0.00      -0.00       0.00   -2698.85       0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00    1613.56      -0.00       0.00    2666.12       0.00

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00    1502.19      -0.00       0.00   -2730.43       0.00
                        -1349.45       0.00   -2510.00      -0.00      -0.00       0.00      -0.00   -2698.85       0.00      -0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00   -1502.19       0.00   -4402.05      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00   -1613.56      -0.00      -0.00       0.00      -0.00       0.00   -4298.48

   38   5.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00    4402.05      -0.00       0.00    2421.84      -0.00
                        -1256.09       0.00    2698.81       0.00       0.00      -0.00      -0.00    2512.14      -0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00      -0.00    2698.85      -0.00       0.00      -0.00      -0.00       0.00   -2512.18
                           -0.00      -0.00       0.00      -0.00    2698.85       0.00   -2512.14       0.00      -0.00      -0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00      -0.00    2730.43       0.00   -2421.84      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00   -2666.12      -0.00      -0.00       0.00       0.00       0.00    2601.42

   41   8.2  1.5  0.5   61172.79       0.00   -2698.84       0.00      -0.00       0.00       0.00    2512.18       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00    4298.48      -0.00       0.00   -2601.42      -0.00

   42   9.2  1.5  0.5       0.00   62469.87       0.00      -0.00   -4421.43      -0.00       0.01      -0.00      -0.00       0.00
                            0.00       0.00      -0.00   -4421.42       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   1.2  1.5 -0.5   -2698.84       0.00   60299.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00   -1557.82      -0.00       0.00      32.14       0.00

   44   2.2  1.5 -0.5       0.00      -0.00       0.00   60299.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    4421.42      -0.00      -0.00   -1255.05      -0.00   -1349.43      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5      -0.00   -4421.43       0.00       0.00   60300.01       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    1255.05      -0.00       0.00      -0.00       0.00       0.00    1349.45

   46   4.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00   61172.06       0.00       0.00       0.00       0.00
                        -4298.48       0.00    1557.82       0.00      -0.00      -0.00      -0.00      51.83       0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.01       0.00       0.00       0.00       0.00   61172.20       0.00       0.00       0.00
                            0.00       0.00       0.00    1349.43       0.00       0.00      -0.00       0.00       0.00    1256.09

   48   6.2  1.5 -0.5    2512.18      -0.00       0.00       0.00       0.00       0.00       0.00   61172.17       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     -51.83      -0.00      -0.00   -2511.60       0.00

   49   7.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.05       0.00
                         2601.42       0.00     -32.14       0.00      -0.00      -0.00      -0.00    2511.60      -0.00       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.79
                            0.00       0.00      -0.00       0.00   -1349.45       0.00   -1256.09      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -2210.67      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00    2173.72       0.00       0.00       0.00      -0.00       0.00   -2337.26
                           -0.00      -0.00       0.00      -0.00    2173.72       0.00   -2337.24      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00   -2173.72       0.00       0.00       0.00      -0.00    2337.27      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1397.38      -0.00       0.00    2308.93       0.00

   54   3.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00   -1300.94       0.00      -0.00    2364.62      -0.00
                           -0.00      -0.00   -2173.72      -0.00       0.00       0.00      -0.00   -2337.27       0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00      -0.00      -0.00    1300.94       0.00    3812.29       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1397.38      -0.00       0.00       0.00      -0.00       0.00   -3722.59

   56   5.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00   -3812.29      -0.00      -0.00   -2097.37       0.00
                           -0.00      -0.00    2337.24       0.00       0.00      -0.00       0.00    2175.58      -0.00       0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00   -2337.27       0.00      -0.00       0.00      -0.00      -0.00    2175.61
                           -0.00      -0.00       0.00      -0.00    2337.27       0.00   -2175.58      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00      -0.00       0.00   -2364.62      -0.00    2097.37       0.00      -0.00       0.00
                           -0.00      -0.00       0.00   -2308.93      -0.00      -0.00       0.00       0.00      -0.00    2252.89

   59   8.2  1.5 -1.5       0.00       0.00    2337.26      -0.00       0.00      -0.00      -0.00   -2175.61      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00    3722.59      -0.00       0.00   -2252.89       0.00

   60   9.2  1.5 -1.5       0.00       0.00      -0.00       0.00    3829.07       0.00      -0.01       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00   -3829.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5       3.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1293.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5     -27.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5   -1292.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5     766.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5       4.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -51.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5      15.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -765.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    1234.51      -3.99       0.00       2.03       0.00    1255.46      -3.69      -4.06       6.50
                            8.38       3.58      -0.00       3.99    -750.99       4.06      -3.64   -1240.88      -0.00   -2239.61

   14   2.2  0.5 -0.5       0.00       4.08    1231.04      -0.00     -15.07      -0.00       4.15      27.39    1251.70     -48.26
                        -2585.62     -26.60      -0.00   -1231.06      -2.48   -1251.65      27.05      -4.10      -0.00      -7.40

   15   3.2  0.5 -0.5       0.00       3.50     -26.54       0.00    -699.15      -0.00       3.56    1270.75     -26.99   -2239.00
                           55.75   -1234.45      -0.00      26.55      -2.13      26.99    1255.17      -3.51      -0.00      -6.34

   16   4.2  0.5 -0.5       0.00     100.68   -1622.79      86.52     -68.85     -84.94     -98.64     -37.88    1603.18      -0.00
                            0.06     -40.18     -86.11   -1622.97    -168.52    1603.07     -39.37     101.85      86.18       0.07

   17   5.2  0.5 -0.5       0.00   -1631.73     -98.82      13.96     -59.80     -14.75    1598.68     -32.90      97.62      -0.00
                            0.00     -34.89     -14.42     -98.83    2731.23      97.62     -34.19   -1650.69      13.38      -1.18

   18   6.2  0.5 -0.5       0.00      32.53      43.67      28.63   -2799.89     -28.58     -31.87   -1540.36     -43.14      -0.04
                           -0.00   -1633.85     -28.73      43.68     -54.45     -43.14   -1600.95      32.91      28.28       0.02

   19   7.2  0.5 -0.5       0.00      -1.78     -22.92   -1337.23     -13.88   -2266.34       1.74      -7.64      22.64      -0.00
                            0.00      -8.10    -488.11     -22.92       2.97      22.64      -7.94      -1.80   -3108.14      -0.00

   20   8.2  0.5 -0.5       0.00       8.16      83.28    1319.37      51.82   -2281.40      -7.99      28.51     -82.27       0.00
                           -0.00      30.24   -1814.29      83.29     -13.65     -82.27      29.63       8.25     824.91       0.01

   21   9.2  0.5 -0.5       0.00      53.43      12.37      -0.00     785.50      -0.00     -28.94   -1427.76      -6.66    1327.42
                            7.28   -2604.08       0.01     -12.38      17.28       6.66   -1411.19      28.57       0.00      27.26

   22  10.2  0.5 -0.5       0.00    -174.40   -2603.77       0.00       4.79      -0.00      94.44      -8.71    1401.51       8.10
                        -1532.74     -15.90       0.00    2603.83     -56.41   -1401.50      -8.62     -93.25       0.00     -88.97

   23  11.2  0.5 -0.5       0.00   -2598.71     174.99       0.00      15.83       0.00    1407.26     -28.77     -94.19      26.75
                          103.01     -52.48       0.00    -174.99    -840.59      94.19     -28.44   -1389.56       0.00   -1325.83

   24  12.2  0.5 -0.5       0.00      -0.00      -0.01    2571.01      -0.00      -5.11       0.00       0.00      -0.00       0.00
                            0.00       0.00    2571.16      -0.00      -0.00      -0.00       0.00       0.00      -5.13       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4421.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5    4421.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00   -2173.72      -0.00      -0.00      -0.00       0.00      -0.00    2337.26      -0.00
                         2210.67      -0.00      -0.00    2173.72       0.00   -2337.24      -0.00      -0.00      -0.00       0.00

   44   2.2  1.5 -0.5       0.00    2173.72       0.00      -0.00      -0.00       0.00   -2337.27       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00    1397.38      -0.00       0.00    2308.93       0.00    3829.06

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00    1300.94      -0.00       0.00   -2364.62       0.00    3829.07
                           -0.00   -2173.72      -0.00      -0.00       0.00      -0.00   -2337.27       0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00   -1300.94       0.00   -3812.29      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00   -1397.38      -0.00      -0.00       0.00      -0.00       0.00   -3722.59       0.00

   47   5.2  1.5 -0.5       0.00       0.00      -0.00       0.00    3812.29      -0.00       0.00    2097.37      -0.00      -0.01
                           -0.00    2337.24       0.00       0.00      -0.00      -0.00    2175.58      -0.00       0.00       0.00

   48   6.2  1.5 -0.5       0.00      -0.00    2337.27      -0.00       0.00      -0.00      -0.00       0.00   -2175.61       0.00
                            0.00       0.00      -0.00    2337.27       0.00   -2175.58       0.00      -0.00      -0.00       0.00

   49   7.2  1.5 -0.5       0.00       0.00      -0.00    2364.62       0.00   -2097.37      -0.00      -0.00      -0.00       0.00
                            0.00       0.00   -2308.93      -0.00      -0.00       0.00       0.00       0.00    2252.89       0.00

   50   8.2  1.5 -0.5       0.00   -2337.26       0.00      -0.00       0.00       0.00    2175.61       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00    3722.59      -0.00       0.00   -2252.89      -0.00       0.00

   51   9.2  1.5 -0.5   62469.87       0.00      -0.00   -3829.07      -0.00       0.01      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00   -3829.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00   60299.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00   -4673.47      -0.00       0.00      96.43       0.00    6632.01

   53   2.2  1.5 -1.5      -0.00       0.00   60299.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3829.06      -0.00      -0.00   -3765.14      -0.00   -4048.29      -0.00      -0.00      -0.00       0.00

   54   3.2  1.5 -1.5   -3829.07       0.00       0.00   60300.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    3765.14      -0.00       0.00      -0.00       0.00       0.00    4048.36      -0.00

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   61172.06       0.00       0.00       0.00       0.00       0.00
                            0.00    4673.47       0.00      -0.00      -0.00      -0.00     155.49       0.00      -0.00       0.00

   56   5.2  1.5 -1.5       0.01       0.00       0.00       0.00       0.00   61172.20       0.00       0.00       0.00       0.00
                            0.00       0.00    4048.29       0.00       0.00      -0.00       0.00       0.00    3768.28      -0.00

   57   6.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00   61172.17       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00    -155.49      -0.00      -0.00   -7534.81       0.00       0.00

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.05       0.00       0.00
                            0.00     -96.43       0.00      -0.00      -0.00      -0.00    7534.81      -0.00       0.00       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61172.79       0.00
                            0.00      -0.00       0.00   -4048.36       0.00   -3768.28      -0.00      -0.00      -0.00       0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62469.87
                            0.00   -6632.01      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.32686243    -0.03460516    -7594.95      0.00000000        0.00      0.0000
     2  -262.32686243    -0.03460516    -7594.95      0.00000000        0.00      0.0000
     3  -262.32686064    -0.03460337    -7594.56      0.00000179        0.39      0.0000
     4  -262.32686064    -0.03460337    -7594.56      0.00000179        0.39      0.0000
     5  -262.22730699     0.06495029    14254.94      0.09955544    21849.89      2.7090
     6  -262.22730699     0.06495029    14254.94      0.09955544    21849.89      2.7090
     7  -262.05622030     0.23603697    51804.13      0.27064213    59399.08      7.3645
     8  -262.05622030     0.23603697    51804.13      0.27064213    59399.08      7.3645
     9  -262.05621843     0.23603884    51804.54      0.27064400    59399.49      7.3646
    10  -262.05621843     0.23603884    51804.54      0.27064400    59399.49      7.3646
    11  -262.05590450     0.23635277    51873.44      0.27095793    59468.39      7.3731
    12  -262.05590450     0.23635277    51873.44      0.27095793    59468.39      7.3731
    13  -262.05255940     0.23969787    52607.60      0.27430303    60202.56      7.4642
    14  -262.05255940     0.23969787    52607.60      0.27430303    60202.56      7.4642
    15  -262.05254783     0.23970945    52610.14      0.27431460    60205.10      7.4645
    16  -262.05254783     0.23970945    52610.14      0.27431460    60205.10      7.4645
    17  -262.05253128     0.23972599    52613.77      0.27433115    60208.73      7.4649
    18  -262.05253128     0.23972599    52613.77      0.27433115    60208.73      7.4649
    19  -262.04878878     0.24346850    53435.16      0.27807365    61030.11      7.5668
    20  -262.04878878     0.24346850    53435.16      0.27807365    61030.11      7.5668
    21  -262.04877179     0.24348548    53438.89      0.27809064    61033.84      7.5672
    22  -262.04877179     0.24348548    53438.89      0.27809064    61033.84      7.5672
    23  -262.04871372     0.24354356    53451.63      0.27814871    61046.59      7.5688
    24  -262.04871372     0.24354356    53451.63      0.27814871    61046.59      7.5688
    25  -262.04787504     0.24438223    53635.70      0.27898739    61230.65      7.5916
    26  -262.04787504     0.24438223    53635.70      0.27898739    61230.65      7.5916
    27  -262.04787447     0.24438280    53635.83      0.27898796    61230.78      7.5916
    28  -262.04787447     0.24438280    53635.83      0.27898796    61230.78      7.5916
    29  -262.04787407     0.24438321    53635.91      0.27898836    61230.87      7.5917
    30  -262.04787407     0.24438321    53635.91      0.27898836    61230.87      7.5917
    31  -262.04787216     0.24438511    53636.33      0.27899027    61231.29      7.5917
    32  -262.04787216     0.24438511    53636.33      0.27899027    61231.29      7.5917
    33  -262.03124787     0.26100941    57284.94      0.29561456    64879.90      8.0441
    34  -262.03124787     0.26100941    57284.94      0.29561456    64879.90      8.0441
    35  -262.03124167     0.26101561    57286.30      0.29562076    64881.26      8.0443
    36  -262.03124167     0.26101561    57286.30      0.29562076    64881.26      8.0443
    37  -261.98115565     0.31110163    68278.92      0.34570679    75873.87      9.4072
    38  -261.98115565     0.31110163    68278.92      0.34570679    75873.87      9.4072
    39  -261.97812010     0.31413717    68945.14      0.34874233    76540.09      9.4898
    40  -261.97812010     0.31413717    68945.14      0.34874233    76540.09      9.4898
    41  -261.97812003     0.31413724    68945.15      0.34874240    76540.11      9.4898
    42  -261.97812003     0.31413724    68945.15      0.34874240    76540.11      9.4898
    43  -261.97783768     0.31441959    69007.12      0.34902475    76602.08      9.4974
    44  -261.97783768     0.31441959    69007.12      0.34902475    76602.08      9.4974
    45  -261.97778793     0.31446934    69018.04      0.34907450    76613.00      9.4988
    46  -261.97778793     0.31446934    69018.04      0.34907450    76613.00      9.4988
    47  -261.97778782     0.31446945    69018.07      0.34907461    76613.02      9.4988
    48  -261.97778782     0.31446945    69018.07      0.34907461    76613.02      9.4988
    49  -261.97543374     0.31682353    69534.73      0.35142869    77129.68      9.5629
    50  -261.97543374     0.31682353    69534.73      0.35142869    77129.68      9.5629
    51  -261.97542791     0.31682936    69536.01      0.35143452    77130.96      9.5630
    52  -261.97542791     0.31682936    69536.01      0.35143452    77130.96      9.5630
    53  -261.97452575     0.31773153    69734.01      0.35233668    77328.96      9.5876
    54  -261.97452575     0.31773153    69734.01      0.35233668    77328.96      9.5876
    55  -261.94568025     0.34657702    76064.86      0.38118218    83659.82     10.3725
    56  -261.94568025     0.34657702    76064.86      0.38118218    83659.82     10.3725
    57  -261.93962943     0.35262785    77392.87      0.38723300    84987.82     10.5371
    58  -261.93962943     0.35262785    77392.87      0.38723300    84987.82     10.5371
    59  -261.93962753     0.35262974    77393.28      0.38723490    84988.24     10.5372
    60  -261.93962753     0.35262974    77393.28      0.38723490    84988.24     10.5372


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.008599056   0.575582264   0.003125628   0.576180853   0.074927946   0.571009510   0.021013583   0.002790896
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.178490257   0.004291608   0.786417662  -0.005889388  -0.017407982   0.002284209  -0.003727465   0.028263770
                        -0.112415564   0.018334612   0.000184001  -0.004229126   0.569006733  -0.087186642   0.000334900  -0.002685218

    3    3.2  0.5  0.5   0.004038167  -0.001815032  -0.016631504   0.001843063   0.002225354  -0.000291943   0.000171607  -0.000442496
                         0.013263487   0.786528517  -0.002124057  -0.210389942  -0.087156416  -0.569255131  -0.007808287  -0.000942124

    4    4.2  0.5  0.5   0.009693735   0.000405646   0.003177998  -0.000566830  -0.000000028   0.000000245  -0.008101778   0.025493836
                         0.006876400  -0.000018575   0.000173977   0.000288554   0.000002218  -0.000000239   0.002176155  -0.000693223

    5    5.2  0.5  0.5   0.000436295  -0.008711719   0.000280195   0.008689629  -0.000000500  -0.000003777   0.070646303   0.011058737
                         0.000474216   0.000021963   0.000038941   0.000249102   0.000000131   0.000000033   0.002082288   0.000977187

    6    6.2  0.5  0.5  -0.000375194   0.000168488  -0.000090084  -0.000162109   0.000000005   0.000000060  -0.001284997  -0.001106231
                         0.000052182   0.003184081   0.000174450   0.011899365   0.000000208   0.000002055   0.095759388   0.013540362

    7    7.2  0.5  0.5   0.003450822  -0.000055658   0.000042816   0.000003861  -0.000000237   0.000000026  -0.001652738   0.008658944
                        -0.005148586   0.000086143   0.010657960  -0.000046799   0.000000034   0.000000006  -0.011220244   0.087546660

    8    8.2  0.5  0.5  -0.006201381   0.000134245  -0.000168845  -0.000040609   0.000000120   0.000000001  -0.000628226   0.003304379
                         0.008664254  -0.000175859   0.006193291  -0.000280889  -0.000000111  -0.000000028  -0.008832634   0.050612614

    9    9.2  0.5  0.5  -0.000001711   0.000027923   0.000013760   0.000039137  -0.000066340  -0.000211079  -0.005251099  -0.004245386
                         0.000034064   0.002603265  -0.000007003  -0.000695306   0.001551753   0.012291407   0.090352947   0.011740213

   10   10.2  0.5  0.5   0.000589327  -0.000135865  -0.002601187  -0.000101895  -0.000271993   0.000831846  -0.029613869   0.347371144
                         0.000373285   0.000010832  -0.000000797  -0.000005124   0.012255955  -0.001534381   0.006671183  -0.032501778

   11   11.2  0.5  0.5  -0.000066216  -0.001901607   0.000156010  -0.001904033   0.001631302   0.012251460   0.252725877   0.011068429
                        -0.000023240   0.000045194  -0.000000073  -0.000011928  -0.000755377   0.000314717   0.001128328   0.002266948

   12   12.2  0.5  0.5   0.000001118  -0.000000015  -0.000000003  -0.000000000  -0.032028875   0.004202834  -0.000072129   0.000445598
                        -0.000001762   0.000000022   0.000002012  -0.000000022  -0.000992970   0.000024665  -0.000568311   0.004417156

   13    1.2  0.5 -0.5  -0.485160185   0.007248173  -0.576180800   0.003125628  -0.015794221   0.002072520   0.002778632  -0.020921242
                        -0.309700723   0.004626852   0.000247352  -0.000001342   0.570791032  -0.074899278  -0.000261353   0.001967812

   14    2.2  0.5 -0.5  -0.013482625  -0.210936916   0.005887571   0.786417510  -0.087216464  -0.569270530   0.028391026   0.003742447
                         0.013145140  -0.001283927  -0.004231654  -0.000521607  -0.000128262   0.001662498   0.000026665  -0.000015629

   15    3.2  0.5 -0.5  -0.421673641   0.010540404  -0.001933383  -0.016630590  -0.569029250   0.087184623  -0.000352326  -0.000902058
                         0.663944081  -0.009007040  -0.210389131   0.002131196  -0.016037525   0.000186259   0.000979422  -0.007757905

   16    4.2  0.5 -0.5  -0.000331926   0.011870832   0.000566954   0.003177923  -0.000000246  -0.000002218   0.025446724   0.008269961
                        -0.000233921  -0.000580279   0.000288311  -0.000175341   0.000000238  -0.000000033  -0.001697187   0.001407903

   17    5.2  0.5 -0.5   0.007331319   0.000622914  -0.008689522   0.000280178   0.000000137  -0.000000145   0.010918633  -0.070140865
                         0.004705984  -0.000164963   0.000252832  -0.000039061  -0.000003775   0.000000496  -0.002008486   0.008688793

   18    6.2  0.5 -0.5  -0.001855262  -0.000288175   0.000167217  -0.000090159   0.000002053  -0.000000208  -0.002369354   0.010246714
                         0.002593215  -0.000245864   0.011899295  -0.000174411   0.000000117  -0.000000011  -0.013377268   0.095218257

   19    7.2  0.5 -0.5   0.000000564   0.000138435  -0.000003881   0.000038241   0.000000005  -0.000000041   0.000422609   0.000594758
                         0.000102558   0.006196527  -0.000046797  -0.010657977   0.000000026   0.000000236  -0.087972816  -0.011325709

   20    8.2  0.5 -0.5  -0.000018531  -0.000565232   0.000040489  -0.000171504  -0.000000028   0.000000114  -0.001449747  -0.000201665
                        -0.000220465  -0.010639874  -0.000280906  -0.006193218   0.000000000  -0.000000117  -0.050699644  -0.008852651

   21    9.2  0.5 -0.5  -0.001424262   0.000016887  -0.000039436   0.000013763   0.012292543  -0.001552994  -0.005326140   0.013689102
                         0.002179276  -0.000029633  -0.000695289   0.000006997   0.000128984   0.000023393  -0.011291065   0.089464169

   22   10.2  0.5 -0.5   0.000108693   0.000697597   0.000101893  -0.002601186  -0.001556803  -0.012258789   0.348888304   0.030108457
                         0.000082235   0.000002453  -0.000005168   0.000001914   0.000789086  -0.000067113  -0.000170527   0.003868684

   23   11.2  0.5 -0.5   0.001578554  -0.000068318   0.001904028   0.000156010  -0.000024281   0.000800210   0.010807503  -0.251509656
                         0.001061282  -0.000016040  -0.000012745   0.000000006   0.012255477  -0.001609784  -0.003293487   0.024789820

   24   12.2  0.5 -0.5   0.000000001  -0.000000006   0.000000000  -0.000000004  -0.000091596   0.000106666   0.000029996   0.000018593
                         0.000000027   0.000002087  -0.000000022  -0.000002012   0.004201908   0.032044086  -0.004439474  -0.000572568

   25    1.2  1.5  1.5  -0.000376696  -0.027211512  -0.000071050  -0.007305579  -0.000000304  -0.000002640   0.134228618   0.019148940
                         0.000009992  -0.000113471   0.000006253   0.000013057  -0.000000018   0.000000035  -0.000521516  -0.001732946

   26    2.2  1.5  1.5   0.003558851  -0.000049122  -0.015676026   0.000155366   0.000299170  -0.000007389  -0.039109461   0.291067705
                         0.002245668  -0.000027394  -0.000004576  -0.000006117  -0.009649827   0.001266272   0.005179099  -0.027461430

   27    3.2  1.5  1.5   0.002245391  -0.000027396  -0.000004563  -0.000006144  -0.009649732   0.001266202   0.005175314  -0.027437600
                        -0.003558420   0.000049111   0.015676385  -0.000155345  -0.000299148   0.000007447   0.039075806  -0.290819543

   28    4.2  1.5  1.5   0.000004537  -0.000050632   0.000002737   0.000006032  -0.000001469   0.000001693   0.000142701   0.000462877
                         0.000168288   0.012154388   0.000034402   0.003533256   0.000067206   0.000512436   0.039706369   0.005643176

   29    5.2  1.5  1.5   0.001744404  -0.000021277  -0.000003553  -0.000004769  -0.012343296   0.001619674  -0.002482205   0.013157738
                        -0.002764469   0.000038159   0.012180594  -0.000120704  -0.000382665   0.000009510  -0.018745234   0.139491171

   30    6.2  1.5  1.5   0.000043713   0.003276792  -0.000121074  -0.012217015  -0.003248507  -0.024773471  -0.139456361  -0.018811458
                         0.000002607   0.000017130  -0.000004734   0.000008801  -0.000070819   0.000082446  -0.000032777  -0.000711877

   31    7.2  1.5  1.5   0.000002513   0.000018228  -0.000004794   0.000008697  -0.000070844   0.000082513  -0.000035457  -0.000720477
                        -0.000047257  -0.003533062   0.000120450   0.012154510   0.003250688   0.024790089   0.138256355   0.018644278

   32    8.2  1.5  1.5   0.002765947  -0.000038169  -0.012180658   0.000120722   0.000382675  -0.000009481   0.018725482  -0.139353620
                         0.001745339  -0.000021290  -0.000003557  -0.000004754  -0.012343409   0.001619725  -0.002482168   0.013145249

   33    9.2  1.5  1.5   0.000017519  -0.000199171   0.000011032   0.000022875  -0.000000000  -0.000000011  -0.000453838  -0.001505643
                         0.000661027   0.047751036   0.000124640   0.012818870  -0.000000192  -0.000001386  -0.116991779  -0.016687086

   34    1.2  1.5  0.5  -0.002056949   0.000028404   0.009071879  -0.000089914   0.000346929  -0.000008619   0.022222870  -0.165309012
                        -0.001297955   0.000015836   0.000002615   0.000003526  -0.011190468   0.001468441  -0.002947739   0.015581677

   35    2.2  1.5  0.5   0.000282326   0.020571662  -0.000138563  -0.013901903  -0.000736694  -0.005618056   0.257374041   0.034112330
                        -0.000001918   0.000090984  -0.000010635   0.000005570  -0.000016052   0.000018738   0.000384290   0.002717644

   36    3.2  1.5  0.5   0.000009618  -0.000039970  -0.000003365   0.000020573  -0.000015918   0.000018539  -0.000221528   0.000712890
                         0.000152144   0.010814120   0.000220243   0.022304327   0.000730459   0.005570592  -0.414021588  -0.056449348

   37    4.2  1.5  0.5   0.001886345  -0.000023319  -0.000003476  -0.000004833  -0.024786591   0.003252492  -0.002482658   0.013096213
                        -0.002988899   0.000041210   0.012156394  -0.000120473  -0.000768447   0.000019099  -0.018641634   0.138784035

   38    5.2  1.5  0.5  -0.000004461   0.000050789  -0.000002813  -0.000005831   0.000061086  -0.000071145  -0.000147225  -0.000480718
                        -0.000168552  -0.012176016  -0.000031782  -0.003268347  -0.002802339  -0.021370828  -0.036836429  -0.005259629

   39    6.2  1.5  0.5   0.010327551  -0.000140171   0.003281702  -0.000031912   0.000000303  -0.000000011  -0.005434501   0.037806712
                         0.006532104  -0.000094808   0.000004454  -0.000002829  -0.000009419   0.000001227   0.000023792  -0.003408679

   40    7.2  1.5  0.5   0.006497511  -0.000094369   0.000004519  -0.000002722   0.000508115  -0.000066677   0.000078926  -0.003666867
                        -0.010272729   0.000139418  -0.003534093   0.000034401   0.000015759  -0.000000388   0.005795777  -0.040526539

   41    8.2  1.5  0.5  -0.000169207  -0.012223132  -0.000031655  -0.003255575   0.002809385   0.021424716  -0.037264771  -0.005314723
                         0.000004462  -0.000051000   0.000002842   0.000005829   0.000061246  -0.000071332   0.000142536   0.000483834

   42    9.2  1.5  0.5  -0.006841037   0.000083449   0.000013946   0.000018661  -0.000002421   0.000000317  -0.007755185   0.041095836
                         0.010841425  -0.000149634  -0.047749857   0.000473193  -0.000000077  -0.000000002  -0.058557280   0.435718749

   43    1.2  1.5 -0.5   0.000032462   0.002432193  -0.000089916  -0.009071877  -0.001468117  -0.011195782   0.166041733   0.022401255
                         0.000001935   0.000012722  -0.000003487   0.000006510  -0.000032002   0.000037266   0.000032885   0.000853730

   44    2.2  1.5 -0.5   0.017388877  -0.000236941  -0.013901904   0.000138558  -0.000174127   0.000004331  -0.033707936   0.256207069
                         0.010992203  -0.000153526   0.000000398  -0.000010695   0.005615388  -0.000736856   0.005900142  -0.024484328

   45    3.2  1.5 -0.5   0.005785010  -0.000089971   0.000010998   0.000003460  -0.005567948   0.000730620  -0.005995942   0.038550391
                        -0.009136764   0.000123068  -0.022304334   0.000220242  -0.000172615   0.000004292  -0.056134533   0.412222988

   46    4.2  1.5 -0.5   0.000002517   0.000018216  -0.000004781   0.000008695   0.000070872  -0.000082551  -0.000042268  -0.000726057
                        -0.000047283  -0.003534329   0.000120475   0.012156391  -0.003251776  -0.024798363   0.139400565   0.018792204

   47    5.2  1.5 -0.5  -0.006508679   0.000094452  -0.000004428   0.000002799   0.021360683  -0.002802957  -0.000013931   0.003302959
                         0.010290532  -0.000139673   0.003268349  -0.000031783   0.000662238  -0.000016450  -0.005281533   0.036688344

   48    6.2  1.5 -0.5  -0.000169164  -0.012219824  -0.000031910  -0.003281700  -0.000001227  -0.000009423  -0.037959782  -0.005412848
                         0.000004493  -0.000050962   0.000002842   0.000005863  -0.000000023   0.000000043   0.000146699   0.000485225

   49    7.2  1.5 -0.5  -0.000004528   0.000050624  -0.000002736  -0.000006036  -0.000001456   0.000001699  -0.000144344  -0.000464165
                        -0.000168293  -0.012155001  -0.000034400  -0.003534091   0.000066662   0.000508357  -0.040691835  -0.005777700

   50    8.2  1.5 -0.5  -0.010330359   0.000140224  -0.003255578   0.000031656   0.000663916  -0.000016486   0.005336677  -0.037114365
                        -0.006533853   0.000094805  -0.000004431   0.000002828  -0.021414545   0.002810004  -0.000015988   0.003347740

   51    9.2  1.5 -0.5  -0.000010173  -0.000067059   0.000018458  -0.000034445   0.000000011  -0.000000010  -0.000112477  -0.002237525
                         0.000171028   0.012819196  -0.000473201  -0.047749847  -0.000000317  -0.000002422   0.437652469   0.059026193

   52    1.2  1.5 -1.5   0.022997728  -0.000312142   0.007305584  -0.000071052   0.000000108   0.000000010   0.019227075  -0.133687612
                         0.014545919  -0.000211109   0.000009921  -0.000006223  -0.000002638   0.000000304  -0.000067867   0.012050581

   53    2.2  1.5 -1.5   0.000056145   0.004208083  -0.000155369  -0.015676023   0.001265992   0.009654410   0.292360278   0.039422597
                         0.000003341   0.000022013  -0.000006051   0.000011306   0.000027639  -0.000032139   0.000083794   0.001493945

   54    3.2  1.5 -1.5  -0.000003333  -0.000022014   0.000006078  -0.000011293  -0.000027579   0.000032120  -0.000083309  -0.001493329
                         0.000056136   0.004207571  -0.000155347  -0.015676382   0.001265924   0.009654315   0.292110974   0.039388735

   55    4.2  1.5 -1.5  -0.006497174   0.000094374  -0.000004515   0.000002723   0.000512193  -0.000067221  -0.000067611   0.003576219
                         0.010272217  -0.000139409   0.003533259  -0.000034403   0.000015866  -0.000000391  -0.005661724   0.039545249

   56    5.2  1.5 -1.5  -0.000002597  -0.000017101   0.000004717  -0.000008783  -0.000035294   0.000041101   0.000037303   0.000715905
                         0.000043613   0.003268783  -0.000120706  -0.012180591   0.001619318   0.012349158  -0.140110354  -0.018895307

   57    6.2  1.5 -1.5  -0.002771236   0.000038249   0.012217018  -0.000121072   0.000767653  -0.000019063  -0.018662131   0.138840475
                        -0.001748688   0.000021323   0.000003556   0.000004786  -0.024761712   0.003249223   0.002470343  -0.013091988

   58    7.2  1.5 -1.5   0.001885653  -0.000023309  -0.000003479  -0.000004846   0.024778322  -0.003251404  -0.002463250   0.012982283
                        -0.002987838   0.000041185   0.012154512  -0.000120448   0.000768179  -0.000019098  -0.018494880   0.137645491

   59    8.2  1.5 -1.5   0.000043628   0.003270532  -0.000120724  -0.012180655   0.001619367   0.012349271  -0.139972238  -0.018875638
                         0.000002592   0.000017108  -0.000004702   0.000008786   0.000035324  -0.000041107  -0.000037750  -0.000717717

   60    9.2  1.5 -1.5  -0.025525284   0.000370442  -0.000017372   0.000010979  -0.000001386   0.000000192   0.000063632  -0.010503821
                         0.040356672  -0.000547756   0.012818878  -0.000124645  -0.000000049   0.000000006   0.016754753  -0.116520179


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.020947882   0.000350244  -0.020382380  -0.003904027  -0.000000008   0.000065041   0.000001413   0.000018198
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000133900   0.006428073   0.003948039  -0.020612646   0.000029196   0.000000192  -0.000096007   0.000005924
                         0.000541968  -0.003977547   0.000403496   0.000253541   0.000011460   0.000000684   0.000044803  -0.000000326

    3    3.2  0.5  0.5  -0.000115711   0.000049623  -0.000086795   0.000444728  -0.000000503  -0.000000011   0.000001504  -0.000003041
                         0.028915237   0.000592106   0.020136408   0.003920092  -0.000000235   0.000030123   0.000006798   0.000124606

    4    4.2  0.5  0.5   0.006024831  -0.085394173  -0.000107711   0.000298191   0.057308023  -0.004193824  -0.038749582  -0.002923490
                         0.000196526   0.046000451   0.000000779   0.000038320   0.024401140  -0.002792850   0.018903014  -0.000569028

    5    5.2  0.5  0.5  -0.070153718  -0.006715249   0.000732478   0.000162421   0.003506608   0.067040341   0.003035980   0.085315658
                         0.000003002   0.003048761   0.000000558   0.000002473   0.001656463  -0.002381449   0.001685891   0.002660034

    6    6.2  0.5  0.5   0.001384586   0.001015288  -0.000009088  -0.000007044  -0.001710591  -0.001325928   0.000920259  -0.002546311
                         0.025598733  -0.002414114   0.000290675   0.000065944  -0.000280246  -0.113276226   0.001964478   0.034534395

    7    7.2  0.5  0.5   0.000067542   0.026051740  -0.000001689  -0.000004668  -0.010756295   0.000076855   0.039591750  -0.002649473
                        -0.001002619   0.044898908   0.000280265  -0.001436230   0.029258484  -0.000580236   0.086631681  -0.005138174

    8    8.2  0.5  0.5   0.000885809  -0.042330877  -0.000001777  -0.000013135  -0.016626915  -0.000322845   0.020463438  -0.001811011
                         0.001027053  -0.078877543  -0.000074973   0.000337445   0.033012277   0.002052234   0.038853349  -0.003035036

    9    9.2  0.5  0.5  -0.003131428  -0.002712873  -0.005709307  -0.002757603   0.000000294  -0.000006267  -0.000013077  -0.000069414
                        -0.345834375  -0.005821495   0.345213044   0.067297723  -0.000000218   0.000149553   0.000088139   0.001362545

   10   10.2  0.5  0.5   0.014759915   0.081152836  -0.043098102   0.343244061  -0.000099416   0.000014286   0.001231040   0.000045667
                        -0.003016884  -0.050249804   0.002581733  -0.002406708  -0.000037773   0.000001645  -0.000568668   0.000049916

   11   11.2  0.5  0.5   0.256755237  -0.000938228   0.346085763   0.043802691   0.000006379   0.000222316   0.000030887   0.001812456
                        -0.005856715   0.003087576   0.005932102   0.001326272   0.000002189   0.000005677   0.000047354   0.000067765

   12   12.2  0.5  0.5  -0.000007988   0.002298122  -0.001023679   0.005439831   0.000136819  -0.000000347   0.001199539  -0.000081288
                        -0.000072127   0.003721734  -0.128623627   0.659987847  -0.000353642  -0.000000650   0.002577219  -0.000159097

   13    1.2  0.5 -0.5  -0.000299763   0.017928613   0.003903786  -0.020381119  -0.000060407  -0.000000008   0.000016677  -0.000001294
                         0.000181145  -0.010834142  -0.000043426   0.000226719  -0.000024110  -0.000000003  -0.000007283   0.000000565

   14    2.2  0.5 -0.5  -0.007558747  -0.000394904   0.020614191   0.003943307  -0.000000432   0.000031364   0.000005559   0.000105914
                        -0.000079686  -0.000394601   0.000024245  -0.000447386   0.000000564   0.000000179  -0.000002072   0.000002634

   15    3.2  0.5 -0.5   0.000263764  -0.015053852  -0.000401096  -0.000310772  -0.000011156  -0.000000554  -0.000052657   0.000001342
                         0.000532429  -0.024687768   0.003924796  -0.020134197   0.000027981   0.000000032  -0.000112974   0.000006832

   16    4.2  0.5 -0.5   0.096877308   0.005054815  -0.000297746  -0.000107713   0.004930330   0.062270475  -0.002451398   0.043076229
                        -0.004795154  -0.003284213   0.000041635   0.000000419  -0.001039237  -0.001418803   0.001691518   0.001814533

   17    5.2  0.5 -0.5   0.007324168  -0.060043843  -0.000162383   0.000732426  -0.061381206   0.003870822   0.077120136  -0.002107490
                        -0.000863758   0.036280589   0.000004280  -0.000008705  -0.027063372  -0.000238562  -0.036583081   0.002760052

   18    6.2  0.5 -0.5  -0.002117520  -0.012054517   0.000007777  -0.000012320   0.043222514  -0.001692605  -0.016154980  -0.000057109
                        -0.001541060  -0.022625226   0.000065862  -0.000290556  -0.104714258  -0.000373829  -0.030628823   0.002168592

   19    7.2  0.5 -0.5   0.000924656   0.000576357  -0.000011307  -0.000004806   0.000143712   0.000856050  -0.000371602  -0.001610481
                         0.051901350   0.000823177  -0.001436193  -0.000280229  -0.000567387  -0.031161257   0.005769094   0.095236344

   20    8.2  0.5 -0.5  -0.004565454   0.000226948   0.000016888  -0.000000943  -0.000460911  -0.003204796  -0.000444947  -0.003203003
                        -0.089402050  -0.001337158   0.000337278   0.000074988   0.002025698  -0.036823824   0.003506170   0.043795842

   21    9.2  0.5 -0.5  -0.000688989   0.176183752   0.003506004  -0.009548858  -0.000049619   0.000000193  -0.000608935   0.000047259
                        -0.006385513   0.297607974   0.067262886  -0.345128181   0.000141221   0.000000312  -0.001220878   0.000075538

   22   10.2  0.5 -0.5  -0.095445030   0.014192850  -0.343249597  -0.043124154  -0.000013878  -0.000106335   0.000021872  -0.001355741
                        -0.001035328  -0.005051703   0.001411445  -0.002102180  -0.000003768  -0.000001771  -0.000064020  -0.000028446

   23   11.2  0.5 -0.5   0.002399878   0.222777536  -0.043785229   0.345998368  -0.000208581   0.000006736   0.001633845  -0.000009353
                         0.002157309  -0.127779975   0.001813420  -0.009781347  -0.000077139   0.000000332  -0.000787489   0.000055758

   24   12.2  0.5 -0.5  -0.000042025   0.000030467   0.001901742   0.000407103   0.000000563  -0.000004022  -0.000010819  -0.000067813
                         0.004373889   0.000065863   0.660007525   0.128627057  -0.000000475   0.000379165   0.000178332   0.002841893

   25    1.2  1.5  1.5   0.508004627   0.008944122  -0.003573191  -0.000710546   0.000521098   0.510352945   0.009663970   0.155098747
                         0.002681794  -0.002023532   0.000015198   0.000003106   0.000138187   0.000133155   0.000699547   0.003770082

   26    2.2  1.5  1.5  -0.002077882   0.067770667  -0.037311832   0.191426812   0.032508135  -0.000009099  -0.318916978   0.019585860
                        -0.000828372  -0.042076778   0.000311315  -0.001584001   0.012846634   0.000028458   0.148230275  -0.010225552

   27    3.2  1.5  1.5  -0.000821382  -0.042362685   0.000311455  -0.001604066  -0.061220473  -0.000003187   0.000810209  -0.000066206
                         0.002084203  -0.068238388   0.037660535  -0.193208847   0.153497066  -0.000104688   0.001824219  -0.000085050

   28    4.2  1.5  1.5  -0.000729790   0.000540239  -0.000000829  -0.000000298  -0.000084656  -0.000080513  -0.000421568  -0.002275515
                         0.139154408   0.002450921   0.000434851   0.000081086   0.000319855   0.314189875   0.005825974   0.093509255

   29    5.2  1.5  1.5   0.000398833   0.019984348  -0.000061442   0.000289370   0.012726504  -0.000018663  -0.106254668   0.007332804
                        -0.000991353   0.032184770  -0.006766439   0.034709322  -0.031696286   0.000031592  -0.228635519   0.014032674

   30    6.2  1.5  1.5   0.037004412   0.000627879  -0.071761957  -0.013982309  -0.000035074  -0.046376169   0.007898811   0.126108052
                         0.000450014  -0.000847459   0.000211055   0.000050332  -0.000005255   0.000027332   0.000555627   0.002930439

   31    7.2  1.5  1.5   0.000464631  -0.000856753   0.000210864   0.000049986  -0.000003523   0.000028303   0.000566983   0.002989818
                        -0.039854689  -0.000677848   0.071639416   0.013958514   0.000028526   0.039951712  -0.008052704  -0.128579651

   32    8.2  1.5  1.5   0.001003016  -0.032831302   0.006693466  -0.034325752   0.097096677  -0.000071229   0.116521623  -0.007136778
                         0.000393539   0.020379897  -0.000058671   0.000288203   0.038768702  -0.000007093  -0.054132443   0.003741439

   33    9.2  1.5  1.5   0.002329459  -0.001757768   0.000008113   0.000001444  -0.000000705   0.000001774   0.000004708   0.000020355
                        -0.441553134  -0.007773365   0.002043711   0.000411964  -0.000000721  -0.000584848  -0.000054361  -0.000878392

   34    1.2  1.5  0.5   0.001176396  -0.037950968  -0.043338516   0.222391278   0.209637511  -0.000167948   0.558772350  -0.034270625
                         0.000475249   0.023562473   0.000336466  -0.001827814   0.083821868  -0.000041201  -0.259650976   0.017928088

   35    2.2  1.5  0.5  -0.383776717  -0.006697574   0.116283351   0.022665141   0.000535975   0.554496286  -0.010920154  -0.173667739
                        -0.002637909   0.003211382  -0.000344680  -0.000085408   0.000133701   0.000045896  -0.000752970  -0.003891614

   36    3.2  1.5  0.5   0.000463006   0.000871882  -0.000344420  -0.000085989  -0.000107694  -0.000179654  -0.001951077  -0.010362842
                        -0.204585980  -0.003658868  -0.115833547  -0.022556822   0.000364596   0.327837740   0.027501741   0.439772846

   37    4.2  1.5  0.5   0.000380508   0.021622946  -0.000112230   0.000569708  -0.019084400   0.000008374   0.052505476  -0.003625456
                        -0.001043083   0.034863843  -0.013373888   0.068611354   0.047743250  -0.000039650   0.112996534  -0.006930826

   38    5.2  1.5  0.5   0.000744584  -0.000561961  -0.000165070  -0.000035659   0.000006742   0.000053744   0.000878760   0.004644579
                        -0.140855428  -0.002478172  -0.057589094  -0.011219624  -0.000002410   0.014652111  -0.012466927  -0.199127279

   39    6.2  1.5  0.5   0.002440584  -0.121613356   0.000234376  -0.001230351  -0.155274967   0.000194671  -0.007819366   0.000510284
                        -0.000813267   0.074368158  -0.000001864   0.000010928  -0.061953816   0.000032665   0.003573194  -0.000249404

   40    7.2  1.5  0.5  -0.000812434   0.073065410   0.000003687  -0.000017611  -0.092199357   0.000019402  -0.058406282   0.004021586
                        -0.002391100   0.119494061   0.000401588  -0.002038045   0.231233215  -0.000241210  -0.125496438   0.007689082

   41    8.2  1.5  0.5  -0.141219263  -0.002486762   0.060373388   0.011770741  -0.000103950  -0.118971372   0.010471705   0.167105705
                        -0.000744666   0.000564146  -0.000174600  -0.000037337  -0.000021176   0.000026650   0.000734314   0.003866343

   42    9.2  1.5  0.5   0.001246300   0.062309440  -0.000013711  -0.000016537  -0.000142564  -0.000001265  -0.000119638   0.000008010
                        -0.003092136   0.100350839   0.000696241  -0.003618967   0.000359631  -0.000000851  -0.000258031   0.000015830

   43    1.2  1.5 -0.5  -0.044667397  -0.000761043   0.222397851   0.043339578  -0.000171256  -0.225774162   0.038581446   0.615987227
                        -0.000538301   0.001015176  -0.000646022  -0.000145622  -0.000023992   0.000138111   0.002713681   0.014314504

   44    2.2  1.5 -0.5  -0.007393147   0.327097721   0.022664689  -0.116279991   0.515007785  -0.000547351   0.157594606  -0.009706061
                         0.000715435  -0.200745133  -0.000166708   0.000948795   0.205506971  -0.000074508  -0.073072352   0.005060543

   45    3.2  1.5 -0.5   0.002638564  -0.106207136   0.000164922  -0.000944052   0.121361309  -0.000035133   0.185504367  -0.012794859
                         0.002680574  -0.174859035   0.022556383  -0.115830212  -0.304547285   0.000378542   0.398867991  -0.024422204

   46    4.2  1.5 -0.5   0.000474970  -0.000865142  -0.000193511  -0.000036538  -0.000006921   0.000026482   0.000548547   0.002892994
                        -0.041022113  -0.000695944  -0.068613446  -0.013374309   0.000039929   0.051416257  -0.007802524  -0.124565935

   47    5.2  1.5 -0.5   0.000800734  -0.073487000   0.000089143  -0.000475520   0.005481395  -0.000005368  -0.083951903   0.005794875
                         0.002411630  -0.120168493   0.011219326  -0.057587367  -0.013588287  -0.000004737  -0.180624814   0.011073207

   48    6.2  1.5 -0.5  -0.142547770  -0.002509434  -0.001230396  -0.000234383   0.000192911   0.167178319  -0.000567450  -0.008595881
                        -0.000751462   0.000566209   0.000002758   0.000000743   0.000041826   0.000019952  -0.000024330  -0.000145039

   49    7.2  1.5 -0.5   0.000732571  -0.000541329   0.000005060   0.000000781  -0.000071396  -0.000086703  -0.000608095  -0.003297832
                        -0.140060159  -0.002466652   0.002038114   0.000401604   0.000231217   0.248936766   0.008655943   0.138382708

   50    8.2  1.5 -0.5  -0.002420112   0.120479845   0.011770428  -0.060371595  -0.110485286   0.000104393  -0.151591158   0.009302562
                         0.000803307  -0.073675245  -0.000093595   0.000496961  -0.044126972   0.000018867   0.070422909  -0.004863967

   51    9.2  1.5 -0.5   0.001427666  -0.002665905   0.000023719   0.000021454  -0.000001490  -0.000000907  -0.000001005  -0.000006368
                        -0.118113162  -0.002001879   0.003618927   0.000696045   0.000000322   0.000386857   0.000017713   0.000284346

   52    1.2  1.5 -1.5  -0.008701545   0.433397658   0.000710536  -0.003573139  -0.474041816   0.000535197   0.140626300  -0.008576254
                         0.002893980  -0.265032757  -0.000004798   0.000024548  -0.189062166   0.000064827  -0.065529221   0.004508830

   53    2.2  1.5 -1.5  -0.079764617  -0.001349962  -0.191432588  -0.037312986  -0.000002099   0.034954265   0.022041333   0.351586364
                        -0.000961493   0.001783647   0.000545393   0.000103734   0.000029804   0.000119272   0.001532141   0.008202539

   54    3.2  1.5 -1.5   0.000964288  -0.001780934  -0.000545152  -0.000107474   0.000041768   0.000041987  -0.000026633  -0.000012394
                        -0.080312793  -0.001358987  -0.193214736  -0.037661669  -0.000096048  -0.165255239   0.000104439   0.001996011

   55    4.2  1.5 -1.5   0.000805231  -0.072594580   0.000001200  -0.000005666  -0.116394177   0.000039944  -0.039509976   0.002718027
                         0.002377073  -0.118720296   0.000081078  -0.000434815   0.291835021  -0.000328449  -0.084782784   0.005170302

   56    5.2  1.5 -1.5  -0.000458150   0.000854071   0.000096730   0.000013827   0.000005622   0.000070105   0.001103695   0.005868178
                         0.037881706   0.000642193   0.034710394   0.006766704   0.000036260   0.034155725  -0.015794550  -0.252051224

   57    6.2  1.5 -1.5  -0.000975683   0.031438129   0.013982004  -0.071759865   0.043061931  -0.000034523   0.114394770  -0.007016231
                        -0.000400577  -0.019523652  -0.000105200   0.000587187   0.017216849  -0.000008121  -0.053156983   0.003670481

   58    7.2  1.5 -1.5   0.000382688   0.021010312   0.000105282  -0.000586016  -0.014836230   0.000007302   0.054200593  -0.003742479
                        -0.001023257   0.033870030   0.013958206  -0.071637329   0.037094830  -0.000027799   0.116636021  -0.007152717

   59    8.2  1.5 -1.5   0.038639628   0.000654913   0.034326834   0.006693705   0.000068783   0.104550355  -0.008037680  -0.128447540
                         0.000462304  -0.000855572  -0.000093630  -0.000015786   0.000019817  -0.000013239  -0.000572409  -0.002973150

   60    9.2  1.5 -1.5  -0.002515929   0.230362820   0.000003139  -0.000014621   0.000215153  -0.000000922   0.000370207  -0.000026071
                        -0.007562080   0.376706209   0.000411954  -0.002043674  -0.000543838   0.000000408   0.000796827  -0.000047933


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000004548   0.000018016   0.000020451   0.000091447  -0.000001387   0.000040995   0.000032421  -0.000004745
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000068219   0.000016319   0.000019108  -0.000003965  -0.000065425  -0.000002508   0.000000488   0.000003463
                        -0.000004538   0.000003383  -0.000015945   0.000006115  -0.000022328  -0.000001503  -0.000004353  -0.000034948

    3    3.2  0.5  0.5   0.000001003  -0.000001971  -0.000000390  -0.000000065   0.000001347   0.000000058   0.000000026   0.000000057
                         0.000026444   0.000109424   0.000025541   0.000112273   0.000001904  -0.000035305   0.000037042  -0.000004664

    4    4.2  0.5  0.5   0.076533533  -0.020544354  -0.338873450   0.092938519  -0.141252636  -0.030129472   0.024980054  -0.053342242
                         0.000386399  -0.000217765   0.344116946  -0.074477431  -0.041127011   0.008185783   0.080850437   0.451054379

    5    5.2  0.5  0.5   0.012803126   0.032608807  -0.076464484  -0.254432170  -0.024763698   0.397569673  -0.497605417   0.069799751
                        -0.000366430   0.000494579   0.023991124  -0.004241776  -0.002660325   0.006740865   0.014804362   0.027589486

    6    6.2  0.5  0.5  -0.002062445  -0.000098384   0.018707403   0.000776615   0.004081794  -0.006579325   0.008313227   0.000554606
                        -0.003555324  -0.006683128   0.021138019   0.092797189  -0.011453407   0.382050903   0.563975374  -0.095568803

    7    7.2  0.5  0.5  -0.002352249   0.000544200  -0.209386195   0.046575485  -0.201111338  -0.006318302  -0.006046808  -0.037532699
                         0.047408002  -0.011397037  -0.230908183   0.052270401   0.582480584   0.025467157   0.003383363   0.002327069

    8    8.2  0.5  0.5   0.002378458  -0.000639387   0.412079570  -0.090709300  -0.093513833  -0.005013576  -0.009941401  -0.084588687
                        -0.087514928   0.021107885   0.436282700  -0.099945466   0.298152379   0.004833265  -0.014890680  -0.030243223

    9    9.2  0.5  0.5  -0.000016284  -0.000037656  -0.000003482  -0.000011076   0.000002901  -0.000001195  -0.000016201   0.000001862
                         0.000231741   0.000971878  -0.000180887  -0.000809849  -0.000004701   0.000125663  -0.000187778   0.000028112

   10   10.2  0.5  0.5   0.000966426  -0.000145380   0.000197023   0.000002826  -0.000480339  -0.000012687   0.000056634   0.000007306
                         0.000071546  -0.000007945  -0.000163058   0.000031556  -0.000163751  -0.000004661  -0.000024382  -0.000158976

   11   11.2  0.5  0.5   0.000228499   0.001235242   0.000136617   0.000666766   0.000028587   0.000103269   0.000818125  -0.000121422
                         0.000006392   0.000038268   0.000007489  -0.000016126   0.000010508   0.000002822  -0.000000100   0.000007975

   12   12.2  0.5  0.5  -0.000142688   0.000029963  -0.000025581   0.000005768   0.000013572   0.000000676  -0.000037283  -0.000251115
                         0.001933479  -0.000463099  -0.000030081   0.000006659  -0.000040500  -0.000001622  -0.000002663  -0.000025227

   13    1.2  0.5 -0.5   0.000017946  -0.000004530   0.000069296  -0.000015497   0.000038841   0.000001314  -0.000000480  -0.000003282
                         0.000001585  -0.000000400  -0.000059672   0.000013345   0.000013115   0.000000444   0.000004720   0.000032255

   14    2.2  0.5 -0.5   0.000016554   0.000068353  -0.000006995  -0.000024884  -0.000002857   0.000069129   0.000035119  -0.000004380
                        -0.000001934   0.000001482  -0.000002046   0.000000386   0.000000621  -0.000000225   0.000000092   0.000000045

   15    3.2  0.5 -0.5   0.000007666  -0.000003326  -0.000073310   0.000016962  -0.000011239  -0.000001885   0.000004646   0.000036849
                        -0.000109173   0.000026253  -0.000085034   0.000019099   0.000033469   0.000001374   0.000000415   0.000003775

   16    4.2  0.5 -0.5  -0.020483822  -0.076270651   0.119024148   0.481332081  -0.025927481   0.146986492  -0.454137073   0.077906816
                        -0.001590890  -0.006349704  -0.004208112   0.039637303  -0.017394192   0.006221683   0.007413976   0.033035196

   17    5.2  0.5 -0.5   0.032525834  -0.012721217  -0.190032546   0.073597097   0.378833649   0.024313406  -0.020382883   0.065094404
                         0.002376766  -0.001491626   0.169237564  -0.031715275   0.120797973   0.005401511  -0.072233808  -0.493551455

   18    6.2  0.5 -0.5  -0.000686087   0.002367297  -0.059963968  -0.000382780   0.115986489  -0.000203290   0.095134134   0.560237574
                         0.006648546  -0.003360046  -0.070825448   0.028224745  -0.364078720  -0.012157312   0.009121419   0.065354365

   19    7.2  0.5 -0.5  -0.000460799  -0.001828565   0.001185656   0.007992737   0.002160803   0.004204285  -0.006114061   0.003978026
                         0.011400713   0.047431088  -0.070000463  -0.311604371  -0.026150104   0.616207534   0.037104406  -0.005673301

   20    8.2  0.5 -0.5   0.001220491   0.005331685  -0.003519664  -0.027575221  -0.003203924  -0.006780854   0.021526101  -0.013807970
                        -0.021082268  -0.087384740   0.134925481   0.599492930  -0.006183144   0.312399901   0.087215396  -0.011397534

   21    9.2  0.5 -0.5   0.000048011  -0.000004172   0.000520054  -0.000115395   0.000039068  -0.000001244  -0.000027779  -0.000185173
                        -0.000971422   0.000232275   0.000620904  -0.000139342  -0.000119441  -0.000005382  -0.000004697  -0.000035125

   22   10.2  0.5 -0.5  -0.000145515  -0.000968973  -0.000018449  -0.000255697  -0.000013511   0.000507482   0.000158899  -0.000029989
                        -0.000004878  -0.000013772  -0.000025756   0.000005003   0.000000357  -0.000001483   0.000008823   0.000053875

   23   11.2  0.5 -0.5   0.001233818  -0.000228175   0.000515777  -0.000098637   0.000098745  -0.000030446  -0.000020224  -0.000082907
                         0.000070576  -0.000013740  -0.000422861   0.000094821   0.000030363   0.000000811   0.000119991   0.000813913

   24   12.2  0.5 -0.5  -0.000010904  -0.000028003   0.000000025  -0.000000244   0.000000122   0.000000098  -0.000000320   0.000001125
                         0.000463939   0.001938534  -0.000008810  -0.000039486   0.000001753  -0.000042713   0.000252379  -0.000037361

   25    1.2  1.5  1.5   0.031469920   0.131607931  -0.003696114  -0.016483299  -0.000068271   0.001653059  -0.045273378   0.006659257
                         0.000666180   0.002021528  -0.000001454  -0.000065104   0.000000990  -0.000007598  -0.000124129   0.000167578

   26    2.2  1.5  1.5   0.521151182  -0.124941502  -0.042216513   0.009494386  -0.031424792  -0.001258495  -0.000183869  -0.001653834
                         0.037946125  -0.008440718   0.036631552  -0.008182656  -0.010718651  -0.000352541   0.002455365   0.016621203

   27    3.2  1.5  1.5  -0.043853273   0.009756351  -0.043242626   0.009664213  -0.001436234  -0.000054611  -0.002805976  -0.019012495
                         0.602465965  -0.144421080  -0.049847107   0.011202732   0.004179800   0.000180821  -0.000207917  -0.001889253

   28    4.2  1.5  1.5  -0.000414351  -0.001254181   0.000001137  -0.000340661   0.000030723  -0.000011692  -0.000779205   0.001068157
                         0.019530689   0.081681966   0.019098328   0.085146351  -0.000103577   0.002837257   0.289447158  -0.042574909

   29    5.2  1.5  1.5  -0.011533136   0.002564879   0.103841262  -0.023180301  -0.076356742  -0.002533815   0.008547334   0.057837309
                         0.158325912  -0.037962515   0.119636680  -0.026928763   0.223773251   0.008998147   0.000652047   0.005753345

   30    6.2  1.5  1.5   0.007026276   0.029341533   0.006338927   0.028316781   0.005256911  -0.132351594  -0.008993029   0.001313868
                         0.000145055   0.000458102   0.000026157   0.000078523   0.000264226   0.000442839  -0.000039565   0.000042378

   31    7.2  1.5  1.5   0.000154105   0.000486076   0.000030307   0.000077663   0.000233179   0.000391889  -0.000003603   0.000028429
                        -0.007463835  -0.031170999  -0.005707887  -0.025486468  -0.004626370   0.116763019   0.006052955  -0.000884519

   32    8.2  1.5  1.5   0.247108352  -0.059231046   0.175421642  -0.039396948  -0.120096906  -0.004897067   0.001039335   0.009337346
                         0.017982757  -0.004000948  -0.152151682   0.034018196  -0.041022616  -0.001389606  -0.013879030  -0.094119892

   33    9.2  1.5  1.5   0.000003443   0.000013791   0.000000505   0.000006130   0.000000024   0.000000260   0.000001603  -0.000002849
                        -0.000212682  -0.000883378  -0.000368117  -0.001640943   0.000000207  -0.000016644  -0.000722240   0.000105769

   34    1.2  1.5  0.5   0.143319815  -0.034334937  -0.012345167   0.002763817   0.059490811   0.002404761  -0.000037605  -0.000372553
                         0.010413301  -0.002318486   0.010695286  -0.002397248   0.020309574   0.000680032   0.000553837   0.003779782

   35    2.2  1.5  0.5   0.009952769   0.041736969  -0.001900306  -0.008465604   0.001168557  -0.029506768  -0.041709056   0.006132194
                         0.000221441   0.000623569   0.000004194  -0.000040212   0.000062224   0.000096578  -0.000114775   0.000156786

   36    3.2  1.5  0.5  -0.000922967  -0.002839510   0.000008378   0.000088872   0.000060414   0.000110277   0.000104730  -0.000141109
                         0.043964648   0.183764083  -0.005494015  -0.024507913  -0.001281874   0.032209577  -0.038648904   0.005686324

   37    4.2  1.5  0.5  -0.002442479   0.000544085   0.016016454  -0.003589485   0.036533022   0.001221392   0.003106327   0.021095315
                         0.033615840  -0.008054491   0.018497100  -0.004135840  -0.107050666  -0.004330251   0.000232627   0.002082836

   38    5.2  1.5  0.5   0.000281235   0.000878004   0.000048294   0.000213372   0.000369713   0.000641889   0.000112915  -0.000131874
                        -0.013530944  -0.056526109  -0.014418881  -0.064336026  -0.007468887   0.188138055  -0.039334514   0.005798733

   39    6.2  1.5  0.5   0.289350955  -0.069337869   0.194510846  -0.043737269   0.036764296   0.001441308  -0.001591735  -0.013868038
                         0.021069453  -0.004676640  -0.168776429   0.037711800   0.012512386   0.000377176   0.020681321   0.140318175

   40    7.2  1.5  0.5  -0.013132697   0.002931803   0.079521463  -0.017772149  -0.016339078  -0.000545487   0.036959578   0.250646367
                         0.180456736  -0.043287958   0.091689305  -0.020597291   0.047857359   0.001898436   0.002818559   0.024829661

   41    8.2  1.5  0.5   0.007059096   0.029460345   0.002961249   0.013284228   0.007052918  -0.177977889  -0.065730795   0.009658015
                         0.000144604   0.000462380   0.000037368   0.000012426   0.000360866   0.000590898  -0.000185241   0.000253021

   42    9.2  1.5  0.5   0.000011909  -0.000001606   0.000220902  -0.000049436   0.000309901   0.000010432   0.000058261   0.000394328
                        -0.000151755   0.000035361   0.000254996  -0.000056884  -0.000907684  -0.000036699   0.000004384   0.000039013

   43    1.2  1.5 -0.5   0.034405764   0.143680183  -0.003658594  -0.016333705  -0.002495935   0.062861681   0.003798080  -0.000554799
                         0.000711826   0.002238587  -0.000013098  -0.000049013  -0.000125000  -0.000210878   0.000011938  -0.000018646

   44    2.2  1.5 -0.5  -0.041629937   0.009933647   0.006388719  -0.001442727   0.027925279   0.001127054  -0.000464701  -0.004107475
                        -0.003051514   0.000655217  -0.005554487   0.001236818   0.009530871   0.000314874   0.006116571   0.041506471

   45    3.2  1.5 -0.5  -0.013341910   0.002949303  -0.016059364   0.003591329  -0.010408493  -0.000352839   0.005671404   0.038461018
                         0.183301103  -0.043875320  -0.018513308   0.004157719   0.030481672   0.001233837   0.000435167   0.003807729

   46    4.2  1.5 -0.5   0.000166784   0.000525037   0.000021257   0.000066931   0.000228062   0.000367131  -0.000063063   0.000082980
                        -0.008071123  -0.033700367  -0.005476233  -0.024467632  -0.004493424   0.113112210   0.021197796  -0.003113920

   47    5.2  1.5 -0.5   0.004099443  -0.000910518  -0.042142535   0.009445272  -0.060794498  -0.002039051   0.005782301   0.039143936
                        -0.056384097   0.013503203  -0.048612514   0.010894646   0.178045974   0.007194667   0.000455733   0.003868982

   48    6.2  1.5 -0.5   0.069480421   0.290082543   0.057750560   0.257524778  -0.001486228   0.038835093   0.141001234  -0.020736220
                         0.001442919   0.004473849   0.000037124   0.000970141  -0.000103727  -0.000093765   0.000405752  -0.000509739

   49    7.2  1.5 -0.5   0.000888713   0.002797620   0.000026914   0.000429235  -0.000090498  -0.000170634  -0.000667500   0.000936850
                        -0.043378024  -0.180912340  -0.027204724  -0.121368890   0.001973176  -0.050569390   0.251872325  -0.037055053

   50    8.2  1.5 -0.5  -0.029386752   0.007044437  -0.010058248   0.002219554   0.168436041   0.006797727  -0.000725833  -0.006468777
                        -0.002131791   0.000477126   0.008677703  -0.001960605   0.057495896   0.001914363   0.009634025   0.065411976

   51    9.2  1.5 -0.5  -0.000001512  -0.000001490   0.000000343   0.000001001   0.000001857   0.000003243  -0.000001100   0.000001536
                         0.000035365   0.000152214  -0.000075363  -0.000337372  -0.000038107   0.000959124   0.000396252  -0.000058406

   52    1.2  1.5 -1.5   0.131275293  -0.031406465  -0.012448025   0.002799845   0.001563759   0.000064366   0.000507312   0.004458939
                         0.009567214  -0.002105614   0.010805094  -0.002412908   0.000536021   0.000022778  -0.006642019  -0.045053436

   53    2.2  1.5 -1.5  -0.125199583  -0.522468658   0.012533922   0.055893292  -0.001305140   0.033202357  -0.016703239   0.002461366
                        -0.002586309  -0.008060011   0.000005228   0.000210878  -0.000068584  -0.000102427  -0.000037006   0.000065599

   54    3.2  1.5 -1.5  -0.002989894  -0.009331110   0.000013167   0.000241383   0.000006104   0.000023619  -0.000044835   0.000077163
                         0.144719368   0.603987813  -0.014795203  -0.065989397  -0.000188789   0.004419608   0.019106079  -0.002812610

   55    4.2  1.5 -1.5   0.005938326  -0.001305868  -0.055818242   0.012461270   0.000896576   0.000004027   0.042464376   0.288039537
                        -0.081475474   0.019491388  -0.064298841   0.014472832  -0.002691899  -0.000107962   0.003246629   0.028521737

   56    5.2  1.5 -1.5  -0.000785600  -0.002443564   0.000006406  -0.000621633   0.000477892   0.000757936   0.000130314  -0.000216436
                         0.038040951   0.158726610   0.035531459   0.158415771  -0.009335871   0.236440786  -0.058122615   0.008569436

   57    6.2  1.5 -1.5   0.029268024  -0.007011784   0.021406296  -0.004786364  -0.125254793  -0.005065186   0.000090825   0.000870885
                         0.002125597  -0.000473788  -0.018536902   0.004156128  -0.042759530  -0.001431372  -0.001311410  -0.008950849

   58    7.2  1.5 -1.5  -0.002258716   0.000503277   0.016689402  -0.003747503   0.037724391   0.001259074   0.000882854   0.006022234
                         0.031092855  -0.007448442   0.019262138  -0.004305475  -0.110501704  -0.004457848   0.000061245   0.000609077

   59    8.2  1.5 -1.5  -0.059353347  -0.247732189  -0.052051439  -0.232211542  -0.005084266   0.126909108   0.094581625  -0.013912951
                        -0.001226636  -0.003831414  -0.000070398  -0.000828628  -0.000250016  -0.000447236   0.000237130  -0.000370794

   60    9.2  1.5 -1.5  -0.000063996   0.000015286   0.001075401  -0.000240588  -0.000005078  -0.000000089  -0.000105514  -0.000718693
                         0.000881165  -0.000212160   0.001239453  -0.000278618   0.000015853   0.000000189  -0.000007871  -0.000071508


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000014675   0.000000255   0.000037502   0.000001731   0.000000283  -0.000007296   0.000008014   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000372   0.000007744   0.000001570  -0.000034791  -0.000007014   0.000000513   0.000000052   0.000000266
                        -0.000000532  -0.000039180  -0.000001341   0.000029000  -0.000049250  -0.000001413   0.000001118  -0.000000715

    3    3.2  0.5  0.5  -0.000000011  -0.000000205   0.000000083   0.000000738   0.000000012  -0.000000005  -0.000000866   0.000000023
                         0.000004627   0.000000730  -0.000001842  -0.000000738   0.000000722   0.000011873   0.000049957  -0.000000009

    4    4.2  0.5  0.5  -0.000001544   0.000040272  -0.000413962  -0.003011255   0.000616790   0.000786099  -0.000886632  -0.009980911
                         0.000051090  -0.000837629  -0.000070646   0.003015068   0.000965066   0.000099962  -0.000145288   0.032140204

    5    5.2  0.5  0.5   0.000158192  -0.000014572   0.008706701   0.000220725   0.000494985  -0.012605722   0.014627429  -0.000501038
                         0.000062985  -0.000052506   0.000047882   0.000233123  -0.000143787   0.000105007   0.000115791   0.001989977

    6    6.2  0.5  0.5   0.000019515  -0.000066246  -0.000188959   0.000161384   0.000108198   0.000269533  -0.000167796   0.000686168
                         0.002688633  -0.000032997   0.002577215   0.000138011  -0.000129116   0.002576934  -0.006677291  -0.000708116

    7    7.2  0.5  0.5  -0.000030452  -0.001906729   0.000357157  -0.007662955  -0.010910592  -0.000390911   0.000020033   0.000307378
                        -0.000010068  -0.000392416   0.000392648  -0.009095216   0.001566002  -0.000098802  -0.000030347   0.000618196

    8    8.2  0.5  0.5  -0.000046708  -0.002817399  -0.000182967   0.003068102   0.006685664   0.000292415  -0.000053459   0.023716373
                        -0.000081938  -0.000521575  -0.000186455   0.003348982  -0.000999559   0.000022634   0.000113199   0.006518477

    9    9.2  0.5  0.5   0.000003076   0.000001211  -0.000003582   0.000000217   0.000004772   0.000006673  -0.000015864   0.000000163
                        -0.000162060   0.000003505   0.000222849   0.000008635   0.000009172  -0.000338783   0.000460305   0.000001326

   10   10.2  0.5  0.5  -0.000009859   0.000023932   0.000019158  -0.000179408   0.000059772  -0.000030490   0.000024309   0.000141779
                        -0.000003044  -0.000120975  -0.000005355   0.000149788   0.000414417   0.000012288   0.000002339  -0.000403346

   11   11.2  0.5  0.5  -0.000170981   0.000001546   0.000175912   0.000019446   0.000008638  -0.000387624   0.000372237  -0.000010092
                        -0.000002680   0.000006748   0.000004853  -0.000009549  -0.000033534  -0.000006372   0.000015969   0.000026243

   12   12.2  0.5  0.5   0.000005659   0.000344925   0.000017864  -0.000403628  -0.000714451  -0.000024679   0.000001779   0.000669899
                         0.000004111   0.000067804   0.000019758  -0.000484747   0.000101349  -0.000007438  -0.000001338   0.000235622

   13    1.2  0.5 -0.5   0.000000048   0.000002792   0.000001330  -0.000028819   0.000001053   0.000000041  -0.000000000   0.000002793
                        -0.000000250  -0.000014407  -0.000001108   0.000023998   0.000007220   0.000000280   0.000000000  -0.000007512

   14    2.2  0.5 -0.5   0.000039938  -0.000000593  -0.000045292  -0.000002065   0.000001325  -0.000049746  -0.000000762  -0.000001030
                        -0.000000148   0.000000264  -0.000000022  -0.000000026  -0.000000712   0.000000168  -0.000000000  -0.000000439

   15    3.2  0.5 -0.5  -0.000000756   0.000004544   0.000001040  -0.000001243  -0.000011748   0.000000716  -0.000000017  -0.000047127
                         0.000000063   0.000000870   0.000000095  -0.000001363   0.000001719  -0.000000093   0.000000019  -0.000016597

   16    4.2  0.5 -0.5   0.000829992   0.000050451  -0.004243369   0.000272903  -0.000212378   0.001043986   0.033603699  -0.000172784
                         0.000119824   0.000008204  -0.000390010  -0.000319186  -0.000763439   0.000471038   0.001844647   0.000881686

   17    5.2  0.5 -0.5   0.000048775   0.000031738   0.000020439  -0.006660041   0.001715546  -0.000070838   0.002039842   0.004988710
                         0.000024295   0.000167286  -0.000320387   0.005608279   0.012488881   0.000510555   0.000223818  -0.013750922

   18    6.2  0.5 -0.5   0.000019791   0.002635813   0.000035702   0.001794386  -0.002588854  -0.000112147  -0.000902841   0.006200282
                         0.000071314   0.000530675  -0.000209326   0.001859550   0.000105233   0.000125701   0.000396400   0.002484125

   19    7.2  0.5 -0.5   0.000022490  -0.000004091  -0.000068514  -0.000023199   0.000154190  -0.000025183   0.000472335   0.000035426
                         0.001946562  -0.000031811   0.011892819   0.000530279   0.000372557  -0.011022375   0.000503535  -0.000008202

   20    8.2  0.5 -0.5  -0.000023966  -0.000071555   0.000214649   0.000021287  -0.000064603  -0.000024113  -0.002154588  -0.000124733
                         0.002865171  -0.000061444  -0.004536833  -0.000260363  -0.000286086   0.006759929   0.024501319   0.000010662

   21    9.2  0.5 -0.5  -0.000003211  -0.000159685  -0.000005359   0.000145355   0.000334272   0.000009765   0.000001186  -0.000436981
                        -0.000001855  -0.000027812  -0.000006775   0.000168956  -0.000055501   0.000003399   0.000000615  -0.000145534

   22   10.2  0.5 -0.5   0.000123319  -0.000001112  -0.000233717  -0.000018149  -0.000007759   0.000418705  -0.000427470   0.000006279
                        -0.000000479  -0.000010258  -0.000000300   0.000008144   0.000031944  -0.000000669  -0.000007663  -0.000023601

   23   11.2  0.5 -0.5  -0.000006330   0.000029899   0.000021054  -0.000132075   0.000062253  -0.000031936   0.000028115   0.000114746
                        -0.000002802  -0.000168368  -0.000005105   0.000116297   0.000382646   0.000013387  -0.000000314  -0.000354470

   24   12.2  0.5 -0.5  -0.000000944   0.000002959   0.000000025  -0.000001085   0.000010922  -0.000002833  -0.000012588   0.000001874
                        -0.000351525   0.000006337   0.000630789   0.000026614   0.000023347  -0.000721598   0.000710017  -0.000001202

   25    1.2  1.5  1.5  -0.000156800   0.000002543   0.000511829   0.000022217   0.000026622  -0.000812990   0.001540116  -0.000001426
                         0.000001633  -0.000001334  -0.000000329   0.000001441  -0.000013279   0.000003347   0.000027525  -0.000001073

   26    2.2  1.5  1.5   0.000005809   0.000102410   0.000018561  -0.000453899   0.000068909  -0.000005094   0.000000937  -0.001264664
                        -0.000008191  -0.000515898  -0.000016887   0.000377803   0.000486532   0.000016735   0.000003596   0.003593291

   27    3.2  1.5  1.5  -0.000001516  -0.000100346   0.000030690  -0.000671946  -0.001017752  -0.000034807  -0.000003915  -0.003744563
                        -0.000000999  -0.000019573   0.000033811  -0.000806037   0.000144637  -0.000010613   0.000001569  -0.001317299

   28    4.2  1.5  1.5   0.000310493  -0.000900665  -0.000136035   0.000121237  -0.007953178   0.001728654  -0.000751288   0.000039745
                         0.119262924  -0.002212563  -0.018114152  -0.000763894  -0.016626740   0.522334317   0.043306677   0.000028293

   29    5.2  1.5  1.5   0.001386688   0.078689100   0.009383602  -0.209024830   0.071243817   0.002424008  -0.000447300  -0.436679356
                         0.000857477   0.015582476   0.010496489  -0.250664605  -0.010231709   0.000837630   0.000122845  -0.153563603

   30    6.2  1.5  1.5   0.607375970  -0.010991038   0.355031352   0.015413631   0.003670038  -0.112352791   0.061983261  -0.000035832
                        -0.002046935   0.004434139   0.000089903   0.000590454  -0.001733513   0.000588176   0.000977882   0.000013447

   31    7.2  1.5  1.5   0.002324884  -0.005069052  -0.000019565  -0.000235889   0.002279175  -0.000658285  -0.000212682  -0.000074205
                         0.688391475  -0.012481092   0.140774445   0.006190275   0.004738926  -0.146878166   0.016877900   0.000006411

   32    8.2  1.5  1.5  -0.000970933  -0.016085017  -0.003653205   0.088858395  -0.005063923   0.000408002   0.000206149  -0.185997204
                         0.001327246   0.081834279   0.003358217  -0.073893878  -0.035614986  -0.001271220   0.000581860   0.528658206

   33    9.2  1.5  1.5  -0.000000262   0.000000014  -0.000000012   0.000000588   0.000002978  -0.000000637   0.000008008  -0.000000051
                        -0.000009963   0.000000360  -0.000126336  -0.000005308   0.000007217  -0.000239913  -0.000448478   0.000000043

   34    1.2  1.5  0.5  -0.000002907  -0.000051446   0.000049832  -0.001195325   0.000213809  -0.000015468  -0.000000520   0.000357002
                         0.000004006   0.000256230  -0.000045142   0.000996813   0.001503572   0.000051931  -0.000001828  -0.001012171

   35    2.2  1.5  0.5  -0.000237825   0.000004492  -0.000252157  -0.000010596   0.000023889  -0.000758095   0.000483951  -0.000000974
                         0.000002295  -0.000002273  -0.000000862  -0.000000399  -0.000011804   0.000002914   0.000009206  -0.000001220

   36    3.2  1.5  0.5  -0.000001142  -0.000000010  -0.000000331  -0.000001519   0.000017777  -0.000004303  -0.000019853   0.000000495
                        -0.000046267   0.000000545   0.000838787   0.000036483   0.000038233  -0.001183732   0.001140664  -0.000001393

   37    4.2  1.5  0.5  -0.004110985  -0.243134385  -0.018981996   0.421497646  -0.054461825  -0.001767807  -0.000186113  -0.124048365
                        -0.002769728  -0.047968820  -0.021080448   0.505832190   0.007896463  -0.000653943   0.000121096  -0.043748965

   38    5.2  1.5  0.5   0.000739314  -0.001912460  -0.000013720   0.000746966  -0.007320040   0.001676902   0.000481945  -0.000059012
                         0.247744198  -0.004581886  -0.394690804  -0.016976195  -0.015432467   0.483130159  -0.029874828   0.000098530

   39    6.2  1.5  0.5   0.000605791   0.009989608  -0.002837453   0.066182274   0.042547397  -0.003205302  -0.000121374   0.143517851
                        -0.000830713  -0.051172970   0.002436895  -0.055368114   0.298378744   0.010178691  -0.000459757  -0.408019423

   40    7.2  1.5  0.5  -0.000827308  -0.045293686  -0.002597595   0.057556176   0.213279408   0.007231287   0.000469807   0.463774609
                        -0.000471952  -0.008935285  -0.002883458   0.069022988  -0.030361060   0.002206295  -0.000177818   0.163145009

   41    8.2  1.5  0.5  -0.039236331   0.000699472   0.356328234   0.015354084  -0.017702739   0.557858167   0.128959990  -0.000057375
                         0.000233309  -0.000333514   0.000253807   0.000503619   0.008528826  -0.001769747   0.002210598  -0.000153009

   42    9.2  1.5  0.5   0.000003465   0.000236246  -0.000001813   0.000034770   0.000386609   0.000012980  -0.000000252   0.000114468
                         0.000002157   0.000046745  -0.000001976   0.000041767  -0.000054984   0.000004244   0.000000267   0.000040287

   43    1.2  1.5 -0.5   0.000261338  -0.000004486   0.001556418   0.000067180   0.000049154  -0.001518688   0.001073133  -0.000001533
                        -0.000001758   0.000002091   0.000001105   0.000002802  -0.000022801   0.000005448   0.000018088  -0.000001124

   44    2.2  1.5 -0.5  -0.000003086  -0.000047499   0.000007888  -0.000193220  -0.000106537   0.000008232   0.000000804  -0.000160014
                         0.000003978   0.000233045  -0.000007087   0.000162019  -0.000750577  -0.000025343   0.000001338   0.000456825

   45    3.2  1.5 -0.5   0.000000537   0.000045204   0.000024514  -0.000537000  -0.001171958  -0.000040398   0.000001479   0.001076084
                         0.000000094   0.000009923   0.000027063  -0.000644356   0.000166597  -0.000012072   0.000000021   0.000378881

   46    4.2  1.5 -0.5  -0.000835951   0.001937018  -0.000214804  -0.001097212  -0.000902253   0.000047003  -0.002220578   0.000178361
                        -0.247819770   0.004562845   0.658427236   0.028346033  -0.001654909   0.055031285   0.131518204  -0.000132249

   47    5.2  1.5 -0.5  -0.004134351  -0.243078579  -0.011437203   0.252555094   0.478313241   0.016327413  -0.000112918  -0.028170198
                        -0.002749241  -0.047859570  -0.012567399   0.303309669  -0.068073534   0.005015936   0.000020978  -0.009958792

   48    6.2  1.5 -0.5  -0.052138853   0.000930793  -0.086288368  -0.003739833   0.009609468  -0.301395463   0.432456392  -0.000388644
                         0.000071406  -0.000436682  -0.000197192  -0.000056929  -0.004640886   0.000964797   0.007661113  -0.000273978

   49    7.2  1.5 -0.5  -0.000154883   0.000305935  -0.000060818  -0.000150980   0.003226924  -0.000740666   0.008693296  -0.000330386
                        -0.046166366   0.000901987   0.089871478   0.003878019   0.006837120  -0.215428298  -0.491556313   0.000378395

   50    8.2  1.5 -0.5  -0.000460498  -0.007693827  -0.011476605   0.273658687   0.078767572  -0.005884384   0.000123425  -0.042866854
                         0.000623244   0.038475305   0.010212201  -0.228212177   0.552272158   0.018748383   0.000107098   0.121647024

   51    9.2  1.5 -0.5   0.000000946  -0.000001458   0.000000008  -0.000000128   0.000006073  -0.000001394   0.000002127   0.000000338
                         0.000240824  -0.000003812   0.000054345   0.000002678   0.000012232  -0.000390497  -0.000121332  -0.000000143

   52    1.2  1.5 -1.5   0.000001794   0.000031435   0.000016151  -0.000393526   0.000114031  -0.000009298  -0.000000509   0.000510887
                        -0.000002243  -0.000153626  -0.000015325   0.000327270   0.000804960   0.000028260  -0.000001710  -0.001453172

   53    2.2  1.5 -1.5   0.000525959  -0.000009147  -0.000590559  -0.000025069  -0.000015825   0.000491384   0.003808761  -0.000003044
                        -0.000002389   0.000004144   0.000000130  -0.000001100   0.000007456  -0.000002036   0.000066766  -0.000002131

   54    3.2  1.5 -1.5   0.000000124  -0.000000693  -0.000000569  -0.000001947   0.000015526  -0.000003776   0.000070144  -0.000002835
                         0.000102237  -0.000001678   0.001049384   0.000045621   0.000032911  -0.001027971  -0.003968892   0.000003122

   55    4.2  1.5 -1.5   0.002000798   0.117025556   0.000581986  -0.011486847  -0.517114354  -0.017600565   0.000012670  -0.040853989
                         0.001305159   0.022994798   0.000509436  -0.014006904   0.073680879  -0.005470069   0.000047113  -0.014386949

   56    5.2  1.5 -1.5  -0.000327131   0.000577996  -0.000223342  -0.000494064  -0.001178730   0.000158448   0.008232207  -0.000271016
                        -0.080216463   0.001524497   0.326380260   0.014070685  -0.002277726   0.071974608  -0.462820560   0.000376455

   57    6.2  1.5 -1.5  -0.006444215  -0.117563871   0.011466797  -0.272766979   0.015634489  -0.001185644   0.000025090   0.020682817
                         0.009946688   0.595893024  -0.010317035   0.227256340   0.111261217   0.003881816  -0.000028900  -0.058438873

   58    7.2  1.5 -1.5   0.011288734   0.675375927  -0.004142473   0.090097669   0.145435188   0.005018269   0.000031867  -0.015894096
                         0.007351017   0.133250082  -0.004605981   0.108165867  -0.020548355   0.001571313  -0.000067319  -0.005682117

   59    8.2  1.5 -1.5  -0.083399806   0.001487726   0.115568654   0.004956261   0.001199019  -0.035972958   0.560336304  -0.000473552
                         0.000222118  -0.000700689  -0.000077272   0.000242914  -0.000587212   0.000129612   0.009883581  -0.000395989

   60    9.2  1.5 -1.5  -0.000000351  -0.000009731   0.000003849  -0.000080834   0.000237493   0.000007571   0.000000058   0.000423157
                        -0.000000082  -0.000002153   0.000003702  -0.000097091  -0.000033997   0.000001906  -0.000000033   0.000148776


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.027160845   0.000497445   0.026149618  -0.001200505   0.007465525   0.000429045   0.006090474  -0.022944734
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000055213   0.006805463   0.001490010   0.034021346   0.000073148  -0.001278198   0.004500294   0.001660511
                        -0.000674346   0.006028079  -0.000840257  -0.013337200  -0.000585924   0.007400064  -0.003186921   0.003111788

    3    3.2  0.5  0.5   0.000090543  -0.000180987   0.000062622  -0.000754742  -0.000002654   0.000051442   0.003908244  -0.000332553
                        -0.036264596   0.000567199  -0.010416312   0.000729909  -0.007408008  -0.000581969   0.005131008  -0.028561307

    4    4.2  0.5  0.5   0.013323544   0.162406178   0.008263391  -0.054383015  -0.000080590  -0.000129727   0.145022433   0.047163677
                         0.004603984   0.160716966  -0.004741991   0.018015866  -0.000018868   0.000562795  -0.107143931  -0.010985392

    5    5.2  0.5  0.5  -0.163132557   0.012224750  -0.169674222   0.003694275   0.001405657   0.000070447   0.023224676  -0.114581409
                         0.000738628   0.010870124  -0.004816722   0.001221761   0.000004228   0.000039139  -0.034360427   0.002673853

    6    6.2  0.5  0.5   0.002973485  -0.007303460   0.003256102   0.000545770  -0.000026015  -0.000008887   0.011985887   0.000261380
                         0.065123899  -0.002309794  -0.226412110   0.007959435   0.000503757   0.000012649  -0.019189686   0.063494584

    7    7.2  0.5  0.5   0.001242490   0.078337421  -0.003680549  -0.075813077  -0.000062049   0.001099617  -0.052278408   0.018582725
                        -0.001379228  -0.083523491  -0.009006947  -0.190933192  -0.000005285   0.000198450  -0.069611967  -0.022030173

    8    8.2  0.5  0.5  -0.001849728  -0.145180431  -0.000946038  -0.038932170   0.000003771  -0.000192942   0.103053223   0.019411090
                         0.001701307   0.145647581  -0.000217517  -0.107757131  -0.000006347  -0.000064048   0.138353232   0.035854817

    9    9.2  0.5  0.5  -0.005624190   0.000105299   0.008190489   0.001764693   0.003006522   0.000591674  -0.055170679   0.009291262
                        -0.528089998   0.010569132  -0.151921872   0.005504328  -0.173220491  -0.009048794  -0.067590679   0.380953577

   10   10.2  0.5  0.5   0.024451978  -0.099554057  -0.045944675  -0.494183102  -0.012647325   0.028428385   0.064926519   0.002937133
                        -0.004687327  -0.087482055   0.008061176   0.194342548   0.008653076  -0.168426315  -0.045307857   0.052249830

   11   11.2  0.5  0.5   0.394963115  -0.000903494  -0.378933401   0.049131949  -0.171778256  -0.011728815   0.076879635  -0.309633859
                        -0.009010826   0.005773788  -0.003193029  -0.012315562  -0.003612321   0.010589556   0.001416864   0.003395635

   12   12.2  0.5  0.5   0.000001477   0.000084148  -0.000002074  -0.000048881  -0.017167153   0.298646551  -0.000304614   0.000062017
                        -0.000001876  -0.000095038  -0.000005085  -0.000124370  -0.001973667   0.051598139  -0.000375507  -0.000118200

   13    1.2  0.5 -0.5   0.000370374   0.020222692  -0.001117439  -0.024340253   0.000071745  -0.001248379   0.017576843   0.004665616
                         0.000332076   0.018131581   0.000438797   0.009557959  -0.000423004   0.007360409  -0.014748403  -0.003914831

   14    2.2  0.5 -0.5   0.009091152   0.000409060   0.036542201  -0.001694035  -0.007509608  -0.000589906   0.000728157   0.005495943
                         0.000054851  -0.000538945  -0.000020796  -0.000237503   0.000022768  -0.000025860   0.003451131  -0.000451352

   15    3.2  0.5 -0.5   0.000243887   0.024141496  -0.000969309  -0.003865560   0.000582377  -0.007303257  -0.018103868  -0.000304191
                        -0.000543130  -0.027061361  -0.000403538  -0.009672689   0.000046598  -0.001241378  -0.022093185  -0.006442754

   16    4.2  0.5 -0.5   0.228208762  -0.012993536  -0.057205091  -0.009424871  -0.000576564  -0.000005126  -0.043190980   0.179964539
                        -0.011245925  -0.005466398   0.003108262  -0.001393524   0.000033791  -0.000082611   0.021900467  -0.011139689

   17    5.2  0.5 -0.5   0.016358471   0.120967772   0.002992092   0.156173431  -0.000026808  -0.000230885   0.089493936   0.039877469
                         0.000067409   0.109451244  -0.002487520  -0.066501142  -0.000076000   0.001386572  -0.071602264   0.011393506

   18    6.2  0.5 -0.5  -0.006979747  -0.045688238  -0.002401251  -0.085786797  -0.000013957   0.000501014   0.040612782   0.021516540
                        -0.003155757   0.046503212  -0.007608184  -0.209555891   0.000006647   0.000058589   0.048808119   0.006996003

   19    7.2  0.5 -0.5   0.002569159  -0.000004378  -0.000779282   0.000133748  -0.000011779   0.000005166  -0.028395863   0.004697198
                         0.114482857  -0.001856349   0.205432468  -0.009729010  -0.001117319  -0.000062059  -0.004931649   0.086929824

   20    8.2  0.5 -0.5  -0.010865572   0.000241490   0.003148013   0.000801075   0.000030882  -0.000006888   0.008176848  -0.009986555
                        -0.205359477   0.002501524   0.114531232  -0.000548253   0.000200936   0.000002657   0.039943679  -0.172226166

   21    9.2  0.5 -0.5   0.007133964   0.356720972  -0.000369300  -0.063152799   0.009020324  -0.171284251   0.237751540   0.001182327
                        -0.007798987  -0.389436549  -0.005768482  -0.138416268   0.000929789  -0.026001599   0.297802218   0.087240505

   22   10.2  0.5 -0.5  -0.132523086  -0.015076709  -0.531023439   0.045712080   0.170808601   0.010646113   0.031335121   0.078860004
                        -0.001323591  -0.019813205  -0.000266359  -0.009289858   0.000136004  -0.011022287   0.041913979  -0.007025288

   23   11.2  0.5 -0.5   0.003181669  -0.288055720   0.050233840   0.351546865  -0.012401735   0.025163160   0.239378067   0.057983014
                        -0.004902031  -0.270371891  -0.006494827  -0.141476215   0.009792894  -0.169963624  -0.196425045  -0.050502039

   24   12.2  0.5 -0.5  -0.000000791   0.000000153  -0.000000041   0.000000071  -0.000932193   0.000924800  -0.000123485   0.000008019
                         0.000126935  -0.000002382   0.000133631  -0.000005491  -0.303069730  -0.017255471  -0.000050684   0.000483457

   25    1.2  1.5  1.5  -0.162963000   0.003124995   0.040209407  -0.001656817   0.000098023   0.000005434   0.000147749  -0.000143246
                        -0.000708197   0.000147223  -0.000131004  -0.000061376  -0.000000752  -0.000000404   0.000160063  -0.000016318

   26    2.2  1.5  1.5   0.000361563   0.017391307   0.003614816   0.087650727   0.002712016  -0.070922397   0.001804838   0.000439783
                         0.000275208   0.015367673  -0.001584828  -0.034381345  -0.023597287   0.410504235  -0.001563900  -0.000779644

   27    3.2  1.5  1.5   0.000281737   0.015761324  -0.001584340  -0.034360329  -0.023587921   0.410353219   0.004325536   0.000125355
                        -0.000369636  -0.017834470  -0.003612484  -0.087597085  -0.002711956   0.070897380   0.005223291   0.001522711

   28    4.2  1.5  1.5  -0.000316466   0.000065201  -0.000059737  -0.000030295   0.000009446  -0.000010542  -0.024885711   0.000945048
                         0.073115908  -0.001401972  -0.019607529   0.000809144   0.003207702   0.000183299  -0.073720279   0.335837834

   29    5.2  1.5  1.5   0.000211743   0.011864552  -0.001222763  -0.026516450   0.004410020  -0.076750840  -0.037163681   0.041268621
                        -0.000278285  -0.013426860  -0.002787645  -0.067600438   0.000507607  -0.013260575  -0.049454957  -0.019521663

   30    6.2  1.5  1.5   0.018199589  -0.000354625   0.072649482  -0.003042897  -0.157212363  -0.008952092   0.011411770   0.064341649
                         0.000130984  -0.000028273  -0.000026919  -0.000118956   0.000483633  -0.000479672   0.044979020  -0.003385354

   31    7.2  1.5  1.5   0.000137901  -0.000030000  -0.000025766  -0.000119439   0.000483520  -0.000479530   0.045513722  -0.003406412
                        -0.019788832   0.000385203  -0.072745059   0.003047926   0.157171158   0.008949713  -0.009890194  -0.071323454

   32    8.2  1.5  1.5   0.000280862   0.013519920   0.002791286   0.067677153  -0.000507536   0.013286237   0.042124086   0.017474454
                         0.000214083   0.011947221  -0.001223769  -0.026546942   0.004419871  -0.076906522  -0.031020628   0.042212161

   33    9.2  1.5  1.5  -0.002421516   0.000503117  -0.000449088  -0.000211304   0.000001365  -0.000000336  -0.012690853   0.000507324
                         0.557456571  -0.010689903  -0.138354695   0.005701730   0.000289222   0.000016652  -0.035600337   0.163807339

   34    1.2  1.5  0.5  -0.000214245  -0.010321764  -0.002085876  -0.050575663   0.003130566  -0.081846465   0.003479476   0.001030828
                        -0.000163223  -0.009121810   0.000914834   0.019838663  -0.027231252   0.473730470  -0.002859124   0.000083536

   35    2.2  1.5  0.5   0.121500521  -0.002338434   0.085083959  -0.003580005   0.239708412   0.013648079   0.000337820  -0.001125957
                         0.000604698  -0.000127161   0.000036347  -0.000141776  -0.000736674   0.000731330   0.000044128  -0.000011564

   36    3.2  1.5  0.5  -0.000216750   0.000043256  -0.000116511  -0.000214090  -0.000738584   0.000733424   0.000357666  -0.000005849
                         0.067732441  -0.001290505  -0.132217388   0.005522796  -0.240268668  -0.013680162   0.001540873  -0.006610405

   37    4.2  1.5  0.5   0.000231449   0.012916269  -0.001220213  -0.026458134   0.008824947  -0.153538890  -0.043418022   0.041260335
                        -0.000302614  -0.014610492  -0.002781765  -0.067449123   0.001014474  -0.026527059  -0.057052159  -0.021748875

   38    5.2  1.5  0.5   0.000316562  -0.000066189   0.000058643   0.000027560  -0.000415123   0.000412188   0.026417692  -0.001069630
                        -0.072874903   0.001397330   0.018176557  -0.000749263  -0.135004439  -0.007687323   0.073139005  -0.337365629

   39    6.2  1.5  0.5   0.001079331   0.054212228  -0.000673228  -0.016602099   0.000001393  -0.000039472   0.248371947   0.069968317
                         0.000879727   0.048182894   0.000293532   0.006456584  -0.000012280   0.000225063  -0.207052326  -0.025655408

   40    7.2  1.5  0.5   0.000884594   0.048451678   0.000320491   0.007044324  -0.000212664   0.003696345  -0.213396159  -0.027605962
                        -0.001085001  -0.054512891   0.000734858   0.018101271  -0.000023240   0.000637786  -0.255836217  -0.071934092

   41    8.2  1.5  0.5  -0.072614010   0.001392539   0.018173104  -0.000749250   0.135545901   0.007717156   0.071638194  -0.328453140
                        -0.000315366   0.000065924  -0.000058602  -0.000027695  -0.000417039   0.000413674  -0.025049255   0.000984485

   42    9.2  1.5  0.5  -0.001639964  -0.091667438   0.009380374   0.203453164  -0.000024089   0.000436303   0.017977804  -0.020754627
                         0.002153149   0.103733972   0.021390708   0.518676134  -0.000002381   0.000074946   0.024012515   0.009563010

   43    1.2  1.5 -0.5   0.013774486  -0.000268478   0.054327432  -0.002275930   0.480746524   0.027371320   0.000735972  -0.004503243
                         0.000098758  -0.000021494  -0.000019962  -0.000089125  -0.001477225   0.001467101  -0.000726588   0.000046300

   44    2.2  1.5 -0.5   0.001825976   0.090867266   0.003280473   0.079183479  -0.001561188   0.040810146  -0.000855108  -0.000230423
                         0.001466375   0.080659050  -0.001440496  -0.031132909   0.013578203  -0.236210071   0.000732601   0.000250948

   45    3.2  1.5 -0.5   0.000829287   0.045054305   0.002217916   0.048218389  -0.013610185   0.236762119   0.004244552   0.000716451
                        -0.000989726  -0.050575094   0.005062407   0.123111487  -0.001564488   0.040905715   0.005067669   0.001410289

   46    4.2  1.5 -0.5   0.000136579  -0.000029687  -0.000025937  -0.000119019  -0.000478904   0.000475511   0.045587263  -0.003411522
                        -0.019500713   0.000379819  -0.072452857   0.003035287  -0.155812856  -0.008870329  -0.009860540  -0.071613093

   47    5.2  1.5 -0.5  -0.000883524  -0.048412909  -0.000299516  -0.006589136  -0.007648010   0.133034126   0.216032295   0.026774940
                         0.001084572   0.054470561  -0.000687346  -0.016940306  -0.000879083   0.022984610   0.259126917   0.073008979

   48    6.2  1.5 -0.5  -0.072529011   0.001390893   0.017813303  -0.000733934   0.000228494   0.000012340   0.070090089  -0.323354631
                        -0.000315366   0.000065518  -0.000058406  -0.000027150  -0.000001281   0.000000680  -0.025320836   0.001035674

   49    7.2  1.5 -0.5   0.000315954  -0.000065680   0.000059296   0.000029717   0.000010706  -0.000012649   0.025090172  -0.000973851
                        -0.072932301   0.001398363   0.019423568  -0.000801154   0.003750949   0.000213556   0.072849750  -0.333150330

   50    8.2  1.5 -0.5  -0.001080828  -0.054275514   0.000687284   0.016937076  -0.000882607   0.023077041  -0.252244764  -0.070979678
                        -0.000880524  -0.048239636  -0.000299637  -0.006587913   0.007677671  -0.133567643   0.210368756   0.026858543

   51    9.2  1.5 -0.5  -0.000997709   0.000216323   0.000205874   0.000912792   0.000000933  -0.000001681  -0.022046015   0.001662830
                         0.138429262  -0.002697913   0.557151756  -0.023339250   0.000442692   0.000024148   0.006014891   0.029950581

   52    1.2  1.5 -1.5   0.002425005   0.121807375  -0.001519744  -0.037475090   0.000001307  -0.000017132   0.000099245   0.000010298
                         0.001976516   0.108260816   0.000662714   0.014575019  -0.000005290   0.000096517  -0.000104576  -0.000217587

   53    2.2  1.5 -1.5   0.023207645  -0.000452922   0.094152672  -0.003943968  -0.416583816  -0.023718532  -0.000838035   0.002387842
                         0.000167748  -0.000036459  -0.000034853  -0.000153916   0.001279610  -0.001272089  -0.000314564   0.000037915

   54    3.2  1.5 -1.5  -0.000170493   0.000036987   0.000034808   0.000154315  -0.001280198   0.001270582   0.000882739  -0.000043841
                         0.023800391  -0.000463291   0.094095060  -0.003941620  -0.416430743  -0.023709288   0.001247051  -0.006781675

   55    4.2  1.5 -1.5  -0.000887360  -0.048573866  -0.000323949  -0.007111153  -0.000182481   0.003160957   0.215145696   0.028322148
                         0.001087369   0.054649938  -0.000742084  -0.018272664  -0.000020257   0.000545702   0.257876469   0.072469539

   56    5.2  1.5 -1.5  -0.000129489   0.000028119   0.000026964   0.000119243   0.000239650  -0.000236980  -0.044162004   0.003319343
                         0.017917349  -0.000348550   0.072615017  -0.003041693   0.077887591   0.004432808   0.011572025   0.061773085

   57    6.2  1.5 -1.5  -0.000282911  -0.013638001  -0.002788871  -0.067632503  -0.001024044   0.026765746  -0.051465040  -0.020169587
                        -0.000215684  -0.012051852   0.001222935   0.026529089   0.008906255  -0.154917901   0.038764134  -0.041791489

   58    7.2  1.5 -1.5   0.000234810   0.013107622  -0.001225223  -0.026565096  -0.008903886   0.154877295  -0.043235763   0.041223060
                        -0.000306831  -0.014825894  -0.002793375  -0.067721045  -0.001023785   0.026758744  -0.056826996  -0.021678888

   59    8.2  1.5 -1.5   0.018041824  -0.000352031   0.072697568  -0.003045449   0.078045372   0.004442507   0.013746780   0.052208634
                         0.000130061  -0.000028097  -0.000026622  -0.000118848  -0.000238918   0.000238697   0.043568901  -0.003313104

   60    9.2  1.5 -1.5  -0.006761589  -0.370334561  -0.002280725  -0.050152073  -0.000016474   0.000284921   0.104903352   0.013161319
                         0.008295063   0.416672540  -0.005229978  -0.128945697  -0.000002454   0.000049709   0.125810924   0.035429104


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.020304567  -0.000541302   0.000002701   0.000164086   0.000268237   0.000026328  -0.000364501  -0.000178092
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.001326988   0.030012628   0.000030269   0.000000233  -0.000000366  -0.000201384  -0.000035231   0.000037851
                         0.005037245   0.001795028  -0.000116070   0.000001905   0.000002788  -0.000094644  -0.000022059   0.000000635

    3    3.2  0.5  0.5  -0.001425775   0.004599361  -0.000000293   0.000000571  -0.000025713   0.000000778  -0.000009858  -0.000014996
                        -0.009818487   0.000883832   0.000004414   0.000047627   0.000030407   0.000039350  -0.000597537  -0.000316073

    4    4.2  0.5  0.5   0.009129046  -0.037798672   0.057669056  -0.015834234  -0.007391003   0.176823145  -0.042740275   0.129164516
                         0.013548839   0.005022646  -0.220536547  -0.002492116  -0.009391821   0.060946679   0.005733015  -0.014646426

    5    5.2  0.5  0.5  -0.141816617   0.006096845   0.007603232   0.239680515  -0.035389328   0.022757400  -0.192819570  -0.095388979
                         0.007627732  -0.036862355  -0.013553654  -0.004259807   0.007152007   0.004217131   0.003671132   0.003084602

    6    6.2  0.5  0.5  -0.002688220   0.019020976  -0.001463620  -0.003865539  -0.014622514  -0.005805330  -0.001907876  -0.009908425
                        -0.177125371   0.006109517   0.001847921  -0.247830343  -0.188399369  -0.003704317  -0.073493949  -0.053788652

    7    7.2  0.5  0.5   0.036991256   0.011674331   0.002124424   0.000209134   0.002118507   0.061556900   0.008916464  -0.005893276
                        -0.008854326  -0.169288885  -0.002833234  -0.001213191  -0.015807851  -0.097201798  -0.143094710   0.255773961

    8    8.2  0.5  0.5  -0.008949161  -0.000179093   0.011462234  -0.001413389  -0.005084658   0.109679032   0.011876609  -0.013270598
                         0.001648289  -0.087685527   0.015081954   0.004344899   0.012115091  -0.271764387   0.039885405  -0.104264014

    9    9.2  0.5  0.5   0.013788516  -0.071809407  -0.000006634  -0.000049190   0.000142007   0.000032690   0.000234812   0.000172278
                         0.128331302  -0.012397757  -0.000016209  -0.000421132  -0.000920867  -0.000373302   0.005974356   0.003120951

   10   10.2  0.5  0.5   0.035609275   0.400731950   0.000349043   0.000151963   0.000087609  -0.003056703  -0.002522943   0.003214129
                         0.071363920   0.023781235  -0.001330128   0.000005849  -0.000009598  -0.001619116  -0.000171796   0.000180008

   11   11.2  0.5  0.5   0.269438756  -0.034056850   0.000015698   0.002300240   0.004017839   0.000698539  -0.007054358  -0.003815570
                        -0.002195033  -0.002113841   0.000083336  -0.000007013   0.000070351   0.000110973   0.000137043   0.000081983

   12   12.2  0.5  0.5   0.000162435   0.000052453  -0.000043972   0.000000692  -0.000030754  -0.000238105  -0.000065877   0.000045304
                        -0.000033724  -0.000646898  -0.000011842   0.000000915   0.000137614   0.000244066   0.001261625  -0.002341230

   13    1.2  0.5 -0.5  -0.000541272  -0.020303445  -0.000041710   0.000000687  -0.000024537   0.000249991  -0.000178091   0.000364500
                        -0.000005691  -0.000213471   0.000158697  -0.000002613  -0.000009544   0.000097240   0.000000393  -0.000000805

   14    2.2  0.5 -0.5   0.030029842  -0.001379873   0.000001783   0.000119952   0.000221995   0.000000670   0.000037849   0.000035182
                        -0.001479393   0.005023015   0.000000710   0.000000230  -0.000015202  -0.000002731  -0.000000719  -0.000022137

   15    3.2  0.5 -0.5   0.004608399   0.001528923   0.000045918  -0.000004344  -0.000014990  -0.000012941  -0.000014298   0.000008538
                        -0.000835428  -0.009802954   0.000012659  -0.000000839   0.000036391  -0.000037660   0.000316106  -0.000597557

   16    4.2  0.5 -0.5  -0.037743778  -0.009270986   0.001614697   0.227951767  -0.186889358  -0.010292926   0.129196553   0.042752834
                        -0.005419763   0.013452112  -0.015947613   0.000284085  -0.007300026   0.006073624   0.014361078   0.005638591

   17    5.2  0.5 -0.5   0.005708958   0.141728585  -0.065045066   0.015041153  -0.022738170  -0.030389369  -0.095395560   0.192827209
                         0.036924417   0.009118291   0.230725020  -0.003908244  -0.004319619  -0.019494666  -0.002873889   0.003245201

   18    6.2  0.5 -0.5   0.019084156   0.004550268  -0.238707373  -0.002159265   0.006753310  -0.081925406  -0.009789586   0.001745529
                        -0.005909203  -0.177087319  -0.066735380   0.000945816  -0.001347825   0.170283199   0.053810407  -0.073497983

   19    7.2  0.5 -0.5   0.009893877  -0.036896122  -0.001226502   0.003280186  -0.022132597  -0.003756177  -0.006458244  -0.009232526
                         0.169402266  -0.009242742  -0.000106121  -0.001334455  -0.112905223   0.015500560  -0.255760319  -0.143074665

   20    8.2  0.5 -0.5  -0.001100959   0.008931337   0.004561458  -0.011672941  -0.003699860  -0.000346891  -0.013040255  -0.011788477
                         0.087678798   0.001742284  -0.000262520  -0.014919471  -0.293038706  -0.013134262   0.104293073   0.039911542

   21    9.2  0.5 -0.5  -0.071935781  -0.015136957  -0.000394795   0.000013990   0.000104861  -0.000201480   0.000165383  -0.000221615
                         0.011642109   0.128179245  -0.000154623   0.000010536  -0.000359760   0.000909708  -0.003121324   0.005974861

   22   10.2  0.5 -0.5   0.400959825  -0.036357587  -0.000032971   0.001375163   0.003435733   0.000078171   0.003213723   0.002522557
                        -0.019566850   0.070985600   0.000148459   0.000000532  -0.000400881   0.000040705  -0.000187108  -0.000177369

   23   11.2  0.5 -0.5  -0.034077191  -0.269400786  -0.000591489  -0.000076609  -0.000691252   0.003770041  -0.003815741   0.007054644
                         0.001755669  -0.005027640   0.002222902  -0.000036366  -0.000149806   0.001390960  -0.000073555   0.000121460

   24   12.2  0.5 -0.5   0.000045649  -0.000162071   0.000000709   0.000000276   0.000133431   0.000021225   0.000050476   0.000068664
                         0.000647414  -0.000035430   0.000000902   0.000045538   0.000313781  -0.000139403   0.002341124   0.001261476

   25    1.2  1.5  1.5   0.001509137  -0.000059278  -0.004810711  -0.287820502  -0.085487370  -0.005004813   0.063778209   0.028818839
                        -0.000053073   0.000217208   0.000084104  -0.001005078   0.002252333   0.000509401   0.001570032   0.001498061

   26    2.2  1.5  1.5  -0.000153801  -0.004875818  -0.031302282   0.000582861   0.008048068  -0.296673135   0.031542160  -0.095374561
                        -0.000417269  -0.000166580   0.120576946  -0.001984426   0.006296816  -0.132401647  -0.009369707   0.008772165

   27    3.2  1.5  1.5  -0.001162558  -0.000339703  -0.124621826   0.002063355  -0.006798750   0.070818886   0.001196960  -0.002324983
                         0.000183679   0.001706514  -0.032317714   0.000619245   0.016526028  -0.181396742   0.121017275  -0.249291572

   28    4.2  1.5  1.5   0.009031132  -0.032717420   0.000145742  -0.001786574   0.004699633   0.001020098   0.003100008   0.003042552
                        -0.078982403  -0.002815230   0.008525300   0.510375038   0.157706491   0.008523948  -0.106259538  -0.047108398

   29    5.2  1.5  1.5   0.058301058   0.019723976   0.118976099  -0.001957461   0.006003752  -0.199485349  -0.017985169   0.015609822
                        -0.014338070  -0.331586482   0.030921896  -0.000563472   0.000255892   0.423972409   0.057995522  -0.057194033

   30    6.2  1.5  1.5   0.336672553  -0.015198287  -0.000069424  -0.002480888  -0.129371683   0.008112099  -0.154262750  -0.089624393
                        -0.016532281   0.059236058   0.000013061  -0.000043820   0.015596591   0.002609561   0.006781866   0.008360491

   31    7.2  1.5  1.5  -0.016726387   0.059939157   0.000010079  -0.000006877   0.015496214   0.002587964   0.006716415   0.008295883
                        -0.335182058   0.015263087  -0.000106121  -0.008027716   0.126094830  -0.008285570   0.156413499   0.090572825

   32    8.2  1.5  1.5   0.014306797   0.334890135   0.034533560  -0.000673464  -0.025547744   0.068045773  -0.215012792   0.411929066
                         0.057523226   0.019543245  -0.133296532   0.002206998  -0.007474114   0.009663552  -0.007110520   0.004189195

   33    9.2  1.5  1.5   0.004603039  -0.016691510  -0.000001841   0.000001769   0.000252036   0.000042651   0.000122806   0.000143470
                        -0.033703158  -0.001573225  -0.000017479  -0.000915885   0.003162350  -0.000036197   0.001204733   0.000827365

   34    1.2  1.5  0.5   0.000169986   0.002377569  -0.001602334   0.000056793   0.014535400   0.197768883   0.153414829  -0.263896375
                         0.000968339   0.000288423   0.006408325  -0.000127072   0.000860095   0.105644797   0.014016596  -0.011054642

   35    2.2  1.5  0.5   0.001363792  -0.000035213  -0.004236325  -0.252627678  -0.188189556   0.002337935  -0.073113116  -0.049995132
                        -0.000010424   0.000067453   0.000085606  -0.000908909   0.015336159   0.002680001   0.007206411   0.008490612

   36    3.2  1.5  0.5  -0.000132179   0.000467930  -0.000060767   0.000829157   0.011131434   0.001740516   0.004310768   0.005710108
                         0.002692944   0.000009106  -0.004091437  -0.245461243   0.032842787  -0.011287580   0.186715018   0.101146821

   37    4.2  1.5  0.5   0.060193805   0.020279687   0.012539943  -0.000231919   0.000634102   0.059946253   0.008119976  -0.006380884
                        -0.014653031  -0.335377549   0.003214470  -0.000079124  -0.008795303  -0.111211392  -0.091707489   0.158605606

   38    5.2  1.5  0.5  -0.009583424   0.034751776   0.000000183   0.000229052   0.022041088   0.003645268   0.009425289   0.011741890
                         0.066955945   0.003342015  -0.001273143  -0.077960267   0.166011321  -0.013005661   0.239419332   0.137036470

   39    6.2  1.5  0.5   0.002849081  -0.064275327  -0.048244455   0.000846689  -0.020393153   0.381796066  -0.128507138   0.287861108
                         0.033344809   0.008503424   0.186389417  -0.003121941  -0.010679028   0.161557531   0.008119107  -0.008649173

   40    7.2  1.5  0.5   0.033034139   0.008303087   0.477129755  -0.007920951   0.004862147  -0.081023397  -0.004595174   0.004660026
                        -0.002587338   0.074992015   0.123681698  -0.002271886  -0.008616487   0.188266022  -0.050839285   0.118304454

   41    8.2  1.5  0.5   0.071059106   0.003009535  -0.001515655  -0.089750578  -0.215081747   0.010755758  -0.212923467  -0.125870791
                         0.009088271  -0.032936584   0.000040958  -0.000365143   0.023806148   0.004008414   0.010508523   0.012848798

   42    9.2  1.5  0.5  -0.029107562  -0.009853819   0.000783198  -0.000006020  -0.000035873  -0.000332811  -0.000082977   0.000061939
                         0.007172917   0.166320975   0.000204306  -0.000002133   0.000175404   0.000381780   0.001586066  -0.002931675

   43    1.2  1.5 -0.5  -0.002380470   0.000180157   0.000137335   0.006605136   0.222614050  -0.013858470   0.263871313   0.153383493
                         0.000263410  -0.000966498  -0.000022626   0.000079251  -0.026764501  -0.004467707  -0.011637539  -0.014355442

   44    2.2  1.5 -0.5   0.000034502   0.001363607  -0.063337207   0.001159640   0.003150444   0.169828952   0.050013765  -0.073128855
                         0.000067820   0.000024761   0.244560766  -0.004075416  -0.001650166   0.082514447   0.008380156  -0.007044893

   45    3.2  1.5 -0.5  -0.000468000  -0.000103859   0.237609451  -0.003941600  -0.002469791  -0.022280246  -0.005486670   0.003898320
                         0.000004186  -0.002694185   0.061592679  -0.001098787   0.011150739   0.026573448   0.101159188  -0.186724085

   46    4.2  1.5 -0.5  -0.016752595   0.060036424   0.000017573  -0.000078684   0.015552825   0.002597458   0.006731215   0.008322530
                        -0.335572223   0.015285065   0.000244414   0.012945146   0.125377975  -0.008426901   0.158591124   0.091689329

   47    5.2  1.5 -0.5  -0.034784991  -0.008878957   0.075457763  -0.001231371  -0.001317434  -0.080723357  -0.011439159   0.008896409
                         0.002976470  -0.067052999   0.019595448  -0.000323447   0.013442454   0.146728689   0.137062072  -0.239439568

   48    6.2  1.5 -0.5   0.064182375   0.003199492   0.003234618   0.192530582   0.414392535   0.022877276  -0.287879511  -0.128524758
                         0.009178709  -0.033313013  -0.000025301   0.000719149  -0.012161379  -0.002559802  -0.008013292  -0.007835226

   49    7.2  1.5 -0.5  -0.009091052   0.033005111   0.000183810  -0.001664004  -0.007262823  -0.001407811  -0.004398690  -0.004482863
                         0.074900577   0.002934497   0.008238273   0.492896740  -0.204831974  -0.009792977   0.118314459   0.050849311

   50    8.2  1.5 -0.5  -0.002663092   0.071150727  -0.022460846   0.000424882   0.011477239   0.191821388   0.125898866  -0.212946159
                        -0.032966404  -0.008340693   0.086895396  -0.001455459   0.000163367   0.100157106   0.012570729  -0.010038167

   51    9.2  1.5 -0.5   0.008104670  -0.029030542   0.000000533  -0.000001489  -0.000171771  -0.000030154  -0.000068415  -0.000086480
                         0.166415380  -0.007478542   0.000006364   0.000809406  -0.000476459   0.000176478  -0.002931531  -0.001585879

   52    1.2  1.5 -1.5  -0.000056991  -0.001508495   0.072189977  -0.001304192   0.004479711  -0.078855848   0.028815460  -0.063774586
                        -0.000217820  -0.000068936  -0.278622071   0.004631317   0.002289069  -0.033089555  -0.001561715   0.001710909

   53    2.2  1.5 -1.5  -0.004877300   0.000158179  -0.002067404  -0.124573238   0.324490395   0.009783311  -0.095393705  -0.031562780
                         0.000115309  -0.000415629   0.000059288  -0.000375741  -0.015847050  -0.002950951  -0.008561470  -0.009300011

   54    3.2  1.5 -1.5  -0.000321743   0.001160563   0.000074414  -0.000421844  -0.000242658  -0.000345357  -0.001774314  -0.000929641
                        -0.001709991   0.000195891   0.002152989   0.128743374  -0.194730670  -0.017866542   0.249296100   0.121019624

   55    4.2  1.5 -1.5  -0.032745210  -0.008200256   0.494065107  -0.008208227  -0.004040765   0.061550879   0.003146603  -0.003334718
                         0.002471102  -0.079072986   0.128006021  -0.002308029   0.007574331  -0.145275301   0.047101563  -0.106252431

   56    5.2  1.5 -1.5   0.016236772  -0.058147094  -0.000047390   0.000336709   0.032219727   0.005688130   0.015736121   0.018113232
                         0.331775523  -0.014950222  -0.002036396  -0.122928282   0.467449352   0.001937963   0.057159413   0.057955653

   57    6.2  1.5 -1.5  -0.014574672  -0.336480135   0.000588244  -0.000030279  -0.008506302  -0.114917575  -0.089642642   0.154277354
                        -0.059392570  -0.020070954  -0.002410538   0.000063824  -0.000508701  -0.061434819  -0.008162498   0.006441096

   58    7.2  1.5 -1.5   0.060096312   0.020249378  -0.007762285   0.000105197   0.000591715   0.060153363   0.008095795  -0.006370894
                        -0.014632077  -0.334987682  -0.002047243   0.000017227  -0.008660145  -0.111900008  -0.090590929   0.156427953

   59    8.2  1.5 -1.5   0.335077093  -0.014910773   0.002305696   0.137696399  -0.066920347  -0.026519413   0.411918807   0.214996560
                        -0.016021318   0.057369633  -0.000090339   0.000483833  -0.015661376  -0.002295723  -0.005099101  -0.007585447

   60    9.2  1.5 -1.5  -0.016707127  -0.004248448  -0.000886251   0.000016437  -0.000026627   0.001381290   0.000141642  -0.000120144
                         0.001397653  -0.033749689  -0.000231101   0.000006223  -0.000049197  -0.002855874  -0.000827680   0.001205001


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.000186022   0.001082853  -0.000252469  -0.000917431   0.016951706  -0.000000000  -0.029888436  -0.000119008
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000673439   0.000113967  -0.000149360   0.000037730  -0.000000381   0.017000044   0.000047692  -0.012045747
                        -0.001076955   0.000176194  -0.000281935   0.000044403  -0.000364551   0.000239373   0.000536618   0.027300583

    3    3.2  0.5  0.5   0.000012460  -0.000000255   0.000004365   0.000002332   0.000000301  -0.000365876  -0.000001106   0.000348383
                        -0.000048338  -0.000423752  -0.000395700  -0.001456748  -0.016902413  -0.000060165   0.029928511  -0.000430344

    4    4.2  0.5  0.5  -0.061255114  -0.007888237   0.162376242  -0.064593004   0.000069543  -0.000408810  -0.000021299   0.000031425
                        -0.102825459   0.027827226   0.349882187  -0.098988261  -0.000014387  -0.000099545   0.000000404  -0.000059274

    5    5.2  0.5  0.5   0.045551769   0.285300161   0.089981391   0.293424852  -0.001112996  -0.000030338   0.000339135   0.000003940
                        -0.006587490   0.009451732   0.022060900  -0.007065828  -0.000008368  -0.000016485  -0.000000693  -0.000004397

    6    6.2  0.5  0.5   0.004072967  -0.005963656  -0.012331744  -0.002327912   0.000021078   0.000012463  -0.000006611   0.000000775
                         0.070462262   0.405133484  -0.031501874  -0.091642319  -0.000564862  -0.000034386   0.000002935   0.000002071

    7    7.2  0.5  0.5   0.302358046  -0.051838163   0.192792015  -0.052964892  -0.000002556  -0.000054426   0.000000548  -0.000104713
                        -0.191058126   0.033314061  -0.098868036   0.026707456  -0.000014498   0.003413957   0.000000491  -0.000047152

    8    8.2  0.5  0.5   0.190721405  -0.034158943  -0.316065247   0.085482193   0.000004511   0.000035375  -0.000002082   0.000061331
                        -0.113915471   0.011070970   0.150058130  -0.039750063   0.000013846  -0.000862851  -0.000000387   0.000030511

    9    9.2  0.5  0.5  -0.000004371   0.000118314  -0.000004697  -0.000009938   0.006141163   0.001685205   0.004304558  -0.000234691
                        -0.000425436  -0.002396954  -0.001692127  -0.006120384  -0.349691936  -0.001113373  -0.245023849  -0.002368633

   10   10.2  0.5  0.5   0.002133266  -0.000758104   0.000238229   0.000056700  -0.022239586  -0.347401604  -0.015205360  -0.098575090
                         0.003508814  -0.000618573   0.000376218  -0.000145180  -0.002066445  -0.004923122  -0.002336898   0.223190377

   11   11.2  0.5  0.5  -0.001150908  -0.005874848   0.000447594   0.001681865  -0.348235607   0.022210257  -0.244215418   0.005315449
                        -0.000220881  -0.000003565  -0.000054022  -0.000108954  -0.006039554   0.000296729  -0.004170733  -0.014296503

   12   12.2  0.5  0.5  -0.002299602   0.000398624  -0.002335855   0.000646576   0.000002199  -0.007770197  -0.001425110   0.357932970
                         0.001439600  -0.000232505   0.001275803  -0.000351390  -0.001785540   0.549026820  -0.001895044   0.157969219

   13    1.2  0.5 -0.5   0.000575935  -0.000098939  -0.000436096   0.000120010   0.000000000   0.016950632   0.000047736  -0.011988612
                         0.000916989  -0.000157528  -0.000807156   0.000222122   0.000000000   0.000190812  -0.000109015   0.027378673

   14    2.2  0.5 -0.5   0.000209821   0.001270176   0.000057001   0.000319043  -0.017001661  -0.000004484   0.029839820  -0.000472428
                         0.000002799  -0.000002512   0.000012088  -0.000002609   0.000048002   0.000364524  -0.000083660  -0.000258931

   15    3.2  0.5 -0.5  -0.000358981   0.000034307  -0.001280538   0.000346062   0.000366530  -0.000189956  -0.000533948  -0.027415827
                         0.000225164  -0.000036261   0.000694508  -0.000191934  -0.000056043   0.016901346   0.000146513  -0.012003674

   16    4.2  0.5 -0.5   0.019369352   0.119655038  -0.117793774  -0.385010921   0.000409904   0.000069376  -0.000066902  -0.000008914
                        -0.021480386  -0.002817076  -0.009775412   0.023455901  -0.000094937   0.000015169   0.000005011   0.000019348

   17    5.2  0.5 -0.5   0.159746022  -0.018649064   0.133261312  -0.062181317   0.000030521  -0.001113020  -0.000005609   0.000136666
                         0.236572876  -0.042078155   0.261513848  -0.068679093  -0.000016143  -0.000004160   0.000001845  -0.000310379

   18    6.2  0.5 -0.5   0.339906195  -0.061835644  -0.081733460   0.033577169  -0.000012075   0.000014718   0.000001586  -0.000005341
                        -0.220527739   0.034027525   0.041513556  -0.004124769  -0.000034524   0.000565063   0.000001541   0.000004879

   19    7.2  0.5 -0.5   0.000640193   0.000978646  -0.001679342  -0.004658497   0.000015994  -0.000002720  -0.000001191  -0.000000230
                        -0.061616653  -0.357662743  -0.059293742  -0.216614745   0.003414354   0.000014469  -0.000114833  -0.000000699

   20    8.2  0.5 -0.5  -0.008792852  -0.004971895   0.005661372   0.018218686  -0.000025660   0.000004666   0.000003348  -0.000000481
                        -0.034815019  -0.222096081   0.094102188   0.349403438  -0.000863195  -0.000013795   0.000068419   0.000002062

   21    9.2  0.5 -0.5  -0.001966878   0.000362596  -0.005389437   0.001490966  -0.001672566   0.002204571  -0.002075600   0.226175558
                         0.001375055  -0.000222574   0.002900546  -0.000800210  -0.001132271   0.349738908  -0.001165071   0.094338925

   22   10.2  0.5 -0.5  -0.000927036  -0.004105975  -0.000100778  -0.000444237   0.347435011  -0.022261437   0.243988514  -0.003958387
                        -0.000312984   0.000059718   0.000118895  -0.000030761  -0.001012388   0.001815981  -0.000773284   0.014865909

   23   11.2  0.5 -0.5  -0.003127663   0.000799179   0.000703607  -0.000165233  -0.022212190  -0.348281528  -0.015228102  -0.094137240
                        -0.004973085   0.000857141   0.001531495  -0.000419473   0.000046707   0.002119362  -0.000865395   0.225381333

   24   12.2  0.5 -0.5   0.000015124   0.000003992  -0.000001807  -0.000012116   0.001589749  -0.000017900   0.001133148   0.001164286
                         0.000461228   0.002713043   0.000735889   0.002661531   0.549079500   0.001785452   0.391240337   0.002065567

   25    1.2  1.5  1.5  -0.017184388  -0.101422981   0.091832081   0.332846766  -0.001669208  -0.000005755   0.000080095   0.000000313
                         0.000185998  -0.000044311   0.000539961   0.001366562   0.000006531  -0.000000107  -0.000000593  -0.000000394

   26    2.2  1.5  1.5   0.103476276  -0.016941897   0.028602556  -0.007832242  -0.000331845   0.102617563   0.000781873  -0.065167550
                         0.165109302  -0.028456550   0.052570982  -0.014577143  -0.000000016   0.001451208  -0.000587802   0.147658725

   27    3.2  1.5  1.5   0.165586828  -0.028537353   0.048120316  -0.013348834  -0.000001679   0.001473644  -0.000587851   0.147625243
                        -0.103776842   0.016992194  -0.026177889   0.007161850   0.000338168  -0.104116868  -0.000781547   0.065152569

   28    4.2  1.5  1.5  -0.000038278   0.000005630  -0.000091839  -0.000231841  -0.000013932   0.000001441   0.000019538   0.000020334
                        -0.003182058  -0.018771523   0.015522685   0.056263951  -0.004820897  -0.000014886   0.006841464   0.000036085

   29    5.2  1.5  1.5  -0.052009292   0.008961422  -0.012364391   0.003432623   0.000000301   0.001721492  -0.000607675   0.152646574
                         0.032597282  -0.005338393   0.006723496  -0.001835421   0.000394140  -0.121697356  -0.000808259   0.067368709

   30    6.2  1.5  1.5   0.009944408   0.058527546   0.005118585   0.018512571   0.240312626   0.000780246  -0.334975472  -0.001768764
                        -0.000238512  -0.000058366  -0.000010114   0.000056468  -0.000696066   0.000008239   0.000970241   0.000996885

   31    7.2  1.5  1.5  -0.000237149  -0.000058368  -0.000008217   0.000061162  -0.000695955   0.000008077   0.000970034   0.000996685
                        -0.009852766  -0.057987622  -0.005420864  -0.019608422  -0.240277340  -0.000780031   0.334899566   0.001768450

   32    8.2  1.5  1.5  -0.032246500   0.005279618  -0.009341635   0.002559197  -0.000400398   0.123235055   0.000808098  -0.067357231
                        -0.051452297   0.008867044  -0.017169620   0.004758614  -0.000001049   0.001744215  -0.000607565   0.152620660

   33    9.2  1.5  1.5  -0.000292182   0.000068626  -0.000841196  -0.002130343  -0.000008282   0.000000951   0.000000631   0.000000502
                        -0.026865591  -0.158556003   0.143142583   0.518823121  -0.002101956  -0.000006709   0.000107698   0.000000456

   34    1.2  1.5  0.5  -0.058472130   0.009573971  -0.015749409   0.004312416  -0.000391825   0.119774707   0.000904726  -0.075427066
                        -0.093300902   0.016080060  -0.028947877   0.008028194  -0.000000181   0.001694577  -0.000680652   0.170905453

   35    2.2  1.5  0.5  -0.028734453  -0.168956739  -0.071086993  -0.257507177   0.063102589   0.000205073  -0.093641408  -0.000494496
                         0.000810258   0.000245474  -0.000261088  -0.000977060  -0.000182669   0.000003539   0.000271504   0.000278871

   36    3.2  1.5  0.5   0.001029187   0.000195602   0.000357820   0.000592874  -0.000178915   0.000002272   0.000270160   0.000277640
                         0.048665468   0.286576234  -0.034401465  -0.124838460  -0.062167127  -0.000202655   0.093339077   0.000493076

   37    4.2  1.5  0.5  -0.046726261   0.008052335  -0.014728963   0.004083369  -0.000000927   0.003397497  -0.001217823   0.305884025
                         0.029283424  -0.004795327   0.008013070  -0.002194620   0.000782040  -0.240066674  -0.001619429   0.134998112

   38    5.2  1.5  0.5   0.000048716  -0.000004188   0.000095154   0.000233938   0.000600343  -0.000007476  -0.000838932  -0.000862142
                         0.003626265   0.021394019  -0.015677549  -0.056825347   0.207145985   0.000674524  -0.289738873  -0.001529769

   39    6.2  1.5  0.5   0.009438615  -0.001571431  -0.029978150   0.008298204  -0.000007012   0.001856290  -0.000001821   0.000138180
                         0.015011352  -0.002558893  -0.054948302   0.015146176  -0.000000743   0.000027653   0.000001143  -0.000312349

   40    7.2  1.5  0.5   0.015323772  -0.002614727  -0.048801288   0.013449495   0.000001101  -0.000071387   0.000025906  -0.006499113
                        -0.009632223   0.001601526   0.026629085  -0.007372767  -0.000017219   0.005059207   0.000034412  -0.002868554

   41    8.2  1.5  0.5   0.002303854   0.013608780  -0.016466117  -0.059680334  -0.206408359  -0.000672921   0.290100007   0.001531689
                        -0.000014797   0.000011128  -0.000094463  -0.000245155   0.000597487  -0.000006006  -0.000840499  -0.000863267

   42    9.2  1.5  0.5   0.449113491  -0.077401616   0.136248928  -0.037787630  -0.000001435  -0.000054647   0.000001109  -0.000239909
                        -0.281467953   0.046085628  -0.074124997   0.020289113  -0.000014890   0.003893508   0.000001312  -0.000105869

   43    1.2  1.5 -0.5  -0.018709122  -0.110109203  -0.009113087  -0.032954730   0.119786193   0.000391802  -0.186809056  -0.000986394
                         0.000444970   0.000107975   0.000022093  -0.000096120  -0.000346262   0.000004230   0.000541138   0.000555738

   44    2.2  1.5 -0.5   0.089654816  -0.014596788   0.123264182  -0.034020501   0.000205100  -0.063096535  -0.000453803   0.037809405
                         0.143207730  -0.024764068   0.226090341  -0.062418220  -0.000001230  -0.000892953   0.000341114  -0.085669341

   45    3.2  1.5 -0.5  -0.242784598   0.041758636   0.109551041  -0.030096317  -0.000000009   0.000878669  -0.000340308   0.085392935
                         0.152255098  -0.025012063  -0.059862859   0.016667350   0.000202667  -0.062161175  -0.000452105   0.037686905

   46    4.2  1.5 -0.5  -0.000221966  -0.000054203  -0.000010180   0.000048569   0.000695043  -0.000007876  -0.000968408  -0.000994960
                        -0.009369418  -0.055143989  -0.004635748  -0.016767506   0.240089708   0.000782001  -0.334348006  -0.001765134

   47    5.2  1.5 -0.5  -0.018114811   0.003096731   0.049883731  -0.013747874   0.000000117  -0.002931982   0.001055498  -0.265072700
                         0.011382341  -0.001887440  -0.027217423   0.007535950  -0.000674566   0.207126105   0.001403356  -0.116986247

   48    6.2  1.5 -0.5   0.003002734   0.017732120  -0.017270108  -0.062593451   0.001856484   0.000007020   0.000341546   0.000001778
                        -0.000030263   0.000008818  -0.000101111  -0.000255411  -0.000006756  -0.000000664  -0.000001290  -0.000001209

   49    7.2  1.5 -0.5   0.000034474  -0.000006604   0.000093419   0.000230853  -0.000014435  -0.000000908   0.000020806   0.000021131
                         0.003066023   0.018099660  -0.015337467  -0.055593350  -0.005059690  -0.000017230   0.007103988   0.000037534

   50    8.2  1.5 -0.5  -0.007247499   0.001212816   0.028584393  -0.007910184  -0.000672946   0.206388557   0.001405156  -0.117132537
                        -0.011518367   0.001958836   0.052390217  -0.014441985  -0.000001569   0.002920823  -0.001056804   0.265402881

   51    9.2  1.5 -0.5   0.002140880   0.000514380   0.000111775  -0.000450014  -0.000010817   0.000001602   0.000000749   0.000000757
                         0.090057270   0.530025350   0.042889866   0.155106683  -0.003893876  -0.000014873   0.000262229   0.000001542

   52    1.2  1.5 -1.5  -0.053981166   0.008982319   0.159419109  -0.044126912   0.000005756  -0.001669029  -0.000000486   0.000032670
                        -0.085864177   0.014651134   0.292188954  -0.080537185  -0.000000042  -0.000025319   0.000000129  -0.000073131

   53    2.2  1.5 -1.5  -0.033108635  -0.194854780  -0.016547980  -0.059848004  -0.102627397  -0.000331824   0.161399163   0.000852062
                         0.000788270   0.000189830   0.000038357  -0.000175209   0.000296032  -0.000003719  -0.000467667  -0.000480443

   54    3.2  1.5 -1.5  -0.000788653  -0.000189284  -0.000044298   0.000157586  -0.000301591   0.000002127   0.000467374   0.000480126
                        -0.033203814  -0.195419024  -0.015148647  -0.054779757  -0.104126860  -0.000338166   0.161362484   0.000851976

   55    4.2  1.5 -1.5  -0.015893243   0.002715013   0.049390812  -0.013613201  -0.000001273  -0.000068196   0.000024898  -0.006259142
                         0.009988740  -0.001660020  -0.026948721   0.007459419  -0.000014902   0.004820435   0.000033101  -0.002762091

   56    5.2  1.5 -1.5   0.000245597   0.000057814   0.000016874  -0.000037988  -0.000351534   0.000004737   0.000483306   0.000496642
                         0.010428097   0.061380338   0.003892478   0.014074165  -0.121709024  -0.000394112   0.166851089   0.000880850

   57    6.2  1.5 -1.5   0.031079505  -0.005087135   0.008849525  -0.002424192  -0.000780289   0.240289566   0.001622648  -0.135251476
                         0.049593764  -0.008548052   0.016260516  -0.004508138  -0.000000544   0.003401029  -0.001220377   0.306458067

   58    7.2  1.5 -1.5  -0.049136543   0.008469723  -0.017222414   0.004773181   0.000000704  -0.003400521   0.001220169  -0.306388618
                         0.030792335  -0.005039547   0.009374561  -0.002569547  -0.000780072   0.240254284   0.001622339  -0.135220839

   59    8.2  1.5 -1.5   0.010316914   0.060722090   0.005403128   0.019546322  -0.123246880  -0.000400384   0.166822747   0.000880685
                        -0.000245173  -0.000058617  -0.000010399   0.000057289   0.000356946  -0.000003458  -0.000483186  -0.000496540

   60    9.2  1.5 -1.5  -0.134233044   0.022905916   0.455447868  -0.125536968  -0.000000876  -0.000031941   0.000000216  -0.000098401
                         0.084388985  -0.014041522  -0.248493881   0.068782093  -0.000006719   0.002101729   0.000000642  -0.000043777


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000000000   0.002784673  -0.000000000  -0.002417873
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000273201   0.000006778   0.000314173   0.000007788
                         0.000687174   0.000070373   0.003595176   0.000018898

    3    3.2  0.5  0.5  -0.000008291   0.000003120  -0.000002548   0.000003618
                        -0.000008139   0.003512163  -0.000071782   0.001163919

    4    4.2  0.5  0.5  -0.109655757   0.014288666   0.003027267   0.016121996
                        -0.315333169   0.002956712   0.067767445  -0.007698443

    5    5.2  0.5  0.5  -0.005660892  -0.226006494  -0.000863880  -0.254949279
                        -0.020032468   0.002360148   0.005253441  -0.005547047

    6    6.2  0.5  0.5   0.008760949   0.003663619  -0.002867516   0.004114730
                         0.005805051   0.108276527  -0.001922357  -0.323557778

    7    7.2  0.5  0.5  -0.143896832   0.000306613  -0.304240351   0.000360828
                         0.053055565   0.000233933   0.027369723  -0.000319900

    8    8.2  0.5  0.5   0.288699024   0.000988354  -0.152962147   0.001112397
                        -0.099724885  -0.001708039   0.010511264   0.006759507

    9    9.2  0.5  0.5  -0.000070724   0.003407322   0.000379552  -0.002578323
                         0.000652187   0.229360789   0.001513180   0.076768719

   10   10.2  0.5  0.5  -0.017839858  -0.012001552  -0.020649152   0.009726642
                        -0.044863509   0.001707115  -0.236356456   0.000859219

   11   11.2  0.5  0.5   0.001141770  -0.181095689   0.001330284   0.160175076
                         0.002875803   0.003933461   0.015116136   0.001290345

   12   12.2  0.5  0.5  -0.000137904   0.000000365  -0.000112051   0.000000122
                         0.000055594  -0.000000296   0.000009578   0.000000371

   13    1.2  0.5 -0.5   0.001047648   0.000000000  -0.000219987   0.000000000
                         0.002580085  -0.000000000  -0.002407845  -0.000000000

   14    2.2  0.5 -0.5   0.000067753  -0.000739471   0.000019528  -0.003608850
                        -0.000020196   0.000005399   0.000006037   0.000014232

   15    3.2  0.5 -0.5   0.003255300   0.000010660   0.001159420   0.000071716
                        -0.001318454   0.000004620  -0.000102294  -0.000003994

   16    4.2  0.5 -0.5   0.008115160   0.333420452  -0.006199677  -0.067761804
                         0.012126512  -0.017035101   0.016755559   0.003151008

   17    5.2  0.5 -0.5  -0.082841316   0.020690432  -0.028720218  -0.005153053
                        -0.210289852  -0.002291617  -0.253387162   0.001338273

   18    6.2  0.5 -0.5   0.101699834  -0.008674598  -0.321841417   0.002175280
                        -0.037341293  -0.005933313   0.033536083   0.002680720

   19    7.2  0.5 -0.5   0.000332099   0.004979203  -0.000285743   0.000424647
                         0.000196076   0.153285351   0.000388437   0.305468677

   20    8.2  0.5 -0.5  -0.001210712  -0.016216071   0.006832682   0.003449364
                         0.001558338  -0.305006915   0.000492780   0.153284073

   21    9.2  0.5 -0.5   0.213791677  -0.000577663   0.076215728  -0.001541437
                        -0.083133029   0.000310894  -0.009552316  -0.000240303

   22   10.2  0.5 -0.5  -0.002933524   0.048279114   0.001740620   0.237254876
                        -0.011762055  -0.000349357   0.009608125  -0.000941030

   23   11.2  0.5 -0.5  -0.064487270  -0.003094075   0.015858282  -0.015174474
                        -0.169270531   0.000024048   0.159393334   0.000050553

   24   12.2  0.5 -0.5  -0.000000136   0.000000373   0.000000381   0.000000656
                         0.000000450   0.000148687   0.000000087   0.000112458

   25    1.2  1.5  1.5   0.000473870   0.397123642   0.000423218  -0.080677676
                         0.000294094   0.000948590   0.000476872  -0.000463740

   26    2.2  1.5  1.5   0.017220887  -0.000147338   0.019989723   0.000988837
                         0.043312792  -0.000340145   0.228787418  -0.000393159

   27    3.2  1.5  1.5   0.043450634  -0.000340258   0.228772676  -0.000393243
                        -0.017276960   0.000147488  -0.019988271  -0.000988696

   28    4.2  1.5  1.5   0.000156513   0.000511713   0.000273287  -0.000229678
                        -0.000245323  -0.210622636  -0.000219596   0.047319732

   29    5.2  1.5  1.5   0.039892885  -0.000313803   0.211160002  -0.000362791
                        -0.015860203   0.000135932  -0.018449774  -0.000912702

   30    6.2  1.5  1.5  -0.000340900  -0.042832836  -0.000277038  -0.211171242
                        -0.000007980   0.000312777   0.000938271   0.000835725

   31    7.2  1.5  1.5  -0.000011187   0.000302124   0.000932440   0.000840271
                         0.000345848   0.047151879   0.000281436   0.210149604

   32    8.2  1.5  1.5   0.015975400  -0.000136279   0.018445712   0.000912416
                         0.040175214  -0.000314102   0.211119978  -0.000363073

   33    9.2  1.5  1.5  -0.000244223  -0.000787636  -0.000395794   0.000385127
                         0.000393547   0.329771195   0.000351522  -0.066962937

   34    1.2  1.5  0.5  -0.009817092   0.000084649  -0.011514721  -0.000569761
                        -0.024699154   0.000195606  -0.131783036   0.000226053

   35    2.2  1.5  0.5  -0.000700574  -0.282849261  -0.000591881  -0.218149841
                        -0.000179592  -0.000155520   0.000901143   0.001315189

   36    3.2  1.5  0.5   0.000159907   0.000939203   0.001450788   0.000779379
                         0.000153274  -0.175602698   0.000102892   0.311128925

   37    4.2  1.5  0.5   0.044123631  -0.000317081   0.209851615  -0.000366721
                        -0.017590719   0.000140900  -0.018326183  -0.000905118

   38    5.2  1.5  0.5  -0.000156953  -0.000506413  -0.000253849   0.000248147
                         0.000253090   0.212017078   0.000226284  -0.042921778

   39    6.2  1.5  0.5   0.080218270  -0.000240626  -0.004150734  -0.000273303
                         0.196211835  -0.000175519  -0.042705406  -0.000202037

   40    7.2  1.5  0.5   0.194837755  -0.000168441  -0.047004805  -0.000193956
                        -0.079666163   0.000237177   0.004525230   0.000291658

   41    8.2  1.5  0.5   0.000252566   0.211617001   0.000225228  -0.042991013
                         0.000156802   0.000505336   0.000254147  -0.000246965

   42    9.2  1.5  0.5   0.062164999  -0.000488640   0.328727907  -0.000564773
                        -0.024715120   0.000211630  -0.028721991  -0.001420825

   43    1.2  1.5 -0.5  -0.000213081  -0.026577902  -0.000173277  -0.132284102
                        -0.000004839   0.000196470   0.000587965   0.000523120

   44    2.2  1.5 -0.5   0.106557521  -0.000429967   0.018538301   0.000843554
                         0.262009968  -0.000581537   0.217364703  -0.000671415

   45    3.2  1.5 -0.5   0.162347916   0.000202173  -0.309909398   0.000234463
                        -0.066935371   0.000090494   0.027531452   0.001435409

   46    4.2  1.5 -0.5  -0.000011256   0.000301835   0.000934729   0.000842860
                         0.000346794   0.047499864   0.000282850   0.210648615

   47    5.2  1.5 -0.5  -0.196249775   0.000175447   0.042721178   0.000202249
                         0.080234180  -0.000240639  -0.004152292  -0.000273384

   48    6.2  1.5 -0.5   0.000253152   0.211975940   0.000226065  -0.042905930
                         0.000156914   0.000505945   0.000253788  -0.000248031

   49    7.2  1.5 -0.5  -0.000156381  -0.000511357  -0.000272801   0.000229800
                         0.000245296   0.210495100   0.000219688  -0.047221569

   50    8.2  1.5 -0.5  -0.080082666   0.000240302   0.004157413   0.000273585
                        -0.195879496   0.000175018   0.042790233   0.000201170

   51    9.2  1.5 -0.5  -0.000012246   0.000488376   0.001466317   0.001305952
                         0.000532359   0.066896082   0.000433159   0.329977703

   52    1.2  1.5 -1.5   0.150284582  -0.000450767  -0.007802154  -0.000513400
                         0.367590304  -0.000328411  -0.080300864  -0.000378075

   53    2.2  1.5 -1.5  -0.000370586  -0.046609459  -0.000301561  -0.229657234
                        -0.000008544   0.000339442   0.001020506   0.000909066

   54    3.2  1.5 -1.5   0.000008640  -0.000339347  -0.001020373  -0.000909171
                        -0.000370747  -0.046758269  -0.000301657  -0.229642422

   55    4.2  1.5 -1.5  -0.194955788   0.000168416   0.047102572   0.000193821
                         0.079714475  -0.000237310  -0.004534040  -0.000292133

   56    5.2  1.5 -1.5   0.000007886  -0.000313522  -0.000941924  -0.000838824
                        -0.000341888  -0.042928895  -0.000278246  -0.211962820

   57    6.2  1.5 -1.5  -0.015824754   0.000135647  -0.018380839  -0.000909174
                        -0.039803604   0.000312853  -0.210371425   0.000361256

   58    7.2  1.5 -1.5   0.043801321  -0.000316230   0.209354438  -0.000365105
                        -0.017459532   0.000140480  -0.018283361  -0.000902967

   59    8.2  1.5 -1.5  -0.000342296  -0.043233821  -0.000278553  -0.211922592
                        -0.000008096   0.000313006   0.000941666   0.000839228

   60    9.2  1.5 -1.5   0.305246758  -0.000272752  -0.066650161  -0.000314054
                        -0.124796145   0.000374340   0.006476052   0.000426135


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.007%  33.129%   0.001%  33.198%   0.561%  32.605%   0.044%   0.001%   0.044%   0.000%
    2    2.2  0.5  0.5   4.450%   0.035%  61.845%   0.005%  32.407%   0.761%   0.001%   0.081%   0.000%   0.006%
    3    3.2  0.5  0.5   0.019%  61.863%   0.028%   4.427%   0.760%  32.405%   0.006%   0.000%   0.084%   0.000%
    4    4.2  0.5  0.5   0.014%   0.000%   0.001%   0.000%   0.000%   0.000%   0.007%   0.065%   0.004%   0.941%
    5    5.2  0.5  0.5   0.000%   0.008%   0.000%   0.008%   0.000%   0.000%   0.500%   0.012%   0.492%   0.005%
    6    6.2  0.5  0.5   0.000%   0.001%   0.000%   0.014%   0.000%   0.000%   0.917%   0.018%   0.066%   0.001%
    7    7.2  0.5  0.5   0.004%   0.000%   0.011%   0.000%   0.000%   0.000%   0.013%   0.774%   0.000%   0.269%
    8    8.2  0.5  0.5   0.011%   0.000%   0.004%   0.000%   0.000%   0.000%   0.008%   0.257%   0.000%   0.801%
    9    9.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.015%   0.819%   0.016%  11.961%   0.004%
   10   10.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.015%   0.000%   0.092%  12.172%   0.023%   0.911%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   6.387%   0.013%   6.596%   0.001%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.103%   0.002%   0.000%   0.002%   0.000%   0.002%
   13    1.2  0.5 -0.5  33.129%   0.007%  33.198%   0.001%  32.605%   0.561%   0.001%   0.044%   0.000%   0.044%
   14    2.2  0.5 -0.5   0.035%   4.450%   0.005%  61.845%   0.761%  32.407%   0.081%   0.001%   0.006%   0.000%
   15    3.2  0.5 -0.5  61.863%   0.019%   4.427%   0.028%  32.405%   0.760%   0.000%   0.006%   0.000%   0.084%
   16    4.2  0.5 -0.5   0.000%   0.014%   0.000%   0.001%   0.000%   0.000%   0.065%   0.007%   0.941%   0.004%
   17    5.2  0.5 -0.5   0.008%   0.000%   0.008%   0.000%   0.000%   0.000%   0.012%   0.500%   0.005%   0.492%
   18    6.2  0.5 -0.5   0.001%   0.000%   0.014%   0.000%   0.000%   0.000%   0.018%   0.917%   0.001%   0.066%
   19    7.2  0.5 -0.5   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%   0.774%   0.013%   0.269%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.011%   0.000%   0.004%   0.000%   0.000%   0.257%   0.008%   0.801%   0.000%
   21    9.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.015%   0.000%   0.016%   0.819%   0.004%  11.961%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.015%  12.172%   0.092%   0.911%   0.023%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.013%   6.387%   0.001%   6.596%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.103%   0.002%   0.000%   0.002%   0.000%
   25    1.2  1.5  1.5   0.000%   0.074%   0.000%   0.005%   0.000%   0.000%   1.802%   0.037%  25.808%   0.008%
   26    2.2  1.5  1.5   0.002%   0.000%   0.025%   0.000%   0.009%   0.000%   0.156%   8.547%   0.001%   0.636%
   27    3.2  1.5  1.5   0.002%   0.000%   0.025%   0.000%   0.009%   0.000%   0.155%   8.533%   0.001%   0.645%
   28    4.2  1.5  1.5   0.000%   0.015%   0.000%   0.001%   0.000%   0.000%   0.158%   0.003%   1.936%   0.001%
   29    5.2  1.5  1.5   0.001%   0.000%   0.015%   0.000%   0.015%   0.000%   0.036%   1.963%   0.000%   0.144%
   30    6.2  1.5  1.5   0.000%   0.001%   0.000%   0.015%   0.001%   0.061%   1.945%   0.035%   0.137%   0.000%
   31    7.2  1.5  1.5   0.000%   0.001%   0.000%   0.015%   0.001%   0.061%   1.911%   0.035%   0.159%   0.000%
   32    8.2  1.5  1.5   0.001%   0.000%   0.015%   0.000%   0.015%   0.000%   0.036%   1.959%   0.000%   0.149%
   33    9.2  1.5  1.5   0.000%   0.228%   0.000%   0.016%   0.000%   0.000%   1.369%   0.028%  19.497%   0.006%
   34    1.2  1.5  0.5   0.001%   0.000%   0.008%   0.000%   0.013%   0.000%   0.050%   2.757%   0.000%   0.200%
   35    2.2  1.5  0.5   0.000%   0.042%   0.000%   0.019%   0.000%   0.003%   6.624%   0.117%  14.729%   0.006%
   36    3.2  1.5  0.5   0.000%   0.012%   0.000%   0.050%   0.000%   0.003%  17.141%   0.319%   4.186%   0.001%
   37    4.2  1.5  0.5   0.001%   0.000%   0.015%   0.000%   0.061%   0.001%   0.035%   1.943%   0.000%   0.168%
   38    5.2  1.5  0.5   0.000%   0.015%   0.000%   0.001%   0.001%   0.046%   0.136%   0.003%   1.984%   0.001%
   39    6.2  1.5  0.5   0.015%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.144%   0.001%   2.032%
   40    7.2  1.5  0.5   0.015%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.166%   0.001%   1.962%
   41    8.2  1.5  0.5   0.000%   0.015%   0.000%   0.001%   0.001%   0.046%   0.139%   0.003%   1.994%   0.001%
   42    9.2  1.5  0.5   0.016%   0.000%   0.228%   0.000%   0.000%   0.000%   0.349%  19.154%   0.001%   1.395%
   43    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.008%   0.000%   0.013%   2.757%   0.050%   0.200%   0.000%
   44    2.2  1.5 -0.5   0.042%   0.000%   0.019%   0.000%   0.003%   0.000%   0.117%   6.624%   0.006%  14.729%
   45    3.2  1.5 -0.5   0.012%   0.000%   0.050%   0.000%   0.003%   0.000%   0.319%  17.141%   0.001%   4.186%
   46    4.2  1.5 -0.5   0.000%   0.001%   0.000%   0.015%   0.001%   0.061%   1.943%   0.035%   0.168%   0.000%
   47    5.2  1.5 -0.5   0.015%   0.000%   0.001%   0.000%   0.046%   0.001%   0.003%   0.136%   0.001%   1.984%
   48    6.2  1.5 -0.5   0.000%   0.015%   0.000%   0.001%   0.000%   0.000%   0.144%   0.003%   2.032%   0.001%
   49    7.2  1.5 -0.5   0.000%   0.015%   0.000%   0.001%   0.000%   0.000%   0.166%   0.003%   1.962%   0.001%
   50    8.2  1.5 -0.5   0.015%   0.000%   0.001%   0.000%   0.046%   0.001%   0.003%   0.139%   0.001%   1.994%
   51    9.2  1.5 -0.5   0.000%   0.016%   0.000%   0.228%   0.000%   0.000%  19.154%   0.349%   1.395%   0.001%
   52    1.2  1.5 -1.5   0.074%   0.000%   0.005%   0.000%   0.000%   0.000%   0.037%   1.802%   0.008%  25.808%
   53    2.2  1.5 -1.5   0.000%   0.002%   0.000%   0.025%   0.000%   0.009%   8.547%   0.156%   0.636%   0.001%
   54    3.2  1.5 -1.5   0.000%   0.002%   0.000%   0.025%   0.000%   0.009%   8.533%   0.155%   0.645%   0.001%
   55    4.2  1.5 -1.5   0.015%   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   0.158%   0.001%   1.936%
   56    5.2  1.5 -1.5   0.000%   0.001%   0.000%   0.015%   0.000%   0.015%   1.963%   0.036%   0.144%   0.000%
   57    6.2  1.5 -1.5   0.001%   0.000%   0.015%   0.000%   0.061%   0.001%   0.035%   1.945%   0.000%   0.137%
   58    7.2  1.5 -1.5   0.001%   0.000%   0.015%   0.000%   0.061%   0.001%   0.035%   1.911%   0.000%   0.159%
   59    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.015%   0.000%   0.015%   1.959%   0.036%   0.149%   0.000%
   60    9.2  1.5 -1.5   0.228%   0.000%   0.016%   0.000%   0.000%   0.000%   0.028%   1.369%   0.006%  19.497%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.042%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.002%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.041%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.388%   0.003%   0.186%   0.001%   0.586%   0.042%  23.325%   1.418%
    5    5.2  0.5  0.5   0.000%   0.000%   0.002%   0.450%   0.001%   0.729%   0.016%   0.106%   0.642%   6.475%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   1.283%   0.000%   0.120%   0.002%   0.004%   0.080%   0.861%
    7    7.2  0.5  0.5   0.000%   0.000%   0.097%   0.000%   0.907%   0.003%   0.225%   0.013%   9.716%   0.490%
    8    8.2  0.5  0.5   0.000%   0.000%   0.137%   0.000%   0.193%   0.001%   0.766%   0.045%  36.015%   1.822%
    9    9.2  0.5  0.5  11.920%   0.454%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.186%  11.782%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5  11.981%   0.192%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   1.655%  43.561%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.002%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.042%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.002%   0.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.003%   0.388%   0.001%   0.186%   0.042%   0.586%   1.418%  23.325%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.450%   0.002%   0.729%   0.001%   0.106%   0.016%   6.475%   0.642%
   18    6.2  0.5 -0.5   0.000%   0.000%   1.283%   0.000%   0.120%   0.000%   0.004%   0.002%   0.861%   0.080%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.097%   0.003%   0.907%   0.013%   0.225%   0.490%   9.716%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.137%   0.001%   0.193%   0.045%   0.766%   1.822%  36.015%
   21    9.2  0.5 -0.5   0.454%  11.920%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5  11.782%   0.186%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.192%  11.981%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5  43.561%   1.655%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.001%   0.000%   0.000%  26.046%   0.009%   2.407%   0.099%   1.732%   0.001%   0.027%
   26    2.2  1.5  1.5   0.139%   3.665%   0.122%   0.000%  12.368%   0.049%  27.304%   1.568%   0.312%   0.016%
   27    3.2  1.5  1.5   0.142%   3.733%   2.731%   0.000%   0.000%   0.000%  36.489%   2.095%   0.435%   0.022%
   28    4.2  1.5  1.5   0.000%   0.000%   0.000%   9.872%   0.003%   0.875%   0.038%   0.667%   0.036%   0.725%
   29    5.2  1.5  1.5   0.005%   0.120%   0.117%   0.000%   6.356%   0.025%   2.520%   0.145%   2.510%   0.126%
   30    6.2  1.5  1.5   0.515%   0.020%   0.000%   0.215%   0.006%   1.591%   0.005%   0.086%   0.004%   0.080%
   31    7.2  1.5  1.5   0.513%   0.019%   0.000%   0.160%   0.007%   1.654%   0.006%   0.097%   0.003%   0.065%
   32    8.2  1.5  1.5   0.004%   0.118%   1.093%   0.000%   1.651%   0.006%   6.139%   0.352%   5.392%   0.271%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.188%   4.946%   5.097%   0.000%  37.965%   0.150%   2.065%   0.118%   0.027%   0.001%
   35    2.2  1.5  0.5   1.352%   0.051%   0.000%  30.747%   0.012%   3.018%   0.010%   0.174%   0.000%   0.007%
   36    3.2  1.5  0.5   1.342%   0.051%   0.000%  10.748%   0.076%  19.351%   0.193%   3.378%   0.003%   0.060%
   37    4.2  1.5  0.5   0.018%   0.471%   0.264%   0.000%   1.553%   0.006%   0.114%   0.007%   0.060%   0.003%
   38    5.2  1.5  0.5   0.332%   0.013%   0.000%   0.021%   0.016%   3.967%   0.018%   0.320%   0.021%   0.414%
   39    6.2  1.5  0.5   0.000%   0.000%   2.795%   0.000%   0.007%   0.000%   8.417%   0.483%   6.632%   0.334%
   40    7.2  1.5  0.5   0.000%   0.000%   6.197%   0.000%   1.916%   0.008%   3.274%   0.188%   1.473%   0.074%
   41    8.2  1.5  0.5   0.364%   0.014%   0.000%   1.415%   0.011%   2.794%   0.005%   0.087%   0.001%   0.018%
   42    9.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   4.946%   0.188%   0.000%   5.097%   0.150%  37.965%   0.118%   2.065%   0.001%   0.027%
   44    2.2  1.5 -0.5   0.051%   1.352%  30.747%   0.000%   3.018%   0.012%   0.174%   0.010%   0.007%   0.000%
   45    3.2  1.5 -0.5   0.051%   1.342%  10.748%   0.000%  19.351%   0.076%   3.378%   0.193%   0.060%   0.003%
   46    4.2  1.5 -0.5   0.471%   0.018%   0.000%   0.264%   0.006%   1.553%   0.007%   0.114%   0.003%   0.060%
   47    5.2  1.5 -0.5   0.013%   0.332%   0.021%   0.000%   3.967%   0.016%   0.320%   0.018%   0.414%   0.021%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.000%   2.795%   0.000%   0.007%   0.483%   8.417%   0.334%   6.632%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.000%   6.197%   0.008%   1.916%   0.188%   3.274%   0.074%   1.473%
   50    8.2  1.5 -0.5   0.014%   0.364%   1.415%   0.000%   2.794%   0.011%   0.087%   0.005%   0.018%   0.001%
   51    9.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.001%  26.046%   0.000%   2.407%   0.009%   1.732%   0.099%   0.027%   0.001%
   53    2.2  1.5 -1.5   3.665%   0.139%   0.000%   0.122%   0.049%  12.368%   1.568%  27.304%   0.016%   0.312%
   54    3.2  1.5 -1.5   3.733%   0.142%   0.000%   2.731%   0.000%   0.000%   2.095%  36.489%   0.022%   0.435%
   55    4.2  1.5 -1.5   0.000%   0.000%   9.872%   0.000%   0.875%   0.003%   0.667%   0.038%   0.725%   0.036%
   56    5.2  1.5 -1.5   0.120%   0.005%   0.000%   0.117%   0.025%   6.356%   0.145%   2.520%   0.126%   2.510%
   57    6.2  1.5 -1.5   0.020%   0.515%   0.215%   0.000%   1.591%   0.006%   0.086%   0.005%   0.080%   0.004%
   58    7.2  1.5 -1.5   0.019%   0.513%   0.160%   0.000%   1.654%   0.007%   0.097%   0.006%   0.065%   0.003%
   59    8.2  1.5 -1.5   0.118%   0.004%   0.000%   1.093%   0.006%   1.651%   0.352%   6.139%   0.271%   5.392%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   2.164%   0.097%   0.716%  20.630%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
    5    5.2  0.5  0.5   0.062%  15.811%  24.783%   0.563%   0.000%   0.000%   0.008%   0.000%   0.000%   0.016%
    6    6.2  0.5  0.5   0.015%  14.601%  31.814%   0.913%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%
    7    7.2  0.5  0.5  37.973%   0.069%   0.005%   0.141%   0.000%   0.000%   0.000%   0.014%   0.012%   0.000%
    8    8.2  0.5  0.5   9.764%   0.005%   0.032%   0.807%   0.000%   0.001%   0.000%   0.002%   0.005%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.097%   2.164%  20.630%   0.716%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   17    5.2  0.5 -0.5  15.811%   0.062%   0.563%  24.783%   0.000%   0.000%   0.000%   0.008%   0.016%   0.000%
   18    6.2  0.5 -0.5  14.601%   0.015%   0.913%  31.814%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%
   19    7.2  0.5 -0.5   0.069%  37.973%   0.141%   0.005%   0.000%   0.000%   0.014%   0.000%   0.000%   0.012%
   20    8.2  0.5 -0.5   0.005%   9.764%   0.807%   0.032%   0.001%   0.000%   0.002%   0.000%   0.000%   0.005%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.205%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.110%   0.000%   0.001%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.002%   0.000%   0.001%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  1.5   0.000%   0.001%   8.378%   0.181%   1.422%   0.001%   0.033%   0.000%   0.034%  27.284%
   29    5.2  1.5  1.5   5.590%   0.009%   0.007%   0.338%   0.000%   0.643%   0.020%  10.652%   0.518%   0.001%
   30    6.2  1.5  1.5   0.003%   1.752%   0.008%   0.000%  36.891%   0.014%  12.605%   0.024%   0.002%   1.262%
   31    7.2  1.5  1.5   0.002%   1.363%   0.004%   0.000%  47.389%   0.018%   1.982%   0.004%   0.003%   2.157%
   32    8.2  1.5  1.5   1.611%   0.003%   0.019%   0.895%   0.000%   0.696%   0.002%   1.336%   0.129%   0.000%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.395%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    2.2  1.5  0.5   0.000%   0.087%   0.174%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    3.2  1.5  0.5   0.000%   0.104%   0.149%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    4.2  1.5  0.5   1.279%   0.002%   0.001%   0.045%   0.002%   6.142%   0.080%  43.353%   0.303%   0.000%
   38    5.2  1.5  0.5   0.006%   3.540%   0.155%   0.003%   6.138%   0.002%  15.578%   0.029%   0.029%  23.342%
   39    6.2  1.5  0.5   0.151%   0.000%   0.043%   1.988%   0.000%   0.272%   0.001%   0.745%   9.084%   0.011%
   40    7.2  1.5  0.5   0.256%   0.000%   0.137%   6.344%   0.000%   0.213%   0.002%   0.808%   4.641%   0.006%
   41    8.2  1.5  0.5   0.005%   3.168%   0.432%   0.009%   0.154%   0.000%  12.697%   0.024%   0.039%  31.121%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.001%   0.395%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.087%   0.000%   0.004%   0.174%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.104%   0.000%   0.003%   0.149%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.002%   1.279%   0.045%   0.001%   6.142%   0.002%  43.353%   0.080%   0.000%   0.303%
   47    5.2  1.5 -0.5   3.540%   0.006%   0.003%   0.155%   0.002%   6.138%   0.029%  15.578%  23.342%   0.029%
   48    6.2  1.5 -0.5   0.000%   0.151%   1.988%   0.043%   0.272%   0.000%   0.745%   0.001%   0.011%   9.084%
   49    7.2  1.5 -0.5   0.000%   0.256%   6.344%   0.137%   0.213%   0.000%   0.808%   0.002%   0.006%   4.641%
   50    8.2  1.5 -0.5   3.168%   0.005%   0.009%   0.432%   0.000%   0.154%   0.024%  12.697%  31.121%   0.039%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.004%   0.205%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.110%   0.028%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.002%   0.037%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.001%   0.000%   0.181%   8.378%   0.001%   1.422%   0.000%   0.033%  27.284%   0.034%
   56    5.2  1.5 -1.5   0.009%   5.590%   0.338%   0.007%   0.643%   0.000%  10.652%   0.020%   0.001%   0.518%
   57    6.2  1.5 -1.5   1.752%   0.003%   0.000%   0.008%   0.014%  36.891%   0.024%  12.605%   1.262%   0.002%
   58    7.2  1.5 -1.5   1.363%   0.002%   0.000%   0.004%   0.018%  47.389%   0.004%   1.982%   2.157%   0.003%
   59    8.2  1.5 -1.5   0.003%   1.611%   0.895%   0.019%   0.696%   0.000%   1.336%   0.002%   0.000%   0.129%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.074%   0.000%   0.068%   0.000%   0.006%   0.000%   0.004%   0.053%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.008%   0.000%   0.134%   0.000%   0.006%   0.003%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%   0.132%   0.000%   0.011%   0.000%   0.005%   0.000%   0.004%   0.082%
    4    4.2  0.5  0.5   0.000%   0.113%   0.020%   5.221%   0.009%   0.328%   0.000%   0.000%   3.251%   0.235%
    5    5.2  0.5  0.5   0.021%   0.000%   2.661%   0.027%   2.881%   0.002%   0.000%   0.000%   0.172%   1.314%
    6    6.2  0.5  0.5   0.004%   0.000%   0.425%   0.006%   5.127%   0.006%   0.000%   0.000%   0.051%   0.403%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   1.311%   0.009%   4.220%   0.000%   0.000%   0.758%   0.083%
    8    8.2  0.5  0.5   0.000%   0.060%   0.001%   4.229%   0.000%   1.313%   0.000%   0.000%   2.976%   0.166%
    9    9.2  0.5  0.5   0.000%   0.000%  27.891%   0.011%   2.315%   0.003%   3.001%   0.008%   0.761%  14.521%
   10   10.2  0.5  0.5   0.000%   0.000%   0.062%   1.756%   0.218%  28.199%   0.023%   2.918%   0.627%   0.274%
   11   11.2  0.5  0.5   0.000%   0.000%  15.608%   0.003%  14.360%   0.257%   2.952%   0.025%   0.591%   9.588%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.030%   9.185%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.074%   0.000%   0.068%   0.000%   0.006%   0.053%   0.004%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.008%   0.000%   0.134%   0.000%   0.006%   0.000%   0.001%   0.003%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.132%   0.000%   0.011%   0.000%   0.005%   0.082%   0.004%
   16    4.2  0.5 -0.5   0.113%   0.000%   5.221%   0.020%   0.328%   0.009%   0.000%   0.000%   0.235%   3.251%
   17    5.2  0.5 -0.5   0.000%   0.021%   0.027%   2.661%   0.002%   2.881%   0.000%   0.000%   1.314%   0.172%
   18    6.2  0.5 -0.5   0.000%   0.004%   0.006%   0.425%   0.006%   5.127%   0.000%   0.000%   0.403%   0.051%
   19    7.2  0.5 -0.5   0.000%   0.000%   1.311%   0.000%   4.220%   0.009%   0.000%   0.000%   0.083%   0.758%
   20    8.2  0.5 -0.5   0.060%   0.000%   4.229%   0.001%   1.313%   0.000%   0.000%   0.000%   0.166%   2.976%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.011%  27.891%   0.003%   2.315%   0.008%   3.001%  14.521%   0.761%
   22   10.2  0.5 -0.5   0.000%   0.000%   1.756%   0.062%  28.199%   0.218%   2.918%   0.023%   0.274%   0.627%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.003%  15.608%   0.257%  14.360%   0.025%   2.952%   9.588%   0.591%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.185%   0.030%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   2.656%   0.001%   0.162%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.001%   0.000%   0.054%   0.002%   0.886%   0.056%  17.354%   0.001%   0.000%
   27    3.2  1.5  1.5   0.000%   0.002%   0.000%   0.057%   0.002%   0.885%   0.056%  17.342%   0.005%   0.000%
   28    4.2  1.5  1.5   0.188%   0.000%   0.535%   0.000%   0.038%   0.000%   0.001%   0.000%   0.605%  11.279%
   29    5.2  1.5  1.5   0.000%  21.427%   0.000%   0.032%   0.001%   0.527%   0.002%   0.607%   0.383%   0.208%
   30    6.2  1.5  1.5   0.384%   0.000%   0.033%   0.000%   0.528%   0.001%   2.472%   0.008%   0.215%   0.415%
   31    7.2  1.5  1.5   0.028%   0.000%   0.039%   0.000%   0.529%   0.001%   2.470%   0.008%   0.217%   0.510%
   32    8.2  1.5  1.5   0.000%  31.407%   0.000%   0.033%   0.001%   0.528%   0.002%   0.609%   0.274%   0.209%
   33    9.2  1.5  1.5   0.000%   0.000%  31.076%   0.011%   1.914%   0.003%   0.000%   0.000%   0.143%   2.683%
   34    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.019%   0.001%   0.295%   0.075%  23.112%   0.002%   0.000%
   35    2.2  1.5  0.5   0.000%   0.000%   1.476%   0.001%   0.724%   0.001%   5.746%   0.019%   0.000%   0.000%
   36    3.2  1.5  0.5   0.000%   0.000%   0.459%   0.000%   1.748%   0.003%   5.773%   0.019%   0.000%   0.004%
   37    4.2  1.5  0.5   0.000%   1.730%   0.000%   0.038%   0.001%   0.525%   0.008%   2.428%   0.514%   0.218%
   38    5.2  1.5  0.5   0.089%   0.000%   0.531%   0.000%   0.033%   0.000%   1.823%   0.006%   0.605%  11.382%
   39    6.2  1.5  0.5   0.000%  18.708%   0.000%   0.526%   0.000%   0.032%   0.000%   0.000%  10.456%   0.555%
   40    7.2  1.5  0.5   0.000%  24.170%   0.000%   0.532%   0.000%   0.038%   0.000%   0.001%  11.099%   0.594%
   41    8.2  1.5  0.5   1.664%   0.000%   0.527%   0.000%   0.033%   0.000%   1.837%   0.006%   0.576%  10.788%
   42    9.2  1.5  0.5   0.000%   0.000%   0.001%   1.916%   0.055%  31.042%   0.000%   0.000%   0.090%   0.052%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.019%   0.000%   0.295%   0.001%  23.112%   0.075%   0.000%   0.002%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.001%   1.476%   0.001%   0.724%   0.019%   5.746%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.459%   0.003%   1.748%   0.019%   5.773%   0.004%   0.000%
   46    4.2  1.5 -0.5   1.730%   0.000%   0.038%   0.000%   0.525%   0.001%   2.428%   0.008%   0.218%   0.514%
   47    5.2  1.5 -0.5   0.000%   0.089%   0.000%   0.531%   0.000%   0.033%   0.006%   1.823%  11.382%   0.605%
   48    6.2  1.5 -0.5  18.708%   0.000%   0.526%   0.000%   0.032%   0.000%   0.000%   0.000%   0.555%  10.456%
   49    7.2  1.5 -0.5  24.170%   0.000%   0.532%   0.000%   0.038%   0.000%   0.001%   0.000%   0.594%  11.099%
   50    8.2  1.5 -0.5   0.000%   1.664%   0.000%   0.527%   0.000%   0.033%   0.006%   1.837%  10.788%   0.576%
   51    9.2  1.5 -0.5   0.000%   0.000%   1.916%   0.001%  31.042%   0.055%   0.000%   0.000%   0.052%   0.090%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.001%   2.656%   0.000%   0.162%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.001%   0.000%   0.054%   0.000%   0.886%   0.002%  17.354%   0.056%   0.000%   0.001%
   54    3.2  1.5 -1.5   0.002%   0.000%   0.057%   0.000%   0.885%   0.002%  17.342%   0.056%   0.000%   0.005%
   55    4.2  1.5 -1.5   0.000%   0.188%   0.000%   0.535%   0.000%   0.038%   0.000%   0.001%  11.279%   0.605%
   56    5.2  1.5 -1.5  21.427%   0.000%   0.032%   0.000%   0.527%   0.001%   0.607%   0.002%   0.208%   0.383%
   57    6.2  1.5 -1.5   0.000%   0.384%   0.000%   0.033%   0.001%   0.528%   0.008%   2.472%   0.415%   0.215%
   58    7.2  1.5 -1.5   0.000%   0.028%   0.000%   0.039%   0.001%   0.529%   0.008%   2.470%   0.510%   0.217%
   59    8.2  1.5 -1.5  31.407%   0.000%   0.033%   0.000%   0.528%   0.001%   0.609%   0.002%   0.209%   0.274%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.011%  31.076%   0.003%   1.914%   0.000%   0.000%   2.683%   0.143%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.003%   0.090%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.010%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.027%   0.145%   5.196%   0.026%   0.014%   3.498%   0.186%   1.690%   1.433%   0.084%
    5    5.2  0.5  0.5   2.017%   0.140%   0.024%   5.746%   0.130%   0.054%   3.719%   0.911%   0.212%   8.149%
    6    6.2  0.5  0.5   3.138%   0.040%   0.001%   6.143%   3.571%   0.005%   0.541%   0.299%   0.498%  16.417%
    7    7.2  0.5  0.5   0.145%   2.880%   0.001%   0.000%   0.025%   1.324%   2.056%   6.546%  12.792%   0.380%
    8    8.2  0.5  0.5   0.008%   0.769%   0.036%   0.002%   0.017%   8.589%   0.173%   1.105%   4.935%   0.129%
    9    9.2  0.5  0.5   1.666%   0.531%   0.000%   0.000%   0.000%   0.000%   0.004%   0.001%   0.000%   0.001%
   10   10.2  0.5  0.5   0.636%  16.115%   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%   0.002%   0.000%
   11   11.2  0.5  0.5   7.260%   0.116%   0.000%   0.001%   0.002%   0.000%   0.005%   0.001%   0.000%   0.003%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.090%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.002%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.145%   0.027%   0.026%   5.196%   3.498%   0.014%   1.690%   0.186%   0.084%   1.433%
   17    5.2  0.5 -0.5   0.140%   2.017%   5.746%   0.024%   0.054%   0.130%   0.911%   3.719%   8.149%   0.212%
   18    6.2  0.5 -0.5   0.040%   3.138%   6.143%   0.001%   0.005%   3.571%   0.299%   0.541%  16.417%   0.498%
   19    7.2  0.5 -0.5   2.880%   0.145%   0.000%   0.001%   1.324%   0.025%   6.546%   2.056%   0.380%  12.792%
   20    8.2  0.5 -0.5   0.769%   0.008%   0.002%   0.036%   8.589%   0.017%   1.105%   0.173%   0.129%   4.935%
   21    9.2  0.5 -0.5   0.531%   1.666%   0.000%   0.000%   0.000%   0.000%   0.001%   0.004%   0.001%   0.000%
   22   10.2  0.5 -0.5  16.115%   0.636%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.002%
   23   11.2  0.5 -0.5   0.116%   7.260%   0.001%   0.000%   0.000%   0.002%   0.001%   0.005%   0.003%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
   25    1.2  1.5  1.5   0.000%   0.000%   0.002%   8.284%   0.731%   0.003%   0.407%   0.083%   0.030%   1.029%
   26    2.2  1.5  1.5   0.000%   0.002%   1.552%   0.000%   0.010%  10.555%   0.108%   0.917%   3.797%   0.110%
   27    3.2  1.5  1.5   0.000%   0.000%   1.658%   0.000%   0.032%   3.792%   1.465%   6.215%   3.819%   0.110%
   28    4.2  1.5  1.5   0.632%   0.108%   0.007%  26.049%   2.489%   0.007%   1.130%   0.223%   0.001%   0.035%
   29    5.2  1.5  1.5   0.360%  11.034%   1.511%   0.000%   0.004%  21.955%   0.369%   0.351%   0.377%   0.011%
   30    6.2  1.5  1.5  11.362%   0.374%   0.000%   0.001%   1.698%   0.007%   2.384%   0.810%   0.010%   0.343%
   31    7.2  1.5  1.5  11.263%   0.383%   0.000%   0.006%   1.614%   0.008%   2.451%   0.827%   0.010%   0.336%
   32    8.2  1.5  1.5   0.351%  11.253%   1.896%   0.001%   0.071%   0.472%   4.628%  16.970%   0.369%   0.011%
   33    9.2  1.5  1.5   0.116%   0.028%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.072%   2.514%
   34    1.2  1.5  0.5   0.000%   0.001%   0.004%   0.000%   0.021%   5.027%   2.373%   6.976%   1.212%   0.035%
   35    2.2  1.5  0.5   0.000%   0.000%   0.002%   6.382%   3.565%   0.001%   0.540%   0.257%   0.083%   2.855%
   36    3.2  1.5  0.5   0.001%   0.000%   0.002%   6.025%   0.120%   0.013%   3.488%   1.026%   0.237%   8.213%
   37    4.2  1.5  0.5   0.384%  11.289%   0.017%   0.000%   0.008%   1.596%   0.848%   2.520%   0.304%   0.009%
   38    5.2  1.5  0.5   0.457%   0.122%   0.000%   0.608%   2.805%   0.018%   5.741%   1.892%   0.001%   0.046%
   39    6.2  1.5  0.5   0.112%   0.420%   3.707%   0.001%   0.053%  17.187%   1.658%   8.294%   0.031%   0.001%
   40    7.2  1.5  0.5   0.110%   0.569%  24.295%   0.007%   0.010%   4.201%   0.261%   1.402%   0.033%   0.001%
   41    8.2  1.5  0.5   0.513%   0.109%   0.000%   0.806%   4.683%   0.013%   4.545%   1.601%   0.001%   0.019%
   42    9.2  1.5  0.5   0.090%   2.776%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  28.093%   0.811%
   43    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.004%   5.027%   0.021%   6.976%   2.373%   0.035%   1.212%
   44    2.2  1.5 -0.5   0.000%   0.000%   6.382%   0.002%   0.001%   3.565%   0.257%   0.540%   2.855%   0.083%
   45    3.2  1.5 -0.5   0.000%   0.001%   6.025%   0.002%   0.013%   0.120%   1.026%   3.488%   8.213%   0.237%
   46    4.2  1.5 -0.5  11.289%   0.384%   0.000%   0.017%   1.596%   0.008%   2.520%   0.848%   0.009%   0.304%
   47    5.2  1.5 -0.5   0.122%   0.457%   0.608%   0.000%   0.018%   2.805%   1.892%   5.741%   0.046%   0.001%
   48    6.2  1.5 -0.5   0.420%   0.112%   0.001%   3.707%  17.187%   0.053%   8.294%   1.658%   0.001%   0.031%
   49    7.2  1.5 -0.5   0.569%   0.110%   0.007%  24.295%   4.201%   0.010%   1.402%   0.261%   0.001%   0.033%
   50    8.2  1.5 -0.5   0.109%   0.513%   0.806%   0.000%   0.013%   4.683%   1.601%   4.545%   0.019%   0.001%
   51    9.2  1.5 -0.5   2.776%   0.090%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.811%  28.093%
   52    1.2  1.5 -1.5   0.000%   0.000%   8.284%   0.002%   0.003%   0.731%   0.083%   0.407%   1.029%   0.030%
   53    2.2  1.5 -1.5   0.002%   0.000%   0.000%   1.552%  10.555%   0.010%   0.917%   0.108%   0.110%   3.797%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.000%   1.658%   3.792%   0.032%   6.215%   1.465%   0.110%   3.819%
   55    4.2  1.5 -1.5   0.108%   0.632%  26.049%   0.007%   0.007%   2.489%   0.223%   1.130%   0.035%   0.001%
   56    5.2  1.5 -1.5  11.034%   0.360%   0.000%   1.511%  21.955%   0.004%   0.351%   0.369%   0.011%   0.377%
   57    6.2  1.5 -1.5   0.374%  11.362%   0.001%   0.000%   0.007%   1.698%   0.810%   2.384%   0.343%   0.010%
   58    7.2  1.5 -1.5   0.383%  11.263%   0.006%   0.000%   0.008%   1.614%   0.827%   2.451%   0.336%   0.010%
   59    8.2  1.5 -1.5  11.253%   0.351%   0.001%   1.896%   0.472%   0.071%  16.970%   4.628%   0.011%   0.369%
   60    9.2  1.5 -1.5   0.028%   0.116%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   2.514%   0.072%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%   0.001%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.029%   0.000%   0.090%   0.000%   0.000%   0.001%   0.000%   0.000%
    4    4.2  0.5  0.5  14.878%   1.397%   0.000%   0.000%   0.000%   0.000%  11.146%   0.021%   0.460%   0.032%
    5    5.2  0.5  0.5   0.858%   8.615%   0.000%   0.000%   0.000%   0.000%   0.043%   5.108%   0.003%   6.503%
    6    6.2  0.5  0.5   0.114%   0.840%   0.000%   0.000%   0.000%   0.000%   0.011%   1.174%   0.001%  10.471%
    7    7.2  0.5  0.5   4.694%   0.352%   0.000%   0.001%   0.000%   0.000%   2.352%   0.000%   9.331%   0.000%
    8    8.2  0.5  0.5  12.241%   0.889%   0.000%   0.000%   0.000%   0.000%   9.329%   0.000%   2.351%   0.005%
    9    9.2  0.5  0.5   0.000%   0.004%  12.232%   0.000%   6.006%   0.001%   0.000%   5.262%   0.000%   0.590%
   10   10.2  0.5  0.5   0.000%   0.000%   0.050%  12.071%   0.024%   5.953%   0.233%   0.015%   5.629%   0.010%
   11   11.2  0.5  0.5   0.000%   0.000%  12.130%   0.049%   5.966%   0.023%   0.001%   3.281%   0.023%   2.566%
   12   12.2  0.5  0.5   0.001%   0.000%   0.000%  30.149%   0.001%  15.307%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.089%   0.001%   0.000%   0.001%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.000%   0.000%   0.001%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.090%   0.001%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   1.397%  14.878%   0.000%   0.000%   0.000%   0.000%   0.021%  11.146%   0.032%   0.460%
   17    5.2  0.5 -0.5   8.615%   0.858%   0.000%   0.000%   0.000%   0.000%   5.108%   0.043%   6.503%   0.003%
   18    6.2  0.5 -0.5   0.840%   0.114%   0.000%   0.000%   0.000%   0.000%   1.174%   0.011%  10.471%   0.001%
   19    7.2  0.5 -0.5   0.352%   4.694%   0.001%   0.000%   0.000%   0.000%   0.000%   2.352%   0.000%   9.331%
   20    8.2  0.5 -0.5   0.889%  12.241%   0.000%   0.000%   0.000%   0.000%   0.000%   9.329%   0.005%   2.351%
   21    9.2  0.5 -0.5   0.004%   0.000%   0.000%  12.232%   0.001%   6.006%   5.262%   0.000%   0.590%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%  12.071%   0.050%   5.953%   0.024%   0.015%   0.233%   0.010%   5.629%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.049%  12.130%   0.023%   5.966%   3.281%   0.001%   2.566%   0.023%
   24   12.2  0.5 -0.5   0.000%   0.001%  30.149%   0.000%  15.307%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.843%  11.079%   0.000%   0.000%   0.000%   0.000%   0.000%  15.771%   0.000%   0.651%
   26    2.2  1.5  1.5   0.358%   0.027%   0.000%   1.053%   0.000%   2.605%   0.217%   0.000%   5.274%   0.000%
   27    3.2  1.5  1.5   0.300%   0.023%   0.000%   1.084%   0.000%   2.604%   0.219%   0.000%   5.274%   0.000%
   28    4.2  1.5  1.5   0.024%   0.317%   0.002%   0.000%   0.005%   0.000%   0.000%   4.436%   0.000%   0.224%
   29    5.2  1.5  1.5   0.020%   0.002%   0.000%   1.481%   0.000%   2.784%   0.184%   0.000%   4.493%   0.000%
   30    6.2  1.5  1.5   0.003%   0.034%   5.775%   0.000%  11.221%   0.000%   0.000%   0.183%   0.000%   4.459%
   31    7.2  1.5  1.5   0.003%   0.038%   5.773%   0.000%  11.216%   0.000%   0.000%   0.222%   0.000%   4.416%
   32    8.2  1.5  1.5   0.038%   0.003%   0.000%   1.519%   0.000%   2.783%   0.187%   0.000%   4.491%   0.000%
   33    9.2  1.5  1.5   2.049%  26.918%   0.000%   0.000%   0.000%   0.000%   0.000%  10.875%   0.000%   0.448%
   34    1.2  1.5  0.5   0.109%   0.008%   0.000%   1.435%   0.000%   3.490%   0.071%   0.000%   1.750%   0.000%
   35    2.2  1.5  0.5   0.505%   6.631%   0.398%   0.000%   0.877%   0.000%   0.000%   8.000%   0.000%   4.759%
   36    3.2  1.5  0.5   0.118%   1.558%   0.386%   0.000%   0.871%   0.000%   0.000%   3.084%   0.000%   9.680%
   37    4.2  1.5  0.5   0.028%   0.002%   0.000%   5.764%   0.000%  11.179%   0.226%   0.000%   4.437%   0.000%
   38    5.2  1.5  0.5   0.025%   0.323%   4.291%   0.000%   8.395%   0.000%   0.000%   4.495%   0.000%   0.184%
   39    6.2  1.5  0.5   0.392%   0.030%   0.000%   0.000%   0.000%   0.000%   4.493%   0.000%   0.184%   0.000%
   40    7.2  1.5  0.5   0.309%   0.024%   0.000%   0.003%   0.000%   0.005%   4.431%   0.000%   0.223%   0.000%
   41    8.2  1.5  0.5   0.027%   0.356%   4.260%   0.000%   8.416%   0.000%   0.000%   4.478%   0.000%   0.185%
   42    9.2  1.5  0.5   2.406%   0.184%   0.000%   0.002%   0.000%   0.000%   0.448%   0.000%  10.889%   0.000%
   43    1.2  1.5 -0.5   0.008%   0.109%   1.435%   0.000%   3.490%   0.000%   0.000%   0.071%   0.000%   1.750%
   44    2.2  1.5 -0.5   6.631%   0.505%   0.000%   0.398%   0.000%   0.877%   8.000%   0.000%   4.759%   0.000%
   45    3.2  1.5 -0.5   1.558%   0.118%   0.000%   0.386%   0.000%   0.871%   3.084%   0.000%   9.680%   0.000%
   46    4.2  1.5 -0.5   0.002%   0.028%   5.764%   0.000%  11.179%   0.000%   0.000%   0.226%   0.000%   4.437%
   47    5.2  1.5 -0.5   0.323%   0.025%   0.000%   4.291%   0.000%   8.395%   4.495%   0.000%   0.184%   0.000%
   48    6.2  1.5 -0.5   0.030%   0.392%   0.000%   0.000%   0.000%   0.000%   0.000%   4.493%   0.000%   0.184%
   49    7.2  1.5 -0.5   0.024%   0.309%   0.003%   0.000%   0.005%   0.000%   0.000%   4.431%   0.000%   0.223%
   50    8.2  1.5 -0.5   0.356%   0.027%   0.000%   4.260%   0.000%   8.416%   4.478%   0.000%   0.185%   0.000%
   51    9.2  1.5 -0.5   0.184%   2.406%   0.002%   0.000%   0.000%   0.000%   0.000%   0.448%   0.000%  10.889%
   52    1.2  1.5 -1.5  11.079%   0.843%   0.000%   0.000%   0.000%   0.000%  15.771%   0.000%   0.651%   0.000%
   53    2.2  1.5 -1.5   0.027%   0.358%   1.053%   0.000%   2.605%   0.000%   0.000%   0.217%   0.000%   5.274%
   54    3.2  1.5 -1.5   0.023%   0.300%   1.084%   0.000%   2.604%   0.000%   0.000%   0.219%   0.000%   5.274%
   55    4.2  1.5 -1.5   0.317%   0.024%   0.000%   0.002%   0.000%   0.005%   4.436%   0.000%   0.224%   0.000%
   56    5.2  1.5 -1.5   0.002%   0.020%   1.481%   0.000%   2.784%   0.000%   0.000%   0.184%   0.000%   4.493%
   57    6.2  1.5 -1.5   0.034%   0.003%   0.000%   5.775%   0.000%  11.221%   0.183%   0.000%   4.459%   0.000%
   58    7.2  1.5 -1.5   0.038%   0.003%   0.000%   5.773%   0.000%  11.216%   0.222%   0.000%   4.416%   0.000%
   59    8.2  1.5 -1.5   0.003%   0.038%   1.519%   0.000%   2.783%   0.000%   0.000%   0.187%   0.000%   4.491%
   60    9.2  1.5 -1.5  26.918%   2.049%   0.000%   0.000%   0.000%   0.000%  10.875%   0.000%   0.448%   0.000%


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
              1      21       61.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4111.86       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    110793.98 102122.05   2606.37   6055.91      5.64      0.48      3.12
 REAL TIME  *    112508.98 SEC
 DISK USED  *         4.08 GB (local),       65.72 GB (total)
 SF USED    *        25.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -261.939627529961

              CI              CI           MULTI         RHF-SCF
   -261.93049889   -261.93057550   -261.09388628   -261.43913600
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
