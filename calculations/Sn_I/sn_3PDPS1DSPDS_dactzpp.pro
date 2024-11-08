
 Working directory              : /wrk/irikura/molpro.EGrQFzdryC/
 Global scratch directory       : /wrk/irikura/molpro.EGrQFzdryC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EGrQFzdryC/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector,basis;
 
 symmetry,xyz
 geometry={Sn};
 
                                                                                 !basis=aug-cc-pwCVTZ-PP
 basis={
 ecp,sn,ECP28MDF;
 spdfg,sn,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
                                                                                 ! add 6p to active space
 {multi
     closed,6,3
     occ,7,9
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
     wf,nelec=22,sym=1,spin=0;state,NSING;
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 13-Sep-24          TIME: 14:43:58  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sn   ECP ECP28MDF                 selected for group  1
 Library entry SN     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sn S diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry SN     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sn P diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry SN     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sn D diffuse               selected for group 1    nprim= 1    centre=  0.014    ratio= 3.000    dratio= 1.000
 Library entry SN     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sn F diffuse               selected for group 1    nprim= 1    centre=  0.036    ratio= 3.000    dratio= 1.000
 Library entry SN     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  SN     22.00    0.000000000    0.000000000    0.000000000


          SN  CORE POTENTIAL

          g POTENTIAL

 POWERS             2
 EXPONENTIALS   1.000000    
 COEFFICIENTS   0.000000    

          s - g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   17.42041       7.631155    
 COEFFICIENTS   279.9887       62.37781    

          p - g POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   16.13102       15.62808       7.325608       6.942519    
 COEFFICIENTS   66.16252       132.1744       16.33942       32.48896    

          d - g POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   15.51498       15.18816       5.456024       5.363105    
 COEFFICIENTS   36.38744       54.50784       8.696823       12.84021    

          f - g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   12.28235       12.27215    
 COEFFICIENTS  -12.57633      -16.59594    


          SN  SPIN-ORBIT POTENTIAL

          p POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   16.13102       15.62808       7.325608       6.942519    
 COEFFICIENTS  -132.3250       132.1744      -32.67883       32.48896    

          d POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   15.51498       15.18816       5.456024       5.363105    
 COEFFICIENTS  -36.38744       36.33856      -8.696823       8.560139    

          f POTENTIAL

 POWERS             2              2
 EXPONENTIALS   12.28235       12.27215    
 COEFFICIENTS   8.384222      -8.297972    


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        3672.400000     0.000117    0.000043    0.000000    0.000000
    2.1 Ag                  558.143000     0.000687    0.000307    0.000000    0.000000
    3.1 Ag                  114.089000     0.002130    0.000496    0.000000    0.000000
    4.1 Ag                   31.400600    -0.037669   -0.009105    0.000000    0.000000
                             19.631800     0.159149    0.049898    0.000000    0.000000
                              6.772050    -0.651754   -0.249854    0.000000    0.000000
                              1.833510     0.837692    0.444097    0.000000    0.000000
                              0.877715     0.488426    0.352025    0.000000    0.000000
                              0.237396     0.021796   -0.499700    1.000000    0.000000
                              0.112068    -0.007461   -0.574357    0.000000    1.000000
                              0.051757     0.001872   -0.165579    0.000000    0.000000
    5.1 Ag    1  1s           0.063800     1.000000
    6.1 Ag    1  1s           1.520100     1.000000
    7.1 Ag    1  1s           0.953900     1.000000
    8.1 Ag    1  1s           0.025100     1.000000
    9.1 Ag    1  1s           0.008367     1.000000
   10.1 Ag    1  3d0        130.243000     0.000319
                             36.776200     0.002678
                             14.632100    -0.010109
                              4.696950     0.119768
                              2.530780     0.322600
                              1.301740     0.384238
                              0.646575     0.265358
                              0.302316     0.090377
                              0.116000     0.007334
   11.1 Ag    1  3d2-       130.243000     0.000319
                             36.776200     0.002678
                             14.632100    -0.010109
                              4.696950     0.119768
                              2.530780     0.322600
                              1.301740     0.384238
                              0.646575     0.265358
                              0.302316     0.090377
                              0.116000     0.007334
   12.1 Ag    1  3d1+       130.243000     0.000319
                             36.776200     0.002678
                             14.632100    -0.010109
                              4.696950     0.119768
                              2.530780     0.322600
                              1.301740     0.384238
                              0.646575     0.265358
                              0.302316     0.090377
                              0.116000     0.007334
   13.1 Ag    1  3d2+       130.243000     0.000319
                             36.776200     0.002678
                             14.632100    -0.010109
                              4.696950     0.119768
                              2.530780     0.322600
                              1.301740     0.384238
                              0.646575     0.265358
                              0.302316     0.090377
                              0.116000     0.007334
   14.1 Ag    1  3d1-       130.243000     0.000319
                             36.776200     0.002678
                             14.632100    -0.010109
                              4.696950     0.119768
                              2.530780     0.322600
                              1.301740     0.384238
                              0.646575     0.265358
                              0.302316     0.090377
                              0.116000     0.007334
   15.1 Ag    1  3d0        130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     1.000000
                              0.116000     0.000000
   16.1 Ag    1  3d2-       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     1.000000
                              0.116000     0.000000
   17.1 Ag    1  3d1+       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     1.000000
                              0.116000     0.000000
   18.1 Ag    1  3d2+       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     1.000000
                              0.116000     0.000000
   19.1 Ag    1  3d1-       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     1.000000
                              0.116000     0.000000
   20.1 Ag    1  3d0        130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     0.000000
                              0.116000     1.000000
   21.1 Ag    1  3d2-       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     0.000000
                              0.116000     1.000000
   22.1 Ag    1  3d1+       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     0.000000
                              0.116000     1.000000
   23.1 Ag    1  3d2+       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     0.000000
                              0.116000     1.000000
   24.1 Ag    1  3d1-       130.243000     0.000000
                             36.776200     0.000000
                             14.632100     0.000000
                              4.696950     0.000000
                              2.530780     0.000000
                              1.301740     0.000000
                              0.646575     0.000000
                              0.302316     0.000000
                              0.116000     1.000000
   25.1 Ag    1  3d0          1.573900     1.000000
   26.1 Ag    1  3d2-         1.573900     1.000000
   27.1 Ag    1  3d1+         1.573900     1.000000
   28.1 Ag    1  3d2+         1.573900     1.000000
   29.1 Ag    1  3d1-         1.573900     1.000000
   30.1 Ag    1  3d0          0.749800     1.000000
   31.1 Ag    1  3d2-         0.749800     1.000000
   32.1 Ag    1  3d1+         0.749800     1.000000
   33.1 Ag    1  3d2+         0.749800     1.000000
   34.1 Ag    1  3d1-         0.749800     1.000000
   35.1 Ag    1  3d0          0.042500     1.000000
   36.1 Ag    1  3d2-         0.042500     1.000000
   37.1 Ag    1  3d1+         0.042500     1.000000
   38.1 Ag    1  3d2+         0.042500     1.000000
   39.1 Ag    1  3d1-         0.042500     1.000000
   40.1 Ag    1  3d0          0.014167     1.000000
   41.1 Ag    1  3d2-         0.014167     1.000000
   42.1 Ag    1  3d1+         0.014167     1.000000
   43.1 Ag    1  3d2+         0.014167     1.000000
   44.1 Ag    1  3d1-         0.014167     1.000000
   45.1 Ag    1  5g0          1.089600     1.000000
   46.1 Ag    1  5g2-         1.089600     1.000000
   47.1 Ag    1  5g1+         1.089600     1.000000
   48.1 Ag    1  5g4+         1.089600     1.000000
   49.1 Ag    1  5g1-         1.089600     1.000000
   50.1 Ag    1  5g2+         1.089600     1.000000
   51.1 Ag    1  5g4-         1.089600     1.000000
   52.1 Ag    1  5g3+         1.089600     1.000000
   53.1 Ag    1  5g3-         1.089600     1.000000
    1.2 Au    1  2px        216.970000     0.000226
                             20.910200     0.022917
                              8.796110    -0.197146
                              2.567370     0.467917
                              1.314510     0.496043
                              0.653591     0.176610
                              0.272150     0.012850
                              0.110736     0.000119
                              0.044034     0.000173
    2.2 Au    1  2py        216.970000     0.000226
                             20.910200     0.022917
                              8.796110    -0.197146
                              2.567370     0.467917
                              1.314510     0.496043
                              0.653591     0.176610
                              0.272150     0.012850
                              0.110736     0.000119
                              0.044034     0.000173
    3.2 Au    1  2pz        216.970000     0.000226
                             20.910200     0.022917
                              8.796110    -0.197146
                              2.567370     0.467917
                              1.314510     0.496043
                              0.653591     0.176610
                              0.272150     0.012850
                              0.110736     0.000119
                              0.044034     0.000173
    4.2 Au    1  2px        216.970000    -0.000081
                             20.910200    -0.005457
                              8.796110     0.053005
                              2.567370    -0.154665
                              1.314510    -0.158940
                              0.653591    -0.049703
                              0.272150     0.327127
                              0.110736     0.567089
                              0.044034     0.264297
    5.2 Au    1  2py        216.970000    -0.000081
                             20.910200    -0.005457
                              8.796110     0.053005
                              2.567370    -0.154665
                              1.314510    -0.158940
                              0.653591    -0.049703
                              0.272150     0.327127
                              0.110736     0.567089
                              0.044034     0.264297
    6.2 Au    1  2pz        216.970000    -0.000081
                             20.910200    -0.005457
                              8.796110     0.053005
                              2.567370    -0.154665
                              1.314510    -0.158940
                              0.653591    -0.049703
                              0.272150     0.327127
                              0.110736     0.567089
                              0.044034     0.264297
    7.2 Au    1  2px          0.345100     1.000000
    8.2 Au    1  2py          0.345100     1.000000
    9.2 Au    1  2pz          0.345100     1.000000
   10.2 Au    1  2px          0.056800     1.000000
   11.2 Au    1  2py          0.056800     1.000000
   12.2 Au    1  2pz          0.056800     1.000000
   13.2 Au    1  2px          3.897000     1.000000
   14.2 Au    1  2py          3.897000     1.000000
   15.2 Au    1  2pz          3.897000     1.000000
   16.2 Au    1  2px          0.880400     1.000000
   17.2 Au    1  2py          0.880400     1.000000
   18.2 Au    1  2pz          0.880400     1.000000
   19.2 Au    1  2px          0.020200     1.000000
   20.2 Au    1  2py          0.020200     1.000000
   21.2 Au    1  2pz          0.020200     1.000000
   22.2 Au    1  2px          0.006733     1.000000
   23.2 Au    1  2py          0.006733     1.000000
   24.2 Au    1  2pz          0.006733     1.000000
   25.2 Au    1  4f1+         0.282200     1.000000
   26.2 Au    1  4f1-         0.282200     1.000000
   27.2 Au    1  4f0          0.282200     1.000000
   28.2 Au    1  4f3+         0.282200     1.000000
   29.2 Au    1  4f2-         0.282200     1.000000
   30.2 Au    1  4f3-         0.282200     1.000000
   31.2 Au    1  4f2+         0.282200     1.000000
   32.2 Au    1  4f1+         3.768200     1.000000
   33.2 Au    1  4f1-         3.768200     1.000000
   34.2 Au    1  4f0          3.768200     1.000000
   35.2 Au    1  4f3+         3.768200     1.000000
   36.2 Au    1  4f2-         3.768200     1.000000
   37.2 Au    1  4f3-         3.768200     1.000000
   38.2 Au    1  4f2+         3.768200     1.000000
   39.2 Au    1  4f1+         1.003300     1.000000
   40.2 Au    1  4f1-         1.003300     1.000000
   41.2 Au    1  4f0          1.003300     1.000000
   42.2 Au    1  4f3+         1.003300     1.000000
   43.2 Au    1  4f2-         1.003300     1.000000
   44.2 Au    1  4f3-         1.003300     1.000000
   45.2 Au    1  4f2+         1.003300     1.000000
   46.2 Au    1  4f1+         0.109300     1.000000
   47.2 Au    1  4f1-         0.109300     1.000000
   48.2 Au    1  4f0          0.109300     1.000000
   49.2 Au    1  4f3+         0.109300     1.000000
   50.2 Au    1  4f2-         0.109300     1.000000
   51.2 Au    1  4f3-         0.109300     1.000000
   52.2 Au    1  4f2+         0.109300     1.000000
   53.2 Au    1  4f1+         0.036433     1.000000
   54.2 Au    1  4f1-         0.036433     1.000000
   55.2 Au    1  4f0          0.036433     1.000000
   56.2 Au    1  4f3+         0.036433     1.000000
   57.2 Au    1  4f2-         0.036433     1.000000
   58.2 Au    1  4f3-         0.036433     1.000000
   59.2 Au    1  4f2+         0.036433     1.000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         204
 NUMBER OF SYMMETRY AOS:          170
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.148E-04 0.153E-02 0.858E-02 0.120E-01 0.120E-01 0.120E-01 0.120E-01 0.120E-01
         2 0.676E-02 0.676E-02 0.676E-02 0.213E-01 0.213E-01 0.213E-01 0.107E+00 0.107E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     28.574 MB (compressed) written to integral file ( 17.1%)

     Node minimum: 0.524 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     633990.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     633990      RECORD LENGTH: 524288

 Memory used in sort:       1.19 MW

 SORT1 READ    21109381. AND WROTE      124163. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    128 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      632995.  Node maximum:      639690. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.04      0.81
 REAL TIME  *         1.88 SEC
 DISK USED  *        29.28 MB (local),      546.65 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=SN basis=cc-pVTZ-PP        lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.37042742    -213.37042742     0.00D+00     0.11D+00     0     0       0.01      0.02    start
   2     -213.37324138      -0.00281397     0.12D-02     0.37D-02     1     0       0.00      0.02    diag2
   3     -213.37354413      -0.00030275     0.66D-03     0.88D-03     2     0       0.01      0.03    diag2
   4     -213.37363445      -0.00009032     0.21D-03     0.69D-03     3     0       0.01      0.04    diag2
   5     -213.37364498      -0.00001053     0.56D-04     0.25D-03     4     0       0.00      0.04    diag2
   6     -213.37364643      -0.00000145     0.13D-04     0.10D-03     5     0       0.01      0.05    diag2
   7     -213.37364681      -0.00000038     0.47D-05     0.39D-04     6     0       0.00      0.05    diag2
   8     -213.37364694      -0.00000013     0.21D-05     0.30D-04     7     0       0.01      0.06    fixocc
   9     -213.37364695      -0.00000001     0.66D-06     0.83D-05     8     0       0.00      0.06    diag2
  10     -213.37364695      -0.00000000     0.23D-06     0.18D-05     9     0       0.01      0.07    diag2/orth
  11     -213.37364695      -0.00000000     0.62D-07     0.40D-06     0     0       0.01      0.08    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373646949783
  RHF One-electron energy            -381.082869982917
  RHF Two-electron energy             167.709223033134
  RHF Kinetic energy                   82.647997050014
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581715886238

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62717     1  1  s    1.00643
    2.1     2.00000    -1.07701     1  1  d2-  0.79034    1  1  d2+  0.61212
    3.1     2.00000    -1.07701     1  1  d2- -0.61219    1  1  d2+  0.79037
    4.1     2.00000    -1.07701     1  1  d1-  0.99006
    5.1     2.00000    -1.07701     1  1  d1+  0.99000
    6.1     2.00000    -1.07701     1  1  d0   0.99974
    7.1     2.00000    -0.29349     1  2  s    0.97918
    1.2     2.00000    -3.81347     1  1  px   1.00043
    2.2     2.00000    -3.81347     1  1  py   0.99981
    3.2     2.00000    -3.81347     1  1  pz   0.99981
    4.2     1.00000    -0.05737     1  2  px   0.79192
    5.2     1.00000    -0.05737     1  2  py   0.75842
    6.2     1.00000    -0.05737     1  2  pz   0.75842


 HOMO      6.2    -0.057372 =      -1.5612eV
 LUMO      7.2     0.085218 =       2.3189eV
 LUMO-HOMO         0.142590 =       3.8801eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.59       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.16      0.12      0.81
 REAL TIME  *         3.35 SEC
 DISK USED  *        30.49 MB (local),      566.01 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.438D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.127D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 6   4 3 5 1 2 4 6 3 5 1   2 5 3 6 4 1 2 6 4 3   5 2 3 5 6 4 1 81215
                                       141310 911 7 2 6 4 5   3 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.340D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.340D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.180D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.864D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.864D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 4 5 7 9 6 810 3   2 1 9 7 5 4 6 810 4   5 6 810 9 7 3 2 1 8
                                       10 6 4 5 9 7 3 1 2 8  10 6 4 5 7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    6331
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -213.16420020    -213.21621392   -0.05201373    0.17481647 0.00111426 0.00000000  0.12E+01      0.61
   2    6   10    0   -213.21496744    -213.21513816   -0.00017072    0.01203731 0.00000192 0.00000000  0.60E-01      1.14
   3    8   16    0   -213.21513828    -213.21513828   -0.00000000    0.00003011 0.00000000 0.00000000  0.18E-03      1.80
   4    2    4    0   -213.21513828    -213.21513828   -0.00000000    0.00000001 0.00000001 0.00000000  0.33E-07      2.09

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.12E-07)
                       Final energy:   -213.21513828
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.340392917993
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.85269249
 One electron energy                          -376.87519714
 Two electron energy                           163.53480423
 Virial ratio                                    3.57493615
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.340392917885
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.85269249
 One electron energy                          -376.87519715
 Two electron energy                           163.53480423
 Virial ratio                                    3.57493615
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.340392916738
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.85269251
 One electron energy                          -376.87519722
 Two electron energy                           163.53480430
 Virial ratio                                    3.57493615
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.170581370120
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31299424
 One electron energy                          -371.63631309
 Two electron energy                           158.46573172
 Virial ratio                                    3.58975613
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.170581370118
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31299424
 One electron energy                          -371.63631309
 Two electron energy                           158.46573172
 Virial ratio                                    3.58975613
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.170581369954
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31299423
 One electron energy                          -371.63631306
 Two electron energy                           158.46573169
 Virial ratio                                    3.58975613
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.170581369953
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31299423
 One electron energy                          -371.63631306
 Two electron energy                           158.46573169
 Virial ratio                                    3.58975613
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.170581369901
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31299423
 One electron energy                          -371.63631305
 Two electron energy                           158.46573168
 Virial ratio                                    3.58975613
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.167377403380
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.37166127
 One electron energy                          -371.94744474
 Two electron energy                           158.78006733
 Virial ratio                                    3.58787275
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.167377403334
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.37166126
 One electron energy                          -371.94744470
 Two electron energy                           158.78006729
 Virial ratio                                    3.58787275
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.167377403308
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.37166126
 One electron energy                          -371.94744470
 Two electron energy                           158.78006730
 Virial ratio                                    3.58787275
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.165427924299
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31289630
 One electron energy                          -371.63482846
 Two electron energy                           158.46940054
 Virial ratio                                    3.58969660
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.304375486938
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81736158
 One electron energy                          -376.66034279
 Two electron energy                           163.35596730
 Virial ratio                                    3.57559975
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.304375486537
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81736159
 One electron energy                          -376.66034280
 Two electron energy                           163.35596732
 Virial ratio                                    3.57559975
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.304375486402
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81736159
 One electron energy                          -376.66034281
 Two electron energy                           163.35596732
 Virial ratio                                    3.57559975
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.304375485070
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81736161
 One electron energy                          -376.66034287
 Two electron energy                           163.35596738
 Virial ratio                                    3.57559975
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.304375485066
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81736161
 One electron energy                          -376.66034287
 Two electron energy                           163.35596738
 Virial ratio                                    3.57559975
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.274378711886
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.76870525
 One electron energy                          -376.28306096
 Two electron energy                           163.00868225
 Virial ratio                                    3.57675142
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.174019742635
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31305632
 One electron energy                          -371.63725835
 Two electron energy                           158.46323861
 Virial ratio                                    3.58979595
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.174019742537
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31305631
 One electron energy                          -371.63725832
 Two electron energy                           158.46323858
 Virial ratio                                    3.58979595
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.174019742521
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.31305631
 One electron energy                          -371.63725832
 Two electron energy                           158.46323857
 Virial ratio                                    3.58979595
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.159795624107
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.40866433
 One electron energy                          -372.16909656
 Two electron energy                           159.00930094
 Virial ratio                                    3.58661874
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.159795624095
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.40866434
 One electron energy                          -372.16909657
 Two electron energy                           159.00930095
 Virial ratio                                    3.58661874
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.159795624055
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.40866432
 One electron energy                          -372.16909652
 Two electron energy                           159.00930090
 Virial ratio                                    3.58661874
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.159795623993
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.40866432
 One electron energy                          -372.16909653
 Two electron energy                           159.00930090
 Virial ratio                                    3.58661874
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.159795623989
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.40866432
 One electron energy                          -372.16909652
 Two electron energy                           159.00930089
 Virial ratio                                    3.58661874
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.149794236725
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.45134694
 One electron energy                          -372.42190495
 Two electron energy                           159.27211071
 Virial ratio                                    3.58515843
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999781
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000358
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.992401171532
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999995
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000069006196
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999896619607
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.007585862504
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999996
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000041030
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999965823
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.851788854870
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000772
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999997782
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999999
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.148211150547
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000002
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999995
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999997422
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000527
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.249806197156
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.999999999997
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     3.999999999156
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000003969
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.750207451904
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000004
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000002
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999980686493
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999968
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000004562
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000001978
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000019237900
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000009
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999999996
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999996
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.006993001614
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999997
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999998
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999992
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.993006997874
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000002
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000011
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999995
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999994
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.593583923729
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999999999976
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000743
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     0.999999997564
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     0.406407773463
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000004
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000220
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999643
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999999
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.007618141933
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999999995
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999930989199
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000103378372
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     2.992394899553
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999996
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999958974
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000034181
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.141218143505
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999220
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000002209
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999999
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.858781851568
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000002
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999999995
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000002583
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999479
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.156609879084
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999999999996
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000071
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     3.999999998436
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     3.843384774601
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>     0.000000000004
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     5.999999999957
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     5.999999999957
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     5.999999999957
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     5.999999999957
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     5.999999999957
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000021
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     5.999999999989
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999989
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999989
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999989
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999989
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000007
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     5.999999999969
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     5.999999999969
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     5.999999999969
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     5.999999999969
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     5.999999999969
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>     0.000000000013
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 3 5 1 2 6 4 3 5 1   2 6 4 3 5 1 2 6 4 3   5 2 6 4 3 5 111 7 9
                                        81214151310 2 6 4 5   3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 3   2 1 5 6 4 810 9 7 3   2 1 5 6 4 810 9 7 5   6 4 810 9 7 3 2 1 5
                                        6 4 810 7 9 3 2 1 5   6 4 810 7 9 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.97943     1  1  s    1.00466
    2.1     2.00000    -1.42881     1  1  d0   1.00100
    3.1     2.00000    -1.42881     1  1  d1-  1.00100
    4.1     2.00000    -1.42881     1  1  d1+  1.00100
    5.1     2.00000    -1.42881     1  1  d2-  1.00100
    6.1     2.00000    -1.42881     1  1  d2+  1.00100
    7.1     1.95376    -0.59840     1  2  s    1.06756
    1.2     2.00000    -4.16510     1  1  pz   0.99955
    2.2     2.00000    -4.16510     1  1  py   0.99955
    3.2     2.00000    -4.16510     1  1  px   0.99955
    4.2     0.45971    -0.12442     1  2  px   1.11188
    5.2     0.45971    -0.12442     1  2  py   1.11188
    6.2     0.45971    -0.12442     1  2  pz   1.11188
    7.2     0.22237     0.01201     1  7  px   0.64525    1  8  px   0.57251
    8.2     0.22237     0.01201     1  7  py   0.64525    1  8  py   0.57251
    9.2     0.22237     0.01201     1  7  pz   0.64525    1  8  pz   0.57251
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000       0.00000000      0.00000000      0.98317787     -0.00000000     -0.00000009     -0.00000000      0.00000000
 2 aa0000       0.98317787     -0.00001453     -0.00000000      0.00000000      0.00000000     -0.00000011      0.00000000
 2 0aa000       0.00001453      0.98317786     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000002
 2 0a00a0      -0.00000000      0.00000000     -0.00000000     -0.00177083      0.00000003      0.00004113      0.00005364
 2 a00a00      -0.00000000     -0.00000000      0.00000000      0.69911318     -0.00001221      0.00001958     -0.00006084
 2 00aa00      -0.00000000     -0.00000000     -0.09396562      0.00001220      0.69822945      0.00000000      0.00000000
 2 a0000a       0.00000000      0.00000000      0.09396575      0.00001220      0.69822945     -0.00000000      0.00000000
 2 00a0a0      -0.00000139     -0.09396577      0.00000000      0.00003393     -0.00000000      0.00334841      0.69822145
 2 a000a0       0.09396577     -0.00000139     -0.00000000     -0.00004023      0.00000000      0.69822145     -0.00334841
 2 0a0a00      -0.09396562      0.00000139      0.00000000     -0.00004023      0.00000000      0.69822140     -0.00334841
 2 0a000a       0.00000139      0.09396575     -0.00000000      0.00003393     -0.00000000      0.00334841      0.69822140
 2 00a00a      -0.00000000      0.00000000     -0.00000000     -0.69734235      0.00001218     -0.00006071      0.00000719
 0 aa2000      -0.12066973      0.00000178      0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000
 0 a2a000      -0.00000000     -0.00000000     -0.12066973      0.00000000      0.00000001     -0.00000000      0.00000000
 0 2aa000      -0.00000178     -0.12066973      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2a00a0       0.00000000     -0.00000000      0.00000000     -0.00029698      0.00000001     -0.00000465     -0.00000600
 0 0a20a0       0.00000000     -0.00000000      0.00000000      0.00069463     -0.00000001     -0.00000459     -0.00000605
 0 a20a00       0.00000000      0.00000000     -0.00000000     -0.07874194      0.00000138     -0.00000223      0.00000681
 0 02aa00       0.00000000      0.00000000      0.00979970     -0.00000137     -0.07864366     -0.00000000     -0.00000000
 0 a2000a      -0.00000000     -0.00000000     -0.00979972     -0.00000137     -0.07864366      0.00000000     -0.00000000
 0 a020a0      -0.00979972      0.00000014      0.00000000      0.00000453     -0.00000000     -0.07864276      0.00037714
 0 20a0a0       0.00000014      0.00979972     -0.00000000     -0.00000382      0.00000000     -0.00037714     -0.07864275
 0 0a2a00       0.00979970     -0.00000014     -0.00000000      0.00000453     -0.00000000     -0.07864275      0.00037714
 0 2a000a      -0.00000014     -0.00979972      0.00000000     -0.00000382      0.00000000     -0.00037714     -0.07864275
 0 02a00a       0.00000000     -0.00000000      0.00000000      0.07854500     -0.00000137      0.00000681     -0.00000085
 0 a02a00       0.00000000      0.00000000     -0.00000000     -0.07824801      0.00000137     -0.00000216      0.00000685
 0 20aa00       0.00000000      0.00000000      0.01929291     -0.00000137     -0.07814785     -0.00000000     -0.00000000
 0 a0200a      -0.00000000     -0.00000000     -0.01929291     -0.00000137     -0.07814785      0.00000000     -0.00000000
 0 02a0a0       0.00000029      0.01929291     -0.00000000     -0.00000380      0.00000000     -0.00037476     -0.07814695
 0 a200a0      -0.01929291      0.00000029      0.00000000      0.00000450     -0.00000000     -0.07814695      0.00037476
 0 0a200a      -0.00000029     -0.01929291      0.00000000     -0.00000380      0.00000000     -0.00037476     -0.07814695
 0 2a0a00       0.01929291     -0.00000029     -0.00000000      0.00000450     -0.00000000     -0.07814695      0.00037476
 0 20a00a       0.00000000     -0.00000000      0.00000000      0.07804730     -0.00000136      0.00000682     -0.00000077
 
 Energy:     -213.34039292   -213.34039292   -213.34039292   -213.17058137   -213.17058137   -213.17058137   -213.17058137

 State:              8               9              10              11              12
 2 a0a000      -0.00000000     -0.13434544     -0.00000000     -0.00000000      0.00000000
 2 aa0000       0.00000000      0.00000000      0.00002721     -0.13434545      0.00000000
 2 0aa000      -0.00000000      0.00000000     -0.13434554     -0.00002721      0.00000000
 2 0a00a0       0.80624396     -0.00000000      0.00000000      0.00000000      0.56997892
 2 a00a00      -0.40158843      0.00000000      0.00000000      0.00000000      0.56997887
 2 00aa00      -0.00000000     -0.69192254      0.00000000     -0.00000000     -0.00000000
 2 a0000a      -0.00000000      0.69192252      0.00000000     -0.00000000     -0.00000000
 2 00a0a0      -0.00004655      0.00000000     -0.69192248     -0.00014014      0.00000000
 2 a000a0      -0.00003548      0.00000000     -0.00014014      0.69192248     -0.00000000
 2 0a0a00      -0.00003548      0.00000000      0.00014014     -0.69192255      0.00000000
 2 0a000a      -0.00004655     -0.00000000      0.69192253      0.00014014     -0.00000000
 2 00a00a      -0.40465559     -0.00000000      0.00000000      0.00000000      0.56997887
 0 aa2000      -0.00000000     -0.00000000     -0.00000399      0.01969594     -0.00000000
 0 a2a000       0.00000000      0.01969594      0.00000000      0.00000000      0.00000000
 0 2aa000       0.00000000     -0.00000000      0.01969595      0.00000399     -0.00000000
 0 2a00a0      -0.09052448      0.00000000     -0.00000000     -0.00000000     -0.06455488
 0 0a20a0      -0.09052231      0.00000000     -0.00000000     -0.00000000     -0.06455488
 0 a20a00       0.04465959     -0.00000000     -0.00000000     -0.00000000     -0.06455487
 0 02aa00       0.00000000      0.07804908     -0.00000000      0.00000000      0.00000000
 0 a2000a       0.00000000     -0.07804908     -0.00000000      0.00000000      0.00000000
 0 a020a0       0.00000400     -0.00000000      0.00001581     -0.07804908      0.00000000
 0 20a0a0       0.00000524     -0.00000000      0.07804907      0.00001581     -0.00000000
 0 0a2a00       0.00000400     -0.00000000     -0.00001581      0.07804908     -0.00000000
 0 2a000a       0.00000524      0.00000000     -0.07804908     -0.00001581      0.00000000
 0 02a00a       0.04500505      0.00000000     -0.00000000     -0.00000000     -0.06455487
 0 a02a00       0.04551944     -0.00000000     -0.00000000     -0.00000000     -0.06455488
 0 20aa00       0.00000000      0.07532175     -0.00000000      0.00000000      0.00000000
 0 a0200a       0.00000000     -0.07532175     -0.00000000      0.00000000      0.00000000
 0 02a0a0       0.00000521     -0.00000000      0.07532175      0.00001526     -0.00000000
 0 a200a0       0.00000397     -0.00000000      0.00001526     -0.07532175      0.00000000
 0 0a200a       0.00000521      0.00000000     -0.07532175     -0.00001526      0.00000000
 0 2a0a00       0.00000397     -0.00000000     -0.00001526      0.07532175     -0.00000000
 0 20a00a       0.04586273      0.00000000     -0.00000000     -0.00000000     -0.06455487
 
 Energy:     -213.17058137   -213.16737740   -213.16737740   -213.16737740   -213.16542792
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000       0.79365306      0.00000090      0.00000043      0.00000003     -0.03321334      0.54284327      0.00000000
 2 002000      -0.36806291     -0.00000046     -0.00000028     -0.00000001      0.70393036      0.54284333      0.00000000
 2 a0b000      -0.00000002     -0.00000001      0.00000001      0.68792530      0.00000000      0.00000000     -0.00000006
 2 b0a000       0.00000002      0.00000001     -0.00000001     -0.68792530     -0.00000000     -0.00000000      0.00000006
 2 ab0000      -0.00000078      0.68792530     -0.00001103      0.00000001      0.00000004     -0.00000000     -0.00000000
 2 ba0000       0.00000078     -0.68792530      0.00001103     -0.00000001     -0.00000004      0.00000000      0.00000000
 2 0ba000       0.00000037     -0.00001103     -0.68792529      0.00000001     -0.00000008     -0.00000000     -0.00000000
 2 0ab000      -0.00000037      0.00001103      0.68792529     -0.00000001      0.00000008      0.00000000      0.00000000
 2 200000      -0.42559010     -0.00000044     -0.00000015     -0.00000001     -0.67071706      0.54284335      0.00000000
 2 00a00b      -0.05179351     -0.00000006     -0.00000004     -0.00000000      0.09905651      0.10521743      0.00000000
 2 00b00a       0.05179351      0.00000006      0.00000004      0.00000000     -0.09905651     -0.10521743     -0.00000000
 2 0b00a0      -0.11168223     -0.00000013     -0.00000006     -0.00000000      0.00467375     -0.10521743     -0.00000000
 2 0a00b0       0.11168223      0.00000013      0.00000006      0.00000000     -0.00467375      0.10521743      0.00000000
 2 b000a0       0.00000011     -0.09680430      0.00000155     -0.00000000     -0.00000001      0.00000000     -0.00000001
 2 a000b0      -0.00000011      0.09680430     -0.00000155      0.00000000      0.00000001     -0.00000000      0.00000001
 2 00b0a0       0.00000005     -0.00000155     -0.09680430      0.00000000     -0.00000001     -0.00000000      0.00000000
 2 00a0b0      -0.00000005      0.00000155      0.09680430     -0.00000000      0.00000001      0.00000000     -0.00000000
 2 b0000a       0.00000000      0.00000000     -0.00000000     -0.09680429      0.00000000      0.00000000     -0.49379068
 2 a0000b      -0.00000000     -0.00000000      0.00000000      0.09680429     -0.00000000     -0.00000000      0.49379068
 2 00ab00      -0.00000000     -0.00000000      0.00000000      0.09680420     -0.00000000      0.00000000     -0.49379068
 2 00ba00       0.00000000      0.00000000     -0.00000000     -0.09680420      0.00000000     -0.00000000      0.49379068
 2 0a000b      -0.00000005      0.00000155      0.09680429     -0.00000000      0.00000001     -0.00000000      0.00000000
 2 0b000a       0.00000005     -0.00000155     -0.09680429      0.00000000     -0.00000001      0.00000000     -0.00000000
 2 0a0b00      -0.00000011      0.09680420     -0.00000155      0.00000000      0.00000001      0.00000000     -0.00000001
 2 0b0a00       0.00000011     -0.09680420      0.00000155     -0.00000000     -0.00000001     -0.00000000      0.00000001
 2 b00a00       0.05988864      0.00000006      0.00000002      0.00000000      0.09438267     -0.10521736     -0.00000000
 2 a00b00      -0.05988864     -0.00000006     -0.00000002     -0.00000000     -0.09438267      0.10521736      0.00000000
 0 202000       0.09727383      0.00000011      0.00000005      0.00000000     -0.00407078     -0.12770314     -0.00000000
 0 220000      -0.04511152     -0.00000006     -0.00000003     -0.00000000      0.08627700     -0.12770314     -0.00000000
 0 022000      -0.05216232     -0.00000005     -0.00000002     -0.00000000     -0.08220622     -0.12770313     -0.00000000
 0 ba2000      -0.00000010      0.08431534     -0.00000135      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 ab2000       0.00000010     -0.08431534      0.00000135     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 b2a000      -0.00000000     -0.00000000      0.00000000      0.08431534      0.00000000     -0.00000000     -0.00000001
 0 a2b000       0.00000000      0.00000000     -0.00000000     -0.08431534     -0.00000000      0.00000000      0.00000001
 0 2ab000       0.00000005     -0.00000135     -0.08431534      0.00000000     -0.00000001     -0.00000000     -0.00000000
 0 2ba000      -0.00000005      0.00000135      0.08431534     -0.00000000      0.00000001      0.00000000      0.00000000
 0 02b00a      -0.01326113     -0.00000002     -0.00000001     -0.00000000      0.01092379      0.00638010      0.00000000
 0 02a00b       0.01326113      0.00000002      0.00000001      0.00000000     -0.01092379     -0.00638010     -0.00000000
 0 20b00a      -0.00140393     -0.00000000     -0.00000000     -0.00000000      0.01712354      0.00638009      0.00000000
 0 20a00b       0.00140393      0.00000000      0.00000000      0.00000000     -0.01712354     -0.00638009     -0.00000000
 0 0b20a0       0.01553139      0.00000002      0.00000001      0.00000000     -0.00734593      0.00638010      0.00000000
 0 0a20b0      -0.01553139     -0.00000002     -0.00000001     -0.00000000      0.00734593     -0.00638010     -0.00000000
 0 2b00a0       0.01609084      0.00000002      0.00000001      0.00000000      0.00602258      0.00638010      0.00000000
 0 2a00b0      -0.01609084     -0.00000002     -0.00000001     -0.00000000     -0.00602258     -0.00638010     -0.00000000
 0 b020a0      -0.00000001      0.01035976     -0.00000017      0.00000000      0.00000000     -0.00000000      0.00000000
 0 a020b0       0.00000001     -0.01035976      0.00000017     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 0a2b00       0.00000001     -0.01035975      0.00000017     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 0b2a00      -0.00000001      0.01035975     -0.00000017      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2000b       0.00000000      0.00000000     -0.00000000     -0.01035976      0.00000000      0.00000000     -0.05564845
 0 b2000a      -0.00000000     -0.00000000      0.00000000      0.01035976     -0.00000000     -0.00000000      0.05564845
 0 02ab00       0.00000000      0.00000000     -0.00000000     -0.01035975      0.00000000      0.00000000      0.05564845
 0 02ba00      -0.00000000     -0.00000000      0.00000000      0.01035975     -0.00000000     -0.00000000     -0.05564845
 0 20b0a0      -0.00000001      0.00000017      0.01035976     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 20a0b0       0.00000001     -0.00000017     -0.01035976      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a000b       0.00000001     -0.00000017     -0.01035976      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 2b000a      -0.00000001      0.00000017      0.01035976     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 0a200b       0.00000001     -0.00000027     -0.01704987      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 0b200a      -0.00000001      0.00000027      0.01704987     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 a0200b       0.00000000      0.00000000     -0.00000000     -0.01704987     -0.00000000      0.00000000     -0.05460936
 0 b0200a      -0.00000000     -0.00000000      0.00000000      0.01704987      0.00000000     -0.00000000      0.05460936
 0 20ab00       0.00000000      0.00000000     -0.00000000     -0.01704987      0.00000000     -0.00000000      0.05460936
 0 20ba00      -0.00000000     -0.00000000      0.00000000      0.01704987     -0.00000000      0.00000000     -0.05460936
 0 02a0b0       0.00000001     -0.00000027     -0.01704987      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 02b0a0      -0.00000001      0.00000027      0.01704987     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2b0a00      -0.00000002      0.01704987     -0.00000027      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 2a0b00       0.00000002     -0.01704987      0.00000027     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 a200b0       0.00000002     -0.01704987      0.00000027     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 b200a0      -0.00000002      0.01704987     -0.00000027      0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:     -213.30437549   -213.30437549   -213.30437549   -213.30437549   -213.30437549   -213.27437871   -213.17401974

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000     -0.00000000      0.05085513     -0.00000011     -0.00000013     -0.00000800     -0.15122139
 2 002000       0.00000000      0.00000000     -0.15638912      0.00000033     -0.00000222      0.00000282      0.03156886
 2 a0b000       0.00000000      0.00000000     -0.00000029     -0.13816871     -0.00000006     -0.00000000     -0.00000000
 2 b0a000      -0.00000000     -0.00000000      0.00000029      0.13816871      0.00000006      0.00000000      0.00000000
 2 ab0000      -0.00000007      0.00000000     -0.00000109      0.00000000      0.00000029     -0.13816872      0.00000695
 2 ba0000       0.00000007     -0.00000000      0.00000109     -0.00000000     -0.00000029      0.13816872     -0.00000695
 2 0ba000      -0.00000000     -0.00000001     -0.00000213     -0.00000006      0.13816878      0.00000029     -0.00000084
 2 0ab000       0.00000000      0.00000001      0.00000213      0.00000006     -0.13816878     -0.00000029      0.00000084
 2 200000       0.00000000      0.00000000      0.10553389     -0.00000022      0.00000235      0.00000519      0.11965241
 2 00a00b      -0.00000000      0.00000000      0.54796753     -0.00000114      0.00000778     -0.00000987     -0.11061325
 2 00b00a       0.00000000     -0.00000000     -0.54796753      0.00000114     -0.00000778      0.00000987      0.11061325
 2 0b00a0       0.00000000     -0.00000000      0.17818987     -0.00000037     -0.00000046     -0.00002804     -0.52986042
 2 0a00b0      -0.00000000      0.00000000     -0.17818987      0.00000037      0.00000046      0.00002804      0.52986042
 2 b000a0      -0.49379068      0.00002504     -0.00000380      0.00000000      0.00000103     -0.48412578      0.00002435
 2 a000b0       0.49379068     -0.00002504      0.00000380     -0.00000000     -0.00000103      0.48412578     -0.00002435
 2 00b0a0       0.00002504      0.49379068      0.00000746      0.00000021     -0.48412578     -0.00000103      0.00000293
 2 00a0b0      -0.00002504     -0.49379068     -0.00000746     -0.00000021      0.48412578      0.00000103     -0.00000293
 2 b0000a       0.00000001      0.00000000     -0.00000101     -0.48412579     -0.00000021     -0.00000000     -0.00000000
 2 a0000b      -0.00000001     -0.00000000      0.00000101      0.48412579      0.00000021      0.00000000      0.00000000
 2 00ab00       0.00000001      0.00000000      0.00000101      0.48412581      0.00000021      0.00000000      0.00000000
 2 00ba00      -0.00000001     -0.00000000     -0.00000101     -0.48412581     -0.00000021     -0.00000000     -0.00000000
 2 0a000b       0.00002504      0.49379068     -0.00000746     -0.00000021      0.48412579      0.00000103     -0.00000293
 2 0b000a      -0.00002504     -0.49379068      0.00000746      0.00000021     -0.48412579     -0.00000103      0.00000293
 2 0a0b00      -0.49379068      0.00002504      0.00000380     -0.00000000     -0.00000103      0.48412581     -0.00002435
 2 0b0a00       0.49379068     -0.00002504     -0.00000380      0.00000000      0.00000103     -0.48412581      0.00002435
 2 b00a00       0.00000000      0.00000000      0.36977766     -0.00000077      0.00000824      0.00001818      0.41924719
 2 a00b00      -0.00000000     -0.00000000     -0.36977766      0.00000077     -0.00000824     -0.00001818     -0.41924719
 0 202000      -0.00000000     -0.00000000      0.00704423     -0.00000001     -0.00000002     -0.00000111     -0.02094649
 0 220000      -0.00000000     -0.00000000     -0.02166231      0.00000005     -0.00000031      0.00000039      0.00437279
 0 022000      -0.00000000     -0.00000000      0.01461809     -0.00000003      0.00000033      0.00000072      0.01657373
 0 ba2000      -0.00000001      0.00000000     -0.00000015      0.00000000      0.00000004     -0.01913851      0.00000096
 0 ab2000       0.00000001     -0.00000000      0.00000015     -0.00000000     -0.00000004      0.01913851     -0.00000096
 0 b2a000       0.00000000     -0.00000000     -0.00000004     -0.01913851     -0.00000001     -0.00000000     -0.00000000
 0 a2b000      -0.00000000      0.00000000      0.00000004      0.01913851      0.00000001      0.00000000      0.00000000
 0 2ab000      -0.00000000     -0.00000000     -0.00000030     -0.00000001      0.01913852      0.00000004     -0.00000012
 0 2ba000       0.00000000      0.00000000      0.00000030      0.00000001     -0.01913852     -0.00000004      0.00000012
 0 02b00a      -0.00000000      0.00000000      0.06120428     -0.00000013      0.00000088     -0.00000102     -0.01067239
 0 02a00b       0.00000000     -0.00000000     -0.06120428      0.00000013     -0.00000088      0.00000102      0.01067239
 0 20b00a      -0.00000000      0.00000000      0.06055167     -0.00000013      0.00000085     -0.00000118     -0.01390539
 0 20a00b       0.00000000     -0.00000000     -0.06055167      0.00000013     -0.00000085      0.00000118      0.01390539
 0 0b20a0      -0.00000000      0.00000000     -0.01823341      0.00000004      0.00000008      0.00000313      0.05939198
 0 0a20b0       0.00000000     -0.00000000      0.01823341     -0.00000004     -0.00000008     -0.00000313     -0.05939198
 0 2b00a0      -0.00000000      0.00000000     -0.02135958      0.00000004      0.00000002      0.00000310      0.05834066
 0 2a00b0       0.00000000     -0.00000000      0.02135958     -0.00000004     -0.00000002     -0.00000310     -0.05834066
 0 b020a0       0.05564846     -0.00000282      0.00000043     -0.00000000     -0.00000012      0.05460985     -0.00000275
 0 a020b0      -0.05564846      0.00000282     -0.00000043      0.00000000      0.00000012     -0.05460985      0.00000275
 0 0a2b00       0.05564845     -0.00000282     -0.00000043      0.00000000      0.00000012     -0.05460986      0.00000275
 0 0b2a00      -0.05564845      0.00000282      0.00000043     -0.00000000     -0.00000012      0.05460986     -0.00000275
 0 a2000b       0.00000000      0.00000000     -0.00000011     -0.05460985     -0.00000002     -0.00000000     -0.00000000
 0 b2000a      -0.00000000     -0.00000000      0.00000011      0.05460985      0.00000002      0.00000000      0.00000000
 0 02ab00      -0.00000000     -0.00000000     -0.00000011     -0.05460985     -0.00000002     -0.00000000     -0.00000000
 0 02ba00       0.00000000      0.00000000      0.00000011      0.05460985      0.00000002      0.00000000      0.00000000
 0 20b0a0      -0.00000282     -0.05564845     -0.00000084     -0.00000002      0.05460985      0.00000012     -0.00000033
 0 20a0b0       0.00000282      0.05564845      0.00000084      0.00000002     -0.05460985     -0.00000012      0.00000033
 0 2a000b      -0.00000282     -0.05564845      0.00000084      0.00000002     -0.05460985     -0.00000012      0.00000033
 0 2b000a       0.00000282      0.05564845     -0.00000084     -0.00000002      0.05460985      0.00000012     -0.00000033
 0 0a200b      -0.00000277     -0.05460936      0.00000082      0.00000002     -0.05296075     -0.00000011      0.00000032
 0 0b200a       0.00000277      0.05460936     -0.00000082     -0.00000002      0.05296075      0.00000011     -0.00000032
 0 a0200b       0.00000000      0.00000000     -0.00000011     -0.05296075     -0.00000002     -0.00000000     -0.00000000
 0 b0200a      -0.00000000     -0.00000000      0.00000011      0.05296075      0.00000002      0.00000000      0.00000000
 0 20ab00      -0.00000000     -0.00000000     -0.00000011     -0.05296075     -0.00000002     -0.00000000     -0.00000000
 0 20ba00       0.00000000      0.00000000      0.00000011      0.05296075      0.00000002      0.00000000      0.00000000
 0 02a0b0       0.00000277      0.05460936      0.00000082      0.00000002     -0.05296075     -0.00000011      0.00000032
 0 02b0a0      -0.00000277     -0.05460936     -0.00000082     -0.00000002      0.05296075      0.00000011     -0.00000032
 0 2b0a00      -0.05460935      0.00000277      0.00000042     -0.00000000     -0.00000011      0.05296075     -0.00000266
 0 2a0b00       0.05460935     -0.00000277     -0.00000042      0.00000000      0.00000011     -0.05296075      0.00000266
 0 a200b0      -0.05460935      0.00000277     -0.00000042      0.00000000      0.00000011     -0.05296075      0.00000266
 0 b200a0       0.05460935     -0.00000277      0.00000042     -0.00000000     -0.00000011      0.05296075     -0.00000266
 
 Energy:     -213.17401974   -213.17401974   -213.15979562   -213.15979562   -213.15979562   -213.15979562   -213.15979562

 State:             15
 2 020000      -0.14463413
 2 002000      -0.14463412
 2 a0b000      -0.00000000
 2 b0a000       0.00000000
 2 ab0000      -0.00000000
 2 ba0000       0.00000000
 2 0ba000      -0.00000000
 2 0ab000       0.00000000
 2 200000      -0.14463402
 2 00a00b       0.38897486
 2 00b00a      -0.38897486
 2 0b00a0      -0.38897487
 2 0a00b0       0.38897487
 2 b000a0      -0.00000000
 2 a000b0       0.00000000
 2 00b0a0      -0.00000000
 2 00a0b0       0.00000000
 2 b0000a      -0.00000000
 2 a0000b       0.00000000
 2 00ab00       0.00000000
 2 00ba00      -0.00000000
 2 0a000b      -0.00000000
 2 0b000a       0.00000000
 2 0a0b00      -0.00000000
 2 0b0a00       0.00000000
 2 b00a00      -0.38897489
 2 a00b00       0.38897489
 0 202000       0.03576685
 0 220000       0.03576685
 0 022000       0.03576687
 0 ba2000      -0.00000000
 0 ab2000       0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 2ab000      -0.00000000
 0 2ba000       0.00000000
 0 02b00a       0.04542473
 0 02a00b      -0.04542473
 0 20b00a       0.04542473
 0 20a00b      -0.04542473
 0 0b20a0       0.04542473
 0 0a20b0      -0.04542473
 0 2b00a0       0.04542473
 0 2a00b0      -0.04542473
 0 b020a0       0.00000000
 0 a020b0      -0.00000000
 0 0a2b00       0.00000000
 0 0b2a00      -0.00000000
 0 a2000b      -0.00000000
 0 b2000a       0.00000000
 0 02ab00      -0.00000000
 0 02ba00       0.00000000
 0 20b0a0       0.00000000
 0 20a0b0      -0.00000000
 0 2a000b       0.00000000
 0 2b000a      -0.00000000
 0 0a200b       0.00000000
 0 0b200a      -0.00000000
 0 a0200b      -0.00000000
 0 b0200a       0.00000000
 0 20ab00      -0.00000000
 0 20ba00       0.00000000
 0 02a0b0      -0.00000000
 0 02b0a0       0.00000000
 0 2b0a00      -0.00000000
 0 2a0b00       0.00000000
 0 a200b0      -0.00000000
 0 b200a0       0.00000000
 
 Energy:     -213.14979424
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.90       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.29      2.12      0.12      0.81
 REAL TIME  *         5.81 SEC
 DISK USED  *        40.04 MB (local),      718.81 MB (total)
 SF USED    *        26.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3403929   2.0
    -213.3403929   2.0
    -213.3403929   2.0
    -213.1705814   6.0
    -213.1705814   6.0
    -213.1705814   6.0
    -213.1705814   6.0
    -213.1705814   6.0
    -213.1673774   2.0
    -213.1673774   2.0
    -213.1673774   2.0
    -213.1654279   0.0
    -213.3043755   6.0
    -213.3043755   6.0
    -213.3043755   6.0
    -213.3043755   6.0
    -213.3043755   6.0
    -213.2743787   0.0
    -213.1740197   2.0
    -213.1740197   2.0
    -213.1740197   2.0
    -213.1597956   6.0
    -213.1597956   6.0
    -213.1597956   6.0
    -213.1597956   6.0
    -213.1597956   6.0
    -213.1497942   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.34039292
     2      -213.34039292
     3      -213.34039292
     4      -213.17058137
     5      -213.17058137
     6      -213.17058137
     7      -213.17058137
     8      -213.17058137
     9      -213.16737740
    10      -213.16737740
    11      -213.16737740
    12      -213.16542792

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1044D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1054D-06

 Number of blocks in overlap matrix:  1162   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2438
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       4250826
 Number of doubly external configurations:       5620664
 Total number of contracted configurations:      9909896
 Total number of uncontracted configurations:  111118060

 Diagonal Coupling coefficients finished.               Storage:  25417248 words, CPU-Time:     69.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1467790 words, CPU-time:      0.39 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34039292     0.00000000    -0.83973125  0.55D-01  0.10D+00    80.52
    1     2     2     1.00000000     0.00000000  -213.34039292     0.00000000    -0.83936494  0.54D-01  0.10D+00    80.52
    1     3     3     1.00000000     0.00000000  -213.34039292    -0.00000000    -0.83939041  0.54D-01  0.10D+00    80.52
    1     4     4     1.00000000     0.00000000  -213.17058137     0.00000000    -0.79702271  0.37D-01  0.94D-01    80.52
    1     5     5     1.00000000     0.00000000  -213.17058137     0.00000000    -0.79669527  0.37D-01  0.93D-01    80.52
    1     6     6     1.00000000     0.00000000  -213.17058137    -0.00000000    -0.79673886  0.37D-01  0.93D-01    80.52
    1     7     7     1.00000000     0.00000000  -213.17058137     0.00000000    -0.79670822  0.37D-01  0.93D-01    80.52
    1     8     8     1.00000000     0.00000000  -213.17058137    -0.00000000    -0.79709179  0.37D-01  0.94D-01    80.52
    1     9     9     1.00000000     0.00000000  -213.16737740     0.00000000    -0.80019189  0.38D-01  0.94D-01    80.52
    1    10    10     1.00000000     0.00000000  -213.16737740    -0.00000000    -0.80019778  0.38D-01  0.94D-01    80.52
    1    11    11     1.00000000     0.00000000  -213.16737740     0.00000000    -0.80024332  0.38D-01  0.94D-01    80.52
    1    12    12     1.00000000     0.00000000  -213.16542792     0.00000000    -0.79745169  0.37D-01  0.94D-01    80.52
    2     1     1     1.09688860    -0.65634692  -213.99673983    -0.65634692    -0.01991992  0.42D-02  0.15D-02   431.66
    2     2     2     1.09703101    -0.65623992  -213.99663284    -0.65623992    -0.02002469  0.43D-02  0.15D-02   431.66
    2     3     3     1.09722969    -0.65610781  -213.99650072    -0.65610781    -0.02017437  0.44D-02  0.15D-02   431.66
    2     4     4     1.08460140    -0.64418010  -213.81476147    -0.64418010    -0.01487696  0.22D-02  0.10D-02   431.66
    2     5     5     1.08449936    -0.64415139  -213.81473276    -0.64415139    -0.01491362  0.22D-02  0.10D-02   431.66
    2     6     6     1.08451237    -0.64413932  -213.81472069    -0.64413932    -0.01492439  0.23D-02  0.10D-02   431.66
    2     7     7     1.08467264    -0.64413662  -213.81471799    -0.64413662    -0.01492236  0.23D-02  0.10D-02   431.66
    2     8     8     1.08453818    -0.64412384  -213.81470521    -0.64412384    -0.01494210  0.23D-02  0.10D-02   431.66
    2     9     9     1.08499421    -0.64455973  -213.81193714    -0.64455973    -0.01551755  0.26D-02  0.11D-02   431.66
    2    10    10     1.08501608    -0.64454682  -213.81192422    -0.64454682    -0.01552983  0.26D-02  0.11D-02   431.66
    2    11    11     1.08504278    -0.64452367  -213.81190108    -0.64452367    -0.01555711  0.26D-02  0.11D-02   431.66
    2    12    12     1.08472775    -0.64422747  -213.80965539    -0.64422747    -0.01507732  0.24D-02  0.10D-02   431.66
    3     1     1     1.08437576    -0.67528194  -214.01567486    -0.01893502    -0.00051588  0.84D-04  0.58D-04   782.60
    3     2     2     1.08437294    -0.67527434  -214.01566726    -0.01903442    -0.00052227  0.85D-04  0.58D-04   782.60
    3     3     3     1.08437377    -0.67527155  -214.01566447    -0.01916375    -0.00052558  0.86D-04  0.59D-04   782.60
    3     4     4     1.07883614    -0.65847382  -213.82905519    -0.01429371    -0.00031307  0.37D-04  0.30D-04   782.60
    3     5     5     1.07883408    -0.65847308  -213.82905445    -0.01432170    -0.00031351  0.37D-04  0.30D-04   782.60
    3     6     6     1.07883326    -0.65847285  -213.82905422    -0.01433354    -0.00031384  0.37D-04  0.30D-04   782.60
    3     7     7     1.07886546    -0.65847064  -213.82905201    -0.01433402    -0.00031604  0.37D-04  0.31D-04   782.60
    3     8     8     1.07886230    -0.65846918  -213.82905055    -0.01434534    -0.00031720  0.37D-04  0.32D-04   782.60
    3     9     9     1.07875976    -0.65938827  -213.82676567    -0.01482853    -0.00033420  0.40D-04  0.33D-04   782.60
    3    10    10     1.07875946    -0.65938725  -213.82676465    -0.01484043    -0.00033490  0.40D-04  0.33D-04   782.60
    3    11    11     1.07875742    -0.65938688  -213.82676429    -0.01486321    -0.00033546  0.40D-04  0.33D-04   782.60
    3    12    12     1.07884528    -0.65871376  -213.82414168    -0.01448629    -0.00032247  0.35D-04  0.33D-04   782.60
    4     1     1     1.08402281    -0.67581365  -214.01620657    -0.00053171    -0.00002215  0.37D-05  0.28D-05  1133.71
    4     2     2     1.08401852    -0.67581337  -214.01620629    -0.00053903    -0.00002239  0.37D-05  0.29D-05  1133.71
    4     3     3     1.08401964    -0.67581319  -214.01620610    -0.00054163    -0.00002253  0.37D-05  0.29D-05  1133.71
    4     4     4     1.07930517    -0.65879814  -213.82937951    -0.00032432    -0.00001287  0.25D-05  0.15D-05  1133.71
    4     5     5     1.07930440    -0.65879802  -213.82937939    -0.00032494    -0.00001289  0.24D-05  0.15D-05  1133.71
    4     6     6     1.07930456    -0.65879792  -213.82937929    -0.00032506    -0.00001290  0.25D-05  0.15D-05  1133.71
    4     7     7     1.07930071    -0.65879771  -213.82937908    -0.00032707    -0.00001322  0.25D-05  0.15D-05  1133.71
    4     8     8     1.07930004    -0.65879754  -213.82937891    -0.00032836    -0.00001323  0.25D-05  0.15D-05  1133.71
    4     9     9     1.07920489    -0.65973288  -213.82711028    -0.00034461    -0.00001355  0.26D-05  0.15D-05  1133.71
    4    10    10     1.07920416    -0.65973280  -213.82711021    -0.00034555    -0.00001358  0.26D-05  0.15D-05  1133.71
    4    11    11     1.07920436    -0.65973271  -213.82711012    -0.00034583    -0.00001362  0.26D-05  0.15D-05  1133.71
    4    12    12     1.07936925    -0.65904764  -213.82447556    -0.00033388    -0.00001395  0.24D-05  0.19D-05  1133.71
    5     1     1     1.08407264    -0.67583781  -214.01623073    -0.00002416    -0.00000094  0.94D-07  0.15D-06  1484.25
    5     2     2     1.08407147    -0.67583780  -214.01623072    -0.00002443    -0.00000095  0.93D-07  0.15D-06  1484.25
    5     3     3     1.08407218    -0.67583779  -214.01623070    -0.00002460    -0.00000096  0.94D-07  0.15D-06  1484.25
    5     4     4     1.07943401    -0.65881283  -213.82939420    -0.00001469    -0.00000060  0.45D-07  0.13D-06  1484.25
    5     5     5     1.07943308    -0.65881276  -213.82939413    -0.00001474    -0.00000062  0.46D-07  0.13D-06  1484.25
    5     6     6     1.07943370    -0.65881274  -213.82939411    -0.00001482    -0.00000061  0.45D-07  0.13D-06  1484.25
    5     7     7     1.07943388    -0.65881264  -213.82939401    -0.00001493    -0.00000060  0.45D-07  0.13D-06  1484.25
    5     8     8     1.07943291    -0.65881263  -213.82939400    -0.00001509    -0.00000062  0.46D-07  0.13D-06  1484.25
    5     9     9     1.07932609    -0.65974808  -213.82712548    -0.00001520    -0.00000062  0.59D-07  0.12D-06  1484.25
    5    10    10     1.07932584    -0.65974804  -213.82712545    -0.00001524    -0.00000063  0.59D-07  0.12D-06  1484.25
    5    11    11     1.07932599    -0.65974800  -213.82712540    -0.00001528    -0.00000063  0.59D-07  0.12D-06  1484.25
    5    12    12     1.07954626    -0.65906375  -213.82449168    -0.00001612    -0.00000075  0.45D-07  0.18D-06  1484.25
    6     1     1     1.08406079    -0.67583885  -214.01623176    -0.00000104    -0.00000006  0.56D-08  0.11D-07  1833.75
    6     2     2     1.08406044    -0.67583885  -214.01623176    -0.00000104    -0.00000006  0.57D-08  0.11D-07  1833.75
    6     3     3     1.08406058    -0.67583884  -214.01623176    -0.00000106    -0.00000006  0.58D-08  0.11D-07  1833.75
    6     4     4     1.07944072    -0.65881358  -213.82939495    -0.00000075    -0.00000005  0.53D-08  0.12D-07  1833.75
    6     5     5     1.07944018    -0.65881353  -213.82939490    -0.00000077    -0.00000006  0.52D-08  0.13D-07  1833.75
    6     6     6     1.07944063    -0.65881349  -213.82939486    -0.00000075    -0.00000005  0.53D-08  0.13D-07  1833.75
    6     7     7     1.07944014    -0.65881340  -213.82939477    -0.00000076    -0.00000006  0.52D-08  0.13D-07  1833.75
    6     8     8     1.07944051    -0.65881339  -213.82939476    -0.00000076    -0.00000005  0.53D-08  0.12D-07  1833.75
    6     9     9     1.07932973    -0.65974882  -213.82712623    -0.00000074    -0.00000006  0.60D-08  0.13D-07  1833.75
    6    10    10     1.07932969    -0.65974879  -213.82712619    -0.00000075    -0.00000006  0.61D-08  0.13D-07  1833.75
    6    11    11     1.07932961    -0.65974875  -213.82712615    -0.00000075    -0.00000006  0.61D-08  0.13D-07  1833.75
    6    12    12     1.07956163    -0.65906471  -213.82449264    -0.00000096    -0.00000007  0.76D-08  0.16D-07  1833.75
    7     1     1     1.08406984    -0.67583891  -214.01623183    -0.00000007    -0.00000000  0.29D-09  0.82D-09  2183.27
    7     2     2     1.08406987    -0.67583891  -214.01623183    -0.00000007    -0.00000000  0.30D-09  0.83D-09  2183.27
    7     3     3     1.08406986    -0.67583891  -214.01623183    -0.00000007    -0.00000000  0.29D-09  0.81D-09  2183.27
    7     4     4     1.07944766    -0.65881365  -213.82939502    -0.00000007    -0.00000001  0.53D-09  0.11D-08  2183.27
    7     5     5     1.07944771    -0.65881360  -213.82939497    -0.00000007    -0.00000001  0.55D-09  0.11D-08  2183.27
    7     6     6     1.07944757    -0.65881356  -213.82939493    -0.00000007    -0.00000001  0.54D-09  0.11D-08  2183.27
    7     7     7     1.07944754    -0.65881347  -213.82939484    -0.00000007    -0.00000001  0.54D-09  0.11D-08  2183.27
    7     8     8     1.07944745    -0.65881346  -213.82939483    -0.00000007    -0.00000001  0.53D-09  0.11D-08  2183.27
    7     9     9     1.07933599    -0.65974889  -213.82712630    -0.00000007    -0.00000001  0.59D-09  0.13D-08  2183.27
    7    10    10     1.07933595    -0.65974886  -213.82712627    -0.00000007    -0.00000001  0.59D-09  0.13D-08  2183.27
    7    11    11     1.07933590    -0.65974882  -213.82712622    -0.00000007    -0.00000001  0.59D-09  0.13D-08  2183.27
    7    12    12     1.07957030    -0.65906480  -213.82449273    -0.00000009    -0.00000001  0.68D-09  0.12D-08  2183.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   1.0%  11.8%
 P   0.4%  46.3%  27.4%

 Initialization:   3.2%
 Other:            8.4%

 Total CPU:     2183.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9492554   0.0000002  -0.0043817   0.0000001  -0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0970769  -0.0000366   0.0000000   0.0000000
 2222222222//0000           0.0000289   0.9492447   0.0062910   0.0000000   0.0000000   0.0000012   0.0000000  -0.0000000
                           -0.0000366  -0.0970768   0.0000071   0.0000000
 2222222222/0/000           0.0043816  -0.0062911   0.9492345  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000004
                            0.0000000  -0.0000071  -0.0970768   0.0000000
 22222222220/00/0           0.0000000   0.0000000  -0.0000000  -0.0000754   0.7747255  -0.0002185  -0.0678035   0.0000579
                           -0.0000000   0.0000000   0.0000000   0.5497365
 2222222222/00/00          -0.0000000  -0.0000000   0.0000000   0.0000320  -0.3286330   0.0001709   0.7048249  -0.0000274
                            0.0000000   0.0000000   0.0000000   0.5497539
 22222222220/0/00          -0.0000021  -0.0686078  -0.0004547   0.0000000   0.0001831   0.6734989  -0.0000779   0.0000158
                           -0.0002528  -0.6701540   0.0000489   0.0000000
 2222222222/0000/           0.0003167  -0.0004547   0.0686071   0.0000000  -0.0000501  -0.0000158   0.0000028   0.6734921
                           -0.0000002   0.0000489   0.6701609   0.0000000
 222222222200/0/0          -0.0686087  -0.0000000   0.0003167   0.6734907   0.0000655  -0.0000000   0.0000000  -0.0000000
                            0.6701622  -0.0002528   0.0000002   0.0000000
 22222222220/000/           0.0686087   0.0000000  -0.0003167   0.6734891   0.0000655  -0.0000000   0.0000000  -0.0000000
                           -0.6701638   0.0002528  -0.0000002  -0.0000000
 222222222200//00          -0.0003167   0.0004547  -0.0686070   0.0000000  -0.0000501  -0.0000158   0.0000028   0.6734879
                            0.0000002  -0.0000489  -0.6701653   0.0000000
 2222222222/000/0           0.0000021   0.0686079   0.0004547   0.0000000   0.0001831   0.6734809  -0.0000779   0.0000158
                            0.0002528   0.6701721  -0.0000489  -0.0000000
 222222222200/00/          -0.0000000  -0.0000000  -0.0000000   0.0000434  -0.4460695   0.0000475  -0.6370259  -0.0000305
                           -0.0000000  -0.0000000  -0.0000000   0.5497519
 22222202222//000          -0.1039364  -0.0000000   0.0004798   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0136738   0.0000052  -0.0000000  -0.0000000
 2222220222//2000          -0.0000032  -0.1039353  -0.0006888   0.0000000   0.0000000   0.0000001  -0.0000000   0.0000000
                            0.0000052   0.0136738  -0.0000010  -0.0000000
 2222220222/2/000          -0.0004798   0.0006888  -0.1039342   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001
                           -0.0000000   0.0000010   0.0136737   0.0000000
 22222202222/00/0          -0.0000000   0.0000000   0.0000000   0.0000075  -0.0772926   0.0000217   0.0062219  -0.0000058
                            0.0000000  -0.0000000  -0.0000000  -0.0554337
 22222202220/20/0          -0.0000000  -0.0000000  -0.0000000   0.0000075  -0.0771988   0.0000218   0.0072990  -0.0000058
                            0.0000000  -0.0000000  -0.0000000  -0.0554329
 2222220222/20/00           0.0000000   0.0000000   0.0000000  -0.0000031   0.0322785  -0.0000169  -0.0705047   0.0000027
                           -0.0000000  -0.0000000  -0.0000000  -0.0554354
 2222220222/02/00           0.0000000   0.0000000   0.0000000  -0.0000032   0.0332578  -0.0000171  -0.0700503   0.0000028
                           -0.0000000  -0.0000000  -0.0000000  -0.0554362
 22222202220/2/00           0.0000002   0.0061295   0.0000406  -0.0000000  -0.0000183  -0.0674233   0.0000078  -0.0000016
                            0.0000253   0.0671608  -0.0000049  -0.0000000
 222222022220/0/0           0.0061296   0.0000000  -0.0000283  -0.0674225  -0.0000066   0.0000000  -0.0000000   0.0000000
                           -0.0671616   0.0000253  -0.0000000  -0.0000000
 22222202222/000/          -0.0061296  -0.0000000   0.0000283  -0.0674223  -0.0000066   0.0000000  -0.0000000   0.0000000
                            0.0671617  -0.0000253   0.0000000   0.0000000
 2222220222/2000/          -0.0000283   0.0000406  -0.0061296  -0.0000000   0.0000050   0.0000016  -0.0000003  -0.0674223
                            0.0000000  -0.0000049  -0.0671620  -0.0000000
 222222022202//00           0.0000283  -0.0000406   0.0061295  -0.0000000   0.0000050   0.0000016  -0.0000003  -0.0674219
                           -0.0000000   0.0000049   0.0671625  -0.0000000
 2222220222/020/0          -0.0000002  -0.0061296  -0.0000406  -0.0000000  -0.0000183  -0.0674211   0.0000078  -0.0000016
                           -0.0000253  -0.0671632   0.0000049   0.0000000
 22222202222/0/00           0.0000004   0.0140140   0.0000929  -0.0000000  -0.0000182  -0.0668843   0.0000077  -0.0000016
                            0.0000245   0.0648927  -0.0000047  -0.0000000
 2222220222/0200/          -0.0000647   0.0000929  -0.0140138  -0.0000000   0.0000050   0.0000016  -0.0000003  -0.0668842
                            0.0000000  -0.0000047  -0.0648935  -0.0000000
 222222022220//00           0.0000647  -0.0000929   0.0140138  -0.0000000   0.0000050   0.0000016  -0.0000003  -0.0668839
                           -0.0000000   0.0000047   0.0648940  -0.0000000
 222222022202/0/0           0.0140143   0.0000000  -0.0000647  -0.0668827  -0.0000065   0.0000000  -0.0000000   0.0000000
                           -0.0648943   0.0000245  -0.0000000  -0.0000000
 22222202220/200/          -0.0140142  -0.0000000   0.0000647  -0.0668823  -0.0000065   0.0000000  -0.0000000   0.0000000
                            0.0648944  -0.0000245   0.0000000   0.0000000
 2222220222/200/0          -0.0000004  -0.0140141  -0.0000929  -0.0000000  -0.0000182  -0.0668822   0.0000077  -0.0000016
                           -0.0000245  -0.0648952   0.0000047   0.0000000
 222222022202/00/          -0.0000000  -0.0000000   0.0000000  -0.0000043   0.0440349  -0.0000046   0.0638260   0.0000030
                            0.0000000   0.0000000   0.0000000  -0.0554351
 222222022220/00/           0.0000000  -0.0000000   0.0000000  -0.0000044   0.0449204  -0.0000049   0.0632085   0.0000031
                            0.0000000   0.0000000   0.0000000  -0.0554361

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000029    0.959556    0.004429   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000146    0.031589
            -0.000001   -0.000000
 2           0.959545    0.000000   -0.006359   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000209    0.000000
            -0.031589   -0.000000
 3           0.006359   -0.004429    0.959535    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.031588   -0.000146
            -0.000209   -0.000000
 4          -0.000000   -0.000000    0.000000   -0.000008    0.000000    0.000000    0.961882   -0.000093    0.000000    0.000001
            -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.083693   -0.000072    0.000261    0.000094    0.958234   -0.000000   -0.000000
            -0.000000    0.000013
 6          -0.000000   -0.000000   -0.000000    0.000088   -0.000023    0.961882   -0.000000   -0.000270    0.000000    0.000000
            -0.000013   -0.000000
 7          -0.000000    0.000000   -0.000000    0.958234    0.000004   -0.000111    0.000000   -0.083693   -0.000000   -0.000000
            -0.000000   -0.000003
 8           0.000000   -0.000000    0.000000    0.000002    0.961882    0.000023   -0.000000    0.000072    0.000003    0.000000
             0.000000    0.000000
 9           0.000012   -0.032681   -0.000000    0.000000   -0.000000    0.000000   -0.000001    0.000000   -0.000000    0.961378
             0.000363   -0.000000
 10          0.032681    0.000012    0.000002    0.000000   -0.000000    0.000013    0.000000    0.000000    0.000070   -0.000363
             0.961378    0.000000
 11         -0.000002   -0.000000    0.032681    0.000000   -0.000003   -0.000000   -0.000000    0.000000    0.961378    0.000000
            -0.000070    0.000000
 12         -0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000014   -0.000000    0.000000
            -0.000000    0.961829

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960086   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000515    0.000000
             0.000002   -0.000000
 2          -0.000000    0.960086   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000515
            -0.000003   -0.000000
 3          -0.000000   -0.000000    0.960086    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000003
             0.000515    0.000000
 4          -0.000000    0.000000    0.000000    0.961882    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.961882   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961882   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961882    0.000000    0.000000    0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.961882    0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000515    0.000000    0.000002    0.000000    0.000000   -0.000000    0.000000    0.000000    0.961933    0.000000
            -0.000000    0.000000
 10          0.000000    0.000515    0.000003   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.961933
            -0.000000   -0.000000
 11          0.000002   -0.000003    0.000515   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.961933    0.000000
 12         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.961829


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95955598 (fixed)   0.96017549 (relaxed)   0.96008588 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074303   -0.00127134   -0.57237436
 Singles      0.01745063   -0.05538626   -0.06192143
 Pairs        0.06668167    0.00000000   -0.04154313
 Total        1.08487533   -0.05665760   -0.67583891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34019946
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05737417
 One electron energy                 -376.05131823
 Two electron energy                  162.03508640
 Virial quotient                       -2.57672764
 Correlation energy                    -0.67603237
 !MRCI STATE 1.1 Energy              -214.016231831207

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07361030 (Davidson, fixed reference)
 Cluster corrected energies          -214.07347341 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07361030 (Davidson, rotated reference)

 Cluster corrected energies          -214.07159301 (Pople, fixed reference)
 Cluster corrected energies          -214.07145155 (Pople, relaxed reference)
 Cluster corrected energies          -214.07159301 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95954511 (fixed)   0.96017548 (relaxed)   0.96008587 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074303   -0.00127134   -0.57237426
 Singles      0.01745071   -0.05538634   -0.06192147
 Pairs        0.06668163    0.00000000   -0.04154318
 Total        1.08487536   -0.05665769   -0.67583891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34019946
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05737369
 One electron energy                 -376.05131953
 Two electron energy                  162.03508770
 Virial quotient                       -2.57672766
 Correlation energy                    -0.67603237
 !MRCI STATE 2.1 Energy              -214.016231830631

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07361032 (Davidson, fixed reference)
 Cluster corrected energies          -214.07347343 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07361032 (Davidson, rotated reference)

 Cluster corrected energies          -214.07159303 (Pople, fixed reference)
 Cluster corrected energies          -214.07145157 (Pople, relaxed reference)
 Cluster corrected energies          -214.07159303 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95953489 (fixed)   0.96017549 (relaxed)   0.96008587 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074302   -0.00127134   -0.57237432
 Singles      0.01745066   -0.05538629   -0.06192144
 Pairs        0.06668166    0.00000000   -0.04154316
 Total        1.08487535   -0.05665763   -0.67583891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34019946
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05737383
 One electron energy                 -376.05131836
 Two electron energy                  162.03508653
 Virial quotient                       -2.57672765
 Correlation energy                    -0.67603237
 !MRCI STATE 3.1 Energy              -214.016231828718

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07361031 (Davidson, fixed reference)
 Cluster corrected energies          -214.07347342 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07361031 (Davidson, rotated reference)

 Cluster corrected energies          -214.07159302 (Pople, fixed reference)
 Cluster corrected energies          -214.07145156 (Pople, relaxed reference)
 Cluster corrected energies          -214.07159302 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96188208 (fixed)   0.96202874 (relaxed)   0.96188208 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127816   -0.00219678   -0.55809061
 Singles      0.01734517   -0.05645611   -0.06280267
 Pairs        0.06220404    0.00000000   -0.03792037
 Total        1.08082737   -0.05865289   -0.65881365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17058137
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77980994
 One electron energy                 -371.42305736
 Two electron energy                  157.59366234
 Virial quotient                       -2.58311049
 Correlation energy                    -0.65881365
 !MRCI STATE 4.1 Energy              -213.829395018151

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88264519 (Davidson, fixed reference)
 Cluster corrected energies          -213.88242810 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88264519 (Davidson, rotated reference)

 Cluster corrected energies          -213.88059895 (Pople, fixed reference)
 Cluster corrected energies          -213.88037613 (Pople, relaxed reference)
 Cluster corrected energies          -213.88059895 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95823403 (fixed)   0.96202872 (relaxed)   0.96188205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127817   -0.00219678   -0.55808267
 Singles      0.01734528   -0.05645627   -0.06280269
 Pairs        0.06220398   -0.00000835   -0.03792824
 Total        1.08082743   -0.05866139   -0.65881360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17058137
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77984127
 One electron energy                 -371.42309175
 Two electron energy                  157.59369679
 Virial quotient                       -2.58310951
 Correlation energy                    -0.65881360
 !MRCI STATE 5.1 Energy              -213.829394966958

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88264518 (Davidson, fixed reference)
 Cluster corrected energies          -213.88242807 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88264518 (Davidson, rotated reference)

 Cluster corrected energies          -213.88059894 (Pople, fixed reference)
 Cluster corrected energies          -213.88037610 (Pople, relaxed reference)
 Cluster corrected energies          -213.88059894 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96188207 (fixed)   0.96202878 (relaxed)   0.96188212 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127816   -0.00219678   -0.55809062
 Singles      0.01734512   -0.05645606   -0.06280258
 Pairs        0.06220400    0.00000000   -0.03792035
 Total        1.08082728   -0.05865284   -0.65881356
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17058137
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77980950
 One electron energy                 -371.42305669
 Two electron energy                  157.59366176
 Virial quotient                       -2.58311050
 Correlation energy                    -0.65881356
 !MRCI STATE 6.1 Energy              -213.829394930247

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88264504 (Davidson, fixed reference)
 Cluster corrected energies          -213.88242794 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88264504 (Davidson, rotated reference)

 Cluster corrected energies          -213.88059880 (Pople, fixed reference)
 Cluster corrected energies          -213.88037597 (Pople, relaxed reference)
 Cluster corrected energies          -213.88059880 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95823415 (fixed)   0.96202880 (relaxed)   0.96188213 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127816   -0.00219677   -0.55809201
 Singles      0.01734514   -0.05645614   -0.06280253
 Pairs        0.06220395    0.00000166   -0.03791892
 Total        1.08082725   -0.05865126   -0.65881347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17058137
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77983434
 One electron energy                 -371.42308322
 Two electron energy                  157.59368839
 Virial quotient                       -2.58310972
 Correlation energy                    -0.65881347
 !MRCI STATE 7.1 Energy              -213.829394838147

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88264492 (Davidson, fixed reference)
 Cluster corrected energies          -213.88242782 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88264492 (Davidson, rotated reference)

 Cluster corrected energies          -213.88059868 (Pople, fixed reference)
 Cluster corrected energies          -213.88037585 (Pople, relaxed reference)
 Cluster corrected energies          -213.88059868 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96188217 (fixed)   0.96202884 (relaxed)   0.96188217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127816   -0.00219678   -0.55809067
 Singles      0.01734502   -0.05645598   -0.06280246
 Pairs        0.06220398   -0.00000000   -0.03792033
 Total        1.08082717   -0.05865275   -0.65881346
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17058137
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77980979
 One electron energy                 -371.42305639
 Two electron energy                  157.59366157
 Virial quotient                       -2.58311049
 Correlation energy                    -0.65881346
 !MRCI STATE 8.1 Energy              -213.829394828446

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88264485 (Davidson, fixed reference)
 Cluster corrected energies          -213.88242775 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88264485 (Davidson, rotated reference)

 Cluster corrected energies          -213.88059861 (Pople, fixed reference)
 Cluster corrected energies          -213.88037578 (Pople, relaxed reference)
 Cluster corrected energies          -213.88059861 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96137799 (fixed)   0.96209011 (relaxed)   0.96193322 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127528   -0.00215129   -0.55924341
 Singles      0.01707629   -0.05620895   -0.06243222
 Pairs        0.06236087    0.00000000   -0.03807327
 Total        1.08071244   -0.05836024   -0.65974889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16757086
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80116004
 One electron energy                 -371.56738668
 Two electron energy                  157.74026038
 Virial quotient                       -2.58241704
 Correlation energy                    -0.65955544
 !MRCI STATE 9.1 Energy              -213.827126296508

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88036062 (Davidson, fixed reference)
 Cluster corrected energies          -213.88012817 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88036062 (Davidson, rotated reference)

 Cluster corrected energies          -213.87831007 (Pople, fixed reference)
 Cluster corrected energies          -213.87807153 (Pople, relaxed reference)
 Cluster corrected energies          -213.87831007 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96137800 (fixed)   0.96209013 (relaxed)   0.96193324 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127528   -0.00215129   -0.55924340
 Singles      0.01707628   -0.05620894   -0.06243218
 Pairs        0.06236085   -0.00000000   -0.03807327
 Total        1.08071241   -0.05836023   -0.65974886
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16757086
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80116096
 One electron energy                 -371.56738834
 Two electron energy                  157.74026207
 Virial quotient                       -2.58241701
 Correlation energy                    -0.65955541
 !MRCI STATE 10.1 Energy             -213.827126265212

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88036057 (Davidson, fixed reference)
 Cluster corrected energies          -213.88012811 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88036057 (Davidson, rotated reference)

 Cluster corrected energies          -213.87831001 (Pople, fixed reference)
 Cluster corrected energies          -213.87807147 (Pople, relaxed reference)
 Cluster corrected energies          -213.87831001 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96137809 (fixed)   0.96209015 (relaxed)   0.96193326 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127528   -0.00215129   -0.55924345
 Singles      0.01707622   -0.05620887   -0.06243210
 Pairs        0.06236086   -0.00000000   -0.03807327
 Total        1.08071235   -0.05836016   -0.65974882
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16757086
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80115978
 One electron energy                 -371.56738719
 Two electron energy                  157.74026097
 Virial quotient                       -2.58241704
 Correlation energy                    -0.65955536
 !MRCI STATE 11.1 Energy             -213.827126221623

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88036049 (Davidson, fixed reference)
 Cluster corrected energies          -213.88012803 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88036049 (Davidson, rotated reference)

 Cluster corrected energies          -213.87830993 (Pople, fixed reference)
 Cluster corrected energies          -213.87807139 (Pople, relaxed reference)
 Cluster corrected energies          -213.87830993 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96182909 (fixed)   0.96197215 (relaxed)   0.96182909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127474   -0.00219871   -0.00281128
 Singles      0.01721396   -0.05637810   -0.06264692
 Pairs        0.06245777   -0.60048800   -0.59360661
 Total        1.08094647   -0.65906480   -0.65906480
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16542792
 Nuclear energy                         0.00000000
 Kinetic energy                        82.78070064
 One electron energy                 -371.42036091
 Two electron energy                  157.59586818
 Virial quotient                       -2.58302347
 Correlation energy                    -0.65906480
 !MRCI STATE 12.1 Energy             -213.824492728738

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87784170 (Davidson, fixed reference)
 Cluster corrected energies          -213.87762982 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87784170 (Davidson, rotated reference)

 Cluster corrected energies          -213.87579678 (Pople, fixed reference)
 Cluster corrected energies          -213.87557926 (Pople, relaxed reference)
 Cluster corrected energies          -213.87579678 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      926.48       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3398.87   3395.56      2.12      0.12      0.81
 REAL TIME  *      3507.64 SEC
 DISK USED  *       965.63 MB (local),       15.16 GB (total)
 SF USED    *         9.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07361030  AU                              
 SETTING HLSDIAG(2)     =      -214.07361032  AU                              
 SETTING HLSDIAG(3)     =      -214.07361031  AU                              
 SETTING HLSDIAG(4)     =      -213.88264519  AU                              
 SETTING HLSDIAG(5)     =      -213.88264518  AU                              
 SETTING HLSDIAG(6)     =      -213.88264504  AU                              
 SETTING HLSDIAG(7)     =      -213.88264492  AU                              
 SETTING HLSDIAG(8)     =      -213.88264485  AU                              
 SETTING HLSDIAG(9)     =      -213.88036062  AU                              
 SETTING HLSDIAG(10)    =      -213.88036057  AU                              
 SETTING HLSDIAG(11)    =      -213.88036049  AU                              
 SETTING HLSDIAG(12)    =      -213.87784170  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.30437549
     2      -213.30437549
     3      -213.30437549
     4      -213.30437549
     5      -213.30437549
     6      -213.27437871
     7      -213.17401974
     8      -213.17401974
     9      -213.17401974
    10      -213.15979562
    11      -213.15979562
    12      -213.15979562
    13      -213.15979562
    14      -213.15979562
    15      -213.14979424

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2425D-06

 Number of blocks in overlap matrix:  1349   Smallest eigenvalue:  0.24D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2473784
 Number of doubly external configurations:       6111928
 Total number of contracted configurations:      8609862
 Total number of uncontracted configurations:   64975422

 Diagonal Coupling coefficients finished.               Storage:  21847082 words, CPU-Time:     50.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1435065 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30437549     0.00000000    -0.84388843  0.62D-01  0.10D+00    62.05
    1     2     2     1.00000000     0.00000000  -213.30437549    -0.00000000    -0.84408298  0.63D-01  0.10D+00    62.05
    1     3     3     1.00000000     0.00000000  -213.30437549     0.00000000    -0.84459414  0.63D-01  0.10D+00    62.05
    1     4     4     1.00000000     0.00000000  -213.30437549     0.00000000    -0.84433178  0.63D-01  0.10D+00    62.05
    1     5     5     1.00000000     0.00000000  -213.30437549    -0.00000000    -0.84378593  0.62D-01  0.10D+00    62.05
    1     6     6     1.00000000     0.00000000  -213.27437871    -0.00000000    -0.81849247  0.35D-01  0.11D+00    62.05
    1     7     7     1.00000000     0.00000000  -213.17401974    -0.00000000    -0.79615711  0.37D-01  0.93D-01    62.05
    1     8     8     1.00000000     0.00000000  -213.17401974    -0.00000000    -0.79614782  0.37D-01  0.93D-01    62.05
    1     9     9     1.00000000     0.00000000  -213.17401974     0.00000000    -0.79615433  0.37D-01  0.93D-01    62.05
    1    10    10     1.00000000     0.00000000  -213.15979562     0.00000000    -0.80347556  0.41D-01  0.95D-01    62.05
    1    11    11     1.00000000     0.00000000  -213.15979562     0.00000000    -0.80392794  0.42D-01  0.95D-01    62.05
    1    12    12     1.00000000     0.00000000  -213.15979562     0.00000000    -0.80392462  0.42D-01  0.95D-01    62.05
    1    13    13     1.00000000     0.00000000  -213.15979562    -0.00000000    -0.80390501  0.42D-01  0.95D-01    62.05
    1    14    14     1.00000000     0.00000000  -213.15979562     0.00000000    -0.80365632  0.41D-01  0.95D-01    62.05
    1    15    15     1.00000000     0.00000000  -213.14979424     0.00000000    -0.80441449  0.45D-01  0.97D-01    62.05
    2     1     1     1.10128701    -0.66128191  -213.96565740    -0.66128191    -0.02108942  0.46D-02  0.17D-02   386.27
    2     2     2     1.10131241    -0.66127752  -213.96565300    -0.66127752    -0.02110075  0.46D-02  0.17D-02   386.27
    2     3     3     1.10169596    -0.66094191  -213.96531740    -0.66094191    -0.02144185  0.48D-02  0.17D-02   386.27
    2     4     4     1.10189356    -0.66081931  -213.96519479    -0.66081931    -0.02158259  0.49D-02  0.17D-02   386.27
    2     5     5     1.10199145    -0.66078079  -213.96515627    -0.66078079    -0.02162895  0.49D-02  0.17D-02   386.27
    2     6     6     1.09166885    -0.65651792  -213.93089663    -0.65651792    -0.01794526  0.43D-02  0.15D-02   386.27
    2     7     7     1.08441292    -0.64416874  -213.81818849    -0.64416874    -0.01476991  0.21D-02  0.10D-02   386.27
    2     8     8     1.08442624    -0.64415853  -213.81817827    -0.64415853    -0.01477934  0.22D-02  0.10D-02   386.27
    2     9     9     1.08443664    -0.64414834  -213.81816808    -0.64414834    -0.01478860  0.22D-02  0.10D-02   386.27
    2    10    10     1.08628075    -0.64586156  -213.80565718    -0.64586156    -0.01605091  0.29D-02  0.11D-02   386.27
    2    11    11     1.08633934    -0.64583291  -213.80562853    -0.64583291    -0.01607812  0.29D-02  0.11D-02   386.27
    2    12    12     1.08664045    -0.64566779  -213.80546341    -0.64566779    -0.01626618  0.30D-02  0.11D-02   386.27
    2    13    13     1.08665569    -0.64565869  -213.80545432    -0.64565869    -0.01628211  0.31D-02  0.11D-02   386.27
    2    14    14     1.08666036    -0.64565620  -213.80545183    -0.64565620    -0.01628358  0.31D-02  0.11D-02   386.27
    2    15    15     1.09012157    -0.64548311  -213.79527734    -0.64548311    -0.01717089  0.43D-02  0.11D-02   386.27
    3     1     1     1.08867505    -0.68112459  -213.98550008    -0.01984268    -0.00064595  0.10D-03  0.83D-04   709.06
    3     2     2     1.08867203    -0.68112032  -213.98549581    -0.01984280    -0.00064951  0.10D-03  0.85D-04   709.06
    3     3     3     1.08866490    -0.68111062  -213.98548610    -0.02016871    -0.00065907  0.11D-03  0.85D-04   709.06
    3     4     4     1.08868278    -0.68110492  -213.98548040    -0.02028561    -0.00066505  0.11D-03  0.86D-04   709.06
    3     5     5     1.08869605    -0.68110099  -213.98547648    -0.02032020    -0.00066939  0.11D-03  0.87D-04   709.06
    3     6     6     1.08434632    -0.67400513  -213.94838384    -0.01748721    -0.00059621  0.76D-04  0.97D-04   709.06
    3     7     7     1.07886506    -0.65836348  -213.83238322    -0.01419473    -0.00030600  0.33D-04  0.30D-04   709.06
    3     8     8     1.07886734    -0.65836320  -213.83238294    -0.01420467    -0.00030628  0.33D-04  0.30D-04   709.06
    3     9     9     1.07886190    -0.65836275  -213.83238249    -0.01421441    -0.00030655  0.33D-04  0.30D-04   709.06
    3    10    10     1.07951513    -0.66116016  -213.82095578    -0.01529860    -0.00038352  0.50D-04  0.44D-04   709.06
    3    11    11     1.07952622    -0.66115823  -213.82095386    -0.01532533    -0.00038484  0.50D-04  0.45D-04   709.06
    3    12    12     1.07954329    -0.66114884  -213.82094447    -0.01548106    -0.00039409  0.51D-04  0.46D-04   709.06
    3    13    13     1.07954890    -0.66114823  -213.82094385    -0.01548953    -0.00039486  0.51D-04  0.46D-04   709.06
    3    14    14     1.07954993    -0.66114766  -213.82094328    -0.01549146    -0.00039521  0.52D-04  0.47D-04   709.06
    3    15    15     1.08051695    -0.66204161  -213.81183584    -0.01655850    -0.00047275  0.74D-04  0.64D-04   709.06
    4     1     1     1.08833075    -0.68181063  -213.98618612    -0.00068604    -0.00003687  0.47D-05  0.59D-05  1050.13
    4     2     2     1.08832722    -0.68181023  -213.98618572    -0.00068991    -0.00003731  0.47D-05  0.60D-05  1050.13
    4     3     3     1.08832371    -0.68181010  -213.98618558    -0.00069948    -0.00003731  0.48D-05  0.60D-05  1050.13
    4     4     4     1.08832812    -0.68181005  -213.98618554    -0.00070514    -0.00003748  0.48D-05  0.60D-05  1050.13
    4     5     5     1.08832624    -0.68180973  -213.98618521    -0.00070873    -0.00003773  0.48D-05  0.61D-05  1050.13
    4     6     6     1.08533170    -0.67464640  -213.94902511    -0.00064127    -0.00004164  0.38D-05  0.80D-05  1050.13
    4     7     7     1.07933186    -0.65868255  -213.83270230    -0.00031908    -0.00001300  0.25D-05  0.14D-05  1050.13
    4     8     8     1.07933246    -0.65868250  -213.83270224    -0.00031930    -0.00001302  0.25D-05  0.14D-05  1050.13
    4     9     9     1.07933095    -0.65868247  -213.83270221    -0.00031972    -0.00001303  0.25D-05  0.14D-05  1050.13
    4    10    10     1.07999860    -0.66156541  -213.82136103    -0.00040525    -0.00002129  0.37D-05  0.35D-05  1050.13
    4    11    11     1.07999762    -0.66156508  -213.82136070    -0.00040684    -0.00002191  0.39D-05  0.36D-05  1050.13
    4    12    12     1.07999720    -0.66156507  -213.82136069    -0.00041623    -0.00002144  0.37D-05  0.35D-05  1050.13
    4    13    13     1.07999746    -0.66156489  -213.82136052    -0.00041667    -0.00002198  0.39D-05  0.36D-05  1050.13
    4    14    14     1.07999605    -0.66156487  -213.82136049    -0.00041721    -0.00002195  0.39D-05  0.36D-05  1050.13
    4    15    15     1.08080758    -0.66255504  -213.81234927    -0.00051343    -0.00003146  0.57D-05  0.55D-05  1050.13
    5     1     1     1.08838676    -0.68185410  -213.98622959    -0.00004347    -0.00000198  0.12D-06  0.39D-06  1373.98
    5     2     2     1.08838467    -0.68185406  -213.98622954    -0.00004383    -0.00000201  0.12D-06  0.40D-06  1373.98
    5     3     3     1.08838498    -0.68185406  -213.98622954    -0.00004396    -0.00000201  0.12D-06  0.40D-06  1373.98
    5     4     4     1.08838390    -0.68185405  -213.98622954    -0.00004400    -0.00000201  0.12D-06  0.40D-06  1373.98
    5     5     5     1.08838421    -0.68185403  -213.98622951    -0.00004430    -0.00000203  0.13D-06  0.40D-06  1373.98
    5     6     6     1.08582140    -0.67469532  -213.94907404    -0.00004892    -0.00000284  0.17D-06  0.57D-06  1373.98
    5     7     7     1.07943894    -0.65869746  -213.83271720    -0.00001490    -0.00000064  0.54D-07  0.13D-06  1373.98
    5     8     8     1.07943880    -0.65869744  -213.83271718    -0.00001494    -0.00000064  0.53D-07  0.13D-06  1373.98
    5     9     9     1.07943859    -0.65869742  -213.83271717    -0.00001495    -0.00000065  0.53D-07  0.13D-06  1373.98
    5    10    10     1.08016797    -0.66159217  -213.82138779    -0.00002676    -0.00000192  0.13D-06  0.46D-06  1373.98
    5    11    11     1.08016781    -0.66159210  -213.82138772    -0.00002702    -0.00000194  0.13D-06  0.46D-06  1373.98
    5    12    12     1.08016793    -0.66159204  -213.82138766    -0.00002697    -0.00000195  0.13D-06  0.46D-06  1373.98
    5    13    13     1.08016986    -0.66159181  -213.82138744    -0.00002692    -0.00000188  0.13D-06  0.45D-06  1373.98
    5    14    14     1.08016847    -0.66159168  -213.82138731    -0.00002682    -0.00000190  0.13D-06  0.45D-06  1373.98
    5    15    15     1.08095706    -0.66259383  -213.81238807    -0.00003879    -0.00000278  0.21D-06  0.63D-06  1373.98
    6     1     1     1.08837657    -0.68185647  -213.98623196    -0.00000237    -0.00000016  0.18D-07  0.31D-07  1698.01
    6     2     2     1.08837552    -0.68185647  -213.98623195    -0.00000241    -0.00000017  0.19D-07  0.32D-07  1698.01
    6     3     3     1.08837577    -0.68185647  -213.98623195    -0.00000241    -0.00000017  0.18D-07  0.32D-07  1698.01
    6     4     4     1.08837550    -0.68185647  -213.98623195    -0.00000241    -0.00000017  0.19D-07  0.32D-07  1698.01
    6     5     5     1.08837530    -0.68185647  -213.98623195    -0.00000244    -0.00000017  0.19D-07  0.32D-07  1698.01
    6     6     6     1.08586409    -0.67469882  -213.94907753    -0.00000350    -0.00000024  0.28D-07  0.39D-07  1698.01
    6     7     7     1.07943678    -0.65869827  -213.83271801    -0.00000081    -0.00000007  0.60D-08  0.15D-07  1698.01
    6     8     8     1.07943670    -0.65869825  -213.83271799    -0.00000081    -0.00000007  0.61D-08  0.15D-07  1698.01
    6     9     9     1.07943672    -0.65869824  -213.83271799    -0.00000082    -0.00000007  0.62D-08  0.15D-07  1698.01
    6    10    10     1.08017194    -0.66159484  -213.82139046    -0.00000267    -0.00000026  0.35D-07  0.43D-07  1698.01
    6    11    11     1.08017171    -0.66159479  -213.82139041    -0.00000269    -0.00000026  0.35D-07  0.43D-07  1698.01
    6    12    12     1.08017157    -0.66159475  -213.82139037    -0.00000271    -0.00000026  0.35D-07  0.43D-07  1698.01
    6    13    13     1.08017193    -0.66159444  -213.82139006    -0.00000263    -0.00000024  0.32D-07  0.40D-07  1698.01
    6    14    14     1.08017162    -0.66159434  -213.82138996    -0.00000265    -0.00000025  0.32D-07  0.41D-07  1698.01
    6    15    15     1.08094882    -0.66259751  -213.81239175    -0.00000368    -0.00000034  0.42D-07  0.65D-07  1698.01
    7     1     1     1.08840029    -0.68185667  -213.98623215    -0.00000020    -0.00000002  0.16D-08  0.32D-08  2021.70
    7     2     2     1.08840027    -0.68185667  -213.98623215    -0.00000020    -0.00000002  0.16D-08  0.33D-08  2021.70
    7     3     3     1.08840022    -0.68185667  -213.98623215    -0.00000020    -0.00000002  0.16D-08  0.32D-08  2021.70
    7     4     4     1.08840025    -0.68185667  -213.98623215    -0.00000020    -0.00000002  0.15D-08  0.31D-08  2021.70
    7     5     5     1.08840023    -0.68185667  -213.98623215    -0.00000020    -0.00000002  0.16D-08  0.32D-08  2021.70
    7     6     6     1.08588817    -0.67469909  -213.94907780    -0.00000026    -0.00000002  0.22D-08  0.38D-08  2021.70
    7     7     7     1.07944292    -0.65869835  -213.83271810    -0.00000009    -0.00000001  0.75D-09  0.15D-08  2021.70
    7     8     8     1.07944289    -0.65869834  -213.83271808    -0.00000009    -0.00000001  0.75D-09  0.15D-08  2021.70
    7     9     9     1.07944290    -0.65869833  -213.83271807    -0.00000009    -0.00000001  0.77D-09  0.15D-08  2021.70
    7    10    10     1.08018663    -0.66159514  -213.82139077    -0.00000031    -0.00000003  0.28D-08  0.52D-08  2021.70
    7    11    11     1.08018651    -0.66159510  -213.82139072    -0.00000031    -0.00000003  0.28D-08  0.52D-08  2021.70
    7    12    12     1.08018651    -0.66159506  -213.82139068    -0.00000031    -0.00000003  0.29D-08  0.52D-08  2021.70
    7    13    13     1.08018634    -0.66159473  -213.82139036    -0.00000029    -0.00000003  0.26D-08  0.48D-08  2021.70
    7    14    14     1.08018625    -0.66159464  -213.82139026    -0.00000030    -0.00000003  0.27D-08  0.49D-08  2021.70
    7    15    15     1.08097096    -0.66259793  -213.81239217    -0.00000042    -0.00000005  0.43D-08  0.92D-08  2021.70
    8     1     1     1.08840029    -0.68185667  -213.98623215     0.00000000    -0.00000002  0.16D-08  0.32D-08  2128.02
    8     2     2     1.08840027    -0.68185667  -213.98623215     0.00000000    -0.00000002  0.16D-08  0.33D-08  2128.02
    8     3     3     1.08840022    -0.68185667  -213.98623215    -0.00000000    -0.00000002  0.16D-08  0.32D-08  2128.02
    8     4     4     1.08840025    -0.68185667  -213.98623215    -0.00000000    -0.00000002  0.15D-08  0.31D-08  2128.02
    8     5     5     1.08840023    -0.68185667  -213.98623215    -0.00000000    -0.00000002  0.16D-08  0.32D-08  2128.02
    8     6     6     1.08588805    -0.67469909  -213.94907780    -0.00000000    -0.00000002  0.21D-08  0.39D-08  2128.02
    8     7     7     1.07944292    -0.65869835  -213.83271810     0.00000000    -0.00000001  0.75D-09  0.15D-08  2128.02
    8     8     8     1.07944289    -0.65869834  -213.83271808    -0.00000000    -0.00000001  0.75D-09  0.15D-08  2128.02
    8     9     9     1.07944290    -0.65869833  -213.83271807     0.00000000    -0.00000001  0.77D-09  0.15D-08  2128.02
    8    10    10     1.08018663    -0.66159514  -213.82139077     0.00000000    -0.00000003  0.28D-08  0.52D-08  2128.02
    8    11    11     1.08018651    -0.66159510  -213.82139072     0.00000000    -0.00000003  0.28D-08  0.52D-08  2128.02
    8    12    12     1.08018651    -0.66159506  -213.82139068    -0.00000000    -0.00000003  0.29D-08  0.52D-08  2128.02
    8    13    13     1.08018634    -0.66159473  -213.82139036    -0.00000000    -0.00000003  0.26D-08  0.48D-08  2128.02
    8    14    14     1.08018625    -0.66159464  -213.82139026    -0.00000000    -0.00000003  0.27D-08  0.49D-08  2128.02
    8    15    15     1.08097383    -0.66259799  -213.81239223    -0.00000006    -0.00000000  0.32D-09  0.80D-09  2128.02


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%   9.9%
 P   0.4%  38.6%  34.4%

 Initialization:   2.5%
 Other:           11.7%

 Total CPU:     2128.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000          -0.0000006   0.0000146   0.9426926  -0.0074363   0.0046671  -0.0000000  -0.0000000  -0.0000000
                           -0.0000002   0.0000889  -0.0000750  -0.1326942   0.0000005  -0.0000017  -0.0000000
 2222222222/0\000           0.9424971  -0.0203908  -0.0000375  -0.0053967  -0.0008387  -0.0000000   0.0000000  -0.0000000
                            0.0000000  -0.1326942  -0.0000118  -0.0000889   0.0000025  -0.0000029  -0.0000000
 22222222220/\000           0.0204726   0.9423773   0.0001265   0.0153596  -0.0040430   0.0000000   0.0000000  -0.0000005
                            0.0000000   0.0000117  -0.1326943   0.0000750  -0.0000042   0.0000031   0.0000000
 2222222222002000           0.0040917  -0.0127796   0.0062501   0.7686753  -0.0376376   0.5305611  -0.0000000  -0.0000000
                            0.0000000  -0.0000026   0.0000040  -0.0000008  -0.1041481   0.0298582  -0.1083741
 22222222220/00\0          -0.0001721   0.0012299  -0.0008717  -0.0497383   0.0968267   0.1122392  -0.0000000  -0.0000000
                            0.0000000  -0.0000200   0.0000236  -0.0000104  -0.1863052   0.7470686   0.5379080
 222222222200/00\           0.0005787  -0.0018074   0.0008840   0.1087147  -0.0053231   0.1122390   0.0000000  -0.0000000
                           -0.0000000   0.0000188  -0.0000286   0.0000055   0.7401257  -0.2121877   0.5379187
 2222222222020000          -0.0012166   0.0086963  -0.0061637  -0.3516786   0.6846201   0.5305612   0.0000000   0.0000000
                           -0.0000000   0.0000028  -0.0000033   0.0000015   0.0262166  -0.1051255  -0.1083726
 222222222200/0\0           0.0020474   0.0942445   0.0000127   0.0015361  -0.0004043   0.0000000  -0.0000000   0.6735902
                           -0.0005475  -0.0000589   0.6667894  -0.0003767   0.0000212  -0.0000158  -0.0000000
 222222222200/\00           0.0942563  -0.0020392  -0.0000038  -0.0005397  -0.0000839  -0.0000000  -0.6735884   0.0000002
                            0.0003328   0.6667914   0.0000592   0.0004467  -0.0000127   0.0000146   0.0000000
 2222222222/000\0          -0.0000001   0.0000015   0.0942759  -0.0007437   0.0004667  -0.0000000   0.0003328   0.0005475
                            0.6735880  -0.0004467   0.0003766   0.6667914  -0.0000024   0.0000087   0.0000000
 2222222222/0000\           0.0942564  -0.0020392  -0.0000038  -0.0005397  -0.0000839  -0.0000000   0.6735874  -0.0000002
                           -0.0003328   0.6667923   0.0000592   0.0004467  -0.0000127   0.0000146   0.0000000
 22222222220/0\00          -0.0000001   0.0000015   0.0942758  -0.0007437   0.0004667  -0.0000000  -0.0003328  -0.0005475
                           -0.6735873  -0.0004467   0.0003766   0.6667922  -0.0000024   0.0000087   0.0000000
 22222222220/000\           0.0020474   0.0942444   0.0000127   0.0015361  -0.0004043  -0.0000000   0.0000000  -0.6735853
                            0.0005475  -0.0000589   0.6667945  -0.0003767   0.0000212  -0.0000158  -0.0000000
 2222222222200000          -0.0028751   0.0040833  -0.0000864  -0.4169969  -0.6469825   0.5305612  -0.0000000  -0.0000000
                            0.0000000  -0.0000002  -0.0000007  -0.0000007   0.0779335   0.0752653  -0.1083732
 2222222222/00\00          -0.0004066   0.0005775  -0.0000122  -0.0589763  -0.0915034   0.1122390   0.0000000   0.0000000
                           -0.0000000   0.0000012   0.0000049   0.0000050  -0.5538300  -0.5348724   0.5379127
 2222220222022000          -0.0003149   0.0004472  -0.0000095  -0.0456717  -0.0708608  -0.1122194   0.0000000   0.0000000
                           -0.0000000  -0.0000000  -0.0000001  -0.0000001   0.0102630   0.0099120   0.0247886
 2222220222220000           0.0004481  -0.0013997   0.0006845   0.0841892  -0.0041224  -0.1122193   0.0000000   0.0000000
                           -0.0000000  -0.0000003   0.0000005  -0.0000001  -0.0137157   0.0039323   0.0247885
 2222220222202000          -0.0001332   0.0009525  -0.0006751  -0.0385178   0.0749831  -0.1122193  -0.0000000  -0.0000000
                            0.0000000   0.0000004  -0.0000004   0.0000002   0.0034522  -0.0138439   0.0247887
 2222220222/\2000           0.0000001  -0.0000016  -0.1032481   0.0008145  -0.0005112   0.0000000  -0.0000000  -0.0000000
                            0.0000000  -0.0000117   0.0000099   0.0174749  -0.0000001   0.0000002   0.0000000
 2222220222/2\000          -0.1032269   0.0022333   0.0000041   0.0005911   0.0000919  -0.0000000   0.0000000  -0.0000000
                           -0.0000000   0.0174749   0.0000016   0.0000117  -0.0000003   0.0000004   0.0000000
 22222202222/\000          -0.0022423  -0.1032139  -0.0000139  -0.0016823   0.0004428  -0.0000000  -0.0000000   0.0000001
                            0.0000000  -0.0000015   0.0174747  -0.0000099   0.0000006  -0.0000004  -0.0000000
 22222202220/20\0           0.0000647  -0.0002661   0.0001551   0.0137680  -0.0093918  -0.0045539   0.0000000  -0.0000000
                            0.0000000   0.0000020  -0.0000023   0.0000010   0.0169920  -0.0743753  -0.0554390
 222222022202/00\          -0.0000680   0.0002707  -0.0001552  -0.0142379   0.0086627  -0.0045539  -0.0000000  -0.0000000
                            0.0000000  -0.0000018   0.0000028  -0.0000005  -0.0737385   0.0195701  -0.0554398
 22222202222/00\0          -0.0000184  -0.0000649   0.0000795  -0.0003833  -0.0166645  -0.0045539   0.0000000   0.0000000
                           -0.0000000   0.0000020  -0.0000024   0.0000010   0.0199216  -0.0736448  -0.0554390
 222222022220/00\          -0.0000878   0.0002157  -0.0000827  -0.0150175  -0.0072303  -0.0045539  -0.0000000  -0.0000000
                           -0.0000000  -0.0000019   0.0000029  -0.0000006  -0.0729066   0.0224717  -0.0554399
 222222022220/0\0          -0.0001891  -0.0087041  -0.0000012  -0.0001419   0.0000373   0.0000000   0.0000000  -0.0674664
                            0.0000548   0.0000059  -0.0668120   0.0000377  -0.0000021   0.0000016  -0.0000000
 222222022202/\00          -0.0087052   0.0001883   0.0000003   0.0000498   0.0000077  -0.0000000   0.0674662  -0.0000000
                           -0.0000333  -0.0668122  -0.0000059  -0.0000448   0.0000013  -0.0000015   0.0000000
 22222202220/2\00           0.0000000  -0.0000001  -0.0087070   0.0000687  -0.0000431   0.0000000   0.0000333   0.0000548
                            0.0674661   0.0000448  -0.0000377  -0.0668124   0.0000002  -0.0000009   0.0000000
 2222220222/020\0           0.0000000  -0.0000001  -0.0087070   0.0000687  -0.0000431   0.0000000  -0.0000333  -0.0000548
                           -0.0674661   0.0000448  -0.0000377  -0.0668121   0.0000002  -0.0000009   0.0000000
 2222220222/2000\          -0.0087052   0.0001883   0.0000003   0.0000498   0.0000077  -0.0000000  -0.0674661   0.0000000
                            0.0000333  -0.0668122  -0.0000059  -0.0000448   0.0000013  -0.0000015  -0.0000000
 22222202222/000\          -0.0001891  -0.0087041  -0.0000012  -0.0001419   0.0000373   0.0000000  -0.0000000   0.0674659
                           -0.0000548   0.0000059  -0.0668125   0.0000377  -0.0000021   0.0000016  -0.0000000
 222222022202/0\0          -0.0003619  -0.0166573  -0.0000022  -0.0002715   0.0000715  -0.0000000   0.0000000  -0.0658720
                            0.0000535   0.0000058  -0.0653021   0.0000369  -0.0000021   0.0000015   0.0000000
 22222202222/0\00           0.0000000  -0.0000003  -0.0166628   0.0001314  -0.0000825   0.0000000   0.0000325   0.0000535
                            0.0658717   0.0000438  -0.0000369  -0.0653024   0.0000002  -0.0000009  -0.0000000
 2222220222/200\0           0.0000000  -0.0000003  -0.0166628   0.0001314  -0.0000825   0.0000000  -0.0000325  -0.0000535
                           -0.0658717   0.0000438  -0.0000369  -0.0653022   0.0000002  -0.0000009  -0.0000000
 222222022220/\00          -0.0166594   0.0003604   0.0000007   0.0000954   0.0000148   0.0000000   0.0658714  -0.0000000
                           -0.0000325  -0.0653028  -0.0000058  -0.0000437   0.0000012  -0.0000014  -0.0000000
 2222220222/0200\          -0.0166594   0.0003604   0.0000007   0.0000954   0.0000148  -0.0000000  -0.0658713   0.0000000
                            0.0000325  -0.0653028  -0.0000058  -0.0000437   0.0000012  -0.0000014  -0.0000000
 22222202220/200\          -0.0003619  -0.0166572  -0.0000022  -0.0002715   0.0000715  -0.0000000  -0.0000000   0.0658711
                           -0.0000535   0.0000058  -0.0653030   0.0000369  -0.0000021   0.0000015   0.0000000
 2222220222/20\00           0.0000230   0.0000505  -0.0000724   0.0012495   0.0166220  -0.0045540  -0.0000000  -0.0000000
                            0.0000000  -0.0000001  -0.0000005  -0.0000005   0.0559153   0.0519024  -0.0554395
 2222220222/02\00           0.0000864  -0.0002059   0.0000757   0.0146212   0.0080018  -0.0045539   0.0000000  -0.0000000
                           -0.0000000  -0.0000002  -0.0000004  -0.0000005   0.0538182   0.0540743  -0.0554392

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.001302   -0.000001    0.020772    0.956295    0.005057   -0.000000   -0.000000    0.000000    0.000000   -0.000295
            -0.054083   -0.001175    0.000000   -0.000009    0.000000
 2           0.010292    0.000015    0.956174   -0.020689   -0.012539    0.000000    0.000000   -0.000000    0.000000    0.000843
             0.001170   -0.054076   -0.000001   -0.000361    0.000000
 3          -0.007463    0.956494    0.000128   -0.000038    0.004862    0.000000   -0.000000   -0.000000    0.000000   -0.000382
             0.000002   -0.000007   -0.054094    0.000329   -0.000000
 4          -0.401115   -0.007545    0.015584   -0.005476    0.868180   -0.000000    0.000000    0.000000    0.000000   -0.053480
             0.000310   -0.000881    0.000427    0.008079   -0.000000
 5           0.868276    0.004735   -0.004102   -0.000851    0.401269   -0.000000   -0.000000   -0.000000   -0.000000   -0.008085
             0.000048    0.000232   -0.000268   -0.053488    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957486   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.055136
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961883    0.000475   -0.000000    0.000000
            -0.000001   -0.000000    0.000000   -0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000782    0.961883    0.000000
             0.000000    0.000004    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000475    0.961883   -0.000782   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000001   -0.000038   -0.000005    0.056520    0.000001   -0.000000    0.000001    0.000000   -0.000000    0.000020
             0.959887   -0.000085   -0.000643   -0.000020   -0.000000
 11          0.000002    0.000032    0.056520    0.000005   -0.000001    0.000000    0.000000   -0.000000   -0.000004   -0.000032
             0.000085    0.959887    0.000542    0.000020    0.000000
 12         -0.000001    0.056520   -0.000032    0.000038    0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.000004
             0.000643   -0.000542    0.959887   -0.000012   -0.000000
 13         -0.011374   -0.000000    0.000002   -0.000001    0.055364   -0.000000   -0.000000    0.000000   -0.000000    0.956797
            -0.000018    0.000031   -0.000003    0.076958   -0.000006
 14          0.055364    0.000001   -0.000001    0.000001    0.011374    0.000000    0.000000   -0.000000    0.000000   -0.076958
             0.000021   -0.000023    0.000013    0.956797    0.000005
 15         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.057354   -0.000000   -0.000000    0.000000    0.000006
             0.000000   -0.000000    0.000000   -0.000005    0.959487

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958063    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.001113
             0.000024    0.000001    0.000006   -0.000000   -0.000000
 2           0.000000    0.958063    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000024
             0.001113   -0.000001   -0.000017    0.000009   -0.000000
 3           0.000000    0.000000    0.958063   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000001
             0.000001    0.001113    0.000007   -0.000007    0.000000
 4           0.000000    0.000000   -0.000000    0.958063   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000006
             0.000018   -0.000009    0.001083   -0.000254    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.958063    0.000000   -0.000000   -0.000000   -0.000000   -0.000001
            -0.000005    0.000005    0.000254    0.001084   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.959071    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.001048
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.961883    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.961883   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961883    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 10          0.001113   -0.000024   -0.000001   -0.000006   -0.000001    0.000000   -0.000000   -0.000000    0.000000    0.961549
             0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000024    0.001113    0.000001    0.000018   -0.000005    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.961549   -0.000000    0.000000   -0.000000   -0.000000
 12          0.000001   -0.000001    0.001113   -0.000009    0.000005    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.961549   -0.000000    0.000000   -0.000000
 13          0.000006   -0.000017    0.000007    0.001083    0.000254    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.961549   -0.000000    0.000000
 14         -0.000000    0.000009   -0.000007   -0.000254    0.001084    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.961549   -0.000000
 15         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.001048   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.961199


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95629529 (fixed)   0.95815229 (relaxed)   0.95806296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00097506   -0.00176439   -0.57118009
 Singles      0.02071410   -0.06024278   -0.06825391
 Pairs        0.06777238   -0.00000000   -0.04242267
 Total        1.08946154   -0.06200717   -0.68185667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30389540
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04450950
 One electron energy                 -375.92724004
 Two electron energy                  161.94100789
 Virial quotient                       -2.57676556
 Correlation energy                    -0.68233675
 !MRCI STATE 1.1 Energy              -213.986232153875

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04727505 (Davidson, fixed reference)
 Cluster corrected energies          -214.04713644 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04727505 (Davidson, rotated reference)

 Cluster corrected energies          -214.04606235 (Pople, fixed reference)
 Cluster corrected energies          -214.04591601 (Pople, relaxed reference)
 Cluster corrected energies          -214.04606235 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95617375 (fixed)   0.95815230 (relaxed)   0.95806297 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00097505   -0.00176439   -0.57118004
 Singles      0.02071417   -0.06024284   -0.06825393
 Pairs        0.06777229    0.00000000   -0.04242270
 Total        1.08946152   -0.06200723   -0.68185667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30389540
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04451156
 One electron energy                 -375.92724224
 Two electron energy                  161.94101008
 Virial quotient                       -2.57676550
 Correlation energy                    -0.68233675
 !MRCI STATE 2.1 Energy              -213.986232153501

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04727503 (Davidson, fixed reference)
 Cluster corrected energies          -214.04713642 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04727503 (Davidson, rotated reference)

 Cluster corrected energies          -214.04606233 (Pople, fixed reference)
 Cluster corrected energies          -214.04591599 (Pople, relaxed reference)
 Cluster corrected energies          -214.04606233 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95649366 (fixed)   0.95815232 (relaxed)   0.95806298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00097506   -0.00176439   -0.57118017
 Singles      0.02071403   -0.06024272   -0.06825386
 Pairs        0.06777239   -0.00000000   -0.04242264
 Total        1.08946148   -0.06200711   -0.68185667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30389540
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04451092
 One electron energy                 -375.92724005
 Two electron energy                  161.94100790
 Virial quotient                       -2.57676552
 Correlation energy                    -0.68233675
 !MRCI STATE 3.1 Energy              -213.986232153022

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04727501 (Davidson, fixed reference)
 Cluster corrected energies          -214.04713639 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04727501 (Davidson, rotated reference)

 Cluster corrected energies          -214.04606231 (Pople, fixed reference)
 Cluster corrected energies          -214.04591596 (Pople, relaxed reference)
 Cluster corrected energies          -214.04606231 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86818005 (fixed)   0.95815231 (relaxed)   0.95806298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00097505   -0.00176439   -0.57118016
 Singles      0.02071397   -0.06024266   -0.06825385
 Pairs        0.06777248   -0.00000006   -0.04242265
 Total        1.08946149   -0.06200711   -0.68185667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30389540
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04452396
 One electron energy                 -375.92726037
 Two electron energy                  161.94102822
 Virial quotient                       -2.57676511
 Correlation energy                    -0.68233675
 !MRCI STATE 4.1 Energy              -213.986232152348

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04727501 (Davidson, fixed reference)
 Cluster corrected energies          -214.04713641 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04727501 (Davidson, rotated reference)

 Cluster corrected energies          -214.04606231 (Pople, fixed reference)
 Cluster corrected energies          -214.04591598 (Pople, relaxed reference)
 Cluster corrected energies          -214.04606231 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86827592 (fixed)   0.95815232 (relaxed)   0.95806299 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00097505   -0.00176439   -0.57118019
 Singles      0.02071397   -0.06024269   -0.06825384
 Pairs        0.06777245   -0.00000001   -0.04242264
 Total        1.08946147   -0.06200709   -0.68185667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30389540
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04452662
 One electron energy                 -375.92726264
 Two electron energy                  161.94103049
 Virial quotient                       -2.57676503
 Correlation energy                    -0.68233675
 !MRCI STATE 5.1 Energy              -213.986232150879

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04727500 (Davidson, fixed reference)
 Cluster corrected energies          -214.04713639 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04727500 (Davidson, rotated reference)

 Cluster corrected energies          -214.04606230 (Pople, fixed reference)
 Cluster corrected energies          -214.04591596 (Pople, relaxed reference)
 Cluster corrected energies          -214.04606230 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95748572 (fixed)   0.95931162 (relaxed)   0.95907131 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00118227   -0.00153963   -0.62766801
 Singles      0.01144646   -0.04223870   -0.04595138
 Pairs        0.07454314    0.04912494   -0.00107969
 Total        1.08717186    0.00534661   -0.67469909
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27395118
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02942432
 One electron energy                 -375.64415837
 Two electron energy                  161.69508057
 Virial quotient                       -2.57678624
 Correlation energy                    -0.67512661
 !MRCI STATE 6.1 Energy              -213.949077797556

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00792984 (Davidson, fixed reference)
 Cluster corrected energies          -214.00756215 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00792984 (Davidson, rotated reference)

 Cluster corrected energies          -214.00664671 (Pople, fixed reference)
 Cluster corrected energies          -214.00626016 (Pople, relaxed reference)
 Cluster corrected energies          -214.00664671 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96188299 (fixed)   0.96203223 (relaxed)   0.96188311 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128041   -0.00219507   -0.55790378
 Singles      0.01749182   -0.05654537   -0.06297233
 Pairs        0.06205282   -0.00000000   -0.03782223
 Total        1.08082505   -0.05874044   -0.65869835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77933202
 One electron energy                 -371.42590329
 Two electron energy                  157.59318519
 Virial quotient                       -2.58316554
 Correlation energy                    -0.65869835
 !MRCI STATE 7.1 Energy              -213.832718095169

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88595742 (Davidson, fixed reference)
 Cluster corrected energies          -213.88573673 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88595742 (Davidson, rotated reference)

 Cluster corrected energies          -213.88451272 (Pople, fixed reference)
 Cluster corrected energies          -213.88428316 (Pople, relaxed reference)
 Cluster corrected energies          -213.88451272 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96188280 (fixed)   0.96203224 (relaxed)   0.96188312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128041   -0.00219506   -0.55790379
 Singles      0.01749181   -0.05654536   -0.06297232
 Pairs        0.06205280    0.00000000   -0.03782222
 Total        1.08082502   -0.05874043   -0.65869834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77933451
 One electron energy                 -371.42590494
 Two electron energy                  157.59318687
 Virial quotient                       -2.58316546
 Correlation energy                    -0.65869834
 !MRCI STATE 8.1 Energy              -213.832718078636

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88595739 (Davidson, fixed reference)
 Cluster corrected energies          -213.88573669 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88595739 (Davidson, rotated reference)

 Cluster corrected energies          -213.88451268 (Pople, fixed reference)
 Cluster corrected energies          -213.88428312 (Pople, relaxed reference)
 Cluster corrected energies          -213.88451268 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96188268 (fixed)   0.96203224 (relaxed)   0.96188312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128041   -0.00219506   -0.55790371
 Singles      0.01749187   -0.05654544   -0.06297237
 Pairs        0.06205275   -0.00000000   -0.03782225
 Total        1.08082503   -0.05874050   -0.65869833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.77933447
 One electron energy                 -371.42590427
 Two electron energy                  157.59318619
 Virial quotient                       -2.58316547
 Correlation energy                    -0.65869833
 !MRCI STATE 9.1 Energy              -213.832718074335

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88595739 (Davidson, fixed reference)
 Cluster corrected energies          -213.88573669 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88595739 (Davidson, rotated reference)

 Cluster corrected energies          -213.88451268 (Pople, fixed reference)
 Cluster corrected energies          -213.88428312 (Pople, relaxed reference)
 Cluster corrected energies          -213.88451268 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95988688 (fixed)   0.96170178 (relaxed)   0.96154900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128651   -0.00219513   -0.56009371
 Singles      0.01738784   -0.05666221   -0.06301705
 Pairs        0.06290195    0.00000000   -0.03848438
 Total        1.08157630   -0.05885734   -0.66159514
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16027571
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81343620
 One electron energy                 -371.65189260
 Two electron energy                  157.83050184
 Virial quotient                       -2.58196496
 Correlation energy                    -0.66111506
 !MRCI STATE 10.1 Energy             -213.821390767684

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87532209 (Davidson, fixed reference)
 Cluster corrected energies          -213.87509492 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87532209 (Davidson, rotated reference)

 Cluster corrected energies          -213.87389251 (Pople, fixed reference)
 Cluster corrected energies          -213.87365591 (Pople, relaxed reference)
 Cluster corrected energies          -213.87389251 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95988698 (fixed)   0.96170183 (relaxed)   0.96154904 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128653   -0.00219513   -0.56009375
 Singles      0.01738776   -0.05666219   -0.06301697
 Pairs        0.06290191   -0.00000000   -0.03848438
 Total        1.08157620   -0.05885732   -0.66159510
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16027571
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81343938
 One electron energy                 -371.65189638
 Two electron energy                  157.83050565
 Virial quotient                       -2.58196486
 Correlation energy                    -0.66111501
 !MRCI STATE 11.1 Energy             -213.821390722970

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87532198 (Davidson, fixed reference)
 Cluster corrected energies          -213.87509479 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87532198 (Davidson, rotated reference)

 Cluster corrected energies          -213.87389239 (Pople, fixed reference)
 Cluster corrected energies          -213.87365578 (Pople, relaxed reference)
 Cluster corrected energies          -213.87389239 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95988676 (fixed)   0.96170183 (relaxed)   0.96154903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128654   -0.00219513   -0.56009365
 Singles      0.01738783   -0.05666226   -0.06301695
 Pairs        0.06290185    0.00000000   -0.03848446
 Total        1.08157622   -0.05885739   -0.66159506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16027571
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81344056
 One electron energy                 -371.65189994
 Two electron energy                  157.83050926
 Virial quotient                       -2.58196483
 Correlation energy                    -0.66111497
 !MRCI STATE 12.1 Energy             -213.821390680339

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87532194 (Davidson, fixed reference)
 Cluster corrected energies          -213.87509474 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87532194 (Davidson, rotated reference)

 Cluster corrected energies          -213.87389236 (Pople, fixed reference)
 Cluster corrected energies          -213.87365573 (Pople, relaxed reference)
 Cluster corrected energies          -213.87389236 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95679718 (fixed)   0.96170191 (relaxed)   0.96154911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128654   -0.00219512   -0.56009708
 Singles      0.01738750   -0.05666190   -0.06301643
 Pairs        0.06290200    0.00000358   -0.03848122
 Total        1.08157605   -0.05885344   -0.66159473
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16027571
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81339260
 One electron energy                 -371.65186967
 Two electron energy                  157.83047932
 Virial quotient                       -2.58196632
 Correlation energy                    -0.66111464
 !MRCI STATE 13.1 Energy             -213.821390356235

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87532147 (Davidson, fixed reference)
 Cluster corrected energies          -213.87509428 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87532147 (Davidson, rotated reference)

 Cluster corrected energies          -213.87389189 (Pople, fixed reference)
 Cluster corrected energies          -213.87365527 (Pople, relaxed reference)
 Cluster corrected energies          -213.87389189 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95679719 (fixed)   0.96170195 (relaxed)   0.96154913 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128658   -0.00219512   -0.56009074
 Singles      0.01738750   -0.05666193   -0.06301634
 Pairs        0.06290191   -0.00000321   -0.03848756
 Total        1.08157600   -0.05886026   -0.66159464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16027571
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81340001
 One electron energy                 -371.65188039
 Two electron energy                  157.83049013
 Virial quotient                       -2.58196609
 Correlation energy                    -0.66111455
 !MRCI STATE 14.1 Energy             -213.821390259514

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87532134 (Davidson, fixed reference)
 Cluster corrected energies          -213.87509411 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87532134 (Davidson, rotated reference)

 Cluster corrected energies          -213.87389175 (Pople, fixed reference)
 Cluster corrected energies          -213.87365510 (Pople, relaxed reference)
 Cluster corrected energies          -213.87389175 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95948662 (fixed)   0.96136422 (relaxed)   0.96119869 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128677   -0.00213157   -0.00341705
 Singles      0.01678912   -0.05455289   -0.06068164
 Pairs        0.06428890   -0.60519922   -0.59849930
 Total        1.08236480   -0.66188368   -0.66259799
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15022176
 Nuclear energy                         0.00000000
 Kinetic energy                        82.83495312
 One electron energy                 -371.80789189
 Two electron energy                  157.99549966
 Virial quotient                       -2.58118565
 Correlation energy                    -0.66217047
 !MRCI STATE 15.1 Energy             -213.812392230000

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86693177 (Davidson, fixed reference)
 Cluster corrected energies          -213.86668498 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86693177 (Davidson, rotated reference)

 Cluster corrected energies          -213.86552209 (Pople, fixed reference)
 Cluster corrected energies          -213.86526473 (Pople, relaxed reference)
 Cluster corrected energies          -213.86552209 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1931.38       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6796.63   3397.75   3395.56      2.12      0.12      0.81
 REAL TIME  *      7034.95 SEC
 DISK USED  *         1.92 GB (local),       30.87 GB (total)
 SF USED    *        10.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04727505  AU                              
 SETTING HLSDIAG(14)    =      -214.04727503  AU                              
 SETTING HLSDIAG(15)    =      -214.04727501  AU                              
 SETTING HLSDIAG(16)    =      -214.04727501  AU                              
 SETTING HLSDIAG(17)    =      -214.04727500  AU                              
 SETTING HLSDIAG(18)    =      -214.00792984  AU                              
 SETTING HLSDIAG(19)    =      -213.88595742  AU                              
 SETTING HLSDIAG(20)    =      -213.88595739  AU                              
 SETTING HLSDIAG(21)    =      -213.88595739  AU                              
 SETTING HLSDIAG(22)    =      -213.87532209  AU                              
 SETTING HLSDIAG(23)    =      -213.87532198  AU                              
 SETTING HLSDIAG(24)    =      -213.87532194  AU                              
 SETTING HLSDIAG(25)    =      -213.87532147  AU                              
 SETTING HLSDIAG(26)    =      -213.87532134  AU                              
 SETTING HLSDIAG(27)    =      -213.86693177  AU                              


         HLSDIAG
    -214.0736103
    -214.0736103
    -214.0736103
    -213.8826452
    -213.8826452
    -213.8826450
    -213.8826449
    -213.8826449
    -213.8803606
    -213.8803606
    -213.8803605
    -213.8778417
    -214.0472751
    -214.0472750
    -214.0472750
    -214.0472750
    -214.0472750
    -214.0079298
    -213.8859574
    -213.8859574
    -213.8859574
    -213.8753221
    -213.8753220
    -213.8753219
    -213.8753215
    -213.8753213
    -213.8669318
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.016232   -214.016232   -214.016232   -213.829395   -213.829395   -213.829395   -213.829395   -213.829395
                      -213.827126   -213.827126   -213.827126   -213.824493
 Replaced energies:   -214.073610   -214.073610   -214.073610   -213.882645   -213.882645   -213.882645   -213.882645   -213.882645
                      -213.880361   -213.880361   -213.880360   -213.877842

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -213.986232   -213.986232   -213.986232   -213.986232   -213.986232   -213.949078   -213.832718   -213.832718
                      -213.832718   -213.821391   -213.821391   -213.821391   -213.821390   -213.821390   -213.812392
 Replaced energies:   -214.047275   -214.047275   -214.047275   -214.047275   -214.047275   -214.007930   -213.885957   -213.885957
                      -213.885957   -213.875322   -213.875322   -213.875322   -213.875321   -213.875321   -213.866932



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07361032

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -7.52    1135.25      -1.15      -0.02      -0.01      -0.01     248.30      -0.99      -0.02

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.52       0.00      -0.03       1.66    -164.46       0.02    -234.85      -0.01       1.42      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1135.25       0.03       0.00    -248.29      -1.11       0.00      -1.56      -1.15    -214.82       0.08

    4   4.1  1.0  1.0       0.00       0.00       0.00   41912.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.15      -1.66     248.29       0.00      -0.05      -0.12       0.00     670.55      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   41912.01       0.00       0.00       0.00       0.00       0.00
                            0.02     164.46       1.11       0.05       0.00    1098.54       0.08       0.09       0.10     389.64

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   41912.03       0.00       0.00       0.00       0.00
                            0.01      -0.02      -0.00       0.12   -1098.54      -0.00     769.27      -0.08      -0.01      -0.04

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   41912.06       0.00       0.00       0.00
                            0.01     234.85       1.56      -0.00      -0.08    -769.27      -0.00      -0.02       0.21     556.37

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41912.08       0.00       0.00
                         -248.30       0.01       1.15    -670.55      -0.09       0.08       0.02       0.00     588.24      -0.20

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42413.41       0.00
                            0.99      -1.42     214.82       0.00      -0.10       0.01      -0.21    -588.24       0.00      -0.05

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42413.42
                            0.02       0.00      -0.08      -0.00    -389.64       0.04    -556.37       0.20       0.05       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          214.83       0.00      -0.99    -588.23      -0.03       0.00       0.04      -0.00     695.06      -0.26

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     401.77       2.66      -0.00      -0.00      -0.03       0.00      -0.00       0.36     964.96

   13   1.1  1.0  0.0       0.00    -802.73      -5.32      -0.01       0.88    -175.58      -0.06      -0.00       0.06     151.91
                            0.00       3.71       0.00       0.01     -85.68      -0.77     183.75      -0.00      -0.00      -0.70

   14   2.1  1.0  0.0     802.73       0.00      -3.71    -175.57      -1.36       0.00       0.12      -0.00     151.91      -0.06
                           -3.71      -0.00    -802.75       0.00      -0.01       1.16       0.00     175.57       0.00       1.02

   15   3.1  1.0  0.0       5.32       3.71       0.00      -1.18     201.96       0.75     -17.67       0.02       1.01      -0.70
                           -0.00     802.75      -0.00      -0.00       0.35    -175.57      -0.83       1.16      -0.06    -151.91

   16   4.1  1.0  0.0       0.01     175.57       1.18      -0.00       0.13     474.15      -0.05       0.02       0.16     415.95
                           -0.01      -0.00       0.00      -0.00     859.47      -0.19     400.74       0.06       0.02      -0.00

   17   5.1  1.0  0.0      -0.88       1.36    -201.96      -0.13      -0.00       0.05      -0.07     -82.68      -0.11       0.01
                           85.68       0.01      -0.35    -859.47      -0.00      -0.04       0.04      -0.13    -202.98       0.11

   18   6.1  1.0  0.0     175.58      -0.00      -0.75    -474.15      -0.05       0.00      -0.02      -0.09    -415.94       0.16
                            0.77      -1.16     175.57       0.19       0.04      -0.00      -0.00    -474.16       0.11       0.04

   19   7.1  1.0  0.0       0.06      -0.12      17.67       0.05       0.07       0.02      -0.00    -944.69       0.05       0.00
                         -183.75      -0.00       0.83    -400.74      -0.04       0.00      -0.00       0.05     435.30      -0.17

   20   8.1  1.0  0.0       0.00       0.00      -0.02      -0.02      82.68       0.09     944.69       0.00      -0.01       0.00
                            0.00    -175.57      -1.16      -0.06       0.13     474.16      -0.05       0.00      -0.17    -415.94

   21   9.1  1.0  0.0      -0.06    -151.91      -1.01      -0.16       0.11     415.94      -0.05       0.01      -0.00     491.49
                            0.00      -0.00       0.06      -0.02     202.98      -0.11    -435.30       0.17       0.00      -0.00

   22  10.1  1.0  0.0    -151.91       0.06       0.70    -415.95      -0.01      -0.16      -0.00      -0.00    -491.49       0.00
                            0.70      -1.02     151.91       0.00      -0.11      -0.04       0.17     415.94       0.00       0.00

   23  11.1  1.0  0.0       0.01      -0.00      -0.00      -0.02     478.45      -0.13     -41.88       0.04       0.04       0.00
                           -0.00    -151.91      -1.02      -0.00      -0.11    -415.95       0.05      -0.04       0.19     491.48

   24  12.1  1.0  0.0       1.31      -1.88     284.09       0.00      -0.00       0.00       0.00       0.00      -0.00       0.05
                          284.10       0.00      -1.31       0.01       0.00      -0.00       0.00      -0.00    -682.33       0.26

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

   37   1.1  0.0  0.0      -0.01     -17.22      -1.56       0.00     -33.58      -4.22    -383.65      -2.01       0.00       2.83
                           -3.40     793.25       5.27      -1.53      -7.63    -192.56      -3.51      -0.01      -0.61    -130.44

   38   2.1  0.0  0.0       0.01    -793.22       5.09       0.00       0.67    -192.54       8.32       4.87       0.05     130.41
                            4.86     -17.16      -0.15       6.24    -348.99       4.24    -162.73      -0.02       0.80       2.82

   39   3.1  0.0  0.0    -793.46      -0.06      -3.67     192.60       0.02      -0.03       0.02      -1.83    -130.46       0.07
                           -3.77       5.23    -793.41      -3.59      -0.06       0.00      -0.02     192.60      -0.02       0.01

   40   4.1  0.0  0.0       4.33     -10.15    -418.71      -1.52       0.22      -3.13       2.20    -342.58       1.03       2.13
                         -496.33      -4.58       8.52    -323.71      -5.72       1.10      -2.65      -1.52     -81.61       0.78

   41   5.1  0.0  0.0      -0.17      -2.00     814.93       0.95       0.04       0.83       0.34    -176.06      -0.65      -0.57
                         -770.13      -0.68      -0.38     208.68       1.52       0.17       0.70       0.95    -126.62       0.16

   42   6.1  0.0  0.0      -6.01       8.63   -1302.22      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.01
                        -1302.25      -0.00       6.01      -0.00       0.00      -0.00       0.00      -0.00    -167.05       0.06

   43   7.1  0.0  0.0      -0.09       0.00       0.00       0.29    -544.62       0.15      47.66      -0.04       0.20      -0.00
                           -0.00    -177.19      -1.09       0.00       0.13     473.48      -0.05      -0.22      -0.16    -414.56

   44   8.1  0.0  0.0      -0.15    -177.19      -1.17       0.38      -0.13    -473.47       0.05      -0.01       0.18    -414.58
                            0.00      -0.00       0.14       0.02    -231.05       0.12     495.50      -0.40       0.00       0.00

   45   9.1  0.0  0.0    -177.19       0.14       0.82     473.47       0.32       0.38      -0.02       0.00     414.57       0.18
                            0.82      -1.09     177.19      -0.00       0.22      -0.22      -0.40    -473.47      -0.00       0.24

   46  10.1  0.0  0.0      -0.12      -0.02       0.01      -0.27     -71.59      -0.04    -818.00      -0.01      -0.33       0.04
                           -0.01    -177.97      -1.30      -0.02      -0.05    -410.57       0.08      -0.28       0.19     496.73

   47  11.1  0.0  0.0       0.11     177.97       1.17       0.23      -0.12    -410.56      -0.03       0.01       0.09    -496.74
                           -0.00      -0.02       0.10       0.10    -744.21       0.13    -347.01       0.18      -0.00       0.04

   48  12.1  0.0  0.0     177.97      -0.10      -0.82     410.57      -0.01       0.23      -0.55      -0.00     496.74       0.09
                            0.82      -1.30     177.97      -0.01       0.39      -0.28       0.20     410.57      -0.00       0.30

   49  13.1  0.0  0.0       0.23      -0.32      49.72      -0.00       0.06       0.01       0.01    -796.73      -0.00      -0.03
                          147.82       0.00      -0.68    -570.43      -0.08       0.01      -0.01      -0.00     412.58      -0.17

   50  14.1  0.0  0.0      -0.92       1.32    -199.39       0.01       0.01       0.01      -0.02    -198.69       0.01       0.05
                          142.77      -0.00      -0.66     590.65       0.08      -0.01       0.01       0.01     398.47      -0.14

   51  15.1  0.0  0.0       1.71      -2.46     370.88      -0.00       0.00       0.00      -0.00      -0.01       0.00      -0.06
                          370.89       0.00      -1.71      -0.01       0.00       0.00      -0.00       0.00     825.54      -0.31


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00     802.73       5.32       0.01      -0.88     175.58       0.06       0.00
                         -214.83      -0.01      -0.00       3.71       0.00       0.01     -85.68      -0.77     183.75      -0.00

    2   2.1  1.0  1.0       0.00       0.00    -802.73       0.00       3.71     175.57       1.36      -0.00      -0.12       0.00
                           -0.00    -401.77      -3.71       0.00    -802.75       0.00      -0.01       1.16       0.00     175.57

    3   3.1  1.0  1.0       0.00       0.00      -5.32      -3.71       0.00       1.18    -201.96      -0.75      17.67      -0.02
                            0.99      -2.66      -0.00     802.75       0.00      -0.00       0.35    -175.57      -0.83       1.16

    4   4.1  1.0  1.0       0.00       0.00      -0.01    -175.57      -1.18      -0.00      -0.13    -474.15       0.05      -0.02
                          588.23       0.00      -0.01      -0.00       0.00       0.00     859.47      -0.19     400.74       0.06

    5   5.1  1.0  1.0       0.00       0.00       0.88      -1.36     201.96       0.13      -0.00      -0.05       0.07      82.68
                            0.03       0.00      85.68       0.01      -0.35    -859.47       0.00      -0.04       0.04      -0.13

    6   6.1  1.0  1.0       0.00       0.00    -175.58       0.00       0.75     474.15       0.05       0.00       0.02       0.09
                           -0.00       0.03       0.77      -1.16     175.57       0.19       0.04       0.00      -0.00    -474.16

    7   7.1  1.0  1.0       0.00       0.00      -0.06       0.12     -17.67      -0.05      -0.07      -0.02      -0.00     944.69
                           -0.04      -0.00    -183.75      -0.00       0.83    -400.74      -0.04       0.00       0.00       0.05

    8   8.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.02       0.02     -82.68      -0.09    -944.69       0.00
                            0.00       0.00       0.00    -175.57      -1.16      -0.06       0.13     474.16      -0.05      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.06     151.91       1.01       0.16      -0.11    -415.94       0.05      -0.01
                         -695.06      -0.36       0.00      -0.00       0.06      -0.02     202.98      -0.11    -435.30       0.17

   10  10.1  1.0  1.0       0.00       0.00     151.91      -0.06      -0.70     415.95       0.01       0.16       0.00       0.00
                            0.26    -964.96       0.70      -1.02     151.91       0.00      -0.11      -0.04       0.17     415.94

   11  11.1  1.0  1.0   42413.44       0.00      -0.01       0.00       0.00       0.02    -478.45       0.13      41.88      -0.04
                           -0.00       0.07      -0.00    -151.91      -1.02      -0.00      -0.11    -415.95       0.05      -0.04

   12  12.1  1.0  1.0       0.00   42966.25      -1.31       1.88    -284.09      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.07      -0.00     284.10       0.00      -1.31       0.01       0.00      -0.00       0.00      -0.00

   13   1.1  1.0  0.0      -0.01      -1.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -284.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0       0.00       1.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          151.91      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       0.00    -284.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.02       1.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0       0.02      -0.00       0.00       0.00       0.00   41912.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0    -478.45       0.00       0.00       0.00       0.00       0.00   41912.01       0.00       0.00       0.00
                            0.11      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.13      -0.00       0.00       0.00       0.00       0.00       0.00   41912.03       0.00       0.00
                          415.95       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0      41.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   41912.06       0.00
                           -0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41912.08
                            0.04       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19     682.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -491.48      -0.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00    -682.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0     682.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00    -802.73      -5.32      -0.01       0.88    -175.58      -0.06      -0.00
                           -0.00      -0.00       0.00       3.71       0.00       0.01     -85.68      -0.77     183.75      -0.00

   26   2.1  1.0 -1.0       0.00       0.00     802.73       0.00      -3.71    -175.57      -1.36       0.00       0.12      -0.00
                           -0.00      -0.00      -3.71      -0.00    -802.75       0.00      -0.01       1.16       0.00     175.57

   27   3.1  1.0 -1.0       0.00       0.00       5.32       3.71       0.00      -1.18     201.96       0.75     -17.67       0.02
                           -0.00      -0.00      -0.00     802.75      -0.00      -0.00       0.35    -175.57      -0.83       1.16

   28   4.1  1.0 -1.0       0.00       0.00       0.01     175.57       1.18      -0.00       0.13     474.15      -0.05       0.02
                           -0.00      -0.00      -0.01      -0.00       0.00      -0.00     859.47      -0.19     400.74       0.06

   29   5.1  1.0 -1.0       0.00       0.00      -0.88       1.36    -201.96      -0.13      -0.00       0.05      -0.07     -82.68
                           -0.00      -0.00      85.68       0.01      -0.35    -859.47      -0.00      -0.04       0.04      -0.13

   30   6.1  1.0 -1.0       0.00       0.00     175.58      -0.00      -0.75    -474.15      -0.05       0.00      -0.02      -0.09
                           -0.00      -0.00       0.77      -1.16     175.57       0.19       0.04      -0.00      -0.00    -474.16

   31   7.1  1.0 -1.0       0.00       0.00       0.06      -0.12      17.67       0.05       0.07       0.02      -0.00    -944.69
                           -0.00      -0.00    -183.75      -0.00       0.83    -400.74      -0.04       0.00      -0.00       0.05

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.02      -0.02      82.68       0.09     944.69       0.00
                           -0.00      -0.00       0.00    -175.57      -1.16      -0.06       0.13     474.16      -0.05       0.00

   33   9.1  1.0 -1.0       0.00       0.00      -0.06    -151.91      -1.01      -0.16       0.11     415.94      -0.05       0.01
                           -0.00      -0.00       0.00      -0.00       0.06      -0.02     202.98      -0.11    -435.30       0.17

   34  10.1  1.0 -1.0       0.00       0.00    -151.91       0.06       0.70    -415.95      -0.01      -0.16      -0.00      -0.00
                           -0.00      -0.00       0.70      -1.02     151.91       0.00      -0.11      -0.04       0.17     415.94

   35  11.1  1.0 -1.0       0.00       0.00       0.01      -0.00      -0.00      -0.02     478.45      -0.13     -41.88       0.04
                           -0.00      -0.00      -0.00    -151.91      -1.02      -0.00      -0.11    -415.95       0.05      -0.04

   36  12.1  1.0 -1.0       0.00       0.00       1.31      -1.88     284.09       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00     284.10       0.00      -1.31       0.01       0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00   -1121.73      -7.05      29.50    -272.32      -0.03       0.68      -0.00       5.92

   38   2.1  0.0  0.0      -1.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      29.45      14.08    1121.70       5.89      -0.03       1.88       0.01     272.28

   39   3.1  0.0  0.0       1.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          130.46       0.00       0.05     -10.52       0.08       0.05    -446.22      -2.33     312.47       0.00

   40   4.1  0.0  0.0      68.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.03       0.00       6.47   -1294.06       9.68       1.56       3.53      26.69      -2.47       4.44

   41   5.1  0.0  0.0    -133.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.65      -0.00       0.98      63.39      -4.40       0.24      -2.06     544.11       1.48      -1.16

   42   6.1  0.0  0.0     167.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.06    1841.63      12.21       0.00       0.00       0.00       0.00      -0.00

   43   7.1  0.0  0.0      -0.00     775.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24       0.00    -250.59      -0.00       1.16    -669.59      -0.28       0.00      -0.31       0.00

   44   8.1  0.0  0.0       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.34    -775.10      -1.16       1.66    -250.59       0.00      -0.31       0.02      -0.52    -669.59

   45   9.1  0.0  0.0       0.00      -0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          414.57       0.63       0.12      -0.00       0.20       0.37    -443.51       0.05    -633.33       0.51

   46  10.1  0.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.30      -0.00     251.69       0.01      -1.14    -580.63       0.58      -0.02      -0.45      -0.05

   47  11.1  0.0  0.0       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.28       0.01      -1.14       1.66    -251.69      -0.05      -0.58       0.00       0.38     580.63

   48  12.1  0.0  0.0      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -496.74      -0.00       0.17       0.00       0.14      -0.30    -951.23       0.32     666.10      -0.40

   49  13.1  0.0  0.0    -138.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     279.38       1.84       0.01       0.09     320.04      -0.04       0.03

   50  14.1  0.0  0.0     556.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00     -80.10      -0.52      -0.01       0.29    1116.28      -0.12       0.01

   51  15.1  0.0  0.0    -825.54      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02    -524.51      -3.48      -0.00      -0.00      -0.02      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.06    -151.91       0.01       1.31       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.70       0.00    -284.10       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -151.91       0.06      -0.00      -1.88       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.02     151.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      -1.01       0.70      -0.00     284.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06    -151.91       1.02       1.31       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.16    -415.95      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.11      -0.01     478.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -202.98       0.11       0.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     415.94      -0.16      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.11       0.04     415.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      -0.05      -0.00     -41.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          435.30      -0.17      -0.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.01      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17    -415.94       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00    -491.49       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.19     682.33       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0     491.49       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -491.48      -0.26       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0      -0.04      -0.00      -0.00     682.34       0.00       0.00       0.00       0.00       0.00       0.00
                            0.19     491.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00      -0.05    -682.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -682.33       0.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     802.73       5.32       0.01      -0.88     175.58
                            0.00       0.00       0.00       0.00      -0.00       3.71       0.00       0.01     -85.68      -0.77

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00    -802.73       0.00       3.71     175.57       1.36      -0.00
                            0.00       0.00       0.00       0.00      -3.71       0.00    -802.75       0.00      -0.01       1.16

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -5.32      -3.71       0.00       1.18    -201.96      -0.75
                            0.00       0.00       0.00       0.00      -0.00     802.75       0.00      -0.00       0.35    -175.57

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.01    -175.57      -1.18      -0.00      -0.13    -474.15
                            0.00       0.00       0.00       0.00      -0.01      -0.00       0.00       0.00     859.47      -0.19

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.88      -1.36     201.96       0.13      -0.00      -0.05
                            0.00       0.00       0.00       0.00      85.68       0.01      -0.35    -859.47       0.00      -0.04

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00    -175.58       0.00       0.75     474.15       0.05       0.00
                            0.00       0.00       0.00       0.00       0.77      -1.16     175.57       0.19       0.04       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.06       0.12     -17.67      -0.05      -0.07      -0.02
                            0.00       0.00       0.00       0.00    -183.75      -0.00       0.83    -400.74      -0.04       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.02       0.02     -82.68      -0.09
                            0.00       0.00       0.00       0.00       0.00    -175.57      -1.16      -0.06       0.13     474.16

   21   9.1  1.0  0.0   42413.41       0.00       0.00       0.00       0.06     151.91       1.01       0.16      -0.11    -415.94
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.06      -0.02     202.98      -0.11

   22  10.1  1.0  0.0       0.00   42413.42       0.00       0.00     151.91      -0.06      -0.70     415.95       0.01       0.16
                           -0.00       0.00       0.00       0.00       0.70      -1.02     151.91       0.00      -0.11      -0.04

   23  11.1  1.0  0.0       0.00       0.00   42413.44       0.00      -0.01       0.00       0.00       0.02    -478.45       0.13
                           -0.00      -0.00       0.00       0.00      -0.00    -151.91      -1.02      -0.00      -0.11    -415.95

   24  12.1  1.0  0.0       0.00       0.00       0.00   42966.25      -1.31       1.88    -284.09      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     284.10       0.00      -1.31       0.01       0.00      -0.00

   25   1.1  1.0 -1.0       0.06     151.91      -0.01      -1.31       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.70       0.00    -284.10      -0.00       7.52   -1135.25       1.15       0.02       0.01

   26   2.1  1.0 -1.0     151.91      -0.06       0.00       1.88       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.02     151.91      -0.00      -7.52      -0.00       0.03      -1.66     164.46      -0.02

   27   3.1  1.0 -1.0       1.01      -0.70       0.00    -284.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06    -151.91       1.02       1.31    1135.25      -0.03      -0.00     248.29       1.11      -0.00

   28   4.1  1.0 -1.0       0.16     415.95       0.02      -0.00       0.00       0.00       0.00   41912.00       0.00       0.00
                            0.02      -0.00       0.00      -0.01      -1.15       1.66    -248.29      -0.00       0.05       0.12

   29   5.1  1.0 -1.0      -0.11       0.01    -478.45       0.00       0.00       0.00       0.00       0.00   41912.01       0.00
                         -202.98       0.11       0.11      -0.00      -0.02    -164.46      -1.11      -0.05      -0.00   -1098.54

   30   6.1  1.0 -1.0    -415.94       0.16       0.13      -0.00       0.00       0.00       0.00       0.00       0.00   41912.03
                            0.11       0.04     415.95       0.00      -0.01       0.02       0.00      -0.12    1098.54       0.00

   31   7.1  1.0 -1.0       0.05       0.00      41.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          435.30      -0.17      -0.05      -0.00      -0.01    -234.85      -1.56       0.00       0.08     769.27

   32   8.1  1.0 -1.0      -0.01       0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17    -415.94       0.04       0.00     248.30      -0.01      -1.15     670.55       0.09      -0.08

   33   9.1  1.0 -1.0      -0.00     491.49      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.19     682.33      -0.99       1.42    -214.82      -0.00       0.10      -0.01

   34  10.1  1.0 -1.0    -491.49       0.00      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -491.48      -0.26      -0.02      -0.00       0.08       0.00     389.64      -0.04

   35  11.1  1.0 -1.0       0.04       0.00      -0.00    -682.34       0.00       0.00       0.00       0.00       0.00       0.00
                            0.19     491.48       0.00       0.00    -214.83      -0.00       0.99     588.23       0.03      -0.00

   36  12.1  1.0 -1.0      -0.00       0.05     682.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -682.33       0.26      -0.00      -0.00      -0.01    -401.77      -2.66       0.00       0.00       0.03

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.01     -17.22      -1.56       0.00     -33.58      -4.22
                         -184.46       1.20      -4.01      -0.00       3.40    -793.25      -5.27       1.53       7.63     192.56

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.01    -793.22       5.09       0.00       0.67    -192.54
                            3.99      -3.55    -184.44       0.00      -4.86      17.16       0.15      -6.24     348.99      -4.24

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00    -793.46      -0.06      -3.67     192.60       0.02      -0.03
                            0.01       1.73      -0.02       0.01       3.77      -5.23     793.41       3.59       0.06      -0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       4.33     -10.15    -418.71      -1.52       0.22      -3.13
                            1.14     212.76      -3.02      -0.00     496.33       4.58      -8.52     323.71       5.72      -1.10

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.17      -2.00     814.93       0.95       0.04       0.83
                            0.16     -10.41       0.79       0.00     770.13       0.68       0.38    -208.68      -1.52      -0.17

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -6.01       8.63   -1302.22      -0.00      -0.00       0.00
                           -0.09    -236.25       0.02       0.00    1302.25       0.00      -6.01       0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.09       0.00       0.00       0.29    -544.62       0.15
                          586.29      -0.22       0.00      -0.54       0.00     177.19       1.09      -0.00      -0.13    -473.48

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.15    -177.19      -1.17       0.38      -0.13    -473.47
                           -0.00      -0.04    -586.28      -0.89      -0.00       0.00      -0.14      -0.02     231.05      -0.12

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00    -177.19       0.14       0.82     473.47       0.32       0.38
                           -0.29       0.00       0.48   -1096.16      -0.82       1.09    -177.19       0.00      -0.22       0.22

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.12      -0.02       0.01      -0.27     -71.59      -0.04
                          702.49      -0.28      -0.06      -0.00       0.01     177.97       1.30       0.02       0.05     410.57

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.11     177.97       1.17       0.23      -0.12    -410.56
                            0.06       0.08     702.49       0.00       0.00       0.02      -0.10      -0.10     744.21      -0.13

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00     177.97      -0.10      -0.82     410.57      -0.01       0.23
                            0.47      -0.01      -0.40       0.02      -0.82       1.30    -177.97       0.01      -0.39       0.28

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.23      -0.32      49.72      -0.00       0.06       0.01
                           -0.31    -779.76       0.08       0.00    -147.82      -0.00       0.68     570.43       0.08      -0.01

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.92       1.32    -199.39       0.01       0.01       0.01
                            0.10     223.57      -0.03       0.00    -142.77       0.00       0.66    -590.65      -0.08       0.01

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       1.71      -2.46     370.88      -0.00       0.00       0.00
                            0.44    1167.48      -0.09      -0.00    -370.89      -0.00       1.71       0.01      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.01    -793.46       4.33
                            0.00       0.00       0.00       0.00       0.00       0.00       3.40      -4.86       3.77     496.33

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -17.22    -793.22      -0.06     -10.15
                            0.00       0.00       0.00       0.00       0.00       0.00    -793.25      17.16      -5.23       4.58

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.56       5.09      -3.67    -418.71
                            0.00       0.00       0.00       0.00       0.00       0.00      -5.27       0.15     793.41      -8.52

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     192.60      -1.52
                            0.00       0.00       0.00       0.00       0.00       0.00       1.53      -6.24       3.59     323.71

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -33.58       0.67       0.02       0.22
                            0.00       0.00       0.00       0.00       0.00       0.00       7.63     348.99       0.06       5.72

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.22    -192.54      -0.03      -3.13
                            0.00       0.00       0.00       0.00       0.00       0.00     192.56      -4.24      -0.00      -1.10

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -383.65       8.32       0.02       2.20
                            0.00       0.00       0.00       0.00       0.00       0.00       3.51     162.73       0.02       2.65

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.01       4.87      -1.83    -342.58
                            0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.02    -192.60       1.52

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.05    -130.46       1.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.61      -0.80       0.02      81.61

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.83     130.41       0.07       2.13
                            0.00       0.00       0.00       0.00       0.00       0.00     130.44      -2.82      -0.01      -0.78

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.24      -1.71       1.21      68.83
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00    -130.46       1.03

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  0.0       0.06       0.00      -0.06    -151.91       0.01       1.31       0.00       0.00       0.00       0.00
                          183.75      -0.00      -0.00      -0.70       0.00    -284.10    1121.73     -29.45      -0.05      -6.47

   14   2.1  1.0  0.0      -0.12       0.00    -151.91       0.06      -0.00      -1.88       0.00       0.00       0.00       0.00
                            0.00     175.57       0.00       1.02     151.91      -0.00       7.05     -14.08      10.52    1294.06

   15   3.1  1.0  0.0      17.67      -0.02      -1.01       0.70      -0.00     284.09       0.00       0.00       0.00       0.00
                           -0.83       1.16      -0.06    -151.91       1.02       1.31     -29.50   -1121.70      -0.08      -9.68

   16   4.1  1.0  0.0       0.05      -0.02      -0.16    -415.95      -0.02       0.00       0.00       0.00       0.00       0.00
                          400.74       0.06       0.02      -0.00       0.00      -0.01     272.32      -5.89      -0.05      -1.56

   17   5.1  1.0  0.0       0.07      82.68       0.11      -0.01     478.45      -0.00       0.00       0.00       0.00       0.00
                            0.04      -0.13    -202.98       0.11       0.11      -0.00       0.03       0.03     446.22      -3.53

   18   6.1  1.0  0.0       0.02       0.09     415.94      -0.16      -0.13       0.00       0.00       0.00       0.00       0.00
                           -0.00    -474.16       0.11       0.04     415.95       0.00      -0.68      -1.88       2.33     -26.69

   19   7.1  1.0  0.0      -0.00     944.69      -0.05      -0.00     -41.88       0.00       0.00       0.00       0.00       0.00
                            0.00       0.05     435.30      -0.17      -0.05      -0.00       0.00      -0.01    -312.47       2.47

   20   8.1  1.0  0.0    -944.69       0.00       0.01      -0.00       0.04       0.00       0.00       0.00       0.00       0.00
                           -0.05      -0.00      -0.17    -415.94       0.04       0.00      -5.92    -272.28      -0.00      -4.44

   21   9.1  1.0  0.0       0.05      -0.01      -0.00    -491.49       0.04      -0.00       0.00       0.00       0.00       0.00
                         -435.30       0.17      -0.00      -0.00      -0.19     682.33     184.46      -3.99      -0.01      -1.14

   22  10.1  1.0  0.0       0.00       0.00     491.49       0.00       0.00       0.05       0.00       0.00       0.00       0.00
                            0.17     415.94       0.00      -0.00    -491.48      -0.26      -1.20       3.55      -1.73    -212.76

   23  11.1  1.0  0.0      41.88      -0.04      -0.04      -0.00      -0.00     682.34       0.00       0.00       0.00       0.00
                            0.05      -0.04       0.19     491.48      -0.00       0.00       4.01     184.44       0.02       3.02

   24  12.1  1.0  0.0      -0.00      -0.00       0.00      -0.05    -682.34      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -682.33       0.26      -0.00       0.00       0.00      -0.00      -0.01       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.01    -793.46       4.33
                            0.01    -248.30       0.99       0.02     214.83       0.01      -3.40       4.86      -3.77    -496.33

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -17.22    -793.22      -0.06     -10.15
                          234.85       0.01      -1.42       0.00       0.00     401.77     793.25     -17.16       5.23      -4.58

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.56       5.09      -3.67    -418.71
                            1.56       1.15     214.82      -0.08      -0.99       2.66       5.27      -0.15    -793.41       8.52

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     192.60      -1.52
                           -0.00    -670.55       0.00      -0.00    -588.23      -0.00      -1.53       6.24      -3.59    -323.71

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -33.58       0.67       0.02       0.22
                           -0.08      -0.09      -0.10    -389.64      -0.03      -0.00      -7.63    -348.99      -0.06      -5.72

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.22    -192.54      -0.03      -3.13
                         -769.27       0.08       0.01       0.04       0.00      -0.03    -192.56       4.24       0.00       1.10

   31   7.1  1.0 -1.0   41912.06       0.00       0.00       0.00       0.00       0.00    -383.65       8.32       0.02       2.20
                            0.00       0.02      -0.21    -556.37       0.04       0.00      -3.51    -162.73      -0.02      -2.65

   32   8.1  1.0 -1.0       0.00   41912.08       0.00       0.00       0.00       0.00      -2.01       4.87      -1.83    -342.58
                           -0.02      -0.00    -588.24       0.20      -0.00      -0.00      -0.01      -0.02     192.60      -1.52

   33   9.1  1.0 -1.0       0.00       0.00   42413.41       0.00       0.00       0.00       0.00       0.05    -130.46       1.03
                            0.21     588.24      -0.00       0.05     695.06       0.36      -0.61       0.80      -0.02     -81.61

   34  10.1  1.0 -1.0       0.00       0.00       0.00   42413.42       0.00       0.00       2.83     130.41       0.07       2.13
                          556.37      -0.20      -0.05      -0.00      -0.26     964.96    -130.44       2.82       0.01       0.78

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   42413.44       0.00       0.24      -1.71       1.21      68.83
                           -0.04       0.00    -695.06       0.26       0.00      -0.07       0.01       0.00     130.46      -1.03

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   42966.25      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.36    -964.96       0.07       0.00       0.00       0.00       0.00       0.00

   37   1.1  0.0  0.0    -383.65      -2.01       0.00       2.83       0.24      -0.00    5779.92       0.00       0.00       0.00
                            3.51       0.01       0.61     130.44      -0.01      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       8.32       4.87       0.05     130.41      -1.71       0.00       0.00    5779.93       0.00       0.00
                          162.73       0.02      -0.80      -2.82      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.02      -1.83    -130.46       0.07       1.21      -0.00       0.00       0.00    5779.93       0.00
                            0.02    -192.60       0.02      -0.01    -130.46      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       2.20    -342.58       1.03       2.13      68.83       0.00       0.00       0.00       0.00    5779.93
                            2.65       1.52      81.61      -0.78       1.03      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0       0.34    -176.06      -0.65      -0.57    -133.99       0.00       0.00       0.00       0.00       0.00
                           -0.70      -0.95     126.62      -0.16      -0.65       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00       0.00      -0.00       0.01     167.05      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     167.05      -0.06       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0      47.66      -0.04       0.20      -0.00      -0.00     775.12       0.00       0.00       0.00       0.00
                            0.05       0.22       0.16     414.56      -0.24      -0.00      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.05      -0.01       0.18    -414.58       0.03      -0.00       0.00       0.00       0.00       0.00
                         -495.50       0.40      -0.00      -0.00      -0.34     775.10      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      -0.02       0.00     414.57       0.18       0.00      -0.38       0.00       0.00       0.00       0.00
                            0.40     473.47       0.00      -0.24    -414.57      -0.63      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0    -818.00      -0.01      -0.33       0.04      -0.01      -0.00       0.00       0.00       0.00       0.00
                           -0.08       0.28      -0.19    -496.73      -0.30       0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0      -0.03       0.01       0.09    -496.74       0.05       0.00       0.00       0.00       0.00       0.00
                          347.01      -0.18       0.00      -0.04       0.28      -0.01      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0      -0.55      -0.00     496.74       0.09      -0.01       0.00       0.00       0.00       0.00       0.00
                           -0.20    -410.57       0.00      -0.30     496.74       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0       0.01    -796.73      -0.00      -0.03    -138.78      -0.00       0.00       0.00       0.00       0.00
                            0.01       0.00    -412.58       0.17      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.02    -198.69       0.01       0.05     556.54       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.01    -398.47       0.14       0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0      -0.00      -0.01       0.00      -0.06    -825.54      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -825.54       0.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0      -0.17      -6.01      -0.09      -0.15    -177.19      -0.12       0.11     177.97       0.23      -0.92
                          770.13    1302.25       0.00      -0.00      -0.82       0.01       0.00      -0.82    -147.82    -142.77

    2   2.1  1.0  1.0      -2.00       8.63       0.00    -177.19       0.14      -0.02     177.97      -0.10      -0.32       1.32
                            0.68       0.00     177.19       0.00       1.09     177.97       0.02       1.30      -0.00       0.00

    3   3.1  1.0  1.0     814.93   -1302.22       0.00      -1.17       0.82       0.01       1.17      -0.82      49.72    -199.39
                            0.38      -6.01       1.09      -0.14    -177.19       1.30      -0.10    -177.97       0.68       0.66

    4   4.1  1.0  1.0       0.95      -0.00       0.29       0.38     473.47      -0.27       0.23     410.57      -0.00       0.01
                         -208.68       0.00      -0.00      -0.02       0.00       0.02      -0.10       0.01     570.43    -590.65

    5   5.1  1.0  1.0       0.04      -0.00    -544.62      -0.13       0.32     -71.59      -0.12      -0.01       0.06       0.01
                           -1.52      -0.00      -0.13     231.05      -0.22       0.05     744.21      -0.39       0.08      -0.08

    6   6.1  1.0  1.0       0.83       0.00       0.15    -473.47       0.38      -0.04    -410.56       0.23       0.01       0.01
                           -0.17       0.00    -473.48      -0.12       0.22     410.57      -0.13       0.28      -0.01       0.01

    7   7.1  1.0  1.0       0.34       0.00      47.66       0.05      -0.02    -818.00      -0.03      -0.55       0.01      -0.02
                           -0.70      -0.00       0.05    -495.50       0.40      -0.08     347.01      -0.20       0.01      -0.01

    8   8.1  1.0  1.0    -176.06       0.00      -0.04      -0.01       0.00      -0.01       0.01      -0.00    -796.73    -198.69
                           -0.95       0.00       0.22       0.40     473.47       0.28      -0.18    -410.57       0.00      -0.01

    9   9.1  1.0  1.0      -0.65      -0.00       0.20       0.18     414.57      -0.33       0.09     496.74      -0.00       0.01
                          126.62     167.05       0.16      -0.00       0.00      -0.19       0.00       0.00    -412.58    -398.47

   10  10.1  1.0  1.0      -0.57       0.01      -0.00    -414.58       0.18       0.04    -496.74       0.09      -0.03       0.05
                           -0.16      -0.06     414.56      -0.00      -0.24    -496.73      -0.04      -0.30       0.17       0.14

   11  11.1  1.0  1.0    -133.99     167.05      -0.00       0.03       0.00      -0.01       0.05      -0.01    -138.78     556.54
                           -0.65       0.00      -0.24      -0.34    -414.57      -0.30       0.28     496.74      -0.00       0.01

   12  12.1  1.0  1.0       0.00      -0.00     775.12      -0.00      -0.38      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00     775.10      -0.63       0.00      -0.01       0.00      -0.00      -0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.98      -0.06     250.59       1.16      -0.12    -251.69       1.14      -0.17      -0.00      -0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.39   -1841.63       0.00      -1.66       0.00      -0.01      -1.66      -0.00    -279.38      80.10

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.40     -12.21      -1.16     250.59      -0.20       1.14     251.69      -0.14      -1.84       0.52

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      -0.00     669.59      -0.00      -0.37     580.63       0.05       0.30      -0.01       0.01

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.06      -0.00       0.28       0.31     443.51      -0.58       0.58     951.23      -0.09      -0.29

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -544.11      -0.00      -0.00      -0.02      -0.05       0.02      -0.00      -0.32    -320.04   -1116.28

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.48      -0.00       0.31       0.52     633.33       0.45      -0.38    -666.10       0.04       0.12

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.16       0.00      -0.00     669.59      -0.51       0.05    -580.63       0.40      -0.03      -0.01

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16       0.09    -586.29       0.00       0.29    -702.49      -0.06      -0.47       0.31      -0.10

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.41     236.25       0.22       0.04      -0.00       0.28      -0.08       0.01     779.76    -223.57

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.79      -0.02      -0.00     586.28      -0.48       0.06    -702.49       0.40      -0.08       0.03

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.54       0.89    1096.16       0.00      -0.00      -0.02      -0.00      -0.00

   25   1.1  1.0 -1.0      -0.17      -6.01      -0.09      -0.15    -177.19      -0.12       0.11     177.97       0.23      -0.92
                         -770.13   -1302.25      -0.00       0.00       0.82      -0.01      -0.00       0.82     147.82     142.77

   26   2.1  1.0 -1.0      -2.00       8.63       0.00    -177.19       0.14      -0.02     177.97      -0.10      -0.32       1.32
                           -0.68      -0.00    -177.19      -0.00      -1.09    -177.97      -0.02      -1.30       0.00      -0.00

   27   3.1  1.0 -1.0     814.93   -1302.22       0.00      -1.17       0.82       0.01       1.17      -0.82      49.72    -199.39
                           -0.38       6.01      -1.09       0.14     177.19      -1.30       0.10     177.97      -0.68      -0.66

   28   4.1  1.0 -1.0       0.95      -0.00       0.29       0.38     473.47      -0.27       0.23     410.57      -0.00       0.01
                          208.68      -0.00       0.00       0.02      -0.00      -0.02       0.10      -0.01    -570.43     590.65

   29   5.1  1.0 -1.0       0.04      -0.00    -544.62      -0.13       0.32     -71.59      -0.12      -0.01       0.06       0.01
                            1.52       0.00       0.13    -231.05       0.22      -0.05    -744.21       0.39      -0.08       0.08

   30   6.1  1.0 -1.0       0.83       0.00       0.15    -473.47       0.38      -0.04    -410.56       0.23       0.01       0.01
                            0.17      -0.00     473.48       0.12      -0.22    -410.57       0.13      -0.28       0.01      -0.01

   31   7.1  1.0 -1.0       0.34       0.00      47.66       0.05      -0.02    -818.00      -0.03      -0.55       0.01      -0.02
                            0.70       0.00      -0.05     495.50      -0.40       0.08    -347.01       0.20      -0.01       0.01

   32   8.1  1.0 -1.0    -176.06       0.00      -0.04      -0.01       0.00      -0.01       0.01      -0.00    -796.73    -198.69
                            0.95      -0.00      -0.22      -0.40    -473.47      -0.28       0.18     410.57      -0.00       0.01

   33   9.1  1.0 -1.0      -0.65      -0.00       0.20       0.18     414.57      -0.33       0.09     496.74      -0.00       0.01
                         -126.62    -167.05      -0.16       0.00      -0.00       0.19      -0.00      -0.00     412.58     398.47

   34  10.1  1.0 -1.0      -0.57       0.01      -0.00    -414.58       0.18       0.04    -496.74       0.09      -0.03       0.05
                            0.16       0.06    -414.56       0.00       0.24     496.73       0.04       0.30      -0.17      -0.14

   35  11.1  1.0 -1.0    -133.99     167.05      -0.00       0.03       0.00      -0.01       0.05      -0.01    -138.78     556.54
                            0.65      -0.00       0.24       0.34     414.57       0.30      -0.28    -496.74       0.00      -0.01

   36  12.1  1.0 -1.0       0.00      -0.00     775.12      -0.00      -0.38      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00    -775.10       0.63      -0.00       0.01      -0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5779.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14415.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41185.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41185.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41185.06       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   43519.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   43519.26       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43519.27       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43519.37       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43519.40
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0       1.71
                         -370.89

    2   2.1  1.0  1.0      -2.46
                           -0.00

    3   3.1  1.0  1.0     370.88
                            1.71

    4   4.1  1.0  1.0      -0.00
                            0.01

    5   5.1  1.0  1.0       0.00
                           -0.00

    6   6.1  1.0  1.0       0.00
                           -0.00

    7   7.1  1.0  1.0      -0.00
                            0.00

    8   8.1  1.0  1.0      -0.01
                           -0.00

    9   9.1  1.0  1.0       0.00
                         -825.54

   10  10.1  1.0  1.0      -0.06
                            0.31

   11  11.1  1.0  1.0    -825.54
                           -0.00

   12  12.1  1.0  1.0      -0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                            0.02

   14   2.1  1.0  0.0       0.00
                          524.51

   15   3.1  1.0  0.0       0.00
                            3.48

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                            0.00

   18   6.1  1.0  0.0       0.00
                            0.02

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                            0.00

   21   9.1  1.0  0.0       0.00
                           -0.44

   22  10.1  1.0  0.0       0.00
                        -1167.48

   23  11.1  1.0  0.0       0.00
                            0.09

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0       1.71
                          370.89

   26   2.1  1.0 -1.0      -2.46
                            0.00

   27   3.1  1.0 -1.0     370.88
                           -1.71

   28   4.1  1.0 -1.0      -0.00
                           -0.01

   29   5.1  1.0 -1.0       0.00
                            0.00

   30   6.1  1.0 -1.0       0.00
                            0.00

   31   7.1  1.0 -1.0      -0.00
                           -0.00

   32   8.1  1.0 -1.0      -0.01
                            0.00

   33   9.1  1.0 -1.0       0.00
                          825.54

   34  10.1  1.0 -1.0      -0.06
                           -0.31

   35  11.1  1.0 -1.0    -825.54
                            0.00

   36  12.1  1.0 -1.0      -0.00
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

   51  15.1  0.0  0.0   45360.70
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.07361032 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   41912.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   41912.005       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   41912.035       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   41912.061       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   41912.076
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       5.240       0.000       0.012    -121.168      -1.083     259.855      -0.003

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -5.240       0.000   -1135.261       0.000      -0.018       1.640       0.001     248.298

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    1135.261       0.000      -0.000       0.492    -248.291      -1.171       1.640

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.012      -0.000       0.000       0.000    1215.471      -0.265     566.739       0.088

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                              121.168       0.018      -0.492   -1215.471       0.000      -0.050       0.055      -0.182

    6    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                1.083      -1.640     248.291       0.265       0.050       0.000      -0.003    -670.558

    7    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                             -259.855      -0.001       1.171    -566.739      -0.055       0.003       0.000       0.078

    8    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.003    -248.298      -1.640      -0.088       0.182     670.558      -0.078       0.000

    9    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.081      -0.028     287.051      -0.149    -615.606       0.246

   10    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.992      -1.439     214.828       0.000      -0.152      -0.057       0.235     588.222

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.007    -214.826      -1.439      -0.000      -0.160    -588.244       0.068      -0.057

   12    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                              401.771       0.000      -1.855       0.014       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.524    1135.248      -1.146      -0.024      -0.006      -0.006     248.298

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.524       0.000      -0.035       1.662    -164.462       0.018    -234.853      -0.011

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1135.248       0.035       0.000    -248.294      -1.114       0.000      -1.556      -1.146

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.146      -1.662     248.294       0.000      -0.050      -0.123       0.003     670.552

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024     164.462       1.114       0.050       0.000    1098.541       0.082       0.091

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006      -0.018      -0.000       0.123   -1098.541      -0.000     769.266      -0.085

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006     234.853       1.556      -0.003      -0.082    -769.266      -0.000      -0.018

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -248.298       0.011       1.146    -670.552      -0.091       0.085       0.018       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.992      -1.424     214.824       0.000      -0.103       0.014      -0.212    -588.236

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.015       0.001      -0.081      -0.005    -389.638       0.042    -556.371       0.195

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              214.830       0.000      -0.992    -588.229      -0.029       0.000       0.041      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.012     401.768       2.663      -0.000      -0.000      -0.030       0.000      -0.000

    1    1  |0 0>              -0.009     -24.354      -2.209       0.004     -47.485      -5.965    -542.562      -2.848
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.016   -1121.783       7.205       0.004       0.953    -272.288      11.770       6.884
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>           -1122.121      -0.082      -5.197     272.376       0.029      -0.037       0.022      -2.589
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               6.118     -14.359    -592.148      -2.149       0.307      -4.426       3.105    -484.480
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.235      -2.826    1152.490       1.348       0.061       1.174       0.482    -248.987
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -8.501      12.205   -1841.612      -0.000      -0.000       0.000       0.000       0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.124       0.000       0.001       0.406    -770.215       0.217      67.408      -0.058
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.211    -250.587      -1.660       0.544      -0.182    -669.583       0.077      -0.016
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>            -250.590       0.204       1.158     669.589       0.446       0.544      -0.033       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.169      -0.022       0.008      -0.379    -101.244      -0.055   -1156.831      -0.018
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.150     251.693       1.658       0.328      -0.167    -580.617      -0.035       0.016
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>             251.693      -0.142      -1.159     580.629      -0.011       0.328      -0.775      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>               0.324      -0.458      70.318      -0.002       0.086       0.008       0.017   -1126.747
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>              -1.298       1.863    -281.987       0.008       0.019       0.020      -0.027    -280.984
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>               2.421      -3.476     524.508      -0.000       0.000       0.000      -0.000      -0.009
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       5.240       0.000       0.012

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -5.240       0.000   -1135.261       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1135.261       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.012      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     121.168       0.018      -0.492   -1215.471

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       1.083      -1.640     248.291       0.265

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -259.855      -0.001       1.171    -566.739

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.003    -248.298      -1.640      -0.088

    9    1  |1 1>+          42413.406       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.081      -0.028

   10    1  |1 1>+              0.000   42413.418       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.992      -1.439     214.828       0.000

   11    1  |1 1>+              0.000       0.000   42413.436       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.007    -214.826      -1.439      -0.000

   12    1  |1 1>+              0.000       0.000       0.000   42966.247       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     401.771       0.000      -1.855       0.014

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.004       0.000       0.000       0.000
                               -0.000      -0.992       0.007    -401.771       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       1.439     214.826      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.002       0.000
                               -0.081    -214.828       1.439       1.855      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   41912.002
                                0.028      -0.000       0.000      -0.014      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -287.051       0.152       0.160      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.149       0.057     588.244       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              615.606      -0.235      -0.068      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.246    -588.222       0.057       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.262     964.960      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -695.055      -0.364      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.262     695.055       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -964.960       0.364      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1135.237       7.524       0.008
                               -0.992      -0.015    -214.830      -0.012      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000   -1135.237       0.000       5.240     248.296
                                1.424      -0.001      -0.000    -401.768       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -7.524      -5.240       0.000       1.673
                             -214.824       0.081       0.992      -2.663       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.008    -248.296      -1.673       0.000
                               -0.000       0.005     588.229       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       1.251      -1.917     285.609       0.182
                                0.103     389.638       0.029       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000    -248.303       0.000       1.066     670.544
                               -0.014      -0.042      -0.000       0.030       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      -0.087       0.166     -24.996      -0.078
                                0.212     556.371      -0.041      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.006      -0.000       0.021       0.027
                              588.236      -0.195       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.088     214.828       1.423       0.222
                                0.000      -0.051    -695.059      -0.364      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     214.827      -0.081      -0.992     588.242
                                0.051       0.000       0.262    -964.962       0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.016       0.000       0.000       0.023
                              695.059      -0.262      -0.000       0.070      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -1.855       2.663    -401.769      -0.000
                                0.364     964.962      -0.070      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>               0.002       4.007       0.336      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1121.726      -7.049      29.500    -272.320

    2    1  |0 0>               0.067     184.434      -2.420       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      29.449      14.079    1121.702       5.892

    3    1  |0 0>            -184.500       0.094       1.706      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.045     -10.522       0.081       0.054

    4    1  |0 0>               1.457       3.013      97.340       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.469   -1294.059       9.677       1.559

    5    1  |0 0>              -0.914      -0.805    -189.490       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.978      63.389      -4.397       0.243

    6    1  |0 0>              -0.000       0.017     236.248      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.056    1841.633      12.205       0.000

    7    1  |0 0>               0.290      -0.000      -0.000    1096.178       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -250.590      -0.000       1.157    -669.587

    8    1  |0 0>               0.255    -586.301       0.043      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.157       1.661    -250.585       0.000

    9    1  |0 0>             586.288       0.255       0.000      -0.542       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.125      -0.001       0.203       0.374

   10    1  |0 0>              -0.471       0.062      -0.021      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     251.694       0.007      -1.140    -580.628

   11    1  |0 0>               0.132    -702.500       0.076       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.139       1.657    -251.688      -0.051

   12    1  |0 0>             702.493       0.132      -0.011       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.169       0.001       0.141      -0.296

   13    1  |0 0>              -0.002      -0.037    -196.266      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.004     279.377       1.844       0.011

   14    1  |0 0>               0.009       0.074     787.061       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.003     -80.097      -0.525      -0.013

   15    1  |0 0>               0.000      -0.085   -1167.489      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.016    -524.510      -3.476      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -121.168      -1.083     259.855      -0.003      -0.000      -0.992       0.007    -401.771

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.018       1.640       0.001     248.298       0.000       1.439     214.826      -0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.492    -248.291      -1.171       1.640      -0.081    -214.828       1.439       1.855

    4    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                             1215.471      -0.265     566.739       0.088       0.028      -0.000       0.000      -0.014

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.050       0.055      -0.182    -287.051       0.152       0.160      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.050       0.000      -0.003    -670.558       0.149       0.057     588.244       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.055       0.003       0.000       0.078     615.606      -0.235      -0.068      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.182     670.558      -0.078       0.000      -0.246    -588.222       0.057       0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                              287.051      -0.149    -615.606       0.246       0.000      -0.000      -0.262     964.960

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.152      -0.057       0.235     588.222       0.000       0.000    -695.055      -0.364

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.160    -588.244       0.068      -0.057       0.262     695.055       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000    -964.960       0.364      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           41912.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   41912.035       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   41912.061       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   41912.076       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   42413.406       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42413.418       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42413.436       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42966.247
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -1.251     248.303       0.087       0.006      -0.088    -214.827       0.016       1.855
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              1.917      -0.000      -0.166       0.000    -214.828       0.081      -0.000      -2.663
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-           -285.609      -1.066      24.996      -0.021      -1.423       0.992      -0.000     401.769
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-             -0.182    -670.544       0.078      -0.027      -0.222    -588.242      -0.023       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -0.068       0.100     116.926       0.160      -0.008     676.632      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.068       0.000       0.031       0.123     588.223      -0.222      -0.191       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.100      -0.031       0.000    1336.000      -0.068      -0.004     -59.221       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-           -116.926      -0.123   -1336.000       0.000       0.014      -0.000       0.051       0.001
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-             -0.160    -588.223       0.068      -0.014       0.000    -695.068       0.051      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.008       0.222       0.004       0.000     695.068       0.000       0.000       0.070
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-           -676.632       0.191      59.221      -0.051      -0.051      -0.000       0.000     964.974
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000      -0.000      -0.000      -0.001       0.000      -0.070    -964.974       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.026       0.678      -0.000       5.915    -184.460       1.202      -4.007      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.026       1.879       0.006     272.284       3.989      -3.552    -184.438       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -446.224      -2.326     312.469       0.002       0.008       1.730      -0.025       0.007

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.527      26.685      -2.468       4.439       1.136     212.756      -3.022      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.061     544.111       1.484      -1.156       0.160     -10.411       0.792       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003       0.000      -0.000      -0.089    -236.248       0.017       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.284       0.000      -0.313       0.000     586.288      -0.221       0.000      -0.542

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.311       0.016      -0.518    -669.588      -0.000      -0.043    -586.284      -0.891

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -443.509       0.047    -633.331       0.514      -0.290       0.000       0.477   -1096.162

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.581      -0.019      -0.446      -0.051     702.494      -0.285      -0.062      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.580       0.003       0.379     580.633       0.062       0.081     702.494       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -951.226       0.322     666.099      -0.402       0.471      -0.006      -0.397       0.016

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.090     320.041      -0.039       0.026      -0.308    -779.759       0.079       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.291    1116.283      -0.120       0.012       0.100     223.572      -0.033       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.021      -0.000      -0.000       0.440    1167.477      -0.085      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.524    1135.248      -1.146      -0.024      -0.006      -0.006     248.298

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.524       0.000      -0.035       1.662    -164.462       0.018    -234.853      -0.011

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1135.248       0.035       0.000    -248.294      -1.114       0.000      -1.556      -1.146

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.146      -1.662     248.294       0.000      -0.050      -0.123       0.003     670.552

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024     164.462       1.114       0.050       0.000    1098.541       0.082       0.091

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006      -0.018      -0.000       0.123   -1098.541      -0.000     769.266      -0.085

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006     234.853       1.556      -0.003      -0.082    -769.266      -0.000      -0.018

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -248.298       0.011       1.146    -670.552      -0.091       0.085       0.018       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.992      -1.424     214.824       0.000      -0.103       0.014      -0.212    -588.236

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.015       0.001      -0.081      -0.005    -389.638       0.042    -556.371       0.195

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              214.830       0.000      -0.992    -588.229      -0.029       0.000       0.041      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.012     401.768       2.663      -0.000      -0.000      -0.030       0.000      -0.000

    1    1  |1 0>               0.000   -1135.237      -7.524      -0.008       1.251    -248.303      -0.087      -0.006
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>            1135.237       0.000      -5.240    -248.296      -1.917       0.000       0.166      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               7.524       5.240       0.000      -1.673     285.609       1.066     -24.996       0.021
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.008     248.296       1.673       0.000       0.182     670.544      -0.078       0.027
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -1.251       1.917    -285.609      -0.182       0.000       0.068      -0.100    -116.926
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>             248.303      -0.000      -1.066    -670.544      -0.068       0.000      -0.031      -0.123
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.087      -0.166      24.996       0.078       0.100       0.031       0.000   -1336.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.006       0.000      -0.021      -0.027     116.926       0.123    1336.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.088    -214.828      -1.423      -0.222       0.160     588.223      -0.068       0.014
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>            -214.827       0.081       0.992    -588.242      -0.008      -0.222      -0.004      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>               0.016      -0.000      -0.000      -0.023     676.632      -0.191     -59.221       0.051
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 0>               1.855      -2.663     401.769       0.000      -0.000       0.000       0.000       0.001
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.004       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   41912.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   41912.005       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   41912.035       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   41912.061       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   41912.076
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
                               -4.806    1121.828       7.458      -2.168     -10.796    -272.316      -4.968      -0.007

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.873     -24.270      -0.210       8.823    -493.550       5.999    -230.130      -0.031

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.325       7.392   -1122.048      -5.072      -0.087       0.004      -0.030     272.378

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -701.911      -6.482      12.049    -457.790      -8.088       1.561      -3.751      -2.149

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1089.127      -0.962      -0.534     295.123       2.146       0.242       0.987       1.349

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1841.653      -0.000       8.501      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007    -250.588      -1.537       0.000       0.182     669.597      -0.078      -0.315

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.001       0.204       0.032    -326.756       0.170     700.745      -0.571

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.157      -1.537     250.586      -0.000       0.315      -0.315      -0.572    -669.587

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.009    -251.691      -1.837      -0.034      -0.065    -580.638       0.111      -0.403

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.023       0.142       0.148   -1052.469       0.178    -490.740       0.252

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.160      -1.837     251.687      -0.014       0.551      -0.403       0.280     580.628

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              209.050       0.005      -0.966    -806.715      -0.112       0.011      -0.016      -0.002

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              201.902      -0.006      -0.929     835.301       0.106      -0.013       0.012       0.008

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              524.518       0.000      -2.421      -0.008       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.009       0.016   -1122.121       6.118
                               -0.992      -0.015    -214.830      -0.012       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     -24.354   -1121.783      -0.082     -14.359
                                1.424      -0.001      -0.000    -401.768       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -2.209       7.205      -5.197    -592.148
                             -214.824       0.081       0.992      -2.663       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.004       0.004     272.376      -2.149
                               -0.000       0.005     588.229       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000     -47.485       0.953       0.029       0.307
                                0.103     389.638       0.029       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -5.965    -272.288      -0.037      -4.426
                               -0.014      -0.042      -0.000       0.030       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000    -542.562      11.770       0.022       3.105
                                0.212     556.371      -0.041      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -2.848       6.884      -2.589    -484.480
                              588.236      -0.195       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.002       0.067    -184.500       1.457
                                0.000      -0.051    -695.059      -0.364       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       4.007     184.434       0.094       3.013
                                0.051       0.000       0.262    -964.962       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.336      -2.420       1.706      97.340
                              695.059      -0.262      -0.000       0.070       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.001       0.000      -0.000       0.000
                                0.364     964.962      -0.070      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.088     214.827      -0.016      -1.855       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    1121.726     -29.449      -0.045      -6.469

    2    1  |1 0>             214.828      -0.081       0.000       2.663       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       7.049     -14.079      10.522    1294.059

    3    1  |1 0>               1.423      -0.992       0.000    -401.769       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -29.500   -1121.702      -0.081      -9.677

    4    1  |1 0>               0.222     588.242       0.023      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     272.320      -5.892      -0.054      -1.559

    5    1  |1 0>              -0.160       0.008    -676.632       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.026       0.026     446.224      -3.527

    6    1  |1 0>            -588.223       0.222       0.191      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.678      -1.879       2.326     -26.685

    7    1  |1 0>               0.068       0.004      59.221      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.006    -312.469       2.468

    8    1  |1 0>              -0.014       0.000      -0.051      -0.001       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -5.915    -272.284      -0.002      -4.439

    9    1  |1 0>               0.000     695.068      -0.051       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     184.460      -3.989      -0.008      -1.136

   10    1  |1 0>            -695.068       0.000      -0.000      -0.070       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.202       3.552      -1.730    -212.756

   11    1  |1 0>               0.051       0.000       0.000    -964.974       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.007     184.438       0.025       3.022

   12    1  |1 0>              -0.000       0.070     964.974       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.007       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.806      -6.873       5.325     701.911

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1121.828      24.270      -7.392       6.482

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -7.458       0.210    1122.048     -12.049

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.168      -8.823       5.072     457.790

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      10.796     493.550       0.087       8.088

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     272.316      -5.999      -0.004      -1.561

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.968     230.130       0.030       3.751

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.007       0.031    -272.378       2.149

    9    1  |1 1>-          42413.406       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.865      -1.132       0.024     115.416

   10    1  |1 1>-              0.000   42413.418       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     184.464      -3.990      -0.021      -1.100

   11    1  |1 1>-              0.000       0.000   42413.436       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.013      -0.003    -184.498       1.455

   12    1  |1 1>-              0.000       0.000       0.000   42966.247       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.005      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5779.924       0.000       0.000       0.000
                               -0.865    -184.464       0.013       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5779.928       0.000       0.000
                                1.132       3.990       0.003       0.005      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5779.933       0.000
                               -0.024       0.021     184.498       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5779.932
                             -115.416       1.100      -1.455       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -179.074       0.232       0.913      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -236.249       0.089      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.221    -586.281       0.332       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.477   -1096.160      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.332     586.291       0.891      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.264     702.486       0.419      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005       0.062      -0.397       0.016      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005       0.419    -702.497      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              583.473      -0.234       0.003       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              563.518      -0.197      -0.009       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1167.483      -0.440       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+             -0.235      -8.501      -0.124      -0.211    -250.590      -0.169       0.150     251.693
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -2.826      12.205       0.000    -250.587       0.204      -0.022     251.693      -0.142
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           1152.490   -1841.612       0.001      -1.660       1.158       0.008       1.658      -1.159
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              1.348      -0.000       0.406       0.544     669.589      -0.379       0.328     580.629
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.061      -0.000    -770.215      -0.182       0.446    -101.244      -0.167      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              1.174       0.000       0.217    -669.583       0.544      -0.055    -580.617       0.328
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.482       0.000      67.408       0.077      -0.033   -1156.831      -0.035      -0.775
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -248.987       0.001      -0.058      -0.016       0.000      -0.018       0.016      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.914      -0.000       0.290       0.255     586.288      -0.471       0.132     702.493
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.805       0.017      -0.000    -586.301       0.255       0.062    -702.500       0.132
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+           -189.490     236.248      -0.000       0.043       0.000      -0.021       0.076      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000    1096.178      -0.000      -0.542      -0.002       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.978      -0.056     250.590       1.157      -0.125    -251.694       1.139      -0.169

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -63.389   -1841.633       0.000      -1.661       0.001      -0.007      -1.657      -0.001

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.397     -12.205      -1.157     250.585      -0.203       1.140     251.688      -0.141

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.243      -0.000     669.587      -0.000      -0.374     580.628       0.051       0.296

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.061      -0.000       0.284       0.311     443.509      -0.581       0.580     951.226

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -544.111      -0.003      -0.000      -0.016      -0.047       0.019      -0.003      -0.322

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.484      -0.000       0.313       0.518     633.331       0.446      -0.379    -666.099

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.156       0.000      -0.000     669.588      -0.514       0.051    -580.633       0.402

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.160       0.089    -586.288       0.000       0.290    -702.494      -0.062      -0.471

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.411     236.248       0.221       0.043      -0.000       0.285      -0.081       0.006

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.792      -0.017      -0.000     586.284      -0.477       0.062    -702.494       0.397

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.542       0.891    1096.162       0.000      -0.000      -0.016

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1089.127    1841.653       0.007      -0.001      -1.157       0.009       0.001      -1.160

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.962       0.000     250.588       0.001       1.537     251.691       0.023       1.837

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.534      -8.501       1.537      -0.204    -250.586       1.837      -0.142    -251.687

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -295.123       0.000      -0.000      -0.032       0.000       0.034      -0.148       0.014

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.146      -0.000      -0.182     326.756      -0.315       0.065    1052.469      -0.551

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.242       0.000    -669.597      -0.170       0.315     580.638      -0.178       0.403

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.987      -0.000       0.078    -700.745       0.572      -0.111     490.740      -0.280

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.349       0.000       0.315       0.571     669.587       0.403      -0.252    -580.628

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              179.074     236.249       0.221      -0.000       0.000      -0.264       0.005       0.005

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.232      -0.089     586.281      -0.000      -0.332    -702.486      -0.062      -0.419

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.913       0.000      -0.332      -0.477    -586.291      -0.419       0.397     702.497

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    1096.160      -0.891       0.000      -0.016       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5779.935       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14415.200       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41185.050       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41185.058       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41185.059       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   43519.237       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   43519.262       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43519.270
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+              0.324      -1.298       2.421
                                0.000       0.000       0.000

    2    1  |1 1>+             -0.458       1.863      -3.476
                                0.000       0.000       0.000

    3    1  |1 1>+             70.318    -281.987     524.508
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.002       0.008      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+              0.086       0.019       0.000
                                0.000       0.000       0.000

    6    1  |1 1>+              0.008       0.020       0.000
                                0.000       0.000       0.000

    7    1  |1 1>+              0.017      -0.027      -0.000
                                0.000       0.000       0.000

    8    1  |1 1>+          -1126.747    -280.984      -0.009
                                0.000       0.000       0.000

    9    1  |1 1>+             -0.002       0.009       0.000
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.037       0.074      -0.085
                                0.000       0.000       0.000

   11    1  |1 1>+           -196.266     787.061   -1167.489
                                0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                               -0.004      -0.003       0.016

    2    1  |1 0>               0.000       0.000       0.000
                             -279.377      80.097     524.510

    3    1  |1 0>               0.000       0.000       0.000
                               -1.844       0.525       3.476

    4    1  |1 0>               0.000       0.000       0.000
                               -0.011       0.013       0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.090      -0.291       0.000

    6    1  |1 0>               0.000       0.000       0.000
                             -320.041   -1116.283       0.021

    7    1  |1 0>               0.000       0.000       0.000
                                0.039       0.120       0.000

    8    1  |1 0>               0.000       0.000       0.000
                               -0.026      -0.012       0.000

    9    1  |1 0>               0.000       0.000       0.000
                                0.308      -0.100      -0.440

   10    1  |1 0>               0.000       0.000       0.000
                              779.759    -223.572   -1167.477

   11    1  |1 0>               0.000       0.000       0.000
                               -0.079       0.033       0.085

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                             -209.050    -201.902    -524.518

    2    1  |1 1>-              0.000       0.000       0.000
                               -0.005       0.006      -0.000

    3    1  |1 1>-              0.000       0.000       0.000
                                0.966       0.929       2.421

    4    1  |1 1>-              0.000       0.000       0.000
                              806.715    -835.301       0.008

    5    1  |1 1>-              0.000       0.000       0.000
                                0.112      -0.106      -0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.011       0.013      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.016      -0.012       0.000

    8    1  |1 1>-              0.000       0.000       0.000
                                0.002      -0.008      -0.000

    9    1  |1 1>-              0.000       0.000       0.000
                             -583.473    -563.518   -1167.483

   10    1  |1 1>-              0.000       0.000       0.000
                                0.234       0.197       0.440

   11    1  |1 1>-              0.000       0.000       0.000
                               -0.003       0.009      -0.000

   12    1  |1 1>-              0.000       0.000       0.000
                               -0.000      -0.000      -0.000

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

   13    1  |0 0>           43519.372       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   43519.402       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   45360.700
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08674454    -0.01313422    -2882.63      0.00000000        0.00      0.0000
    2  -214.07884525    -0.00523493    -1148.94      0.00789929     1733.69      0.2150
    3  -214.07884525    -0.00523493    -1148.93      0.00789929     1733.69      0.2150
    4  -214.07884524    -0.00523492    -1148.93      0.00789930     1733.70      0.2150
    5  -214.07072653     0.00288379      632.92      0.01601801     3515.55      0.4359
    6  -214.07072653     0.00288380      632.92      0.01601802     3515.55      0.4359
    7  -214.07072645     0.00288387      632.94      0.01601810     3515.57      0.4359
    8  -214.07072644     0.00288388      632.94      0.01601810     3515.57      0.4359
    9  -214.07072644     0.00288388      632.94      0.01601810     3515.57      0.4359
   10  -214.04508709     0.02852323     6260.13      0.04165745     9142.75      1.1336
   11  -214.04508707     0.02852325     6260.13      0.04165747     9142.76      1.1336
   12  -214.04508705     0.02852327     6260.13      0.04165749     9142.76      1.1336
   13  -214.04508697     0.02852336     6260.15      0.04165758     9142.78      1.1336
   14  -214.04508695     0.02852337     6260.16      0.04165759     9142.78      1.1336
   15  -214.00526741     0.06834291    14999.54      0.08147713    17882.16      2.2171
   16  -213.89559312     0.17801720    39070.26      0.19115143    41952.89      5.2015
   17  -213.89559304     0.17801728    39070.28      0.19115150    41952.90      5.2015
   18  -213.89559301     0.17801731    39070.28      0.19115153    41952.91      5.2015
   19  -213.89196342     0.18164691    39866.89      0.19478113    42749.52      5.3003
   20  -213.89196335     0.18164697    39866.90      0.19478120    42749.53      5.3003
   21  -213.89196333     0.18164699    39866.91      0.19478122    42749.54      5.3003
   22  -213.89146183     0.18214849    39976.97      0.19528271    42859.60      5.3139
   23  -213.89146183     0.18214849    39976.97      0.19528271    42859.60      5.3139
   24  -213.89146180     0.18214852    39976.98      0.19528274    42859.61      5.3139
   25  -213.89146173     0.18214859    39976.99      0.19528281    42859.62      5.3139
   26  -213.89146164     0.18214868    39977.02      0.19528290    42859.64      5.3139
   27  -213.89024710     0.18336322    40243.58      0.19649744    43126.20      5.3470
   28  -213.87817400     0.19543632    42893.31      0.20857054    45775.94      5.6755
   29  -213.87817395     0.19543637    42893.33      0.20857059    45775.95      5.6755
   30  -213.87817393     0.19543639    42893.33      0.20857061    45775.96      5.6755
   31  -213.87653465     0.19707567    43253.11      0.21020989    46135.74      5.7201
   32  -213.87653465     0.19707568    43253.11      0.21020990    46135.74      5.7201
   33  -213.87653456     0.19707577    43253.13      0.21020999    46135.76      5.7201
   34  -213.87653451     0.19707581    43253.14      0.21021003    46135.77      5.7201
   35  -213.87653451     0.19707581    43253.14      0.21021003    46135.77      5.7201
   36  -213.87653436     0.19707597    43253.17      0.21021019    46135.80      5.7201
   37  -213.87653435     0.19707597    43253.18      0.21021019    46135.80      5.7201
   38  -213.87555907     0.19805125    43467.23      0.21118547    46349.85      5.7466
   39  -213.87555906     0.19805126    43467.23      0.21118548    46349.85      5.7466
   40  -213.87555905     0.19805127    43467.23      0.21118549    46349.86      5.7466
   41  -213.87555902     0.19805130    43467.24      0.21118552    46349.86      5.7467
   42  -213.87555900     0.19805132    43467.24      0.21118554    46349.87      5.7467
   43  -213.87334479     0.20026553    43953.20      0.21339975    46835.83      5.8069
   44  -213.87334477     0.20026555    43953.21      0.21339977    46835.84      5.8069
   45  -213.87334477     0.20026555    43953.21      0.21339977    46835.84      5.8069
   46  -213.87109427     0.20251605    44447.14      0.21565027    47329.76      5.8681
   47  -213.87109417     0.20251615    44447.16      0.21565037    47329.79      5.8681
   48  -213.87109415     0.20251617    44447.16      0.21565039    47329.79      5.8681
   49  -213.87109382     0.20251650    44447.23      0.21565072    47329.86      5.8682
   50  -213.87109371     0.20251662    44447.26      0.21565084    47329.89      5.8682
   51  -213.86325266     0.21035766    46168.17      0.22349188    49050.80      6.0815

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00261995  0.00010254 -0.00222741  0.70698475  0.00326123  0.00123105  0.00124125  0.04845592
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00376167 -0.70694889 -0.00676476  0.00010285 -0.00510514 -0.00180178  0.67522845 -0.00580416
                           0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.56758356 -0.00468578 -0.00003455 -0.00326274  0.74578832  0.22747592  0.00474803 -0.00026343
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000072 -0.00001336  0.00409580  0.00000162 -0.00000162 -0.00001091 -0.00043376
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00004397  0.00471142  0.00001525 -0.00000018  0.00000063  0.00001059  0.00105093
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00409560  0.00003786 -0.00000060 -0.00000154 -0.00000236  0.00604298 -0.00005084
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000347 -0.00041234 -0.00000130  0.00000095 -0.00000264  0.00010150  0.01200895
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000004  0.00000009  0.00000035  0.00000000  0.00352621 -0.01156062 -0.00000406 -0.00000240
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000168 -0.00000958  0.00304291  0.00000061 -0.00000061 -0.00000323 -0.00016204
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000051  0.00304284  0.00002912 -0.00000159 -0.00000036 -0.00000093  0.00225805 -0.00001935
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00703749 -0.00000022 -0.00000000  0.00000000  0.00249390  0.00076073  0.00000077 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00012394  0.01295291  0.00004083  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001726 -0.00350125  0.70698302  0.00222782 -0.00007048  0.00016018 -0.00261465 -0.67352609

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.56759030 -0.00468526 -0.00004470  0.00000068 -0.56990158  0.53213938 -0.00437952  0.00017467

   3    1  |1 0>           0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00376163  0.70697131  0.00350140 -0.00011300 -0.00393914  0.00323185  0.67525162 -0.00269437

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00003919 -0.00409562 -0.00001317 -0.00000047  0.00000130 -0.00005129 -0.00602734

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000078 -0.00000894  0.00271263  0.00000042 -0.00000506 -0.00001834 -0.00071103

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000009  0.00000010  0.00000000 -0.00000029 -0.00824868 -0.00883413 -0.00000598 -0.00000094

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000066 -0.00001220  0.00387408 -0.00000091  0.00000288  0.00001255  0.00049749

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00409565 -0.00003919  0.00000078 -0.00000165 -0.00000284  0.00604299 -0.00005200

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000265 -0.00002911  0.00304279  0.00000959 -0.00000054  0.00000019  0.00001917  0.00225216

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00703750 -0.00000021 -0.00000115 -0.00000000 -0.00190584  0.00177935  0.00000048 -0.00000040

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000051 -0.00304277 -0.00002912  0.00000044 -0.00000040 -0.00000111  0.00225795 -0.00001941

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000227  0.00004081 -0.01295360 -0.00000000 -0.00000000  0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.56759583  0.00000037  0.00001121  0.00326342  0.17589597  0.75962727  0.00036874 -0.00006815

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000011 -0.00676522  0.70696047 -0.00245718  0.00005123 -0.00014401  0.00573947  0.67381077

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00262001  0.00007920  0.00245803  0.70698470 -0.00063028 -0.00368840 -0.00118315 -0.04399213

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000019  0.00000000  0.00000000 -0.01177491  0.00272653 -0.00000057  0.00000122

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00199836 -0.00001801 -0.00000001  0.00000149  0.00000504 -0.01095381  0.00009249

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00003815  0.00409566  0.00001281 -0.00000047  0.00000130 -0.00004891 -0.00602749

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00428620  0.00004054 -0.00000061  0.00000123  0.00000223 -0.00510743  0.00004460

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000055 -0.00001281  0.00409578 -0.00000162  0.00000162  0.00001012  0.00043352

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00703751  0.00000001 -0.00000115 -0.00000000 -0.00058816 -0.00254015 -0.00000124  0.00000040

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000265  0.00002911 -0.00304272 -0.00000981  0.00000040  0.00000047  0.00001917  0.00225207

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000054  0.00000981 -0.00304292  0.00000061 -0.00000061 -0.00000408 -0.00016220

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01295308  0.00012395 -0.00000188 -0.00000000  0.00000000  0.00000014 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000002  0.00000056  0.00000000  0.00092079 -0.00141044  0.00894512  0.29529467
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000050 -0.00000002  0.00000000 -0.00436559  0.00247954  0.29602141 -0.00893379
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000013  0.00259987 -0.00057516  0.00057489  0.02124152
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000023 -0.00000001 -0.00000000  0.00000000  0.20629410 -0.21248116  0.00476379 -0.00195345
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000002  0.00000000 -0.00000000  0.00000000 -0.21249124 -0.20634856 -0.00141104 -0.00017345
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.18158352 -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000010  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00008042 -0.00840478 -0.00002234 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00840481 -0.00008044  0.00000805  0.00000000 -0.00000000 -0.00000003  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000827 -0.00002226  0.00840518  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000078  0.00000162 -0.00006182 -0.00734176
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000004  0.00000000 -0.00000000  0.00000204  0.00000309 -0.00736110  0.00006233
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000188 -0.00000200 -0.00000918 -0.00053319
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>          -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00378755  0.00631219  0.00000161  0.00000158
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000010  0.00000000 -0.00000000 -0.00000000  0.00631218  0.00378755  0.00000335  0.00000018
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.01902461 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000004 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.67352320  0.00005605  0.00008532 -0.20955380 -0.00049417  0.00092151 -0.00048415 -0.00000005
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00080571 -0.00429499 -0.20950997 -0.00008973  0.00005606 -0.00120197  0.00069513 -0.00000006
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00297509 -0.00013759 -0.00081822  0.00088292 -0.10299300  0.21895968 -0.10488558 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00602762  0.00000150  0.00000251 -0.00590571 -0.00000053 -0.00000251 -0.00000000 -0.00008406
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00007622  0.00102957 -0.00001950 -0.00000030 -0.00000246 -0.00000059  0.00000000  0.50644989
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003

   6    1  |1 1>+          0.00000728  0.00012215  0.00590450  0.00000254  0.00001740 -0.00000714 -0.00000000 -0.00009984
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00086416  0.01176380 -0.00024184  0.00000308 -0.00001902 -0.00000246 -0.00000000 -0.04432050
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000424  0.00001787 -0.00002621 -0.00000310  0.01068789  0.00502727 -0.00000004  0.00003785
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00225222 -0.00000157 -0.00000454  0.00566002  0.00000050  0.00000241  0.00000000 -0.00000203
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000184 -0.00011603 -0.00565872 -0.00000457 -0.00001712  0.00000716 -0.00000051  0.00000251
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000047 -0.00000293  0.00001583 -0.00000226 -0.00278177  0.00591404 -0.00698684  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.17245663
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.04846102  0.20948944 -0.00526191  0.00005448 -0.00033499 -0.00004375 -0.00000319  0.00059551

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00030107  0.00039944  0.00063571 -0.00001257  0.24112336 -0.02028860 -0.10488671 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00103066 -0.00526029 -0.20948882 -0.00009058  0.00097306  0.00011493 -0.00069512 -0.00000269

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003
                          -0.00043469 -0.00590446  0.00012104 -0.00000061  0.00000957  0.00000125  0.00000000 -0.44027863

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00987487  0.00000203  0.00000369 -0.00967507 -0.00000060 -0.00000092  0.00000000 -0.00006588

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000374  0.00000431  0.00001081 -0.00000168  0.00099019  0.01176968  0.00000008  0.00000002

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00691492 -0.00000183 -0.00000286  0.00677498  0.00000049  0.00000152  0.00000000 -0.00003290

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000797  0.00012106  0.00590439  0.00000180  0.00001768 -0.00000675 -0.00000000 -0.00004297

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00016207 -0.00565880  0.00011600 -0.00000148  0.00001162  0.00000099 -0.00000264  0.02567866

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000096  0.00001214 -0.00002079 -0.00000036  0.00651259 -0.00054780 -0.00698685 -0.00000969

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000269 -0.00011603 -0.00565880 -0.00000244 -0.00001740  0.00000677  0.00000051 -0.00000250

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000015 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00001362

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00327757  0.00025544 -0.00018238  0.00087033  0.13813080  0.19867575  0.10488789  0.00000002

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04400038 -0.20950670  0.00429537 -0.00144369  0.00033933  0.00004373  0.00000002  0.00059546

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.67382748 -0.00144638 -0.00005975  0.20954885 -0.00061661 -0.00082759 -0.00048416  0.00000390

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000399 -0.00001350  0.00003834 -0.00000199 -0.00969765  0.00674242  0.00000000  0.00000001

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001273 -0.00022105 -0.01070250 -0.00000505 -0.00003295  0.00001339  0.00000000  0.00009873

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                          -0.00043359 -0.00590434  0.00012337 -0.00000168  0.00000957  0.00000124 -0.00000000  0.44027341

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000606 -0.00010164 -0.00499028 -0.00000212 -0.00001492  0.00000594  0.00000000 -0.00000598

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00602763 -0.00000175 -0.00000328  0.00590573  0.00000053  0.00000251 -0.00000000 -0.00002445

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000050 -0.00000921  0.00000496  0.00000262 -0.00373082 -0.00536614 -0.00698686 -0.00000969

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00016222 -0.00565889  0.00011600 -0.00000107  0.00001058  0.00000322  0.00000264 -0.02567111

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00225224 -0.00000112 -0.00000241  0.00565998  0.00000050  0.00000241 -0.00000000  0.00000390

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001683

   1    1  |0 0>           0.02126051  0.95492100  0.00115175  0.00025766  0.00367337  0.00053178 -0.00000000 -0.00000006
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00010955 -0.00110510  0.95483829  0.00041996 -0.01263393  0.00349095  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.29542342 -0.00028338 -0.00030502  0.95488891  0.00744739 -0.00458138 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00209790 -0.00366545  0.01274686 -0.00759925  0.95422256 -0.03335130 -0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00148346 -0.00065753 -0.00304945  0.00431682  0.03342756  0.95432743  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000002  0.98327361  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.56815294
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

   8    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00005529
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00023584
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00053325  0.00316931 -0.00006525 -0.00000129 -0.00000506 -0.00000073 -0.00000000  0.00000169
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000467  0.00006526  0.00316930  0.00000316  0.00000936 -0.00000371  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00734201  0.00000123 -0.00000318  0.00316998  0.00000029  0.00000131  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000281  0.00000493 -0.00000857 -0.00000055  0.00310976  0.00061507 -0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00000057 -0.00000016  0.00000547 -0.00000123 -0.00061506  0.00310977  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000001  0.00463023  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00059574 -0.00000022 -0.00000013  0.00661286 -0.00000461  0.00468830 -0.00002065 -0.00000267
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000020 -0.00059572  0.00000016 -0.00000441 -0.00661289  0.00002079  0.00468810  0.00000202
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000275 -0.00000395  0.00000000 -0.00003055 -0.00004381 -0.00002079  0.00003146 -0.00000019
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.44028261 -0.00014773 -0.00002081 -0.22736387  0.00015172  0.32873734 -0.00145791 -0.00019285
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00008287  0.00007024  0.26153566 -0.00001683 -0.00005552  0.00006413 -0.00011439  0.05731603
                          -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00014771  0.44027761 -0.00006829 -0.00015171 -0.22736499 -0.00145797 -0.32873775 -0.00008165
                           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000350 -0.00004662 -0.02287567 -0.00000047  0.00002575  0.00037201 -0.00024625  0.65499560
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006

   8    1  |1 1>+         -0.00000000  0.00001032  0.00001955 -0.00000001 -0.00000532  0.00001598 -0.00006684 -0.00000095
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.02568708  0.00000107 -0.00000984  0.48161549 -0.00013973  0.28358146 -0.00136460 -0.00016156
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000107  0.02569325 -0.00001157  0.00013973  0.48161797 -0.00136464 -0.28357338 -0.00012230
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000001 -0.00000187  0.00000001  0.00000011 -0.00003512 -0.00004272  0.00000301  0.00001314
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00001361  0.00001684  0.44293275  0.00000905  0.00001063 -0.00000001  0.00000000 -0.00000830
                           0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005  0.00000269 -0.00661282 -0.00000011  0.00003037  0.00000276  0.00001961  0.00468844

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000395 -0.00000000 -0.00000003 -0.00004383 -0.00000038 -0.00003164  0.00000008

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000020  0.00059554  0.00003037  0.00000441  0.00661270  0.00002078  0.00468828 -0.00001962

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003
                           0.00006315  0.00004299 -0.22736171  0.00001002 -0.00000546 -0.00023903  0.00014292 -0.32874733

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.29162388 -0.00006510 -0.00001905 -0.15058637  0.00008357  0.53857368 -0.00236403 -0.00033877

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00003109  0.00001032  0.00000000  0.00001604 -0.00000533 -0.00010743  0.00000969 -0.00002395

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.41642575 -0.00014157  0.00000439 -0.21504637  0.00014446 -0.37715135  0.00167124  0.00021481

   8    1  |1 0>           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00012778 -0.44026506 -0.00000546  0.00014142  0.22736257 -0.00141641 -0.32875196 -0.00014188

   9    1  |1 0>           0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.00000203 -0.00000250 -0.48160997 -0.00000985 -0.00001145  0.00016100 -0.00012301  0.28359265

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000187  0.00018166 -0.00000002 -0.00003512  0.00001439  0.00001369 -0.00011248

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000861 -0.02567886  0.00001144 -0.00032138 -0.48161064 -0.00125772 -0.28358203 -0.00012230

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.17245390 -0.00005787 -0.00000905  0.44293554 -0.00029558 -0.00000679  0.00000004  0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000275 -0.00000000 -0.00000020  0.00003052 -0.00000002 -0.00002117 -0.00000018 -0.00000026

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000390 -0.00000006 -0.00661295 -0.00004396 -0.00000013  0.00002841  0.00000190 -0.00468812

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00059547 -0.00000020 -0.00004396  0.00661280 -0.00000441 -0.00468818  0.00002081 -0.00002840

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00002090 -0.00000000 -0.00000001 -0.00001080  0.00006632  0.00000228 -0.00002162

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00010484 -0.21485153  0.00005914  0.00009093  0.11092965  0.00266731  0.59590478  0.00016776

   6    1  |1 1>-          0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003
                          -0.00002449  0.00006875  0.22733762  0.00000994 -0.00005223 -0.00017951  0.00001281 -0.32876449

   7    1  |1 1>-         -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00015644  0.46075301 -0.00002059 -0.00015973 -0.23794168  0.00123097  0.27785713  0.00015794

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.44026356 -0.00016563  0.00000997 -0.22735590  0.00016097 -0.32875787  0.00150116  0.00017957

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00018167  0.00000012  0.00000001  0.00002835 -0.00001672  0.00009933

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000390  0.00000251  0.48162325 -0.00002529  0.00001158  0.00018165 -0.00012316  0.28356596

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.02567876  0.00000862 -0.00002529 -0.48161527  0.00032139  0.28357241 -0.00125760 -0.00018221

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00005787 -0.17245458  0.00001064 -0.00029558 -0.44293560 -0.00000007 -0.00001535 -0.00000002

   1    1  |0 0>           0.00000000 -0.00000001 -0.00000030  0.00000000 -0.00000000 -0.00000582  0.00027342 -0.01234047
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000028  0.00000001 -0.00000000 -0.00000012  0.00005505  0.01233885  0.00027232
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000032 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.01234314 -0.00005307 -0.00000654
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009596  0.00020280  0.00007062
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00005930 -0.00005330  0.00001139
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00023582 -0.00005540 -0.40928465 -0.00021055 -0.00000971  0.00000001 -0.00000000  0.00000496
                          -0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00027114  0.56816087 -0.00000968 -0.00005953  0.40927425  0.00000008  0.00001577  0.00000001
                           0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.56815827 -0.00027112  0.00021056 -0.40927658 -0.00005953  0.00001292 -0.00000008 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001 -0.00000000  0.00000921 -0.00000001 -0.00000001  0.00054037 -0.00015219  0.43646675
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004

  11    1  |0 0>           0.00000000  0.00000506 -0.00000000  0.00000001  0.00000566 -0.00218225 -0.43645901 -0.00014949
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

  12    1  |0 0>           0.00000773 -0.00000000  0.00000000  0.00000370 -0.00000000 -0.43645803  0.00218206  0.00054112
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000201 -0.00005767 -0.00000572
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00005241  0.00002372 -0.00000779
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00002318  0.00000753  0.00004330 -0.00000185 -0.00644559 -0.00000137 -0.00000008 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00003444 -0.00001093 -0.00006218 -0.00000012  0.00000117 -0.00644548 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00514068  0.00169763  0.00938139  0.00000001  0.00002976 -0.00004271  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00003828 -0.00002121  0.00000000  0.00009268  0.23262507  0.00004243  0.72914461 -0.00012983
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00001746 -0.00004553 -0.00000000 -0.26757481  0.00009931 -0.00005844  0.00013105  0.72728258
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001804

   6    1  |1 1>+          0.00003111 -0.00003704 -0.00000000  0.00007130  0.00004240 -0.23260871  0.00001079 -0.00005575
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00002328  0.00001315 -0.00000000  0.02342160 -0.00000671  0.00002650  0.00001118  0.16831775
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000417

   8    1  |1 1>+         -0.20618324  0.62433716  0.00000435 -0.00002000  0.00000001 -0.00000545  0.00005504  0.00004277
                           0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00003292 -0.00001827 -0.00000013  0.00011336  0.39569476 -0.00007707  0.00000858  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000001 -0.00002683  0.00003919 -0.00000711 -0.00007707 -0.39569610 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

  11    1  |1 1>+         -0.31092320 -0.10268506  0.53740162  0.00000000  0.00000010  0.00002886 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.17503642 -0.00005014 -0.00000313  0.00000000 -0.00000149
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000005  0.00000019  0.00000029  0.00644566 -0.00000185  0.00002964 -0.00000000 -0.00000020

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00404031  0.00360303  0.00938166  0.00000000  0.00000001 -0.00004272 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002715  0.00002420  0.00006218 -0.00002964 -0.00000117  0.00644550 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001590
                          -0.00001211 -0.00000528  0.00000000  0.23262144 -0.00008165 -0.00000417  0.00011347  0.64092778

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00005626  0.00009866 -0.00000001  0.00006678  0.15406679  0.00001080 -0.64841055  0.00011492

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.43759911  0.49073844 -0.00001704 -0.00000002 -0.00001642 -0.00000545  0.00010202  0.00001059

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000674 -0.00003246 -0.00000000  0.00006304  0.22002794  0.00004110 -0.16598390  0.00001383

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                           0.00003653 -0.00001093 -0.00000001  0.00000415 -0.00003189  0.23261673 -0.00003823  0.00002692

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00010264 -0.00007764  0.00020271 -0.39569917  0.00011336  0.00000699  0.00000000  0.00002481

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.24440725 -0.21792980  0.53739508  0.00014926 -0.00000004  0.00002886 -0.00000000 -0.00000001

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000484 -0.00000344 -0.00003920  0.00000695 -0.00007218  0.39569711 -0.00000000 -0.00000001

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.00000000  0.00005015  0.17503617  0.00003193 -0.00000264  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00109995  0.00530070 -0.00938172  0.00000019 -0.00002975 -0.00000001  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000018 -0.00000008 -0.00000000  0.00644562  0.00004087 -0.00000011 -0.00000000 -0.00000008

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000453 -0.00002417  0.00004331  0.00004087 -0.00644553 -0.00000118  0.00000004 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.64379423 -0.13361116 -0.00001045 -0.00000000  0.00000001 -0.00001104  0.00005504 -0.00001064

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001502  0.00002764  0.00000001 -0.00006123 -0.00003799  0.11351893  0.00002030  0.00005409

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000443
                          -0.00001213 -0.00000529  0.00000000 -0.23262089  0.00006121 -0.00005487 -0.00001429 -0.17871968

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00002219  0.00001895  0.00000000  0.00002257  0.00004537 -0.24344609  0.00000247 -0.00002276

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003826  0.00002121  0.00000000  0.00006119  0.23260915  0.00005189 -0.14269264  0.00000700

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.06654798  0.32062265  0.53739893  0.00014926  0.00000005 -0.00000001  0.00000000  0.00000001

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001465 -0.00011638 -0.00020271  0.39569593 -0.00014222 -0.00000709  0.00000000  0.00000904

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00003300 -0.00001822  0.00000015 -0.00014222 -0.39569804 -0.00007218  0.00000725 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00000000  0.00000312 -0.00003193  0.17503778 -0.00000000 -0.00000000

   1    1  |0 0>           0.00003828 -0.00005531 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000048
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00018236  0.00010536  0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00011082 -0.00002551 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000016  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00879765 -0.00865532 -0.00000015  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00865592 -0.00879988  0.00000023  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000020  0.00000005  0.01273964  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000001  0.00000000  0.00000000  0.68975058  0.00014314 -0.00001232 -0.00000000 -0.00000107
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00001223  0.00043480  0.68975137 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000001  0.00000000 -0.00014314  0.68975168 -0.00043479 -0.00000890  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000349  0.00000895 -0.00000000  0.00000229 -0.00000001 -0.00000000  0.00000001  0.00001072
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00005108 -0.00003596 -0.00000000 -0.00000000  0.00000000  0.00000468 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00004513  0.00002648 -0.00000000  0.00000000  0.00000793 -0.00000000 -0.00000653  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.23308053  0.36900914  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.36900516  0.23308010 -0.00000423 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000334  0.00000119  0.36494104  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000611 -0.00228861  0.00000066
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000022 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000050  0.00000059  0.00228863
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000042  0.00001037  0.00001509
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00001195 -0.00007084  0.00002907  0.00000471 -0.04089114 -0.00058821 -0.22183348  0.00005754
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00001528  0.00021210 -0.26273971  0.00001456 -0.00000570 -0.03869428  0.00008166 -0.00005200
                           0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

   6    1  |1 1>+          0.73018559 -0.00001657 -0.00003547 -0.01248024 -0.00002241 -0.00008836 -0.00005730 -0.22185460
                          -0.00000104  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000005

   7    1  |1 1>+          0.00001662 -0.00050415  0.55408731 -0.00002263  0.00000452 -0.44198955  0.00117953  0.00012047
                          -0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000011  0.00000000 -0.00000000

   8    1  |1 1>+          0.00001946  0.57732710  0.00050918 -0.00000472 -0.00001843 -0.00001231  0.00002012  0.00009669
                           0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000001 -0.00000000  0.00000000  0.00000000  0.00000243  0.00149717  0.56100992  0.00006609
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00003450  0.00000000 -0.00000000  0.00000856  0.00000000  0.00012015 -0.00006642  0.56100781
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000013

  11    1  |1 1>+         -0.00000000  0.00001916  0.00000002 -0.00000000 -0.00000001 -0.00011079 -0.00004845 -0.00006008
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000121  0.00000000  0.00000000  0.00000466 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00228852  0.00000611  0.00001105

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000021 -0.00000000 -0.00000000  0.00000000  0.00000016  0.00000020 -0.00001460

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000009  0.00000000  0.00001106  0.00000057  0.00228822

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                          -0.00002571 -0.00031023  0.35007692 -0.00001087  0.00000564  0.22179653 -0.00055654 -0.00004758

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000543 -0.00009598  0.00003130 -0.00003943 -0.02537889 -0.00094821 -0.36339999  0.00011077

   6    1  |1 0>           0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000692 -0.57735043 -0.00053107 -0.00001203 -0.00005525 -0.00007101  0.00010948  0.00004473

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001477  0.00006041  0.00000491  0.00019747 -0.69620910  0.00067914  0.25448484 -0.00006694

   8    1  |1 0>           0.00000028 -0.00000000  0.00000000 -0.00000092 -0.00000001  0.00000000 -0.00000000 -0.00000005
                           0.19461881 -0.00000891 -0.00001312  0.70388275  0.00019112 -0.00004781 -0.00008551 -0.22184862

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                          -0.00000001 -0.00000003  0.00001586 -0.00000000  0.00000000  0.56100169 -0.00149712 -0.00012042

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00005212 -0.00000005  0.00000000  0.00000000 -0.00017046  0.00005030  0.00017938

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                           0.00000966  0.00000000  0.00000000  0.00001091  0.00000000  0.00012087  0.00014519  0.56099844

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000234 -0.00000003 -0.00001142  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00000019  0.00001057  0.00000048

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000005  0.00000000  0.00000000  0.00228834 -0.00002127 -0.00000049

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00002127  0.00228812 -0.00000060

   4    1  |1 1>-         -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00005750  0.57737254  0.00053110 -0.00000943 -0.00001842 -0.00006007 -0.00003888 -0.00010144

   5    1  |1 1>-          0.00000088 -0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000009
                           0.61510315  0.00005402  0.00005133  0.05115738 -0.00005506  0.00014677  0.00008739  0.40207108

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000017 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                           0.00000197 -0.00065463  0.70809633  0.00003411 -0.00001118  0.22180615 -0.00059715 -0.00013520

   7    1  |1 1>-         -0.00000032  0.00000000 -0.00000000 -0.00000092 -0.00000001 -0.00000000  0.00000000  0.00000004
                          -0.22494582  0.00000638  0.00000309  0.70836160  0.00020522  0.00001467  0.00004952  0.18748205

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00006742  0.00003645  0.00001024 -0.00019643  0.71622386  0.00059719  0.22183329 -0.00002842

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00002150  0.00000003  0.00000000  0.00000000  0.00028125 -0.00000184 -0.00011930

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                           0.00000001 -0.00000004  0.00002824  0.00000000  0.00000000  0.56100288 -0.00145623 -0.00012029

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000430  0.00145617  0.56099698 -0.00014551

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000333  0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000  0.00000844

   1    1  |0 0>           0.00000001  0.00000000  0.00000046  0.00000001  0.00000000  0.01497272 -0.00003987  0.00032200
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000038 -0.00000002 -0.00000001  0.00000024  0.00000000 -0.00032069  0.00000453  0.01497088
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000004 -0.00004058 -0.01497573  0.00000588
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000001  0.00000094 -0.00000000  0.00000000  0.00000000 -0.00008620  0.00011731  0.00024073
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00001108 -0.00007343 -0.00006538
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000383  0.00000000  0.00000000  0.00000084 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000244 -0.00000000  0.00000000  0.00000238  0.00000000  0.00000000 -0.00000000 -0.00000023
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000653 -0.00000001 -0.00000214 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000001  0.00001311 -0.00000000  0.00000000  0.27398450 -0.00054762 -0.00008301
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000

  11    1  |0 0>           0.00001559 -0.00000000  0.00000000  0.00000630  0.00000000  0.00008285 -0.00008391  0.27398734
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006

  12    1  |0 0>          -0.00000001  0.00000000  0.00000001 -0.00000000  0.00000108 -0.00054764 -0.27398269 -0.00008374
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000000  0.00002694  0.00000002 -0.00000000 -0.00000000 -0.00000981 -0.00001601 -0.00005429
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000000 -0.00000640 -0.00000001 -0.00000000  0.00000000  0.00005315  0.00001335 -0.00001386
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00000044 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00001116 -0.00000449 -0.00000016  0.00841461  0.00000408 -0.00000489  0.00000521  0.00823202
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00001605  0.00000686 -0.00000009 -0.00000382  0.00841455 -0.00000035  0.00823193 -0.00000496
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00245975 -0.00096451  0.00000000 -0.00003887  0.00005575  0.00000022  0.00005406 -0.00003794
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00001924 -0.00000323 -0.00000172 -0.01842374 -0.00000838 -0.00005574  0.00005813  0.09648818
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000625  0.00003405  0.02119676 -0.00000140  0.00000524 -0.01682404 -0.00002694 -0.00000060
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00002093 -0.00003536 -0.00000618 -0.00000838  0.01842057 -0.00001357 -0.09648593  0.00005812
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00006683  0.00003637 -0.00185360 -0.00000003 -0.00000215 -0.19224282  0.00000292 -0.00011433
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.16198854 -0.41305526  0.00000158 -0.00000000  0.00000043 -0.00000486  0.00001087  0.00000088
                           0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00004855  0.00000826  0.00000624 -0.33285905 -0.00002579 -0.00019253  0.00007293  0.32375301
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00010649  0.00009662 -0.00000365 -0.00002579  0.33286131  0.00001384 -0.32375911  0.00007294
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.60309740 -0.23649144 -0.00000000 -0.00000008 -0.00002428 -0.00000801  0.00004209 -0.00000342
                          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.86212745  0.00001616  0.00000947  0.00000081  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000042 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000040  0.00000015 -0.00841460 -0.00000014 -0.00003893 -0.00823202  0.00003764 -0.00000492

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00206519 -0.00164798 -0.00000000 -0.00000003  0.00005577 -0.00000029 -0.00005376  0.00000003

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001343 -0.00001046  0.00003893  0.00000383 -0.00841452  0.00003765  0.00823180 -0.00000494

   4    1  |1 0>           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003321 -0.00001912 -0.01843173  0.00000084 -0.00000020  0.09648553  0.00000413  0.00004200

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00004371 -0.00009954 -0.00000157 -0.01220860 -0.00000418 -0.00008461  0.00010241  0.15807103

   6    1  |1 0>           0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.27674723 -0.34674488 -0.00000000  0.00000130  0.00000043  0.00000140  0.00000054 -0.00005378

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000996  0.00004383  0.00000033 -0.01742669 -0.00000800  0.00006583 -0.00006709 -0.11069255

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001824 -0.00005316  0.00000020  0.00000754 -0.01842602  0.00000410 -0.09649096  0.00007035

   9    1  |1 0>           0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00010702 -0.00020075  0.33286452  0.00000624  0.00000374 -0.32375802 -0.00001382 -0.00019252

  10    1  |1 0>          -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.50634822 -0.40405498 -0.00012556  0.00000001 -0.00002428  0.00013352 -0.00005489  0.00000036

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00009945  0.00014334  0.00000375  0.00015135 -0.33287962  0.00001368 -0.32375993  0.00019506

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00001617  0.86212647  0.00039199  0.00000000 -0.00000001 -0.00000321

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00039454 -0.00261243 -0.00000026  0.00003884  0.00000002  0.00000019  0.00000030 -0.00003792

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000034 -0.00000020 -0.00841456 -0.00005593 -0.00000012  0.00823187  0.00000039  0.00005945

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000162  0.00001209 -0.00005592  0.00841453  0.00000383  0.00005945 -0.00000496 -0.00823174

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.43864038  0.06622996  0.00000000  0.00000000  0.00000087  0.00000578 -0.00003185  0.00000113

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00008750  0.00008805  0.00000511  0.00000546 -0.00899288  0.00001879  0.17489297 -0.00009818

   6    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003318 -0.00001913  0.01843336  0.00000078  0.00000488  0.09649062 -0.00003397  0.00005966

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002090  0.00003806 -0.00000234 -0.00000884  0.01928370 -0.00001463  0.08155158 -0.00004954

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001925  0.00000323  0.00000078 -0.01842554 -0.00000913  0.00005964 -0.00004546 -0.09648982

   9    1  |1 1>-         -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.09674082  0.64054050 -0.00012556 -0.00000009 -0.00000000 -0.00012551  0.00001280  0.00000308

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00012047 -0.00028995 -0.33286917  0.00001804 -0.00000364 -0.32375945 -0.00001388 -0.00016891

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00004863  0.00000833  0.00001804  0.33287969  0.00015135 -0.00016893  0.00019505  0.32375951

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000946 -0.00039199  0.86212598  0.00000000 -0.00000487  0.00000000

   1    1  |0 0>           0.00005288  0.00006299 -0.00000010  0.00000000 -0.00000001  0.00051052  0.00001111  0.00000030
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00022505 -0.00011152  0.00000000  0.00000000 -0.00000023 -0.00001107  0.00051044 -0.00000031
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00013633  0.00002227 -0.00000000 -0.00000030 -0.00000000 -0.00000032  0.00000038  0.00051067
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.01123239  0.00990178  0.00000000  0.00000000 -0.00000000 -0.00000291  0.00000827 -0.00000403
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00990207  0.01123521  0.00000000 -0.00000000  0.00000000 -0.00000046 -0.00000218  0.00000252
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000003 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.18401540  0.00009435  0.00000205 -0.00000073  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000209  0.00006590  0.18401072  0.00000000 -0.00000115 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00009436  0.18401205 -0.00006590  0.00000000 -0.00000000 -0.00000258
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00004896 -0.00002283 -0.00000294  0.00000000 -0.00000000  0.85695064 -0.00003928 -0.00006450
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00002017  0.00005227 -0.00000000  0.00000000 -0.00000264  0.00003928  0.85695124 -0.00003222
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00002026 -0.00000529 -0.00000000 -0.00000585  0.00000000  0.00006450  0.00003222  0.85695290
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.15875759  0.22327033  0.00000000  0.00000000  0.00000000  0.00000704 -0.00003960 -0.00000499
                          -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.22327721  0.15875007  0.00000000  0.00000000  0.00000000  0.00000575  0.00000666  0.00000247
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000279 -0.00000146  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00000775 -0.00004311  0.00003898
                           0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00001046  0.00006171 -0.00005596
                          -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00167288 -0.00935685  0.00844420
                           0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000028  0.00000096  0.00000000
                          -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00001457  0.00000224  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000286  0.00000433  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000426 -0.00000342 -0.00000000
                           0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.18997512 -0.03396538 -0.00000136
                          -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000095  0.00000315  0.00000005
                          -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00002931  0.00003871 -0.00001537
                          -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.06579176  0.36798379 -0.21080523
                          -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000005 -0.00000004  0.00000026

   2    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00893993  0.00322974  0.00844417

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00005863  0.00002110  0.00005596

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000253  0.00000164  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00001737 -0.00004776  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.06557288 -0.18150074  0.00000318

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                           0.00000726  0.00001990  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000884 -0.00000072 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.00014111 -0.00005344 -0.00007951

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.35158152 -0.12702168 -0.21080127

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00005016  0.00002114  0.00001538

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00726701 -0.00612745 -0.00844432

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00000022  0.00000014 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00003352  0.00002820  0.00003898

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.12439510 -0.14753362  0.00000107

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00002535 -0.00002077 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.00000254  0.00000165 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00000618 -0.00000299  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                          -0.00000028 -0.00000096 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.28578560 -0.24096731 -0.21080146

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00011629  0.00008537  0.00007951

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                           0.00000086  0.00000317 -0.00000006

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000276 -0.00000032  0.00000000
                           0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000734  0.00000453 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000311 -0.00000359  0.00000000
                           0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00048844 -0.00014975  0.00000001
                           0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00014995  0.00048851  0.00000000
                           0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000004 -0.00000004 -0.00617457
                           0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000742 -0.00000526 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00003906 -0.00000931  0.00000000
                           0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000481 -0.00000280 -0.00000000
                          -0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.85501446 -0.05777664 -0.00000081
                           0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.05777907  0.85501572 -0.00000032
                           0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000117  0.00000131  0.93082472
                           0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08674454     -0.01313422    -2882.63      0.00000000        0.00      0.0000
     2   1   -214.07884525     -0.00523493    -1148.94      0.00789929     1733.69      0.2150
     3   1   -214.07884525     -0.00523493    -1148.93      0.00789929     1733.69      0.2150
     4   1   -214.07884524     -0.00523492    -1148.93      0.00789930     1733.70      0.2150
     5   1   -214.07072653      0.00288379      632.92      0.01601801     3515.55      0.4359
     6   1   -214.07072653      0.00288380      632.92      0.01601802     3515.55      0.4359
     7   1   -214.07072645      0.00288387      632.94      0.01601810     3515.57      0.4359
     8   1   -214.07072644      0.00288388      632.94      0.01601810     3515.57      0.4359
     9   1   -214.07072644      0.00288388      632.94      0.01601810     3515.57      0.4359
    10   1   -214.04508709      0.02852323     6260.13      0.04165745     9142.75      1.1336
    11   1   -214.04508707      0.02852325     6260.13      0.04165747     9142.76      1.1336
    12   1   -214.04508705      0.02852327     6260.13      0.04165749     9142.76      1.1336
    13   1   -214.04508697      0.02852336     6260.15      0.04165758     9142.78      1.1336
    14   1   -214.04508695      0.02852337     6260.16      0.04165759     9142.78      1.1336
    15   1   -214.00526741      0.06834291    14999.54      0.08147713    17882.16      2.2171
    16   1   -213.89559312      0.17801720    39070.26      0.19115143    41952.89      5.2015
    17   1   -213.89559304      0.17801728    39070.28      0.19115150    41952.90      5.2015
    18   1   -213.89559301      0.17801731    39070.28      0.19115153    41952.91      5.2015
    19   1   -213.89196342      0.18164691    39866.89      0.19478113    42749.52      5.3003
    20   1   -213.89196335      0.18164697    39866.90      0.19478120    42749.53      5.3003
    21   1   -213.89196333      0.18164699    39866.91      0.19478122    42749.54      5.3003
    22   1   -213.89146183      0.18214849    39976.97      0.19528271    42859.60      5.3139
    23   1   -213.89146183      0.18214849    39976.97      0.19528271    42859.60      5.3139
    24   1   -213.89146180      0.18214852    39976.98      0.19528274    42859.61      5.3139
    25   1   -213.89146173      0.18214859    39976.99      0.19528281    42859.62      5.3139
    26   1   -213.89146164      0.18214868    39977.02      0.19528290    42859.64      5.3139
    27   1   -213.89024710      0.18336322    40243.58      0.19649744    43126.20      5.3470
    28   1   -213.87817400      0.19543632    42893.31      0.20857054    45775.94      5.6755
    29   1   -213.87817395      0.19543637    42893.33      0.20857059    45775.95      5.6755
    30   1   -213.87817393      0.19543639    42893.33      0.20857061    45775.96      5.6755
    31   1   -213.87653465      0.19707567    43253.11      0.21020989    46135.74      5.7201
    32   1   -213.87653465      0.19707568    43253.11      0.21020990    46135.74      5.7201
    33   1   -213.87653456      0.19707577    43253.13      0.21020999    46135.76      5.7201
    34   1   -213.87653451      0.19707581    43253.14      0.21021003    46135.77      5.7201
    35   1   -213.87653451      0.19707581    43253.14      0.21021003    46135.77      5.7201
    36   1   -213.87653436      0.19707597    43253.17      0.21021019    46135.80      5.7201
    37   1   -213.87653435      0.19707597    43253.18      0.21021019    46135.80      5.7201
    38   1   -213.87555907      0.19805125    43467.23      0.21118547    46349.85      5.7466
    39   1   -213.87555906      0.19805126    43467.23      0.21118548    46349.85      5.7466
    40   1   -213.87555905      0.19805127    43467.23      0.21118549    46349.86      5.7466
    41   1   -213.87555902      0.19805130    43467.24      0.21118552    46349.86      5.7467
    42   1   -213.87555900      0.19805132    43467.24      0.21118554    46349.87      5.7467
    43   1   -213.87334479      0.20026553    43953.20      0.21339975    46835.83      5.8069
    44   1   -213.87334477      0.20026555    43953.21      0.21339977    46835.84      5.8069
    45   1   -213.87334477      0.20026555    43953.21      0.21339977    46835.84      5.8069
    46   1   -213.87109427      0.20251605    44447.14      0.21565027    47329.76      5.8681
    47   1   -213.87109417      0.20251615    44447.16      0.21565037    47329.79      5.8681
    48   1   -213.87109415      0.20251617    44447.16      0.21565039    47329.79      5.8681
    49   1   -213.87109382      0.20251650    44447.23      0.21565072    47329.86      5.8682
    50   1   -213.87109371      0.20251662    44447.26      0.21565084    47329.89      5.8682
    51   1   -213.86325266      0.21035766    46168.17      0.22349188    49050.80      6.0815

 E0 =   -214.07361032 is the energy of the lowest zeroth-order state
 E1 =   -214.08674454 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00261995  0.00010254 -0.00222741  0.70698475  0.00326123  0.00123105  0.00124125  0.04845592
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00376167 -0.70694889 -0.00676476  0.00010285 -0.00510514 -0.00180178  0.67522845 -0.00580416
                                0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.56758356 -0.00468578 -0.00003455 -0.00326274  0.74578832  0.22747592  0.00474803 -0.00026343
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00000072 -0.00001336  0.00409580  0.00000162 -0.00000162 -0.00001091 -0.00043376
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.00004397  0.00471142  0.00001525 -0.00000018  0.00000063  0.00001059  0.00105093
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00409560  0.00003786 -0.00000060 -0.00000154 -0.00000236  0.00604298 -0.00005084
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000347 -0.00041234 -0.00000130  0.00000095 -0.00000264  0.00010150  0.01200895
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000004  0.00000009  0.00000035  0.00000000  0.00352621 -0.01156062 -0.00000406 -0.00000240
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000168 -0.00000958  0.00304291  0.00000061 -0.00000061 -0.00000323 -0.00016204
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000051  0.00304284  0.00002912 -0.00000159 -0.00000036 -0.00000093  0.00225805 -0.00001935
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00703749 -0.00000022 -0.00000000  0.00000000  0.00249390  0.00076073  0.00000077 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00012394  0.01295291  0.00004083  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001726 -0.00350125  0.70698302  0.00222782 -0.00007048  0.00016018 -0.00261465 -0.67352609

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.56759030 -0.00468526 -0.00004470  0.00000068 -0.56990158  0.53213938 -0.00437952  0.00017467

 15  1     3    1  |1 0>        0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00376163  0.70697131  0.00350140 -0.00011300 -0.00393914  0.00323185  0.67525162 -0.00269437

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00003919 -0.00409562 -0.00001317 -0.00000047  0.00000130 -0.00005129 -0.00602734

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000078 -0.00000894  0.00271263  0.00000042 -0.00000506 -0.00001834 -0.00071103

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000009  0.00000010  0.00000000 -0.00000029 -0.00824868 -0.00883413 -0.00000598 -0.00000094

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000066 -0.00001220  0.00387408 -0.00000091  0.00000288  0.00001255  0.00049749

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00409565 -0.00003919  0.00000078 -0.00000165 -0.00000284  0.00604299 -0.00005200

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000265 -0.00002911  0.00304279  0.00000959 -0.00000054  0.00000019  0.00001917  0.00225216

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00703750 -0.00000021 -0.00000115 -0.00000000 -0.00190584  0.00177935  0.00000048 -0.00000040

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000051 -0.00304277 -0.00002912  0.00000044 -0.00000040 -0.00000111  0.00225795 -0.00001941

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000227  0.00004081 -0.01295360 -0.00000000 -0.00000000  0.00000000  0.00000001

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.56759583  0.00000037  0.00001121  0.00326342  0.17589597  0.75962727  0.00036874 -0.00006815

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000011 -0.00676522  0.70696047 -0.00245718  0.00005123 -0.00014401  0.00573947  0.67381077

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00262001  0.00007920  0.00245803  0.70698470 -0.00063028 -0.00368840 -0.00118315 -0.04399213

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000019  0.00000000  0.00000000 -0.01177491  0.00272653 -0.00000057  0.00000122

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00199836 -0.00001801 -0.00000001  0.00000149  0.00000504 -0.01095381  0.00009249

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00003815  0.00409566  0.00001281 -0.00000047  0.00000130 -0.00004891 -0.00602749

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00428620  0.00004054 -0.00000061  0.00000123  0.00000223 -0.00510743  0.00004460

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000055 -0.00001281  0.00409578 -0.00000162  0.00000162  0.00001012  0.00043352

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00703751  0.00000001 -0.00000115 -0.00000000 -0.00058816 -0.00254015 -0.00000124  0.00000040

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000265  0.00002911 -0.00304272 -0.00000981  0.00000040  0.00000047  0.00001917  0.00225207

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000054  0.00000981 -0.00304292  0.00000061 -0.00000061 -0.00000408 -0.00016220

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01295308  0.00012395 -0.00000188 -0.00000000  0.00000000  0.00000014 -0.00000000

 37  1     1    1  |0 0>        0.00000000 -0.00000002  0.00000056  0.00000000  0.00092079 -0.00141044  0.00894512  0.29529467
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000050 -0.00000002  0.00000000 -0.00436559  0.00247954  0.29602141 -0.00893379
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000013  0.00259987 -0.00057516  0.00057489  0.02124152
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000023 -0.00000001 -0.00000000  0.00000000  0.20629410 -0.21248116  0.00476379 -0.00195345
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000002  0.00000000 -0.00000000  0.00000000 -0.21249124 -0.20634856 -0.00141104 -0.00017345
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.18158352 -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000010  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00008042 -0.00840478 -0.00002234 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00840481 -0.00008044  0.00000805  0.00000000 -0.00000000 -0.00000003  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000827 -0.00002226  0.00840518  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000078  0.00000162 -0.00006182 -0.00734176
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000000  0.00000004  0.00000000 -0.00000000  0.00000204  0.00000309 -0.00736110  0.00006233
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000188 -0.00000200 -0.00000918 -0.00053319
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00378755  0.00631219  0.00000161  0.00000158
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000010  0.00000000 -0.00000000 -0.00000000  0.00631218  0.00378755  0.00000335  0.00000018
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.01902461 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000004 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.67352320  0.00005605  0.00008532 -0.20955380 -0.00049417  0.00092151 -0.00048415 -0.00000005
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00080571 -0.00429499 -0.20950997 -0.00008973  0.00005606 -0.00120197  0.00069513 -0.00000006
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00297509 -0.00013759 -0.00081822  0.00088292 -0.10299300  0.21895968 -0.10488558 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00602762  0.00000150  0.00000251 -0.00590571 -0.00000053 -0.00000251 -0.00000000 -0.00008406
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00007622  0.00102957 -0.00001950 -0.00000030 -0.00000246 -0.00000059  0.00000000  0.50644989
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003

  6  1     6    1  |1 1>+       0.00000728  0.00012215  0.00590450  0.00000254  0.00001740 -0.00000714 -0.00000000 -0.00009984
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00086416  0.01176380 -0.00024184  0.00000308 -0.00001902 -0.00000246 -0.00000000 -0.04432050
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000424  0.00001787 -0.00002621 -0.00000310  0.01068789  0.00502727 -0.00000004  0.00003785
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00225222 -0.00000157 -0.00000454  0.00566002  0.00000050  0.00000241  0.00000000 -0.00000203
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000184 -0.00011603 -0.00565872 -0.00000457 -0.00001712  0.00000716 -0.00000051  0.00000251
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000047 -0.00000293  0.00001583 -0.00000226 -0.00278177  0.00591404 -0.00698684  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.17245663
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.04846102  0.20948944 -0.00526191  0.00005448 -0.00033499 -0.00004375 -0.00000319  0.00059551

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00030107  0.00039944  0.00063571 -0.00001257  0.24112336 -0.02028860 -0.10488671 -0.00000000

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00103066 -0.00526029 -0.20948882 -0.00009058  0.00097306  0.00011493 -0.00069512 -0.00000269

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003
                               -0.00043469 -0.00590446  0.00012104 -0.00000061  0.00000957  0.00000125  0.00000000 -0.44027863

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00987487  0.00000203  0.00000369 -0.00967507 -0.00000060 -0.00000092  0.00000000 -0.00006588

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000374  0.00000431  0.00001081 -0.00000168  0.00099019  0.01176968  0.00000008  0.00000002

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00691492 -0.00000183 -0.00000286  0.00677498  0.00000049  0.00000152  0.00000000 -0.00003290

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000797  0.00012106  0.00590439  0.00000180  0.00001768 -0.00000675 -0.00000000 -0.00004297

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00016207 -0.00565880  0.00011600 -0.00000148  0.00001162  0.00000099 -0.00000264  0.02567866

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000096  0.00001214 -0.00002079 -0.00000036  0.00651259 -0.00054780 -0.00698685 -0.00000969

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000269 -0.00011603 -0.00565880 -0.00000244 -0.00001740  0.00000677  0.00000051 -0.00000250

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000015 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00001362

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00327757  0.00025544 -0.00018238  0.00087033  0.13813080  0.19867575  0.10488789  0.00000002

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04400038 -0.20950670  0.00429537 -0.00144369  0.00033933  0.00004373  0.00000002  0.00059546

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.67382748 -0.00144638 -0.00005975  0.20954885 -0.00061661 -0.00082759 -0.00048416  0.00000390

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000399 -0.00001350  0.00003834 -0.00000199 -0.00969765  0.00674242  0.00000000  0.00000001

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001273 -0.00022105 -0.01070250 -0.00000505 -0.00003295  0.00001339  0.00000000  0.00009873

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                               -0.00043359 -0.00590434  0.00012337 -0.00000168  0.00000957  0.00000124 -0.00000000  0.44027341

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000606 -0.00010164 -0.00499028 -0.00000212 -0.00001492  0.00000594  0.00000000 -0.00000598

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00602763 -0.00000175 -0.00000328  0.00590573  0.00000053  0.00000251 -0.00000000 -0.00002445

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000050 -0.00000921  0.00000496  0.00000262 -0.00373082 -0.00536614 -0.00698686 -0.00000969

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00016222 -0.00565889  0.00011600 -0.00000107  0.00001058  0.00000322  0.00000264 -0.02567111

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00225224 -0.00000112 -0.00000241  0.00565998  0.00000050  0.00000241 -0.00000000  0.00000390

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001683

 37  1     1    1  |0 0>        0.02126051  0.95492100  0.00115175  0.00025766  0.00367337  0.00053178 -0.00000000 -0.00000006
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00010955 -0.00110510  0.95483829  0.00041996 -0.01263393  0.00349095  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.29542342 -0.00028338 -0.00030502  0.95488891  0.00744739 -0.00458138 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00209790 -0.00366545  0.01274686 -0.00759925  0.95422256 -0.03335130 -0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00148346 -0.00065753 -0.00304945  0.00431682  0.03342756  0.95432743  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000002  0.98327361  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.56815294
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

 44  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00005529
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00023584
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00053325  0.00316931 -0.00006525 -0.00000129 -0.00000506 -0.00000073 -0.00000000  0.00000169
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000467  0.00006526  0.00316930  0.00000316  0.00000936 -0.00000371  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00734201  0.00000123 -0.00000318  0.00316998  0.00000029  0.00000131  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000281  0.00000493 -0.00000857 -0.00000055  0.00310976  0.00061507 -0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000057 -0.00000016  0.00000547 -0.00000123 -0.00061506  0.00310977  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000001  0.00463023  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00059574 -0.00000022 -0.00000013  0.00661286 -0.00000461  0.00468830 -0.00002065 -0.00000267
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000020 -0.00059572  0.00000016 -0.00000441 -0.00661289  0.00002079  0.00468810  0.00000202
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000275 -0.00000395  0.00000000 -0.00003055 -0.00004381 -0.00002079  0.00003146 -0.00000019
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.44028261 -0.00014773 -0.00002081 -0.22736387  0.00015172  0.32873734 -0.00145791 -0.00019285
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00008287  0.00007024  0.26153566 -0.00001683 -0.00005552  0.00006413 -0.00011439  0.05731603
                               -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00014771  0.44027761 -0.00006829 -0.00015171 -0.22736499 -0.00145797 -0.32873775 -0.00008165
                                0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000350 -0.00004662 -0.02287567 -0.00000047  0.00002575  0.00037201 -0.00024625  0.65499560
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006

  8  1     8    1  |1 1>+      -0.00000000  0.00001032  0.00001955 -0.00000001 -0.00000532  0.00001598 -0.00006684 -0.00000095
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.02568708  0.00000107 -0.00000984  0.48161549 -0.00013973  0.28358146 -0.00136460 -0.00016156
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000107  0.02569325 -0.00001157  0.00013973  0.48161797 -0.00136464 -0.28357338 -0.00012230
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000001 -0.00000187  0.00000001  0.00000011 -0.00003512 -0.00004272  0.00000301  0.00001314
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00001361  0.00001684  0.44293275  0.00000905  0.00001063 -0.00000001  0.00000000 -0.00000830
                                0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005  0.00000269 -0.00661282 -0.00000011  0.00003037  0.00000276  0.00001961  0.00468844

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000395 -0.00000000 -0.00000003 -0.00004383 -0.00000038 -0.00003164  0.00000008

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000020  0.00059554  0.00003037  0.00000441  0.00661270  0.00002078  0.00468828 -0.00001962

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003
                                0.00006315  0.00004299 -0.22736171  0.00001002 -0.00000546 -0.00023903  0.00014292 -0.32874733

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.29162388 -0.00006510 -0.00001905 -0.15058637  0.00008357  0.53857368 -0.00236403 -0.00033877

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00003109  0.00001032  0.00000000  0.00001604 -0.00000533 -0.00010743  0.00000969 -0.00002395

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.41642575 -0.00014157  0.00000439 -0.21504637  0.00014446 -0.37715135  0.00167124  0.00021481

 20  1     8    1  |1 0>        0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00012778 -0.44026506 -0.00000546  0.00014142  0.22736257 -0.00141641 -0.32875196 -0.00014188

 21  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.00000203 -0.00000250 -0.48160997 -0.00000985 -0.00001145  0.00016100 -0.00012301  0.28359265

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000187  0.00018166 -0.00000002 -0.00003512  0.00001439  0.00001369 -0.00011248

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000861 -0.02567886  0.00001144 -0.00032138 -0.48161064 -0.00125772 -0.28358203 -0.00012230

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.17245390 -0.00005787 -0.00000905  0.44293554 -0.00029558 -0.00000679  0.00000004  0.00000001

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000275 -0.00000000 -0.00000020  0.00003052 -0.00000002 -0.00002117 -0.00000018 -0.00000026

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000390 -0.00000006 -0.00661295 -0.00004396 -0.00000013  0.00002841  0.00000190 -0.00468812

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00059547 -0.00000020 -0.00004396  0.00661280 -0.00000441 -0.00468818  0.00002081 -0.00002840

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00002090 -0.00000000 -0.00000001 -0.00001080  0.00006632  0.00000228 -0.00002162

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00010484 -0.21485153  0.00005914  0.00009093  0.11092965  0.00266731  0.59590478  0.00016776

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003
                               -0.00002449  0.00006875  0.22733762  0.00000994 -0.00005223 -0.00017951  0.00001281 -0.32876449

 31  1     7    1  |1 1>-      -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00015644  0.46075301 -0.00002059 -0.00015973 -0.23794168  0.00123097  0.27785713  0.00015794

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.44026356 -0.00016563  0.00000997 -0.22735590  0.00016097 -0.32875787  0.00150116  0.00017957

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00018167  0.00000012  0.00000001  0.00002835 -0.00001672  0.00009933

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000390  0.00000251  0.48162325 -0.00002529  0.00001158  0.00018165 -0.00012316  0.28356596

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.02567876  0.00000862 -0.00002529 -0.48161527  0.00032139  0.28357241 -0.00125760 -0.00018221

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00005787 -0.17245458  0.00001064 -0.00029558 -0.44293560 -0.00000007 -0.00001535 -0.00000002

 37  1     1    1  |0 0>        0.00000000 -0.00000001 -0.00000030  0.00000000 -0.00000000 -0.00000582  0.00027342 -0.01234047
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000028  0.00000001 -0.00000000 -0.00000012  0.00005505  0.01233885  0.00027232
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000032 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.01234314 -0.00005307 -0.00000654
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009596  0.00020280  0.00007062
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00005930 -0.00005330  0.00001139
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00023582 -0.00005540 -0.40928465 -0.00021055 -0.00000971  0.00000001 -0.00000000  0.00000496
                               -0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00027114  0.56816087 -0.00000968 -0.00005953  0.40927425  0.00000008  0.00001577  0.00000001
                                0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.56815827 -0.00027112  0.00021056 -0.40927658 -0.00005953  0.00001292 -0.00000008 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000001 -0.00000000  0.00000921 -0.00000001 -0.00000001  0.00054037 -0.00015219  0.43646675
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004

 47  1    11    1  |0 0>        0.00000000  0.00000506 -0.00000000  0.00000001  0.00000566 -0.00218225 -0.43645901 -0.00014949
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

 48  1    12    1  |0 0>        0.00000773 -0.00000000  0.00000000  0.00000370 -0.00000000 -0.43645803  0.00218206  0.00054112
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000201 -0.00005767 -0.00000572
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00005241  0.00002372 -0.00000779
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00002318  0.00000753  0.00004330 -0.00000185 -0.00644559 -0.00000137 -0.00000008 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00003444 -0.00001093 -0.00006218 -0.00000012  0.00000117 -0.00644548 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00514068  0.00169763  0.00938139  0.00000001  0.00002976 -0.00004271  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00003828 -0.00002121  0.00000000  0.00009268  0.23262507  0.00004243  0.72914461 -0.00012983
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00001746 -0.00004553 -0.00000000 -0.26757481  0.00009931 -0.00005844  0.00013105  0.72728258
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001804

  6  1     6    1  |1 1>+       0.00003111 -0.00003704 -0.00000000  0.00007130  0.00004240 -0.23260871  0.00001079 -0.00005575
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00002328  0.00001315 -0.00000000  0.02342160 -0.00000671  0.00002650  0.00001118  0.16831775
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000417

  8  1     8    1  |1 1>+      -0.20618324  0.62433716  0.00000435 -0.00002000  0.00000001 -0.00000545  0.00005504  0.00004277
                                0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00003292 -0.00001827 -0.00000013  0.00011336  0.39569476 -0.00007707  0.00000858  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000001 -0.00002683  0.00003919 -0.00000711 -0.00007707 -0.39569610 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.31092320 -0.10268506  0.53740162  0.00000000  0.00000010  0.00002886 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.17503642 -0.00005014 -0.00000313  0.00000000 -0.00000149
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000005  0.00000019  0.00000029  0.00644566 -0.00000185  0.00002964 -0.00000000 -0.00000020

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00404031  0.00360303  0.00938166  0.00000000  0.00000001 -0.00004272 -0.00000000 -0.00000000

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002715  0.00002420  0.00006218 -0.00002964 -0.00000117  0.00644550 -0.00000000  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001590
                               -0.00001211 -0.00000528  0.00000000  0.23262144 -0.00008165 -0.00000417  0.00011347  0.64092778

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00005626  0.00009866 -0.00000001  0.00006678  0.15406679  0.00001080 -0.64841055  0.00011492

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.43759911  0.49073844 -0.00001704 -0.00000002 -0.00001642 -0.00000545  0.00010202  0.00001059

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000674 -0.00003246 -0.00000000  0.00006304  0.22002794  0.00004110 -0.16598390  0.00001383

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                                0.00003653 -0.00001093 -0.00000001  0.00000415 -0.00003189  0.23261673 -0.00003823  0.00002692

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00010264 -0.00007764  0.00020271 -0.39569917  0.00011336  0.00000699  0.00000000  0.00002481

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.24440725 -0.21792980  0.53739508  0.00014926 -0.00000004  0.00002886 -0.00000000 -0.00000001

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000484 -0.00000344 -0.00003920  0.00000695 -0.00007218  0.39569711 -0.00000000 -0.00000001

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.00000000  0.00005015  0.17503617  0.00003193 -0.00000264  0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00109995  0.00530070 -0.00938172  0.00000019 -0.00002975 -0.00000001  0.00000000 -0.00000000

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000018 -0.00000008 -0.00000000  0.00644562  0.00004087 -0.00000011 -0.00000000 -0.00000008

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000453 -0.00002417  0.00004331  0.00004087 -0.00644553 -0.00000118  0.00000004 -0.00000000

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.64379423 -0.13361116 -0.00001045 -0.00000000  0.00000001 -0.00001104  0.00005504 -0.00001064

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001502  0.00002764  0.00000001 -0.00006123 -0.00003799  0.11351893  0.00002030  0.00005409

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000443
                               -0.00001213 -0.00000529  0.00000000 -0.23262089  0.00006121 -0.00005487 -0.00001429 -0.17871968

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00002219  0.00001895  0.00000000  0.00002257  0.00004537 -0.24344609  0.00000247 -0.00002276

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003826  0.00002121  0.00000000  0.00006119  0.23260915  0.00005189 -0.14269264  0.00000700

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.06654798  0.32062265  0.53739893  0.00014926  0.00000005 -0.00000001  0.00000000  0.00000001

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001465 -0.00011638 -0.00020271  0.39569593 -0.00014222 -0.00000709  0.00000000  0.00000904

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00003300 -0.00001822  0.00000015 -0.00014222 -0.39569804 -0.00007218  0.00000725 -0.00000000

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00000000  0.00000312 -0.00003193  0.17503778 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00003828 -0.00005531 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000048
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00018236  0.00010536  0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00011082 -0.00002551 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000016  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00879765 -0.00865532 -0.00000015  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00865592 -0.00879988  0.00000023  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000020  0.00000005  0.01273964  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000001  0.00000000  0.00000000  0.68975058  0.00014314 -0.00001232 -0.00000000 -0.00000107
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00001223  0.00043480  0.68975137 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000001  0.00000000 -0.00014314  0.68975168 -0.00043479 -0.00000890  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000349  0.00000895 -0.00000000  0.00000229 -0.00000001 -0.00000000  0.00000001  0.00001072
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00005108 -0.00003596 -0.00000000 -0.00000000  0.00000000  0.00000468 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00004513  0.00002648 -0.00000000  0.00000000  0.00000793 -0.00000000 -0.00000653  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.23308053  0.36900914  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.36900516  0.23308010 -0.00000423 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000334  0.00000119  0.36494104  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000611 -0.00228861  0.00000066
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000022 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000050  0.00000059  0.00228863
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000042  0.00001037  0.00001509
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00001195 -0.00007084  0.00002907  0.00000471 -0.04089114 -0.00058821 -0.22183348  0.00005754
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00001528  0.00021210 -0.26273971  0.00001456 -0.00000570 -0.03869428  0.00008166 -0.00005200
                                0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.73018559 -0.00001657 -0.00003547 -0.01248024 -0.00002241 -0.00008836 -0.00005730 -0.22185460
                               -0.00000104  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000005

  7  1     7    1  |1 1>+       0.00001662 -0.00050415  0.55408731 -0.00002263  0.00000452 -0.44198955  0.00117953  0.00012047
                               -0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000011  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00001946  0.57732710  0.00050918 -0.00000472 -0.00001843 -0.00001231  0.00002012  0.00009669
                                0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000001 -0.00000000  0.00000000  0.00000000  0.00000243  0.00149717  0.56100992  0.00006609
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00003450  0.00000000 -0.00000000  0.00000856  0.00000000  0.00012015 -0.00006642  0.56100781
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000013

 11  1    11    1  |1 1>+      -0.00000000  0.00001916  0.00000002 -0.00000000 -0.00000001 -0.00011079 -0.00004845 -0.00006008
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000121  0.00000000  0.00000000  0.00000466 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00228852  0.00000611  0.00001105

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000021 -0.00000000 -0.00000000  0.00000000  0.00000016  0.00000020 -0.00001460

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000009  0.00000000  0.00001106  0.00000057  0.00228822

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                               -0.00002571 -0.00031023  0.35007692 -0.00001087  0.00000564  0.22179653 -0.00055654 -0.00004758

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000543 -0.00009598  0.00003130 -0.00003943 -0.02537889 -0.00094821 -0.36339999  0.00011077

 18  1     6    1  |1 0>        0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000692 -0.57735043 -0.00053107 -0.00001203 -0.00005525 -0.00007101  0.00010948  0.00004473

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001477  0.00006041  0.00000491  0.00019747 -0.69620910  0.00067914  0.25448484 -0.00006694

 20  1     8    1  |1 0>        0.00000028 -0.00000000  0.00000000 -0.00000092 -0.00000001  0.00000000 -0.00000000 -0.00000005
                                0.19461881 -0.00000891 -0.00001312  0.70388275  0.00019112 -0.00004781 -0.00008551 -0.22184862

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                               -0.00000001 -0.00000003  0.00001586 -0.00000000  0.00000000  0.56100169 -0.00149712 -0.00012042

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00005212 -0.00000005  0.00000000  0.00000000 -0.00017046  0.00005030  0.00017938

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                                0.00000966  0.00000000  0.00000000  0.00001091  0.00000000  0.00012087  0.00014519  0.56099844

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000234 -0.00000003 -0.00001142  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00000019  0.00001057  0.00000048

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000005  0.00000000  0.00000000  0.00228834 -0.00002127 -0.00000049

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00002127  0.00228812 -0.00000060

 28  1     4    1  |1 1>-      -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00005750  0.57737254  0.00053110 -0.00000943 -0.00001842 -0.00006007 -0.00003888 -0.00010144

 29  1     5    1  |1 1>-       0.00000088 -0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000009
                                0.61510315  0.00005402  0.00005133  0.05115738 -0.00005506  0.00014677  0.00008739  0.40207108

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000017 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                                0.00000197 -0.00065463  0.70809633  0.00003411 -0.00001118  0.22180615 -0.00059715 -0.00013520

 31  1     7    1  |1 1>-      -0.00000032  0.00000000 -0.00000000 -0.00000092 -0.00000001 -0.00000000  0.00000000  0.00000004
                               -0.22494582  0.00000638  0.00000309  0.70836160  0.00020522  0.00001467  0.00004952  0.18748205

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00006742  0.00003645  0.00001024 -0.00019643  0.71622386  0.00059719  0.22183329 -0.00002842

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00002150  0.00000003  0.00000000  0.00000000  0.00028125 -0.00000184 -0.00011930

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                                0.00000001 -0.00000004  0.00002824  0.00000000  0.00000000  0.56100288 -0.00145623 -0.00012029

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000430  0.00145617  0.56099698 -0.00014551

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000333  0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000  0.00000844

 37  1     1    1  |0 0>        0.00000001  0.00000000  0.00000046  0.00000001  0.00000000  0.01497272 -0.00003987  0.00032200
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000038 -0.00000002 -0.00000001  0.00000024  0.00000000 -0.00032069  0.00000453  0.01497088
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000004 -0.00004058 -0.01497573  0.00000588
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000001  0.00000094 -0.00000000  0.00000000  0.00000000 -0.00008620  0.00011731  0.00024073
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00001108 -0.00007343 -0.00006538
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000383  0.00000000  0.00000000  0.00000084 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000244 -0.00000000  0.00000000  0.00000238  0.00000000  0.00000000 -0.00000000 -0.00000023
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000653 -0.00000001 -0.00000214 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000 -0.00000001  0.00001311 -0.00000000  0.00000000  0.27398450 -0.00054762 -0.00008301
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00001559 -0.00000000  0.00000000  0.00000630  0.00000000  0.00008285 -0.00008391  0.27398734
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006

 48  1    12    1  |0 0>       -0.00000001  0.00000000  0.00000001 -0.00000000  0.00000108 -0.00054764 -0.27398269 -0.00008374
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00002694  0.00000002 -0.00000000 -0.00000000 -0.00000981 -0.00001601 -0.00005429
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000000 -0.00000640 -0.00000001 -0.00000000  0.00000000  0.00005315  0.00001335 -0.00001386
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000044 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00001116 -0.00000449 -0.00000016  0.00841461  0.00000408 -0.00000489  0.00000521  0.00823202
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00001605  0.00000686 -0.00000009 -0.00000382  0.00841455 -0.00000035  0.00823193 -0.00000496
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00245975 -0.00096451  0.00000000 -0.00003887  0.00005575  0.00000022  0.00005406 -0.00003794
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00001924 -0.00000323 -0.00000172 -0.01842374 -0.00000838 -0.00005574  0.00005813  0.09648818
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000625  0.00003405  0.02119676 -0.00000140  0.00000524 -0.01682404 -0.00002694 -0.00000060
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00002093 -0.00003536 -0.00000618 -0.00000838  0.01842057 -0.00001357 -0.09648593  0.00005812
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00006683  0.00003637 -0.00185360 -0.00000003 -0.00000215 -0.19224282  0.00000292 -0.00011433
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.16198854 -0.41305526  0.00000158 -0.00000000  0.00000043 -0.00000486  0.00001087  0.00000088
                                0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00004855  0.00000826  0.00000624 -0.33285905 -0.00002579 -0.00019253  0.00007293  0.32375301
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00010649  0.00009662 -0.00000365 -0.00002579  0.33286131  0.00001384 -0.32375911  0.00007294
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.60309740 -0.23649144 -0.00000000 -0.00000008 -0.00002428 -0.00000801  0.00004209 -0.00000342
                               -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000  0.86212745  0.00001616  0.00000947  0.00000081  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000042 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000040  0.00000015 -0.00841460 -0.00000014 -0.00003893 -0.00823202  0.00003764 -0.00000492

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00206519 -0.00164798 -0.00000000 -0.00000003  0.00005577 -0.00000029 -0.00005376  0.00000003

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001343 -0.00001046  0.00003893  0.00000383 -0.00841452  0.00003765  0.00823180 -0.00000494

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003321 -0.00001912 -0.01843173  0.00000084 -0.00000020  0.09648553  0.00000413  0.00004200

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00004371 -0.00009954 -0.00000157 -0.01220860 -0.00000418 -0.00008461  0.00010241  0.15807103

 18  1     6    1  |1 0>        0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.27674723 -0.34674488 -0.00000000  0.00000130  0.00000043  0.00000140  0.00000054 -0.00005378

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000996  0.00004383  0.00000033 -0.01742669 -0.00000800  0.00006583 -0.00006709 -0.11069255

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001824 -0.00005316  0.00000020  0.00000754 -0.01842602  0.00000410 -0.09649096  0.00007035

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00010702 -0.00020075  0.33286452  0.00000624  0.00000374 -0.32375802 -0.00001382 -0.00019252

 22  1    10    1  |1 0>       -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.50634822 -0.40405498 -0.00012556  0.00000001 -0.00002428  0.00013352 -0.00005489  0.00000036

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00009945  0.00014334  0.00000375  0.00015135 -0.33287962  0.00001368 -0.32375993  0.00019506

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00001617  0.86212647  0.00039199  0.00000000 -0.00000001 -0.00000321

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00039454 -0.00261243 -0.00000026  0.00003884  0.00000002  0.00000019  0.00000030 -0.00003792

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000034 -0.00000020 -0.00841456 -0.00005593 -0.00000012  0.00823187  0.00000039  0.00005945

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000162  0.00001209 -0.00005592  0.00841453  0.00000383  0.00005945 -0.00000496 -0.00823174

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.43864038  0.06622996  0.00000000  0.00000000  0.00000087  0.00000578 -0.00003185  0.00000113

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00008750  0.00008805  0.00000511  0.00000546 -0.00899288  0.00001879  0.17489297 -0.00009818

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003318 -0.00001913  0.01843336  0.00000078  0.00000488  0.09649062 -0.00003397  0.00005966

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002090  0.00003806 -0.00000234 -0.00000884  0.01928370 -0.00001463  0.08155158 -0.00004954

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001925  0.00000323  0.00000078 -0.01842554 -0.00000913  0.00005964 -0.00004546 -0.09648982

 33  1     9    1  |1 1>-      -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.09674082  0.64054050 -0.00012556 -0.00000009 -0.00000000 -0.00012551  0.00001280  0.00000308

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00012047 -0.00028995 -0.33286917  0.00001804 -0.00000364 -0.32375945 -0.00001388 -0.00016891

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00004863  0.00000833  0.00001804  0.33287969  0.00015135 -0.00016893  0.00019505  0.32375951

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000946 -0.00039199  0.86212598  0.00000000 -0.00000487  0.00000000

 37  1     1    1  |0 0>        0.00005288  0.00006299 -0.00000010  0.00000000 -0.00000001  0.00051052  0.00001111  0.00000030
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00022505 -0.00011152  0.00000000  0.00000000 -0.00000023 -0.00001107  0.00051044 -0.00000031
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00013633  0.00002227 -0.00000000 -0.00000030 -0.00000000 -0.00000032  0.00000038  0.00051067
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.01123239  0.00990178  0.00000000  0.00000000 -0.00000000 -0.00000291  0.00000827 -0.00000403
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00990207  0.01123521  0.00000000 -0.00000000  0.00000000 -0.00000046 -0.00000218  0.00000252
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000003 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000  0.18401540  0.00009435  0.00000205 -0.00000073  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000209  0.00006590  0.18401072  0.00000000 -0.00000115 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00009436  0.18401205 -0.00006590  0.00000000 -0.00000000 -0.00000258
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00004896 -0.00002283 -0.00000294  0.00000000 -0.00000000  0.85695064 -0.00003928 -0.00006450
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00002017  0.00005227 -0.00000000  0.00000000 -0.00000264  0.00003928  0.85695124 -0.00003222
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00002026 -0.00000529 -0.00000000 -0.00000585  0.00000000  0.00006450  0.00003222  0.85695290
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.15875759  0.22327033  0.00000000  0.00000000  0.00000000  0.00000704 -0.00003960 -0.00000499
                               -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.22327721  0.15875007  0.00000000  0.00000000  0.00000000  0.00000575  0.00000666  0.00000247
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000279 -0.00000146  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00000775 -0.00004311  0.00003898
                                0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00001046  0.00006171 -0.00005596
                               -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00167288 -0.00935685  0.00844420
                                0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000028  0.00000096  0.00000000
                               -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00001457  0.00000224  0.00000000
                                0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000286  0.00000433  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000426 -0.00000342 -0.00000000
                                0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.18997512 -0.03396538 -0.00000136
                               -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000095  0.00000315  0.00000005
                               -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00002931  0.00003871 -0.00001537
                               -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.06579176  0.36798379 -0.21080523
                               -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000005 -0.00000004  0.00000026

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00893993  0.00322974  0.00844417

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00005863  0.00002110  0.00005596

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000253  0.00000164  0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00001737 -0.00004776  0.00000000

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.06557288 -0.18150074  0.00000318

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                                0.00000726  0.00001990  0.00000000

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000884 -0.00000072 -0.00000000

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.00014111 -0.00005344 -0.00007951

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.35158152 -0.12702168 -0.21080127

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00005016  0.00002114  0.00001538

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00726701 -0.00612745 -0.00844432

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00000022  0.00000014 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00003352  0.00002820  0.00003898

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.12439510 -0.14753362  0.00000107

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00002535 -0.00002077 -0.00000000

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.00000254  0.00000165 -0.00000000

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00000618 -0.00000299  0.00000000

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                               -0.00000028 -0.00000096 -0.00000000

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.28578560 -0.24096731 -0.21080146

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00011629  0.00008537  0.00007951

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                                0.00000086  0.00000317 -0.00000006

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000276 -0.00000032  0.00000000
                                0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000734  0.00000453 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000311 -0.00000359  0.00000000
                                0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00048844 -0.00014975  0.00000001
                                0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00014995  0.00048851  0.00000000
                                0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000004 -0.00000004 -0.00617457
                                0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000742 -0.00000526 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00003906 -0.00000931  0.00000000
                                0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000481 -0.00000280 -0.00000000
                               -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.85501446 -0.05777664 -0.00000081
                                0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.05777907  0.85501572 -0.00000032
                                0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000117  0.00000131  0.93082472
                                0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.23%
  2  1     2    1  |1 1>+         0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   45.59%    0.00%
  3  1     3    1  |1 1>+        32.22%    0.00%    0.00%    0.00%   55.62%    5.17%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   45.36%
 14  1     2    1  |1 0>         32.22%    0.00%    0.00%    0.00%   32.48%   28.32%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   45.60%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        32.22%    0.00%    0.00%    0.00%    3.09%   57.70%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   45.40%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.19%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    8.72%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.76%    0.01%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.26%    4.51%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.52%    4.26%    0.00%    0.00%
 42  1     6    1  |0 0>          3.30%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        45.36%    0.00%    0.00%    4.39%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    4.39%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.06%    4.79%    1.10%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.65%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.20%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.97%
 13  1     1    1  |1 0>          0.23%    4.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.81%    0.04%    1.10%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    4.39%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.38%
 17  1     5    1  |1 0>          0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.91%    3.95%    1.10%    0.00%
 26  1     2    1  |1 1>-         0.19%    4.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-        45.40%    0.00%    0.00%    4.39%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.38%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.05%   91.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%   91.17%    0.00%    0.02%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          8.73%    0.00%    0.00%   91.18%    0.01%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.02%    0.01%   91.05%    0.11%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.11%   91.07%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.68%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.28%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        19.38%    0.00%    0.00%    5.17%    0.00%   10.81%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    6.84%    0.00%    0.00%    0.00%    0.00%    0.33%
  6  1     6    1  |1 1>+         0.00%   19.38%    0.00%    0.00%    5.17%    0.00%   10.81%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%   42.90%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.07%    0.00%    0.00%   23.20%    0.00%    8.04%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.07%    0.00%    0.00%   23.20%    0.00%    8.04%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%   19.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    5.17%    0.00%    0.00%    0.00%    0.00%   10.81%
 17  1     5    1  |1 0>          8.50%    0.00%    0.00%    2.27%    0.00%   29.01%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>         17.34%    0.00%    0.00%    4.62%    0.00%   14.22%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%   19.38%    0.00%    0.00%    5.17%    0.00%   10.81%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%   23.19%    0.00%    0.00%    0.00%    0.00%    8.04%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.07%    0.00%    0.00%   23.19%    0.00%    8.04%    0.00%
 24  1    12    1  |1 0>          2.97%    0.00%    0.00%   19.62%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    4.62%    0.00%    0.00%    1.23%    0.00%   35.51%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    5.17%    0.00%    0.00%    0.00%    0.00%   10.81%
 31  1     7    1  |1 1>-         0.00%   21.23%    0.00%    0.00%    5.66%    0.00%    7.72%    0.00%
 32  1     8    1  |1 1>-        19.38%    0.00%    0.00%    5.17%    0.00%   10.81%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%   23.20%    0.00%    0.00%    0.00%    0.00%    8.04%
 35  1    11    1  |1 1>-         0.07%    0.00%    0.00%   23.20%    0.00%    8.04%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    2.97%    0.00%    0.00%   19.62%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   16.75%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%   32.28%    0.00%    0.00%   16.75%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>         32.28%    0.00%    0.00%   16.75%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.05%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.05%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   19.05%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.41%    0.00%   53.17%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    7.16%    0.00%    0.00%    0.00%   52.89%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.41%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    2.83%
  8  1     8    1  |1 1>+         4.25%   38.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.66%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   15.66%    0.00%    0.00%
 11  1    11    1  |1 1>+         9.67%    1.05%   28.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    3.06%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    5.41%    0.00%    0.00%    0.00%   41.08%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    2.37%    0.00%   42.04%    0.00%
 18  1     6    1  |1 0>         19.15%   24.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.84%    0.00%    2.76%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.41%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   15.66%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          5.97%    4.75%   28.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   15.66%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.06%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        41.45%    1.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    1.29%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    5.41%    0.00%    0.00%    0.00%    3.19%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.93%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    5.41%    0.00%    2.04%    0.00%
 33  1     9    1  |1 1>-         0.44%   10.28%   28.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   15.66%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   15.66%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    3.06%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   47.58%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   47.58%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   47.58%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          5.43%   13.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>         13.62%    5.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   13.32%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    4.92%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    6.90%    0.00%    0.00%    0.15%    0.00%    0.00%
  6  1     6    1  |1 1>+        53.32%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    4.92%
  7  1     7    1  |1 1>+         0.00%    0.00%   30.70%    0.00%    0.00%   19.54%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.47%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.47%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%   12.26%    0.00%    0.00%    4.92%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%   13.21%    0.00%
 18  1     6    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   48.47%    0.00%    6.48%    0.00%
 20  1     8    1  |1 0>          3.79%    0.00%    0.00%   49.55%    0.00%    0.00%    0.00%    4.92%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   31.47%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.47%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-        37.84%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%   16.17%
 30  1     6    1  |1 1>-         0.00%    0.00%   50.14%    0.00%    0.00%    4.92%    0.00%    0.00%
 31  1     7    1  |1 1>-         5.06%    0.00%    0.00%   50.18%    0.00%    0.00%    0.00%    3.51%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   51.30%    0.00%    4.92%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.47%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.47%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.51%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.51%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.51%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.93%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.03%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.93%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    3.70%    0.00%    0.00%
  8  1     8    1  |1 1>+         2.62%   17.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   11.08%    0.00%    0.00%    0.00%   10.48%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.08%    0.00%   10.48%    0.00%
 11  1    11    1  |1 1>+        36.37%    5.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%   74.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.93%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    2.50%
 18  1     6    1  |1 0>          7.66%   12.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    1.23%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.93%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%   11.08%    0.00%    0.00%   10.48%    0.00%    0.00%
 22  1    10    1  |1 0>         25.64%   16.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.08%    0.00%   10.48%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%   74.33%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
 28  1     4    1  |1 1>-        19.24%    0.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    3.06%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.93%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.67%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.93%
 33  1     9    1  |1 1>-         0.94%   41.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%   11.08%    0.00%    0.00%   10.48%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%   11.08%    0.00%    0.00%    0.00%   10.48%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   74.33%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    3.39%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.39%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    3.39%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   73.44%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   73.44%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   73.44%
 49  1    13    1  |0 0>          2.52%    4.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          4.99%    2.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         3.61%    0.12%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.43%   13.54%    4.44%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.43%    3.29%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         12.36%    1.61%    4.44%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.01%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         1.55%    2.18%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         8.17%    5.81%    4.44%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         73.10%    0.33%    0.00%
 50  1    14    1  |0 0>          0.33%   73.11%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   86.64%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1931.38       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     87979.94  81183.30   3397.75   3395.56      2.12      0.12      0.81
 REAL TIME  *     89081.14 SEC
 DISK USED  *         1.92 GB (local),       30.87 GB (total)
 SF USED    *        10.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -213.863252658738

              CI              CI           MULTI         RHF-SCF
   -213.81239223   -213.82449273   -213.15979562   -213.37364695
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
