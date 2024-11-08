
 Working directory              : /wrk/irikura/molpro.XUqoyl5Ckd/
 Global scratch directory       : /wrk/irikura/molpro.XUqoyl5Ckd/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.XUqoyl5Ckd/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Sn SO-CI
                                                                                 ! Heaver weight on the three ground terms
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
 weight,3[5],(NTRIP-3)[1]
     wf,nelec=22,sym=1,spin=0;state,NSING;
 weight,6[5],(NSING-6)[1]
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 21-Sep-24          TIME: 11:13:27  
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
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    112 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      632995.  Node maximum:      639690. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.18      0.82
 REAL TIME  *         2.03 SEC
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
   1     -213.37042742    -213.37042742     0.00D+00     0.11D+00     0     0       0.00      0.01    start
   2     -213.37324138      -0.00281397     0.12D-02     0.37D-02     1     0       0.01      0.02    diag2
   3     -213.37354413      -0.00030275     0.66D-03     0.88D-03     2     0       0.00      0.02    diag2
   4     -213.37363445      -0.00009032     0.21D-03     0.69D-03     3     0       0.01      0.03    diag2
   5     -213.37364498      -0.00001053     0.56D-04     0.25D-03     4     0       0.00      0.03    diag2
   6     -213.37364643      -0.00000145     0.13D-04     0.10D-03     5     0       0.01      0.04    diag2
   7     -213.37364681      -0.00000038     0.47D-05     0.39D-04     6     0       0.00      0.04    diag2
   8     -213.37364694      -0.00000013     0.21D-05     0.30D-04     7     0       0.01      0.05    fixocc
   9     -213.37364695      -0.00000001     0.66D-06     0.83D-05     8     0       0.00      0.05    diag2
  10     -213.37364695      -0.00000000     0.23D-06     0.18D-05     9     0       0.01      0.06    diag2/orth
  11     -213.37364695      -0.00000000     0.62D-07     0.40D-06     0     0       0.00      0.06    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373646949783
  RHF One-electron energy            -381.082869982926
  RHF Two-electron energy             167.709223033143
  RHF Kinetic energy                   82.647997050015
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581715886238

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62717     1  1  s    1.00643
    2.1     2.00000    -1.07701     1  1  d2-  0.99940
    3.1     2.00000    -1.07701     1  1  d2+  0.99908
    4.1     2.00000    -1.07701     1  1  d1-  0.99662
    5.1     2.00000    -1.07701     1  1  d1+  0.99631
    6.1     2.00000    -1.07701     1  1  d0   0.99974
    7.1     2.00000    -0.29349     1  2  s    0.97918
    1.2     2.00000    -3.81347     1  1  px   1.00043
    2.2     2.00000    -3.81347     1  1  py   1.00005
    3.2     2.00000    -3.81347     1  1  pz   1.00005
    4.2     1.00000    -0.05737     1  2  py   0.78687
    5.2     1.00000    -0.05737     1  2  px   0.79192
    6.2     1.00000    -0.05737     1  2  pz   0.78687


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
 CPU TIMES  *         1.26      0.08      0.82
 REAL TIME  *         3.23 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.329D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.539D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.794D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.986D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 6   4 3 5 1 2 6 4 3 5 1   2 5 3 6 4 1 2 4 6 3   5 2 3 5 4 6 1 81214
                                       151310 911 7 2 4 6 5   3 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.271D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.271D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.307D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.307D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 3   2 1 4 5 7 9 6 810 3   2 1 9 7 4 5 610 8 4   5 6 810 9 7 3 2 1 8
                                       10 6 4 5 7 9 3 1 2 8  10 6 4 5 7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.07937   0.07937   0.07937   0.01587   0.01587   0.01587   0.01587   0.01587
                                          0.01587   0.01587   0.01587   0.01587
 Weight factors for state symmetry  2:    0.07937   0.07937   0.07937   0.07937   0.07937   0.07937   0.01587   0.01587
                                          0.01587   0.01587   0.01587   0.01587   0.01587   0.01587   0.01587
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    6331
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   24    0   -213.24141460    -213.27822532   -0.03681072    0.13851932 0.00012499 0.00000000  0.12E+01      0.87
   2    7   12    0   -213.27176145    -213.27315003   -0.00138858    0.08408312 0.00012051 0.00000000  0.24E+00      1.53
   3    4    8    0   -213.27315463    -213.27315469   -0.00000006    0.00041438 0.00000097 0.00000000  0.16E-02      1.99
   4    4    8    0   -213.27315469    -213.27315469   -0.00000000    0.00000006 0.00000001 0.00000000  0.34E-05      2.48

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.71E-08)
                       Final energy:   -213.27315469
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.344750148106
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.69157000
 One electron energy                          -376.33904134
 Two electron energy                           162.99429119
 Virial ratio                                    3.58000604
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.344750147756
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.69157001
 One electron energy                          -376.33904139
 Two electron energy                           162.99429124
 Virial ratio                                    3.58000604
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.344750147164
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.69157002
 One electron energy                          -376.33904144
 Two electron energy                           162.99429130
 Virial ratio                                    3.58000604
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.166430778614
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22485746
 One electron energy                          -371.54485354
 Two electron energy                           158.37842276
 Virial ratio                                    3.59248161
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.166430778533
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22485746
 One electron energy                          -371.54485356
 Two electron energy                           158.37842278
 Virial ratio                                    3.59248161
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.166430778217
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22485744
 One electron energy                          -371.54485347
 Two electron energy                           158.37842269
 Virial ratio                                    3.59248161
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.166430777783
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22485744
 One electron energy                          -371.54485350
 Two electron energy                           158.37842272
 Virial ratio                                    3.59248161
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.166430777744
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22485744
 One electron energy                          -371.54485348
 Two electron energy                           158.37842270
 Virial ratio                                    3.59248161
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.161995303874
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.29703182
 One electron energy                          -371.90795980
 Two electron energy                           158.74596450
 Virial ratio                                    3.59015411
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.161995303490
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.29703185
 One electron energy                          -371.90795993
 Two electron energy                           158.74596463
 Virial ratio                                    3.59015411
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.161995303148
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.29703183
 One electron energy                          -371.90795985
 Two electron energy                           158.74596455
 Virial ratio                                    3.59015411
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.159959354544
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22474143
 One electron energy                          -371.54302427
 Two electron energy                           158.38306491
 Virial ratio                                    3.59240656
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.309823671069
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.65421269
 One electron energy                          -376.12425872
 Two electron energy                           162.81443505
 Virial ratio                                    3.58074957
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.309823670951
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.65421269
 One electron energy                          -376.12425872
 Two electron energy                           162.81443505
 Virial ratio                                    3.58074957
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.309823670436
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.65421270
 One electron energy                          -376.12425877
 Two electron energy                           162.81443510
 Virial ratio                                    3.58074957
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.309823669772
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.65421271
 One electron energy                          -376.12425880
 Two electron energy                           162.81443513
 Virial ratio                                    3.58074957
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.309823669704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.65421272
 One electron energy                          -376.12425881
 Two electron energy                           162.81443514
 Virial ratio                                    3.58074957
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.279880234981
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.60976025
 One electron energy                          -375.79128935
 Two electron energy                           162.51140911
 Virial ratio                                    3.58177580
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.170749347962
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22492988
 One electron energy                          -371.54600343
 Two electron energy                           158.37525408
 Virial ratio                                    3.59253185
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.170749347554
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22492986
 One electron energy                          -371.54600334
 Two electron energy                           158.37525399
 Virial ratio                                    3.59253185
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.170749347294
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.22492986
 One electron energy                          -371.54600338
 Two electron energy                           158.37525403
 Virial ratio                                    3.59253185
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.152411734962
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33715494
 One electron energy                          -372.13369839
 Two electron energy                           158.98128665
 Virial ratio                                    3.58877553
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.152411734948
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33715494
 One electron energy                          -372.13369838
 Two electron energy                           158.98128664
 Virial ratio                                    3.58877553
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.152411734033
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33715496
 One electron energy                          -372.13369853
 Two electron energy                           158.98128679
 Virial ratio                                    3.58877553
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.152411733790
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33715494
 One electron energy                          -372.13369843
 Two electron energy                           158.98128669
 Virial ratio                                    3.58877553
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.152411733553
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33715495
 One electron energy                          -372.13369850
 Two electron energy                           158.98128676
 Virial ratio                                    3.58877553
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.140094353261
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.37815056
 One electron energy                          -372.35397663
 Two electron energy                           159.21388228
 Virial ratio                                    3.58733770
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000001
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.184182415472
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999995
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999999977
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999999939
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.815814257907
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999921
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999995
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.000000000084
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.655055005418
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999994
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999999995
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999999
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.344945843147
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000001
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999995
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999307
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000939
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.676075912284
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.999999999871
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.999999999996
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     3.999999999341
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     3.323924809991
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000005
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000001
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.633928678105
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999969
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000070
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999858
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.366066745712
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999995
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.000000000009
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999995
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.200055561630
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000007
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999995
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.799945097280
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000001
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000010
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999995
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999995
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.363725255978
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000000000142
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     3.999999999976
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000001508
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     2.636273829840
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000005
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000002
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.181888906382
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999999995
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999911
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000162
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.818118996339
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000084
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999999995
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.999999999921
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.144889432946
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999992
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999999
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.855109059566
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000001
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999999995
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000000698
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999067
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.960198831706
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.999999999955
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.999999999996
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     0.999999999118
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     0.039801360137
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>     0.000000000005
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     5.999999999958
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     5.999999999958
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     5.999999999958
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     5.999999999958
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     5.999999999958
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000021
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     5.999999999994
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999994
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999994
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999994
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999994
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000004
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     5.999999999968
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     5.999999999968
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     5.999999999968
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     5.999999999967
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     5.999999999967
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>     0.000000000014
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 4 2   3 5 6 1 2 4 6 3 5 1   3 5 4 2 6 1 3 5 4 2   6 3 5 6 4 2 1131014
                                       15 81211 7 9 5 3 6 4   2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 1 3 3   1 2 4 6 810 5 7 9 3   1 2 7 9 4 810 6 5 7   9 810 4 5 6 1 3 2 7
                                        9 810 5 4 6 2 1 3 7   9 810 5 4 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91225     1  1  s    1.00515
    2.1     2.00000    -1.36183     1  1  d2-  1.00053
    3.1     2.00000    -1.36183     1  1  d2+  1.00053
    4.1     2.00000    -1.36183     1  1  d1-  1.00053
    5.1     2.00000    -1.36183     1  1  d1+  1.00053
    6.1     2.00000    -1.36183     1  1  d0   1.00053
    7.1     1.95940    -0.54392     1  2  s    1.04467
    1.2     2.00000    -4.09809     1  1  py   0.99980
    2.2     2.00000    -4.09809     1  1  px   0.99980
    3.2     2.00000    -4.09809     1  1  pz   0.99980
    4.2     0.58262    -0.09312     1  2  pz   1.00743
    5.2     0.58262    -0.09312     1  2  py   1.00743
    6.2     0.58262    -0.09312     1  2  px   1.00743
    7.2     0.09758     0.03981     1  2  py  -0.49169    1  7  py   0.76838    1  8  py   0.43422
    8.2     0.09758     0.03981     1  2  px  -0.49169    1  7  px   0.76838    1  8  px   0.43422
    9.2     0.09758     0.03981     1  2  pz  -0.49169    1  7  pz   0.76838    1  8  pz   0.43422
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000       0.00000006     -0.00000010      0.99230229     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 0aa000       0.00000042      0.99230229      0.00000010     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 aa0000       0.99230229     -0.00000042     -0.00000006      0.00000000      0.00000000      0.00000000     -0.00000001
 2 00a0a0      -0.00000000     -0.00000000     -0.00000000      0.78785323     -0.00000016      0.00000364     -0.00000317
 2 0a0a00      -0.00000000     -0.00000000     -0.00000000     -0.24402496      0.00000005     -0.00000183      0.00001260
 2 a00a00      -0.00034378      0.00000000      0.00000000      0.00000032     -0.00000000     -0.00000165      0.69857364
 2 00aa00       0.00000000      0.00034378      0.00000000     -0.00000308      0.00000000      0.69857360      0.00000165
 2 a000a0      -0.00000000      0.00000000     -0.00034379      0.00000015      0.69857354     -0.00000000      0.00000000
 2 00a00a       0.00000000     -0.00000000      0.00034379      0.00000015      0.69857348     -0.00000000      0.00000000
 2 0a00a0      -0.00000000     -0.00034379     -0.00000000     -0.00000308      0.00000000      0.69857342      0.00000165
 2 0a000a       0.00034379     -0.00000000     -0.00000000      0.00000032     -0.00000000     -0.00000165      0.69857339
 2 a0000a       0.00000000      0.00000000      0.00000000     -0.54382811      0.00000011     -0.00000182     -0.00000942
 2 0000aa       0.00000000     -0.00000000      0.01396358      0.00000000      0.00000001     -0.00000000      0.00000000
 2 000a0a       0.01396358     -0.00000001     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000003
 2 000aa0      -0.00000001     -0.01396358     -0.00000000     -0.00000000     -0.00000000      0.00000002      0.00000000
 0 aa2000      -0.11450870      0.00000005      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000
 0 2aa000      -0.00000005     -0.11450870     -0.00000001      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2a000      -0.00000001      0.00000001     -0.11450870     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 02a0a0       0.00000000     -0.00000000     -0.00000000     -0.08380660      0.00000002     -0.00000039      0.00000033
 0 20a0a0       0.00000000      0.00000000      0.00000000     -0.08354629      0.00000002     -0.00000039      0.00000035
 0 0a2a00       0.00000000     -0.00000000     -0.00000000      0.02533931     -0.00000001      0.00000019     -0.00000134
 0 2a0a00       0.00000000      0.00000000      0.00000000      0.02649557     -0.00000001      0.00000020     -0.00000133
 0 a02a00       0.00190109     -0.00000000     -0.00000000     -0.00000003      0.00000000      0.00000018     -0.07449750
 0 20aa00      -0.00000000     -0.00190109     -0.00000000      0.00000033     -0.00000000     -0.07449750     -0.00000018
 0 a200a0       0.00000000     -0.00000000      0.00190109     -0.00000002     -0.07449749      0.00000000     -0.00000000
 0 02a00a      -0.00000000      0.00000000     -0.00190109     -0.00000002     -0.07449748      0.00000000     -0.00000000
 0 2a00a0       0.00000000      0.00190109      0.00000000      0.00000033     -0.00000000     -0.07449748     -0.00000018
 0 0a200a      -0.00190109      0.00000000      0.00000000     -0.00000003      0.00000000      0.00000018     -0.07449748
 0 a20a00      -0.02092871      0.00000001      0.00000000     -0.00000003      0.00000000      0.00000017     -0.07389095
 0 02aa00       0.00000001      0.02092871      0.00000000      0.00000033     -0.00000000     -0.07389095     -0.00000017
 0 a020a0      -0.00000000      0.00000000     -0.02092871     -0.00000002     -0.07389094      0.00000000     -0.00000000
 0 20a00a       0.00000000     -0.00000000      0.02092871     -0.00000002     -0.07389093      0.00000000     -0.00000000
 0 0a20a0      -0.00000001     -0.02092871     -0.00000000      0.00000033     -0.00000000     -0.07389093     -0.00000017
 0 2a000a       0.02092871     -0.00000001     -0.00000000     -0.00000003      0.00000000      0.00000017     -0.07389092
 0 a0200a      -0.00000000     -0.00000000     -0.00000000      0.05731101     -0.00000001      0.00000019      0.00000101
 0 a2000a      -0.00000000     -0.00000000      0.00000000      0.05820696     -0.00000001      0.00000020      0.00000099
 
 Energy:     -213.34475015   -213.34475015   -213.34475015   -213.16643078   -213.16643078   -213.16643078   -213.16643078

 State:              8               9              10              11              12
 2 a0a000       0.00000000     -0.00000000     -0.00351309     -0.00000000      0.00000000
 2 0aa000       0.00000000     -0.00351309      0.00000000     -0.00000003     -0.00000000
 2 aa0000       0.00000000      0.00000003      0.00000000     -0.00351309     -0.00000000
 2 00a0a0      -0.17309146      0.00000000     -0.00000000     -0.00000000      0.57023143
 2 0a0a00       0.76884655      0.00000000     -0.00000000      0.00000000      0.57023157
 2 a00a00      -0.00001134     -0.00000600     -0.00000000      0.69343642      0.00000000
 2 00aa00       0.00000068     -0.69343646      0.00000001     -0.00000600      0.00000000
 2 a000a0      -0.00000000      0.00000001      0.69343652      0.00000000      0.00000000
 2 00a00a      -0.00000000     -0.00000001     -0.69343658     -0.00000000      0.00000000
 2 0a00a0       0.00000068      0.69343664     -0.00000001      0.00000600     -0.00000000
 2 0a000a      -0.00001134      0.00000600      0.00000000     -0.69343668     -0.00000000
 2 a0000a      -0.59575518     -0.00000000      0.00000000     -0.00000000      0.57023153
 2 0000aa      -0.00000000      0.00000000      0.12276038      0.00000000     -0.00000000
 2 000a0a      -0.00000000     -0.00000106     -0.00000000      0.12276037      0.00000000
 2 000aa0       0.00000000     -0.12276037      0.00000000     -0.00000106     -0.00000000
 0 aa2000      -0.00000000     -0.00000005     -0.00000000      0.00523211      0.00000000
 0 2aa000       0.00000000      0.00523211     -0.00000000      0.00000005     -0.00000000
 0 a2a000       0.00000000      0.00000000      0.00523211      0.00000000     -0.00000000
 0 02a0a0       0.01779130     -0.00000000      0.00000000      0.00000000     -0.06124969
 0 20a0a0       0.01897615     -0.00000000      0.00000000      0.00000000     -0.06124969
 0 0a2a00      -0.08184128     -0.00000000      0.00000000     -0.00000000     -0.06124970
 0 2a0a00      -0.08147429     -0.00000000      0.00000000     -0.00000000     -0.06124970
 0 a02a00       0.00000121      0.00000064      0.00000000     -0.07445666     -0.00000000
 0 20aa00      -0.00000007      0.07445666     -0.00000000      0.00000064     -0.00000000
 0 a200a0       0.00000000     -0.00000000     -0.07445667     -0.00000000     -0.00000000
 0 02a00a       0.00000000      0.00000000      0.07445668      0.00000000     -0.00000000
 0 2a00a0      -0.00000007     -0.07445668      0.00000000     -0.00000064      0.00000000
 0 0a200a       0.00000121     -0.00000064     -0.00000000      0.07445669      0.00000000
 0 a20a00       0.00000120      0.00000062      0.00000000     -0.07215929     -0.00000000
 0 02aa00      -0.00000007      0.07215930     -0.00000000      0.00000062     -0.00000000
 0 a020a0       0.00000000     -0.00000000     -0.07215930     -0.00000000     -0.00000000
 0 20a00a       0.00000000      0.00000000      0.07215931      0.00000000     -0.00000000
 0 0a20a0      -0.00000007     -0.07215932      0.00000000     -0.00000062      0.00000000
 0 2a000a       0.00000120     -0.00000062     -0.00000000      0.07215932      0.00000000
 0 a0200a       0.06368300      0.00000000     -0.00000000      0.00000000     -0.06124970
 0 a2000a       0.06286514      0.00000000     -0.00000000      0.00000000     -0.06124970
 
 Energy:     -213.16643078   -213.16199530   -213.16199530   -213.16199530   -213.15995935
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000       0.78811405     -0.00000257     -0.00000085      0.00000001     -0.18083221      0.55941848      0.00000000
 2 002000      -0.23745173      0.00000044      0.00000181     -0.00000000      0.77294286      0.55941852      0.00000000
 2 a0b000      -0.00000001     -0.00000003      0.00000006      0.70026282      0.00000000      0.00000000     -0.00000000
 2 b0a000       0.00000001      0.00000003     -0.00000006     -0.70026282     -0.00000000     -0.00000000      0.00000000
 2 ba0000      -0.00000236     -0.70026282     -0.00000034     -0.00000003     -0.00000032      0.00000000     -0.00000000
 2 ab0000       0.00000236      0.70026282      0.00000034      0.00000003      0.00000032     -0.00000000      0.00000000
 2 0ba000      -0.00000041      0.00000034     -0.70026282      0.00000006      0.00000152      0.00000000     -0.00000000
 2 0ab000       0.00000041     -0.00000034      0.70026282     -0.00000006     -0.00000152     -0.00000000      0.00000000
 2 200000      -0.55066228      0.00000213     -0.00000096     -0.00000001     -0.59211069      0.55941850      0.00000000
 2 a0000b      -0.02210921      0.00000009     -0.00000004     -0.00000000     -0.02377337      0.04595805      0.00000000
 2 b0000a       0.02210921     -0.00000009      0.00000004      0.00000000      0.02377337     -0.04595805     -0.00000000
 2 00b0a0       0.00953374     -0.00000002     -0.00000007      0.00000000     -0.03103383     -0.04595805     -0.00000000
 2 00a0b0      -0.00953374      0.00000002      0.00000007     -0.00000000      0.03103383      0.04595805      0.00000000
 2 b00a00      -0.00000009     -0.02811570     -0.00000001     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2 a00b00       0.00000009      0.02811570      0.00000001      0.00000000      0.00000001      0.00000000     -0.00000000
 2 00ba00      -0.00000002      0.00000001     -0.02811571      0.00000000      0.00000006     -0.00000000     -0.00000000
 2 00ab00       0.00000002     -0.00000001      0.02811571     -0.00000000     -0.00000006      0.00000000      0.00000000
 2 b000a0       0.00000000      0.00000000     -0.00000000     -0.02811570     -0.00000000      0.00000000     -0.49404855
 2 a000b0      -0.00000000     -0.00000000      0.00000000      0.02811570      0.00000000     -0.00000000      0.49404855
 2 00a00b      -0.00000000     -0.00000000      0.00000000      0.02811570      0.00000000      0.00000000     -0.49404853
 2 00b00a       0.00000000      0.00000000     -0.00000000     -0.02811570     -0.00000000     -0.00000000      0.49404853
 2 0a00b0       0.00000002     -0.00000001      0.02811570     -0.00000000     -0.00000006     -0.00000000     -0.00000000
 2 0b00a0      -0.00000002      0.00000001     -0.02811570      0.00000000      0.00000006      0.00000000      0.00000000
 2 0b000a      -0.00000009     -0.02811570     -0.00000001     -0.00000000     -0.00000001      0.00000000     -0.00000000
 2 0a000b       0.00000009      0.02811570      0.00000001      0.00000000      0.00000001     -0.00000000      0.00000000
 2 0b0a00      -0.03164295      0.00000010      0.00000003     -0.00000000      0.00726045     -0.04595804     -0.00000000
 2 0a0b00       0.03164295     -0.00000010     -0.00000003      0.00000000     -0.00726045      0.04595804      0.00000000
 0 202000       0.09075354     -0.00000030     -0.00000010      0.00000000     -0.02082333     -0.12402925     -0.00000000
 0 022000      -0.06341031      0.00000024     -0.00000011     -0.00000000     -0.06818320     -0.12402925     -0.00000000
 0 220000      -0.02734324      0.00000005      0.00000021     -0.00000000      0.08900654     -0.12402925     -0.00000000
 2 000002       0.01402262     -0.00000005      0.00000002      0.00000000      0.01507810     -0.02177217     -0.00000000
 2 000020       0.00604671     -0.00000001     -0.00000005      0.00000000     -0.01968299     -0.02177217     -0.00000000
 2 0000ab       0.00000000      0.00000000     -0.00000000     -0.01783220      0.00000000      0.00000000     -0.00000001
 2 0000ba      -0.00000000     -0.00000000      0.00000000      0.01783220     -0.00000000     -0.00000000      0.00000001
 2 000b0a       0.00000006      0.01783220      0.00000001      0.00000000      0.00000001      0.00000000      0.00000000
 2 000a0b      -0.00000006     -0.01783220     -0.00000001     -0.00000000     -0.00000001     -0.00000000     -0.00000000
 2 000ab0      -0.00000001      0.00000001     -0.01783220      0.00000000      0.00000004      0.00000000     -0.00000000
 2 000ba0       0.00000001     -0.00000001      0.01783220     -0.00000000     -0.00000004     -0.00000000      0.00000000
 2 000200      -0.02006933      0.00000007      0.00000002     -0.00000000      0.00460489     -0.02177217     -0.00000000
 0 ab2000      -0.00000027     -0.08063723     -0.00000004     -0.00000000     -0.00000004      0.00000000     -0.00000000
 0 ba2000       0.00000027      0.08063723      0.00000004      0.00000000      0.00000004     -0.00000000      0.00000000
 0 2ba000       0.00000005     -0.00000004      0.08063723     -0.00000001     -0.00000017     -0.00000000      0.00000000
 0 2ab000      -0.00000005      0.00000004     -0.08063723      0.00000001      0.00000017      0.00000000     -0.00000000
 0 b2a000      -0.00000000     -0.00000000      0.00000001      0.08063723     -0.00000000     -0.00000000     -0.00000000
 0 a2b000       0.00000000      0.00000000     -0.00000001     -0.08063723      0.00000000      0.00000000      0.00000000
 0 a0200b      -0.00416224      0.00000001      0.00000004     -0.00000000      0.01934010      0.00833249     -0.00000000
 0 b0200a       0.00416224     -0.00000001     -0.00000004      0.00000000     -0.01934010     -0.00833249      0.00000000
 0 a2000b       0.01959082     -0.00000006     -0.00000002      0.00000000     -0.00275022      0.00833249     -0.00000000
 0 b2000a      -0.01959082      0.00000006      0.00000002     -0.00000000      0.00275022     -0.00833249      0.00000000
 0 20b0a0       0.01217717     -0.00000005      0.00000003      0.00000000      0.01559104     -0.00833249      0.00000000
 0 20a0b0      -0.01217717      0.00000005     -0.00000003     -0.00000000     -0.01559104      0.00833249     -0.00000000
 0 02a0b0       0.01883014     -0.00000006     -0.00000002      0.00000000     -0.00606544      0.00833249     -0.00000000
 0 02b0a0      -0.01883014      0.00000006      0.00000002     -0.00000000      0.00606544     -0.00833249      0.00000000
 0 b02a00       0.00000001      0.00170069      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a02b00      -0.00000001     -0.00170069     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 20ba00       0.00000000     -0.00000000      0.00170069     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 20ab00      -0.00000000      0.00000000     -0.00170069      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a200b0       0.00000000      0.00000000     -0.00000000     -0.00170069      0.00000000      0.00000000     -0.05272459
 0 b200a0      -0.00000000     -0.00000000      0.00000000      0.00170069     -0.00000000     -0.00000000      0.05272459
 0 2b00a0       0.00000000     -0.00000000      0.00170069     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 2a00b0      -0.00000000      0.00000000     -0.00170069      0.00000000      0.00000000     -0.00000000      0.00000000
 0 02a00b       0.00000000      0.00000000     -0.00000000     -0.00170069      0.00000000     -0.00000000      0.05272458
 0 02b00a      -0.00000000     -0.00000000      0.00000000      0.00170069     -0.00000000      0.00000000     -0.05272458
 0 0b200a       0.00000001      0.00170069      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0 0a200b      -0.00000001     -0.00170069     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 b020a0      -0.00000000     -0.00000000      0.00000000      0.01791943     -0.00000000      0.00000000      0.05145820
 0 a020b0       0.00000000      0.00000000     -0.00000000     -0.01791943      0.00000000     -0.00000000     -0.05145820
 0 a20b00      -0.00000006     -0.01791943     -0.00000001     -0.00000000     -0.00000001     -0.00000000      0.00000000
 0 b20a00       0.00000006      0.01791943      0.00000001      0.00000000      0.00000001      0.00000000     -0.00000000
 0 02ba00       0.00000001     -0.00000001      0.01791943     -0.00000000     -0.00000004     -0.00000000      0.00000000
 0 02ab00      -0.00000001      0.00000001     -0.01791943      0.00000000      0.00000004      0.00000000     -0.00000000
 0 0a20b0      -0.00000001      0.00000001     -0.01791943      0.00000000      0.00000004     -0.00000000      0.00000000
 0 0b20a0       0.00000001     -0.00000001      0.01791943     -0.00000000     -0.00000004      0.00000000     -0.00000000
 0 20a00b       0.00000000      0.00000000     -0.00000000     -0.01791943      0.00000000     -0.00000000      0.05145820
 0 20b00a      -0.00000000     -0.00000000      0.00000000      0.01791943     -0.00000000      0.00000000     -0.05145820
 0 2a000b      -0.00000006     -0.01791943     -0.00000001     -0.00000000     -0.00000001      0.00000000     -0.00000000
 0 2b000a       0.00000006      0.01791943      0.00000001      0.00000000      0.00000001     -0.00000000      0.00000000
 
 Energy:     -213.30982367   -213.30982367   -213.30982367   -213.30982367   -213.30982367   -213.27988023   -213.17074935

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000     -0.00000000      0.04083364     -0.00000110      0.00000000      0.00000091      0.02936881
 2 002000      -0.00000000     -0.00000000     -0.04585096      0.00000127     -0.00000000      0.00000060      0.02067858
 2 a0b000       0.00000000      0.00000000      0.00000000      0.00000000     -0.04355956     -0.00000000     -0.00000000
 2 b0a000      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.04355956      0.00000000      0.00000000
 2 ba0000      -0.00000000      0.00000001     -0.00000002     -0.00000002     -0.00000000      0.04355955     -0.00000131
 2 ab0000       0.00000000     -0.00000001      0.00000002      0.00000002      0.00000000     -0.04355955      0.00000131
 2 0ba000      -0.00000000     -0.00000000      0.00000119      0.04355956      0.00000000      0.00000002     -0.00000002
 2 0ab000       0.00000000      0.00000000     -0.00000119     -0.04355956     -0.00000000     -0.00000002      0.00000002
 2 200000      -0.00000000     -0.00000000      0.00501731     -0.00000016      0.00000000     -0.00000151     -0.05004737
 2 a0000b      -0.00000000      0.00000000     -0.05633899      0.00000183     -0.00000000      0.00001692      0.56197848
 2 b0000a       0.00000000     -0.00000000      0.05633899     -0.00000183      0.00000000     -0.00001692     -0.56197848
 2 00b0a0      -0.00000000     -0.00000000     -0.51485718      0.00001422     -0.00000000      0.00000675      0.23219829
 2 00a0b0       0.00000000      0.00000000      0.51485718     -0.00001422      0.00000000     -0.00000675     -0.23219829
 2 b00a00       0.00001296     -0.49404856      0.00000024      0.00000022     -0.00000000     -0.48912721      0.00001475
 2 a00b00      -0.00001296      0.49404856     -0.00000024     -0.00000022      0.00000000      0.48912721     -0.00001475
 2 00ba00       0.49404855      0.00001296     -0.00001340     -0.48912722     -0.00000003     -0.00000022      0.00000025
 2 00ab00      -0.49404855     -0.00001296      0.00001340      0.48912722      0.00000003      0.00000022     -0.00000025
 2 b000a0      -0.00000000     -0.00000000      0.00000000      0.00000003     -0.48912723      0.00000000     -0.00000000
 2 a000b0       0.00000000      0.00000000     -0.00000000     -0.00000003      0.48912723     -0.00000000      0.00000000
 2 00a00b      -0.00000000     -0.00000000     -0.00000000     -0.00000003      0.48912725      0.00000000      0.00000000
 2 00b00a       0.00000000      0.00000000      0.00000000      0.00000003     -0.48912725     -0.00000000     -0.00000000
 2 0a00b0       0.49404852      0.00001296      0.00001340      0.48912725      0.00000003      0.00000022     -0.00000025
 2 0b00a0      -0.49404852     -0.00001296     -0.00001340     -0.48912725     -0.00000003     -0.00000022      0.00000025
 2 0b000a      -0.00001296      0.49404851      0.00000024      0.00000022      0.00000000     -0.48912727      0.00001475
 2 0a000b       0.00001296     -0.49404851     -0.00000024     -0.00000022     -0.00000000      0.48912727     -0.00001475
 2 0b0a00      -0.00000000     -0.00000000      0.45851817     -0.00001239      0.00000000      0.00001017      0.32978031
 2 0a0b00       0.00000000      0.00000000     -0.45851817      0.00001239     -0.00000000     -0.00001017     -0.32978031
 0 202000       0.00000000      0.00000000      0.00782024     -0.00000021      0.00000000      0.00000017      0.00562455
 0 022000      -0.00000000      0.00000000      0.00096089     -0.00000003      0.00000000     -0.00000029     -0.00958480
 0 220000      -0.00000000      0.00000000     -0.00878113      0.00000024     -0.00000000      0.00000012      0.00396025
 2 000002       0.00000000     -0.00000000      0.01031012     -0.00000033      0.00000000     -0.00000310     -0.10284287
 2 000020      -0.00000000     -0.00000000     -0.09421960      0.00000260     -0.00000000      0.00000124      0.04249262
 2 0000ab       0.00000000      0.00000000      0.00000000      0.00000000     -0.08951099      0.00000000     -0.00000000
 2 0000ba      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.08951099     -0.00000000      0.00000000
 2 000b0a      -0.00000000      0.00000001     -0.00000004     -0.00000004      0.00000000      0.08951098     -0.00000270
 2 000a0b       0.00000000     -0.00000001      0.00000004      0.00000004     -0.00000000     -0.08951098      0.00000270
 2 000ab0       0.00000001      0.00000000     -0.00000245     -0.08951098     -0.00000000     -0.00000004      0.00000005
 2 000ba0      -0.00000001     -0.00000000      0.00000245      0.08951098      0.00000000      0.00000004     -0.00000005
 2 000200       0.00000000      0.00000000      0.08390947     -0.00000227      0.00000000      0.00000186      0.06035026
 0 ab2000      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00834229     -0.00000025
 0 ba2000       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00834229      0.00000025
 0 2ba000       0.00000000      0.00000000     -0.00000023     -0.00834229     -0.00000000     -0.00000000      0.00000000
 0 2ab000      -0.00000000     -0.00000000      0.00000023      0.00834229      0.00000000      0.00000000     -0.00000000
 0 b2a000       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00834229     -0.00000000     -0.00000000
 0 a2b000      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00834229      0.00000000      0.00000000
 0 a0200b       0.00000000     -0.00000000      0.00424647     -0.00000015      0.00000000     -0.00000179     -0.05956363
 0 b0200a      -0.00000000      0.00000000     -0.00424647      0.00000015     -0.00000000      0.00000179      0.05956363
 0 a2000b       0.00000000     -0.00000000      0.00766185     -0.00000024      0.00000000     -0.00000178     -0.05922124
 0 b2000a      -0.00000000      0.00000000     -0.00766185      0.00000024     -0.00000000      0.00000178      0.05922124
 0 20b0a0       0.00000000      0.00000000      0.05511803     -0.00000152      0.00000000     -0.00000067     -0.02297527
 0 20a0b0      -0.00000000     -0.00000000     -0.05511803      0.00000152     -0.00000000      0.00000067      0.02297527
 0 02a0b0      -0.00000000     -0.00000000     -0.05370686      0.00000148     -0.00000000      0.00000076      0.02610427
 0 02b0a0       0.00000000      0.00000000      0.05370686     -0.00000148      0.00000000     -0.00000076     -0.02610427
 0 b02a00      -0.00000138      0.05272459     -0.00000003     -0.00000002      0.00000000      0.05255131     -0.00000158
 0 a02b00       0.00000138     -0.05272459      0.00000003      0.00000002     -0.00000000     -0.05255131      0.00000158
 0 20ba00      -0.05272459     -0.00000138      0.00000144      0.05255131      0.00000000      0.00000002     -0.00000003
 0 20ab00       0.05272459      0.00000138     -0.00000144     -0.05255131     -0.00000000     -0.00000002      0.00000003
 0 a200b0      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.05255131      0.00000000     -0.00000000
 0 b200a0       0.00000000      0.00000000     -0.00000000     -0.00000000      0.05255131     -0.00000000      0.00000000
 0 2b00a0       0.05272458      0.00000138      0.00000144      0.05255131      0.00000000      0.00000002     -0.00000003
 0 2a00b0      -0.05272458     -0.00000138     -0.00000144     -0.05255131     -0.00000000     -0.00000002      0.00000003
 0 02a00b       0.00000000      0.00000000      0.00000000      0.00000000     -0.05255131     -0.00000000     -0.00000000
 0 02b00a      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05255131      0.00000000      0.00000000
 0 0b200a       0.00000138     -0.05272458     -0.00000003     -0.00000002     -0.00000000      0.05255131     -0.00000158
 0 0a200b      -0.00000138      0.05272458      0.00000003      0.00000002      0.00000000     -0.05255131      0.00000158
 0 b020a0       0.00000000      0.00000000     -0.00000000     -0.00000000      0.05083506     -0.00000000      0.00000000
 0 a020b0      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.05083506      0.00000000     -0.00000000
 0 a20b00       0.00000135     -0.05145820      0.00000002      0.00000002     -0.00000000     -0.05083506      0.00000153
 0 b20a00      -0.00000135      0.05145820     -0.00000002     -0.00000002      0.00000000      0.05083506     -0.00000153
 0 02ba00      -0.05145820     -0.00000135      0.00000139      0.05083506      0.00000000      0.00000002     -0.00000003
 0 02ab00       0.05145820      0.00000135     -0.00000139     -0.05083506     -0.00000000     -0.00000002      0.00000003
 0 0a20b0      -0.05145820     -0.00000135     -0.00000139     -0.05083507     -0.00000000     -0.00000002      0.00000003
 0 0b20a0       0.05145820      0.00000135      0.00000139      0.05083507      0.00000000      0.00000002     -0.00000003
 0 20a00b       0.00000000      0.00000000      0.00000000      0.00000000     -0.05083506     -0.00000000     -0.00000000
 0 20b00a      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05083506      0.00000000      0.00000000
 0 2a000b      -0.00000135      0.05145820      0.00000002      0.00000002      0.00000000     -0.05083507      0.00000153
 0 2b000a       0.00000135     -0.05145820     -0.00000002     -0.00000002     -0.00000000      0.05083507     -0.00000153
 
 Energy:     -213.17074935   -213.17074935   -213.15241173   -213.15241173   -213.15241173   -213.15241173   -213.15241173

 State:             15
 2 020000      -0.06209396
 2 002000      -0.06209396
 2 a0b000       0.00000000
 2 b0a000      -0.00000000
 2 ba0000      -0.00000000
 2 ab0000       0.00000000
 2 0ba000       0.00000000
 2 0ab000      -0.00000000
 2 200000      -0.06209396
 2 a0000b       0.39625909
 2 b0000a      -0.39625909
 2 00b0a0      -0.39625900
 2 00a0b0       0.39625900
 2 b00a00      -0.00000000
 2 a00b00       0.00000000
 2 00ba00      -0.00000000
 2 00ab00       0.00000000
 2 b000a0       0.00000000
 2 a000b0      -0.00000000
 2 00a00b      -0.00000000
 2 00b00a       0.00000000
 2 0a00b0      -0.00000000
 2 0b00a0       0.00000000
 2 0b000a      -0.00000000
 2 0a000b       0.00000000
 2 0b0a00      -0.39625901
 2 0a0b00       0.39625901
 0 202000       0.01645804
 0 022000       0.01645804
 0 220000       0.01645804
 2 000002      -0.07631211
 2 000020      -0.07631209
 2 0000ab       0.00000000
 2 0000ba      -0.00000000
 2 000b0a       0.00000000
 2 000a0b      -0.00000000
 2 000ab0      -0.00000000
 2 000ba0       0.00000000
 2 000200      -0.07631209
 0 ab2000      -0.00000000
 0 ba2000       0.00000000
 0 2ba000      -0.00000000
 0 2ab000       0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 a0200b      -0.04414664
 0 b0200a       0.04414664
 0 a2000b      -0.04414664
 0 b2000a       0.04414664
 0 20b0a0       0.04414663
 0 20a0b0      -0.04414663
 0 02a0b0      -0.04414663
 0 02b0a0       0.04414663
 0 b02a00       0.00000000
 0 a02b00      -0.00000000
 0 20ba00       0.00000000
 0 20ab00      -0.00000000
 0 a200b0       0.00000000
 0 b200a0      -0.00000000
 0 2b00a0      -0.00000000
 0 2a00b0       0.00000000
 0 02a00b       0.00000000
 0 02b00a      -0.00000000
 0 0b200a       0.00000000
 0 0a200b      -0.00000000
 0 b020a0      -0.00000000
 0 a020b0       0.00000000
 0 a20b00      -0.00000000
 0 b20a00       0.00000000
 0 02ba00       0.00000000
 0 02ab00      -0.00000000
 0 0a20b0       0.00000000
 0 0b20a0      -0.00000000
 0 20a00b       0.00000000
 0 20b00a      -0.00000000
 0 2a000b      -0.00000000
 0 2b000a       0.00000000
 
 Energy:     -213.14009435
 


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
 CPU TIMES  *         3.73      2.46      0.08      0.82
 REAL TIME  *         6.08 SEC
 DISK USED  *        40.04 MB (local),      718.81 MB (total)
 SF USED    *        26.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3447501   2.0
    -213.3447501   2.0
    -213.3447501   2.0
    -213.1664308   6.0
    -213.1664308   6.0
    -213.1664308   6.0
    -213.1664308   6.0
    -213.1664308   6.0
    -213.1619953   2.0
    -213.1619953   2.0
    -213.1619953   2.0
    -213.1599594   0.0
    -213.3098237   6.0
    -213.3098237   6.0
    -213.3098237   6.0
    -213.3098237   6.0
    -213.3098237   6.0
    -213.2798802   0.0
    -213.1707493   2.0
    -213.1707493   2.0
    -213.1707493   2.0
    -213.1524117   6.0
    -213.1524117   6.0
    -213.1524117   6.0
    -213.1524117   6.0
    -213.1524117   6.0
    -213.1400944   0.0
                                                  


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
     1      -213.34475015
     2      -213.34475015
     3      -213.34475015
     4      -213.16643078
     5      -213.16643078
     6      -213.16643078
     7      -213.16643078
     8      -213.16643078
     9      -213.16199530
    10      -213.16199530
    11      -213.16199530
    12      -213.15995935

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1127D-06

 Number of blocks in overlap matrix:  1105   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       4250826
 Number of doubly external configurations:       5871612
 Total number of contracted configurations:     10160844
 Total number of uncontracted configurations:  111118060

 Diagonal Coupling coefficients finished.               Storage:  25507039 words, CPU-Time:     73.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1494277 words, CPU-time:      0.30 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34475015    -0.00000000    -0.82799731  0.46D-01  0.10D+00    85.72
    1     2     2     1.00000000     0.00000000  -213.34475015     0.00000000    -0.82773137  0.46D-01  0.10D+00    85.72
    1     3     3     1.00000000     0.00000000  -213.34475015     0.00000000    -0.82785440  0.46D-01  0.10D+00    85.72
    1     4     4     1.00000000     0.00000000  -213.16643078     0.00000000    -0.79728476  0.40D-01  0.94D-01    85.72
    1     5     5     1.00000000     0.00000000  -213.16643078     0.00000000    -0.79703613  0.40D-01  0.93D-01    85.72
    1     6     6     1.00000000     0.00000000  -213.16643078    -0.00000000    -0.79702033  0.40D-01  0.93D-01    85.72
    1     7     7     1.00000000     0.00000000  -213.16643078     0.00000000    -0.79704902  0.40D-01  0.93D-01    85.72
    1     8     8     1.00000000     0.00000000  -213.16643078     0.00000000    -0.79739419  0.40D-01  0.94D-01    85.72
    1     9     9     1.00000000     0.00000000  -213.16199530     0.00000000    -0.80116887  0.43D-01  0.94D-01    85.72
    1    10    10     1.00000000     0.00000000  -213.16199530     0.00000000    -0.80116789  0.43D-01  0.94D-01    85.72
    1    11    11     1.00000000     0.00000000  -213.16199530     0.00000000    -0.80118185  0.43D-01  0.94D-01    85.72
    1    12    12     1.00000000     0.00000000  -213.15995935     0.00000000    -0.79838319  0.41D-01  0.94D-01    85.72
    2     1     1     1.09302367    -0.65528177  -214.00003192    -0.65528177    -0.01782859  0.32D-02  0.13D-02   459.41
    2     2     2     1.09313299    -0.65520964  -213.99995979    -0.65520964    -0.01790671  0.33D-02  0.13D-02   459.41
    2     3     3     1.09326546    -0.65512089  -213.99987103    -0.65512089    -0.01800060  0.33D-02  0.13D-02   459.41
    2     4     4     1.08725693    -0.64606378  -213.81249456    -0.64606378    -0.01474266  0.23D-02  0.10D-02   459.41
    2     5     5     1.08715466    -0.64605104  -213.81248182    -0.64605104    -0.01475913  0.23D-02  0.10D-02   459.41
    2     6     6     1.08730954    -0.64604345  -213.81247423    -0.64604345    -0.01476220  0.23D-02  0.10D-02   459.41
    2     7     7     1.08717088    -0.64604092  -213.81247170    -0.64604092    -0.01476959  0.23D-02  0.10D-02   459.41
    2     8     8     1.08719141    -0.64602579  -213.81245657    -0.64602579    -0.01478574  0.23D-02  0.10D-02   459.41
    2     9     9     1.08852981    -0.64637084  -213.80836614    -0.64637084    -0.01562752  0.29D-02  0.11D-02   459.41
    2    10    10     1.08853799    -0.64636115  -213.80835646    -0.64636115    -0.01563937  0.29D-02  0.11D-02   459.41
    2    11    11     1.08855637    -0.64634645  -213.80834176    -0.64634645    -0.01565509  0.29D-02  0.11D-02   459.41
    2    12    12     1.08808383    -0.64623813  -213.80619749    -0.64623813    -0.01505579  0.25D-02  0.10D-02   459.41
    3     1     1     1.08329739    -0.67234224  -214.01709238    -0.01706047    -0.00044041  0.61D-04  0.47D-04   832.47
    3     2     2     1.08329823    -0.67233840  -214.01708855    -0.01712876    -0.00044416  0.62D-04  0.48D-04   832.47
    3     3     3     1.08329682    -0.67233452  -214.01708466    -0.01721363    -0.00044787  0.62D-04  0.48D-04   832.47
    3     4     4     1.08116132    -0.66032042  -213.82675120    -0.01425664    -0.00031102  0.36D-04  0.30D-04   832.47
    3     5     5     1.08116076    -0.66032001  -213.82675079    -0.01426896    -0.00031145  0.36D-04  0.30D-04   832.47
    3     6     6     1.08115903    -0.66031948  -213.82675025    -0.01427602    -0.00031198  0.36D-04  0.30D-04   832.47
    3     7     7     1.08118544    -0.66031827  -213.82674905    -0.01427734    -0.00031324  0.36D-04  0.31D-04   832.47
    3     8     8     1.08118741    -0.66031688  -213.82674766    -0.01429109    -0.00031459  0.36D-04  0.31D-04   832.47
    3     9     9     1.08123866    -0.66143112  -213.82342642    -0.01506028    -0.00034890  0.46D-04  0.34D-04   832.47
    3    10    10     1.08123813    -0.66143046  -213.82342577    -0.01506931    -0.00034958  0.46D-04  0.34D-04   832.47
    3    11    11     1.08123663    -0.66142988  -213.82342518    -0.01508342    -0.00035018  0.46D-04  0.35D-04   832.47
    3    12    12     1.08149019    -0.66081059  -213.82076995    -0.01457246    -0.00032342  0.38D-04  0.33D-04   832.47
    4     1     1     1.08327010    -0.67279981  -214.01754995    -0.00045757    -0.00001943  0.30D-05  0.23D-05  1205.56
    4     2     2     1.08326870    -0.67279961  -214.01754976    -0.00046121    -0.00001961  0.30D-05  0.23D-05  1205.56
    4     3     3     1.08326691    -0.67279949  -214.01754963    -0.00046497    -0.00001971  0.30D-05  0.23D-05  1205.56
    4     4     4     1.08167604    -0.66064358  -213.82707436    -0.00032316    -0.00001277  0.26D-05  0.12D-05  1205.56
    4     5     5     1.08167574    -0.66064355  -213.82707433    -0.00032355    -0.00001279  0.26D-05  0.12D-05  1205.56
    4     6     6     1.08167511    -0.66064354  -213.82707432    -0.00032407    -0.00001280  0.26D-05  0.12D-05  1205.56
    4     7     7     1.08167369    -0.66064347  -213.82707425    -0.00032521    -0.00001299  0.27D-05  0.12D-05  1205.56
    4     8     8     1.08167097    -0.66064338  -213.82707416    -0.00032650    -0.00001307  0.27D-05  0.13D-05  1205.56
    4     9     9     1.08167201    -0.66179270  -213.82378800    -0.00036158    -0.00001517  0.32D-05  0.15D-05  1205.56
    4    10    10     1.08167136    -0.66179264  -213.82378795    -0.00036218    -0.00001521  0.32D-05  0.15D-05  1205.56
    4    11    11     1.08167091    -0.66179262  -213.82378792    -0.00036274    -0.00001523  0.32D-05  0.15D-05  1205.56
    4    12    12     1.08200606    -0.66114660  -213.82110596    -0.00033601    -0.00001355  0.26D-05  0.14D-05  1205.56
    5     1     1     1.08336178    -0.67282132  -214.01757146    -0.00002151    -0.00000081  0.68D-07  0.11D-06  1578.90
    5     2     2     1.08336149    -0.67282131  -214.01757145    -0.00002170    -0.00000081  0.69D-07  0.11D-06  1578.90
    5     3     3     1.08336115    -0.67282130  -214.01757145    -0.00002182    -0.00000082  0.69D-07  0.11D-06  1578.90
    5     4     4     1.08181609    -0.66065803  -213.82708881    -0.00001445    -0.00000050  0.57D-07  0.77D-07  1578.90
    5     5     5     1.08181583    -0.66065803  -213.82708881    -0.00001448    -0.00000051  0.57D-07  0.77D-07  1578.90
    5     6     6     1.08181651    -0.66065791  -213.82708869    -0.00001437    -0.00000050  0.57D-07  0.76D-07  1578.90
    5     7     7     1.08181648    -0.66065791  -213.82708869    -0.00001444    -0.00000050  0.57D-07  0.76D-07  1578.90
    5     8     8     1.08181636    -0.66065791  -213.82708869    -0.00001453    -0.00000050  0.57D-07  0.76D-07  1578.90
    5     9     9     1.08178903    -0.66180936  -213.82380466    -0.00001666    -0.00000067  0.98D-07  0.90D-07  1578.90
    5    10    10     1.08178898    -0.66180935  -213.82380466    -0.00001671    -0.00000068  0.99D-07  0.90D-07  1578.90
    5    11    11     1.08178889    -0.66180935  -213.82380465    -0.00001673    -0.00000068  0.99D-07  0.91D-07  1578.90
    5    12    12     1.08217126    -0.66116184  -213.82112119    -0.00001523    -0.00000055  0.58D-07  0.94D-07  1578.90
    6     1     1     1.08335405    -0.67282221  -214.01757235    -0.00000089    -0.00000004  0.48D-08  0.58D-08  1951.95
    6     2     2     1.08335391    -0.67282221  -214.01757235    -0.00000090    -0.00000004  0.49D-08  0.58D-08  1951.95
    6     3     3     1.08335383    -0.67282221  -214.01757235    -0.00000090    -0.00000005  0.49D-08  0.59D-08  1951.95
    6     4     4     1.08182624    -0.66065861  -213.82708939    -0.00000057    -0.00000003  0.29D-08  0.54D-08  1951.95
    6     5     5     1.08182619    -0.66065861  -213.82708938    -0.00000058    -0.00000003  0.29D-08  0.54D-08  1951.95
    6     6     6     1.08182647    -0.66065848  -213.82708926    -0.00000057    -0.00000003  0.30D-08  0.54D-08  1951.95
    6     7     7     1.08182650    -0.66065848  -213.82708926    -0.00000057    -0.00000003  0.30D-08  0.53D-08  1951.95
    6     8     8     1.08182647    -0.66065848  -213.82708926    -0.00000057    -0.00000003  0.30D-08  0.54D-08  1951.95
    6     9     9     1.08179312    -0.66181008  -213.82380539    -0.00000073    -0.00000004  0.46D-08  0.80D-08  1951.95
    6    10    10     1.08179310    -0.66181008  -213.82380539    -0.00000073    -0.00000004  0.46D-08  0.80D-08  1951.95
    6    11    11     1.08179309    -0.66181008  -213.82380539    -0.00000073    -0.00000004  0.46D-08  0.80D-08  1951.95
    6    12    12     1.08218465    -0.66116247  -213.82112183    -0.00000063    -0.00000003  0.35D-08  0.67D-08  1951.95
    7     1     1     1.08336025    -0.67282226  -214.01757240    -0.00000005    -0.00000000  0.18D-09  0.39D-09  2222.32
    7     2     2     1.08336024    -0.67282226  -214.01757240    -0.00000005    -0.00000000  0.18D-09  0.39D-09  2222.32
    7     3     3     1.08336024    -0.67282226  -214.01757240    -0.00000005    -0.00000000  0.18D-09  0.39D-09  2222.32
    7     4     4     1.08182624    -0.66065861  -213.82708939    -0.00000000    -0.00000003  0.29D-08  0.54D-08  2222.32
    7     5     5     1.08182619    -0.66065861  -213.82708938    -0.00000000    -0.00000003  0.29D-08  0.54D-08  2222.32
    7     6     6     1.08182647    -0.66065848  -213.82708926    -0.00000000    -0.00000003  0.31D-08  0.54D-08  2222.32
    7     7     7     1.08182650    -0.66065848  -213.82708926    -0.00000000    -0.00000003  0.30D-08  0.53D-08  2222.32
    7     8     8     1.08182647    -0.66065848  -213.82708926    -0.00000000    -0.00000003  0.30D-08  0.54D-08  2222.32
    7     9     9     1.08179832    -0.66181013  -213.82380544    -0.00000005    -0.00000000  0.23D-09  0.63D-09  2222.32
    7    10    10     1.08179832    -0.66181013  -213.82380544    -0.00000005    -0.00000000  0.23D-09  0.64D-09  2222.32
    7    11    11     1.08179833    -0.66181013  -213.82380544    -0.00000005    -0.00000000  0.23D-09  0.64D-09  2222.32
    7    12    12     1.08219165    -0.66116251  -213.82112186    -0.00000004    -0.00000000  0.18D-09  0.44D-09  2222.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   0.9%  10.8%
 P   0.4%  45.9%  29.2%

 Initialization:   3.3%
 Other:            8.0%

 Total CPU:     2222.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.0308803  -0.0137058   0.9535876  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0046257  -0.0271414   0.0038061   0.0000000
 22222222220//000           0.0869469   0.9501544   0.0108409   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0271799  -0.0040470   0.0041731   0.0000000
 2222222222//0000           0.9497143  -0.0865416  -0.0319987  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                            0.0035208   0.0044165   0.0272146   0.0000000
 22222222220/0/00          -0.0000000  -0.0000000   0.0000000  -0.1522258   0.7620364  -0.0012750  -0.0002033   0.0000689
                            0.0000000   0.0000000  -0.0000000   0.5492435
 222222222200/0/0           0.0000000  -0.0000000   0.0000000   0.7360567  -0.2491875   0.0000894   0.0000664   0.0000040
                            0.0000000  -0.0000000   0.0000000   0.5492434
 222222222200/00/           0.0006908  -0.0003066   0.0213313   0.0003206   0.0011889   0.6728600   0.0008499   0.0127479
                           -0.1110303   0.6514785  -0.0913595  -0.0000000
 2222222222/000/0          -0.0006908   0.0003066  -0.0213313   0.0003206   0.0011890   0.6728599   0.0008499   0.0127479
                            0.1110303  -0.6514785   0.0913595  -0.0000000
 222222222200//00           0.0019450   0.0212545   0.0002425   0.0000048   0.0001899   0.0012099   0.6642325  -0.1081617
                            0.6524022   0.0971409  -0.1001669  -0.0000000
 22222222220/00/0          -0.0019450  -0.0212545  -0.0002425   0.0000048   0.0001900   0.0012099   0.6642324  -0.1081617
                           -0.6524024  -0.0971409   0.1001669   0.0000000
 2222222222/00/00          -0.0212446   0.0019359   0.0007158  -0.0000318  -0.0000588  -0.0127186   0.1081652   0.6641114
                            0.0845105   0.1060091   0.6532369   0.0000000
 22222222220/000/           0.0212446  -0.0019359  -0.0007158  -0.0000318  -0.0000588  -0.0127186   0.1081651   0.6641112
                           -0.0845106  -0.1060091  -0.6532371  -0.0000000
 2222222222/0000/           0.0000000   0.0000000  -0.0000000  -0.5838308  -0.5128489   0.0011856   0.0001368  -0.0000729
                           -0.0000000  -0.0000000  -0.0000000   0.5492435
 2222222222000/0/           0.0098736  -0.0008997  -0.0003327  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000002
                            0.0157167   0.0197149   0.1214849   0.0000000
 2222222222000//0          -0.0009039  -0.0098781  -0.0001127  -0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000000
                            0.1213297   0.0180657  -0.0186284  -0.0000000
 22222222220000//           0.0003210  -0.0001425   0.0099138  -0.0000000   0.0000000   0.0000002   0.0000000   0.0000000
                            0.0206487  -0.1211579   0.0169905   0.0000000
 2222220222/2/000          -0.0031943   0.0014177  -0.0986394  -0.0000000  -0.0000000  -0.0000002  -0.0000000  -0.0000000
                            0.0002759  -0.0016186   0.0002270  -0.0000000
 22222202222//000          -0.0089938  -0.0982843  -0.0011214  -0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000000
                           -0.0016209  -0.0002414   0.0002489  -0.0000000
 2222220222//2000          -0.0982388   0.0089519   0.0033100   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000001
                            0.0002100   0.0002634   0.0016230  -0.0000000
 22222202220/2/00          -0.0000000  -0.0000000   0.0000000   0.0137488  -0.0721968   0.0001211   0.0000193  -0.0000066
                           -0.0000000  -0.0000000   0.0000000  -0.0527022
 22222202222/0/00           0.0000000  -0.0000000   0.0000000   0.0150439  -0.0719381   0.0001200   0.0000192  -0.0000065
                           -0.0000000  -0.0000000   0.0000000  -0.0527021
 222222022202/0/0          -0.0000000  -0.0000000   0.0000000  -0.0698222   0.0229407  -0.0000073  -0.0000061  -0.0000005
                           -0.0000000   0.0000000  -0.0000000  -0.0527022
 222222022220/0/0           0.0000000   0.0000000  -0.0000000  -0.0693987   0.0241917  -0.0000097  -0.0000064  -0.0000003
                           -0.0000000   0.0000000  -0.0000000  -0.0527021
 222222022202/00/          -0.0001219   0.0000541  -0.0037655  -0.0000305  -0.0001130  -0.0639641  -0.0000808  -0.0012119
                            0.0106225  -0.0623281   0.0087405   0.0000000
 2222220222/200/0           0.0001219  -0.0000541   0.0037655  -0.0000305  -0.0001130  -0.0639640  -0.0000808  -0.0012118
                           -0.0106225   0.0623281  -0.0087405  -0.0000000
 222222022220/00/           0.0005017  -0.0002227   0.0154925  -0.0000302  -0.0001118  -0.0633037  -0.0000800  -0.0011993
                            0.0103617  -0.0607980   0.0085260   0.0000000
 2222220222/020/0          -0.0005017   0.0002227  -0.0154925  -0.0000302  -0.0001119  -0.0633035  -0.0000800  -0.0011993
                           -0.0103617   0.0607979  -0.0085259   0.0000000
 22222202222/00/0           0.0003433   0.0037520   0.0000428  -0.0000005  -0.0000181  -0.0001150  -0.0631441   0.0102822
                            0.0624165   0.0092936  -0.0095831  -0.0000000
 222222022220//00          -0.0003433  -0.0037520  -0.0000428  -0.0000005  -0.0000181  -0.0001150  -0.0631439   0.0102822
                           -0.0624165  -0.0092936   0.0095831   0.0000000
 22222202220/200/          -0.0037502   0.0003417   0.0001264   0.0000030   0.0000056   0.0012091  -0.0102825  -0.0631324
                            0.0080853   0.0101421   0.0624963   0.0000000
 2222220222/02/00           0.0037502  -0.0003417  -0.0001264   0.0000030   0.0000056   0.0012091  -0.0102825  -0.0631323
                           -0.0080853  -0.0101421  -0.0624963  -0.0000000
 22222202220/20/0          -0.0014126  -0.0154368  -0.0001761  -0.0000005  -0.0000179  -0.0001138  -0.0624919   0.0101760
                            0.0608842   0.0090655  -0.0093479  -0.0000000
 222222022202//00           0.0014126   0.0154367   0.0001761  -0.0000004  -0.0000179  -0.0001138  -0.0624918   0.0101760
                           -0.0608841  -0.0090655   0.0093479   0.0000000
 22222202222/000/           0.0154296  -0.0014060  -0.0005199   0.0000030   0.0000055   0.0011966  -0.0101763  -0.0624806
                            0.0078868   0.0098931   0.0609621   0.0000000
 2222220222/20/00          -0.0154296   0.0014060   0.0005199   0.0000030   0.0000055   0.0011966  -0.0101763  -0.0624804
                           -0.0078868  -0.0098931  -0.0609620  -0.0000000
 2222220222/2000/           0.0000000   0.0000000  -0.0000000   0.0556499   0.0480051  -0.0001115  -0.0000128   0.0000069
                            0.0000000   0.0000000   0.0000000  -0.0527022
 2222220222/0200/          -0.0000000   0.0000000  -0.0000000   0.0547783   0.0489973  -0.0001128  -0.0000131   0.0000069
                            0.0000000   0.0000000   0.0000000  -0.0527022

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955426    0.087470    0.031066    0.000000    0.000000    0.000000    0.000000   -0.000000    0.002781    0.000988
            -0.030380   -0.000000
 2          -0.087062    0.955869   -0.013788   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.030394   -0.000438
             0.002768    0.000000
 3          -0.032191    0.010906    0.959322    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000347    0.030504
             0.001024   -0.000000
 4          -0.000000    0.000000   -0.000000    0.955043    0.000458    0.000007   -0.000045    0.105510   -0.000000    0.000000
            -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.105511    0.001698    0.000271   -0.000084    0.955042   -0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000269    0.960679    0.001727   -0.018159   -0.001739    0.000000    0.000000
             0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000028    0.001213    0.948361    0.154433   -0.000255   -0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000027    0.018201   -0.154428    0.948188    0.000098    0.000000    0.000000
            -0.000000    0.000000
 9           0.003947   -0.030471    0.005186    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.939122   -0.159826
             0.121652    0.000000
 10          0.004951   -0.004537   -0.030428   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.139833    0.937792
             0.152598    0.000000
 11          0.030510    0.004678    0.004267    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.144189   -0.131511
             0.940324   -0.000000
 12          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.960693

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960409    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000013    0.000035
             0.000309   -0.000000
 2           0.000000    0.960409    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000308   -0.000045
             0.000018   -0.000000
 3           0.000000    0.000000    0.960409   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000047   -0.000306
             0.000033   -0.000000
 4           0.000000    0.000000   -0.000000    0.960854    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.960854   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.960854   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.960854    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.960854    0.000000   -0.000000
            -0.000000   -0.000000
 9           0.000013   -0.000308    0.000047    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960867    0.000000
            -0.000000   -0.000000
 10          0.000035   -0.000045   -0.000306    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.960867
            -0.000000    0.000000
 11          0.000309    0.000018    0.000033    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.960867    0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.960693


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95542580 (fixed)   0.96049201 (relaxed)   0.96040932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072412   -0.00127112   -0.57189824
 Singles      0.01671115   -0.05328899   -0.05952176
 Pairs        0.06670946    0.00000000   -0.04140225
 Total        1.08414474   -0.05456011   -0.67282226
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34456178
 Nuclear energy                         0.00000000
 Kinetic energy                        83.00096439
 One electron energy                 -375.78741277
 Two electron energy                  161.76984037
 Virial quotient                       -2.57849501
 Correlation energy                    -0.67301063
 !MRCI STATE 1.1 Energy              -214.017572403161

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07420271 (Davidson, fixed reference)
 Cluster corrected energies          -214.07407709 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07420271 (Davidson, rotated reference)

 Cluster corrected energies          -214.07217823 (Pople, fixed reference)
 Cluster corrected energies          -214.07204857 (Pople, relaxed reference)
 Cluster corrected energies          -214.07217823 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95586852 (fixed)   0.96049201 (relaxed)   0.96040933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072412   -0.00127112   -0.57189827
 Singles      0.01671112   -0.05328897   -0.05952175
 Pairs        0.06670948   -0.00000000   -0.04140223
 Total        1.08414472   -0.05456009   -0.67282226
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34456177
 Nuclear energy                         0.00000000
 Kinetic energy                        83.00096599
 One electron energy                 -375.78741393
 Two electron energy                  161.76984153
 Virial quotient                       -2.57849496
 Correlation energy                    -0.67301063
 !MRCI STATE 2.1 Energy              -214.017572403127

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07420269 (Davidson, fixed reference)
 Cluster corrected energies          -214.07407708 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07420269 (Davidson, rotated reference)

 Cluster corrected energies          -214.07217822 (Pople, fixed reference)
 Cluster corrected energies          -214.07204856 (Pople, relaxed reference)
 Cluster corrected energies          -214.07217822 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95932233 (fixed)   0.96049201 (relaxed)   0.96040933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072412   -0.00127112   -0.57189827
 Singles      0.01671113   -0.05328897   -0.05952176
 Pairs        0.06670947    0.00000000   -0.04140223
 Total        1.08414472   -0.05456009   -0.67282226
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34456177
 Nuclear energy                         0.00000000
 Kinetic energy                        83.00096489
 One electron energy                 -375.78741303
 Two electron energy                  161.76984062
 Virial quotient                       -2.57849499
 Correlation energy                    -0.67301063
 !MRCI STATE 3.1 Energy              -214.017572402938

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07420270 (Davidson, fixed reference)
 Cluster corrected energies          -214.07407708 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07420270 (Davidson, rotated reference)

 Cluster corrected energies          -214.07217822 (Pople, fixed reference)
 Cluster corrected energies          -214.07204856 (Pople, relaxed reference)
 Cluster corrected energies          -214.07217822 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95504329 (fixed)   0.96098772 (relaxed)   0.96085394 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121591   -0.00212376   -0.55714551
 Singles      0.01948272   -0.05799444   -0.06543274
 Pairs        0.06244302    0.00000004   -0.03808037
 Total        1.08314164   -0.06011817   -0.66065861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16643078
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75891379
 One electron energy                 -371.49549901
 Two electron energy                  157.66840963
 Virial quotient                       -2.58373485
 Correlation energy                    -0.66065861
 !MRCI STATE 4.1 Energy              -213.827089385368

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88201763 (Davidson, fixed reference)
 Cluster corrected energies          -213.88181840 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88201763 (Davidson, rotated reference)

 Cluster corrected energies          -213.88000945 (Pople, fixed reference)
 Cluster corrected energies          -213.87980418 (Pople, relaxed reference)
 Cluster corrected energies          -213.88000945 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95504181 (fixed)   0.96098774 (relaxed)   0.96085396 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121591   -0.00212376   -0.55714556
 Singles      0.01948269   -0.05799438   -0.06543272
 Pairs        0.06244299    0.00000001   -0.03808032
 Total        1.08314159   -0.06011814   -0.66065861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16643078
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75890711
 One electron energy                 -371.49549253
 Two electron energy                  157.66840314
 Virial quotient                       -2.58373505
 Correlation energy                    -0.66065861
 !MRCI STATE 5.1 Energy              -213.827089384465

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88201759 (Davidson, fixed reference)
 Cluster corrected energies          -213.88181837 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88201759 (Davidson, rotated reference)

 Cluster corrected energies          -213.88000941 (Pople, fixed reference)
 Cluster corrected energies          -213.87980414 (Pople, relaxed reference)
 Cluster corrected energies          -213.88000941 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96067906 (fixed)   0.96098762 (relaxed)   0.96085384 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121590   -0.00212374   -0.55714522
 Singles      0.01948277   -0.05799446   -0.06543261
 Pairs        0.06244320   -0.00000001   -0.03808066
 Total        1.08314186   -0.06011821   -0.66065848
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16643078
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75894003
 One electron energy                 -371.49552288
 Two electron energy                  157.66843362
 Virial quotient                       -2.58373403
 Correlation energy                    -0.66065848
 !MRCI STATE 6.1 Energy              -213.827089259789

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88201764 (Davidson, fixed reference)
 Cluster corrected energies          -213.88181842 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88201764 (Davidson, rotated reference)

 Cluster corrected energies          -213.88000946 (Pople, fixed reference)
 Cluster corrected energies          -213.87980419 (Pople, relaxed reference)
 Cluster corrected energies          -213.88000946 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94836116 (fixed)   0.96098761 (relaxed)   0.96085383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121589   -0.00212374   -0.55714519
 Singles      0.01948278   -0.05799448   -0.06543262
 Pairs        0.06244321   -0.00000000   -0.03808067
 Total        1.08314189   -0.06011822   -0.66065848
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16643078
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75894165
 One electron energy                 -371.49552406
 Two electron energy                  157.66843480
 Virial quotient                       -2.58373397
 Correlation energy                    -0.66065848
 !MRCI STATE 7.1 Energy              -213.827089259622

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88201765 (Davidson, fixed reference)
 Cluster corrected energies          -213.88181843 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88201765 (Davidson, rotated reference)

 Cluster corrected energies          -213.88000948 (Pople, fixed reference)
 Cluster corrected energies          -213.87980421 (Pople, relaxed reference)
 Cluster corrected energies          -213.88000948 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94818811 (fixed)   0.96098762 (relaxed)   0.96085384 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121590   -0.00212374   -0.55714523
 Singles      0.01948274   -0.05799445   -0.06543259
 Pairs        0.06244323   -0.00000000   -0.03808066
 Total        1.08314186   -0.06011819   -0.66065848
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16643078
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75893995
 One electron energy                 -371.49552179
 Two electron energy                  157.66843253
 Virial quotient                       -2.58373403
 Correlation energy                    -0.66065848
 !MRCI STATE 8.1 Energy              -213.827089259288

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88201764 (Davidson, fixed reference)
 Cluster corrected energies          -213.88181841 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88201764 (Davidson, rotated reference)

 Cluster corrected energies          -213.88000946 (Pople, fixed reference)
 Cluster corrected energies          -213.87980419 (Pople, relaxed reference)
 Cluster corrected energies          -213.88000946 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.93912201 (fixed)   0.96101467 (relaxed)   0.96086654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121548   -0.00206505   -0.55854856
 Singles      0.01920680   -0.05764321   -0.06495451
 Pairs        0.06269094   -0.00000001   -0.03830706
 Total        1.08311323   -0.05970827   -0.66181013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16218368
 Nuclear energy                         0.00000000
 Kinetic energy                        82.78458705
 One electron energy                 -371.66187843
 Two electron energy                  157.83807299
 Virial quotient                       -2.58289391
 Correlation energy                    -0.66162176
 !MRCI STATE 9.1 Energy              -213.823805435528

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87879496 (Davidson, fixed reference)
 Cluster corrected energies          -213.87857405 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87879496 (Davidson, rotated reference)

 Cluster corrected energies          -213.87678327 (Pople, fixed reference)
 Cluster corrected energies          -213.87655568 (Pople, relaxed reference)
 Cluster corrected energies          -213.87678327 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.93779221 (fixed)   0.96101467 (relaxed)   0.96086654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121548   -0.00206505   -0.55854857
 Singles      0.01920681   -0.05764320   -0.06495451
 Pairs        0.06269094   -0.00000001   -0.03830706
 Total        1.08311323   -0.05970826   -0.66181013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16218368
 Nuclear energy                         0.00000000
 Kinetic energy                        82.78458712
 One electron energy                 -371.66187876
 Two electron energy                  157.83807332
 Virial quotient                       -2.58289390
 Correlation energy                    -0.66162176
 !MRCI STATE 10.1 Energy             -213.823805435432

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87879496 (Davidson, fixed reference)
 Cluster corrected energies          -213.87857405 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87879496 (Davidson, rotated reference)

 Cluster corrected energies          -213.87678328 (Pople, fixed reference)
 Cluster corrected energies          -213.87655568 (Pople, relaxed reference)
 Cluster corrected energies          -213.87678328 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.94032350 (fixed)   0.96101467 (relaxed)   0.96086653 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121548   -0.00206505   -0.55854857
 Singles      0.01920681   -0.05764320   -0.06495451
 Pairs        0.06269095    0.00000001   -0.03830705
 Total        1.08311324   -0.05970825   -0.66181013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16218368
 Nuclear energy                         0.00000000
 Kinetic energy                        82.78458718
 One electron energy                 -371.66187875
 Two electron energy                  157.83807332
 Virial quotient                       -2.58289390
 Correlation energy                    -0.66162176
 !MRCI STATE 11.1 Energy             -213.823805435036

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87879496 (Davidson, fixed reference)
 Cluster corrected energies          -213.87857406 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87879496 (Davidson, rotated reference)

 Cluster corrected energies          -213.87678328 (Pople, fixed reference)
 Cluster corrected energies          -213.87655568 (Pople, relaxed reference)
 Cluster corrected energies          -213.87678328 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96069345 (fixed)   0.96082302 (relaxed)   0.96069345 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121228   -0.00212594   -0.00270184
 Singles      0.01953824   -0.05809810   -0.06554070
 Pairs        0.06275304   -0.60093847   -0.59291997
 Total        1.08350356   -0.66116251   -0.66116251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15995935
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75930421
 One electron energy                 -371.49136905
 Two electron energy                  157.67024719
 Virial quotient                       -2.58365055
 Correlation energy                    -0.66116251
 !MRCI STATE 12.1 Energy             -213.821121863155

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87633129 (Davidson, fixed reference)
 Cluster corrected energies          -213.87613808 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87633129 (Davidson, rotated reference)

 Cluster corrected energies          -213.87432898 (Pople, fixed reference)
 Cluster corrected energies          -213.87412978 (Pople, relaxed reference)
 Cluster corrected energies          -213.87432898 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      950.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3540.96   3537.22      2.46      0.08      0.82
 REAL TIME  *      3653.35 SEC
 DISK USED  *       989.64 MB (local),       15.54 GB (total)
 SF USED    *         9.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07420271  AU                              
 SETTING HLSDIAG(2)     =      -214.07420269  AU                              
 SETTING HLSDIAG(3)     =      -214.07420270  AU                              
 SETTING HLSDIAG(4)     =      -213.88201763  AU                              
 SETTING HLSDIAG(5)     =      -213.88201759  AU                              
 SETTING HLSDIAG(6)     =      -213.88201764  AU                              
 SETTING HLSDIAG(7)     =      -213.88201765  AU                              
 SETTING HLSDIAG(8)     =      -213.88201764  AU                              
 SETTING HLSDIAG(9)     =      -213.87879496  AU                              
 SETTING HLSDIAG(10)    =      -213.87879496  AU                              
 SETTING HLSDIAG(11)    =      -213.87879496  AU                              
 SETTING HLSDIAG(12)    =      -213.87633129  AU                              


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
     1      -213.30982367
     2      -213.30982367
     3      -213.30982367
     4      -213.30982367
     5      -213.30982367
     6      -213.27988023
     7      -213.17074935
     8      -213.17074935
     9      -213.17074935
    10      -213.15241173
    11      -213.15241173
    12      -213.15241173
    13      -213.15241173
    14      -213.15241173
    15      -213.14009435

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1001D-06

 Number of blocks in overlap matrix:  1314   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2704
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2473784
 Number of doubly external configurations:       6236272
 Total number of contracted configurations:      8734206
 Total number of uncontracted configurations:   64975422

 Diagonal Coupling coefficients finished.               Storage:  21888356 words, CPU-Time:     51.40 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1448187 words, CPU-time:      0.32 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30982367     0.00000000    -0.83230318  0.51D-01  0.10D+00    64.45
    1     2     2     1.00000000     0.00000000  -213.30982367     0.00000000    -0.83322517  0.52D-01  0.10D+00    64.45
    1     3     3     1.00000000     0.00000000  -213.30982367     0.00000000    -0.83298887  0.52D-01  0.10D+00    64.45
    1     4     4     1.00000000     0.00000000  -213.30982367    -0.00000000    -0.83339870  0.53D-01  0.10D+00    64.45
    1     5     5     1.00000000     0.00000000  -213.30982367    -0.00000000    -0.83235738  0.51D-01  0.10D+00    64.45
    1     6     6     1.00000000     0.00000000  -213.27988023     0.00000000    -0.80960821  0.24D-01  0.11D+00    64.45
    1     7     7     1.00000000     0.00000000  -213.17074935    -0.00000000    -0.79561829  0.39D-01  0.93D-01    64.45
    1     8     8     1.00000000     0.00000000  -213.17074935    -0.00000000    -0.79559609  0.39D-01  0.93D-01    64.45
    1     9     9     1.00000000     0.00000000  -213.17074935    -0.00000000    -0.79560759  0.39D-01  0.93D-01    64.45
    1    10    10     1.00000000     0.00000000  -213.15241173    -0.00000000    -0.80475795  0.47D-01  0.95D-01    64.45
    1    11    11     1.00000000     0.00000000  -213.15241173     0.00000000    -0.80532951  0.48D-01  0.95D-01    64.45
    1    12    12     1.00000000     0.00000000  -213.15241173     0.00000000    -0.80541064  0.48D-01  0.95D-01    64.45
    1    13    13     1.00000000     0.00000000  -213.15241173     0.00000000    -0.80543666  0.48D-01  0.95D-01    64.45
    1    14    14     1.00000000     0.00000000  -213.15241173    -0.00000000    -0.80497961  0.47D-01  0.95D-01    64.45
    1    15    15     1.00000000     0.00000000  -213.14009435     0.00000000    -0.80659393  0.55D-01  0.97D-01    64.45
    2     1     1     1.09649000    -0.65995498  -213.96977865    -0.65995498    -0.01882593  0.35D-02  0.15D-02   396.41
    2     2     2     1.09650977    -0.65987662  -213.96970029    -0.65987662    -0.01892970  0.35D-02  0.15D-02   396.41
    2     3     3     1.09688386    -0.65968131  -213.96950498    -0.65968131    -0.01913477  0.37D-02  0.15D-02   396.41
    2     4     4     1.09700994    -0.65955891  -213.96938258    -0.65955891    -0.01927505  0.37D-02  0.15D-02   396.41
    2     5     5     1.09709643    -0.65952900  -213.96935267    -0.65952900    -0.01931394  0.37D-02  0.15D-02   396.41
    2     6     6     1.08633908    -0.65623775  -213.93611799    -0.65623775    -0.01539810  0.25D-02  0.14D-02   396.41
    2     7     7     1.08644399    -0.64604857  -213.81679792    -0.64604857    -0.01449088  0.21D-02  0.10D-02   396.41
    2     8     8     1.08646235    -0.64603656  -213.81678591    -0.64603656    -0.01450578  0.21D-02  0.10D-02   396.41
    2     9     9     1.08646850    -0.64603212  -213.81678147    -0.64603212    -0.01451010  0.21D-02  0.10D-02   396.41
    2    10    10     1.09083165    -0.64793056  -213.80034229    -0.64793056    -0.01642382  0.34D-02  0.12D-02   396.41
    2    11    11     1.09082291    -0.64791480  -213.80032653    -0.64791480    -0.01643914  0.34D-02  0.12D-02   396.41
    2    12    12     1.09153326    -0.64753431  -213.79994605    -0.64753431    -0.01684738  0.38D-02  0.12D-02   396.41
    2    13    13     1.09158215    -0.64749681  -213.79990855    -0.64749681    -0.01689448  0.38D-02  0.12D-02   396.41
    2    14    14     1.09160087    -0.64748994  -213.79990167    -0.64748994    -0.01690141  0.38D-02  0.12D-02   396.41
    2    15    15     1.09708826    -0.64697961  -213.78707396    -0.64697961    -0.01830107  0.55D-02  0.12D-02   396.41
    3     1     1     1.08702640    -0.67776745  -213.98759112    -0.01781248    -0.00053151  0.74D-04  0.66D-04   727.15
    3     2     2     1.08701947    -0.67776233  -213.98758600    -0.01788571    -0.00053586  0.74D-04  0.67D-04   727.15
    3     3     3     1.08705256    -0.67775539  -213.98757906    -0.01807408    -0.00054432  0.76D-04  0.68D-04   727.15
    3     4     4     1.08704303    -0.67774913  -213.98757280    -0.01819022    -0.00054983  0.76D-04  0.69D-04   727.15
    3     5     5     1.08705790    -0.67774794  -213.98757161    -0.01821894    -0.00055153  0.77D-04  0.69D-04   727.15
    3     6     6     1.08309200    -0.67124088  -213.95112112    -0.01500313    -0.00044060  0.43D-04  0.69D-04   727.15
    3     7     7     1.08095690    -0.66006741  -213.83081675    -0.01401883    -0.00030479  0.31D-04  0.31D-04   727.15
    3     8     8     1.08095858    -0.66006633  -213.83081568    -0.01402977    -0.00030590  0.31D-04  0.32D-04   727.15
    3     9     9     1.08095810    -0.66006623  -213.83081558    -0.01403411    -0.00030592  0.31D-04  0.32D-04   727.15
    3    10    10     1.08254653    -0.66373142  -213.81614315    -0.01580086    -0.00042057  0.59D-04  0.52D-04   727.15
    3    11    11     1.08256562    -0.66372897  -213.81614070    -0.01581417    -0.00042281  0.59D-04  0.53D-04   727.15
    3    12    12     1.08259757    -0.66370831  -213.81612005    -0.01617400    -0.00044261  0.62D-04  0.56D-04   727.15
    3    13    13     1.08260146    -0.66370563  -213.81611737    -0.01620882    -0.00044520  0.62D-04  0.57D-04   727.15
    3    14    14     1.08260165    -0.66370509  -213.81611682    -0.01621515    -0.00044551  0.62D-04  0.57D-04   727.15
    3    15    15     1.08421555    -0.66483269  -213.80492704    -0.01785308    -0.00054930  0.91D-04  0.80D-04   727.15
    4     1     1     1.08719285    -0.67833043  -213.98815410    -0.00056298    -0.00002944  0.39D-05  0.45D-05  1060.52
    4     2     2     1.08718899    -0.67833006  -213.98815373    -0.00056773    -0.00002968  0.39D-05  0.46D-05  1060.52
    4     3     3     1.08718844    -0.67833003  -213.98815370    -0.00057463    -0.00002977  0.39D-05  0.46D-05  1060.52
    4     4     4     1.08718578    -0.67832963  -213.98815330    -0.00058050    -0.00003006  0.39D-05  0.47D-05  1060.52
    4     5     5     1.08718378    -0.67832963  -213.98815330    -0.00058169    -0.00003005  0.39D-05  0.47D-05  1060.52
    4     6     6     1.08429754    -0.67171346  -213.95159370    -0.00047258    -0.00002961  0.29D-05  0.55D-05  1060.52
    4     7     7     1.08153358    -0.66038695  -213.83113630    -0.00031954    -0.00001342  0.26D-05  0.14D-05  1060.52
    4     8     8     1.08153375    -0.66038688  -213.83113623    -0.00032055    -0.00001349  0.26D-05  0.14D-05  1060.52
    4     9     9     1.08153390    -0.66038685  -213.83113620    -0.00032062    -0.00001351  0.26D-05  0.14D-05  1060.52
    4    10    10     1.08298616    -0.66418181  -213.81659354    -0.00045039    -0.00002519  0.49D-05  0.39D-05  1060.52
    4    11    11     1.08298488    -0.66418153  -213.81659327    -0.00045256    -0.00002540  0.50D-05  0.39D-05  1060.52
    4    12    12     1.08298521    -0.66418011  -213.81659185    -0.00047180    -0.00002653  0.53D-05  0.41D-05  1060.52
    4    13    13     1.08298465    -0.66418006  -213.81659180    -0.00047443    -0.00002669  0.54D-05  0.42D-05  1060.52
    4    14    14     1.08298387    -0.66417989  -213.81659162    -0.00047480    -0.00002672  0.54D-05  0.42D-05  1060.52
    4    15    15     1.08432328    -0.66543692  -213.80553127    -0.00060424    -0.00003807  0.74D-05  0.64D-05  1060.52
    5     1     1     1.08731453    -0.67836522  -213.98818889    -0.00003479    -0.00000156  0.92D-07  0.30D-06  1392.73
    5     2     2     1.08731373    -0.67836521  -213.98818888    -0.00003515    -0.00000157  0.89D-07  0.30D-06  1392.73
    5     3     3     1.08731260    -0.67836519  -213.98818886    -0.00003516    -0.00000158  0.95D-07  0.30D-06  1392.73
    5     4     4     1.08731187    -0.67836517  -213.98818884    -0.00003554    -0.00000160  0.94D-07  0.31D-06  1392.73
    5     5     5     1.08731182    -0.67836517  -213.98818884    -0.00003554    -0.00000160  0.93D-07  0.31D-06  1392.73
    5     6     6     1.08476026    -0.67174873  -213.95162896    -0.00003526    -0.00000196  0.11D-06  0.39D-06  1392.73
    5     7     7     1.08166720    -0.66040226  -213.83115161    -0.00001532    -0.00000064  0.58D-07  0.11D-06  1392.73
    5     8     8     1.08166722    -0.66040225  -213.83115160    -0.00001537    -0.00000064  0.59D-07  0.11D-06  1392.73
    5     9     9     1.08166720    -0.66040225  -213.83115159    -0.00001540    -0.00000063  0.58D-07  0.11D-06  1392.73
    5    10    10     1.08313435    -0.66421254  -213.81662427    -0.00003073    -0.00000202  0.16D-06  0.45D-06  1392.73
    5    11    11     1.08313270    -0.66421235  -213.81662409    -0.00003082    -0.00000216  0.18D-06  0.47D-06  1392.73
    5    12    12     1.08313481    -0.66421233  -213.81662406    -0.00003221    -0.00000201  0.16D-06  0.44D-06  1392.73
    5    13    13     1.08313232    -0.66421222  -213.81662395    -0.00003216    -0.00000216  0.18D-06  0.47D-06  1392.73
    5    14    14     1.08313326    -0.66421220  -213.81662394    -0.00003231    -0.00000214  0.18D-06  0.47D-06  1392.73
    5    15    15     1.08442642    -0.66548276  -213.80557711    -0.00004584    -0.00000312  0.27D-06  0.69D-06  1392.73
    6     1     1     1.08731415    -0.67836709  -213.98819076    -0.00000187    -0.00000012  0.14D-07  0.21D-07  1724.80
    6     2     2     1.08731382    -0.67836709  -213.98819076    -0.00000188    -0.00000012  0.14D-07  0.21D-07  1724.80
    6     3     3     1.08731363    -0.67836709  -213.98819076    -0.00000190    -0.00000012  0.15D-07  0.22D-07  1724.80
    6     4     4     1.08731320    -0.67836709  -213.98819076    -0.00000192    -0.00000013  0.15D-07  0.22D-07  1724.80
    6     5     5     1.08731317    -0.67836709  -213.98819076    -0.00000192    -0.00000013  0.15D-07  0.22D-07  1724.80
    6     6     6     1.08479565    -0.67175117  -213.95163140    -0.00000244    -0.00000015  0.17D-07  0.24D-07  1724.80
    6     7     7     1.08167361    -0.66040303  -213.83115238    -0.00000077    -0.00000005  0.49D-08  0.12D-07  1724.80
    6     8     8     1.08167358    -0.66040302  -213.83115237    -0.00000077    -0.00000005  0.50D-08  0.12D-07  1724.80
    6     9     9     1.08167366    -0.66040300  -213.83115235    -0.00000076    -0.00000005  0.49D-08  0.12D-07  1724.80
    6    10    10     1.08313377    -0.66421518  -213.81662691    -0.00000264    -0.00000025  0.31D-07  0.46D-07  1724.80
    6    11    11     1.08313241    -0.66421513  -213.81662686    -0.00000277    -0.00000027  0.36D-07  0.51D-07  1724.80
    6    12    12     1.08313223    -0.66421500  -213.81662673    -0.00000267    -0.00000027  0.36D-07  0.51D-07  1724.80
    6    13    13     1.08313228    -0.66421496  -213.81662669    -0.00000274    -0.00000027  0.35D-07  0.50D-07  1724.80
    6    14    14     1.08313360    -0.66421495  -213.81662669    -0.00000275    -0.00000025  0.31D-07  0.45D-07  1724.80
    6    15    15     1.08441254    -0.66548667  -213.80558103    -0.00000392    -0.00000037  0.42D-07  0.76D-07  1724.80
    7     1     1     1.08733088    -0.67836723  -213.98819090    -0.00000014    -0.00000001  0.97D-09  0.20D-08  2056.30
    7     2     2     1.08733088    -0.67836723  -213.98819090    -0.00000014    -0.00000001  0.10D-08  0.21D-08  2056.30
    7     3     3     1.08733085    -0.67836723  -213.98819090    -0.00000014    -0.00000001  0.97D-09  0.20D-08  2056.30
    7     4     4     1.08733083    -0.67836723  -213.98819090    -0.00000014    -0.00000001  0.10D-08  0.21D-08  2056.30
    7     5     5     1.08733082    -0.67836723  -213.98819090    -0.00000014    -0.00000001  0.10D-08  0.21D-08  2056.30
    7     6     6     1.08480901    -0.67175133  -213.95163157    -0.00000017    -0.00000001  0.13D-08  0.22D-08  2056.30
    7     7     7     1.08167864    -0.66040310  -213.83115245    -0.00000007    -0.00000001  0.52D-09  0.13D-08  2056.30
    7     8     8     1.08167862    -0.66040309  -213.83115243    -0.00000007    -0.00000001  0.52D-09  0.13D-08  2056.30
    7     9     9     1.08167860    -0.66040307  -213.83115242    -0.00000007    -0.00000001  0.51D-09  0.13D-08  2056.30
    7    10    10     1.08314672    -0.66421547  -213.81662721    -0.00000030    -0.00000003  0.27D-08  0.56D-08  2056.30
    7    11    11     1.08314618    -0.66421545  -213.81662719    -0.00000032    -0.00000003  0.29D-08  0.63D-08  2056.30
    7    12    12     1.08314607    -0.66421532  -213.81662706    -0.00000033    -0.00000003  0.29D-08  0.63D-08  2056.30
    7    13    13     1.08314601    -0.66421528  -213.81662701    -0.00000032    -0.00000003  0.29D-08  0.62D-08  2056.30
    7    14    14     1.08314638    -0.66421525  -213.81662698    -0.00000029    -0.00000003  0.26D-08  0.55D-08  2056.30
    7    15    15     1.08443336    -0.66548712  -213.80558147    -0.00000044    -0.00000005  0.43D-08  0.11D-07  2056.30
    8     1     1     1.08733088    -0.67836723  -213.98819090    -0.00000000    -0.00000001  0.97D-09  0.20D-08  2164.49
    8     2     2     1.08733088    -0.67836723  -213.98819090    -0.00000000    -0.00000001  0.10D-08  0.21D-08  2164.49
    8     3     3     1.08733085    -0.67836723  -213.98819090    -0.00000000    -0.00000001  0.97D-09  0.20D-08  2164.49
    8     4     4     1.08733083    -0.67836723  -213.98819090     0.00000000    -0.00000001  0.10D-08  0.21D-08  2164.49
    8     5     5     1.08733082    -0.67836723  -213.98819090     0.00000000    -0.00000001  0.10D-08  0.21D-08  2164.49
    8     6     6     1.08480887    -0.67175134  -213.95163157    -0.00000000    -0.00000001  0.11D-08  0.21D-08  2164.49
    8     7     7     1.08167864    -0.66040310  -213.83115245     0.00000000    -0.00000001  0.52D-09  0.13D-08  2164.49
    8     8     8     1.08167862    -0.66040309  -213.83115243    -0.00000000    -0.00000001  0.52D-09  0.13D-08  2164.49
    8     9     9     1.08167860    -0.66040307  -213.83115242    -0.00000000    -0.00000001  0.51D-09  0.13D-08  2164.49
    8    10    10     1.08314672    -0.66421547  -213.81662721    -0.00000000    -0.00000003  0.27D-08  0.56D-08  2164.49
    8    11    11     1.08314618    -0.66421545  -213.81662719     0.00000000    -0.00000003  0.29D-08  0.63D-08  2164.49
    8    12    12     1.08314607    -0.66421532  -213.81662706     0.00000000    -0.00000003  0.29D-08  0.63D-08  2164.49
    8    13    13     1.08314601    -0.66421528  -213.81662701     0.00000000    -0.00000003  0.29D-08  0.62D-08  2164.49
    8    14    14     1.08314638    -0.66421525  -213.81662698    -0.00000000    -0.00000003  0.26D-08  0.55D-08  2164.49
    8    15    15     1.08443624    -0.66548718  -213.80558153    -0.00000006    -0.00000000  0.37D-09  0.88D-09  2164.49


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%   9.7%
 P   0.4%  38.2%  35.2%

 Initialization:   2.5%
 Other:           11.6%

 Total CPU:     2164.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.0000298   0.9524680  -0.0109837  -0.0087123   0.0055408   0.0000000   0.0000000   0.0000000
                            0.0000000   0.0000012  -0.0089920   0.0000011  -0.0000020   0.0000006   0.0000000
 22222222220/0\00          -0.0002365   0.0000730   0.0050979   0.0014230  -0.0002100   0.0385103   0.0000000   0.0000000
                            0.0000000  -0.0927653   0.0000357  -0.0000573  -0.0000477   0.7640407   0.5412543
 2222222222020000          -0.0346940   0.0107123   0.7477396   0.2087273  -0.0307964   0.5414858   0.0000000   0.0000000
                           -0.0000000   0.0008849  -0.0000003   0.0000005   0.0000005  -0.0072881  -0.0361820
 22222222220/\000          -0.0081155  -0.0002243  -0.1410500   0.6098903   0.7179801   0.0000000   0.0000000   0.0000000
                            0.0000001  -0.0000008   0.0000020  -0.0000011  -0.0089920  -0.0000007  -0.0000000
 2222222222/0000\          -0.0044687  -0.0000386  -0.0027571  -0.0007384   0.0000351   0.0385104  -0.0000000  -0.0000000
                            0.0000000   0.7080657   0.0000775   0.0000643  -0.0000391  -0.3016889   0.5412453
 2222222222002000           0.6901458  -0.0050486  -0.3433368  -0.1004169   0.0256489   0.5414858   0.0000000  -0.0000000
                           -0.0000000   0.0058695   0.0000011   0.0000001  -0.0000008   0.0044109  -0.0361820
 2222222222/\0000           0.0153181   0.0074080  -0.2164963   0.6855646  -0.6247109   0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0000006  -0.0000011  -0.0089920   0.0000011  -0.0000006   0.0000000
 22222222220/000\           0.0000738   0.0000357  -0.0010437   0.0033051  -0.0030117   0.0000000  -0.0002205  -0.6731482
                            0.0002133  -0.0000414   0.0000779   0.6665393  -0.0000813   0.0000449   0.0000000
 22222222220/00\0          -0.0000391  -0.0000011  -0.0006800   0.0029402   0.0034613  -0.0000000  -0.0004518  -0.0002131
                           -0.6731473   0.0000576  -0.0001455   0.0000813   0.6665400   0.0000486  -0.0000000
 222222222200/00\           0.0000001   0.0045918  -0.0000530  -0.0000420   0.0000267   0.0000000  -0.6731467   0.0002206
                            0.0004517  -0.0000909   0.6665406  -0.0000779   0.0001455  -0.0000422   0.0000000
 2222222222/000\0           0.0000001   0.0045918  -0.0000530  -0.0000420   0.0000267   0.0000000   0.6731449  -0.0002206
                           -0.0004517  -0.0000909   0.6665425  -0.0000779   0.0001455  -0.0000422  -0.0000000
 222222222200/\00          -0.0000391  -0.0000011  -0.0006800   0.0029402   0.0034613   0.0000000   0.0004518   0.0002131
                            0.6731444   0.0000576  -0.0001455   0.0000813   0.6665431   0.0000486  -0.0000000
 2222222222/00\00           0.0000738   0.0000357  -0.0010437   0.0033050  -0.0030116   0.0000000   0.0002205   0.6731437
                           -0.0002133  -0.0000414   0.0000779   0.6665438  -0.0000813   0.0000449  -0.0000000
 2222222222200000          -0.6554519  -0.0056637  -0.4044027  -0.1083104   0.0051476   0.5414858   0.0000000  -0.0000000
                           -0.0000000  -0.0067545  -0.0000007  -0.0000006   0.0000004   0.0028782  -0.0361819
 222222222200/0\0           0.0047053  -0.0000344  -0.0023408  -0.0006846   0.0001749   0.0385104   0.0000000  -0.0000000
                           -0.0000000  -0.6152986  -0.0001132  -0.0000071   0.0000869  -0.4623641   0.5412457
 2222222222000/\0           0.0001540   0.0000043   0.0026759  -0.0115704  -0.0136210   0.0000000   0.0000000  -0.0000000
                            0.0000005  -0.0000111   0.0000280  -0.0000156  -0.1281004  -0.0000093   0.0000000
 2222222222000/0\          -0.0002906  -0.0001405   0.0041072  -0.0130060   0.0118516  -0.0000000   0.0000000   0.0000006
                           -0.0000000   0.0000080  -0.0000150  -0.1281001   0.0000156  -0.0000086  -0.0000000
 22222222220000/\          -0.0000006  -0.0180695   0.0002084   0.0001653  -0.0001051   0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0000175  -0.1281001   0.0000150  -0.0000280   0.0000081  -0.0000000
 2222220222022000          -0.0677777  -0.0005857  -0.0418176  -0.0111999   0.0005323  -0.1083367  -0.0000000  -0.0000000
                            0.0000000  -0.0040126  -0.0000004  -0.0000004   0.0000002   0.0017097   0.0101211
 2222220222220000           0.0713651  -0.0005221  -0.0355032  -0.0103837   0.0026522  -0.1083366  -0.0000000   0.0000000
                           -0.0000000   0.0034870   0.0000006   0.0000000  -0.0000005   0.0026201   0.0101210
 2222220222202000          -0.0035877   0.0011077   0.0773207   0.0215836  -0.0031845  -0.1083366   0.0000000   0.0000000
                           -0.0000000   0.0005258  -0.0000002   0.0000003   0.0000003  -0.0043301   0.0101211
 2222222222000200           0.0006582  -0.0002032  -0.0141855  -0.0039598   0.0005842  -0.0177304   0.0000000  -0.0000000
                           -0.0000000   0.0126061  -0.0000048   0.0000078   0.0000065  -0.1038306  -0.0769630
 2222220222/2\000          -0.0000031  -0.0984908   0.0011358   0.0009009  -0.0005729  -0.0000000   0.0000000   0.0000000
                            0.0000000  -0.0000007   0.0053422  -0.0000006   0.0000012  -0.0000003   0.0000000
 2222222222000002           0.0124348   0.0001074   0.0076721   0.0020548  -0.0000977  -0.0177304  -0.0000000  -0.0000000
                            0.0000000  -0.0962233  -0.0000105  -0.0000087   0.0000053   0.0409981  -0.0769609
 2222222222000020          -0.0130930   0.0000958   0.0065135   0.0019050  -0.0004866  -0.0177303  -0.0000000   0.0000000
                           -0.0000000   0.0836166   0.0000154   0.0000010  -0.0000118   0.0628334  -0.0769607
 22222202222/\000           0.0008392   0.0000232   0.0145854  -0.0630663  -0.0742434  -0.0000000  -0.0000000   0.0000000
                           -0.0000001   0.0000005  -0.0000012   0.0000007   0.0053422   0.0000004  -0.0000000
 22222202222/0\00          -0.0190004  -0.0001430  -0.0102430  -0.0027271   0.0000894   0.0125845   0.0000000   0.0000000
                           -0.0000000   0.0078023  -0.0000035   0.0000054   0.0000046  -0.0726546  -0.0531135
 22222202220/2\00           0.0198693  -0.0001252  -0.0084791  -0.0024991   0.0006817   0.0125847  -0.0000000  -0.0000000
                            0.0000000   0.0098112  -0.0000032   0.0000055   0.0000044  -0.0724106  -0.0531127
 2222220222/\2000          -0.0015840  -0.0007660   0.0223870  -0.0708914   0.0645988   0.0000000  -0.0000000  -0.0000000
                           -0.0000000  -0.0000003   0.0000006   0.0053423  -0.0000007   0.0000004   0.0000000
 2222220222/2000\          -0.0022634   0.0002985   0.0208213   0.0058210  -0.0008797   0.0125843   0.0000000   0.0000000
                           -0.0000000  -0.0676151  -0.0000075  -0.0000061   0.0000038   0.0277098  -0.0531127
 2222220222/0200\           0.0186747  -0.0001567  -0.0106960  -0.0031091   0.0007508   0.0125845   0.0000000   0.0000000
                           -0.0000000  -0.0668216  -0.0000072  -0.0000061   0.0000036   0.0295704  -0.0531120
 22222202220/200\           0.0000208   0.0000101  -0.0002946   0.0009328  -0.0008500   0.0000000   0.0000210   0.0640316
                           -0.0000203   0.0000040  -0.0000075  -0.0637821   0.0000078  -0.0000043   0.0000000
 222222022202/00\           0.0000000   0.0012959  -0.0000149  -0.0000119   0.0000075  -0.0000000   0.0640316  -0.0000210
                           -0.0000430   0.0000087  -0.0637822   0.0000075  -0.0000139   0.0000040  -0.0000000
 2222220222/200\0           0.0000000   0.0012960  -0.0000149  -0.0000119   0.0000075  -0.0000000  -0.0640313   0.0000210
                            0.0000430   0.0000087  -0.0637825   0.0000075  -0.0000139   0.0000040   0.0000000
 222222022220/\00          -0.0000110  -0.0000003  -0.0001919   0.0008298   0.0009769   0.0000000  -0.0000430  -0.0000203
                           -0.0640313  -0.0000055   0.0000139  -0.0000078  -0.0637826  -0.0000047  -0.0000000
 22222202222/00\0          -0.0000110  -0.0000003  -0.0001919   0.0008299   0.0009769  -0.0000000   0.0000430   0.0000203
                            0.0640312  -0.0000055   0.0000139  -0.0000078  -0.0637821  -0.0000047  -0.0000000
 2222220222/02\00           0.0000208   0.0000101  -0.0002946   0.0009328  -0.0008500   0.0000000  -0.0000210  -0.0640312
                            0.0000203   0.0000040  -0.0000075  -0.0637824   0.0000078  -0.0000043   0.0000000
 2222220222/20\00          -0.0002920  -0.0001412   0.0041275  -0.0130704   0.0119102  -0.0000000  -0.0000203  -0.0620958
                            0.0000197   0.0000039  -0.0000073  -0.0627711   0.0000077  -0.0000042  -0.0000000
 22222202222/000\          -0.0002920  -0.0001412   0.0041275  -0.0130704   0.0119102  -0.0000000   0.0000203   0.0620961
                           -0.0000197   0.0000039  -0.0000073  -0.0627709   0.0000077  -0.0000042   0.0000000
 222222022202/\00           0.0001547   0.0000043   0.0026892  -0.0116277  -0.0136885  -0.0000000  -0.0000417  -0.0000197
                           -0.0620963  -0.0000054   0.0000137  -0.0000077  -0.0627709  -0.0000046  -0.0000000
 2222220222/020\0          -0.0000006  -0.0181590   0.0002094   0.0001661  -0.0001056  -0.0000000  -0.0620958   0.0000204
                            0.0000417   0.0000086  -0.0627709   0.0000073  -0.0000137   0.0000040   0.0000000
 22222202220/20\0           0.0001547   0.0000043   0.0026891  -0.0116277  -0.0136884   0.0000000   0.0000417   0.0000197
                            0.0620960  -0.0000054   0.0000137  -0.0000077  -0.0627708  -0.0000046   0.0000000
 222222022220/00\          -0.0000006  -0.0181590   0.0002094   0.0001661  -0.0001056  -0.0000000   0.0620963  -0.0000203
                           -0.0000417   0.0000086  -0.0627704   0.0000073  -0.0000137   0.0000040   0.0000000
 222222022202/0\0           0.0003258   0.0002997   0.0209389   0.0058362  -0.0008402   0.0125845  -0.0000000  -0.0000000
                            0.0000000   0.0590197   0.0000108   0.0000008  -0.0000082   0.0430851  -0.0531126
 222222022220/0\0          -0.0176057  -0.0001733  -0.0123425  -0.0033219   0.0001981   0.0125845   0.0000000  -0.0000000
                            0.0000000   0.0578043   0.0000107   0.0000006  -0.0000083   0.0447018  -0.0531125

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.172205    0.015394   -0.008156    0.000030    0.941536    0.000000   -0.000000    0.000000   -0.000000   -0.030180
             0.000415   -0.000002   -0.000783    0.038240    0.000000
 2           0.012949    0.007445   -0.000225    0.957193   -0.002522   -0.000000   -0.000000   -0.000000   -0.000000    0.000532
             0.000011   -0.048717   -0.000379    0.000410   -0.000000
 3           0.906731   -0.217570   -0.141750   -0.011038   -0.163510   -0.000000    0.000000    0.000000    0.000000    0.036738
             0.007214    0.000562    0.011073    0.029143   -0.000000
 4           0.251654    0.688965    0.612916   -0.008756   -0.051982   -0.000000    0.000000   -0.000000   -0.000000    0.010448
            -0.031195    0.000446   -0.035065    0.007866   -0.000000
 5          -0.033687   -0.627810    0.721542    0.005568    0.022676    0.000000   -0.000000   -0.000000    0.000000   -0.001999
            -0.036723   -0.000283    0.031953   -0.000524    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.958667   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.041860
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.960918    0.000645    0.000315    0.000000
            -0.000000   -0.000001   -0.000000   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000315    0.000304    0.960918   -0.000000
            -0.000000   -0.000000   -0.000003   -0.000000    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000645    0.960918   -0.000304   -0.000000
            -0.000002   -0.000000    0.000000    0.000000    0.000000
 10         -0.017108   -0.000003    0.000004   -0.000007   -0.047405    0.000000    0.000000   -0.000000    0.000000   -0.461992
             0.000083   -0.000131   -0.000060    0.840312    0.000001
 11          0.000001    0.000006   -0.000011    0.050398   -0.000008   -0.000000    0.000001    0.000000    0.000000   -0.000116
            -0.000209    0.958938    0.000112    0.000085   -0.000000
 12         -0.000004    0.050398    0.000006   -0.000006   -0.000002   -0.000000    0.000000    0.000000    0.000003    0.000028
             0.000117   -0.000112    0.958938    0.000083   -0.000000
 13         -0.000002   -0.000006    0.050398    0.000011    0.000005    0.000000   -0.000000    0.000002   -0.000000    0.000101
             0.958938    0.000209   -0.000117   -0.000039    0.000000
 14          0.047405    0.000003    0.000004   -0.000003   -0.017108   -0.000000   -0.000000    0.000000   -0.000000   -0.840312
             0.000070   -0.000061    0.000065   -0.461992   -0.000007
 15          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.042748   -0.000000   -0.000000   -0.000000   -0.000006
            -0.000000   -0.000000    0.000000   -0.000005    0.958737

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958551    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000783
            -0.000000    0.000013   -0.000007   -0.000131   -0.000000
 2           0.000000    0.958551    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000002
             0.000794    0.000006   -0.000000    0.000011    0.000000
 3          -0.000000    0.000000    0.958551   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000128
            -0.000009   -0.000181   -0.000118    0.000754   -0.000000
 4          -0.000000    0.000000   -0.000000    0.958551    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000030
            -0.000007    0.000572    0.000509    0.000211    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.958551   -0.000000   -0.000000    0.000000    0.000000   -0.000008
             0.000004   -0.000521    0.000599   -0.000033   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.959580   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000442
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.960918    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.960918    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.960918    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 10         -0.000783   -0.000002   -0.000128   -0.000030   -0.000008    0.000000    0.000000   -0.000000    0.000000    0.960261
            -0.000000    0.000000   -0.000000    0.000000   -0.000000
 11         -0.000000    0.000794   -0.000009   -0.000007    0.000004    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.960261   -0.000000    0.000000   -0.000000   -0.000000
 12          0.000013    0.000006   -0.000181    0.000572   -0.000521   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.960261   -0.000000    0.000000   -0.000000
 13         -0.000007   -0.000000   -0.000118    0.000509    0.000599    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.960261    0.000000   -0.000000
 14         -0.000131    0.000011    0.000754    0.000211   -0.000033   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.960261    0.000000
 15         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000442   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.959690


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94153567 (fixed)   0.95863380 (relaxed)   0.95855140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093866   -0.00172285   -0.57082881
 Singles      0.01962826   -0.05774157   -0.06528347
 Pairs        0.06778459   -0.00000002   -0.04225495
 Total        1.08835152   -0.05946444   -0.67836723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30940362
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98753150
 One electron energy                 -375.65886868
 Two electron energy                  161.67067778
 Virial quotient                       -2.57855833
 Correlation energy                    -0.67878729
 !MRCI STATE 1.1 Energy              -213.988190902169

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04816279 (Davidson, fixed reference)
 Cluster corrected energies          -214.04803580 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04816279 (Davidson, rotated reference)

 Cluster corrected energies          -214.04691502 (Pople, fixed reference)
 Cluster corrected energies          -214.04678120 (Pople, relaxed reference)
 Cluster corrected energies          -214.04691502 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95719276 (fixed)   0.95863380 (relaxed)   0.95855140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093866   -0.00172285   -0.57082871
 Singles      0.01962840   -0.05774170   -0.06528354
 Pairs        0.06778446    0.00000000   -0.04225498
 Total        1.08835152   -0.05946455   -0.67836723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30940362
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98753284
 One electron energy                 -375.65886986
 Two electron energy                  161.67067896
 Virial quotient                       -2.57855829
 Correlation energy                    -0.67878729
 !MRCI STATE 2.1 Energy              -213.988190901592

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04816279 (Davidson, fixed reference)
 Cluster corrected energies          -214.04803580 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04816279 (Davidson, rotated reference)

 Cluster corrected energies          -214.04691502 (Pople, fixed reference)
 Cluster corrected energies          -214.04678120 (Pople, relaxed reference)
 Cluster corrected energies          -214.04691502 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.90673068 (fixed)   0.95863381 (relaxed)   0.95855142 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093866   -0.00172285   -0.57082886
 Singles      0.01962824   -0.05774156   -0.06528346
 Pairs        0.06778458    0.00000001   -0.04225490
 Total        1.08835149   -0.05946439   -0.67836723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30940362
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98753160
 One electron energy                 -375.65886880
 Two electron energy                  161.67067790
 Virial quotient                       -2.57855833
 Correlation energy                    -0.67878728
 !MRCI STATE 3.1 Energy              -213.988190900665

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04816277 (Davidson, fixed reference)
 Cluster corrected energies          -214.04803577 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04816277 (Davidson, rotated reference)

 Cluster corrected energies          -214.04691499 (Pople, fixed reference)
 Cluster corrected energies          -214.04678118 (Pople, relaxed reference)
 Cluster corrected energies          -214.04691499 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.68896531 (fixed)   0.95863382 (relaxed)   0.95855142 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093866   -0.00172285   -0.57082879
 Singles      0.01962832   -0.05774164   -0.06528350
 Pairs        0.06778448    0.00000000   -0.04225494
 Total        1.08835146   -0.05946449   -0.67836723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30940362
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98753269
 One electron energy                 -375.65886956
 Two electron energy                  161.67067866
 Virial quotient                       -2.57855830
 Correlation energy                    -0.67878728
 !MRCI STATE 4.1 Energy              -213.988190900567

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04816275 (Davidson, fixed reference)
 Cluster corrected energies          -214.04803576 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04816275 (Davidson, rotated reference)

 Cluster corrected energies          -214.04691498 (Pople, fixed reference)
 Cluster corrected energies          -214.04678116 (Pople, relaxed reference)
 Cluster corrected energies          -214.04691498 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.72154167 (fixed)   0.95863383 (relaxed)   0.95855143 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093866   -0.00172285   -0.57082879
 Singles      0.01962832   -0.05774165   -0.06528350
 Pairs        0.06778447   -0.00000000   -0.04225494
 Total        1.08835146   -0.05946450   -0.67836723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30940362
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98753282
 One electron energy                 -375.65886971
 Two electron energy                  161.67067881
 Virial quotient                       -2.57855829
 Correlation energy                    -0.67878728
 !MRCI STATE 5.1 Energy              -213.988190900540

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04816275 (Davidson, fixed reference)
 Cluster corrected energies          -214.04803575 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04816275 (Davidson, rotated reference)

 Cluster corrected energies          -214.04691497 (Pople, fixed reference)
 Cluster corrected energies          -214.04678116 (Pople, relaxed reference)
 Cluster corrected energies          -214.04691497 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95866680 (fixed)   0.95979455 (relaxed)   0.95958015 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111567   -0.00151168   -0.62006194
 Singles      0.01052367   -0.04071469   -0.04399629
 Pairs        0.07437981    0.04161304   -0.00769311
 Total        1.08601916   -0.00061333   -0.67175134
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27960858
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97113859
 One electron energy                 -375.37840025
 Two electron energy                  161.42676868
 Virial quotient                       -2.57862716
 Correlation energy                    -0.67202299
 !MRCI STATE 6.1 Energy              -213.951631570186

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00943842 (Davidson, fixed reference)
 Cluster corrected energies          -214.00911240 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00943842 (Davidson, rotated reference)

 Cluster corrected energies          -214.00812187 (Pople, fixed reference)
 Cluster corrected energies          -214.00777978 (Pople, relaxed reference)
 Cluster corrected energies          -214.00812187 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96091803 (fixed)   0.96105503 (relaxed)   0.96091829 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121840   -0.00212148   -0.55697165
 Singles      0.01952298   -0.05800936   -0.06546503
 Pairs        0.06225518   -0.00000000   -0.03796642
 Total        1.08299656   -0.06013084   -0.66040310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17074935
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75837445
 One electron energy                 -371.49822406
 Two electron energy                  157.66707162
 Virial quotient                       -2.58380078
 Correlation energy                    -0.66040310
 !MRCI STATE 7.1 Energy              -213.831152445577

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88596363 (Davidson, fixed reference)
 Cluster corrected energies          -213.88576013 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88596363 (Davidson, rotated reference)

 Cluster corrected energies          -213.88457598 (Pople, fixed reference)
 Cluster corrected energies          -213.88436351 (Pople, relaxed reference)
 Cluster corrected energies          -213.88457598 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96091821 (fixed)   0.96105504 (relaxed)   0.96091831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121840   -0.00212148   -0.55697165
 Singles      0.01952297   -0.05800935   -0.06546502
 Pairs        0.06225517   -0.00000000   -0.03796641
 Total        1.08299653   -0.06013083   -0.66040309
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17074935
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75837508
 One electron energy                 -371.49822461
 Two electron energy                  157.66707217
 Virial quotient                       -2.58380076
 Correlation energy                    -0.66040309
 !MRCI STATE 8.1 Energy              -213.831152433290

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88596360 (Davidson, fixed reference)
 Cluster corrected energies          -213.88576010 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88596360 (Davidson, rotated reference)

 Cluster corrected energies          -213.88457595 (Pople, fixed reference)
 Cluster corrected energies          -213.88436348 (Pople, relaxed reference)
 Cluster corrected energies          -213.88457595 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96091805 (fixed)   0.96105505 (relaxed)   0.96091831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121840   -0.00212147   -0.55697168
 Singles      0.01952292   -0.05800931   -0.06546498
 Pairs        0.06225520   -0.00000000   -0.03796641
 Total        1.08299652   -0.06013078   -0.66040307
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17074935
 Nuclear energy                         0.00000000
 Kinetic energy                        82.75836921
 One electron energy                 -371.49821882
 Two electron energy                  157.66706640
 Virial quotient                       -2.58380094
 Correlation energy                    -0.66040307
 !MRCI STATE 9.1 Energy              -213.831152417286

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88596357 (Davidson, fixed reference)
 Cluster corrected energies          -213.88576007 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88596357 (Davidson, rotated reference)

 Cluster corrected energies          -213.88457592 (Pople, fixed reference)
 Cluster corrected energies          -213.88436346 (Pople, relaxed reference)
 Cluster corrected energies          -213.88457592 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.84031216 (fixed)   0.96040322 (relaxed)   0.96026066 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123135   -0.00212293   -0.55939119
 Singles      0.01982865   -0.05838370   -0.06597339
 Pairs        0.06342046   -0.00000084   -0.03885089
 Total        1.08448045   -0.06050747   -0.66421547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15283179
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79853334
 One electron energy                 -371.75291714
 Two electron energy                  157.93628994
 Virial quotient                       -2.58237216
 Correlation energy                    -0.66379542
 !MRCI STATE 10.1 Energy             -213.816627207100

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87270494 (Davidson, fixed reference)
 Cluster corrected energies          -213.87249125 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87270494 (Davidson, rotated reference)

 Cluster corrected energies          -213.87135513 (Pople, fixed reference)
 Cluster corrected energies          -213.87113146 (Pople, relaxed reference)
 Cluster corrected energies          -213.87135513 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95893774 (fixed)   0.96040346 (relaxed)   0.96026090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123135   -0.00212293   -0.55939251
 Singles      0.01982856   -0.05838339   -0.06597334
 Pairs        0.06342000   -0.00000000   -0.03884959
 Total        1.08447991   -0.06050632   -0.66421545
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15283179
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79858937
 One electron energy                 -371.75296342
 Two electron energy                  157.93633623
 Virial quotient                       -2.58237041
 Correlation energy                    -0.66379540
 !MRCI STATE 11.1 Energy             -213.816627185448

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87270456 (Davidson, fixed reference)
 Cluster corrected energies          -213.87249087 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87270456 (Davidson, rotated reference)

 Cluster corrected energies          -213.87135473 (Pople, fixed reference)
 Cluster corrected energies          -213.87113106 (Pople, relaxed reference)
 Cluster corrected energies          -213.87135473 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95893781 (fixed)   0.96040351 (relaxed)   0.96026095 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123134   -0.00212293   -0.55939254
 Singles      0.01982848   -0.05838329   -0.06597319
 Pairs        0.06341997    0.00000000   -0.03884959
 Total        1.08447979   -0.06050622   -0.66421532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15283179
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79859112
 One electron energy                 -371.75296560
 Two electron energy                  157.93633854
 Virial quotient                       -2.58237035
 Correlation energy                    -0.66379527
 !MRCI STATE 12.1 Energy             -213.816627055587

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87270434 (Davidson, fixed reference)
 Cluster corrected energies          -213.87249065 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87270434 (Davidson, rotated reference)

 Cluster corrected energies          -213.87135450 (Pople, fixed reference)
 Cluster corrected energies          -213.87113084 (Pople, relaxed reference)
 Cluster corrected energies          -213.87135450 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95893781 (fixed)   0.96040353 (relaxed)   0.96026098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123134   -0.00212293   -0.55939262
 Singles      0.01982837   -0.05838319   -0.06597306
 Pairs        0.06342002   -0.00000000   -0.03884960
 Total        1.08447973   -0.06050612   -0.66421528
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15283179
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79858683
 One electron energy                 -371.75296298
 Two electron energy                  157.93633597
 Virial quotient                       -2.58237049
 Correlation energy                    -0.66379522
 !MRCI STATE 13.1 Energy             -213.816627011136

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87270425 (Davidson, fixed reference)
 Cluster corrected energies          -213.87249056 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87270425 (Davidson, rotated reference)

 Cluster corrected energies          -213.87135442 (Pople, fixed reference)
 Cluster corrected energies          -213.87113075 (Pople, relaxed reference)
 Cluster corrected energies          -213.87135442 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.84031231 (fixed)   0.96040337 (relaxed)   0.96026081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123134   -0.00212293   -0.55939647
 Singles      0.01982838   -0.05838338   -0.06597302
 Pairs        0.06342038    0.00000461   -0.03884576
 Total        1.08448010   -0.06050171   -0.66421525
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15283179
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79853001
 One electron energy                 -371.75291635
 Two electron energy                  157.93628937
 Virial quotient                       -2.58237226
 Correlation energy                    -0.66379519
 !MRCI STATE 14.1 Energy             -213.816626980738

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87270447 (Davidson, fixed reference)
 Cluster corrected energies          -213.87249078 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87270447 (Davidson, rotated reference)

 Cluster corrected energies          -213.87135464 (Pople, fixed reference)
 Cluster corrected energies          -213.87113098 (Pople, relaxed reference)
 Cluster corrected energies          -213.87135464 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95873713 (fixed)   0.95984736 (relaxed)   0.95968957 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00123133   -0.00204534   -0.00284198
 Singles      0.01943173   -0.05602747   -0.06351361
 Pairs        0.06510847   -0.60719341   -0.59913159
 Total        1.08577153   -0.66526621   -0.66548718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14036600
 Nuclear energy                         0.00000000
 Kinetic energy                        82.82139615
 One electron energy                 -371.90642959
 Two electron energy                  158.10084805
 Virial quotient                       -2.58152593
 Correlation energy                    -0.66521553
 !MRCI STATE 15.1 Energy             -213.805581534369

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86263809 (Davidson, fixed reference)
 Cluster corrected energies          -213.86240064 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86263809 (Davidson, rotated reference)

 Cluster corrected energies          -213.86132672 (Pople, fixed reference)
 Cluster corrected energies          -213.86107765 (Pople, relaxed reference)
 Cluster corrected energies          -213.86132672 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1970.17       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6993.47   3452.50   3537.22      2.46      0.08      0.82
 REAL TIME  *      7237.77 SEC
 DISK USED  *         1.96 GB (local),       31.47 GB (total)
 SF USED    *        10.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04816279  AU                              
 SETTING HLSDIAG(14)    =      -214.04816279  AU                              
 SETTING HLSDIAG(15)    =      -214.04816277  AU                              
 SETTING HLSDIAG(16)    =      -214.04816275  AU                              
 SETTING HLSDIAG(17)    =      -214.04816275  AU                              
 SETTING HLSDIAG(18)    =      -214.00943842  AU                              
 SETTING HLSDIAG(19)    =      -213.88596363  AU                              
 SETTING HLSDIAG(20)    =      -213.88596360  AU                              
 SETTING HLSDIAG(21)    =      -213.88596357  AU                              
 SETTING HLSDIAG(22)    =      -213.87270494  AU                              
 SETTING HLSDIAG(23)    =      -213.87270456  AU                              
 SETTING HLSDIAG(24)    =      -213.87270434  AU                              
 SETTING HLSDIAG(25)    =      -213.87270425  AU                              
 SETTING HLSDIAG(26)    =      -213.87270447  AU                              
 SETTING HLSDIAG(27)    =      -213.86263809  AU                              


         HLSDIAG
    -214.0742027
    -214.0742027
    -214.0742027
    -213.8820176
    -213.8820176
    -213.8820176
    -213.8820177
    -213.8820176
    -213.8787950
    -213.8787950
    -213.8787950
    -213.8763313
    -214.0481628
    -214.0481628
    -214.0481628
    -214.0481628
    -214.0481627
    -214.0094384
    -213.8859636
    -213.8859636
    -213.8859636
    -213.8727049
    -213.8727046
    -213.8727043
    -213.8727043
    -213.8727045
    -213.8626381
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.017572   -214.017572   -214.017572   -213.827089   -213.827089   -213.827089   -213.827089   -213.827089
                      -213.823805   -213.823805   -213.823805   -213.821122
 Replaced energies:   -214.074203   -214.074203   -214.074203   -213.882018   -213.882018   -213.882018   -213.882018   -213.882018
                      -213.878795   -213.878795   -213.878795   -213.876331

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -213.988191   -213.988191   -213.988191   -213.988191   -213.988191   -213.951632   -213.831152   -213.831152
                      -213.831152   -213.816627   -213.816627   -213.816627   -213.816627   -213.816627   -213.805582
 Replaced energies:   -214.048163   -214.048163   -214.048163   -214.048163   -214.048163   -214.009438   -213.885964   -213.885964
                      -213.885964   -213.872705   -213.872705   -213.872704   -213.872704   -213.872704   -213.862638



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07420271

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.39    1085.74      23.03      19.84    -291.88       1.15       3.84     -41.13     248.79

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.39      -0.00     -99.35     253.20     222.45      26.14      -0.70      -3.62       3.38     -23.13

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1085.74      99.35      -0.00       2.88       2.53       4.29      47.09     289.22      33.66      32.10

    4   4.1  1.0  1.0       0.00       0.00       0.00   42179.75       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.03    -253.20      -2.88      -0.00      -0.26      -1.61    -870.86     141.49     463.23      68.98

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42179.76       0.00       0.00       0.00       0.00       0.00
                          -19.84    -222.45      -2.53       0.26      -0.00       1.77     991.14    -162.59     407.01      60.69

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42179.75       0.00       0.00       0.00       0.00
                          291.88     -26.14      -4.29       1.61      -1.77      -0.00    -108.77    -659.53      69.93      76.53

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42179.74       0.00       0.00       0.00
                           -1.15       0.70     -47.09     870.86    -991.14     108.77       0.00       1.18     -14.63      85.79

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42179.75       0.00       0.00
                           -3.84       3.62    -289.22    -141.49     162.59     659.53      -1.18      -0.00     -88.30     527.79

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42887.04       0.00
                           41.13      -3.38     -33.66    -463.23    -407.01     -69.93      14.63      88.30       0.00    -104.95

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42887.04
                         -248.79      23.13     -32.10     -68.98     -60.69     -76.53     -85.79    -527.79     104.95       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.64       0.42    -250.33      70.86      61.52    -536.07      11.33      63.67     101.78    -683.57

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -43.22    -472.26      -5.39      -0.00      -0.00      -0.00       0.00      -0.00     877.10     130.60

   13   1.1  1.0  0.0       0.00    -770.51     -11.07       1.52      -7.54       0.03     206.62     -14.52    -177.32     -28.70
                           -0.00      25.86     -69.93    -225.61      76.34     -18.90       6.58      -1.44       8.43     -15.17

   14   2.1  1.0  0.0     770.51      -0.00     -24.95      -0.68       3.35      -3.94      14.62     206.66      -6.74     -26.11
                          -25.86      -0.00    -767.38      20.46      -7.33    -206.33      -3.20      -3.43      27.31    -175.46

   15   3.1  1.0  0.0      11.07      24.95      -0.00      46.85    -234.52       0.34      -6.42       3.42       5.65       0.55
                           69.93     767.38      -0.00       7.60      -2.52      -1.98     204.41     -33.33     176.30      24.20

   16   4.1  1.0  0.0      -1.52       0.68     -46.85      -0.00      -1.55    -926.83      -1.19     -17.56     -14.55      85.28
                          225.61     -20.46      -7.60       0.00      -0.02       5.73     -48.50    -299.17      53.31      67.07

   17   5.1  1.0  0.0       7.54      -3.35     234.52       1.55       0.00    -185.14      -0.30      -3.63      72.71    -426.92
                          -76.34       7.33       2.52       0.02       0.00      16.79    -143.09    -883.72     -18.79     -22.71

   18   6.1  1.0  0.0      -0.03       3.94      -0.34     926.83     185.14       0.00      -9.00       0.67      -7.34      -0.46
                           18.90     206.33       1.98      -5.73     -16.79       0.00     466.71     -74.26    -377.58     -55.52

   19   7.1  1.0  0.0    -206.62     -14.62       6.42       1.19       0.30       9.00       0.00    -472.57      12.39     -51.40
                           -6.58       3.20    -204.41      48.50     143.09    -466.71      -0.00      -8.68     -63.89     372.04

   20   8.1  1.0  0.0      14.52    -206.66      -3.42      17.56       3.63      -0.67     472.57      -0.00     380.43      65.30
                            1.44       3.43      33.33     299.17     883.72      74.26       8.68       0.00       3.18     -61.66

   21   9.1  1.0  0.0     177.32       6.74      -5.65      14.55     -72.71       7.34     -12.39    -380.43       0.00     -67.69
                           -8.43     -27.31    -176.30     -53.31      18.79     377.58      63.89      -3.18       0.00    -483.98

   22  10.1  1.0  0.0      28.70      26.11      -0.55     -85.28     426.92       0.46      51.40     -65.30      67.69      -0.00
                           15.17     175.46     -24.20     -67.07      22.71      55.52    -372.04      61.66     483.98      -0.00

   23  11.1  1.0  0.0     -10.84     178.00       2.91      11.96     -59.76      -0.32     382.44      -3.56     482.67      82.26
                           -1.37     -24.94      26.74    -413.48     139.89     -57.91      52.07      -9.60     -78.54      62.61

   24  12.1  1.0  0.0     -10.85       4.82    -335.14      -0.00      -0.00       0.00      -0.00       0.00    -105.55     619.33
                         -333.78      30.42      11.25       0.00      -0.00      -0.00       0.00       0.00     -80.34    -100.78

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

   37   1.1  0.0  0.0      -4.07      12.22      39.55       0.20       0.79     447.22      -3.30       7.17       1.30       8.52
                         -776.68      70.82      19.68      -2.32      -6.84      -5.79      33.16     203.58      20.69      24.37

   38   2.1  0.0  0.0      -0.03       6.09     -12.03    -439.05     -87.71       0.57      -1.70       0.21       1.62      -2.26
                          -63.70    -758.59      -9.02      -1.12      -3.36      -0.55    -220.08      41.35    -154.36     -23.19

   39   3.1  0.0  0.0    -155.33    -149.94    -842.88       5.07       1.06      21.01      44.92     -40.51      -2.96    -172.48
                          383.43     -24.84    -125.58      32.60      96.30     -40.57      64.03     376.88      -4.52     -35.32

   40   4.1  0.0  0.0     527.48     504.82    -245.91       4.01       0.75      -0.38    -136.00     167.41     106.35     -47.24
                          129.39     -10.36     483.44    -103.28    -305.00     141.92      19.22     106.34     -18.37      95.09

   41   5.1  0.0  0.0     526.80    -549.76       9.87      -2.56      -0.47       3.89     172.05     143.06    -117.41     -26.91
                          -10.69     -10.02     574.43      94.25     278.45     168.41      -3.07      -8.35     -19.92     116.91

   42   6.1  0.0  0.0      40.37     -17.92    1246.48      -0.00      -0.00      -0.00      -0.00      -0.00     -35.55     208.60
                         1241.42    -113.12     -41.83       0.00      -0.00       0.00      -0.00      -0.00     -27.06     -33.94

   43   7.1  0.0  0.0       0.15       0.06      -0.00    -106.75     534.37      -0.90      -0.24       0.39      -0.09       0.02
                          -19.03    -207.96      -2.51       0.17      -0.19      -1.17    -465.78      75.84     375.94      56.24

   44   8.1  0.0  0.0      19.10     207.96       2.37       0.03      -0.31      -0.85    -465.76      75.99    -375.97     -55.96
                            0.00       0.07      -0.07     516.15    -174.74      -0.09       0.20      -0.02      -0.14       0.10

   45   9.1  0.0  0.0     207.86     -19.01      -7.00       0.05      -0.40      -8.92      76.00     465.67      48.82      61.11
                           -6.75       3.14    -208.71      -0.39      -0.78    -471.83      -0.28      -8.99     -64.24     375.42

   46  10.1  0.0  0.0      -0.94       0.42     -28.43      -0.26      -1.31    -754.27      -0.92     -14.26      11.63     -68.00
                         -187.81      17.09       6.31       0.04       0.08       8.66     -73.32    -450.52      58.46      73.35

   47  11.1  0.0  0.0       0.04      -0.03       0.01    -745.22    -148.86       0.51      -0.02      -0.12      -0.08       0.00
                           18.59     203.54       2.37      -0.03      -0.19      -0.77    -375.04      61.04     489.35      72.98

   48  12.1  0.0  0.0     -18.65    -203.54      -2.34       0.08      -0.09      -0.72    -375.03      61.11    -489.34     -72.90
                           -0.01      -0.02      -0.03    -243.69    -719.81       1.44       0.22      -0.15      -0.05      -0.07

   49  13.1  0.0  0.0    -203.44      18.56       6.84      -0.18      -0.07      -7.11      61.12     374.96      63.46      79.49
                           -6.58       2.98    -204.27       0.21       0.76     379.90       0.40       7.21      83.38    -488.66

   50  14.1  0.0  0.0       7.57      -3.38     234.16       0.00      -0.15     -91.58      -0.14      -1.70     -95.49     560.15
                         -141.12      12.85       4.74      -0.05      -0.10     -11.45      97.67     599.52      43.95      55.12

   51  15.1  0.0  0.0     -13.12       5.82    -405.22      -0.00       0.00       0.00       0.00       0.00     138.78    -814.31
                         -403.57      36.78      13.60      -0.00       0.00      -0.00       0.00       0.01     105.63     132.51


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00     770.51      11.07      -1.52       7.54      -0.03    -206.62      14.52
                          -26.64      43.22       0.00      25.86     -69.93    -225.61      76.34     -18.90       6.58      -1.44

    2   2.1  1.0  1.0       0.00       0.00    -770.51      -0.00      24.95       0.68      -3.35       3.94     -14.62    -206.66
                           -0.42     472.26     -25.86       0.00    -767.38      20.46      -7.33    -206.33      -3.20      -3.43

    3   3.1  1.0  1.0       0.00       0.00     -11.07     -24.95      -0.00     -46.85     234.52      -0.34       6.42      -3.42
                          250.33       5.39      69.93     767.38       0.00       7.60      -2.52      -1.98     204.41     -33.33

    4   4.1  1.0  1.0       0.00       0.00       1.52      -0.68      46.85      -0.00       1.55     926.83       1.19      17.56
                          -70.86       0.00     225.61     -20.46      -7.60      -0.00      -0.02       5.73     -48.50    -299.17

    5   5.1  1.0  1.0       0.00       0.00      -7.54       3.35    -234.52      -1.55       0.00     185.14       0.30       3.63
                          -61.52       0.00     -76.34       7.33       2.52       0.02      -0.00      16.79    -143.09    -883.72

    6   6.1  1.0  1.0       0.00       0.00       0.03      -3.94       0.34    -926.83    -185.14       0.00       9.00      -0.67
                          536.07       0.00      18.90     206.33       1.98      -5.73     -16.79      -0.00     466.71     -74.26

    7   7.1  1.0  1.0       0.00       0.00     206.62      14.62      -6.42      -1.19      -0.30      -9.00       0.00     472.57
                          -11.33      -0.00      -6.58       3.20    -204.41      48.50     143.09    -466.71       0.00      -8.68

    8   8.1  1.0  1.0       0.00       0.00     -14.52     206.66       3.42     -17.56      -3.63       0.67    -472.57      -0.00
                          -63.67       0.00       1.44       3.43      33.33     299.17     883.72      74.26       8.68      -0.00

    9   9.1  1.0  1.0       0.00       0.00    -177.32      -6.74       5.65     -14.55      72.71      -7.34      12.39     380.43
                         -101.78    -877.10      -8.43     -27.31    -176.30     -53.31      18.79     377.58      63.89      -3.18

   10  10.1  1.0  1.0       0.00       0.00     -28.70     -26.11       0.55      85.28    -426.92      -0.46     -51.40      65.30
                          683.57    -130.60      15.17     175.46     -24.20     -67.07      22.71      55.52    -372.04      61.66

   11  11.1  1.0  1.0   42887.04       0.00      10.84    -178.00      -2.91     -11.96      59.76       0.32    -382.44       3.56
                            0.00     134.67      -1.37     -24.94      26.74    -413.48     139.89     -57.91      52.07      -9.60

   12  12.1  1.0  1.0       0.00   43427.76      10.85      -4.82     335.14       0.00       0.00      -0.00       0.00      -0.00
                         -134.67      -0.00    -333.78      30.42      11.25       0.00      -0.00      -0.00       0.00       0.00

   13   1.1  1.0  0.0      10.84      10.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.37     333.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -178.00      -4.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.94     -30.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -2.91     335.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.74     -11.25      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0     -11.96       0.00       0.00       0.00       0.00   42179.75       0.00       0.00       0.00       0.00
                          413.48      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0      59.76       0.00       0.00       0.00       0.00       0.00   42179.76       0.00       0.00       0.00
                         -139.89       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.32      -0.00       0.00       0.00       0.00       0.00       0.00   42179.75       0.00       0.00
                           57.91       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0    -382.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42179.74       0.00
                          -52.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       3.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42179.75
                            9.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0    -482.67     105.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.54      80.34      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     -82.26    -619.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.61     100.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00      86.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     621.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0     -86.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -621.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00    -770.51     -11.07       1.52      -7.54       0.03     206.62     -14.52
                           -0.00      -0.00      -0.00      25.86     -69.93    -225.61      76.34     -18.90       6.58      -1.44

   26   2.1  1.0 -1.0       0.00       0.00     770.51      -0.00     -24.95      -0.68       3.35      -3.94      14.62     206.66
                           -0.00      -0.00     -25.86      -0.00    -767.38      20.46      -7.33    -206.33      -3.20      -3.43

   27   3.1  1.0 -1.0       0.00       0.00      11.07      24.95      -0.00      46.85    -234.52       0.34      -6.42       3.42
                           -0.00      -0.00      69.93     767.38      -0.00       7.60      -2.52      -1.98     204.41     -33.33

   28   4.1  1.0 -1.0       0.00       0.00      -1.52       0.68     -46.85      -0.00      -1.55    -926.83      -1.19     -17.56
                           -0.00      -0.00     225.61     -20.46      -7.60       0.00      -0.02       5.73     -48.50    -299.17

   29   5.1  1.0 -1.0       0.00       0.00       7.54      -3.35     234.52       1.55       0.00    -185.14      -0.30      -3.63
                           -0.00      -0.00     -76.34       7.33       2.52       0.02       0.00      16.79    -143.09    -883.72

   30   6.1  1.0 -1.0       0.00       0.00      -0.03       3.94      -0.34     926.83     185.14       0.00      -9.00       0.67
                           -0.00      -0.00      18.90     206.33       1.98      -5.73     -16.79       0.00     466.71     -74.26

   31   7.1  1.0 -1.0       0.00       0.00    -206.62     -14.62       6.42       1.19       0.30       9.00       0.00    -472.57
                           -0.00      -0.00      -6.58       3.20    -204.41      48.50     143.09    -466.71      -0.00      -8.68

   32   8.1  1.0 -1.0       0.00       0.00      14.52    -206.66      -3.42      17.56       3.63      -0.67     472.57      -0.00
                           -0.00      -0.00       1.44       3.43      33.33     299.17     883.72      74.26       8.68       0.00

   33   9.1  1.0 -1.0       0.00       0.00     177.32       6.74      -5.65      14.55     -72.71       7.34     -12.39    -380.43
                           -0.00      -0.00      -8.43     -27.31    -176.30     -53.31      18.79     377.58      63.89      -3.18

   34  10.1  1.0 -1.0       0.00       0.00      28.70      26.11      -0.55     -85.28     426.92       0.46      51.40     -65.30
                           -0.00      -0.00      15.17     175.46     -24.20     -67.07      22.71      55.52    -372.04      61.66

   35  11.1  1.0 -1.0       0.00       0.00     -10.84     178.00       2.91      11.96     -59.76      -0.32     382.44      -3.56
                           -0.00      -0.00      -1.37     -24.94      26.74    -413.48     139.89     -57.91      52.07      -9.60

   36  12.1  1.0 -1.0       0.00       0.00     -10.85       4.82    -335.14      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -333.78      30.42      11.25       0.00      -0.00      -0.00       0.00       0.00

   37   1.1  0.0  0.0      -0.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          158.42       0.00     -96.00   -1043.13     -29.21      -3.56       3.97       4.47    -336.30      54.85

   38   2.1  0.0  0.0       0.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.53       0.00    1070.48    -106.54     -44.58      -0.08       0.15       8.46     -43.57    -313.57

   39   3.1  0.0  0.0      52.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.79      -0.00     -63.35    -646.13     237.63     -61.91      70.46     -71.19     506.70     -80.19

   40   4.1  0.0  0.0    -109.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -37.07       0.00     -50.66    -160.39    -776.08     267.69    -304.17     228.45     144.27     -16.20

   41   5.1  0.0  0.0    -101.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.26      -0.00      29.84      -2.52     705.58     314.90    -358.97    -207.14     -26.65      -1.51

   42   6.1  0.0  0.0     -29.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -209.16      -0.00    -160.73   -1756.44     -20.04       0.00       0.00      -0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.27    -772.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -57.76      -0.25    -293.96      26.79      10.00      -0.42      -0.40     -12.83     107.27     658.60

   44   8.1  0.0  0.0      57.85       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -772.72       9.65      -4.25     295.16      -0.50      -1.34    -667.27      -0.88     -12.86

   45   9.1  0.0  0.0     376.45       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.61       0.24       0.19      -0.02      -0.10    -578.99    -508.59       1.40       0.06      -0.51

   46  10.1  0.0  0.0       9.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          452.33       0.00     -27.94    -305.78      -3.51       0.06       0.05       0.72     415.80     -67.63

   47  11.1  0.0  0.0      -0.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.07      -0.00    -287.72      26.18       9.73      -0.13       0.22      10.22     -86.25    -530.30

   48  12.1  0.0  0.0      75.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       9.39      -4.18     288.89       0.34       0.85     537.26       0.65      10.25

   49  13.1  0.0  0.0     489.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.45      -0.00      -0.06       0.02      -0.03     709.27    -807.44       1.03       0.09      -0.15

   50  14.1  0.0  0.0     -78.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          339.89       0.00      11.94     130.28       1.51       0.06       0.22       1.81     975.87    -158.87

   51  15.1  0.0  0.0     114.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          816.52       0.00      52.25     571.01       6.51      -0.00      -0.00       0.00       0.01      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     177.32      28.70     -10.84     -10.85       0.00       0.00       0.00       0.00       0.00       0.00
                            8.43     -15.17       1.37     333.78       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       6.74      26.11     178.00       4.82       0.00       0.00       0.00       0.00       0.00       0.00
                           27.31    -175.46      24.94     -30.42       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      -5.65      -0.55       2.91    -335.14       0.00       0.00       0.00       0.00       0.00       0.00
                          176.30      24.20     -26.74     -11.25       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      14.55     -85.28      11.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.31      67.07     413.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0     -72.71     426.92     -59.76      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.79     -22.71    -139.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       7.34       0.46      -0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -377.58     -55.52      57.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0     -12.39      51.40     382.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.89     372.04     -52.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -380.43     -65.30      -3.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.18     -61.66       9.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00      67.69     482.67    -105.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -483.98      78.54      80.34       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0     -67.69      -0.00      82.26     619.33       0.00       0.00       0.00       0.00       0.00       0.00
                          483.98       0.00     -62.61     100.78       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    -482.67     -82.26      -0.00     -86.85       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.54      62.61       0.00     621.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0     105.55    -619.33      86.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -80.34    -100.78    -621.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     770.51      11.07      -1.52       7.54      -0.03
                            0.00       0.00       0.00       0.00       0.00      25.86     -69.93    -225.61      76.34     -18.90

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00    -770.51      -0.00      24.95       0.68      -3.35       3.94
                            0.00       0.00       0.00       0.00     -25.86       0.00    -767.38      20.46      -7.33    -206.33

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -11.07     -24.95      -0.00     -46.85     234.52      -0.34
                            0.00       0.00       0.00       0.00      69.93     767.38       0.00       7.60      -2.52      -1.98

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       1.52      -0.68      46.85      -0.00       1.55     926.83
                            0.00       0.00       0.00       0.00     225.61     -20.46      -7.60      -0.00      -0.02       5.73

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -7.54       3.35    -234.52      -1.55       0.00     185.14
                            0.00       0.00       0.00       0.00     -76.34       7.33       2.52       0.02      -0.00      16.79

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.03      -3.94       0.34    -926.83    -185.14       0.00
                            0.00       0.00       0.00       0.00      18.90     206.33       1.98      -5.73     -16.79      -0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     206.62      14.62      -6.42      -1.19      -0.30      -9.00
                            0.00       0.00       0.00       0.00      -6.58       3.20    -204.41      48.50     143.09    -466.71

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00     -14.52     206.66       3.42     -17.56      -3.63       0.67
                            0.00       0.00       0.00       0.00       1.44       3.43      33.33     299.17     883.72      74.26

   21   9.1  1.0  0.0   42887.04       0.00       0.00       0.00    -177.32      -6.74       5.65     -14.55      72.71      -7.34
                            0.00       0.00       0.00       0.00      -8.43     -27.31    -176.30     -53.31      18.79     377.58

   22  10.1  1.0  0.0       0.00   42887.04       0.00       0.00     -28.70     -26.11       0.55      85.28    -426.92      -0.46
                           -0.00       0.00       0.00       0.00      15.17     175.46     -24.20     -67.07      22.71      55.52

   23  11.1  1.0  0.0       0.00       0.00   42887.04       0.00      10.84    -178.00      -2.91     -11.96      59.76       0.32
                           -0.00      -0.00       0.00       0.00      -1.37     -24.94      26.74    -413.48     139.89     -57.91

   24  12.1  1.0  0.0       0.00       0.00       0.00   43427.76      10.85      -4.82     335.14       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00    -333.78      30.42      11.25       0.00      -0.00      -0.00

   25   1.1  1.0 -1.0    -177.32     -28.70      10.84      10.85       0.00       0.00       0.00       0.00       0.00       0.00
                            8.43     -15.17       1.37     333.78       0.00      12.39   -1085.74     -23.03     -19.84     291.88

   26   2.1  1.0 -1.0      -6.74     -26.11    -178.00      -4.82       0.00       0.00       0.00       0.00       0.00       0.00
                           27.31    -175.46      24.94     -30.42     -12.39       0.00      99.35    -253.20    -222.45     -26.14

   27   3.1  1.0 -1.0       5.65       0.55      -2.91     335.14       0.00       0.00       0.00       0.00       0.00       0.00
                          176.30      24.20     -26.74     -11.25    1085.74     -99.35       0.00      -2.88      -2.53      -4.29

   28   4.1  1.0 -1.0     -14.55      85.28     -11.96       0.00       0.00       0.00       0.00   42179.75       0.00       0.00
                           53.31      67.07     413.48      -0.00      23.03     253.20       2.88       0.00       0.26       1.61

   29   5.1  1.0 -1.0      72.71    -426.92      59.76       0.00       0.00       0.00       0.00       0.00   42179.76       0.00
                          -18.79     -22.71    -139.89       0.00      19.84     222.45       2.53      -0.26       0.00      -1.77

   30   6.1  1.0 -1.0      -7.34      -0.46       0.32      -0.00       0.00       0.00       0.00       0.00       0.00   42179.75
                         -377.58     -55.52      57.91       0.00    -291.88      26.14       4.29      -1.61       1.77       0.00

   31   7.1  1.0 -1.0      12.39     -51.40    -382.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.89     372.04     -52.07      -0.00       1.15      -0.70      47.09    -870.86     991.14    -108.77

   32   8.1  1.0 -1.0     380.43      65.30       3.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.18     -61.66       9.60      -0.00       3.84      -3.62     289.22     141.49    -162.59    -659.53

   33   9.1  1.0 -1.0       0.00     -67.69    -482.67     105.55       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -483.98      78.54      80.34     -41.13       3.38      33.66     463.23     407.01      69.93

   34  10.1  1.0 -1.0      67.69      -0.00     -82.26    -619.33       0.00       0.00       0.00       0.00       0.00       0.00
                          483.98      -0.00     -62.61     100.78     248.79     -23.13      32.10      68.98      60.69      76.53

   35  11.1  1.0 -1.0     482.67      82.26      -0.00      86.85       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.54      62.61      -0.00     621.00     -26.64      -0.42     250.33     -70.86     -61.52     536.07

   36  12.1  1.0 -1.0    -105.55     619.33     -86.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -80.34    -100.78    -621.00       0.00      43.22     472.26       5.39       0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -4.07      12.22      39.55       0.20       0.79     447.22
                         -211.66     -35.11      33.07       0.00     776.68     -70.82     -19.68       2.32       6.84       5.79

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.03       6.09     -12.03    -439.05     -87.71       0.57
                          -29.80     -37.41    -217.86      -0.00      63.70     758.59       9.02       1.12       3.36       0.55

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00    -155.33    -149.94    -842.88       5.07       1.06      21.01
                         -139.07      30.41      15.68       0.00    -383.43      24.84     125.58     -32.60     -96.30      40.57

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     527.48     504.82    -245.91       4.01       0.75      -0.38
                           -8.10    -161.66      29.37      -0.00    -129.39      10.36    -483.44     103.28     305.00    -141.92

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00     526.80    -549.76       9.87      -2.56      -0.47       3.89
                          -22.84     142.89     -21.56      -0.00      10.69      10.02    -574.43     -94.25    -278.45    -168.41

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00      40.37     -17.92    1246.48      -0.00      -0.00      -0.00
                         -295.42     -43.99      45.36       0.00   -1241.42     113.12      41.83      -0.00       0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.15       0.06      -0.00    -106.75     534.37      -0.90
                          -68.85     -86.57    -532.38      -0.73      19.03     207.96       2.51      -0.17       0.19       1.17

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00      19.10     207.96       2.37       0.03      -0.31      -0.85
                           90.52    -530.95      74.64      -0.35      -0.00      -0.07       0.07    -516.15     174.74       0.09

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00     207.86     -19.01      -7.00       0.05      -0.40      -8.92
                            0.02       0.23       0.33   -1092.80       6.75      -3.14     208.71       0.39       0.78     471.83

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.94       0.42     -28.43      -0.26      -1.31    -754.27
                         -735.17    -109.52     112.79       0.00     187.81     -17.09      -6.31      -0.04      -0.08      -8.66

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.04      -0.03       0.01    -745.22    -148.86       0.51
                           89.55     112.52     692.94       0.00     -18.59    -203.54      -2.37       0.03       0.19       0.77

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00     -18.65    -203.54      -2.34       0.08      -0.09      -0.72
                         -117.86     691.05     -96.98      -0.00       0.01       0.02       0.03     243.69     719.81      -1.44

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00    -203.44      18.56       6.84      -0.18      -0.07      -7.11
                            0.07      -0.05       0.16      -0.00       6.58      -2.98     204.27      -0.21      -0.76    -379.90

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       7.57      -3.38     234.16       0.00      -0.15     -91.58
                          313.21      46.68     -48.14      -0.00     141.12     -12.85      -4.74       0.05       0.10      11.45

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00     -13.12       5.82    -405.22      -0.00       0.00       0.00
                         1153.26     171.72    -177.07      -0.00     403.57     -36.78     -13.60       0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.07      -0.03    -155.33     527.48
                            0.00       0.00       0.00       0.00       0.00       0.00     776.68      63.70    -383.43    -129.39

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      12.22       6.09    -149.94     504.82
                            0.00       0.00       0.00       0.00       0.00       0.00     -70.82     758.59      24.84      10.36

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      39.55     -12.03    -842.88    -245.91
                            0.00       0.00       0.00       0.00       0.00       0.00     -19.68       9.02     125.58    -483.44

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.20    -439.05       5.07       4.01
                            0.00       0.00       0.00       0.00       0.00       0.00       2.32       1.12     -32.60     103.28

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.79     -87.71       1.06       0.75
                            0.00       0.00       0.00       0.00       0.00       0.00       6.84       3.36     -96.30     305.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     447.22       0.57      21.01      -0.38
                            0.00       0.00       0.00       0.00       0.00       0.00       5.79       0.55      40.57    -141.92

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -3.30      -1.70      44.92    -136.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -33.16     220.08     -64.03     -19.22

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       7.17       0.21     -40.51     167.41
                            0.00       0.00       0.00       0.00       0.00       0.00    -203.58     -41.35    -376.88    -106.34

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.30       1.62      -2.96     106.35
                            0.00       0.00       0.00       0.00       0.00       0.00     -20.69     154.36       4.52      18.37

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       8.52      -2.26    -172.48     -47.24
                            0.00       0.00       0.00       0.00       0.00       0.00     -24.37      23.19      35.32     -95.09

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.18       0.20      52.23    -109.23
                            0.00       0.00       0.00       0.00       0.00       0.00    -158.42     -22.53      75.79      37.07

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   13   1.1  1.0  0.0    -206.62      14.52     177.32      28.70     -10.84     -10.85       0.00       0.00       0.00       0.00
                            6.58      -1.44       8.43     -15.17       1.37     333.78      96.00   -1070.48      63.35      50.66

   14   2.1  1.0  0.0     -14.62    -206.66       6.74      26.11     178.00       4.82       0.00       0.00       0.00       0.00
                           -3.20      -3.43      27.31    -175.46      24.94     -30.42    1043.13     106.54     646.13     160.39

   15   3.1  1.0  0.0       6.42      -3.42      -5.65      -0.55       2.91    -335.14       0.00       0.00       0.00       0.00
                          204.41     -33.33     176.30      24.20     -26.74     -11.25      29.21      44.58    -237.63     776.08

   16   4.1  1.0  0.0       1.19      17.56      14.55     -85.28      11.96      -0.00       0.00       0.00       0.00       0.00
                          -48.50    -299.17      53.31      67.07     413.48      -0.00       3.56       0.08      61.91    -267.69

   17   5.1  1.0  0.0       0.30       3.63     -72.71     426.92     -59.76      -0.00       0.00       0.00       0.00       0.00
                         -143.09    -883.72     -18.79     -22.71    -139.89       0.00      -3.97      -0.15     -70.46     304.17

   18   6.1  1.0  0.0       9.00      -0.67       7.34       0.46      -0.32       0.00       0.00       0.00       0.00       0.00
                          466.71     -74.26    -377.58     -55.52      57.91       0.00      -4.47      -8.46      71.19    -228.45

   19   7.1  1.0  0.0       0.00     472.57     -12.39      51.40     382.44      -0.00       0.00       0.00       0.00       0.00
                            0.00      -8.68     -63.89     372.04     -52.07      -0.00     336.30      43.57    -506.70    -144.27

   20   8.1  1.0  0.0    -472.57      -0.00    -380.43     -65.30      -3.56       0.00       0.00       0.00       0.00       0.00
                            8.68      -0.00       3.18     -61.66       9.60      -0.00     -54.85     313.57      80.19      16.20

   21   9.1  1.0  0.0      12.39     380.43       0.00      67.69     482.67    -105.55       0.00       0.00       0.00       0.00
                           63.89      -3.18      -0.00    -483.98      78.54      80.34     211.66      29.80     139.07       8.10

   22  10.1  1.0  0.0     -51.40      65.30     -67.69      -0.00      82.26     619.33       0.00       0.00       0.00       0.00
                         -372.04      61.66     483.98       0.00     -62.61     100.78      35.11      37.41     -30.41     161.66

   23  11.1  1.0  0.0    -382.44       3.56    -482.67     -82.26      -0.00     -86.85       0.00       0.00       0.00       0.00
                           52.07      -9.60     -78.54      62.61       0.00     621.00     -33.07     217.86     -15.68     -29.37

   24  12.1  1.0  0.0       0.00      -0.00     105.55    -619.33      86.85       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -80.34    -100.78    -621.00      -0.00      -0.00       0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.07      -0.03    -155.33     527.48
                           -1.15      -3.84      41.13    -248.79      26.64     -43.22    -776.68     -63.70     383.43     129.39

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      12.22       6.09    -149.94     504.82
                            0.70       3.62      -3.38      23.13       0.42    -472.26      70.82    -758.59     -24.84     -10.36

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      39.55     -12.03    -842.88    -245.91
                          -47.09    -289.22     -33.66     -32.10    -250.33      -5.39      19.68      -9.02    -125.58     483.44

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.20    -439.05       5.07       4.01
                          870.86    -141.49    -463.23     -68.98      70.86      -0.00      -2.32      -1.12      32.60    -103.28

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.79     -87.71       1.06       0.75
                         -991.14     162.59    -407.01     -60.69      61.52      -0.00      -6.84      -3.36      96.30    -305.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     447.22       0.57      21.01      -0.38
                          108.77     659.53     -69.93     -76.53    -536.07      -0.00      -5.79      -0.55     -40.57     141.92

   31   7.1  1.0 -1.0   42179.74       0.00       0.00       0.00       0.00       0.00      -3.30      -1.70      44.92    -136.00
                           -0.00      -1.18      14.63     -85.79      11.33       0.00      33.16    -220.08      64.03      19.22

   32   8.1  1.0 -1.0       0.00   42179.75       0.00       0.00       0.00       0.00       7.17       0.21     -40.51     167.41
                            1.18       0.00      88.30    -527.79      63.67      -0.00     203.58      41.35     376.88     106.34

   33   9.1  1.0 -1.0       0.00       0.00   42887.04       0.00       0.00       0.00       1.30       1.62      -2.96     106.35
                          -14.63     -88.30      -0.00     104.95     101.78     877.10      20.69    -154.36      -4.52     -18.37

   34  10.1  1.0 -1.0       0.00       0.00       0.00   42887.04       0.00       0.00       8.52      -2.26    -172.48     -47.24
                           85.79     527.79    -104.95      -0.00    -683.57     130.60      24.37     -23.19     -35.32      95.09

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   42887.04       0.00      -0.18       0.20      52.23    -109.23
                          -11.33     -63.67    -101.78     683.57      -0.00    -134.67     158.42      22.53     -75.79     -37.07

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   43427.76      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00    -877.10    -130.60     134.67       0.00       0.00       0.00      -0.00       0.00

   37   1.1  0.0  0.0      -3.30       7.17       1.30       8.52      -0.18      -0.00    5715.10       0.00       0.00       0.00
                          -33.16    -203.58     -20.69     -24.37    -158.42      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -1.70       0.21       1.62      -2.26       0.20       0.00       0.00    5715.10       0.00       0.00
                          220.08     -41.35     154.36      23.19     -22.53      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      44.92     -40.51      -2.96    -172.48      52.23      -0.00       0.00       0.00    5715.11       0.00
                          -64.03    -376.88       4.52      35.32      75.79       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0    -136.00     167.41     106.35     -47.24    -109.23      -0.00       0.00       0.00       0.00    5715.11
                          -19.22    -106.34      18.37     -95.09      37.07      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0     172.05     143.06    -117.41     -26.91    -101.86       0.00       0.00       0.00       0.00       0.00
                            3.07       8.35      19.92    -116.91      10.26       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00     -35.55     208.60     -29.25      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      27.06      33.94     209.16       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0      -0.24       0.39      -0.09       0.02       0.27    -772.72       0.00       0.00       0.00       0.00
                          465.78     -75.84    -375.94     -56.24      57.76       0.25      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0    -465.76      75.99    -375.97     -55.96      57.85       0.25       0.00       0.00       0.00       0.00
                           -0.20       0.02       0.14      -0.10      -0.00     772.72      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      76.00     465.67      48.82      61.11     376.45       0.52       0.00       0.00       0.00       0.00
                            0.28       8.99      64.24    -375.42      52.61      -0.24      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0      -0.92     -14.26      11.63     -68.00       9.57       0.00       0.00       0.00       0.00       0.00
                           73.32     450.52     -58.46     -73.35    -452.33      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0      -0.02      -0.12      -0.08       0.00      -0.10      -0.00       0.00       0.00       0.00       0.00
                          375.04     -61.04    -489.35     -72.98      75.07       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0    -375.03      61.11    -489.34     -72.90      75.20       0.00       0.00       0.00       0.00       0.00
                           -0.22       0.15       0.05       0.07      -0.02       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0      61.12     374.96      63.46      79.49     489.98       0.00       0.00       0.00       0.00       0.00
                           -0.40      -7.21     -83.38     488.66     -68.45       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.14      -1.70     -95.49     560.15     -78.51      -0.00       0.00       0.00       0.00       0.00
                          -97.67    -599.52     -43.95     -55.12    -339.89      -0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00       0.00     138.78    -814.31     114.19       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01    -105.63    -132.51    -816.52      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0     526.80      40.37       0.15      19.10     207.86      -0.94       0.04     -18.65    -203.44       7.57
                           10.69   -1241.42      19.03      -0.00       6.75     187.81     -18.59       0.01       6.58     141.12

    2   2.1  1.0  1.0    -549.76     -17.92       0.06     207.96     -19.01       0.42      -0.03    -203.54      18.56      -3.38
                           10.02     113.12     207.96      -0.07      -3.14     -17.09    -203.54       0.02      -2.98     -12.85

    3   3.1  1.0  1.0       9.87    1246.48      -0.00       2.37      -7.00     -28.43       0.01      -2.34       6.84     234.16
                         -574.43      41.83       2.51       0.07     208.71      -6.31      -2.37       0.03     204.27      -4.74

    4   4.1  1.0  1.0      -2.56      -0.00    -106.75       0.03       0.05      -0.26    -745.22       0.08      -0.18       0.00
                          -94.25      -0.00      -0.17    -516.15       0.39      -0.04       0.03     243.69      -0.21       0.05

    5   5.1  1.0  1.0      -0.47      -0.00     534.37      -0.31      -0.40      -1.31    -148.86      -0.09      -0.07      -0.15
                         -278.45       0.00       0.19     174.74       0.78      -0.08       0.19     719.81      -0.76       0.10

    6   6.1  1.0  1.0       3.89      -0.00      -0.90      -0.85      -8.92    -754.27       0.51      -0.72      -7.11     -91.58
                         -168.41      -0.00       1.17       0.09     471.83      -8.66       0.77      -1.44    -379.90      11.45

    7   7.1  1.0  1.0     172.05      -0.00      -0.24    -465.76      76.00      -0.92      -0.02    -375.03      61.12      -0.14
                            3.07       0.00     465.78      -0.20       0.28      73.32     375.04      -0.22      -0.40     -97.67

    8   8.1  1.0  1.0     143.06      -0.00       0.39      75.99     465.67     -14.26      -0.12      61.11     374.96      -1.70
                            8.35       0.00     -75.84       0.02       8.99     450.52     -61.04       0.15      -7.21    -599.52

    9   9.1  1.0  1.0    -117.41     -35.55      -0.09    -375.97      48.82      11.63      -0.08    -489.34      63.46     -95.49
                           19.92      27.06    -375.94       0.14      64.24     -58.46    -489.35       0.05     -83.38     -43.95

   10  10.1  1.0  1.0     -26.91     208.60       0.02     -55.96      61.11     -68.00       0.00     -72.90      79.49     560.15
                         -116.91      33.94     -56.24      -0.10    -375.42     -73.35     -72.98       0.07     488.66     -55.12

   11  11.1  1.0  1.0    -101.86     -29.25       0.27      57.85     376.45       9.57      -0.10      75.20     489.98     -78.51
                           10.26     209.16      57.76      -0.00      52.61    -452.33      75.07      -0.02     -68.45    -339.89

   12  12.1  1.0  1.0       0.00      -0.00    -772.72       0.25       0.52       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.25     772.72      -0.24      -0.00       0.00       0.00       0.00      -0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.84     160.73     293.96      -9.65      -0.19      27.94     287.72      -9.39       0.06     -11.94

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.52    1756.44     -26.79       4.25       0.02     305.78     -26.18       4.18      -0.02    -130.28

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -705.58      20.04     -10.00    -295.16       0.10       3.51      -9.73    -288.89       0.03      -1.51

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -314.90      -0.00       0.42       0.50     578.99      -0.06       0.13      -0.34    -709.27      -0.06

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          358.97      -0.00       0.40       1.34     508.59      -0.05      -0.22      -0.85     807.44      -0.22

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          207.14       0.00      12.83     667.27      -1.40      -0.72     -10.22    -537.26      -1.03      -1.81

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.65       0.00    -107.27       0.88      -0.06    -415.80      86.25      -0.65      -0.09    -975.87

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.51      -0.00    -658.60      12.86       0.51      67.63     530.30     -10.25       0.15     158.87

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.84     295.42      68.85     -90.52      -0.02     735.17     -89.55     117.86      -0.07    -313.21

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -142.89      43.99      86.57     530.95      -0.23     109.52    -112.52    -691.05       0.05     -46.68

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.56     -45.36     532.38     -74.64      -0.33    -112.79    -692.94      96.98      -0.16      48.14

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.73       0.35    1092.80      -0.00      -0.00       0.00       0.00       0.00

   25   1.1  1.0 -1.0     526.80      40.37       0.15      19.10     207.86      -0.94       0.04     -18.65    -203.44       7.57
                          -10.69    1241.42     -19.03       0.00      -6.75    -187.81      18.59      -0.01      -6.58    -141.12

   26   2.1  1.0 -1.0    -549.76     -17.92       0.06     207.96     -19.01       0.42      -0.03    -203.54      18.56      -3.38
                          -10.02    -113.12    -207.96       0.07       3.14      17.09     203.54      -0.02       2.98      12.85

   27   3.1  1.0 -1.0       9.87    1246.48      -0.00       2.37      -7.00     -28.43       0.01      -2.34       6.84     234.16
                          574.43     -41.83      -2.51      -0.07    -208.71       6.31       2.37      -0.03    -204.27       4.74

   28   4.1  1.0 -1.0      -2.56      -0.00    -106.75       0.03       0.05      -0.26    -745.22       0.08      -0.18       0.00
                           94.25       0.00       0.17     516.15      -0.39       0.04      -0.03    -243.69       0.21      -0.05

   29   5.1  1.0 -1.0      -0.47      -0.00     534.37      -0.31      -0.40      -1.31    -148.86      -0.09      -0.07      -0.15
                          278.45      -0.00      -0.19    -174.74      -0.78       0.08      -0.19    -719.81       0.76      -0.10

   30   6.1  1.0 -1.0       3.89      -0.00      -0.90      -0.85      -8.92    -754.27       0.51      -0.72      -7.11     -91.58
                          168.41       0.00      -1.17      -0.09    -471.83       8.66      -0.77       1.44     379.90     -11.45

   31   7.1  1.0 -1.0     172.05      -0.00      -0.24    -465.76      76.00      -0.92      -0.02    -375.03      61.12      -0.14
                           -3.07      -0.00    -465.78       0.20      -0.28     -73.32    -375.04       0.22       0.40      97.67

   32   8.1  1.0 -1.0     143.06      -0.00       0.39      75.99     465.67     -14.26      -0.12      61.11     374.96      -1.70
                           -8.35      -0.00      75.84      -0.02      -8.99    -450.52      61.04      -0.15       7.21     599.52

   33   9.1  1.0 -1.0    -117.41     -35.55      -0.09    -375.97      48.82      11.63      -0.08    -489.34      63.46     -95.49
                          -19.92     -27.06     375.94      -0.14     -64.24      58.46     489.35      -0.05      83.38      43.95

   34  10.1  1.0 -1.0     -26.91     208.60       0.02     -55.96      61.11     -68.00       0.00     -72.90      79.49     560.15
                          116.91     -33.94      56.24       0.10     375.42      73.35      72.98      -0.07    -488.66      55.12

   35  11.1  1.0 -1.0    -101.86     -29.25       0.27      57.85     376.45       9.57      -0.10      75.20     489.98     -78.51
                          -10.26    -209.16     -57.76       0.00     -52.61     452.33     -75.07       0.02      68.45     339.89

   36  12.1  1.0 -1.0       0.00      -0.00    -772.72       0.25       0.52       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.25    -772.72       0.24       0.00      -0.00      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5715.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14214.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41313.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41313.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41313.71       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   44223.65       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   44223.73       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44223.78       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44223.80       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44223.75
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0     -13.12
                          403.57

    2   2.1  1.0  1.0       5.82
                          -36.78

    3   3.1  1.0  1.0    -405.22
                          -13.60

    4   4.1  1.0  1.0      -0.00
                            0.00

    5   5.1  1.0  1.0       0.00
                           -0.00

    6   6.1  1.0  1.0       0.00
                            0.00

    7   7.1  1.0  1.0       0.00
                           -0.00

    8   8.1  1.0  1.0       0.00
                           -0.01

    9   9.1  1.0  1.0     138.78
                         -105.63

   10  10.1  1.0  1.0    -814.31
                         -132.51

   11  11.1  1.0  1.0     114.19
                         -816.52

   12  12.1  1.0  1.0       0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                          -52.25

   14   2.1  1.0  0.0       0.00
                         -571.01

   15   3.1  1.0  0.0       0.00
                           -6.51

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                            0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                           -0.01

   20   8.1  1.0  0.0       0.00
                            0.00

   21   9.1  1.0  0.0       0.00
                        -1153.26

   22  10.1  1.0  0.0       0.00
                         -171.72

   23  11.1  1.0  0.0       0.00
                          177.07

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0     -13.12
                         -403.57

   26   2.1  1.0 -1.0       5.82
                           36.78

   27   3.1  1.0 -1.0    -405.22
                           13.60

   28   4.1  1.0 -1.0      -0.00
                           -0.00

   29   5.1  1.0 -1.0       0.00
                            0.00

   30   6.1  1.0 -1.0       0.00
                           -0.00

   31   7.1  1.0 -1.0       0.00
                            0.00

   32   8.1  1.0 -1.0       0.00
                            0.01

   33   9.1  1.0 -1.0     138.78
                          105.63

   34  10.1  1.0 -1.0    -814.31
                          132.51

   35  11.1  1.0 -1.0     114.19
                          816.52

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

   51  15.1  0.0  0.0   46433.07
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.07420271 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42179.749       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42179.758       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42179.747       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42179.743       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42179.748
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      36.565     -98.891    -319.061     107.968     -26.723       9.299      -2.032

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                              -36.565       0.000   -1085.239      28.934     -10.359    -291.794      -4.521      -4.851

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               98.891    1085.239       0.000      10.750      -3.562      -2.801     289.086     -47.138

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              319.061     -28.934     -10.750       0.000      -0.022       8.098     -68.587    -423.090

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                             -107.968      10.359       3.562       0.022       0.000      23.745    -202.356   -1249.774

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               26.723     291.794       2.801      -8.098     -23.745       0.000     660.023    -105.025

    7    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -9.299       4.521    -289.086      68.587     202.356    -660.023       0.000     -12.277

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                2.032       4.851      47.138     423.090    1249.774     105.025      12.277       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                              -11.920     -38.621    -249.328     -75.391      26.578     533.983      90.353      -4.491

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               21.457     248.132     -34.228     -94.855      32.114      78.516    -526.146      87.196

   11    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -1.940     -35.271      37.811    -584.752     197.828     -81.898      73.640     -13.573

   12    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                             -472.040      43.014      15.904       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.388    1085.742      23.029      19.835    -291.881       1.151       3.837

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.388      -0.000     -99.354     253.196     222.448      26.142      -0.702      -3.619

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1085.742      99.354      -0.000       2.880       2.529       4.285      47.088     289.223

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.029    -253.196      -2.880      -0.000      -0.256      -1.612    -870.862     141.485

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.835    -222.448      -2.529       0.256      -0.000       1.770     991.144    -162.592

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              291.881     -26.142      -4.285       1.612      -1.770      -0.000    -108.768    -659.527

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.151       0.702     -47.088     870.862    -991.144     108.768       0.000       1.181

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.837       3.619    -289.223    -141.485     162.592     659.527      -1.181      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               41.135      -3.380     -33.656    -463.233    -407.010     -69.927      14.626      88.301

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -248.794      23.133     -32.097     -68.985     -60.690     -76.526     -85.787    -527.793

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.637       0.419    -250.334      70.859      61.519    -536.069      11.325      63.665

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -43.216    -472.259      -5.388      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>              -5.758      17.277      55.931       0.282       1.112     632.458      -4.660      10.138
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.044       8.607     -17.010    -620.915    -124.035       0.802      -2.409       0.291
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -219.672    -212.053   -1192.015       7.177       1.505      29.710      63.527     -57.288
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             745.973     713.921    -347.775       5.670       1.059      -0.536    -192.328     236.747
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             745.014    -777.472      13.961      -3.617      -0.667       5.501     243.320     202.315
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              57.085     -25.336    1762.788      -0.000      -0.000      -0.001      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.206       0.078      -0.006    -150.961     755.709      -1.273      -0.345       0.546
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              27.006     294.097       3.352       0.045      -0.436      -1.203    -658.684     107.472
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             293.960     -26.881      -9.906       0.070      -0.565     -12.612     107.476     658.563
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -1.325       0.598     -40.207      -0.365      -1.856   -1066.695      -1.307     -20.169
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.060      -0.040       0.013   -1053.900    -210.526       0.724      -0.025      -0.170
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>             -26.376    -287.842      -3.308       0.119      -0.127      -1.025    -530.367      86.429
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>            -287.710      26.253       9.674      -0.255      -0.093     -10.054      86.433     530.272
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>              10.701      -4.777     331.151       0.005      -0.216    -129.513      -0.193      -2.409
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>             -18.558       8.237    -573.065      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      36.565     -98.891    -319.061

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -36.565       0.000   -1085.239      28.934

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      98.891    1085.239       0.000      10.750

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     319.061     -28.934     -10.750       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -107.968      10.359       3.562       0.022

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      26.723     291.794       2.801      -8.098

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -9.299       4.521    -289.086      68.587

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.032       4.851      47.138     423.090

    9    1  |1 1>+          42887.044       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     -11.920     -38.621    -249.328     -75.391

   10    1  |1 1>+              0.000   42887.044       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      21.457     248.132     -34.228     -94.855

   11    1  |1 1>+              0.000       0.000   42887.042       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -1.940     -35.271      37.811    -584.752

   12    1  |1 1>+              0.000       0.000       0.000   43427.756      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -472.040      43.014      15.904       0.000

    1    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               11.920     -21.457       1.940     472.040       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.003       0.000       0.000
                               38.621    -248.132      35.271     -43.014      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.002       0.000
                              249.328      34.228     -37.811     -15.904      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   42179.749
                               75.391      94.855     584.752      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -26.578     -32.114    -197.828       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -533.983     -78.516      81.898       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -90.353     526.146     -73.640      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                4.491     -87.196      13.573      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -684.445     111.074     113.618      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              684.445       0.000     -88.548     142.521      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -111.074      88.548       0.000     878.225      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -113.618    -142.521    -878.225       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1089.665      15.662      -2.146
                              -41.135     248.794     -26.637      43.216       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000   -1089.665       0.000      35.287       0.966
                                3.380     -23.133      -0.419     472.259       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -15.662     -35.287       0.000     -66.253
                               33.656      32.097     250.334       5.388       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       2.146      -0.966      66.253       0.000
                              463.233      68.985     -70.859       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000     -10.660       4.734    -331.660      -2.191
                              407.010      60.690     -61.519       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.038      -5.571       0.474   -1310.733
                               69.927      76.526     536.069       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     292.210      20.669      -9.077      -1.688
                              -14.626      85.787     -11.325      -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000     -20.530     292.268       4.836     -24.832
                              -88.301     527.793     -63.665       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000    -250.775      -9.535       7.984     -20.580
                                0.000    -104.952    -101.782    -877.102      -0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     -40.589     -36.927       0.784     120.597
                              104.952       0.000     683.571    -130.598       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      15.333    -251.735      -4.115     -16.912
                              101.782    -683.571       0.000     134.666      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      15.349      -6.812     473.965       0.000
                              877.102     130.598    -134.666      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>               1.836      12.043      -0.251      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -96.004   -1043.128     -29.209      -3.560

    2    1  |0 0>               2.293      -3.203       0.277       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1070.481    -106.542     -44.576      -0.082

    3    1  |0 0>              -4.182    -243.929      73.859      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -63.345    -646.133     237.634     -61.913

    4    1  |0 0>             150.397     -66.814    -154.472      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -50.658    -160.388    -776.078     267.686

    5    1  |0 0>            -166.044     -38.056    -144.051       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      29.836      -2.517     705.582     314.899

    6    1  |0 0>             -50.277     295.004     -41.370      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -160.729   -1756.441     -20.040       0.000

    7    1  |0 0>              -0.128       0.032       0.384   -1092.796       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -293.965      26.786      10.001      -0.420

    8    1  |0 0>            -531.701     -79.145      81.807       0.358       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       9.655      -4.251     295.163      -0.501

    9    1  |0 0>              69.047      86.425     532.378       0.733       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.194      -0.017      -0.100    -578.985

   10    1  |0 0>              16.443     -96.165      13.541       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -27.943    -305.781      -3.508       0.064

   11    1  |0 0>              -0.107       0.000      -0.144      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -287.716      26.184       9.727      -0.129

   12    1  |0 0>            -692.033    -103.091     106.348       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       9.386      -4.183     288.887       0.343

   13    1  |0 0>              89.740     112.415     692.934       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.062       0.023      -0.033     709.271

   14    1  |0 0>            -135.048     792.173    -111.032      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      11.940     130.276       1.505       0.059

   15    1  |0 0>             196.268   -1151.615     161.496       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      52.252     571.006       6.515      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              107.968     -26.723       9.299      -2.032      11.920     -21.457       1.940     472.040

    2    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                              -10.359    -291.794      -4.521      -4.851      38.621    -248.132      35.271     -43.014

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -3.562      -2.801     289.086     -47.138     249.328      34.228     -37.811     -15.904

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.022       8.098     -68.587    -423.090      75.391      94.855     584.752      -0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000      23.745    -202.356   -1249.774     -26.578     -32.114    -197.828       0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              -23.745       0.000     660.023    -105.025    -533.983     -78.516      81.898       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              202.356    -660.023       0.000     -12.277     -90.353     526.146     -73.640      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                             1249.774     105.025      12.277       0.000       4.491     -87.196      13.573      -0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               26.578     533.983      90.353      -4.491       0.000    -684.445     111.074     113.618

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               32.114      78.516    -526.146      87.196     684.445       0.000     -88.548     142.521

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                              197.828     -81.898      73.640     -13.573    -111.074      88.548       0.000     878.225

   12    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -113.618    -142.521    -878.225       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42179.758       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42179.747       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42179.743       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42179.748       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   42887.044       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42887.044       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42887.042       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43427.756
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             10.660      -0.038    -292.210      20.530     250.775      40.589     -15.333     -15.349
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-             -4.734       5.571     -20.669    -292.268       9.535      36.927     251.735       6.812
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-            331.660      -0.474       9.077      -4.836      -7.984      -0.784       4.115    -473.965
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              2.191    1310.733       1.688      24.832      20.580    -120.597      16.912      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000     261.831       0.419       5.137    -102.825     603.754     -84.519      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-           -261.831       0.000      12.730      -0.942      10.387       0.648      -0.447       0.001
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.419     -12.730       0.000     668.314     -17.524      72.691     540.856      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -5.137       0.942    -668.314       0.000    -538.013     -92.341      -5.034       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-            102.825     -10.387      17.524     538.013       0.000      95.724     682.603    -149.271
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 1>-           -603.754      -0.648     -72.691      92.341     -95.724       0.000     116.335     875.860
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>-             84.519       0.447    -540.856       5.034    -682.603    -116.335       0.000    -122.826
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000      -0.001       0.000      -0.000     149.271    -875.860     122.826       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.966       4.473    -336.295      54.849    -211.657     -35.108      33.073       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.146       8.458     -43.569    -313.566     -29.798     -37.406    -217.861      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               70.465     -71.191     506.696     -80.187    -139.068      30.414      15.683       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -304.167     228.454     144.266     -16.201      -8.099    -161.660      29.366      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -358.970    -207.142     -26.651      -1.509     -22.843     142.889     -21.558      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -295.422     -43.988      45.358       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.400     -12.831     107.267     658.596     -68.849     -86.574    -532.382      -0.733

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.340    -667.273      -0.878     -12.858      90.516    -530.946      74.635      -0.346

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -508.588       1.396       0.064      -0.510       0.018       0.226       0.334   -1092.796

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.049       0.723     415.798     -67.634    -735.168    -109.522     112.785       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.223      10.218     -86.249    -530.296      89.552     112.521     692.939       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.851     537.261       0.649      10.247    -117.855     691.048     -96.983      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -807.440       1.026       0.089      -0.151       0.075      -0.054       0.157      -0.003

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.220       1.813     975.871    -158.873     313.209      46.677     -48.141      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.007      -0.001    1153.258     171.717    -177.066      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.388    1085.742      23.029      19.835    -291.881       1.151       3.837

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.388      -0.000     -99.354     253.196     222.448      26.142      -0.702      -3.619

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1085.742      99.354      -0.000       2.880       2.529       4.285      47.088     289.223

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.029    -253.196      -2.880      -0.000      -0.256      -1.612    -870.862     141.485

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.835    -222.448      -2.529       0.256      -0.000       1.770     991.144    -162.592

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              291.881     -26.142      -4.285       1.612      -1.770      -0.000    -108.768    -659.527

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.151       0.702     -47.088     870.862    -991.144     108.768       0.000       1.181

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.837       3.619    -289.223    -141.485     162.592     659.527      -1.181      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               41.135      -3.380     -33.656    -463.233    -407.010     -69.927      14.626      88.301

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -248.794      23.133     -32.097     -68.985     -60.690     -76.526     -85.787    -527.793

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.637       0.419    -250.334      70.859      61.519    -536.069      11.325      63.665

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -43.216    -472.259      -5.388      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 0>               0.000   -1089.665     -15.662       2.146     -10.660       0.038     292.210     -20.530
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>            1089.665       0.000     -35.287      -0.966       4.734      -5.571      20.669     292.268
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              15.662      35.287       0.000      66.253    -331.660       0.474      -9.077       4.836
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 0>              -2.146       0.966     -66.253       0.000      -2.191   -1310.733      -1.688     -24.832
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>              10.660      -4.734     331.660       2.191       0.000    -261.831      -0.419      -5.137
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.038       5.571      -0.474    1310.733     261.831       0.000     -12.730       0.942
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>            -292.210     -20.669       9.077       1.688       0.419      12.730       0.000    -668.314
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              20.530    -292.268      -4.836      24.832       5.137      -0.942     668.314       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>             250.775       9.535      -7.984      20.580    -102.825      10.387     -17.524    -538.013
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>              40.589      36.927      -0.784    -120.597     603.754       0.648      72.691     -92.341
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>             -15.333     251.735       4.115      16.912     -84.519      -0.447     540.856      -5.034
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>             -15.349       6.812    -473.965      -0.000      -0.000       0.001      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42179.749       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42179.758       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42179.747       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42179.743       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42179.748
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
                            -1098.392     100.161      27.830      -3.280      -9.676      -8.193      46.889     287.906

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.079   -1072.801     -12.756      -1.582      -4.755      -0.780    -311.240      58.478

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              542.256     -35.126    -177.601      46.103     136.193     -57.368      90.555     532.994

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              182.982     -14.655     683.685    -146.054    -431.337     200.709      27.183     150.393

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.116     -14.175     812.363     133.286     393.787     238.165      -4.337     -11.813

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1755.628    -159.979     -59.152       0.000      -0.000       0.000      -0.000      -0.001

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.919    -294.101      -3.554       0.234      -0.270      -1.648    -658.719     107.255

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.098      -0.092     729.946    -247.115      -0.122       0.281      -0.035

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.540       4.440    -295.164      -0.549      -1.101    -667.275      -0.401     -12.714

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -265.601      24.163       8.923       0.052       0.120      12.248    -103.696    -637.125

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.294     287.850       3.349      -0.044      -0.271      -1.082    -530.382      86.329

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.033      -0.036    -344.624   -1017.967       2.032       0.318      -0.219

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.312       4.212    -288.888       0.298       1.074     537.262       0.562      10.191

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -199.576      18.168       6.703      -0.064      -0.144     -16.198     138.126     847.854

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -570.741      52.008      19.230      -0.000       0.000      -0.000       0.001       0.008

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -5.758      -0.044    -219.672     745.973
                              -41.135     248.794     -26.637      43.216       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      17.277       8.607    -212.053     713.921
                                3.380     -23.133      -0.419     472.259       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      55.931     -17.010   -1192.015    -347.775
                               33.656      32.097     250.334       5.388       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.282    -620.915       7.177       5.670
                              463.233      68.985     -70.859       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       1.112    -124.035       1.505       1.059
                              407.010      60.690     -61.519       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000     632.458       0.802      29.710      -0.536
                               69.927      76.526     536.069       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -4.660      -2.409      63.527    -192.328
                              -14.626      85.787     -11.325      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      10.138       0.291     -57.288     236.747
                              -88.301     527.793     -63.665       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       1.836       2.293      -4.182     150.397
                                0.000    -104.952    -101.782    -877.102       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      12.043      -3.203    -243.929     -66.814
                              104.952       0.000     683.571    -130.598       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.251       0.277      73.859    -154.472
                              101.782    -683.571       0.000     134.666       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              877.102     130.598    -134.666      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -250.775     -40.589      15.333      15.349       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      96.004   -1070.481      63.345      50.658

    2    1  |1 0>              -9.535     -36.927    -251.735      -6.812       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    1043.128     106.542     646.133     160.388

    3    1  |1 0>               7.984       0.784      -4.115     473.965       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      29.209      44.576    -237.634     776.078

    4    1  |1 0>             -20.580     120.597     -16.912       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       3.560       0.082      61.913    -267.686

    5    1  |1 0>             102.825    -603.754      84.519       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -3.966      -0.146     -70.465     304.167

    6    1  |1 0>             -10.387      -0.648       0.447      -0.001       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -4.473      -8.458      71.191    -228.454

    7    1  |1 0>              17.524     -72.691    -540.856       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     336.295      43.569    -506.696    -144.266

    8    1  |1 0>             538.013      92.341       5.034      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -54.849     313.566      80.187      16.201

    9    1  |1 0>               0.000     -95.724    -682.603     149.271       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     211.657      29.798     139.068       8.099

   10    1  |1 0>              95.724       0.000    -116.335    -875.860       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      35.108      37.406     -30.414     161.660

   11    1  |1 0>             682.603     116.335       0.000     122.826       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     -33.073     217.861     -15.683     -29.366

   12    1  |1 0>            -149.271     875.860    -122.826       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1098.392      90.079    -542.256    -182.982

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -100.161    1072.801      35.126      14.655

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -27.830      12.756     177.601    -683.685

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.280       1.582     -46.103     146.054

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       9.676       4.755    -136.193     431.337

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       8.193       0.780      57.368    -200.709

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -46.889     311.240     -90.555     -27.183

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -287.906     -58.478    -532.994    -150.393

    9    1  |1 1>-          42887.044       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -29.260     218.304       6.390      25.985

   10    1  |1 1>-              0.000   42887.044       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -34.458      32.792      49.944    -134.471

   11    1  |1 1>-              0.000       0.000   42887.042       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -224.036     -31.856     107.187      52.422

   12    1  |1 1>-              0.000       0.000       0.000   43427.756       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5715.101       0.000       0.000       0.000
                               29.260      34.458     224.036       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5715.101       0.000       0.000
                             -218.304     -32.792      31.856       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5715.106       0.000
                               -6.390     -49.944    -107.187      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5715.109
                              -25.985     134.471     -52.422       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -28.173     165.335     -14.512      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -38.268     -48.003    -295.800      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              531.664      79.529     -81.689      -0.358      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.203       0.142       0.003   -1092.796      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.850     530.921     -74.406       0.346      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               82.671     103.733     639.690       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              692.043     103.215    -106.158      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.066      -0.095       0.032      -0.003      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              117.917    -691.064      96.798      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               62.149      77.946     480.675       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              149.390     187.393    1154.733       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+            745.014      57.085       0.206      27.006     293.960      -1.325       0.060     -26.376
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -777.472     -25.336       0.078     294.097     -26.881       0.598      -0.040    -287.842
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             13.961    1762.788      -0.006       3.352      -9.906     -40.207       0.013      -3.308
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -3.617      -0.000    -150.961       0.045       0.070      -0.365   -1053.900       0.119
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.667      -0.000     755.709      -0.436      -0.565      -1.856    -210.526      -0.127
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              5.501      -0.001      -1.273      -1.203     -12.612   -1066.695       0.724      -1.025
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            243.320      -0.000      -0.345    -658.684     107.476      -1.307      -0.025    -530.367
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            202.315      -0.000       0.546     107.472     658.563     -20.169      -0.170      86.429
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -166.044     -50.277      -0.128    -531.701      69.047      16.443      -0.107    -692.033
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            -38.056     295.004       0.032     -79.145      86.425     -96.165       0.000    -103.091
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+           -144.051     -41.370       0.384      81.807     532.378      13.541      -0.144     106.348
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000   -1092.796       0.358       0.733       0.000      -0.002       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.836     160.729     293.965      -9.655      -0.194      27.943     287.716      -9.386

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.517    1756.441     -26.786       4.251       0.017     305.781     -26.184       4.183

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -705.582      20.040     -10.001    -295.163       0.100       3.508      -9.727    -288.887

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -314.899      -0.000       0.420       0.501     578.985      -0.064       0.129      -0.343

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              358.970      -0.000       0.400       1.340     508.588      -0.049      -0.223      -0.851

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              207.142       0.000      12.831     667.273      -1.396      -0.723     -10.218    -537.261

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.651       0.000    -107.267       0.878      -0.064    -415.798      86.249      -0.649

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.509      -0.000    -658.596      12.858       0.510      67.634     530.296     -10.247

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.843     295.422      68.849     -90.516      -0.018     735.168     -89.552     117.855

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -142.889      43.988      86.574     530.946      -0.226     109.522    -112.521    -691.048

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               21.558     -45.358     532.382     -74.635      -0.334    -112.785    -692.939      96.983

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.733       0.346    1092.796      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.116   -1755.628      26.919      -0.006       9.540     265.601     -26.294       0.007

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.175     159.979     294.101      -0.098      -4.440     -24.163    -287.850       0.033

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -812.363      59.152       3.554       0.092     295.164      -8.923      -3.349       0.036

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -133.286      -0.000      -0.234    -729.946       0.549      -0.052       0.044     344.624

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -393.787       0.000       0.270     247.115       1.101      -0.120       0.271    1017.967

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -238.165      -0.000       1.648       0.122     667.275     -12.248       1.082      -2.032

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.337       0.000     658.719      -0.281       0.401     103.696     530.382      -0.318

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.813       0.001    -107.255       0.035      12.714     637.125     -86.329       0.219

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               28.173      38.268    -531.664       0.203      90.850     -82.671    -692.043       0.066

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -165.335      48.003     -79.529      -0.142    -530.921    -103.733    -103.215       0.095

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.512     295.800      81.689      -0.003      74.406    -639.690     106.158      -0.032

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.358    1092.796      -0.346      -0.000       0.000       0.003

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5715.111       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14214.117       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41313.702       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41313.709       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41313.714       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   44223.647       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   44223.731       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44223.780
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+           -287.710      10.701     -18.558
                                0.000       0.000       0.000

    2    1  |1 1>+             26.253      -4.777       8.237
                                0.000       0.000       0.000

    3    1  |1 1>+              9.674     331.151    -573.065
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.255       0.005      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+             -0.093      -0.216       0.000
                                0.000       0.000       0.000

    6    1  |1 1>+            -10.054    -129.513       0.000
                                0.000       0.000       0.000

    7    1  |1 1>+             86.433      -0.193       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+            530.272      -2.409       0.000
                                0.000       0.000       0.000

    9    1  |1 1>+             89.740    -135.048     196.268
                                0.000       0.000       0.000

   10    1  |1 1>+            112.415     792.173   -1151.615
                                0.000       0.000       0.000

   11    1  |1 1>+            692.934    -111.032     161.496
                                0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                                0.062     -11.940     -52.252

    2    1  |1 0>               0.000       0.000       0.000
                               -0.023    -130.276    -571.006

    3    1  |1 0>               0.000       0.000       0.000
                                0.033      -1.505      -6.515

    4    1  |1 0>               0.000       0.000       0.000
                             -709.271      -0.059       0.000

    5    1  |1 0>               0.000       0.000       0.000
                              807.440      -0.220       0.000

    6    1  |1 0>               0.000       0.000       0.000
                               -1.026      -1.813      -0.000

    7    1  |1 0>               0.000       0.000       0.000
                               -0.089    -975.871      -0.007

    8    1  |1 0>               0.000       0.000       0.000
                                0.151     158.873       0.001

    9    1  |1 0>               0.000       0.000       0.000
                               -0.075    -313.209   -1153.258

   10    1  |1 0>               0.000       0.000       0.000
                                0.054     -46.677    -171.717

   11    1  |1 0>               0.000       0.000       0.000
                               -0.157      48.141     177.066

   12    1  |1 0>               0.000       0.000       0.000
                                0.003       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                                9.312     199.576     570.741

    2    1  |1 1>-              0.000       0.000       0.000
                               -4.212     -18.168     -52.008

    3    1  |1 1>-              0.000       0.000       0.000
                              288.888      -6.703     -19.230

    4    1  |1 1>-              0.000       0.000       0.000
                               -0.298       0.064       0.000

    5    1  |1 1>-              0.000       0.000       0.000
                               -1.074       0.144      -0.000

    6    1  |1 1>-              0.000       0.000       0.000
                             -537.262      16.198       0.000

    7    1  |1 1>-              0.000       0.000       0.000
                               -0.562    -138.126      -0.001

    8    1  |1 1>-              0.000       0.000       0.000
                              -10.191    -847.854      -0.008

    9    1  |1 1>-              0.000       0.000       0.000
                             -117.917     -62.149    -149.390

   10    1  |1 1>-              0.000       0.000       0.000
                              691.064     -77.946    -187.393

   11    1  |1 1>-              0.000       0.000       0.000
                              -96.798    -480.675   -1154.733

   12    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000      -0.000

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

   13    1  |0 0>           44223.798       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   44223.752       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   46433.066
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08677844    -0.01257574    -2760.06      0.00000000        0.00      0.0000
    2  -214.07925692    -0.00505422    -1109.27      0.00752152     1650.78      0.2047
    3  -214.07925692    -0.00505422    -1109.27      0.00752152     1650.78      0.2047
    4  -214.07925692    -0.00505421    -1109.27      0.00752153     1650.78      0.2047
    5  -214.07138714     0.00281556      617.94      0.01539130     3378.00      0.4188
    6  -214.07138713     0.00281557      617.95      0.01539131     3378.00      0.4188
    7  -214.07138705     0.00281566      617.96      0.01539139     3378.02      0.4188
    8  -214.07138705     0.00281566      617.97      0.01539139     3378.02      0.4188
    9  -214.07138704     0.00281566      617.97      0.01539140     3378.02      0.4188
   10  -214.04614710     0.02805560     6157.49      0.04063134     8917.55      1.1056
   11  -214.04614707     0.02805564     6157.50      0.04063137     8917.56      1.1056
   12  -214.04614706     0.02805564     6157.50      0.04063138     8917.56      1.1056
   13  -214.04614701     0.02805569     6157.51      0.04063143     8917.57      1.1056
   14  -214.04614699     0.02805571     6157.52      0.04063145     8917.57      1.1056
   15  -214.00696242     0.06724028    14757.54      0.07981602    17517.59      2.1719
   16  -213.89510914     0.17909356    39306.49      0.19166930    42066.55      5.2156
   17  -213.89510914     0.17909357    39306.49      0.19166930    42066.55      5.2156
   18  -213.89510912     0.17909358    39306.50      0.19166932    42066.55      5.2156
   19  -213.89031042     0.18389228    40359.69      0.19646802    43119.75      5.3462
   20  -213.89031042     0.18389229    40359.69      0.19646802    43119.75      5.3462
   21  -213.89031041     0.18389229    40359.69      0.19646803    43119.75      5.3462
   22  -213.88979111     0.18441160    40473.67      0.19698734    43233.72      5.3603
   23  -213.88979104     0.18441166    40473.68      0.19698740    43233.74      5.3603
   24  -213.88979104     0.18441167    40473.68      0.19698741    43233.74      5.3603
   25  -213.88979099     0.18441171    40473.69      0.19698745    43233.75      5.3603
   26  -213.88979098     0.18441172    40473.69      0.19698746    43233.75      5.3603
   27  -213.88840968     0.18579303    40776.86      0.19836877    43536.91      5.3979
   28  -213.87773942     0.19646328    43118.71      0.20903902    45878.76      5.6882
   29  -213.87773941     0.19646330    43118.71      0.20903903    45878.76      5.6882
   30  -213.87773940     0.19646330    43118.71      0.20903904    45878.77      5.6882
   31  -213.87592640     0.19827630    43516.62      0.21085204    46276.67      5.7376
   32  -213.87592640     0.19827631    43516.62      0.21085204    46276.67      5.7376
   33  -213.87592639     0.19827631    43516.62      0.21085205    46276.68      5.7376
   34  -213.87592639     0.19827631    43516.62      0.21085205    46276.68      5.7376
   35  -213.87592639     0.19827632    43516.62      0.21085206    46276.68      5.7376
   36  -213.87592638     0.19827633    43516.62      0.21085207    46276.68      5.7376
   37  -213.87592637     0.19827633    43516.62      0.21085207    46276.68      5.7376
   38  -213.87458224     0.19962046    43811.63      0.21219620    46571.68      5.7742
   39  -213.87458221     0.19962050    43811.64      0.21219624    46571.69      5.7742
   40  -213.87458220     0.19962051    43811.64      0.21219625    46571.69      5.7742
   41  -213.87458218     0.19962053    43811.64      0.21219627    46571.70      5.7742
   42  -213.87458217     0.19962053    43811.64      0.21219627    46571.70      5.7742
   43  -213.87218416     0.20201855    44337.95      0.21459428    47098.00      5.8394
   44  -213.87218416     0.20201855    44337.95      0.21459428    47098.00      5.8394
   45  -213.87218416     0.20201855    44337.95      0.21459428    47098.00      5.8394
   46  -213.86886814     0.20533457    45065.73      0.21791031    47825.78      5.9296
   47  -213.86886784     0.20533486    45065.79      0.21791060    47825.85      5.9296
   48  -213.86886778     0.20533493    45065.81      0.21791067    47825.86      5.9297
   49  -213.86886768     0.20533503    45065.83      0.21791077    47825.89      5.9297
   50  -213.86886761     0.20533509    45065.84      0.21791083    47825.90      5.9297
   51  -213.85922965     0.21497305    47181.13      0.22754879    49941.19      6.1919

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.01838208  0.01860305  0.70632322 -0.00482847  0.01423346 -0.02352055  0.02421343  0.67586260
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00815866 -0.02060816  0.00570178  0.70655805 -0.00494502  0.00806386  0.01239606  0.01586298
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.56764114 -0.00089863 -0.02279107  0.01031167  0.44026932 -0.64518479  0.00424600 -0.02437444
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00108741 -0.00002819  0.00003196 -0.00004049  0.00007839  0.01373648 -0.00049459
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00544356  0.00014283 -0.00015861  0.00001127  0.00002887  0.00274394 -0.00009952
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001  0.00001150  0.00009106 -0.00000003  0.01157869  0.00790031 -0.00001935 -0.00010160
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00014740 -0.00030055  0.00479943  0.00000033  0.00002056 -0.00011194  0.00033057
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00011699 -0.00479916 -0.00030425  0.00022013  0.00012167  0.00025836  0.00699661
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00138038 -0.00010751 -0.00010670  0.00356474  0.00028101 -0.00041539 -0.00004131  0.00003625
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00809948 -0.00003064 -0.00051995  0.00058040 -0.00168097  0.00246170 -0.00001262  0.00038359
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00113582 -0.00008784 -0.00357803 -0.00019345  0.00023584 -0.00035574  0.00009847  0.00261387
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.01514154  0.00039575 -0.00044483  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                           0.05175686  0.70370826 -0.02063521 -0.00210369  0.02867183  0.06779123  0.67343788 -0.02146823

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.56559748 -0.06433950  0.00267688  0.00821921  0.33766453  0.70105177 -0.06412266  0.00393956

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00645324 -0.00486511 -0.06911704 -0.70350501  0.00530052  0.00643631 -0.00812232  0.07790502

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00012069 -0.00415216  0.00040646  0.00000212  0.00003421 -0.00031183 -0.00918631

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00010607 -0.00364797  0.00035059  0.00000122 -0.00004067  0.00035565  0.01045585

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00003755 -0.00046399 -0.00478850  0.00000804  0.00000479 -0.00001912 -0.00081721

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00077285 -0.00001982  0.00001656  0.01247249 -0.00600533 -0.00105324  0.00001038

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00474640 -0.00013351  0.00004876 -0.00200750  0.00093963 -0.00692632  0.00023853

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00811096 -0.00047405  0.00007141  0.00058558 -0.00129460 -0.00268917  0.00035396  0.00002718

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00120770 -0.00048037 -0.00033375 -0.00353175 -0.00019938 -0.00039276  0.00036554 -0.00031079

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00124532 -0.00355339  0.00014144  0.00038890  0.00019081  0.00042630  0.00259283 -0.00005016

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00043759  0.01507405 -0.00148400 -0.00000000  0.00000000 -0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.56533596  0.06502982  0.02107716 -0.00034959  0.77599365  0.05815412 -0.06011189 -0.01939558

   2    1  |1 1>-         -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000
                           0.05151553  0.70313020 -0.02848696  0.02165960 -0.06843874 -0.00901748 -0.67339131  0.03387583

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01904784  0.02842804  0.70260865 -0.06895499 -0.02596362  0.00049415 -0.03057963 -0.67138179

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00014030  0.00051711  0.00523468  0.00000908 -0.00000892  0.00009678  0.00050875

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00004586 -0.00018425 -0.00177129  0.00002689 -0.00002706  0.00028397  0.00150032

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00014757 -0.00478479  0.00047146 -0.00001835  0.00029012 -0.00025100 -0.00695957

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00474506  0.00011802 -0.00013833  0.00019227 -0.00228438 -0.00690090  0.00023029

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00077001 -0.00011085  0.00003165  0.00103463 -0.01378868  0.00119713 -0.00022904

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00105067  0.00351827 -0.00069145  0.00016284  0.00037706  0.00004469  0.00256951 -0.00052972

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00131795  0.00062849  0.00350117 -0.00033057  0.00048185  0.00002895  0.00047313  0.00254944

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00812134 -0.00055716 -0.00047872  0.00003258  0.00298208  0.00022359 -0.00040015 -0.00034465

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00040374  0.00149570  0.01507383  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000008 -0.00000003 -0.00000000 -0.00000000 -0.24520241 -0.15171650 -0.00002207  0.00131928
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000001  0.00000017 -0.00000001  0.00000000  0.00116023 -0.00178530  0.28808480 -0.01056890
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

   3    1  |0 0>          -0.00000005 -0.00000000  0.00000005  0.00000001  0.14558742 -0.23669322  0.00125422  0.04898766
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000002 -0.00000001 -0.00000016 -0.00000002  0.04184871 -0.06376747 -0.01285844 -0.20712755
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000017  0.00000003 -0.00963419  0.00736882 -0.00164695 -0.19428643
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.17751549  0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00988150  0.00025135 -0.00029287  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00026663 -0.00097930 -0.00983681 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00027902 -0.00983721  0.00097177  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00629563 -0.00551671  0.00000931 -0.00002124
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00002681 -0.00004579 -0.00836393  0.00029925
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000004  0.00001698 -0.00001862  0.00018154  0.00095444
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000089 -0.00003097  0.00028051  0.00831069
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000018 -0.00000000 -0.00000000 -0.00000000 -0.00551665  0.00629539 -0.00005076  0.00002728
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.02045938 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000006 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.01601028  0.00017295  0.13877665  0.14962586  0.00172556 -0.00269794  0.00331982  0.00000216
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.67658420  0.00166893  0.14949213 -0.13847894 -0.00235259  0.01062285 -0.00147346  0.00000902
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00816046 -0.00050001  0.00767522 -0.00842482  0.00569392 -0.23525632  0.10251654  0.00000006
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00024133  0.01339426 -0.00008694  0.00006507 -0.00000680 -0.00003379  0.00000000  0.09826242
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00005012  0.00267566 -0.00001557  0.00001255 -0.00002420 -0.00000723  0.00000000 -0.49189186
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002

   6    1  |1 1>+         -0.00000733 -0.00001318  0.00006120  0.00027139 -0.01365063 -0.00033446  0.00000002  0.00084534
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00700100  0.00005431  0.00466926 -0.00497785 -0.00009666  0.00022978  0.00000000  0.00486149
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00032610 -0.00000949 -0.00497540 -0.00467047 -0.00030470 -0.00018765  0.00000000 -0.00153199
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00260764 -0.00005660 -0.00463680  0.00467723  0.00010738 -0.00152087  0.00149185  0.00026932
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00042256  0.00000885 -0.00044700  0.00149590 -0.00016682  0.00756395 -0.00875353  0.00003442
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00009650  0.00000715  0.00485918  0.00460043  0.00007178 -0.00088792  0.00122754 -0.00008178
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.16572379
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00998330 -0.20302111  0.00613211 -0.00517453  0.01826031  0.01194029  0.00934733  0.00080861

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00803415  0.01877376 -0.00702242  0.00003861  0.20027963  0.12204422  0.10214746 -0.00007358

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.67234251  0.00851732  0.16139510 -0.12426529  0.00016522  0.00903156  0.00116546 -0.00003643

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00105694  0.00000201  0.00549402  0.00714412  0.00007678  0.00018753  0.00000000 -0.00063709

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00121933 -0.00000119 -0.00624208 -0.00814245 -0.00008963 -0.00020952  0.00000000 -0.00058621

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00696191  0.00018507  0.00541400 -0.00414936 -0.00008365  0.00027720 -0.00000000 -0.01311563

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002563 -0.00107302 -0.00049400  0.00015747 -0.00702472  0.01149774  0.00000000  0.06981471

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000453 -0.00674247  0.00022889 -0.00013895  0.00114268 -0.00184998 -0.00000000  0.42859106

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00042905 -0.00085264  0.00104074 -0.00062711 -0.00649643 -0.00391313 -0.00876594 -0.00310028

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00257196 -0.00112450 -0.00517461  0.00400821 -0.00089725 -0.00083319 -0.00130522 -0.00422158

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00031448 -0.00657986  0.00074983 -0.00060256  0.00098622  0.00065872  0.00134588 -0.02428641

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00027011

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00206740  0.01836747  0.00124461 -0.00856226  0.20585298 -0.11228563 -0.10210015  0.00007410

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01085644  0.20321704 -0.00002773  0.00361734 -0.01874275  0.00976576  0.00930376  0.00080928

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.07771071  0.00228846 -0.12442915 -0.16153900 -0.00867657 -0.00046670  0.00344006  0.00001056

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00446559 -0.00003594 -0.00346647  0.00267177  0.00004524 -0.00016490  0.00000000  0.00536442

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.01319090 -0.00010793 -0.01023785  0.00789388  0.00013399 -0.00048640 -0.00000000 -0.00194111

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00077842 -0.00001133  0.00418883  0.00539800 -0.00006558 -0.00008361  0.00000000 -0.00148824

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00011456 -0.00673636 -0.00002676 -0.00002924  0.00105083  0.00194332 -0.00000000 -0.42876366

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002996  0.00112440 -0.00041214  0.00010026  0.00645182  0.01182561 -0.00000002  0.06980508

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000428 -0.00658158 -0.00061680 -0.00093396  0.00085477 -0.00047722 -0.00113552  0.02428748

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00030356 -0.00097979  0.00403782  0.00518652  0.00114006 -0.00045114 -0.00142438  0.00365689

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00004259  0.00100285 -0.00039313 -0.00083647  0.00667185 -0.00365828 -0.00877716 -0.00373553

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00187230

   1    1  |0 0>          -0.00464392  0.00021318  0.01094216 -0.02849725  0.95658328 -0.01860162 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00730695  0.95718820 -0.00103008 -0.00000470  0.00001321  0.01104980  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.05953461 -0.01081548 -0.29757294  0.02580375  0.02185386  0.90913130  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.18514247 -0.00243173  0.90803452  0.06763456 -0.00262847  0.29532770  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.21275624  0.00047598 -0.05599515  0.95408609  0.02816716 -0.04607910 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.98395607  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.58492045
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002

   8    1  |0 0>          -0.00000003 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00641686
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00055872
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000274 -0.00000192  0.00001079  0.00004158 -0.00339113 -0.00049674  0.00000002  0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00014811  0.00342740 -0.00002245  0.00001574 -0.00000058 -0.00000846  0.00000000  0.00000076
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00831414  0.00002768  0.00271442 -0.00208837 -0.00003579  0.00012840  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00096024  0.00000137  0.00208761  0.00271731  0.00002956  0.00007100  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.00002334  0.00000720 -0.00014509  0.00002833 -0.00049642  0.00338821 -0.00000004  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00456985  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00004467  0.00081107 -0.00004830 -0.00076350 -0.00799755  0.00001413  0.00003555 -0.00022717
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00081140 -0.00004433  0.00041286 -0.00799103  0.00075664 -0.00000595 -0.00002321  0.00009700
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00001022 -0.00002690  0.00000750 -0.00009013  0.00026986  0.00034312  0.00123950 -0.00685652
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00110126 -0.00017969  0.05490443  0.00278182 -0.00058563  0.00089426  0.65787222  0.11896266
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00564574  0.00104507 -0.27482196 -0.01384710  0.00300934  0.00131738  0.13140870  0.02381955
                          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00047350  0.00823164  0.00048766  0.00047797  0.00458625  0.68080290 -0.00708968  0.03279713
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.43101244 -0.05424004 -0.01248307  0.23941137 -0.03988755  0.00079079 -0.00032856 -0.00003188
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.05422657 -0.43096040 -0.00060719 -0.03996980 -0.23967357  0.01273269  0.00019360  0.00092525
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.02439047 -0.00226447  0.02349088 -0.45101591  0.06008596 -0.00260283 -0.00944759  0.05093417
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00375783 -0.00381384  0.00418816 -0.06689634  0.07364637  0.01495316  0.05407717 -0.29918910
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00284524 -0.02444419  0.00131676  0.07109194  0.45214464 -0.00223127 -0.00736764  0.04219045
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00186129 -0.00033781 -0.42451668 -0.02149575  0.00461615  0.00000059  0.00000376  0.00000071
                           0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00003537 -0.00000260 -0.00800313 -0.00014477  0.00008598 -0.00057099 -0.00597244 -0.00078460

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001249  0.00000057  0.00073391 -0.00007845 -0.00000752 -0.00618306 -0.00002012  0.00322308

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00081134 -0.00002938 -0.00013735  0.00803661 -0.00003067 -0.00007112  0.00018733  0.00006972

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01345981 -0.37664835 -0.00225529 -0.00095950 -0.21081832  0.00023279 -0.00028834 -0.00036290

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01123827 -0.33087418 -0.00197575 -0.00117007 -0.18518625 -0.00017457  0.00034337  0.00059482

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.43398380 -0.01495988  0.00771444 -0.24289631  0.00131681  0.00052407  0.00581813  0.00210489

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00133563 -0.00007392  0.03902469  0.00166897 -0.00037349  0.30731537 -0.16067315  0.57924323

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01303635 -0.00121912  0.23973429  0.00752980 -0.00261476 -0.05033794 -0.31364014 -0.15576136

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00416704  0.00015626  0.06234281 -0.07383827 -0.00037001 -0.27115969  0.00914838  0.14316963

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02419870 -0.00087122  0.05048652  0.45433105 -0.00235561 -0.04037573  0.03830716  0.02795402

  11    1  |1 0>           0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00367290  0.00017289  0.45501237 -0.04031437 -0.00469443  0.04186715  0.26393494  0.02600004

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00600966 -0.16562428  0.00453598  0.00169960  0.42505910 -0.00000006  0.00000007 -0.00000011

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000179  0.00002613 -0.00073426 -0.00003808 -0.00025217 -0.00583841  0.00121715 -0.00360678

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000867 -0.00001332 -0.00799231 -0.00040430  0.00020237  0.00053724  0.00586236  0.00140861

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002956  0.00081169 -0.00017692 -0.00003673 -0.00803172  0.00019369  0.00004892  0.00014202

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.47482164  0.01701308 -0.01345471  0.26545965 -0.00103346  0.00004424  0.00021168  0.00004565

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.16071461 -0.00659637  0.00448151 -0.08988445 -0.00011734  0.00011135  0.00053212  0.00014834

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01581688 -0.43407179 -0.00303073 -0.00096159 -0.24296283  0.00715740  0.00108667 -0.01104566

   7    1  |1 1>-          0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00487830  0.00032725 -0.23955645 -0.01210712  0.00229793 -0.05967632 -0.34740795  0.03076354

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00048315 -0.00836613  0.03895822  0.00195833 -0.00502729 -0.36459256 -0.04637921  0.56615135

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00012293 -0.00418151 -0.45040732 -0.02254091  0.08179807  0.03343561  0.25594047  0.06799463

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00092032  0.02423744 -0.07200113 -0.00520589 -0.45043612  0.04152783  0.03405024  0.03362530

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00016526 -0.00339235  0.06995504  0.00376100  0.06251576  0.25650714 -0.06956559  0.15552276

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.16561415 -0.00600629 -0.02151285  0.42453912 -0.00146797  0.00000005  0.00000007 -0.00000005

   1    1  |0 0>           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.01472405 -0.00025925  0.00136153
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000013 -0.00000001  0.00000000  0.00000418 -0.01451734 -0.00283122
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000001 -0.00000001  0.00000000  0.00000004 -0.00000001  0.00137024  0.00268311 -0.01391665
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000003  0.00000003  0.00000001 -0.00000013  0.00000000  0.00027844  0.00085410 -0.00386185
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000003  0.00000002 -0.00000001  0.00000013 -0.00000001  0.00018904 -0.00019265  0.00057713
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000007
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00639216 -0.00079299 -0.44134104 -0.02249362  0.00450303  0.00000051  0.00000262  0.00000050
                           0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.58452757  0.02138453  0.02250884 -0.44136267  0.00138473 -0.00000006 -0.00000008  0.00000006
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.02139183  0.58456189 -0.00442670 -0.00161209 -0.44191285  0.00000007 -0.00000008  0.00000012
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000055 -0.00000002  0.00000004  0.39490037  0.00465481 -0.02793988
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000001  0.00000000  0.00000336  0.00000012 -0.00000008  0.00039313  0.38958782  0.07046084
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000018 -0.00000002 -0.00000031  0.00000492 -0.00000030 -0.00002573 -0.00041963 -0.00016815
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00000002 -0.00000014  0.00000004 -0.00000026 -0.00000012  0.00016678 -0.00017701 -0.00033614
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000000 -0.00000000  0.00000006  0.00000006  0.00000011  0.02832180 -0.07030795  0.38858323
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000027 -0.00000014  0.00000036
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00037497 -0.00603053 -0.00033208  0.00002542  0.00067723  0.00730264 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00603350  0.00037229  0.00014739 -0.00007078  0.00730574 -0.00067384  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00007366  0.00020566 -0.01025464 -0.00000184  0.00008307 -0.00024617  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00065562 -0.00057620  0.00000017 -0.05158065 -0.00048067  0.00021320  0.52872068 -0.25301515
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000001

   5    1  |1 1>+         -0.00022600 -0.00014395  0.00000001  0.25821588  0.00233379 -0.00114095 -0.09576003 -0.00247167
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

   6    1  |1 1>+         -0.00052127 -0.00613341 -0.00000074 -0.00044675 -0.00041905 -0.00430759  0.24899428  0.51977852
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000001

   7    1  |1 1>+         -0.33789966  0.04494406 -0.00000003  0.00218139 -0.22503559  0.03691055  0.00026811  0.00034499
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.04494124  0.33784725  0.00000005  0.00065740  0.03691668  0.22500275  0.00466515  0.00947052
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.26491464  0.02644176 -0.09044028  0.00411074 -0.41712759  0.05451928  0.00000004  0.00000032
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.04050801  0.04195279  0.53066520  0.00087082 -0.06203866  0.06786271 -0.00000021 -0.00000185
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.03279698  0.26539362 -0.07441738  0.00121389  0.06454669  0.41766674  0.00000002  0.00000025
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000007 -0.00000003 -0.00000000 -0.18710573 -0.00173775  0.00081237  0.00000020  0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00018964 -0.00000116 -0.00093500  0.00730523 -0.00016964 -0.00003144 -0.00000003  0.00000001

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00008667 -0.00000328 -0.01021763 -0.00066646  0.00009921  0.00000277  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00603920 -0.00017659 -0.00011658 -0.00017792 -0.00733514  0.00000943  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01297145 -0.44974192 -0.00000008  0.00086654  0.00034226  0.19784212  0.00100371  0.00160392

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01555322  0.51196571  0.00000008  0.00076882  0.00060827  0.17378399  0.00016549  0.00055575

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.34065855 -0.01064480 -0.00000003  0.00218935  0.22804072 -0.00068026 -0.00877221  0.00442283

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000001
                          -0.00049688 -0.00036189  0.00000317 -0.03665530 -0.00005249  0.00011239 -0.18396107 -0.54871035

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013  0.00000000
                          -0.00610623  0.00016839 -0.00000061 -0.22507638  0.00222967  0.00099683  0.42020897 -0.13581110

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.04489593  0.00104811  0.53142050  0.05470112 -0.07049839 -0.00015369 -0.00000034 -0.00000008

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.26356179 -0.00776659  0.07912702  0.06391778  0.41722946 -0.00076923  0.00000003 -0.00000008

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.03669363  0.00089376 -0.08159185  0.41826466 -0.05454200 -0.00174704  0.00000063 -0.00000052

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000033  0.00000103 -0.00000001  0.00081032  0.00022077  0.18711166 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000494  0.00019474  0.01021291  0.00066963  0.00000649  0.00023457  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000347 -0.00009181 -0.00093064  0.00730597  0.00006773 -0.00013712  0.00000001 -0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00017647  0.00603909 -0.00034410  0.00011512  0.00000943  0.00733276  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.21852902  0.00621880  0.00000002  0.00231980 -0.24941699  0.00039281 -0.00098998  0.00127334

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.64549075  0.01824735  0.00000006 -0.00071851  0.08443608  0.00030653 -0.00010021 -0.00008657

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00870401 -0.34069339 -0.00000012  0.00139769  0.00024267  0.22800726 -0.00462331 -0.01181272

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000020  0.00000001
                           0.00016475 -0.00024756  0.00000056  0.22507921  0.00206821 -0.00068920  0.64582258 -0.18862586

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000001
                           0.00017868 -0.00707597  0.00000395 -0.03663201 -0.00033669  0.00447892  0.14717354  0.55717742

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00104601 -0.04513191  0.06883887 -0.41687921 -0.00379087  0.07281389  0.00000146 -0.00000025

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00774321  0.26349832  0.08635071 -0.06392217 -0.00106846 -0.41634348  0.00000030  0.00000023

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00106108 -0.03690595  0.53210003  0.06430612  0.00066382  0.05814537  0.00000039  0.00000192

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000658 -0.00000008  0.00000001 -0.00173865  0.18710645 -0.00021329 -0.00000000 -0.00000000

   1    1  |0 0>           0.00023924 -0.00011248 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000004
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00012957  0.00001242 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000011 -0.00000005
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00329471 -0.00227698 -0.00000009  0.00000000  0.00000002  0.00000001  0.00000001  0.00000005
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.01036459  0.00977962 -0.00000002  0.00000000 -0.00000005 -0.00000004  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.01002160  0.01086039  0.00000000  0.00000000  0.00000004 -0.00000004  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.01649775 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000007 -0.00000003 -0.00000000  0.65377528  0.00628656 -0.00239991 -0.00000094  0.00000008
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000560  0.00000007 -0.00000000 -0.00628858  0.65378007 -0.00053724 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000030 -0.00000075  0.00000000  0.00239464  0.00056030  0.65380640  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00002423  0.00018737 -0.00000018  0.00000007 -0.00000000  0.00000000  0.00000041  0.00000065
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00043584 -0.00024672  0.00000009 -0.00000014 -0.00000001 -0.00000000  0.00000022 -0.00000012
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.39573505 -0.01160453 -0.00000004  0.00000000 -0.00000059 -0.00000003 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.01160479 -0.39573369 -0.00000006 -0.00000000 -0.00000004 -0.00000127  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00008392 -0.00028914 -0.00000149  0.00000001  0.00000001  0.00000001  0.00000021  0.00000135
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000003 -0.00000005  0.33680452  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001488  0.00000494 -0.00010950
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000914  0.00001965  0.00002883
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00021424 -0.00021208 -0.00296096
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00107611 -0.00009476  0.00058201 -0.00009958 -0.00160102  0.00066514 -0.40900489  0.02929646
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00093212  0.00003688 -0.00091887 -0.00015664  0.76196507  0.00082974 -0.08169879  0.00590210
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000232 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00050880  0.00439068 -0.00037927 -0.01292899  0.03241318  0.41701916  0.00298519  0.02998157
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.37299449  0.02633517  0.62712271  0.01522494  0.00031631 -0.00000854  0.00130041 -0.00099592
                          -0.00000007  0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.01429437 -0.15196628 -0.01946428  0.71377347  0.00072602  0.00729315 -0.00102309  0.00174907
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000162  0.00000015 -0.00000534  0.00000006 -0.00000001  0.00922949 -0.01125586 -0.10551646
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000033  0.00000013 -0.00000090 -0.00000048  0.00000006 -0.04560740  0.04530663  0.63596157
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000034  0.00000086  0.00000015 -0.00000348 -0.00000001  0.00810607 -0.00359626 -0.09231676
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000096 -0.00000019  0.00000112 -0.00000010
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00024732  0.00256951 -0.00006570

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00266859 -0.00014416  0.00130772

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00003566 -0.00006766  0.00000601

   4    1  |1 0>           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.16077864 -0.64294286 -0.07404678 -0.19784605 -0.00018464  0.00090617  0.00108734 -0.00131369

   5    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.03411489  0.00005554 -0.08599621 -0.66401729 -0.00016751 -0.00097958 -0.00125611  0.00160386

   6    1  |1 0>          -0.00000010  0.00000002 -0.00000001  0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000
                           0.49199457 -0.16890797  0.51075389 -0.04100840 -0.00986769 -0.00009672 -0.00246371 -0.00025325

   7    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000000
                           0.00089145 -0.00175173  0.00057377 -0.00049859  0.05976748  0.18002613  0.06026593  0.36800380

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000175  0.00000000  0.00000000 -0.00000000
                           0.00957310 -0.00306504  0.00934841 -0.00088261  0.57702425 -0.02956426  0.20146467 -0.07507283

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000035  0.00000004  0.00000066 -0.00000009  0.00000033  0.57570404  0.05296403 -0.28426932

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000204 -0.00000026 -0.00000385  0.00000049  0.00000025  0.08679963  0.08319189 -0.04471537

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000030  0.00000004  0.00000053 -0.00000007  0.00000140 -0.08922440  0.55712962  0.00268831

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000012  0.00000023 -0.00000011 -0.00000055 -0.00000000  0.00000004  0.00000004  0.00000010

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00245401 -0.00035643 -0.00164174

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00022666 -0.00255069  0.00033441

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000003 -0.00000000 -0.00000001  0.00000000  0.00007426 -0.00003537  0.00007028

   4    1  |1 1>-         -0.00000014  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.72407255 -0.19890798  0.09021972  0.02432687  0.00080436  0.00028759 -0.00091468  0.00075804

   5    1  |1 1>-          0.00000003 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.17813423  0.00597292  0.56749810 -0.08325037  0.00049258  0.00083750 -0.00264582  0.00225292

   6    1  |1 1>-         -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.18835691  0.70317403  0.04802147 -0.02934752 -0.00101805  0.00511807  0.00074809 -0.00755346

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000083  0.00000000  0.00000000  0.00000000
                           0.00171382  0.00102160  0.00094250  0.00003722 -0.27476157 -0.03794686  0.20976580  0.04075265

   8    1  |1 1>-         -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000
                           0.00310964  0.01485655  0.00086406  0.00004669  0.07894936 -0.23149934 -0.00935325  0.34308718

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000  0.00000011  0.00000009  0.00000051 -0.00000005 -0.06957422  0.54914980 -0.08553980

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000062 -0.00000051 -0.00000300 -0.00000003 -0.08437254  0.08025958 -0.06674280

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000009  0.00000007  0.00000042 -0.00000017 -0.53067713 -0.11150792 -0.35223150

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000077  0.00000016  0.00000042 -0.00000005 -0.00000000 -0.00000004  0.00000007  0.00000005

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.01680222  0.00015917  0.00196531
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000555  0.01685605 -0.00143858
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000001  0.00000004 -0.00000002 -0.00000000  0.00193788 -0.00131167 -0.01614677
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000001 -0.00000003 -0.00000014  0.00000010 -0.00000000  0.00041588 -0.00060316 -0.00437679
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000004 -0.00000005  0.00000015  0.00000008  0.00000000  0.00014373  0.00017256  0.00067463
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000115  0.00000017 -0.00000043  0.00000005
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000066 -0.00000032  0.00000140 -0.00000000 -0.00000000 -0.00000002  0.00000004  0.00000004
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000038  0.00000096 -0.00000016 -0.00000062 -0.00000000  0.00000003  0.00000002  0.00000007
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000011 -0.30729892  0.00067929  0.01495975
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000036 -0.00039242  0.30685423 -0.02198671
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000134 -0.00000013 -0.00000275  0.00000029 -0.00000000  0.00061550 -0.00213467  0.00180225
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00000006  0.00000052  0.00000042  0.00000193 -0.00000000 -0.00098143 -0.00115332  0.00148363
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000004 -0.01497047 -0.02199744 -0.30648762
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000005 -0.00000114
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00033272  0.00255581  0.00023670 -0.00884027  0.00423696 -0.00004448  0.00000300  0.00034196
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00255770 -0.00033212 -0.00041114 -0.00424931 -0.00883253  0.00002051  0.00000232 -0.00014922
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00001022 -0.00010095 -0.00001357  0.00022520 -0.00026416 -0.00131161 -0.00002997  0.01054348
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00303031  0.00165735 -0.00293291 -0.00001004  0.00014142 -0.00006343 -0.16003091 -0.00046126
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00066625  0.00034299  0.01468405  0.00005614 -0.00070659 -0.00028334 -0.03196755 -0.00012582
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00149096  0.00265980 -0.00003042  0.00022246 -0.00010449 -0.16191329  0.00017653 -0.02014315
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.20491205 -0.04149843  0.00056091  0.00478397  0.01205558 -0.00018858  0.00002285 -0.00000522
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.04146570 -0.20490158  0.00027571 -0.01206646  0.00477507 -0.00305086 -0.00004478 -0.00038774
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.55175854  0.09253818  0.01359932  0.12666437  0.29111121  0.00777301  0.00023624 -0.06191215
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.07564458  0.09605471  0.00328212 -0.01987343  0.06646810 -0.04523470 -0.00104026  0.36375456
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.10584679  0.55098556  0.00687716 -0.29565221  0.12018877  0.00641275  0.00000196 -0.05103257
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000004 -0.00000005  0.86880492  0.00315244 -0.04195800  0.00000004 -0.00000106 -0.00000000
                          -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00006463 -0.00001220  0.00976635  0.00019832 -0.00019881  0.00089160  0.00916509 -0.00035115

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00003338  0.00001685 -0.00089438 -0.00007554 -0.00007791  0.00975151 -0.00082261 -0.00412320

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00257644 -0.00009840  0.00005911  0.00503001  0.00842276  0.00011276 -0.00030637 -0.00004553

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01067586  0.27575688  0.00031414 -0.00966989  0.00576539 -0.00002561  0.00004038  0.00000256

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01167015 -0.31394697  0.00027585 -0.00850364  0.00504962  0.00001073 -0.00005732 -0.00004655

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.20892927 -0.00757987 -0.00026888 -0.00663983 -0.01115270 -0.00010107 -0.00152137 -0.00025368

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00238730  0.00091874 -0.00208487 -0.00001375  0.00008525 -0.06269868  0.01352804 -0.14833102

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00204741 -0.00116100 -0.01280615 -0.00017383  0.00040786  0.01020284  0.08045400  0.02438755

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.09333023 -0.00703662  0.04289425  0.02766718  0.04401412  0.33812627 -0.04075977 -0.14301241

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.55387888  0.02041373  0.03870136 -0.16128553 -0.27228006  0.05040194 -0.05151263 -0.02133920

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.07353542 -0.00472950  0.31690859  0.02378731  0.02261608 -0.05189490 -0.31837575  0.02102767

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000009 -0.00000011 -0.02423256  0.74657559 -0.44567958 -0.00000002  0.00000001 -0.00000002

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001524 -0.00008132  0.00090181 -0.00026929  0.00011957  0.00844079 -0.00085637  0.00637917

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002164  0.00004724  0.00975437  0.00015637 -0.00054347 -0.00076839 -0.00916648 -0.00060738

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00009811 -0.00257570  0.00038450 -0.00841534  0.00501853 -0.00028223 -0.00010780 -0.00021562

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.13398107  0.00524446  0.00056182  0.00728103  0.01217831 -0.00001301 -0.00001218 -0.00000727

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.39576601  0.01556715 -0.00018578 -0.00248640 -0.00411012 -0.00003334 -0.00001464 -0.00002818

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00874540  0.20881130  0.00038499 -0.01113968  0.00665095 -0.00187902  0.00017315  0.00246342

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00117781 -0.00020539  0.01279909  0.00003301 -0.00060861  0.01581138  0.08059657 -0.02069513

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00177002  0.00633053 -0.00207728 -0.00021862  0.00022671  0.09712195 -0.01274271 -0.12849670

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00809457 -0.09647087 -0.31326862 -0.04717387  0.04268047 -0.03791571 -0.31779217 -0.02957145

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02012257  0.55287298 -0.05563409  0.26992472 -0.15897373 -0.04750122 -0.04736609 -0.03611517

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00532549 -0.07698284  0.04955657 -0.03770113  0.02027702 -0.29320274  0.04942643 -0.22151610

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000098 -0.00000014  0.03439762  0.44632671  0.74578932  0.00000001  0.00000002 -0.00000002

   1    1  |0 0>           0.00022328  0.00010642  0.00000000 -0.00000000  0.00000000  0.00024654 -0.00000010  0.00004187
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00025746 -0.00006004 -0.00000002 -0.00000000  0.00000000  0.00000056 -0.00024995 -0.00000411
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00385545  0.00228106  0.00000000 -0.00000000 -0.00000000  0.00004093  0.00000353 -0.00023697
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.01260497 -0.01037721  0.00000000  0.00000001  0.00000001  0.00000973  0.00000258 -0.00006630
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.01060185 -0.01316662 -0.00000000  0.00000000 -0.00000002  0.00000248 -0.00000145  0.00001025
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000007
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000003  0.00000003 -0.18673998 -0.00053846  0.00900655 -0.00000000  0.00000033  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000088 -0.00000005  0.00745292  0.09598381  0.16026551 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000014 -0.00000149 -0.00508555  0.16043825 -0.09585074  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00049139  0.00106956 -0.00000010  0.00000001 -0.00000003  0.86516169 -0.00005089  0.00255016
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00230529 -0.00116800  0.00000038 -0.00000004 -0.00000004  0.00004353  0.86516949  0.00249702
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.30740475  0.01176740 -0.00000000 -0.00000047 -0.00000067 -0.00008427 -0.00031192 -0.00028022
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.01175270 -0.30740808 -0.00000000 -0.00000083  0.00000044  0.00012756 -0.00016615 -0.00009195
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00172323 -0.00128300 -0.00000001  0.00000007  0.00000000 -0.00255029 -0.00249702  0.86516803
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000002  0.00000062
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+         -0.00085053 -0.00916280 -0.00029682
                          -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00916711  0.00084669  0.00013174
                          -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00010173  0.00030954 -0.00916588
                           0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00003981 -0.00006950  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00003092 -0.00002015  0.00000001
                          -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00017959 -0.00150470  0.00000005
                          -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.08052073  0.01321737  0.00000000
                          -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.01321626  0.08050722  0.00000000
                           0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.31784835  0.04157815  0.03238147
                          -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.04718090  0.05173551 -0.19000075
                           0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.04919927  0.31822504  0.02664459
                          -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000
                          -0.00029568  0.00000392 -0.00083574

   2    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00013255 -0.00000292 -0.00913299

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00920135  0.00001154 -0.00010420

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00017578 -0.10770219  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00001168  0.12260991  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.08158349 -0.00006236 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00014781 -0.00001732 -0.00000096

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00151811  0.00004126  0.00000015

   9    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.05410730 -0.00016931 -0.19027210

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.31744597  0.00036987 -0.02833098

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.04443467 -0.00017435  0.02921350

  12    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000169  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00000315  0.00029586  0.00912875

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00000269 -0.00013585 -0.00083185

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00001157  0.00920128 -0.00030757

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.05233057 -0.00010538  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.15457728 -0.00034064 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                          -0.00040169 -0.08158242  0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00002447 -0.00007432 -0.00000016

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00000534 -0.00157790 -0.00000099

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00016004 -0.05422206 -0.02464738

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00037510  0.31742378 -0.03091740

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00014806 -0.04443357 -0.19051552

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00000191  0.00000002 -0.00000000

   1    1  |0 0>          -0.00000396  0.00000208  0.00000000
                           0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000201 -0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00005678  0.00003690  0.00000001
                          -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00018004 -0.00015972  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00016362 -0.00018850 -0.00000000
                           0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00682132
                           0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000015  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000031  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00008492 -0.00012738  0.00000008
                          -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00031291  0.00016603  0.00000001
                           0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.86517719 -0.00099422 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00099417  0.86517906 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00027916  0.00009152 -0.00000057
                           0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000001  0.00000001  0.94134120
                           0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08677844     -0.01257574    -2760.06      0.00000000        0.00      0.0000
     2   1   -214.07925692     -0.00505422    -1109.27      0.00752152     1650.78      0.2047
     3   1   -214.07925692     -0.00505422    -1109.27      0.00752152     1650.78      0.2047
     4   1   -214.07925692     -0.00505421    -1109.27      0.00752153     1650.78      0.2047
     5   1   -214.07138714      0.00281556      617.94      0.01539130     3378.00      0.4188
     6   1   -214.07138713      0.00281557      617.95      0.01539131     3378.00      0.4188
     7   1   -214.07138705      0.00281566      617.96      0.01539139     3378.02      0.4188
     8   1   -214.07138705      0.00281566      617.97      0.01539139     3378.02      0.4188
     9   1   -214.07138704      0.00281566      617.97      0.01539140     3378.02      0.4188
    10   1   -214.04614710      0.02805560     6157.49      0.04063134     8917.55      1.1056
    11   1   -214.04614707      0.02805564     6157.50      0.04063137     8917.56      1.1056
    12   1   -214.04614706      0.02805564     6157.50      0.04063138     8917.56      1.1056
    13   1   -214.04614701      0.02805569     6157.51      0.04063143     8917.57      1.1056
    14   1   -214.04614699      0.02805571     6157.52      0.04063145     8917.57      1.1056
    15   1   -214.00696242      0.06724028    14757.54      0.07981602    17517.59      2.1719
    16   1   -213.89510914      0.17909356    39306.49      0.19166930    42066.55      5.2156
    17   1   -213.89510914      0.17909357    39306.49      0.19166930    42066.55      5.2156
    18   1   -213.89510912      0.17909358    39306.50      0.19166932    42066.55      5.2156
    19   1   -213.89031042      0.18389228    40359.69      0.19646802    43119.75      5.3462
    20   1   -213.89031042      0.18389229    40359.69      0.19646802    43119.75      5.3462
    21   1   -213.89031041      0.18389229    40359.69      0.19646803    43119.75      5.3462
    22   1   -213.88979111      0.18441160    40473.67      0.19698734    43233.72      5.3603
    23   1   -213.88979104      0.18441166    40473.68      0.19698740    43233.74      5.3603
    24   1   -213.88979104      0.18441167    40473.68      0.19698741    43233.74      5.3603
    25   1   -213.88979099      0.18441171    40473.69      0.19698745    43233.75      5.3603
    26   1   -213.88979098      0.18441172    40473.69      0.19698746    43233.75      5.3603
    27   1   -213.88840968      0.18579303    40776.86      0.19836877    43536.91      5.3979
    28   1   -213.87773942      0.19646328    43118.71      0.20903902    45878.76      5.6882
    29   1   -213.87773941      0.19646330    43118.71      0.20903903    45878.76      5.6882
    30   1   -213.87773940      0.19646330    43118.71      0.20903904    45878.77      5.6882
    31   1   -213.87592640      0.19827630    43516.62      0.21085204    46276.67      5.7376
    32   1   -213.87592640      0.19827631    43516.62      0.21085204    46276.67      5.7376
    33   1   -213.87592639      0.19827631    43516.62      0.21085205    46276.68      5.7376
    34   1   -213.87592639      0.19827631    43516.62      0.21085205    46276.68      5.7376
    35   1   -213.87592639      0.19827632    43516.62      0.21085206    46276.68      5.7376
    36   1   -213.87592638      0.19827633    43516.62      0.21085207    46276.68      5.7376
    37   1   -213.87592637      0.19827633    43516.62      0.21085207    46276.68      5.7376
    38   1   -213.87458224      0.19962046    43811.63      0.21219620    46571.68      5.7742
    39   1   -213.87458221      0.19962050    43811.64      0.21219624    46571.69      5.7742
    40   1   -213.87458220      0.19962051    43811.64      0.21219625    46571.69      5.7742
    41   1   -213.87458218      0.19962053    43811.64      0.21219627    46571.70      5.7742
    42   1   -213.87458217      0.19962053    43811.64      0.21219627    46571.70      5.7742
    43   1   -213.87218416      0.20201855    44337.95      0.21459428    47098.00      5.8394
    44   1   -213.87218416      0.20201855    44337.95      0.21459428    47098.00      5.8394
    45   1   -213.87218416      0.20201855    44337.95      0.21459428    47098.00      5.8394
    46   1   -213.86886814      0.20533457    45065.73      0.21791031    47825.78      5.9296
    47   1   -213.86886784      0.20533486    45065.79      0.21791060    47825.85      5.9296
    48   1   -213.86886778      0.20533493    45065.81      0.21791067    47825.86      5.9297
    49   1   -213.86886768      0.20533503    45065.83      0.21791077    47825.89      5.9297
    50   1   -213.86886761      0.20533509    45065.84      0.21791083    47825.90      5.9297
    51   1   -213.85922965      0.21497305    47181.13      0.22754879    49941.19      6.1919

 E0 =   -214.07420271 is the energy of the lowest zeroth-order state
 E1 =   -214.08677844 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.01838208  0.01860305  0.70632322 -0.00482847  0.01423346 -0.02352055  0.02421343  0.67586260
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00815866 -0.02060816  0.00570178  0.70655805 -0.00494502  0.00806386  0.01239606  0.01586298
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.56764114 -0.00089863 -0.02279107  0.01031167  0.44026932 -0.64518479  0.00424600 -0.02437444
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00108741 -0.00002819  0.00003196 -0.00004049  0.00007839  0.01373648 -0.00049459
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.00544356  0.00014283 -0.00015861  0.00001127  0.00002887  0.00274394 -0.00009952
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000001  0.00001150  0.00009106 -0.00000003  0.01157869  0.00790031 -0.00001935 -0.00010160
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00014740 -0.00030055  0.00479943  0.00000033  0.00002056 -0.00011194  0.00033057
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00011699 -0.00479916 -0.00030425  0.00022013  0.00012167  0.00025836  0.00699661
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00138038 -0.00010751 -0.00010670  0.00356474  0.00028101 -0.00041539 -0.00004131  0.00003625
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00809948 -0.00003064 -0.00051995  0.00058040 -0.00168097  0.00246170 -0.00001262  0.00038359
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00113582 -0.00008784 -0.00357803 -0.00019345  0.00023584 -0.00035574  0.00009847  0.00261387
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.01514154  0.00039575 -0.00044483  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                                0.05175686  0.70370826 -0.02063521 -0.00210369  0.02867183  0.06779123  0.67343788 -0.02146823

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.56559748 -0.06433950  0.00267688  0.00821921  0.33766453  0.70105177 -0.06412266  0.00393956

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00645324 -0.00486511 -0.06911704 -0.70350501  0.00530052  0.00643631 -0.00812232  0.07790502

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00012069 -0.00415216  0.00040646  0.00000212  0.00003421 -0.00031183 -0.00918631

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00010607 -0.00364797  0.00035059  0.00000122 -0.00004067  0.00035565  0.01045585

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00003755 -0.00046399 -0.00478850  0.00000804  0.00000479 -0.00001912 -0.00081721

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00077285 -0.00001982  0.00001656  0.01247249 -0.00600533 -0.00105324  0.00001038

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00474640 -0.00013351  0.00004876 -0.00200750  0.00093963 -0.00692632  0.00023853

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00811096 -0.00047405  0.00007141  0.00058558 -0.00129460 -0.00268917  0.00035396  0.00002718

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00120770 -0.00048037 -0.00033375 -0.00353175 -0.00019938 -0.00039276  0.00036554 -0.00031079

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00124532 -0.00355339  0.00014144  0.00038890  0.00019081  0.00042630  0.00259283 -0.00005016

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00043759  0.01507405 -0.00148400 -0.00000000  0.00000000 -0.00000000 -0.00000001

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.56533596  0.06502982  0.02107716 -0.00034959  0.77599365  0.05815412 -0.06011189 -0.01939558

 26  1     2    1  |1 1>-      -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000
                                0.05151553  0.70313020 -0.02848696  0.02165960 -0.06843874 -0.00901748 -0.67339131  0.03387583

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01904784  0.02842804  0.70260865 -0.06895499 -0.02596362  0.00049415 -0.03057963 -0.67138179

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00014030  0.00051711  0.00523468  0.00000908 -0.00000892  0.00009678  0.00050875

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00004586 -0.00018425 -0.00177129  0.00002689 -0.00002706  0.00028397  0.00150032

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00014757 -0.00478479  0.00047146 -0.00001835  0.00029012 -0.00025100 -0.00695957

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00474506  0.00011802 -0.00013833  0.00019227 -0.00228438 -0.00690090  0.00023029

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00077001 -0.00011085  0.00003165  0.00103463 -0.01378868  0.00119713 -0.00022904

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00105067  0.00351827 -0.00069145  0.00016284  0.00037706  0.00004469  0.00256951 -0.00052972

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00131795  0.00062849  0.00350117 -0.00033057  0.00048185  0.00002895  0.00047313  0.00254944

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00812134 -0.00055716 -0.00047872  0.00003258  0.00298208  0.00022359 -0.00040015 -0.00034465

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00040374  0.00149570  0.01507383  0.00000000  0.00000000  0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000008 -0.00000003 -0.00000000 -0.00000000 -0.24520241 -0.15171650 -0.00002207  0.00131928
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000001  0.00000017 -0.00000001  0.00000000  0.00116023 -0.00178530  0.28808480 -0.01056890
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

 39  1     3    1  |0 0>       -0.00000005 -0.00000000  0.00000005  0.00000001  0.14558742 -0.23669322  0.00125422  0.04898766
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000002 -0.00000001 -0.00000016 -0.00000002  0.04184871 -0.06376747 -0.01285844 -0.20712755
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000017  0.00000003 -0.00963419  0.00736882 -0.00164695 -0.19428643
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.17751549  0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00988150  0.00025135 -0.00029287  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00026663 -0.00097930 -0.00983681 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00027902 -0.00983721  0.00097177  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00629563 -0.00551671  0.00000931 -0.00002124
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00002681 -0.00004579 -0.00836393  0.00029925
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000004  0.00001698 -0.00001862  0.00018154  0.00095444
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000089 -0.00003097  0.00028051  0.00831069
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000018 -0.00000000 -0.00000000 -0.00000000 -0.00551665  0.00629539 -0.00005076  0.00002728
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.02045938 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000006 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.01601028  0.00017295  0.13877665  0.14962586  0.00172556 -0.00269794  0.00331982  0.00000216
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.67658420  0.00166893  0.14949213 -0.13847894 -0.00235259  0.01062285 -0.00147346  0.00000902
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00816046 -0.00050001  0.00767522 -0.00842482  0.00569392 -0.23525632  0.10251654  0.00000006
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00024133  0.01339426 -0.00008694  0.00006507 -0.00000680 -0.00003379  0.00000000  0.09826242
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00005012  0.00267566 -0.00001557  0.00001255 -0.00002420 -0.00000723  0.00000000 -0.49189186
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002

  6  1     6    1  |1 1>+      -0.00000733 -0.00001318  0.00006120  0.00027139 -0.01365063 -0.00033446  0.00000002  0.00084534
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00700100  0.00005431  0.00466926 -0.00497785 -0.00009666  0.00022978  0.00000000  0.00486149
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00032610 -0.00000949 -0.00497540 -0.00467047 -0.00030470 -0.00018765  0.00000000 -0.00153199
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00260764 -0.00005660 -0.00463680  0.00467723  0.00010738 -0.00152087  0.00149185  0.00026932
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00042256  0.00000885 -0.00044700  0.00149590 -0.00016682  0.00756395 -0.00875353  0.00003442
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00009650  0.00000715  0.00485918  0.00460043  0.00007178 -0.00088792  0.00122754 -0.00008178
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.16572379
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00998330 -0.20302111  0.00613211 -0.00517453  0.01826031  0.01194029  0.00934733  0.00080861

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00803415  0.01877376 -0.00702242  0.00003861  0.20027963  0.12204422  0.10214746 -0.00007358

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.67234251  0.00851732  0.16139510 -0.12426529  0.00016522  0.00903156  0.00116546 -0.00003643

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00105694  0.00000201  0.00549402  0.00714412  0.00007678  0.00018753  0.00000000 -0.00063709

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00121933 -0.00000119 -0.00624208 -0.00814245 -0.00008963 -0.00020952  0.00000000 -0.00058621

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00696191  0.00018507  0.00541400 -0.00414936 -0.00008365  0.00027720 -0.00000000 -0.01311563

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002563 -0.00107302 -0.00049400  0.00015747 -0.00702472  0.01149774  0.00000000  0.06981471

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000453 -0.00674247  0.00022889 -0.00013895  0.00114268 -0.00184998 -0.00000000  0.42859106

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00042905 -0.00085264  0.00104074 -0.00062711 -0.00649643 -0.00391313 -0.00876594 -0.00310028

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00257196 -0.00112450 -0.00517461  0.00400821 -0.00089725 -0.00083319 -0.00130522 -0.00422158

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00031448 -0.00657986  0.00074983 -0.00060256  0.00098622  0.00065872  0.00134588 -0.02428641

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00027011

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00206740  0.01836747  0.00124461 -0.00856226  0.20585298 -0.11228563 -0.10210015  0.00007410

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01085644  0.20321704 -0.00002773  0.00361734 -0.01874275  0.00976576  0.00930376  0.00080928

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.07771071  0.00228846 -0.12442915 -0.16153900 -0.00867657 -0.00046670  0.00344006  0.00001056

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00446559 -0.00003594 -0.00346647  0.00267177  0.00004524 -0.00016490  0.00000000  0.00536442

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.01319090 -0.00010793 -0.01023785  0.00789388  0.00013399 -0.00048640 -0.00000000 -0.00194111

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00077842 -0.00001133  0.00418883  0.00539800 -0.00006558 -0.00008361  0.00000000 -0.00148824

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00011456 -0.00673636 -0.00002676 -0.00002924  0.00105083  0.00194332 -0.00000000 -0.42876366

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002996  0.00112440 -0.00041214  0.00010026  0.00645182  0.01182561 -0.00000002  0.06980508

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000428 -0.00658158 -0.00061680 -0.00093396  0.00085477 -0.00047722 -0.00113552  0.02428748

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00030356 -0.00097979  0.00403782  0.00518652  0.00114006 -0.00045114 -0.00142438  0.00365689

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00004259  0.00100285 -0.00039313 -0.00083647  0.00667185 -0.00365828 -0.00877716 -0.00373553

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00187230

 37  1     1    1  |0 0>       -0.00464392  0.00021318  0.01094216 -0.02849725  0.95658328 -0.01860162 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00730695  0.95718820 -0.00103008 -0.00000470  0.00001321  0.01104980  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.05953461 -0.01081548 -0.29757294  0.02580375  0.02185386  0.90913130  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.18514247 -0.00243173  0.90803452  0.06763456 -0.00262847  0.29532770  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.21275624  0.00047598 -0.05599515  0.95408609  0.02816716 -0.04607910 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.98395607  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.58492045
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002

 44  1     8    1  |0 0>       -0.00000003 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00641686
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00055872
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000274 -0.00000192  0.00001079  0.00004158 -0.00339113 -0.00049674  0.00000002  0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00014811  0.00342740 -0.00002245  0.00001574 -0.00000058 -0.00000846  0.00000000  0.00000076
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00831414  0.00002768  0.00271442 -0.00208837 -0.00003579  0.00012840  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00096024  0.00000137  0.00208761  0.00271731  0.00002956  0.00007100  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00002334  0.00000720 -0.00014509  0.00002833 -0.00049642  0.00338821 -0.00000004  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00456985  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00004467  0.00081107 -0.00004830 -0.00076350 -0.00799755  0.00001413  0.00003555 -0.00022717
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00081140 -0.00004433  0.00041286 -0.00799103  0.00075664 -0.00000595 -0.00002321  0.00009700
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00001022 -0.00002690  0.00000750 -0.00009013  0.00026986  0.00034312  0.00123950 -0.00685652
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00110126 -0.00017969  0.05490443  0.00278182 -0.00058563  0.00089426  0.65787222  0.11896266
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00564574  0.00104507 -0.27482196 -0.01384710  0.00300934  0.00131738  0.13140870  0.02381955
                               -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00047350  0.00823164  0.00048766  0.00047797  0.00458625  0.68080290 -0.00708968  0.03279713
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.43101244 -0.05424004 -0.01248307  0.23941137 -0.03988755  0.00079079 -0.00032856 -0.00003188
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.05422657 -0.43096040 -0.00060719 -0.03996980 -0.23967357  0.01273269  0.00019360  0.00092525
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.02439047 -0.00226447  0.02349088 -0.45101591  0.06008596 -0.00260283 -0.00944759  0.05093417
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00375783 -0.00381384  0.00418816 -0.06689634  0.07364637  0.01495316  0.05407717 -0.29918910
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00284524 -0.02444419  0.00131676  0.07109194  0.45214464 -0.00223127 -0.00736764  0.04219045
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00186129 -0.00033781 -0.42451668 -0.02149575  0.00461615  0.00000059  0.00000376  0.00000071
                                0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00003537 -0.00000260 -0.00800313 -0.00014477  0.00008598 -0.00057099 -0.00597244 -0.00078460

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001249  0.00000057  0.00073391 -0.00007845 -0.00000752 -0.00618306 -0.00002012  0.00322308

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00081134 -0.00002938 -0.00013735  0.00803661 -0.00003067 -0.00007112  0.00018733  0.00006972

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01345981 -0.37664835 -0.00225529 -0.00095950 -0.21081832  0.00023279 -0.00028834 -0.00036290

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01123827 -0.33087418 -0.00197575 -0.00117007 -0.18518625 -0.00017457  0.00034337  0.00059482

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.43398380 -0.01495988  0.00771444 -0.24289631  0.00131681  0.00052407  0.00581813  0.00210489

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00133563 -0.00007392  0.03902469  0.00166897 -0.00037349  0.30731537 -0.16067315  0.57924323

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01303635 -0.00121912  0.23973429  0.00752980 -0.00261476 -0.05033794 -0.31364014 -0.15576136

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00416704  0.00015626  0.06234281 -0.07383827 -0.00037001 -0.27115969  0.00914838  0.14316963

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02419870 -0.00087122  0.05048652  0.45433105 -0.00235561 -0.04037573  0.03830716  0.02795402

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00367290  0.00017289  0.45501237 -0.04031437 -0.00469443  0.04186715  0.26393494  0.02600004

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00600966 -0.16562428  0.00453598  0.00169960  0.42505910 -0.00000006  0.00000007 -0.00000011

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000179  0.00002613 -0.00073426 -0.00003808 -0.00025217 -0.00583841  0.00121715 -0.00360678

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000867 -0.00001332 -0.00799231 -0.00040430  0.00020237  0.00053724  0.00586236  0.00140861

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002956  0.00081169 -0.00017692 -0.00003673 -0.00803172  0.00019369  0.00004892  0.00014202

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.47482164  0.01701308 -0.01345471  0.26545965 -0.00103346  0.00004424  0.00021168  0.00004565

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.16071461 -0.00659637  0.00448151 -0.08988445 -0.00011734  0.00011135  0.00053212  0.00014834

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01581688 -0.43407179 -0.00303073 -0.00096159 -0.24296283  0.00715740  0.00108667 -0.01104566

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00487830  0.00032725 -0.23955645 -0.01210712  0.00229793 -0.05967632 -0.34740795  0.03076354

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00048315 -0.00836613  0.03895822  0.00195833 -0.00502729 -0.36459256 -0.04637921  0.56615135

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00012293 -0.00418151 -0.45040732 -0.02254091  0.08179807  0.03343561  0.25594047  0.06799463

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00092032  0.02423744 -0.07200113 -0.00520589 -0.45043612  0.04152783  0.03405024  0.03362530

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00016526 -0.00339235  0.06995504  0.00376100  0.06251576  0.25650714 -0.06956559  0.15552276

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.16561415 -0.00600629 -0.02151285  0.42453912 -0.00146797  0.00000005  0.00000007 -0.00000005

 37  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.01472405 -0.00025925  0.00136153
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000013 -0.00000001  0.00000000  0.00000418 -0.01451734 -0.00283122
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000001 -0.00000001  0.00000000  0.00000004 -0.00000001  0.00137024  0.00268311 -0.01391665
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000003  0.00000003  0.00000001 -0.00000013  0.00000000  0.00027844  0.00085410 -0.00386185
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000003  0.00000002 -0.00000001  0.00000013 -0.00000001  0.00018904 -0.00019265  0.00057713
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000007
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00639216 -0.00079299 -0.44134104 -0.02249362  0.00450303  0.00000051  0.00000262  0.00000050
                                0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.58452757  0.02138453  0.02250884 -0.44136267  0.00138473 -0.00000006 -0.00000008  0.00000006
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.02139183  0.58456189 -0.00442670 -0.00161209 -0.44191285  0.00000007 -0.00000008  0.00000012
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000055 -0.00000002  0.00000004  0.39490037  0.00465481 -0.02793988
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000001  0.00000000  0.00000336  0.00000012 -0.00000008  0.00039313  0.38958782  0.07046084
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000018 -0.00000002 -0.00000031  0.00000492 -0.00000030 -0.00002573 -0.00041963 -0.00016815
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000002 -0.00000014  0.00000004 -0.00000026 -0.00000012  0.00016678 -0.00017701 -0.00033614
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000 -0.00000000  0.00000006  0.00000006  0.00000011  0.02832180 -0.07030795  0.38858323
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000027 -0.00000014  0.00000036
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00037497 -0.00603053 -0.00033208  0.00002542  0.00067723  0.00730264 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00603350  0.00037229  0.00014739 -0.00007078  0.00730574 -0.00067384  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00007366  0.00020566 -0.01025464 -0.00000184  0.00008307 -0.00024617  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00065562 -0.00057620  0.00000017 -0.05158065 -0.00048067  0.00021320  0.52872068 -0.25301515
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000001

  5  1     5    1  |1 1>+      -0.00022600 -0.00014395  0.00000001  0.25821588  0.00233379 -0.00114095 -0.09576003 -0.00247167
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

  6  1     6    1  |1 1>+      -0.00052127 -0.00613341 -0.00000074 -0.00044675 -0.00041905 -0.00430759  0.24899428  0.51977852
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000001

  7  1     7    1  |1 1>+      -0.33789966  0.04494406 -0.00000003  0.00218139 -0.22503559  0.03691055  0.00026811  0.00034499
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.04494124  0.33784725  0.00000005  0.00065740  0.03691668  0.22500275  0.00466515  0.00947052
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.26491464  0.02644176 -0.09044028  0.00411074 -0.41712759  0.05451928  0.00000004  0.00000032
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.04050801  0.04195279  0.53066520  0.00087082 -0.06203866  0.06786271 -0.00000021 -0.00000185
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.03279698  0.26539362 -0.07441738  0.00121389  0.06454669  0.41766674  0.00000002  0.00000025
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000007 -0.00000003 -0.00000000 -0.18710573 -0.00173775  0.00081237  0.00000020  0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00018964 -0.00000116 -0.00093500  0.00730523 -0.00016964 -0.00003144 -0.00000003  0.00000001

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00008667 -0.00000328 -0.01021763 -0.00066646  0.00009921  0.00000277  0.00000000 -0.00000000

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00603920 -0.00017659 -0.00011658 -0.00017792 -0.00733514  0.00000943  0.00000000 -0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01297145 -0.44974192 -0.00000008  0.00086654  0.00034226  0.19784212  0.00100371  0.00160392

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01555322  0.51196571  0.00000008  0.00076882  0.00060827  0.17378399  0.00016549  0.00055575

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.34065855 -0.01064480 -0.00000003  0.00218935  0.22804072 -0.00068026 -0.00877221  0.00442283

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000001
                               -0.00049688 -0.00036189  0.00000317 -0.03665530 -0.00005249  0.00011239 -0.18396107 -0.54871035

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013  0.00000000
                               -0.00610623  0.00016839 -0.00000061 -0.22507638  0.00222967  0.00099683  0.42020897 -0.13581110

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.04489593  0.00104811  0.53142050  0.05470112 -0.07049839 -0.00015369 -0.00000034 -0.00000008

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.26356179 -0.00776659  0.07912702  0.06391778  0.41722946 -0.00076923  0.00000003 -0.00000008

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.03669363  0.00089376 -0.08159185  0.41826466 -0.05454200 -0.00174704  0.00000063 -0.00000052

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000033  0.00000103 -0.00000001  0.00081032  0.00022077  0.18711166 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000494  0.00019474  0.01021291  0.00066963  0.00000649  0.00023457  0.00000000  0.00000000

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000347 -0.00009181 -0.00093064  0.00730597  0.00006773 -0.00013712  0.00000001 -0.00000001

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00017647  0.00603909 -0.00034410  0.00011512  0.00000943  0.00733276  0.00000000 -0.00000000

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.21852902  0.00621880  0.00000002  0.00231980 -0.24941699  0.00039281 -0.00098998  0.00127334

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.64549075  0.01824735  0.00000006 -0.00071851  0.08443608  0.00030653 -0.00010021 -0.00008657

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00870401 -0.34069339 -0.00000012  0.00139769  0.00024267  0.22800726 -0.00462331 -0.01181272

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000020  0.00000001
                                0.00016475 -0.00024756  0.00000056  0.22507921  0.00206821 -0.00068920  0.64582258 -0.18862586

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000001
                                0.00017868 -0.00707597  0.00000395 -0.03663201 -0.00033669  0.00447892  0.14717354  0.55717742

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00104601 -0.04513191  0.06883887 -0.41687921 -0.00379087  0.07281389  0.00000146 -0.00000025

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00774321  0.26349832  0.08635071 -0.06392217 -0.00106846 -0.41634348  0.00000030  0.00000023

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00106108 -0.03690595  0.53210003  0.06430612  0.00066382  0.05814537  0.00000039  0.00000192

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000658 -0.00000008  0.00000001 -0.00173865  0.18710645 -0.00021329 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00023924 -0.00011248 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000004
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00012957  0.00001242 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000011 -0.00000005
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00329471 -0.00227698 -0.00000009  0.00000000  0.00000002  0.00000001  0.00000001  0.00000005
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.01036459  0.00977962 -0.00000002  0.00000000 -0.00000005 -0.00000004  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.01002160  0.01086039  0.00000000  0.00000000  0.00000004 -0.00000004  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.01649775 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000007 -0.00000003 -0.00000000  0.65377528  0.00628656 -0.00239991 -0.00000094  0.00000008
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000560  0.00000007 -0.00000000 -0.00628858  0.65378007 -0.00053724 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000030 -0.00000075  0.00000000  0.00239464  0.00056030  0.65380640  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00002423  0.00018737 -0.00000018  0.00000007 -0.00000000  0.00000000  0.00000041  0.00000065
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00043584 -0.00024672  0.00000009 -0.00000014 -0.00000001 -0.00000000  0.00000022 -0.00000012
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.39573505 -0.01160453 -0.00000004  0.00000000 -0.00000059 -0.00000003 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.01160479 -0.39573369 -0.00000006 -0.00000000 -0.00000004 -0.00000127  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00008392 -0.00028914 -0.00000149  0.00000001  0.00000001  0.00000001  0.00000021  0.00000135
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000003 -0.00000005  0.33680452  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001488  0.00000494 -0.00010950
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000001  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000914  0.00001965  0.00002883
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00021424 -0.00021208 -0.00296096
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00107611 -0.00009476  0.00058201 -0.00009958 -0.00160102  0.00066514 -0.40900489  0.02929646
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00093212  0.00003688 -0.00091887 -0.00015664  0.76196507  0.00082974 -0.08169879  0.00590210
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000232 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00050880  0.00439068 -0.00037927 -0.01292899  0.03241318  0.41701916  0.00298519  0.02998157
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.37299449  0.02633517  0.62712271  0.01522494  0.00031631 -0.00000854  0.00130041 -0.00099592
                               -0.00000007  0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.01429437 -0.15196628 -0.01946428  0.71377347  0.00072602  0.00729315 -0.00102309  0.00174907
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000162  0.00000015 -0.00000534  0.00000006 -0.00000001  0.00922949 -0.01125586 -0.10551646
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000033  0.00000013 -0.00000090 -0.00000048  0.00000006 -0.04560740  0.04530663  0.63596157
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000034  0.00000086  0.00000015 -0.00000348 -0.00000001  0.00810607 -0.00359626 -0.09231676
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000096 -0.00000019  0.00000112 -0.00000010
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00024732  0.00256951 -0.00006570

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00266859 -0.00014416  0.00130772

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00003566 -0.00006766  0.00000601

 16  1     4    1  |1 0>        0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.16077864 -0.64294286 -0.07404678 -0.19784605 -0.00018464  0.00090617  0.00108734 -0.00131369

 17  1     5    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.03411489  0.00005554 -0.08599621 -0.66401729 -0.00016751 -0.00097958 -0.00125611  0.00160386

 18  1     6    1  |1 0>       -0.00000010  0.00000002 -0.00000001  0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000
                                0.49199457 -0.16890797  0.51075389 -0.04100840 -0.00986769 -0.00009672 -0.00246371 -0.00025325

 19  1     7    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000000
                                0.00089145 -0.00175173  0.00057377 -0.00049859  0.05976748  0.18002613  0.06026593  0.36800380

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000175  0.00000000  0.00000000 -0.00000000
                                0.00957310 -0.00306504  0.00934841 -0.00088261  0.57702425 -0.02956426  0.20146467 -0.07507283

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000035  0.00000004  0.00000066 -0.00000009  0.00000033  0.57570404  0.05296403 -0.28426932

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000204 -0.00000026 -0.00000385  0.00000049  0.00000025  0.08679963  0.08319189 -0.04471537

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000030  0.00000004  0.00000053 -0.00000007  0.00000140 -0.08922440  0.55712962  0.00268831

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000012  0.00000023 -0.00000011 -0.00000055 -0.00000000  0.00000004  0.00000004  0.00000010

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00245401 -0.00035643 -0.00164174

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00022666 -0.00255069  0.00033441

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000003 -0.00000000 -0.00000001  0.00000000  0.00007426 -0.00003537  0.00007028

 28  1     4    1  |1 1>-      -0.00000014  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.72407255 -0.19890798  0.09021972  0.02432687  0.00080436  0.00028759 -0.00091468  0.00075804

 29  1     5    1  |1 1>-       0.00000003 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.17813423  0.00597292  0.56749810 -0.08325037  0.00049258  0.00083750 -0.00264582  0.00225292

 30  1     6    1  |1 1>-      -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.18835691  0.70317403  0.04802147 -0.02934752 -0.00101805  0.00511807  0.00074809 -0.00755346

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000083  0.00000000  0.00000000  0.00000000
                                0.00171382  0.00102160  0.00094250  0.00003722 -0.27476157 -0.03794686  0.20976580  0.04075265

 32  1     8    1  |1 1>-      -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000
                                0.00310964  0.01485655  0.00086406  0.00004669  0.07894936 -0.23149934 -0.00935325  0.34308718

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000  0.00000011  0.00000009  0.00000051 -0.00000005 -0.06957422  0.54914980 -0.08553980

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000062 -0.00000051 -0.00000300 -0.00000003 -0.08437254  0.08025958 -0.06674280

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000009  0.00000007  0.00000042 -0.00000017 -0.53067713 -0.11150792 -0.35223150

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000077  0.00000016  0.00000042 -0.00000005 -0.00000000 -0.00000004  0.00000007  0.00000005

 37  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.01680222  0.00015917  0.00196531
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000555  0.01685605 -0.00143858
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000001  0.00000004 -0.00000002 -0.00000000  0.00193788 -0.00131167 -0.01614677
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000001 -0.00000003 -0.00000014  0.00000010 -0.00000000  0.00041588 -0.00060316 -0.00437679
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000004 -0.00000005  0.00000015  0.00000008  0.00000000  0.00014373  0.00017256  0.00067463
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000115  0.00000017 -0.00000043  0.00000005
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000066 -0.00000032  0.00000140 -0.00000000 -0.00000000 -0.00000002  0.00000004  0.00000004
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000038  0.00000096 -0.00000016 -0.00000062 -0.00000000  0.00000003  0.00000002  0.00000007
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000011 -0.30729892  0.00067929  0.01495975
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000036 -0.00039242  0.30685423 -0.02198671
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000134 -0.00000013 -0.00000275  0.00000029 -0.00000000  0.00061550 -0.00213467  0.00180225
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000006  0.00000052  0.00000042  0.00000193 -0.00000000 -0.00098143 -0.00115332  0.00148363
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000004 -0.01497047 -0.02199744 -0.30648762
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000005 -0.00000114
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00033272  0.00255581  0.00023670 -0.00884027  0.00423696 -0.00004448  0.00000300  0.00034196
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00255770 -0.00033212 -0.00041114 -0.00424931 -0.00883253  0.00002051  0.00000232 -0.00014922
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00001022 -0.00010095 -0.00001357  0.00022520 -0.00026416 -0.00131161 -0.00002997  0.01054348
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00303031  0.00165735 -0.00293291 -0.00001004  0.00014142 -0.00006343 -0.16003091 -0.00046126
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00066625  0.00034299  0.01468405  0.00005614 -0.00070659 -0.00028334 -0.03196755 -0.00012582
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00149096  0.00265980 -0.00003042  0.00022246 -0.00010449 -0.16191329  0.00017653 -0.02014315
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.20491205 -0.04149843  0.00056091  0.00478397  0.01205558 -0.00018858  0.00002285 -0.00000522
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.04146570 -0.20490158  0.00027571 -0.01206646  0.00477507 -0.00305086 -0.00004478 -0.00038774
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.55175854  0.09253818  0.01359932  0.12666437  0.29111121  0.00777301  0.00023624 -0.06191215
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.07564458  0.09605471  0.00328212 -0.01987343  0.06646810 -0.04523470 -0.00104026  0.36375456
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.10584679  0.55098556  0.00687716 -0.29565221  0.12018877  0.00641275  0.00000196 -0.05103257
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000004 -0.00000005  0.86880492  0.00315244 -0.04195800  0.00000004 -0.00000106 -0.00000000
                               -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00006463 -0.00001220  0.00976635  0.00019832 -0.00019881  0.00089160  0.00916509 -0.00035115

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00003338  0.00001685 -0.00089438 -0.00007554 -0.00007791  0.00975151 -0.00082261 -0.00412320

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00257644 -0.00009840  0.00005911  0.00503001  0.00842276  0.00011276 -0.00030637 -0.00004553

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01067586  0.27575688  0.00031414 -0.00966989  0.00576539 -0.00002561  0.00004038  0.00000256

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01167015 -0.31394697  0.00027585 -0.00850364  0.00504962  0.00001073 -0.00005732 -0.00004655

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.20892927 -0.00757987 -0.00026888 -0.00663983 -0.01115270 -0.00010107 -0.00152137 -0.00025368

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00238730  0.00091874 -0.00208487 -0.00001375  0.00008525 -0.06269868  0.01352804 -0.14833102

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00204741 -0.00116100 -0.01280615 -0.00017383  0.00040786  0.01020284  0.08045400  0.02438755

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.09333023 -0.00703662  0.04289425  0.02766718  0.04401412  0.33812627 -0.04075977 -0.14301241

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.55387888  0.02041373  0.03870136 -0.16128553 -0.27228006  0.05040194 -0.05151263 -0.02133920

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.07353542 -0.00472950  0.31690859  0.02378731  0.02261608 -0.05189490 -0.31837575  0.02102767

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000009 -0.00000011 -0.02423256  0.74657559 -0.44567958 -0.00000002  0.00000001 -0.00000002

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001524 -0.00008132  0.00090181 -0.00026929  0.00011957  0.00844079 -0.00085637  0.00637917

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002164  0.00004724  0.00975437  0.00015637 -0.00054347 -0.00076839 -0.00916648 -0.00060738

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00009811 -0.00257570  0.00038450 -0.00841534  0.00501853 -0.00028223 -0.00010780 -0.00021562

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.13398107  0.00524446  0.00056182  0.00728103  0.01217831 -0.00001301 -0.00001218 -0.00000727

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.39576601  0.01556715 -0.00018578 -0.00248640 -0.00411012 -0.00003334 -0.00001464 -0.00002818

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00874540  0.20881130  0.00038499 -0.01113968  0.00665095 -0.00187902  0.00017315  0.00246342

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00117781 -0.00020539  0.01279909  0.00003301 -0.00060861  0.01581138  0.08059657 -0.02069513

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00177002  0.00633053 -0.00207728 -0.00021862  0.00022671  0.09712195 -0.01274271 -0.12849670

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00809457 -0.09647087 -0.31326862 -0.04717387  0.04268047 -0.03791571 -0.31779217 -0.02957145

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02012257  0.55287298 -0.05563409  0.26992472 -0.15897373 -0.04750122 -0.04736609 -0.03611517

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00532549 -0.07698284  0.04955657 -0.03770113  0.02027702 -0.29320274  0.04942643 -0.22151610

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000098 -0.00000014  0.03439762  0.44632671  0.74578932  0.00000001  0.00000002 -0.00000002

 37  1     1    1  |0 0>        0.00022328  0.00010642  0.00000000 -0.00000000  0.00000000  0.00024654 -0.00000010  0.00004187
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00025746 -0.00006004 -0.00000002 -0.00000000  0.00000000  0.00000056 -0.00024995 -0.00000411
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00385545  0.00228106  0.00000000 -0.00000000 -0.00000000  0.00004093  0.00000353 -0.00023697
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.01260497 -0.01037721  0.00000000  0.00000001  0.00000001  0.00000973  0.00000258 -0.00006630
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.01060185 -0.01316662 -0.00000000  0.00000000 -0.00000002  0.00000248 -0.00000145  0.00001025
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000007
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000003  0.00000003 -0.18673998 -0.00053846  0.00900655 -0.00000000  0.00000033  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000088 -0.00000005  0.00745292  0.09598381  0.16026551 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000014 -0.00000149 -0.00508555  0.16043825 -0.09585074  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00049139  0.00106956 -0.00000010  0.00000001 -0.00000003  0.86516169 -0.00005089  0.00255016
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00230529 -0.00116800  0.00000038 -0.00000004 -0.00000004  0.00004353  0.86516949  0.00249702
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.30740475  0.01176740 -0.00000000 -0.00000047 -0.00000067 -0.00008427 -0.00031192 -0.00028022
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.01175270 -0.30740808 -0.00000000 -0.00000083  0.00000044  0.00012756 -0.00016615 -0.00009195
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00172323 -0.00128300 -0.00000001  0.00000007  0.00000000 -0.00255029 -0.00249702  0.86516803
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000002  0.00000062
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+      -0.00085053 -0.00916280 -0.00029682
                               -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00916711  0.00084669  0.00013174
                               -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00010173  0.00030954 -0.00916588
                                0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00003981 -0.00006950  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00003092 -0.00002015  0.00000001
                               -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00017959 -0.00150470  0.00000005
                               -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.08052073  0.01321737  0.00000000
                               -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.01321626  0.08050722  0.00000000
                                0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.31784835  0.04157815  0.03238147
                               -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.04718090  0.05173551 -0.19000075
                                0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.04919927  0.31822504  0.02664459
                               -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000001  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000
                               -0.00029568  0.00000392 -0.00083574

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00013255 -0.00000292 -0.00913299

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00920135  0.00001154 -0.00010420

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00017578 -0.10770219  0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00001168  0.12260991  0.00000000

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.08158349 -0.00006236 -0.00000000

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00014781 -0.00001732 -0.00000096

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00151811  0.00004126  0.00000015

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.05410730 -0.00016931 -0.19027210

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.31744597  0.00036987 -0.02833098

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.04443467 -0.00017435  0.02921350

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000169  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00000315  0.00029586  0.00912875

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00000269 -0.00013585 -0.00083185

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00001157  0.00920128 -0.00030757

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.05233057 -0.00010538  0.00000000

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.15457728 -0.00034064 -0.00000000

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                               -0.00040169 -0.08158242  0.00000002

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00002447 -0.00007432 -0.00000016

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00000534 -0.00157790 -0.00000099

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00016004 -0.05422206 -0.02464738

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00037510  0.31742378 -0.03091740

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00014806 -0.04443357 -0.19051552

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00000191  0.00000002 -0.00000000

 37  1     1    1  |0 0>       -0.00000396  0.00000208  0.00000000
                                0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000201 -0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00005678  0.00003690  0.00000001
                               -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00018004 -0.00015972  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00016362 -0.00018850 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00682132
                                0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000015  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000031  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00008492 -0.00012738  0.00000008
                               -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00031291  0.00016603  0.00000001
                                0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.86517719 -0.00099422 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00099417  0.86517906 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00027916  0.00009152 -0.00000057
                                0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000001  0.00000001  0.94134120
                                0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.03%    0.03%   49.89%    0.00%    0.02%    0.06%    0.06%   45.68%
  2  1     2    1  |1 1>+         0.01%    0.04%    0.00%   49.92%    0.00%    0.01%    0.02%    0.03%
  3  1     3    1  |1 1>+        32.22%    0.00%    0.05%    0.01%   19.38%   41.63%    0.00%    0.06%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.27%   49.52%    0.04%    0.00%    0.08%    0.46%   45.35%    0.05%
 14  1     2    1  |1 0>         31.99%    0.41%    0.00%    0.01%   11.40%   49.15%    0.41%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.48%   49.49%    0.00%    0.00%    0.01%    0.61%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        31.96%    0.42%    0.04%    0.00%   60.22%    0.34%    0.36%    0.04%
 26  1     2    1  |1 1>-         0.27%   49.44%    0.08%    0.05%    0.47%    0.01%   45.35%    0.11%
 27  1     3    1  |1 1>-         0.04%    0.08%   49.37%    0.48%    0.07%    0.00%    0.09%   45.08%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.01%    2.30%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.30%    0.01%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.12%    5.60%    0.00%    0.24%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.41%    0.02%    4.29%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    3.77%
 42  1     6    1  |0 0>          3.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.03%    0.00%    1.93%    2.24%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        45.78%    0.00%    2.23%    1.92%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.00%    0.01%    0.01%    0.00%    5.53%    1.05%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.97%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.20%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.75%
 13  1     1    1  |1 0>          0.01%    4.12%    0.00%    0.00%    0.03%    0.01%    0.01%    0.00%
 14  1     2    1  |1 0>          0.01%    0.04%    0.00%    0.00%    4.01%    1.49%    1.04%    0.00%
 15  1     3    1  |1 0>         45.20%    0.01%    2.60%    1.54%    0.00%    0.01%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.49%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.37%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.03%    0.00%    0.01%    4.24%    1.26%    1.04%    0.00%
 26  1     2    1  |1 1>-         0.01%    4.13%    0.00%    0.00%    0.04%    0.01%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.60%    0.00%    1.55%    2.61%    0.01%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.02%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.38%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.49%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.01%    0.08%   91.51%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.01%   91.62%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 39  1     3    1  |0 0>          0.35%    0.01%    8.85%    0.07%    0.05%   82.65%    0.00%    0.00%
 40  1     4    1  |0 0>          3.43%    0.00%   82.45%    0.46%    0.00%    8.72%    0.00%    0.00%
 41  1     5    1  |0 0>          4.53%    0.00%    0.31%   91.03%    0.08%    0.21%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.82%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.21%
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

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.30%    0.00%    0.00%    0.00%   43.28%    1.42%
  5  1     5    1  |1 1>+         0.00%    0.00%    7.55%    0.02%    0.00%    0.00%    1.73%    0.06%
  6  1     6    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%   46.35%    0.01%    0.11%
  7  1     7    1  |1 1>+        18.58%    0.29%    0.02%    5.73%    0.16%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.29%   18.57%    0.00%    0.16%    5.74%    0.02%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.06%    0.00%    0.06%   20.34%    0.36%    0.00%    0.01%    0.26%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.45%    0.54%    0.02%    0.29%    8.95%
 11  1    11    1  |1 1>+         0.00%    0.06%    0.00%    0.51%   20.44%    0.00%    0.01%    0.18%
 12  1    12    1  |1 1>+         0.00%    0.00%   18.02%    0.05%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.02%   14.19%    0.00%    0.00%    4.44%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.01%   10.95%    0.00%    0.00%    3.43%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>         18.83%    0.02%    0.01%    5.90%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.15%    0.00%    0.00%    9.44%    2.58%   33.55%
 20  1     8    1  |1 0>          0.02%    0.00%    5.75%    0.01%    0.00%    0.25%    9.84%    2.43%
 21  1     9    1  |1 0>          0.00%    0.00%    0.39%    0.55%    0.00%    7.35%    0.01%    2.05%
 22  1    10    1  |1 0>          0.06%    0.00%    0.25%   20.64%    0.00%    0.16%    0.15%    0.08%
 23  1    11    1  |1 0>          0.00%    0.00%   20.70%    0.16%    0.00%    0.18%    6.97%    0.07%
 24  1    12    1  |1 0>          0.00%    2.74%    0.00%    0.00%   18.07%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        22.55%    0.03%    0.02%    7.05%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         2.58%    0.00%    0.00%    0.81%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.03%   18.84%    0.00%    0.00%    5.90%    0.01%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    5.74%    0.01%    0.00%    0.36%   12.07%    0.09%
 32  1     8    1  |1 1>-         0.00%    0.01%    0.15%    0.00%    0.00%   13.29%    0.22%   32.05%
 33  1     9    1  |1 1>-         0.00%    0.00%   20.29%    0.05%    0.67%    0.11%    6.55%    0.46%
 34  1    10    1  |1 1>-         0.00%    0.06%    0.52%    0.00%   20.29%    0.17%    0.12%    0.11%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.49%    0.00%    0.39%    6.58%    0.48%    2.42%
 36  1    12    1  |1 1>-         2.74%    0.00%    0.05%   18.02%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   19.48%    0.05%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         34.17%    0.05%    0.05%   19.48%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.05%   34.17%    0.00%    0.00%   19.53%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   15.59%    0.00%    0.08%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   15.18%    0.50%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.49%   15.10%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.27%    0.00%    0.00%   27.95%    6.40%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    6.67%    0.00%    0.00%    0.92%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.20%   27.02%
  7  1     7    1  |1 1>+        11.42%    0.20%    0.00%    0.00%    5.06%    0.14%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.20%   11.41%    0.00%    0.00%    0.14%    5.06%    0.00%    0.01%
  9  1     9    1  |1 1>+         7.02%    0.07%    0.82%    0.00%   17.40%    0.30%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.16%    0.18%   28.16%    0.00%    0.38%    0.46%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.11%    7.04%    0.55%    0.00%    0.42%   17.44%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.02%   20.23%    0.00%    0.00%    0.00%    3.91%    0.00%    0.00%
 17  1     5    1  |1 0>          0.02%   26.21%    0.00%    0.00%    0.00%    3.02%    0.00%    0.00%
 18  1     6    1  |1 0>         11.60%    0.01%    0.00%    0.00%    5.20%    0.00%    0.01%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    3.38%   30.11%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    5.07%    0.00%    0.00%   17.66%    1.84%
 21  1     9    1  |1 0>          0.20%    0.00%   28.24%    0.30%    0.50%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          6.95%    0.01%    0.63%    0.41%   17.41%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.13%    0.00%    0.67%   17.49%    0.30%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    3.50%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1     4    1  |1 1>-         4.78%    0.00%    0.00%    0.00%    6.22%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-        41.67%    0.03%    0.00%    0.00%    0.71%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.01%   11.61%    0.00%    0.00%    0.00%    5.20%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    5.07%    0.00%    0.00%   41.71%    3.56%
 32  1     8    1  |1 1>-         0.00%    0.01%    0.00%    0.13%    0.00%    0.00%    2.17%   31.04%
 33  1     9    1  |1 1>-         0.00%    0.20%    0.47%   17.38%    0.00%    0.53%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.01%    6.94%    0.75%    0.41%    0.00%   17.33%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.14%   28.31%    0.41%    0.00%    0.34%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   42.74%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   42.74%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.75%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>         15.66%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.01%   15.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   11.34%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.73%    0.09%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   58.06%    0.00%    0.67%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.11%   17.39%    0.00%    0.09%
  7  1     7    1  |1 1>+        13.91%    0.07%   39.33%    0.02%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.02%    2.31%    0.04%   50.95%    0.00%    0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    1.11%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.21%   40.44%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.85%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          2.58%   41.34%    0.55%    3.91%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.12%    0.00%    0.74%   44.09%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>         24.21%    2.85%   26.09%    0.17%    0.01%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.36%    3.24%    0.36%   13.54%
 20  1     8    1  |1 0>          0.01%    0.00%    0.01%    0.00%   33.30%    0.09%    4.06%    0.56%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.14%    0.28%    8.08%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.75%    0.69%    0.20%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.80%   31.04%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        52.43%    3.96%    0.81%    0.06%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         3.17%    0.00%   32.21%    0.69%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         3.55%   49.45%    0.23%    0.09%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    7.55%    0.14%    4.40%    0.17%
 32  1     8    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.62%    5.36%    0.01%   11.77%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.48%   30.16%    0.73%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.71%    0.64%    0.45%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   28.16%    1.24%   12.41%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    9.44%    0.00%    0.02%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.42%    0.05%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.05%    9.39%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.56%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.10%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    2.62%    0.00%    0.04%
  7  1     7    1  |1 1>+         4.20%    0.17%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.17%    4.20%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+        30.44%    0.86%    0.02%    1.60%    8.47%    0.01%    0.00%    0.38%
 10  1    10    1  |1 1>+         0.57%    0.92%    0.00%    0.04%    0.44%    0.20%    0.00%   13.23%
 11  1    11    1  |1 1>+         1.12%   30.36%    0.00%    8.74%    1.44%    0.00%    0.00%    0.26%
 12  1    12    1  |1 1>+         0.00%    0.00%   75.48%    0.00%    0.18%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    7.60%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.01%    9.86%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          4.37%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.02%    2.20%
 20  1     8    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.01%    0.65%    0.06%
 21  1     9    1  |1 0>          0.87%    0.00%    0.18%    0.08%    0.19%   11.43%    0.17%    2.05%
 22  1    10    1  |1 0>         30.68%    0.04%    0.15%    2.60%    7.41%    0.25%    0.27%    0.05%
 23  1    11    1  |1 0>          0.54%    0.00%   10.04%    0.06%    0.05%    0.27%   10.14%    0.04%
 24  1    12    1  |1 0>          0.00%    0.00%    0.06%   55.74%   19.86%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         1.80%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-        15.66%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.01%    4.36%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.65%    0.04%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.94%    0.02%    1.65%
 33  1     9    1  |1 1>-         0.01%    0.93%    9.81%    0.22%    0.18%    0.14%   10.10%    0.09%
 34  1    10    1  |1 1>-         0.04%   30.57%    0.31%    7.29%    2.53%    0.23%    0.22%    0.13%
 35  1    11    1  |1 1>-         0.00%    0.59%    0.25%    0.14%    0.04%    8.60%    0.24%    4.91%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.12%   19.92%   55.62%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.02%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    3.49%    0.00%    0.01%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.01%    0.92%    2.57%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    2.57%    0.92%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   74.85%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   74.85%    0.00%
 48  1    12    1  |0 0>          9.45%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.01%    9.45%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   74.85%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.65%    0.02%    0.00%
  8  1     8    1  |1 1>+         0.02%    0.65%    0.00%
  9  1     9    1  |1 1>+        10.10%    0.17%    0.10%
 10  1    10    1  |1 1>+         0.22%    0.27%    3.61%
 11  1    11    1  |1 1>+         0.24%   10.13%    0.07%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%
 15  1     3    1  |1 0>          0.01%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    1.16%    0.00%
 17  1     5    1  |1 0>          0.00%    1.50%    0.00%
 18  1     6    1  |1 0>          0.67%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.29%    0.00%    3.62%
 22  1    10    1  |1 0>         10.08%    0.00%    0.08%
 23  1    11    1  |1 0>          0.20%    0.00%    0.09%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.01%    0.00%
 28  1     4    1  |1 1>-         0.27%    0.00%    0.00%
 29  1     5    1  |1 1>-         2.39%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.67%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.29%    0.06%
 34  1    10    1  |1 1>-         0.00%   10.08%    0.10%
 35  1    11    1  |1 1>-         0.00%    0.20%    3.63%
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
 48  1    12    1  |0 0>         74.85%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   74.85%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   88.61%


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

              2       7     1970.17       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    154807.59 147814.12   3452.50   3537.22      2.46      0.08      0.82
 REAL TIME  *    156411.08 SEC
 DISK USED  *         1.96 GB (local),       31.47 GB (total)
 SF USED    *        10.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -213.859229652748

              CI              CI           MULTI         RHF-SCF
   -213.80558153   -213.82112186   -213.15241173   -213.37364695
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
