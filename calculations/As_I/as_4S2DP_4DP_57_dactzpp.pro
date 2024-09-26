
 Working directory              : /wrk/irikura/molpro.EhRI6wksUq/
 Global scratch directory       : /wrk/irikura/molpro.EhRI6wksUq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EhRI6wksUq/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,As SO-CI
                                                                                 ! extra spdf diffuse functions; 5p Rydberg states
 memory,1500,M;
 
 gprint,orbitals,civector;
 gprint,basis
 
 symmetry,xyz
 geometry={As};
 
 basis={
 ecp,as,ECP10MDF;
 spdfg,as,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=9
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
 if NQ.LT.2 then
   hlsdiag(1) = energd
 else
   hlsdiag = energd4
 endif
 
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
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
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Aug-24          TIME: 09:33:57  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW



 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry As   ECP ECP10MDF                 selected for group  1
 Library entry AS     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered As S diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry AS     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered As P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry AS     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered As D diffuse               selected for group 1    nprim= 1    centre=  0.022    ratio= 3.000    dratio= 1.000
 Library entry AS     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered As F diffuse               selected for group 1    nprim= 1    centre=  0.051    ratio= 3.000    dratio= 1.000
 Library entry AS     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  AS     23.00    0.000000000    0.000000000    0.000000000


          AS  CORE POTENTIAL

          g POTENTIAL

 POWERS             2
 EXPONENTIALS   1.000000    
 COEFFICIENTS   0.000000    

          s - g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   28.72512       6.767681    
 COEFFICIENTS   370.1140       9.349296    

          p - g POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   45.33106       44.76741       19.53909       18.97347    
 COEFFICIENTS   99.14210       198.3079       28.38307       56.87146    

          d - g POTENTIAL

 POWERS             2              2              2              2              2              2
 EXPONENTIALS   51.05715       50.15134       16.10894       14.67222       3.851927       3.813502    
 COEFFICIENTS  -18.48514      -28.11353      -1.223895      -1.345765      0.1017570      0.1703380    

          f - g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   11.94058       17.76116    
 COEFFICIENTS -0.7752300      -2.157259    


          AS  SPIN-ORBIT POTENTIAL

          p POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   45.33106       44.76741       19.53909       18.97347    
 COEFFICIENTS  -198.2842       198.3079      -56.76615       56.87146    

          d POTENTIAL

 POWERS             2              2              2              2              2              2
 EXPONENTIALS   51.05715       50.15134       16.10894       14.67222       3.851927       3.813502    
 COEFFICIENTS   18.48514      -18.74235       1.223895     -0.8971770     -0.1017570      0.1135580    

          f POTENTIAL

 POWERS             2              2
 EXPONENTIALS   11.94058       17.76116    
 COEFFICIENTS  0.5168200      -1.078629    


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        9230.120000     0.000245   -0.000087    0.000000    0.000000    0.000000
    2.1 Ag                 1390.340000     0.001717   -0.000580    0.000000    0.000000    0.000000
    3.1 Ag                  310.185000     0.005989   -0.002216    0.000000    0.000000    0.000000
    4.1 Ag                   38.624200     0.090466   -0.028583    0.000000    0.000000    0.000000
    5.1 Ag                   16.288300    -0.411195    0.137907    0.000000    0.000000    0.000000
                              3.209010     0.704410   -0.309572    0.000000    0.000000    0.000000
                              1.447920     0.473557   -0.356448    0.000000    0.000000    0.000000
                              0.419217     0.028389    0.338345    1.000000    0.000000    0.000000
                              0.201024    -0.008256    0.633088    0.000000    1.000000    0.000000
                              0.086236     0.001913    0.251613    0.000000    0.000000    1.000000
    6.1 Ag    1  1s           5.985900     1.000000
    7.1 Ag    1  1s           1.173200     1.000000
    8.1 Ag    1  1s           0.033000     1.000000
    9.1 Ag    1  1s           0.011000     1.000000
   10.1 Ag    1  3d0        265.444000     0.001781
                             81.373400     0.018513
                             33.395600     0.076098
                             14.410700     0.193710
                              6.470320     0.324512
                              2.885820     0.368100
                              1.249190     0.260344
                              0.490426     0.076212
   11.1 Ag    1  3d2-       265.444000     0.001781
                             81.373400     0.018513
                             33.395600     0.076098
                             14.410700     0.193710
                              6.470320     0.324512
                              2.885820     0.368100
                              1.249190     0.260344
                              0.490426     0.076212
   12.1 Ag    1  3d1+       265.444000     0.001781
                             81.373400     0.018513
                             33.395600     0.076098
                             14.410700     0.193710
                              6.470320     0.324512
                              2.885820     0.368100
                              1.249190     0.260344
                              0.490426     0.076212
   13.1 Ag    1  3d2+       265.444000     0.001781
                             81.373400     0.018513
                             33.395600     0.076098
                             14.410700     0.193710
                              6.470320     0.324512
                              2.885820     0.368100
                              1.249190     0.260344
                              0.490426     0.076212
   14.1 Ag    1  3d1-       265.444000     0.001781
                             81.373400     0.018513
                             33.395600     0.076098
                             14.410700     0.193710
                              6.470320     0.324512
                              2.885820     0.368100
                              1.249190     0.260344
                              0.490426     0.076212
   15.1 Ag    1  3d0        265.444000     0.000000
                             81.373400     0.000000
                             33.395600     0.000000
                             14.410700     0.000000
                              6.470320     0.000000
                              2.885820     0.000000
                              1.249190     0.000000
                              0.490426     1.000000
   16.1 Ag    1  3d2-       265.444000     0.000000
                             81.373400     0.000000
                             33.395600     0.000000
                             14.410700     0.000000
                              6.470320     0.000000
                              2.885820     0.000000
                              1.249190     0.000000
                              0.490426     1.000000
   17.1 Ag    1  3d1+       265.444000     0.000000
                             81.373400     0.000000
                             33.395600     0.000000
                             14.410700     0.000000
                              6.470320     0.000000
                              2.885820     0.000000
                              1.249190     0.000000
                              0.490426     1.000000
   18.1 Ag    1  3d2+       265.444000     0.000000
                             81.373400     0.000000
                             33.395600     0.000000
                             14.410700     0.000000
                              6.470320     0.000000
                              2.885820     0.000000
                              1.249190     0.000000
                              0.490426     1.000000
   19.1 Ag    1  3d1-       265.444000     0.000000
                             81.373400     0.000000
                             33.395600     0.000000
                             14.410700     0.000000
                              6.470320     0.000000
                              2.885820     0.000000
                              1.249190     0.000000
                              0.490426     1.000000
   20.1 Ag    1  3d0          0.179800     1.000000
   21.1 Ag    1  3d2-         0.179800     1.000000
   22.1 Ag    1  3d1+         0.179800     1.000000
   23.1 Ag    1  3d2+         0.179800     1.000000
   24.1 Ag    1  3d1-         0.179800     1.000000
   25.1 Ag    1  3d0          3.143000     1.000000
   26.1 Ag    1  3d2-         3.143000     1.000000
   27.1 Ag    1  3d1+         3.143000     1.000000
   28.1 Ag    1  3d2+         3.143000     1.000000
   29.1 Ag    1  3d1-         3.143000     1.000000
   30.1 Ag    1  3d0          1.337300     1.000000
   31.1 Ag    1  3d2-         1.337300     1.000000
   32.1 Ag    1  3d1+         1.337300     1.000000
   33.1 Ag    1  3d2+         1.337300     1.000000
   34.1 Ag    1  3d1-         1.337300     1.000000
   35.1 Ag    1  3d0          0.064900     1.000000
   36.1 Ag    1  3d2-         0.064900     1.000000
   37.1 Ag    1  3d1+         0.064900     1.000000
   38.1 Ag    1  3d2+         0.064900     1.000000
   39.1 Ag    1  3d1-         0.064900     1.000000
   40.1 Ag    1  3d0          0.021633     1.000000
   41.1 Ag    1  3d2-         0.021633     1.000000
   42.1 Ag    1  3d1+         0.021633     1.000000
   43.1 Ag    1  3d2+         0.021633     1.000000
   44.1 Ag    1  3d1-         0.021633     1.000000
   45.1 Ag    1  5g0          1.915300     1.000000
   46.1 Ag    1  5g2-         1.915300     1.000000
   47.1 Ag    1  5g1+         1.915300     1.000000
   48.1 Ag    1  5g4+         1.915300     1.000000
   49.1 Ag    1  5g1-         1.915300     1.000000
   50.1 Ag    1  5g2+         1.915300     1.000000
   51.1 Ag    1  5g4-         1.915300     1.000000
   52.1 Ag    1  5g3+         1.915300     1.000000
   53.1 Ag    1  5g3-         1.915300     1.000000
    1.2 Au    1  2px        512.552000     0.000270
                             89.811500     0.003976
                             23.947100    -0.087231
                              6.135450     0.351229
                              2.890980     0.503753
                              1.327670     0.252422
                              0.481044     0.021696
                              0.190208    -0.002047
                              0.072008     0.000582
    2.2 Au    1  2py        512.552000     0.000270
                             89.811500     0.003976
                             23.947100    -0.087231
                              6.135450     0.351229
                              2.890980     0.503753
                              1.327670     0.252422
                              0.481044     0.021696
                              0.190208    -0.002047
                              0.072008     0.000582
    3.2 Au    1  2pz        512.552000     0.000270
                             89.811500     0.003976
                             23.947100    -0.087231
                              6.135450     0.351229
                              2.890980     0.503753
                              1.327670     0.252422
                              0.481044     0.021696
                              0.190208    -0.002047
                              0.072008     0.000582
    4.2 Au    1  2px        512.552000    -0.000078
                             89.811500    -0.000824
                             23.947100     0.020832
                              6.135450    -0.096229
                              2.890980    -0.146876
                              1.327670    -0.070903
                              0.481044     0.298570
                              0.190208     0.568943
                              0.072008     0.289924
    5.2 Au    1  2py        512.552000    -0.000078
                             89.811500    -0.000824
                             23.947100     0.020832
                              6.135450    -0.096229
                              2.890980    -0.146876
                              1.327670    -0.070903
                              0.481044     0.298570
                              0.190208     0.568943
                              0.072008     0.289924
    6.2 Au    1  2pz        512.552000    -0.000078
                             89.811500    -0.000824
                             23.947100     0.020832
                              6.135450    -0.096229
                              2.890980    -0.146876
                              1.327670    -0.070903
                              0.481044     0.298570
                              0.190208     0.568943
                              0.072008     0.289924
    7.2 Au    1  2px          0.529700     1.000000
    8.2 Au    1  2py          0.529700     1.000000
    9.2 Au    1  2pz          0.529700     1.000000
   10.2 Au    1  2px          0.085500     1.000000
   11.2 Au    1  2py          0.085500     1.000000
   12.2 Au    1  2pz          0.085500     1.000000
   13.2 Au    1  2px          8.037700     1.000000
   14.2 Au    1  2py          8.037700     1.000000
   15.2 Au    1  2pz          8.037700     1.000000
   16.2 Au    1  2px          1.510800     1.000000
   17.2 Au    1  2py          1.510800     1.000000
   18.2 Au    1  2pz          1.510800     1.000000
   19.2 Au    1  2px          0.028200     1.000000
   20.2 Au    1  2py          0.028200     1.000000
   21.2 Au    1  2pz          0.028200     1.000000
   22.2 Au    1  2px          0.009400     1.000000
   23.2 Au    1  2py          0.009400     1.000000
   24.2 Au    1  2pz          0.009400     1.000000
   25.2 Au    1  4f1+         0.423700     1.000000
   26.2 Au    1  4f1-         0.423700     1.000000
   27.2 Au    1  4f0          0.423700     1.000000
   28.2 Au    1  4f3+         0.423700     1.000000
   29.2 Au    1  4f2-         0.423700     1.000000
   30.2 Au    1  4f3-         0.423700     1.000000
   31.2 Au    1  4f2+         0.423700     1.000000
   32.2 Au    1  4f1+         6.605100     1.000000
   33.2 Au    1  4f1-         6.605100     1.000000
   34.2 Au    1  4f0          6.605100     1.000000
   35.2 Au    1  4f3+         6.605100     1.000000
   36.2 Au    1  4f2-         6.605100     1.000000
   37.2 Au    1  4f3-         6.605100     1.000000
   38.2 Au    1  4f2+         6.605100     1.000000
   39.2 Au    1  4f1+         1.663500     1.000000
   40.2 Au    1  4f1-         1.663500     1.000000
   41.2 Au    1  4f0          1.663500     1.000000
   42.2 Au    1  4f3+         1.663500     1.000000
   43.2 Au    1  4f2-         1.663500     1.000000
   44.2 Au    1  4f3-         1.663500     1.000000
   45.2 Au    1  4f2+         1.663500     1.000000
   46.2 Au    1  4f1+         0.154200     1.000000
   47.2 Au    1  4f1-         0.154200     1.000000
   48.2 Au    1  4f0          0.154200     1.000000
   49.2 Au    1  4f3+         0.154200     1.000000
   50.2 Au    1  4f2-         0.154200     1.000000
   51.2 Au    1  4f3-         0.154200     1.000000
   52.2 Au    1  4f2+         0.154200     1.000000
   53.2 Au    1  4f1+         0.051400     1.000000
   54.2 Au    1  4f1-         0.051400     1.000000
   55.2 Au    1  4f0          0.051400     1.000000
   56.2 Au    1  4f3+         0.051400     1.000000
   57.2 Au    1  4f2-         0.051400     1.000000
   58.2 Au    1  4f3-         0.051400     1.000000
   59.2 Au    1  4f2+         0.051400     1.000000

 NUCLEAR CHARGE:                   23
 NUMBER OF PRIMITIVE AOS:         202
 NUMBER OF SYMMETRY AOS:          168
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

         1 0.285E-04 0.323E-02 0.172E-01 0.498E-01 0.509E-01 0.509E-01 0.509E-01 0.509E-01
         2 0.816E-02 0.816E-02 0.816E-02 0.212E-01 0.212E-01 0.212E-01 0.122E+00 0.122E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     28.049 MB (compressed) written to integral file ( 16.7%)

     Node minimum: 1.311 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     847287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     847287      RECORD LENGTH: 524288

 Memory used in sort:       1.40 MW

 SORT1 READ    21109381. AND WROTE      166541. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    144 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      845957.  Node maximum:      852384. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.13      0.90
 REAL TIME  *         1.94 SEC
 DISK USED  *        29.28 MB (local),      412.86 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=AS basis=cc-pVTZ-PP        lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -331.19363040    -331.19363040     0.00D+00     0.11D+00     0     0       0.00      0.01    start
   2     -331.20777829      -0.01414788     0.20D-02     0.71D-02     1     0       0.01      0.02    diag2
   3     -331.20867231      -0.00089402     0.15D-02     0.15D-02     2     0       0.01      0.03    diag2
   4     -331.20897740      -0.00030509     0.41D-03     0.11D-02     3     0       0.01      0.04    diag2
   5     -331.20902740      -0.00005000     0.13D-03     0.55D-03     4     0       0.01      0.05    diag2
   6     -331.20902816      -0.00000076     0.25D-04     0.72D-04     5     0       0.00      0.05    diag2
   7     -331.20902817      -0.00000001     0.22D-05     0.11D-04     6     0       0.01      0.06    diag2
   8     -331.20902817      -0.00000000     0.19D-06     0.74D-06     7     0       0.01      0.07    fixocc
   9     -331.20902817      -0.00000000     0.24D-07     0.95D-07     0     0       0.01      0.08    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -331.209028170326
  RHF One-electron energy            -587.013495832741
  RHF Two-electron energy             255.804467662415
  RHF Kinetic energy                  233.769128356728
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.416821076840

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.08662     1  1  s    0.99546
    2.1     2.00000    -2.07192     1  1  d1+  0.55035    1  1  d1-  0.78812
    3.1     2.00000    -2.07192     1  1  d1+  0.76277    1  1  d1- -0.60473
    4.1     2.00000    -2.07192     1  1  d2-  0.98177
    5.1     2.00000    -2.07192     1  1  d1+  0.30279    1  1  d2+  0.95199
    6.1     2.00000    -2.07192     1  1  d0   1.00005
    7.1     2.00000    -0.70305     1  2  s    0.97485
    1.2     2.00000    -6.00014     1  1  pz   0.99297
    2.2     2.00000    -6.00014     1  1  px   0.99981
    3.2     2.00000    -6.00014     1  1  py   0.99297
    4.2     1.00000    -0.36838     1  2  pz   1.00072
    5.2     1.00000    -0.36838     1  2  py   1.00072
    6.2     1.00000    -0.36838     1  2  px   1.00073


 HOMO      6.2    -0.368382 =     -10.0242eV
 LUMO      8.1     0.016767 =       0.4563eV
 LUMO-HOMO         0.385149 =      10.4804eV

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
 CPU TIMES  *         1.24      0.11      0.90
 REAL TIME  *         2.88 SEC
 DISK USED  *        30.39 MB (local),      426.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         9.00000000                                  
 SETTING ND             =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.544D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.537D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.279D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.250D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 3 5 2 1 1 2 4   6 3 5 1 6 4 2 3 5 1   4 6 2 5 3 1 6 4 3 5   2 1 6 4 5 3 2 7 814
                                       1512131011 9 4 6 3 5   2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.394D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.394D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.555D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.555D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 1 2 3 3   1 2 810 4 5 9 7 6 3   1 2 6 4 5 7 910 8 3   1 2 4 5 810 9 7 610
                                        8 5 4 7 9 6 3 1 2 6   4 5 810 7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    4906
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -331.03394448    -331.04756752   -0.01362303    0.07676233 0.00058816 0.00000000  0.11E+01      1.16
   2    7   12    0   -331.04724460    -331.04725985   -0.00001526    0.00465729 0.00000002 0.00000000  0.22E-01      2.25
   3    8   16    0   -331.04725987    -331.04725987   -0.00000000    0.00000764 0.00000001 0.00000000  0.39E-04      3.55

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.44E-08)
                       Final energy:   -331.04725987
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.207302256257
 Nuclear energy                                  0.00000000
 Kinetic energy                                234.07202206
 One electron energy                          -587.73218198
 Two electron energy                           256.52487973
 Virial ratio                                    2.41498031
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -330.945042447718
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668911
 One electron energy                          -581.18660720
 Two electron energy                           250.24156475
 Virial ratio                                    2.41831550
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -330.945042447678
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668911
 One electron energy                          -581.18660720
 Two electron energy                           250.24156475
 Virial ratio                                    2.41831550
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -330.945042446884
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668912
 One electron energy                          -581.18660729
 Two electron energy                           250.24156484
 Virial ratio                                    2.41831550
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -330.945042446462
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668912
 One electron energy                          -581.18660730
 Two electron energy                           250.24156486
 Virial ratio                                    2.41831550
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -330.945042446292
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668913
 One electron energy                          -581.18660733
 Two electron energy                           250.24156488
 Virial ratio                                    2.41831550
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -330.940275274928
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668728
 One electron energy                          -581.18540160
 Two electron energy                           250.24512633
 Virial ratio                                    2.41829508
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -330.940275273868
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668729
 One electron energy                          -581.18540169
 Two electron energy                           250.24512642
 Virial ratio                                    2.41829508
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -330.940275273362
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.33668729
 One electron energy                          -581.18540171
 Two electron energy                           250.24512643
 Virial ratio                                    2.41829508
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.140628314094
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.99631335
 One electron energy                          -587.35423220
 Two electron energy                           256.21360389
 Virial ratio                                    2.41515319
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.140628314060
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.99631335
 One electron energy                          -587.35423221
 Two electron energy                           256.21360390
 Virial ratio                                    2.41515319
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.140628314031
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.99631335
 One electron energy                          -587.35423220
 Two electron energy                           256.21360389
 Virial ratio                                    2.41515319
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.140628313906
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.99631336
 One electron energy                          -587.35423223
 Two electron energy                           256.21360392
 Virial ratio                                    2.41515319
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.140628313905
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.99631336
 One electron energy                          -587.35423223
 Two electron energy                           256.21360391
 Virial ratio                                    2.41515319
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.115645305300
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.96202430
 One electron energy                          -587.08640258
 Two electron energy                           255.97075727
 Virial ratio                                    2.41525381
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.115645305294
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.96202430
 One electron energy                          -587.08640256
 Two electron energy                           255.97075726
 Virial ratio                                    2.41525381
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.115645305024
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.96202431
 One electron energy                          -587.08640261
 Two electron energy                           255.97075730
 Virial ratio                                    2.41525381
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.468428401677
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000000003
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999999950
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.531569842671
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.999999999990
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000010
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.674944061960
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000020336
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999995748
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.325041773744
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999998622297
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000001452747
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.651911331656
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.999999999997
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000133
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     2.348091356325
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.000000000010
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.999999999990
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.292968956544
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999991410
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000009259
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000002
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.707042502897
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000001377703
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999998547253
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.879660266667
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     4.000000000000
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000000000
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999999917
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.120338801004
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.000000000000
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     1.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.032086981496
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999988254
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999994993
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999999998
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.967915723359
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>    -0.000000000000
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 3 5   6 2 4 1 3 5 6 4 2 1   3 5 4 2 6 1 4 3 5 2   6 1 4 5 3 2 6 91310
                                       1415 812 711 4 3 5 2   6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 3   2 1 5 9 7 810 6 4 3   2 1 4 9 7 810 6 5 1   3 2 4 7 9 810 6 5 4
                                        7 9 810 6 5 1 3 2 4   9 7 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.20417     1  1  s    0.99583
    2.1     2.00000    -2.18921     1  1  d1+  1.00040
    3.1     2.00000    -2.18921     1  1  d2-  1.00040
    4.1     2.00000    -2.18921     1  1  d2+  1.00040
    5.1     2.00000    -2.18921     1  1  d0   1.00040
    6.1     2.00000    -2.18921     1  1  d1-  1.00040
    7.1     1.97947    -0.79052     1  2  s    0.99285
    1.2     2.00000    -6.11724     1  1  px   0.99965
    2.2     2.00000    -6.11724     1  1  pz   0.99965
    3.2     2.00000    -6.11724     1  1  py   0.99965
    4.2     0.84701    -0.20939     1  2  py   1.01741
    5.2     0.84701    -0.20939     1  2  pz   1.01741
    6.2     0.84701    -0.20939     1  2  px   1.01741
    7.2     0.15983     0.04440     1  2  px  -0.48566    1  7  px   0.69103    1  8  px   0.45736
    8.2     0.15983     0.04440     1  2  pz  -0.48566    1  7  pz   0.69104    1  8  pz   0.45736
    9.2     0.15983     0.04440     1  2  py  -0.48566    1  7  py   0.69103    1  8  py   0.45736
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aaa000       0.99914025      0.00000003     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a0a0a0       0.00621259      0.14026015     -0.00000155      0.00000010      0.00000764      0.79639170     -0.00000000
 2 aa0a00      -0.00621261      0.75982568     -0.00000844      0.00000009      0.00000242      0.27672710      0.00000000
 2 a0aa00      -0.00000000      0.00000006      0.00000000     -0.70031051     -0.00000071      0.00000007     -0.00000000
 2 a0a00a      -0.00000000      0.00000024      0.00000000     -0.00000071      0.70031048     -0.00000676      0.00000000
 2 0aaa00       0.00000000      0.00000778      0.70031039      0.00000000     -0.00000000     -0.00000001     -0.70020811
 2 aa000a       0.00000000      0.00000778      0.70031035      0.00000000     -0.00000000     -0.00000001      0.70020815
 2 0aa0a0       0.00000000     -0.00000024     -0.00000000      0.00000071     -0.70031025      0.00000676     -0.00000000
 2 aa00a0      -0.00000000     -0.00000006     -0.00000000      0.70031023      0.00000071     -0.00000007      0.00000000
 2 0aa00a      -0.00621258     -0.61956537      0.00000689      0.00000000      0.00000523      0.51966488     -0.00000000
 0 a2a0a0       0.01899761     -0.01457499      0.00000016     -0.00000001     -0.00000079     -0.08275621      0.00000000
 0 aa2a00      -0.01899760     -0.07895649      0.00000088     -0.00000001     -0.00000025     -0.02875581     -0.00000000
 0 aa20a0       0.00000000      0.00000001      0.00000000     -0.07277201     -0.00000007      0.00000001     -0.00000000
 0 2aa0a0      -0.00000000      0.00000002      0.00000000     -0.00000007      0.07277201     -0.00000070      0.00000000
 0 aa200a      -0.00000000     -0.00000081     -0.07277202     -0.00000000      0.00000000      0.00000000     -0.07370307
 0 2aaa00      -0.00000000     -0.00000081     -0.07277202     -0.00000000      0.00000000      0.00000000      0.07370306
 0 a2a00a       0.00000000     -0.00000002     -0.00000000      0.00000007     -0.07277203      0.00000070     -0.00000000
 0 a2aa00       0.00000000     -0.00000001     -0.00000000      0.07277204      0.00000007     -0.00000001      0.00000000
 2 0a0a0a      -0.01217325     -0.01223497      0.00000014     -0.00000001     -0.00000067     -0.06946975      0.00000000
 2 00a0aa       0.01217325     -0.06628003      0.00000074     -0.00000001     -0.00000021     -0.02413903     -0.00000000
 0 2aa00a      -0.01899760      0.06438149     -0.00000072     -0.00000000     -0.00000054     -0.05400043      0.00000000
 2 a00a0a       0.00000000     -0.00000002     -0.00000000      0.00000006     -0.06108851      0.00000059     -0.00000000
 2 00aaa0      -0.00000000     -0.00000068     -0.06108850     -0.00000000      0.00000000      0.00000000      0.06108218
 2 a000aa      -0.00000000     -0.00000068     -0.06108849     -0.00000000      0.00000000      0.00000000     -0.06108218
 2 00aa0a       0.00000000     -0.00000001     -0.00000000      0.06108849      0.00000006     -0.00000001      0.00000000
 2 0a0aa0      -0.00000000      0.00000002      0.00000000     -0.00000006      0.06108849     -0.00000059      0.00000000
 2 0a00aa      -0.00000000      0.00000001      0.00000000     -0.06108847     -0.00000006      0.00000001     -0.00000000
 2 a00aa0       0.01217325      0.05404507     -0.00000060     -0.00000000     -0.00000046     -0.04533066      0.00000000
 
 Energy:     -331.20730226   -330.94504245   -330.94504245   -330.94504245   -330.94504245   -330.94504245   -330.94027527

 State:              8               9
 2 aaa000       0.00000000     -0.00000000
 2 a0a0a0       0.00000000      0.00000000
 2 aa0a00       0.00000000     -0.00000000
 2 a0aa00       0.70020800     -0.00000224
 2 a0a00a       0.00000224      0.70020801
 2 0aaa00      -0.00000000     -0.00000000
 2 aa000a      -0.00000000     -0.00000000
 2 0aa0a0       0.00000224      0.70020825
 2 aa00a0       0.70020827     -0.00000224
 2 0aa00a       0.00000000     -0.00000000
 0 a2a0a0      -0.00000000     -0.00000000
 0 aa2a00      -0.00000000      0.00000000
 0 aa20a0      -0.07370308      0.00000024
 0 2aa0a0      -0.00000024     -0.07370308
 0 aa200a       0.00000000      0.00000000
 0 2aaa00       0.00000000      0.00000000
 0 a2a00a      -0.00000024     -0.07370305
 0 a2aa00      -0.07370305      0.00000024
 2 0a0a0a      -0.00000000      0.00000000
 2 00a0aa      -0.00000000     -0.00000000
 0 2aa00a      -0.00000000      0.00000000
 2 a00a0a      -0.00000020     -0.06108218
 2 00aaa0       0.00000000      0.00000000
 2 a000aa       0.00000000      0.00000000
 2 00aa0a      -0.06108215      0.00000020
 2 0a0aa0      -0.00000020     -0.06108220
 2 0a00aa      -0.06108217      0.00000020
 2 a00aa0      -0.00000000     -0.00000000
 
 Energy:     -330.94027527   -330.94027527
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000       0.81049711      0.00013526     -0.00004567     -0.00000000     -0.07288441      0.00000000     -0.00000000
 2 baa000      -0.34212880     -0.00005651      0.00003038      0.00000001      0.73835330      0.00000000      0.00000000
 2 0a2000      -0.00000000      0.00000003      0.00000028     -0.70474343      0.00000001     -0.00000011      0.00000018
 2 02a000      -0.00003872      0.00000629     -0.70474343     -0.00000028      0.00001106     -0.00081545      0.69473899
 2 a02000       0.00011766     -0.70474341     -0.00000630     -0.00000003      0.00000059      0.69473900      0.00081545
 2 2a0000       0.00000000     -0.00000003     -0.00000028      0.70474341     -0.00000001     -0.00000011      0.00000018
 2 20a000       0.00003872     -0.00000629      0.70474341      0.00000028     -0.00001106     -0.00081545      0.69473901
 2 a20000      -0.00011766      0.70474341      0.00000630      0.00000003     -0.00000059      0.69473900      0.00081545
 2 aab000      -0.46836830     -0.00007875      0.00001529     -0.00000001     -0.66546889     -0.00000000     -0.00000000
 0 2a2000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000002     -0.00000004
 0 22a000       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00017740     -0.15113774
 0 a22000      -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.15113774     -0.00017740
 2 aa000b      -0.00000000      0.00000000      0.00000001     -0.03548772      0.00000000      0.00000001     -0.00000001
 2 0aab00      -0.00000000      0.00000000      0.00000001     -0.03548770      0.00000000     -0.00000001      0.00000001
 2 a0a00b      -0.00000195      0.00000032     -0.03548772     -0.00000001      0.00000056      0.00006371     -0.05428063
 2 aa00b0      -0.00000592      0.03548771      0.00000032      0.00000000     -0.00000003      0.05428062      0.00006371
 2 0aa0b0       0.00000195     -0.00000032      0.03548771      0.00000001     -0.00000056      0.00006371     -0.05428062
 2 a0ab00       0.00000592     -0.03548769     -0.00000032     -0.00000000      0.00000003      0.05428060      0.00006371
 
 Energy:     -331.14062831   -331.14062831   -331.14062831   -331.14062831   -331.14062831   -331.11564531   -331.11564531

 State:              8
 2 aba000      -0.00000000
 2 baa000      -0.00000000
 2 0a2000       0.69473947
 2 02a000      -0.00000018
 2 a02000       0.00000011
 2 2a0000       0.69473948
 2 20a000      -0.00000018
 2 a20000       0.00000011
 2 aab000       0.00000000
 0 2a2000      -0.15113784
 0 22a000       0.00000004
 0 a22000      -0.00000002
 2 aa000b      -0.05428067
 2 0aab00       0.05428064
 2 a0a00b       0.00000001
 2 aa00b0       0.00000001
 2 0aa0b0       0.00000001
 2 a0ab00       0.00000001
 
 Energy:     -331.11564531
 


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
 CPU TIMES  *         4.87      3.62      0.11      0.90
 REAL TIME  *         6.87 SEC
 DISK USED  *        40.04 MB (local),      541.98 MB (total)
 SF USED    *        26.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2073023  -0.0
    -330.9450424   6.0
    -330.9450424   6.0
    -330.9450424   6.0
    -330.9450424   6.0
    -330.9450424   6.0
    -330.9402753   2.0
    -330.9402753   2.0
    -330.9402753   2.0
    -331.1406283   6.0
    -331.1406283   6.0
    -331.1406283   6.0
    -331.1406283   6.0
    -331.1406283   6.0
    -331.1156453   2.0
    -331.1156453   2.0
    -331.1156453   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.20730226
     2      -330.94504245
     3      -330.94504245
     4      -330.94504245
     5      -330.94504245
     6      -330.94504245
     7      -330.94027527
     8      -330.94027527
     9      -330.94027527

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1599D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1283D-06

 Number of blocks in overlap matrix:   841   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1994
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4865858
 Number of doubly external configurations:       4594664
 Total number of contracted configurations:      9494202
 Total number of uncontracted configurations:  146185146

 Diagonal Coupling coefficients finished.               Storage:  20919943 words, CPU-Time:     47.48 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1669058 words, CPU-time:      0.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.20730226    -0.00000000    -0.90970407  0.44D-01  0.59D-01    58.87
    1     2     2     1.00000000     0.00000000  -330.94504245     0.00000000    -0.88324189  0.38D-01  0.55D-01    58.87
    1     3     3     1.00000000     0.00000000  -330.94504245     0.00000000    -0.88366818  0.38D-01  0.56D-01    58.87
    1     4     4     1.00000000     0.00000000  -330.94504245    -0.00000000    -0.88378613  0.38D-01  0.56D-01    58.87
    1     5     5     1.00000000     0.00000000  -330.94504245     0.00000000    -0.88355813  0.38D-01  0.56D-01    58.87
    1     6     6     1.00000000     0.00000000  -330.94504245     0.00000000    -0.88325418  0.37D-01  0.55D-01    58.87
    1     7     7     1.00000000     0.00000000  -330.94027527     0.00000000    -0.88441948  0.39D-01  0.56D-01    58.87
    1     8     8     1.00000000     0.00000000  -330.94027527     0.00000000    -0.88449004  0.39D-01  0.56D-01    58.87
    1     9     9     1.00000000     0.00000000  -330.94027527    -0.00000000    -0.88430785  0.39D-01  0.56D-01    58.87
    2     1     1     1.07021473    -0.74881083  -331.95611309    -0.74881083    -0.01905493  0.32D-02  0.88D-03   417.32
    2     2     2     1.06431758    -0.73633910  -331.68138155    -0.73633910    -0.01693304  0.22D-02  0.79D-03   417.32
    2     3     3     1.06461969    -0.73626835  -331.68131080    -0.73626835    -0.01698375  0.22D-02  0.78D-03   417.32
    2     4     4     1.06467426    -0.73623120  -331.68127364    -0.73623120    -0.01701928  0.22D-02  0.79D-03   417.32
    2     5     5     1.06478758    -0.73617331  -331.68121575    -0.73617331    -0.01707999  0.23D-02  0.79D-03   417.32
    2     6     6     1.06455366    -0.73615719  -331.68119963    -0.73615719    -0.01710832  0.23D-02  0.79D-03   417.32
    2     7     7     1.06529533    -0.73632156  -331.67659684    -0.73632156    -0.01723455  0.24D-02  0.79D-03   417.32
    2     8     8     1.06535526    -0.73628057  -331.67655584    -0.73628057    -0.01727612  0.24D-02  0.79D-03   417.32
    2     9     9     1.06540914    -0.73625107  -331.67652634    -0.73625107    -0.01730465  0.25D-02  0.79D-03   417.32
    3     1     1     1.06073696    -0.76745804  -331.97476029    -0.01864720    -0.00061722  0.76D-04  0.57D-04   775.98
    3     2     2     1.05843578    -0.75217597  -331.69721842    -0.01583687    -0.00053516  0.67D-04  0.39D-04   775.98
    3     3     3     1.05841322    -0.75217201  -331.69721445    -0.01590366    -0.00053839  0.67D-04  0.40D-04   775.98
    3     4     4     1.05847047    -0.75217012  -331.69721256    -0.01593892    -0.00053947  0.67D-04  0.40D-04   775.98
    3     5     5     1.05846586    -0.75216887  -331.69721131    -0.01599556    -0.00054007  0.67D-04  0.41D-04   775.98
    3     6     6     1.05846850    -0.75216808  -331.69721052    -0.01601089    -0.00054104  0.67D-04  0.41D-04   775.98
    3     7     7     1.05866299    -0.75251134  -331.69278661    -0.01618978    -0.00055712  0.72D-04  0.43D-04   775.98
    3     8     8     1.05865706    -0.75250996  -331.69278524    -0.01622940    -0.00055760  0.72D-04  0.43D-04   775.98
    3     9     9     1.05865907    -0.75250971  -331.69278499    -0.01625864    -0.00055818  0.72D-04  0.43D-04   775.98
    4     1     1     1.06032146    -0.76810733  -331.97540958    -0.00064929    -0.00004520  0.37D-05  0.63D-05  1135.90
    4     2     2     1.05801354    -0.75271258  -331.69775503    -0.00053660    -0.00003624  0.32D-05  0.51D-05  1135.90
    4     3     3     1.05800954    -0.75271207  -331.69775451    -0.00054006    -0.00003685  0.32D-05  0.52D-05  1135.90
    4     4     4     1.05800374    -0.75271197  -331.69775441    -0.00054185    -0.00003661  0.32D-05  0.52D-05  1135.90
    4     5     5     1.05800608    -0.75271176  -331.69775421    -0.00054289    -0.00003706  0.33D-05  0.53D-05  1135.90
    4     6     6     1.05800633    -0.75271165  -331.69775409    -0.00054357    -0.00003706  0.33D-05  0.53D-05  1135.90
    4     7     7     1.05819241    -0.75307259  -331.69334786    -0.00056125    -0.00003959  0.34D-05  0.58D-05  1135.90
    4     8     8     1.05818903    -0.75307223  -331.69334750    -0.00056227    -0.00003983  0.34D-05  0.58D-05  1135.90
    4     9     9     1.05818899    -0.75307205  -331.69334732    -0.00056233    -0.00003987  0.34D-05  0.58D-05  1135.90
    5     1     1     1.06079430    -0.76815929  -331.97546155    -0.00005196    -0.00000538  0.32D-06  0.75D-06  1494.98
    5     2     2     1.05823264    -0.75275685  -331.69779930    -0.00004427    -0.00000485  0.19D-06  0.83D-06  1494.98
    5     3     3     1.05823303    -0.75275679  -331.69779923    -0.00004472    -0.00000489  0.20D-06  0.84D-06  1494.98
    5     4     4     1.05823266    -0.75275674  -331.69779919    -0.00004478    -0.00000491  0.19D-06  0.84D-06  1494.98
    5     5     5     1.05823485    -0.75275673  -331.69779917    -0.00004497    -0.00000483  0.19D-06  0.82D-06  1494.98
    5     6     6     1.05823647    -0.75275659  -331.69779903    -0.00004494    -0.00000491  0.20D-06  0.84D-06  1494.98
    5     7     7     1.05845028    -0.75312114  -331.69339642    -0.00004855    -0.00000528  0.21D-06  0.88D-06  1494.98
    5     8     8     1.05845053    -0.75312108  -331.69339635    -0.00004885    -0.00000532  0.21D-06  0.89D-06  1494.98
    5     9     9     1.05845034    -0.75312102  -331.69339629    -0.00004897    -0.00000536  0.21D-06  0.89D-06  1494.98
    6     1     1     1.06086883    -0.76816593  -331.97546818    -0.00000664    -0.00000056  0.34D-07  0.69D-07  1852.69
    6     2     2     1.05830041    -0.75276360  -331.69780605    -0.00000676    -0.00000068  0.38D-07  0.91D-07  1852.69
    6     3     3     1.05830014    -0.75276360  -331.69780605    -0.00000681    -0.00000069  0.39D-07  0.91D-07  1852.69
    6     4     4     1.05830033    -0.75276359  -331.69780604    -0.00000685    -0.00000069  0.39D-07  0.92D-07  1852.69
    6     5     5     1.05830080    -0.75276348  -331.69780593    -0.00000676    -0.00000068  0.38D-07  0.89D-07  1852.69
    6     6     6     1.05830087    -0.75276347  -331.69780591    -0.00000688    -0.00000069  0.39D-07  0.90D-07  1852.69
    6     7     7     1.05852362    -0.75312840  -331.69340368    -0.00000726    -0.00000071  0.40D-07  0.94D-07  1852.69
    6     8     8     1.05852330    -0.75312840  -331.69340367    -0.00000732    -0.00000071  0.40D-07  0.94D-07  1852.69
    6     9     9     1.05852343    -0.75312839  -331.69340366    -0.00000737    -0.00000072  0.41D-07  0.95D-07  1852.69
    7     1     1     1.06085729    -0.76816656  -331.97546882    -0.00000064    -0.00000006  0.39D-08  0.82D-08  2210.84
    7     2     2     1.05829605    -0.75276441  -331.69780685    -0.00000080    -0.00000010  0.81D-08  0.13D-07  2210.84
    7     3     3     1.05829605    -0.75276440  -331.69780685    -0.00000081    -0.00000010  0.81D-08  0.13D-07  2210.84
    7     4     4     1.05829606    -0.75276440  -331.69780685    -0.00000081    -0.00000010  0.81D-08  0.13D-07  2210.84
    7     5     5     1.05829596    -0.75276427  -331.69780672    -0.00000079    -0.00000010  0.79D-08  0.13D-07  2210.84
    7     6     6     1.05829595    -0.75276427  -331.69780672    -0.00000080    -0.00000010  0.79D-08  0.13D-07  2210.84
    7     7     7     1.05851893    -0.75312923  -331.69340450    -0.00000082    -0.00000010  0.84D-08  0.14D-07  2210.84
    7     8     8     1.05851893    -0.75312922  -331.69340450    -0.00000083    -0.00000010  0.84D-08  0.14D-07  2210.84
    7     9     9     1.05851890    -0.75312922  -331.69340450    -0.00000083    -0.00000010  0.84D-08  0.14D-07  2210.84
    8     1     1     1.06086230    -0.76816663  -331.97546889    -0.00000007    -0.00000001  0.90D-09  0.11D-08  2569.79
    8     2     2     1.05829995    -0.75276451  -331.69780696    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2569.79
    8     3     3     1.05829996    -0.75276451  -331.69780696    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2569.79
    8     4     4     1.05829997    -0.75276451  -331.69780696    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2569.79
    8     5     5     1.05829986    -0.75276438  -331.69780683    -0.00000011    -0.00000002  0.13D-08  0.25D-08  2569.79
    8     6     6     1.05829989    -0.75276438  -331.69780682    -0.00000011    -0.00000002  0.13D-08  0.26D-08  2569.79
    8     7     7     1.05852353    -0.75312934  -331.69340461    -0.00000011    -0.00000002  0.13D-08  0.27D-08  2569.79
    8     8     8     1.05852355    -0.75312934  -331.69340461    -0.00000011    -0.00000002  0.13D-08  0.27D-08  2569.79
    8     9     9     1.05852355    -0.75312934  -331.69340461    -0.00000011    -0.00000002  0.13D-08  0.27D-08  2569.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.8%  13.7%
 P   0.3%  50.3%  26.3%

 Initialization:   1.9%
 Other:            5.4%

 Total CPU:     2569.8 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9700429  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0000000
 22222222220//00/          -0.0115214   0.0049057   0.0074628  -0.0097388   0.7863022  -0.0049008  -0.0000011   0.0000002
                           -0.0000002
 2222222222//0/00          -0.0115214   0.0003563  -0.0198107   0.0036482  -0.3887875   0.6833067   0.0000008  -0.0000003
                            0.0000002
 2222222222/0/0/0           0.0115214   0.0052620  -0.0123479  -0.0060905   0.3975146   0.6784059  -0.0000003  -0.0000000
                            0.0000000
 2222222222/0/00/          -0.0000000   0.0818858   0.6757888  -0.0127804  -0.0069860   0.0156436  -0.4361698  -0.4128057
                            0.3208518
 22222222220//0/0          -0.0000000  -0.0818854  -0.6757881   0.0127808   0.0069852  -0.0156437  -0.4361707  -0.4128054
                            0.3208529
 2222222222/0//00          -0.0000000   0.3244597  -0.0279218   0.5981352   0.0056427  -0.0009614  -0.1159850   0.4838292
                            0.4648181
 2222222222//00/0          -0.0000000  -0.3244601   0.0279229  -0.5981349  -0.0056431   0.0009616  -0.1159856   0.4838290
                            0.4648182
 2222222222//000/           0.0000000   0.5931670  -0.0779881  -0.3253470  -0.0070211  -0.0048274  -0.5098057   0.2431053
                           -0.3802588
 22222222220///00           0.0000000   0.5931665  -0.0779881  -0.3253470  -0.0070193  -0.0048279   0.5098061  -0.2431050
                            0.3802594
 22222202222//00/          -0.0160979  -0.0004728  -0.0007193   0.0009387  -0.0757901   0.0004724   0.0000001  -0.0000000
                            0.0000000
 2222222222/00//0           0.0108507  -0.0004402  -0.0006696   0.0008738  -0.0705477   0.0004397   0.0000001  -0.0000000
                            0.0000000
 2222220222//2/00          -0.0160979  -0.0000343   0.0019095  -0.0003517   0.0374744  -0.0658625  -0.0000001   0.0000000
                           -0.0000000
 2222220222/2/0/0           0.0160979  -0.0005072   0.0011902   0.0005871  -0.0383156  -0.0653902   0.0000001  -0.0000000
                            0.0000000
 2222220222/2/00/           0.0000000  -0.0078928  -0.0651380   0.0012319   0.0006734  -0.0015079   0.0427633   0.0404727
                           -0.0314572
 22222202222//0/0          -0.0000000   0.0078928   0.0651379  -0.0012319  -0.0006733   0.0015078   0.0427634   0.0404726
                           -0.0314573
 222222222200/0//           0.0108507  -0.0000320   0.0017774  -0.0003273   0.0348824  -0.0613068  -0.0000001   0.0000000
                           -0.0000000
 22222222220/0/0/          -0.0108507  -0.0004721   0.0011079   0.0005464  -0.0356654  -0.0608672   0.0000000   0.0000000
                            0.0000000
 2222222222/00/0/          -0.0000000  -0.0073469  -0.0606325   0.0011467   0.0006268  -0.0014036   0.0391329   0.0370367
                           -0.0287866
 22222222220/0//0          -0.0000000   0.0073469   0.0606324  -0.0011467  -0.0006267   0.0014036   0.0391330   0.0370366
                           -0.0287867
 2222220222/2//00          -0.0000000  -0.0312740   0.0026913  -0.0576531  -0.0005439   0.0000927   0.0113715  -0.0474360
                           -0.0455721
 2222220222//20/0           0.0000000   0.0312741  -0.0026914   0.0576530   0.0005439  -0.0000927   0.0113716  -0.0474359
                           -0.0455720
 2222220222//200/          -0.0000000  -0.0571742   0.0075171   0.0313596   0.0006767   0.0004653   0.0499828  -0.0238347
                            0.0372816
 22222202222///00          -0.0000000  -0.0571742   0.0075171   0.0313596   0.0006766   0.0004653  -0.0499828   0.0238347
                           -0.0372817
 22222222220/00//           0.0000000   0.0291109  -0.0025053   0.0536652   0.0005063  -0.0000863   0.0104061  -0.0434088
                           -0.0417032
 222222222200//0/          -0.0000000  -0.0291108   0.0025052  -0.0536652  -0.0005063   0.0000863   0.0104061  -0.0434088
                           -0.0417032
 2222222222/000//           0.0000000  -0.0532195   0.0069972   0.0291904   0.0006299   0.0004331   0.0457394  -0.0218113
                            0.0341166
 222222222200///0           0.0000000  -0.0532195   0.0069972   0.0291904   0.0006298   0.0004332  -0.0457395   0.0218112
                           -0.0341166

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970802    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000   -0.002069    0.846476    0.463019    0.116854    0.006968   -0.000000   -0.000000    0.000000
 3           0.000000   -0.021812   -0.111293   -0.039846    0.964381   -0.011653   -0.000000    0.000001    0.000000
 4           0.000000    0.008101   -0.464285    0.853566   -0.018239   -0.009070   -0.000000    0.000000    0.000000
 5          -0.000000   -0.740521   -0.010018    0.008053   -0.009969    0.629270    0.000001   -0.000000   -0.000001
 6           0.000000    0.629047   -0.006889   -0.001372    0.022324    0.740519   -0.000000    0.000000   -0.000000
 7          -0.000000    0.000001    0.000000    0.000000    0.000000   -0.000001    0.727639   -0.165544   -0.622540
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.346981    0.690563   -0.589192
 9           0.000000    0.000000    0.000000    0.000000   -0.000001   -0.000000    0.542739    0.663429    0.457948

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970802   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.971914   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.971914    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.971914   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.971914   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.971914    0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971813   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.971813   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.971813


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97080217 (fixed)   0.97085920 (relaxed)   0.97080217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018309   -0.00027246   -0.67141808
 Singles      0.01594250   -0.05589473   -0.06421711
 Pairs        0.04493095    0.00000000   -0.03253144
 Total        1.06105654   -0.05616720   -0.76816663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.20730226
 Nuclear energy                         0.00000000
 Kinetic energy                       233.75802686
 One electron energy                 -586.32105049
 Two electron energy                  254.34558161
 Virial quotient                       -1.42016714
 Correlation energy                    -0.76816663
 !MRCI STATE 1.2 Energy              -331.975468885394

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.02237048 (Davidson, fixed reference)
 Cluster corrected energies          -332.02227472 (Davidson, relaxed reference)
 Cluster corrected energies          -332.02237048 (Davidson, rotated reference)

 Cluster corrected energies          -332.01983159 (Pople, fixed reference)
 Cluster corrected energies          -332.01973644 (Pople, relaxed reference)
 Cluster corrected energies          -332.01983159 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.84647615 (fixed)   0.97194589 (relaxed)   0.97191377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031263   -0.00082283   -0.65443635
 Singles      0.01771185   -0.06019317   -0.06945272
 Pairs        0.04060632   -0.00000020   -0.02887544
 Total        1.05863080   -0.06101620   -0.75276451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94504245
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45659060
 One electron energy                 -580.67936719
 Two electron energy                  248.98156023
 Virial quotient                       -1.42081149
 Correlation energy                    -0.75276451
 !MRCI STATE 2.2 Energy              -331.697806962057

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.74194215 (Davidson, fixed reference)
 Cluster corrected energies          -331.74188949 (Davidson, relaxed reference)
 Cluster corrected energies          -331.74194215 (Davidson, rotated reference)

 Cluster corrected energies          -331.73946927 (Pople, fixed reference)
 Cluster corrected energies          -331.73941715 (Pople, relaxed reference)
 Cluster corrected energies          -331.73946927 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96438116 (fixed)   0.97194588 (relaxed)   0.97191377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031263   -0.00082283   -0.65443635
 Singles      0.01771181   -0.06019313   -0.06945270
 Pairs        0.04060637   -0.00000023   -0.02887546
 Total        1.05863081   -0.06101619   -0.75276451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94504245
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45660459
 One electron energy                 -580.67937527
 Two electron energy                  248.98156831
 Virial quotient                       -1.42081141
 Correlation energy                    -0.75276451
 !MRCI STATE 3.2 Energy              -331.697806960237

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.74194215 (Davidson, fixed reference)
 Cluster corrected energies          -331.74188950 (Davidson, relaxed reference)
 Cluster corrected energies          -331.74194215 (Davidson, rotated reference)

 Cluster corrected energies          -331.73946927 (Pople, fixed reference)
 Cluster corrected energies          -331.73941716 (Pople, relaxed reference)
 Cluster corrected energies          -331.73946927 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.85356615 (fixed)   0.97194588 (relaxed)   0.97191377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031263   -0.00082283   -0.65443634
 Singles      0.01771186   -0.06019318   -0.06945272
 Pairs        0.04060633   -0.00000019   -0.02887546
 Total        1.05863082   -0.06101620   -0.75276451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94504245
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45659583
 One electron energy                 -580.67936981
 Two electron energy                  248.98156285
 Virial quotient                       -1.42081146
 Correlation energy                    -0.75276451
 !MRCI STATE 4.2 Energy              -331.697806957202

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.74194216 (Davidson, fixed reference)
 Cluster corrected energies          -331.74188950 (Davidson, relaxed reference)
 Cluster corrected energies          -331.74194216 (Davidson, rotated reference)

 Cluster corrected energies          -331.73946927 (Pople, fixed reference)
 Cluster corrected energies          -331.73941716 (Pople, relaxed reference)
 Cluster corrected energies          -331.73946927 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74052084 (fixed)   0.97194594 (relaxed)   0.97191383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031260   -0.00082276   -0.65443700
 Singles      0.01771174   -0.06019301   -0.06945259
 Pairs        0.04060634    0.00000040   -0.02887480
 Total        1.05863068   -0.06101537   -0.75276438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94504245
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45659648
 One electron energy                 -580.67937347
 Two electron energy                  248.98156665
 Virial quotient                       -1.42081146
 Correlation energy                    -0.75276438
 !MRCI STATE 5.2 Energy              -331.697806826831

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.74194192 (Davidson, fixed reference)
 Cluster corrected energies          -331.74188926 (Davidson, relaxed reference)
 Cluster corrected energies          -331.74194192 (Davidson, rotated reference)

 Cluster corrected energies          -331.73946903 (Pople, fixed reference)
 Cluster corrected energies          -331.73941692 (Pople, relaxed reference)
 Cluster corrected energies          -331.73946903 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.74051946 (fixed)   0.97194593 (relaxed)   0.97191382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031260   -0.00082276   -0.65443655
 Singles      0.01771179   -0.06019307   -0.06945259
 Pairs        0.04060632    0.00000001   -0.02887523
 Total        1.05863071   -0.06101582   -0.75276438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94504245
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45659262
 One electron energy                 -580.67937114
 Two electron energy                  248.98156432
 Virial quotient                       -1.42081148
 Correlation energy                    -0.75276438
 !MRCI STATE 6.2 Energy              -331.697806823377

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.74194193 (Davidson, fixed reference)
 Cluster corrected energies          -331.74188927 (Davidson, relaxed reference)
 Cluster corrected energies          -331.74194193 (Davidson, rotated reference)

 Cluster corrected energies          -331.73946905 (Pople, fixed reference)
 Cluster corrected energies          -331.73941694 (Pople, relaxed reference)
 Cluster corrected energies          -331.73946905 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.72763917 (fixed)   0.97184244 (relaxed)   0.97181260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030958   -0.00082449   -1.07318590
 Singles      0.01779948   -0.06030875   -0.06961587
 Pairs        0.04074217    0.44329048    0.38967244
 Total        1.05885124    0.38215724   -0.75312934
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94027527
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45691870
 One electron energy                 -580.67537920
 Two electron energy                  248.98197459
 Virial quotient                       -1.42079064
 Correlation energy                    -0.75312934
 !MRCI STATE 7.2 Energy              -331.693404613063

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.73772721 (Davidson, fixed reference)
 Cluster corrected energies          -331.73767824 (Davidson, relaxed reference)
 Cluster corrected energies          -331.73772721 (Davidson, rotated reference)

 Cluster corrected energies          -331.73525145 (Pople, fixed reference)
 Cluster corrected energies          -331.73520298 (Pople, relaxed reference)
 Cluster corrected energies          -331.73525145 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.69056288 (fixed)   0.97184243 (relaxed)   0.97181259 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030958   -0.00082449   -1.05075956
 Singles      0.01779949   -0.06030875   -0.06961587
 Pairs        0.04074219    0.41954434    0.36724609
 Total        1.05885126    0.35841109   -0.75312934
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94027527
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45692271
 One electron energy                 -580.67538134
 Two electron energy                  248.98197673
 Virial quotient                       -1.42079061
 Correlation energy                    -0.75312934
 !MRCI STATE 8.2 Energy              -331.693404610434

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.73772722 (Davidson, fixed reference)
 Cluster corrected energies          -331.73767825 (Davidson, relaxed reference)
 Cluster corrected energies          -331.73772722 (Davidson, rotated reference)

 Cluster corrected energies          -331.73525146 (Pople, fixed reference)
 Cluster corrected energies          -331.73520299 (Pople, relaxed reference)
 Cluster corrected energies          -331.73525146 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.66342875 (fixed)   0.97184243 (relaxed)   0.97181260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030958   -0.00082449   -0.34656771
 Singles      0.01779949   -0.06030876   -0.06961587
 Pairs        0.04074217   -0.32609008   -0.33694576
 Total        1.05885125   -0.38722333   -0.75312934
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -330.94027527
 Nuclear energy                         0.00000000
 Kinetic energy                       233.45692010
 One electron energy                 -580.67538002
 Two electron energy                  248.98197541
 Virial quotient                       -1.42079063
 Correlation energy                    -0.75312934
 !MRCI STATE 9.2 Energy              -331.693404609282

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.73772721 (Davidson, fixed reference)
 Cluster corrected energies          -331.73767825 (Davidson, relaxed reference)
 Cluster corrected energies          -331.73772721 (Davidson, rotated reference)

 Cluster corrected energies          -331.73525146 (Pople, fixed reference)
 Cluster corrected energies          -331.73520298 (Pople, relaxed reference)
 Cluster corrected energies          -331.73525146 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      664.99       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3080.83   3075.95      3.62      0.11      0.90
 REAL TIME  *      3160.09 SEC
 DISK USED  *       704.13 MB (local),        8.31 GB (total)
 SF USED    *         6.91 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.02237048  AU                              
 SETTING HLSDIAG(2)     =      -331.74194215  AU                              
 SETTING HLSDIAG(3)     =      -331.74194215  AU                              
 SETTING HLSDIAG(4)     =      -331.74194216  AU                              
 SETTING HLSDIAG(5)     =      -331.74194192  AU                              
 SETTING HLSDIAG(6)     =      -331.74194193  AU                              
 SETTING HLSDIAG(7)     =      -331.73772721  AU                              
 SETTING HLSDIAG(8)     =      -331.73772722  AU                              
 SETTING HLSDIAG(9)     =      -331.73772721  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.14062831
     2      -331.14062831
     3      -331.14062831
     4      -331.14062831
     5      -331.14062831
     6      -331.11564531
     7      -331.11564531
     8      -331.11564531

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1907D-06

 Number of blocks in overlap matrix:   760   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:    1848
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5989552
 Number of doubly external configurations:       4260448
 Total number of contracted configurations:     10294086
 Total number of uncontracted configurations:  192939054

 Diagonal Coupling coefficients finished.               Storage:  27648478 words, CPU-Time:     66.47 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1530614 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.14062831     0.00000000    -0.92415114  0.52D-01  0.62D-01    78.45
    1     2     2     1.00000000     0.00000000  -331.14062831     0.00000000    -0.92397980  0.52D-01  0.62D-01    78.45
    1     3     3     1.00000000     0.00000000  -331.14062831    -0.00000000    -0.92360888  0.51D-01  0.62D-01    78.45
    1     4     4     1.00000000     0.00000000  -331.14062831    -0.00000000    -0.92348237  0.51D-01  0.62D-01    78.45
    1     5     5     1.00000000     0.00000000  -331.14062831     0.00000000    -0.92327956  0.52D-01  0.62D-01    78.45
    1     6     6     1.00000000     0.00000000  -331.11564531     0.00000000    -0.90585470  0.35D-01  0.64D-01    78.45
    1     7     7     1.00000000     0.00000000  -331.11564531     0.00000000    -0.90582592  0.35D-01  0.64D-01    78.45
    1     8     8     1.00000000     0.00000000  -331.11564531    -0.00000000    -0.90519115  0.35D-01  0.64D-01    78.45
    2     1     1     1.07566088    -0.75665741  -331.89728572    -0.75665741    -0.02086167  0.34D-02  0.12D-02   442.49
    2     2     2     1.07564566    -0.75662470  -331.89725301    -0.75662470    -0.02091734  0.34D-02  0.12D-02   442.49
    2     3     3     1.07561299    -0.75653975  -331.89716807    -0.75653975    -0.02098136  0.35D-02  0.12D-02   442.49
    2     4     4     1.07606177    -0.75635394  -331.89698225    -0.75635394    -0.02118741  0.36D-02  0.12D-02   442.49
    2     5     5     1.07649987    -0.75600858  -331.89663689    -0.75600858    -0.02153321  0.38D-02  0.12D-02   442.49
    2     6     6     1.06780746    -0.75087099  -331.86651630    -0.75087099    -0.02008005  0.33D-02  0.12D-02   442.49
    2     7     7     1.06784778    -0.75087094  -331.86651624    -0.75087094    -0.02009108  0.33D-02  0.12D-02   442.49
    2     8     8     1.06756970    -0.75075875  -331.86640405    -0.75075875    -0.02011534  0.33D-02  0.12D-02   442.49
    3     1     1     1.06562338    -0.77652817  -331.91715649    -0.01987077    -0.00062719  0.70D-04  0.68D-04   807.22
    3     2     2     1.06561136    -0.77652465  -331.91715296    -0.01989995    -0.00063130  0.71D-04  0.68D-04   807.22
    3     3     3     1.06560898    -0.77652071  -331.91714903    -0.01998096    -0.00063787  0.72D-04  0.69D-04   807.22
    3     4     4     1.06563992    -0.77651964  -331.91714796    -0.02016570    -0.00063120  0.71D-04  0.69D-04   807.22
    3     5     5     1.06558056    -0.77651007  -331.91713839    -0.02050150    -0.00064316  0.72D-04  0.70D-04   807.22
    3     6     6     1.06163148    -0.77017352  -331.88581882    -0.01930253    -0.00068224  0.53D-04  0.91D-04   807.22
    3     7     7     1.06161602    -0.77016497  -331.88581028    -0.01929403    -0.00068604  0.53D-04  0.92D-04   807.22
    3     8     8     1.06149521    -0.77012617  -331.88577147    -0.01936742    -0.00070727  0.53D-04  0.96D-04   807.22
    4     1     1     1.06543559    -0.77721484  -331.91784315    -0.00068666    -0.00004765  0.33D-05  0.73D-05  1173.77
    4     2     2     1.06542793    -0.77721463  -331.91784295    -0.00068998    -0.00004817  0.34D-05  0.73D-05  1173.77
    4     3     3     1.06543705    -0.77721411  -331.91784242    -0.00069340    -0.00004800  0.33D-05  0.73D-05  1173.77
    4     4     4     1.06542938    -0.77721209  -331.91784040    -0.00069245    -0.00004924  0.34D-05  0.75D-05  1173.77
    4     5     5     1.06541218    -0.77721119  -331.91783951    -0.00070112    -0.00005030  0.36D-05  0.76D-05  1173.77
    4     6     6     1.06248098    -0.77094572  -331.88659103    -0.00077220    -0.00006320  0.49D-05  0.95D-05  1173.77
    4     7     7     1.06247117    -0.77094352  -331.88658882    -0.00077854    -0.00006455  0.50D-05  0.97D-05  1173.77
    4     8     8     1.06242543    -0.77093621  -331.88658151    -0.00081004    -0.00006927  0.53D-05  0.10D-04  1173.77
    5     1     1     1.06584382    -0.77727103  -331.91789935    -0.00005620    -0.00000576  0.43D-06  0.77D-06  1538.70
    5     2     2     1.06584233    -0.77727091  -331.91789922    -0.00005627    -0.00000586  0.44D-06  0.79D-06  1538.70
    5     3     3     1.06584231    -0.77727090  -331.91789921    -0.00005679    -0.00000584  0.43D-06  0.78D-06  1538.70
    5     4     4     1.06583892    -0.77727061  -331.91789892    -0.00005852    -0.00000607  0.45D-06  0.80D-06  1538.70
    5     5     5     1.06583791    -0.77727030  -331.91789861    -0.00005911    -0.00000629  0.47D-06  0.83D-06  1538.70
    5     6     6     1.06322509    -0.77102123  -331.88666654    -0.00007551    -0.00000781  0.64D-06  0.99D-06  1538.70
    5     7     7     1.06322404    -0.77102091  -331.88666621    -0.00007739    -0.00000805  0.66D-06  0.10D-05  1538.70
    5     8     8     1.06322040    -0.77101988  -331.88666518    -0.00008367    -0.00000881  0.72D-06  0.11D-05  1538.70
    6     1     1     1.06589659    -0.77727785  -331.91790616    -0.00000681    -0.00000059  0.47D-07  0.79D-07  1902.44
    6     2     2     1.06589658    -0.77727783  -331.91790615    -0.00000692    -0.00000061  0.49D-07  0.82D-07  1902.44
    6     3     3     1.06589647    -0.77727781  -331.91790612    -0.00000691    -0.00000061  0.47D-07  0.81D-07  1902.44
    6     4     4     1.06589504    -0.77727779  -331.91790610    -0.00000718    -0.00000064  0.49D-07  0.85D-07  1902.44
    6     5     5     1.06589611    -0.77727775  -331.91790606    -0.00000745    -0.00000066  0.52D-07  0.88D-07  1902.44
    6     6     6     1.06331271    -0.77103029  -331.88667560    -0.00000906    -0.00000078  0.43D-07  0.11D-06  1902.44
    6     7     7     1.06331175    -0.77103025  -331.88667555    -0.00000934    -0.00000081  0.44D-07  0.11D-06  1902.44
    6     8     8     1.06330910    -0.77103010  -331.88667541    -0.00001023    -0.00000091  0.47D-07  0.13D-06  1902.44
    7     1     1     1.06591958    -0.77727854  -331.91790686    -0.00000069    -0.00000007  0.52D-08  0.10D-07  2266.12
    7     2     2     1.06591977    -0.77727854  -331.91790685    -0.00000071    -0.00000007  0.48D-08  0.96D-08  2266.12
    7     3     3     1.06591894    -0.77727853  -331.91790684    -0.00000072    -0.00000007  0.53D-08  0.11D-07  2266.12
    7     4     4     1.06591894    -0.77727851  -331.91790682    -0.00000072    -0.00000007  0.55D-08  0.10D-07  2266.12
    7     5     5     1.06591938    -0.77727851  -331.91790682    -0.00000076    -0.00000007  0.50D-08  0.99D-08  2266.12
    7     6     6     1.06333538    -0.77103121  -331.88667651    -0.00000091    -0.00000010  0.61D-08  0.14D-07  2266.12
    7     7     7     1.06333489    -0.77103120  -331.88667650    -0.00000095    -0.00000010  0.65D-08  0.15D-07  2266.12
    7     8     8     1.06333338    -0.77103117  -331.88667648    -0.00000107    -0.00000012  0.76D-08  0.17D-07  2266.12
    8     1     1     1.06592488    -0.77727862  -331.91790694    -0.00000008    -0.00000001  0.11D-08  0.14D-08  2629.57
    8     2     2     1.06592489    -0.77727861  -331.91790693    -0.00000008    -0.00000001  0.10D-08  0.14D-08  2629.57
    8     3     3     1.06592503    -0.77727861  -331.91790693    -0.00000008    -0.00000001  0.93D-09  0.13D-08  2629.57
    8     4     4     1.06592482    -0.77727859  -331.91790691    -0.00000008    -0.00000001  0.11D-08  0.14D-08  2629.57
    8     5     5     1.06592494    -0.77727858  -331.91790690    -0.00000008    -0.00000001  0.96D-09  0.13D-08  2629.57
    8     6     6     1.06334646    -0.77103132  -331.88667662    -0.00000011    -0.00000002  0.15D-08  0.20D-08  2629.57
    8     7     7     1.06334633    -0.77103132  -331.88667662    -0.00000012    -0.00000002  0.16D-08  0.21D-08  2629.57
    8     8     8     1.06334590    -0.77103131  -331.88667662    -0.00000014    -0.00000002  0.19D-08  0.25D-08  2629.57


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.9%  13.4%
 P   0.4%  55.1%  21.8%

 Initialization:   2.6%
 Other:            4.5%

 Total CPU:     2629.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000          -0.0698309  -0.0264730  -0.0368486   0.9611017  -0.0535396   0.0000000   0.0000000  -0.0000000
 2222222222//\000           0.9609705   0.0690531   0.0021028   0.0709216  -0.0158427   0.0000000  -0.0000000  -0.0000000
 222222222202/000           0.0084936   0.0013466  -0.0425879   0.0369471   0.6808132   0.1221031   0.6642396   0.0093219
 222222222220/000          -0.0084936  -0.0013465   0.0425878  -0.0369471  -0.6808126   0.1221032   0.6642400   0.0093219
 22222222222/0000           0.0497205  -0.6688197  -0.1285453  -0.0200862  -0.0062485   0.0701744  -0.0223222   0.6714080
 22222222220/2000          -0.0497206   0.6688207   0.1285455   0.0200862   0.0062484   0.0701743  -0.0223222   0.6714070
 2222222222/02000           0.0066595  -0.1292369   0.6691340   0.0248449   0.0406815   0.6605881  -0.1204067  -0.0730467
 2222222222/20000          -0.0066596   0.1292369  -0.6691338  -0.0248449  -0.0406815   0.6605884  -0.1204068  -0.0730467
 22222202222/2000           0.0000000  -0.0000001  -0.0000000  -0.0000000   0.0000000  -0.0142885   0.0045451  -0.1367082
 222222022222/000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0248620  -0.1352488  -0.0018981
 2222220222/22000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1345054   0.0245166   0.0148734
 2222222222//000\          -0.0024613   0.0331090   0.0063635   0.0009943   0.0003093  -0.0059201   0.0018832  -0.0566417
 22222222220//\00          -0.0024614   0.0331091   0.0063635   0.0009943   0.0003093   0.0059201  -0.0018832   0.0566416
 22222222220//0\0          -0.0004205  -0.0000667   0.0021083  -0.0018290  -0.0337028  -0.0103010  -0.0560374  -0.0007864
 2222222222/0/00\           0.0004205   0.0000667  -0.0021083   0.0018290   0.0337029  -0.0103010  -0.0560373  -0.0007864
 2222222222//00\0          -0.0003297   0.0063977  -0.0331248  -0.0012299  -0.0020139   0.0557294  -0.0101579  -0.0061625
 2222222222/0/\00           0.0003297  -0.0063977   0.0331248   0.0012299   0.0020139   0.0557293  -0.0101579  -0.0061625

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.611217    0.009439    0.012039   -0.070473    0.747612   -0.000000    0.000000   -0.000000
 2          -0.061511   -0.183178    0.001909    0.947976    0.041354   -0.000000    0.000000    0.000001
 3          -0.031423    0.948421   -0.060363    0.182198   -0.019518    0.000000   -0.000000    0.000000
 4           0.747091    0.035215    0.052368    0.028470    0.612187   -0.000000    0.000000    0.000000
 5          -0.034763    0.057661    0.964974    0.008856   -0.043853    0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.948217    0.175268    0.100729
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.172833    0.953458   -0.032042
 8          -0.000000    0.000000    0.000000   -0.000001   -0.000000   -0.104852    0.013381    0.963747

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968354   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.968354    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.968354   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.968355   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.968354    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969526    0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.969526   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.969526


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.74761174 (fixed)   0.96847396 (relaxed)   0.96835449 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047136   -0.00074577   -0.66970819
 Singles      0.01988259   -0.06344993   -0.07398644
 Pairs        0.04607337    0.00000003   -0.03358399
 Total        1.06642731   -0.06419567   -0.77727862
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14062831
 Nuclear energy                         0.00000000
 Kinetic energy                       233.73194023
 One electron energy                 -586.00197024
 Two electron energy                  254.08406331
 Virial quotient                       -1.42007937
 Correlation energy                    -0.77727862
 !MRCI STATE 1.2 Energy              -331.917906936727

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96953947 (Davidson, fixed reference)
 Cluster corrected energies          -331.96933498 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96953947 (Davidson, rotated reference)

 Cluster corrected energies          -331.96752309 (Pople, fixed reference)
 Cluster corrected energies          -331.96731551 (Pople, relaxed reference)
 Cluster corrected energies          -331.96752309 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94797610 (fixed)   0.96847395 (relaxed)   0.96835448 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047136   -0.00074577   -0.66970764
 Singles      0.01988259   -0.06344997   -0.07398644
 Pairs        0.04607338   -0.00000049   -0.03358453
 Total        1.06642733   -0.06419623   -0.77727861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14062831
 Nuclear energy                         0.00000000
 Kinetic energy                       233.73194304
 One electron energy                 -586.00196724
 Two electron energy                  254.08406032
 Virial quotient                       -1.42007936
 Correlation energy                    -0.77727861
 !MRCI STATE 2.2 Energy              -331.917906926913

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96953947 (Davidson, fixed reference)
 Cluster corrected energies          -331.96933498 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96953947 (Davidson, rotated reference)

 Cluster corrected energies          -331.96752310 (Pople, fixed reference)
 Cluster corrected energies          -331.96731551 (Pople, relaxed reference)
 Cluster corrected energies          -331.96752310 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94842075 (fixed)   0.96847389 (relaxed)   0.96835442 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047136   -0.00074577   -0.66970805
 Singles      0.01988252   -0.06344985   -0.07398645
 Pairs        0.04607358   -0.00000009   -0.03358412
 Total        1.06642746   -0.06419571   -0.77727861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14062831
 Nuclear energy                         0.00000000
 Kinetic energy                       233.73201993
 One electron energy                 -586.00201127
 Two electron energy                  254.08410435
 Virial quotient                       -1.42007889
 Correlation energy                    -0.77727861
 !MRCI STATE 3.2 Energy              -331.917906925850

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96953957 (Davidson, fixed reference)
 Cluster corrected energies          -331.96933508 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96953957 (Davidson, rotated reference)

 Cluster corrected energies          -331.96752320 (Pople, fixed reference)
 Cluster corrected energies          -331.96731562 (Pople, relaxed reference)
 Cluster corrected energies          -331.96752320 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.74709055 (fixed)   0.96847398 (relaxed)   0.96835451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047136   -0.00074577   -0.66970809
 Singles      0.01988263   -0.06345000   -0.07398645
 Pairs        0.04607326   -0.00000002   -0.03358405
 Total        1.06642726   -0.06419579   -0.77727859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14062831
 Nuclear energy                         0.00000000
 Kinetic energy                       233.73192014
 One electron energy                 -586.00196080
 Two electron energy                  254.08405389
 Virial quotient                       -1.42007949
 Correlation energy                    -0.77727859
 !MRCI STATE 4.2 Energy              -331.917906905227

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96953939 (Davidson, fixed reference)
 Cluster corrected energies          -331.96933490 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96953939 (Davidson, rotated reference)

 Cluster corrected energies          -331.96752302 (Pople, fixed reference)
 Cluster corrected energies          -331.96731543 (Pople, relaxed reference)
 Cluster corrected energies          -331.96752302 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96497441 (fixed)   0.96847393 (relaxed)   0.96835446 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047136   -0.00074577   -0.66970816
 Singles      0.01988251   -0.06344986   -0.07398642
 Pairs        0.04607350    0.00000001   -0.03358400
 Total        1.06642737   -0.06419562   -0.77727858
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14062831
 Nuclear energy                         0.00000000
 Kinetic energy                       233.73200325
 One electron energy                 -586.00200055
 Two electron energy                  254.08409365
 Virial quotient                       -1.42007899
 Correlation energy                    -0.77727858
 !MRCI STATE 5.2 Energy              -331.917906898745

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96953947 (Davidson, fixed reference)
 Cluster corrected energies          -331.96933498 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96953947 (Davidson, rotated reference)

 Cluster corrected energies          -331.96752310 (Pople, fixed reference)
 Cluster corrected energies          -331.96731552 (Pople, relaxed reference)
 Cluster corrected energies          -331.96752310 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.94821666 (fixed)   0.96966309 (relaxed)   0.96952576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047560   -0.00066554   -0.60893837
 Singles      0.01304987   -0.04858836   -0.05512610
 Pairs        0.05032671   -0.07498925   -0.10696685
 Total        1.06385219   -0.12424315   -0.77103132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11564531
 Nuclear energy                         0.00000000
 Kinetic energy                       233.72850312
 One electron energy                 -585.78393073
 Two electron energy                  253.89725411
 Virial quotient                       -1.41996664
 Correlation energy                    -0.77103132
 !MRCI STATE 6.2 Energy              -331.886676622449

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93590866 (Davidson, fixed reference)
 Cluster corrected energies          -331.93567633 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93590866 (Davidson, rotated reference)

 Cluster corrected energies          -331.93388240 (Pople, fixed reference)
 Cluster corrected energies          -331.93364759 (Pople, relaxed reference)
 Cluster corrected energies          -331.93388240 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95345806 (fixed)   0.96966315 (relaxed)   0.96952582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047560   -0.00066554   -0.70184887
 Singles      0.01304993   -0.04858844   -0.05512611
 Pairs        0.05032652    0.02385379   -0.01405634
 Total        1.06385206   -0.02540020   -0.77103132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11564531
 Nuclear energy                         0.00000000
 Kinetic energy                       233.72846010
 One electron energy                 -585.78390839
 Two electron energy                  253.89723177
 Virial quotient                       -1.41996690
 Correlation energy                    -0.77103132
 !MRCI STATE 7.2 Energy              -331.886676621321

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93590856 (Davidson, fixed reference)
 Cluster corrected energies          -331.93567623 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93590856 (Davidson, rotated reference)

 Cluster corrected energies          -331.93388230 (Pople, fixed reference)
 Cluster corrected energies          -331.93364749 (Pople, relaxed reference)
 Cluster corrected energies          -331.93388230 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.96374668 (fixed)   0.96966335 (relaxed)   0.96952601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047562   -0.00066554   -0.00501458
 Singles      0.01305012   -0.04858870   -0.05512608
 Pairs        0.05032591   -0.71747456   -0.71089065
 Total        1.06385164   -0.76672881   -0.77103131
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11564531
 Nuclear energy                         0.00000000
 Kinetic energy                       233.72829750
 One electron energy                 -585.78382393
 Two electron energy                  253.89714731
 Virial quotient                       -1.41996789
 Correlation energy                    -0.77103131
 !MRCI STATE 8.2 Energy              -331.886676617555

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93590823 (Davidson, fixed reference)
 Cluster corrected energies          -331.93567590 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93590823 (Davidson, rotated reference)

 Cluster corrected energies          -331.93388197 (Pople, fixed reference)
 Cluster corrected energies          -331.93364715 (Pople, relaxed reference)
 Cluster corrected energies          -331.93388197 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1304.39       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6215.04   3134.18   3075.95      3.62      0.11      0.90
 REAL TIME  *      6364.78 SEC
 DISK USED  *         1.31 GB (local),       15.80 GB (total)
 SF USED    *         6.91 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =      -331.96953947  AU                              
 SETTING HLSDIAG(11)    =      -331.96953947  AU                              
 SETTING HLSDIAG(12)    =      -331.96953957  AU                              
 SETTING HLSDIAG(13)    =      -331.96953939  AU                              
 SETTING HLSDIAG(14)    =      -331.96953947  AU                              
 SETTING HLSDIAG(15)    =      -331.93590866  AU                              
 SETTING HLSDIAG(16)    =      -331.93590856  AU                              
 SETTING HLSDIAG(17)    =      -331.93590823  AU                              


         HLSDIAG
    -332.0223705
    -331.7419421
    -331.7419422
    -331.7419422
    -331.7419419
    -331.7419419
    -331.7377272
    -331.7377272
    -331.7377272
    -331.9695395
    -331.9695395
    -331.9695396
    -331.9695394
    -331.9695395
    -331.9359087
    -331.9359086
    -331.9359082
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -331.975469   -331.697807   -331.697807   -331.697807   -331.697807   -331.697807   -331.693405   -331.693405
                      -331.693405
 Replaced energies:   -332.022370   -331.741942   -331.741942   -331.741942   -331.741942   -331.741942   -331.737727   -331.737727
                      -331.737727

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -331.917907   -331.917907   -331.917907   -331.917907   -331.917907   -331.886677   -331.886677   -331.886677
 Replaced energies:   -331.969539   -331.969539   -331.969540   -331.969539   -331.969539   -331.935909   -331.935909   -331.935908



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.02237048

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00    -267.84     127.72    -199.78       0.00

    2   2.2  1.5  1.5       0.00   61546.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00    -211.37      52.90    -616.43     357.83    -102.41    -130.98      48.69      -0.00

    3   3.2  1.5  1.5       0.00       0.00   61546.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     211.37       0.00     349.74      84.40     -47.96      73.64    -242.10    -242.05      -0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   61546.90       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -52.90    -349.74      -0.00     343.15    -207.03    -197.11    -184.14     152.18      -0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   61546.96       0.00       0.00       0.00       0.00      -0.00
                            0.00     616.43     -84.40    -343.15       0.00      -9.40    -156.56      74.27    -111.08       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   61546.95       0.00       0.00       0.00       0.00
                           -0.00    -357.83      47.96     207.03       9.40       0.00    -261.24     119.93    -201.89       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   62471.98       0.00       0.00     -35.18
                          267.84     102.41     -73.64     197.11     156.56     261.24       0.00    -228.70    -146.21     132.30

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62471.98       0.00     146.76
                         -127.72     130.98     242.10     184.14     -74.27    -119.93     228.70      -0.00    -306.62     125.21

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62471.98     140.99
                          199.78     -48.69     242.05    -152.18     111.08     201.89     146.21     306.62      -0.00     -97.32

   10   1.2  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00       0.00     -35.18     146.76     140.99       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00    -132.30    -125.21      97.32       0.00

   11   2.2  1.5  0.5       0.00      -0.00     214.01      11.90      -3.26    -221.51     -94.99    -117.26      96.20       0.00
                           -0.00      -0.00       8.21     236.57     -46.84     -27.68    -102.74     160.66      66.82      -0.00

   12   3.2  1.5  0.5      -0.00    -214.01      -0.00     103.31       2.74      20.55     166.53     -59.57     100.29       0.00
                           -0.00      -8.21      -0.00     -23.05    -410.38    -233.37       6.43     -23.13      -8.46       0.00

   13   4.2  1.5  0.5      -0.00     -11.90    -103.31       0.00      -1.56    -420.13      58.93      62.38     -45.97       0.00
                           -0.00    -236.57      23.05      -0.00       9.02       5.93    -116.59      -4.61    -166.73       0.00

   14   5.2  1.5  0.5       0.00       3.26      -2.74       1.56      -0.00      -4.02      39.81    -164.97    -162.58       0.00
                            0.00      46.84     410.38      -9.02       0.00      11.92     -75.34     -71.34      52.38       0.00

   15   6.2  1.5  0.5      -0.00     221.51     -20.55     420.13       4.02      -0.00       4.18       0.25       2.93       0.00
                            0.00      27.68     233.37      -5.93     -11.92       0.00     131.28     122.68     -97.06      -0.00

   16   7.2  1.5  0.5      35.18      94.99    -166.53     -58.93     -39.81      -4.18      -0.00     161.40    -168.00       0.00
                          132.30     102.74      -6.43     116.59      75.34    -131.28      -0.00     111.41     143.34      89.28

   17   8.2  1.5  0.5    -146.76     117.26      59.57     -62.38     164.97      -0.25    -161.40       0.00     -40.27       0.00
                          125.21    -160.66      23.13       4.61      71.34    -122.68    -111.41      -0.00    -151.46     -42.57

   18   9.2  1.5  0.5    -140.99     -96.20    -100.29      45.97     162.58      -2.93     168.00      40.27       0.00       0.00
                          -97.32     -66.82       8.46     166.73     -52.38      97.06    -143.34     151.46      -0.00      66.59

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      40.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     152.77

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -169.46
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     144.58

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -162.80
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -112.38

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

   37   1.2  0.5  0.5      -0.00    -115.15      19.84    -218.28      -2.15       3.25      -3.55      47.51      37.80       0.00
                           -0.00       3.58     -20.35       8.50       3.25       1.21      88.80      77.68     -71.48      -0.00

   38   2.2  0.5  0.5      -0.00     -26.13    -131.83     -15.80       0.87     -55.20     -75.28     -70.05      56.57       0.00
                           -0.00     -87.89       1.02    -105.91      -0.30       0.47       3.33      81.29      88.11       0.00

   39   3.2  0.5  0.5       0.00     -12.24     -30.89      -0.97       2.04     269.37     -19.29     -14.15       3.44       0.00
                            0.00     103.82     -24.76     -86.87     -16.43      -9.66     -91.56      58.13     -50.31       0.00

   40   4.2  0.5  0.5      -0.00      63.01     -10.01     101.51       1.02       9.71     -18.58      83.89      90.15       0.00
                           -0.00      35.51     271.61     -11.27      10.06      13.64       2.64      10.22      -4.82       0.00

   41   5.2  0.5  0.5       0.00     117.77     -17.21     -68.89      -1.33      15.41      90.06     -48.84      61.92       0.00
                           -0.00       6.76     -17.03      -7.93     238.80     135.42      -6.99       1.95      -2.17      -0.00

   42   6.2  0.5  0.5     913.01      16.75     -12.46     -10.85     124.37      -1.18       8.97     -16.62      19.54       0.00
                         -168.76     -88.45      12.45      61.45      12.58     -19.24      97.75     -55.13      61.94     111.99

   43   7.2  0.5  0.5    -166.42      94.71      -9.01     -51.57     -23.84      -0.54      98.73     -43.15      69.55       0.00
                         -918.06      15.32       1.05     -13.17      61.65    -108.89     -18.13      11.36     -10.04     -35.62

   44   8.2  0.5  0.5    -100.96     -11.93    -109.03       1.50     -12.65      -2.44     -81.65     -79.19      62.06       0.00
                          -12.88      62.58      -5.81      90.53       1.65      -1.77      11.52     -87.03     -96.32    1071.52

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     527.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -97.43

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -96.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -530.04

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -58.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -7.44


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00      35.18    -146.76    -140.99       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00    -132.30    -125.21      97.32       0.00       0.00

    2   2.2  1.5  1.5      -0.00    -214.01     -11.90       3.26     221.51      94.99     117.26     -96.20       0.00       0.00
                            0.00       8.21     236.57     -46.84     -27.68    -102.74     160.66      66.82       0.00       0.00

    3   3.2  1.5  1.5     214.01      -0.00    -103.31      -2.74     -20.55    -166.53      59.57    -100.29       0.00       0.00
                           -8.21       0.00     -23.05    -410.38    -233.37       6.43     -23.13      -8.46       0.00       0.00

    4   4.2  1.5  1.5      11.90     103.31       0.00       1.56     420.13     -58.93     -62.38      45.97       0.00       0.00
                         -236.57      23.05       0.00       9.02       5.93    -116.59      -4.61    -166.73       0.00       0.00

    5   5.2  1.5  1.5      -3.26       2.74      -1.56      -0.00       4.02     -39.81     164.97     162.58       0.00       0.00
                           46.84     410.38      -9.02      -0.00      11.92     -75.34     -71.34      52.38       0.00       0.00

    6   6.2  1.5  1.5    -221.51      20.55    -420.13      -4.02      -0.00      -4.18      -0.25      -2.93       0.00       0.00
                           27.68     233.37      -5.93     -11.92      -0.00     131.28     122.68     -97.06       0.00       0.00

    7   7.2  1.5  1.5     -94.99     166.53      58.93      39.81       4.18      -0.00    -161.40     168.00       0.00       0.00
                          102.74      -6.43     116.59      75.34    -131.28       0.00     111.41     143.34       0.00       0.00

    8   8.2  1.5  1.5    -117.26     -59.57      62.38    -164.97       0.25     161.40       0.00      40.27       0.00       0.00
                         -160.66      23.13       4.61      71.34    -122.68    -111.41       0.00    -151.46       0.00       0.00

    9   9.2  1.5  1.5      96.20     100.29     -45.97    -162.58       2.93    -168.00     -40.27       0.00       0.00       0.00
                          -66.82       8.46     166.73     -52.38      97.06    -143.34     151.46       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     -89.28      42.57     -66.59       0.00       0.00

   11   2.2  1.5  0.5   61546.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00     -70.46      17.63    -205.48     119.28     -34.14     -43.66      16.23      -0.00       0.00

   12   3.2  1.5  0.5       0.00   61546.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00     247.12
                           70.46       0.00     116.58      28.13     -15.99      24.55     -80.70     -80.68      -0.00      -9.48

   13   4.2  1.5  0.5       0.00       0.00   61546.90       0.00       0.00       0.00       0.00       0.00       0.00      13.74
                          -17.63    -116.58      -0.00     114.38     -69.01     -65.70     -61.38      50.73      -0.00    -273.16

   14   5.2  1.5  0.5       0.00       0.00       0.00   61546.96       0.00       0.00       0.00       0.00      -0.00      -3.77
                          205.48     -28.13    -114.38       0.00      -3.13     -52.19      24.76     -37.03       0.00      54.09

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00   61546.95       0.00       0.00       0.00       0.00    -255.78
                         -119.28      15.99      69.01       3.13       0.00     -87.08      39.98     -67.30       0.00      31.96

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   62471.98       0.00       0.00     -40.62    -109.68
                           34.14     -24.55      65.70      52.19      87.08       0.00     -76.23     -48.74     152.77     118.63

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   62471.98       0.00     169.46    -135.40
                           43.66      80.70      61.38     -24.76     -39.98      76.23      -0.00    -102.21     144.58    -185.51

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62471.98     162.80     111.09
                          -16.23      80.68     -50.73      37.03      67.30      48.74     102.21      -0.00    -112.38     -77.15

   19   1.2  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00     -40.62     169.46     162.80       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00    -152.77    -144.58     112.38      -0.00      -0.00

   20   2.2  1.5 -0.5      -0.00     247.12      13.74      -3.77    -255.78    -109.68    -135.40     111.09       0.00   61546.91
                           -0.00       9.48     273.16     -54.09     -31.96    -118.63     185.51      77.15       0.00       0.00

   21   3.2  1.5 -0.5    -247.12      -0.00     119.30       3.17      23.73     192.30     -68.78     115.81       0.00       0.00
                           -9.48      -0.00     -26.62    -473.86    -269.47       7.42     -26.71      -9.77      -0.00     -70.46

   22   4.2  1.5 -0.5     -13.74    -119.30       0.00      -1.81    -485.12      68.05      72.03     -53.08       0.00       0.00
                         -273.16      26.62      -0.00      10.42       6.84    -134.62      -5.32    -192.52      -0.00      17.63

   23   5.2  1.5 -0.5       3.77      -3.17       1.81      -0.00      -4.64      45.97    -190.49    -187.73       0.00       0.00
                           54.09     473.86     -10.42       0.00      13.77     -86.99     -82.37      60.48      -0.00    -205.48

   24   6.2  1.5 -0.5     255.78     -23.73     485.12       4.64      -0.00       4.82       0.28       3.38       0.00       0.00
                           31.96     269.47      -6.84     -13.77       0.00     151.59     141.66    -112.07       0.00     119.28

   25   7.2  1.5 -0.5     109.68    -192.30     -68.05     -45.97      -4.82      -0.00     186.37    -193.99       0.00       0.00
                          118.63      -7.42     134.62      86.99    -151.59      -0.00     128.65     165.52     -89.28     -34.14

   26   8.2  1.5 -0.5     135.40      68.78     -72.03     190.49      -0.28    -186.37       0.00     -46.51       0.00       0.00
                         -185.51      26.71       5.32      82.37    -141.66    -128.65      -0.00    -174.89      42.57     -43.66

   27   9.2  1.5 -0.5    -111.09    -115.81      53.08     187.73      -3.38     193.99      46.51       0.00       0.00       0.00
                          -77.15       9.77     192.52     -60.48     112.07    -165.52     174.89      -0.00     -66.59      16.23

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -214.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -8.21

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -236.57

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      46.84

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     221.51
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      27.68

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      35.18      94.99
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     132.30     102.74

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -146.76     117.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     125.21    -160.66

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -140.99     -96.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -97.32     -66.82

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -66.48
                         -227.93      28.92     127.01      22.72      -9.88      67.57     -29.91      50.51       0.00      -2.07

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -15.09
                          -10.63      25.38      10.10    -268.96     158.24      -9.70     -19.07      17.83       0.00      50.74

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -7.07
                          -18.90    -156.09      -7.81     -50.21      26.65      92.40      74.12     -66.73      -0.00     -59.94

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      36.38
                         -152.13      14.16      93.05      -6.10       5.85     -96.75      55.44     -70.88       0.00     -20.50

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      67.99
                           86.02     -17.49     133.12      -1.24       0.93     -13.45     100.74      93.83       0.00      -3.90

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     527.13       9.67
                          -26.03    -122.34     -17.75      -6.63     -16.00      98.92      69.90     -87.93      97.43      51.06

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -96.08      54.68
                          -56.87      27.57    -110.39       1.19       4.89       8.03    -121.43     -88.39     530.04      -8.85

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -58.29      -6.89
                           -0.16      16.02      -0.67     -74.00    -125.71     -10.07     -11.34       6.25       7.44     -36.13

   45   1.2  0.5 -0.5     -66.48      11.45    -126.02      -1.24       1.88      -2.05      27.43      21.82       0.00       0.00
                            2.07     -11.75       4.91       1.88       0.70      51.27      44.85     -41.27      -0.00    -227.93

   46   2.2  0.5 -0.5     -15.09     -76.11      -9.12       0.50     -31.87     -43.46     -40.44      32.66       0.00       0.00
                          -50.74       0.59     -61.15      -0.17       0.27       1.92      46.93      50.87       0.00     -10.63

   47   3.2  0.5 -0.5      -7.07     -17.83      -0.56       1.18     155.52     -11.14      -8.17       1.98       0.00       0.00
                           59.94     -14.30     -50.15      -9.49      -5.58     -52.86      33.56     -29.05       0.00     -18.90

   48   4.2  0.5 -0.5      36.38      -5.78      58.61       0.59       5.60     -10.73      48.43      52.05       0.00       0.00
                           20.50     156.82      -6.51       5.81       7.87       1.53       5.90      -2.78       0.00    -152.13

   49   5.2  0.5 -0.5      67.99      -9.94     -39.77      -0.77       8.90      52.00     -28.20      35.75       0.00       0.00
                            3.90      -9.83      -4.58     137.87      78.18      -4.03       1.13      -1.25      -0.00      86.02

   50   6.2  0.5 -0.5       9.67      -7.20      -6.26      71.81      -0.68       5.18      -9.60      11.28       0.00       0.00
                          -51.06       7.19      35.48       7.26     -11.11      56.43     -31.83      35.76     111.99     -26.03

   51   7.2  0.5 -0.5      54.68      -5.20     -29.77     -13.76      -0.31      57.00     -24.91      40.16       0.00       0.00
                            8.85       0.61      -7.60      35.59     -62.87     -10.47       6.56      -5.79     -35.62     -56.87

   52   8.2  0.5 -0.5      -6.89     -62.95       0.87      -7.31      -1.41     -47.14     -45.72      35.83       0.00       0.00
                           36.13      -3.36      52.27       0.95      -1.02       6.65     -50.25     -55.61    1071.52      -0.16


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

   10   1.2  1.5  0.5      -0.00      -0.00       0.00      -0.00      40.62    -169.46    -162.80       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -152.77    -144.58     112.38       0.00       0.00       0.00

   11   2.2  1.5  0.5    -247.12     -13.74       3.77     255.78     109.68     135.40    -111.09       0.00       0.00       0.00
                            9.48     273.16     -54.09     -31.96    -118.63     185.51      77.15       0.00       0.00       0.00

   12   3.2  1.5  0.5      -0.00    -119.30      -3.17     -23.73    -192.30      68.78    -115.81       0.00       0.00       0.00
                            0.00     -26.62    -473.86    -269.47       7.42     -26.71      -9.77       0.00       0.00       0.00

   13   4.2  1.5  0.5     119.30       0.00       1.81     485.12     -68.05     -72.03      53.08       0.00       0.00       0.00
                           26.62       0.00      10.42       6.84    -134.62      -5.32    -192.52       0.00       0.00       0.00

   14   5.2  1.5  0.5       3.17      -1.81      -0.00       4.64     -45.97     190.49     187.73       0.00       0.00       0.00
                          473.86     -10.42      -0.00      13.77     -86.99     -82.37      60.48       0.00       0.00       0.00

   15   6.2  1.5  0.5      23.73    -485.12      -4.64      -0.00      -4.82      -0.28      -3.38       0.00       0.00       0.00
                          269.47      -6.84     -13.77      -0.00     151.59     141.66    -112.07       0.00       0.00       0.00

   16   7.2  1.5  0.5     192.30      68.05      45.97       4.82      -0.00    -186.37     193.99       0.00       0.00       0.00
                           -7.42     134.62      86.99    -151.59       0.00     128.65     165.52       0.00       0.00       0.00

   17   8.2  1.5  0.5     -68.78      72.03    -190.49       0.28     186.37       0.00      46.51       0.00       0.00       0.00
                           26.71       5.32      82.37    -141.66    -128.65       0.00    -174.89       0.00       0.00       0.00

   18   9.2  1.5  0.5     115.81     -53.08    -187.73       3.38    -193.99     -46.51       0.00       0.00       0.00       0.00
                            9.77     192.52     -60.48     112.07    -165.52     174.89       0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      89.28     -42.57      66.59       0.00       0.00       0.00

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -214.01
                           70.46     -17.63     205.48    -119.28      34.14      43.66     -16.23      -0.00       0.00       8.21

   21   3.2  1.5 -0.5   61546.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00     214.01      -0.00
                           -0.00    -116.58     -28.13      15.99     -24.55      80.70      80.68      -0.00      -8.21       0.00

   22   4.2  1.5 -0.5       0.00   61546.90       0.00       0.00       0.00       0.00       0.00       0.00      11.90     103.31
                          116.58       0.00    -114.38      69.01      65.70      61.38     -50.73      -0.00    -236.57      23.05

   23   5.2  1.5 -0.5       0.00       0.00   61546.96       0.00       0.00       0.00       0.00      -0.00      -3.26       2.74
                           28.13     114.38      -0.00       3.13      52.19     -24.76      37.03       0.00      46.84     410.38

   24   6.2  1.5 -0.5       0.00       0.00       0.00   61546.95       0.00       0.00       0.00       0.00    -221.51      20.55
                          -15.99     -69.01      -3.13      -0.00      87.08     -39.98      67.30       0.00      27.68     233.37

   25   7.2  1.5 -0.5       0.00       0.00       0.00       0.00   62471.98       0.00       0.00     -35.18     -94.99     166.53
                           24.55     -65.70     -52.19     -87.08      -0.00      76.23      48.74     132.30     102.74      -6.43

   26   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   62471.98       0.00     146.76    -117.26     -59.57
                          -80.70     -61.38      24.76      39.98     -76.23       0.00     102.21     125.21    -160.66      23.13

   27   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   62471.98     140.99      96.20     100.29
                          -80.68      50.73     -37.03     -67.30     -48.74    -102.21       0.00     -97.32     -66.82       8.46

   28   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00     -35.18     146.76     140.99       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -132.30    -125.21      97.32      -0.00      -0.00       0.00

   29   2.2  1.5 -1.5     214.01      11.90      -3.26    -221.51     -94.99    -117.26      96.20       0.00   61546.91       0.00
                            8.21     236.57     -46.84     -27.68    -102.74     160.66      66.82       0.00       0.00     211.37

   30   3.2  1.5 -1.5      -0.00     103.31       2.74      20.55     166.53     -59.57     100.29       0.00       0.00   61546.90
                           -0.00     -23.05    -410.38    -233.37       6.43     -23.13      -8.46      -0.00    -211.37      -0.00

   31   4.2  1.5 -1.5    -103.31       0.00      -1.56    -420.13      58.93      62.38     -45.97       0.00       0.00       0.00
                           23.05      -0.00       9.02       5.93    -116.59      -4.61    -166.73      -0.00      52.90     349.74

   32   5.2  1.5 -1.5      -2.74       1.56      -0.00      -4.02      39.81    -164.97    -162.58       0.00       0.00       0.00
                          410.38      -9.02       0.00      11.92     -75.34     -71.34      52.38      -0.00    -616.43      84.40

   33   6.2  1.5 -1.5     -20.55     420.13       4.02      -0.00       4.18       0.25       2.93       0.00       0.00       0.00
                          233.37      -5.93     -11.92       0.00     131.28     122.68     -97.06       0.00     357.83     -47.96

   34   7.2  1.5 -1.5    -166.53     -58.93     -39.81      -4.18      -0.00     161.40    -168.00       0.00       0.00       0.00
                           -6.43     116.59      75.34    -131.28      -0.00     111.41     143.34    -267.84    -102.41      73.64

   35   8.2  1.5 -1.5      59.57     -62.38     164.97      -0.25    -161.40       0.00     -40.27       0.00       0.00       0.00
                           23.13       4.61      71.34    -122.68    -111.41      -0.00    -151.46     127.72    -130.98    -242.10

   36   9.2  1.5 -1.5    -100.29      45.97     162.58      -2.93     168.00      40.27       0.00       0.00       0.00       0.00
                            8.46     166.73     -52.38      97.06    -143.34     151.46      -0.00    -199.78      48.69    -242.05

   37   1.2  0.5  0.5      11.45    -126.02      -1.24       1.88      -2.05      27.43      21.82       0.00       0.00       0.00
                           11.75      -4.91      -1.88      -0.70     -51.27     -44.85      41.27      -0.00      -0.00      -0.00

   38   2.2  0.5  0.5     -76.11      -9.12       0.50     -31.87     -43.46     -40.44      32.66       0.00       0.00       0.00
                           -0.59      61.15       0.17      -0.27      -1.92     -46.93     -50.87      -0.00      -0.00      -0.00

   39   3.2  0.5  0.5     -17.83      -0.56       1.18     155.52     -11.14      -8.17       1.98       0.00       0.00       0.00
                           14.30      50.15       9.49       5.58      52.86     -33.56      29.05      -0.00      -0.00      -0.00

   40   4.2  0.5  0.5      -5.78      58.61       0.59       5.60     -10.73      48.43      52.05       0.00       0.00       0.00
                         -156.82       6.51      -5.81      -7.87      -1.53      -5.90       2.78      -0.00      -0.00      -0.00

   41   5.2  0.5  0.5      -9.94     -39.77      -0.77       8.90      52.00     -28.20      35.75       0.00       0.00       0.00
                            9.83       4.58    -137.87     -78.18       4.03      -1.13       1.25      -0.00      -0.00      -0.00

   42   6.2  0.5  0.5      -7.20      -6.26      71.81      -0.68       5.18      -9.60      11.28       0.00       0.00       0.00
                           -7.19     -35.48      -7.26      11.11     -56.43      31.83     -35.76      -0.00      -0.00      -0.00

   43   7.2  0.5  0.5      -5.20     -29.77     -13.76      -0.31      57.00     -24.91      40.16       0.00       0.00       0.00
                           -0.61       7.60     -35.59      62.87      10.47      -6.56       5.79      -0.00      -0.00      -0.00

   44   8.2  0.5  0.5     -62.95       0.87      -7.31      -1.41     -47.14     -45.72      35.83       0.00       0.00       0.00
                            3.36     -52.27      -0.95       1.02      -6.65      50.25      55.61      -0.00      -0.00      -0.00

   45   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -115.15      19.84
                           28.92     127.01      22.72      -9.88      67.57     -29.91      50.51       0.00      -3.58      20.35

   46   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -26.13    -131.83
                           25.38      10.10    -268.96     158.24      -9.70     -19.07      17.83       0.00      87.89      -1.02

   47   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -12.24     -30.89
                         -156.09      -7.81     -50.21      26.65      92.40      74.12     -66.73      -0.00    -103.82      24.76

   48   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      63.01     -10.01
                           14.16      93.05      -6.10       5.85     -96.75      55.44     -70.88       0.00     -35.51    -271.61

   49   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     117.77     -17.21
                          -17.49     133.12      -1.24       0.93     -13.45     100.74      93.83       0.00      -6.76      17.03

   50   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     913.01      16.75     -12.46
                         -122.34     -17.75      -6.63     -16.00      98.92      69.90     -87.93     168.76      88.45     -12.45

   51   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -166.42      94.71      -9.01
                           27.57    -110.39       1.19       4.89       8.03    -121.43     -88.39     918.06     -15.32      -1.05

   52   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -100.96     -11.93    -109.03
                           16.02      -0.67     -74.00    -125.71     -10.07     -11.34       6.25      12.88     -62.58       5.81


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    -115.15     -26.13     -12.24      63.01
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.58      87.89    -103.82     -35.51

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      19.84    -131.83     -30.89     -10.01
                            0.00       0.00       0.00       0.00       0.00       0.00      20.35      -1.02      24.76    -271.61

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    -218.28     -15.80      -0.97     101.51
                            0.00       0.00       0.00       0.00       0.00       0.00      -8.50     105.91      86.87      11.27

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -2.15       0.87       2.04       1.02
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.25       0.30      16.43     -10.06

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       3.25     -55.20     269.37       9.71
                            0.00       0.00       0.00       0.00       0.00       0.00      -1.21      -0.47       9.66     -13.64

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -3.55     -75.28     -19.29     -18.58
                            0.00       0.00       0.00       0.00       0.00       0.00     -88.80      -3.33      91.56      -2.64

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      47.51     -70.05     -14.15      83.89
                            0.00       0.00       0.00       0.00       0.00       0.00     -77.68     -81.29     -58.13     -10.22

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      37.80      56.57       3.44      90.15
                            0.00       0.00       0.00       0.00       0.00       0.00      71.48     -88.11      50.31       4.82

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     227.93      10.63      18.90     152.13

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -28.92     -25.38     156.09     -14.16

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -127.01     -10.10       7.81     -93.05

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -22.72     268.96      50.21       6.10

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       9.88    -158.24     -26.65      -5.85

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -67.57       9.70     -92.40      96.75

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      29.91      19.07     -74.12     -55.44

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -50.51     -17.83      66.73      70.88

   19   1.2  1.5 -0.5      -0.00       0.00      -0.00      35.18    -146.76    -140.99      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00    -132.30    -125.21      97.32      -0.00      -0.00       0.00      -0.00

   20   2.2  1.5 -0.5     -11.90       3.26     221.51      94.99     117.26     -96.20     -66.48     -15.09      -7.07      36.38
                          236.57     -46.84     -27.68    -102.74     160.66      66.82       2.07     -50.74      59.94      20.50

   21   3.2  1.5 -0.5    -103.31      -2.74     -20.55    -166.53      59.57    -100.29      11.45     -76.11     -17.83      -5.78
                          -23.05    -410.38    -233.37       6.43     -23.13      -8.46     -11.75       0.59     -14.30     156.82

   22   4.2  1.5 -0.5       0.00       1.56     420.13     -58.93     -62.38      45.97    -126.02      -9.12      -0.56      58.61
                            0.00       9.02       5.93    -116.59      -4.61    -166.73       4.91     -61.15     -50.15      -6.51

   23   5.2  1.5 -0.5      -1.56      -0.00       4.02     -39.81     164.97     162.58      -1.24       0.50       1.18       0.59
                           -9.02      -0.00      11.92     -75.34     -71.34      52.38       1.88      -0.17      -9.49       5.81

   24   6.2  1.5 -0.5    -420.13      -4.02      -0.00      -4.18      -0.25      -2.93       1.88     -31.87     155.52       5.60
                           -5.93     -11.92      -0.00     131.28     122.68     -97.06       0.70       0.27      -5.58       7.87

   25   7.2  1.5 -0.5      58.93      39.81       4.18      -0.00    -161.40     168.00      -2.05     -43.46     -11.14     -10.73
                          116.59      75.34    -131.28       0.00     111.41     143.34      51.27       1.92     -52.86       1.53

   26   8.2  1.5 -0.5      62.38    -164.97       0.25     161.40       0.00      40.27      27.43     -40.44      -8.17      48.43
                            4.61      71.34    -122.68    -111.41       0.00    -151.46      44.85      46.93      33.56       5.90

   27   9.2  1.5 -0.5     -45.97    -162.58       2.93    -168.00     -40.27       0.00      21.82      32.66       1.98      52.05
                          166.73     -52.38      97.06    -143.34     151.46       0.00     -41.27      50.87     -29.05      -2.78

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     267.84    -127.72     199.78       0.00       0.00       0.00       0.00

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.90     616.43    -357.83     102.41     130.98     -48.69       0.00       0.00       0.00       0.00

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -349.74     -84.40      47.96     -73.64     242.10     242.05       0.00       0.00       0.00       0.00

   31   4.2  1.5 -1.5   61546.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -343.15     207.03     197.11     184.14    -152.18       0.00       0.00       0.00       0.00

   32   5.2  1.5 -1.5       0.00   61546.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          343.15      -0.00       9.40     156.56     -74.27     111.08       0.00       0.00       0.00       0.00

   33   6.2  1.5 -1.5       0.00       0.00   61546.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -207.03      -9.40      -0.00     261.24    -119.93     201.89       0.00       0.00       0.00       0.00

   34   7.2  1.5 -1.5       0.00       0.00       0.00   62471.98       0.00       0.00       0.00       0.00       0.00       0.00
                         -197.11    -156.56    -261.24      -0.00     228.70     146.21       0.00       0.00       0.00       0.00

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00   62471.98       0.00       0.00       0.00       0.00       0.00
                         -184.14      74.27     119.93    -228.70       0.00     306.62       0.00       0.00       0.00       0.00

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   62471.98       0.00       0.00       0.00       0.00
                          152.18    -111.08    -201.89    -146.21    -306.62       0.00       0.00       0.00       0.00       0.00

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11595.07       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -11.61      -2.11      -0.93

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11595.07       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.61      -0.00      -0.44       7.90

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11595.05       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.11       0.44      -0.00       1.12

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11595.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.93      -7.90      -1.12      -0.00

   41   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.13      -0.76       7.11       0.33

   42   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      54.05     -16.75      80.11     -26.32

   43   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -9.33    -125.74     648.54      38.39

   44   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     427.55      43.61      39.61    -634.57

   45   1.2  0.5 -0.5    -218.28      -2.15       3.25      -3.55      47.51      37.80       0.00      -2.52      12.57       0.50
                           -8.50      -3.25      -1.21     -88.80     -77.68      71.48      -0.00       0.03      -0.59       0.21

   46   2.2  0.5 -0.5     -15.80       0.87     -55.20     -75.28     -70.05      56.57       2.52      -0.00       0.68      -0.76
                          105.91       0.30      -0.47      -3.33     -81.29     -88.11      -0.03       0.00       7.08       0.34

   47   3.2  0.5 -0.5      -0.97       2.04     269.37     -19.29     -14.15       3.44     -12.57      -0.68      -0.00       6.17
                           86.87      16.43       9.66      91.56     -58.13      50.31       0.59      -7.08      -0.00      -1.01

   48   4.2  0.5 -0.5     101.51       1.02       9.71     -18.58      83.89      90.15      -0.50       0.76      -6.17       0.00
                           11.27     -10.06     -13.64      -2.64     -10.22       4.82      -0.21      -0.34       1.01      -0.00

   49   5.2  0.5 -0.5     -68.89      -1.33      15.41      90.06     -48.84      61.92      -0.24      -7.07      -1.17       0.17
                            7.93    -238.80    -135.42       6.99      -1.95       2.17      -0.99      -0.82      -0.61      14.20

   50   6.2  0.5 -0.5     -10.85     124.37      -1.18       8.97     -16.62      19.54    -336.85     108.79      51.03    -676.29
                          -61.45     -12.58      19.24     -97.75      55.13     -61.94     -90.27    -661.22     -55.13     -26.86

   51   7.2  0.5 -0.5     -51.57     -23.84      -0.54      98.73     -43.15      69.55      12.21     643.39     117.58     143.70
                           13.17     -61.65     108.89      18.13     -11.36      10.04    -761.68      66.39      -0.87     -52.87

   52   8.2  0.5 -0.5       1.50     -12.65      -2.44     -81.65     -79.19      62.06      27.28       8.70      40.37      39.20
                          -90.53      -1.65       1.77     -11.52      87.03      96.32      -9.35     -55.53     662.47      25.43


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00     913.01    -166.42    -100.96       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     168.76     918.06      12.88       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5     117.77      16.75      94.71     -11.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.76      88.45     -15.32     -62.58       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5     -17.21     -12.46      -9.01    -109.03       0.00       0.00       0.00       0.00       0.00       0.00
                           17.03     -12.45      -1.05       5.81       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5     -68.89     -10.85     -51.57       1.50       0.00       0.00       0.00       0.00       0.00       0.00
                            7.93     -61.45      13.17     -90.53       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5      -1.33     124.37     -23.84     -12.65       0.00       0.00       0.00       0.00       0.00       0.00
                         -238.80     -12.58     -61.65      -1.65       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5      15.41      -1.18      -0.54      -2.44       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.42      19.24     108.89       1.77       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5      90.06       8.97      98.73     -81.65       0.00       0.00       0.00       0.00       0.00       0.00
                            6.99     -97.75      18.13     -11.52       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5     -48.84     -16.62     -43.15     -79.19       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.95      55.13     -11.36      87.03       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5      61.92      19.54      69.55      62.06       0.00       0.00       0.00       0.00       0.00       0.00
                            2.17     -61.94      10.04      96.32       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     527.13
                            0.00    -111.99      35.62   -1071.52       0.00       0.00      -0.00       0.00       0.00      97.43

   11   2.2  1.5  0.5       0.00       0.00       0.00       0.00     -66.48     -15.09      -7.07      36.38      67.99       9.67
                          -86.02      26.03      56.87       0.16      -2.07      50.74     -59.94     -20.50      -3.90      51.06

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.00      11.45     -76.11     -17.83      -5.78      -9.94      -7.20
                           17.49     122.34     -27.57     -16.02      11.75      -0.59      14.30    -156.82       9.83      -7.19

   13   4.2  1.5  0.5       0.00       0.00       0.00       0.00    -126.02      -9.12      -0.56      58.61     -39.77      -6.26
                         -133.12      17.75     110.39       0.67      -4.91      61.15      50.15       6.51       4.58     -35.48

   14   5.2  1.5  0.5       0.00       0.00       0.00       0.00      -1.24       0.50       1.18       0.59      -0.77      71.81
                            1.24       6.63      -1.19      74.00      -1.88       0.17       9.49      -5.81    -137.87      -7.26

   15   6.2  1.5  0.5       0.00       0.00       0.00       0.00       1.88     -31.87     155.52       5.60       8.90      -0.68
                           -0.93      16.00      -4.89     125.71      -0.70      -0.27       5.58      -7.87     -78.18      11.11

   16   7.2  1.5  0.5       0.00       0.00       0.00       0.00      -2.05     -43.46     -11.14     -10.73      52.00       5.18
                           13.45     -98.92      -8.03      10.07     -51.27      -1.92      52.86      -1.53       4.03     -56.43

   17   8.2  1.5  0.5       0.00       0.00       0.00       0.00      27.43     -40.44      -8.17      48.43     -28.20      -9.60
                         -100.74     -69.90     121.43      11.34     -44.85     -46.93     -33.56      -5.90      -1.13      31.83

   18   9.2  1.5  0.5       0.00       0.00       0.00       0.00      21.82      32.66       1.98      52.05      35.75      11.28
                          -93.83      87.93      88.39      -6.25      41.27     -50.87      29.05       2.78       1.25     -35.76

   19   1.2  1.5 -0.5       0.00     527.13     -96.08     -58.29       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -97.43    -530.04      -7.44       0.00      -0.00      -0.00      -0.00       0.00    -111.99

   20   2.2  1.5 -0.5      67.99       9.67      54.68      -6.89       0.00       0.00       0.00       0.00       0.00       0.00
                            3.90     -51.06       8.85      36.13     227.93      10.63      18.90     152.13     -86.02      26.03

   21   3.2  1.5 -0.5      -9.94      -7.20      -5.20     -62.95       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.83       7.19       0.61      -3.36     -28.92     -25.38     156.09     -14.16      17.49     122.34

   22   4.2  1.5 -0.5     -39.77      -6.26     -29.77       0.87       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.58      35.48      -7.60      52.27    -127.01     -10.10       7.81     -93.05    -133.12      17.75

   23   5.2  1.5 -0.5      -0.77      71.81     -13.76      -7.31       0.00       0.00       0.00       0.00       0.00       0.00
                          137.87       7.26      35.59       0.95     -22.72     268.96      50.21       6.10       1.24       6.63

   24   6.2  1.5 -0.5       8.90      -0.68      -0.31      -1.41       0.00       0.00       0.00       0.00       0.00       0.00
                           78.18     -11.11     -62.87      -1.02       9.88    -158.24     -26.65      -5.85      -0.93      16.00

   25   7.2  1.5 -0.5      52.00       5.18      57.00     -47.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.03      56.43     -10.47       6.65     -67.57       9.70     -92.40      96.75      13.45     -98.92

   26   8.2  1.5 -0.5     -28.20      -9.60     -24.91     -45.72       0.00       0.00       0.00       0.00       0.00       0.00
                            1.13     -31.83       6.56     -50.25      29.91      19.07     -74.12     -55.44    -100.74     -69.90

   27   9.2  1.5 -0.5      35.75      11.28      40.16      35.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.25      35.76      -5.79     -55.61     -50.51     -17.83      66.73      70.88     -93.83      87.93

   28   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     913.01
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -168.76

   29   2.2  1.5 -1.5       0.00       0.00       0.00       0.00    -115.15     -26.13     -12.24      63.01     117.77      16.75
                            0.00       0.00       0.00       0.00       3.58     -87.89     103.82      35.51       6.76     -88.45

   30   3.2  1.5 -1.5       0.00       0.00       0.00       0.00      19.84    -131.83     -30.89     -10.01     -17.21     -12.46
                            0.00       0.00       0.00       0.00     -20.35       1.02     -24.76     271.61     -17.03      12.45

   31   4.2  1.5 -1.5       0.00       0.00       0.00       0.00    -218.28     -15.80      -0.97     101.51     -68.89     -10.85
                            0.00       0.00       0.00       0.00       8.50    -105.91     -86.87     -11.27      -7.93      61.45

   32   5.2  1.5 -1.5       0.00       0.00       0.00       0.00      -2.15       0.87       2.04       1.02      -1.33     124.37
                            0.00       0.00       0.00       0.00       3.25      -0.30     -16.43      10.06     238.80      12.58

   33   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       3.25     -55.20     269.37       9.71      15.41      -1.18
                            0.00       0.00       0.00       0.00       1.21       0.47      -9.66      13.64     135.42     -19.24

   34   7.2  1.5 -1.5       0.00       0.00       0.00       0.00      -3.55     -75.28     -19.29     -18.58      90.06       8.97
                            0.00       0.00       0.00       0.00      88.80       3.33     -91.56       2.64      -6.99      97.75

   35   8.2  1.5 -1.5       0.00       0.00       0.00       0.00      47.51     -70.05     -14.15      83.89     -48.84     -16.62
                            0.00       0.00       0.00       0.00      77.68      81.29      58.13      10.22       1.95     -55.13

   36   9.2  1.5 -1.5       0.00       0.00       0.00       0.00      37.80      56.57       3.44      90.15      61.92      19.54
                            0.00       0.00       0.00       0.00     -71.48      88.11     -50.31      -4.82      -2.17      61.94

   37   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       2.52     -12.57      -0.50      -0.24    -336.85
                           -0.13     -54.05       9.33    -427.55       0.00       0.03      -0.59       0.21       0.99      90.27

   38   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -2.52      -0.00      -0.68       0.76      -7.07     108.79
                            0.76      16.75     125.74     -43.61      -0.03      -0.00       7.08       0.34       0.82     661.22

   39   3.2  0.5  0.5       0.00       0.00       0.00       0.00      12.57       0.68      -0.00      -6.17      -1.17      51.03
                           -7.11     -80.11    -648.54     -39.61       0.59      -7.08       0.00      -1.01       0.61      55.13

   40   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.50      -0.76       6.17       0.00       0.17    -676.29
                           -0.33      26.32     -38.39     634.57      -0.21      -0.34       1.01       0.00     -14.20      26.86

   41   5.2  0.5  0.5   11595.07       0.00       0.00       0.00       0.24       7.07       1.17      -0.17      -0.00     -25.61
                            0.00    -659.98      80.39      40.84      -0.99      -0.82      -0.61      14.20      -0.00      -0.44

   42   6.2  0.5  0.5       0.00   18976.18       0.00       0.00     336.85    -108.79     -51.03     676.29      25.61       0.00
                          659.98       0.00       7.30       0.24     -90.27    -661.22     -55.13     -26.86       0.44       0.00

   43   7.2  0.5  0.5       0.00       0.00   18976.20       0.00     -12.21    -643.39    -117.58    -143.70     -20.24       0.79
                          -80.39      -7.30      -0.00       0.76    -761.68      66.39      -0.87     -52.87      12.19      -0.10

   44   8.2  0.5  0.5       0.00       0.00       0.00   18976.27     -27.28      -8.70     -40.37     -39.20     664.85      -1.31
                          -40.84      -0.24      -0.76       0.00      -9.35     -55.53     662.47      25.43      40.29       7.22

   45   1.2  0.5 -0.5       0.24     336.85     -12.21     -27.28   11595.07       0.00       0.00       0.00       0.00       0.00
                            0.99      90.27     761.68       9.35      -0.00      11.61       2.11       0.93       0.13      54.05

   46   2.2  0.5 -0.5       7.07    -108.79    -643.39      -8.70       0.00   11595.07       0.00       0.00       0.00       0.00
                            0.82     661.22     -66.39      55.53     -11.61       0.00       0.44      -7.90      -0.76     -16.75

   47   3.2  0.5 -0.5       1.17     -51.03    -117.58     -40.37       0.00       0.00   11595.05       0.00       0.00       0.00
                            0.61      55.13       0.87    -662.47      -2.11      -0.44       0.00      -1.12       7.11      80.11

   48   4.2  0.5 -0.5      -0.17     676.29    -143.70     -39.20       0.00       0.00       0.00   11595.08       0.00       0.00
                          -14.20      26.86      52.87     -25.43      -0.93       7.90       1.12       0.00       0.33     -26.32

   49   5.2  0.5 -0.5      -0.00      25.61     -20.24     664.85       0.00       0.00       0.00       0.00   11595.07       0.00
                            0.00      -0.44     -12.19     -40.29      -0.13       0.76      -7.11      -0.33      -0.00     659.98

   50   6.2  0.5 -0.5     -25.61       0.00       0.79      -1.31       0.00       0.00       0.00       0.00       0.00   18976.18
                            0.44      -0.00       0.10      -7.22     -54.05      16.75     -80.11      26.32    -659.98      -0.00

   51   7.2  0.5 -0.5      20.24      -0.79       0.00      -7.18       0.00       0.00       0.00       0.00       0.00       0.00
                           12.19      -0.10      -0.00       1.33       9.33     125.74    -648.54     -38.39      80.39       7.30

   52   8.2  0.5 -0.5    -664.85       1.31       7.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.29       7.22      -1.33       0.00    -427.55     -43.61     -39.61     634.57      40.84       0.24


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

   10   1.2  1.5  0.5     -96.08     -58.29
                          530.04       7.44

   11   2.2  1.5  0.5      54.68      -6.89
                           -8.85     -36.13

   12   3.2  1.5  0.5      -5.20     -62.95
                           -0.61       3.36

   13   4.2  1.5  0.5     -29.77       0.87
                            7.60     -52.27

   14   5.2  1.5  0.5     -13.76      -7.31
                          -35.59      -0.95

   15   6.2  1.5  0.5      -0.31      -1.41
                           62.87       1.02

   16   7.2  1.5  0.5      57.00     -47.14
                           10.47      -6.65

   17   8.2  1.5  0.5     -24.91     -45.72
                           -6.56      50.25

   18   9.2  1.5  0.5      40.16      35.83
                            5.79      55.61

   19   1.2  1.5 -0.5       0.00       0.00
                           35.62   -1071.52

   20   2.2  1.5 -0.5       0.00       0.00
                           56.87       0.16

   21   3.2  1.5 -0.5       0.00       0.00
                          -27.57     -16.02

   22   4.2  1.5 -0.5       0.00       0.00
                          110.39       0.67

   23   5.2  1.5 -0.5       0.00       0.00
                           -1.19      74.00

   24   6.2  1.5 -0.5       0.00       0.00
                           -4.89     125.71

   25   7.2  1.5 -0.5       0.00       0.00
                           -8.03      10.07

   26   8.2  1.5 -0.5       0.00       0.00
                          121.43      11.34

   27   9.2  1.5 -0.5       0.00       0.00
                           88.39      -6.25

   28   1.2  1.5 -1.5    -166.42    -100.96
                         -918.06     -12.88

   29   2.2  1.5 -1.5      94.71     -11.93
                           15.32      62.58

   30   3.2  1.5 -1.5      -9.01    -109.03
                            1.05      -5.81

   31   4.2  1.5 -1.5     -51.57       1.50
                          -13.17      90.53

   32   5.2  1.5 -1.5     -23.84     -12.65
                           61.65       1.65

   33   6.2  1.5 -1.5      -0.54      -2.44
                         -108.89      -1.77

   34   7.2  1.5 -1.5      98.73     -81.65
                          -18.13      11.52

   35   8.2  1.5 -1.5     -43.15     -79.19
                           11.36     -87.03

   36   9.2  1.5 -1.5      69.55      62.06
                          -10.04     -96.32

   37   1.2  0.5  0.5      12.21      27.28
                          761.68       9.35

   38   2.2  0.5  0.5     643.39       8.70
                          -66.39      55.53

   39   3.2  0.5  0.5     117.58      40.37
                            0.87    -662.47

   40   4.2  0.5  0.5     143.70      39.20
                           52.87     -25.43

   41   5.2  0.5  0.5      20.24    -664.85
                          -12.19     -40.29

   42   6.2  0.5  0.5      -0.79       1.31
                            0.10      -7.22

   43   7.2  0.5  0.5       0.00       7.18
                            0.00       1.33

   44   8.2  0.5  0.5      -7.18      -0.00
                           -1.33      -0.00

   45   1.2  0.5 -0.5       0.00       0.00
                           -9.33     427.55

   46   2.2  0.5 -0.5       0.00       0.00
                         -125.74      43.61

   47   3.2  0.5 -0.5       0.00       0.00
                          648.54      39.61

   48   4.2  0.5 -0.5       0.00       0.00
                           38.39    -634.57

   49   5.2  0.5 -0.5       0.00       0.00
                          -80.39     -40.84

   50   6.2  0.5 -0.5       0.00       0.00
                           -7.30      -0.24

   51   7.2  0.5 -0.5   18976.20       0.00
                            0.00      -0.76

   52   8.2  0.5 -0.5       0.00   18976.27
                            0.76      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.02280762    -0.00043714      -95.94      0.00000000        0.00      0.0000
     2  -332.02280762    -0.00043714      -95.94      0.00000000        0.00      0.0000
     3  -332.02280762    -0.00043714      -95.94      0.00000000        0.00      0.0000
     4  -332.02280762    -0.00043714      -95.94      0.00000000        0.00      0.0000
     5  -331.97093982     0.05143066    11287.73      0.05186780    11383.67      1.4114
     6  -331.97093982     0.05143066    11287.73      0.05186780    11383.67      1.4114
     7  -331.97093976     0.05143072    11287.74      0.05186786    11383.68      1.4114
     8  -331.97093976     0.05143072    11287.74      0.05186786    11383.68      1.4114
     9  -331.96949555     0.05287493    11604.71      0.05331207    11700.65      1.4507
    10  -331.96949555     0.05287493    11604.71      0.05331207    11700.65      1.4507
    11  -331.96949550     0.05287498    11604.72      0.05331213    11700.66      1.4507
    12  -331.96949550     0.05287498    11604.72      0.05331213    11700.66      1.4507
    13  -331.96949545     0.05287503    11604.73      0.05331217    11700.67      1.4507
    14  -331.96949545     0.05287503    11604.73      0.05331217    11700.67      1.4507
    15  -331.93598678     0.08638370    18959.03      0.08682084    19054.97      2.3625
    16  -331.93598678     0.08638370    18959.03      0.08682084    19054.97      2.3625
    17  -331.93417208     0.08819840    19357.31      0.08863555    19453.25      2.4119
    18  -331.93417208     0.08819840    19357.31      0.08863555    19453.25      2.4119
    19  -331.93417183     0.08819865    19357.37      0.08863579    19453.31      2.4119
    20  -331.93417183     0.08819865    19357.37      0.08863579    19453.31      2.4119
    21  -331.74776734     0.27460314    60268.42      0.27504028    60364.36      7.4842
    22  -331.74776734     0.27460314    60268.42      0.27504028    60364.36      7.4842
    23  -331.74630289     0.27606759    60589.83      0.27650473    60685.77      7.5241
    24  -331.74630289     0.27606759    60589.83      0.27650473    60685.77      7.5241
    25  -331.74630289     0.27606759    60589.83      0.27650473    60685.77      7.5241
    26  -331.74630289     0.27606759    60589.83      0.27650473    60685.77      7.5241
    27  -331.74335976     0.27901073    61235.78      0.27944787    61331.72      7.6042
    28  -331.74335976     0.27901073    61235.78      0.27944787    61331.72      7.6042
    29  -331.74335975     0.27901073    61235.78      0.27944787    61331.72      7.6042
    30  -331.74335975     0.27901073    61235.78      0.27944787    61331.72      7.6042
    31  -331.74335961     0.27901087    61235.81      0.27944801    61331.75      7.6042
    32  -331.74335961     0.27901087    61235.81      0.27944801    61331.75      7.6042
    33  -331.74062935     0.28174113    61835.03      0.28217828    61930.97      7.6785
    34  -331.74062935     0.28174113    61835.03      0.28217828    61930.97      7.6785
    35  -331.73832627     0.28404421    62340.50      0.28448135    62436.44      7.7411
    36  -331.73832627     0.28404421    62340.50      0.28448135    62436.44      7.7411
    37  -331.73832627     0.28404421    62340.50      0.28448136    62436.44      7.7411
    38  -331.73832627     0.28404421    62340.50      0.28448136    62436.44      7.7411
    39  -331.73818941     0.28418107    62370.54      0.28461821    62466.48      7.7449
    40  -331.73818941     0.28418107    62370.54      0.28461821    62466.48      7.7449
    41  -331.73818934     0.28418114    62370.55      0.28461828    62466.49      7.7449
    42  -331.73818934     0.28418114    62370.55      0.28461828    62466.49      7.7449
    43  -331.73818934     0.28418114    62370.55      0.28461828    62466.49      7.7449
    44  -331.73818934     0.28418114    62370.55      0.28461828    62466.49      7.7449
    45  -331.73818930     0.28418119    62370.56      0.28461833    62466.50      7.7449
    46  -331.73818930     0.28418119    62370.56      0.28461833    62466.50      7.7449
    47  -331.73504804     0.28732244    63059.99      0.28775958    63155.93      7.8303
    48  -331.73504804     0.28732244    63059.99      0.28775958    63155.93      7.8303
    49  -331.73504804     0.28732244    63059.99      0.28775958    63155.93      7.8303
    50  -331.73504804     0.28732244    63059.99      0.28775958    63155.93      7.8303
    51  -331.73504803     0.28732245    63059.99      0.28775959    63155.93      7.8303
    52  -331.73504803     0.28732245    63059.99      0.28775959    63155.93      7.8303


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.988076869   0.000051826   0.004352493  -0.136653292   0.000053696  -0.015457321   0.000000000  -0.015347005
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000004503   0.000008955   0.000055729   0.000026928  -0.000342607  -0.000068308  -0.000385488   0.000099261
                         0.000006502   0.000017262   0.000127089   0.000051045   0.001468960  -0.001799284  -0.001463272   0.001817363

    3    3.2  1.5  1.5  -0.000016026   0.000014959   0.000112930  -0.000094880   0.002033916   0.000320127  -0.002297790  -0.000389668
                        -0.000002046  -0.000004219  -0.000022992  -0.000015528   0.001030914   0.000437474   0.000042172  -0.000437008

    4    4.2  1.5  1.5  -0.000002940  -0.000001833  -0.000016717  -0.000013214  -0.001056009  -0.000151688   0.000221998   0.000112436
                        -0.000018852   0.000008410   0.000064110  -0.000134261   0.001515862   0.001445016  -0.001852026  -0.001450115

    5    5.2  1.5  1.5   0.000088951   0.000009742   0.000070291   0.000085503   0.000342914  -0.000800147  -0.000314550   0.003199458
                        -0.000004908  -0.000005920  -0.000037018  -0.000036608   0.000025050   0.000058108   0.000138112  -0.000058431

    6    6.2  1.5  1.5   0.000121780  -0.000005513  -0.000038946  -0.000076256  -0.000180311   0.003217110   0.000147474   0.000841960
                         0.000002617   0.000003333   0.000020862   0.000019567   0.000006276   0.000000856  -0.000085431  -0.000000843

    7    7.2  1.5  1.5  -0.000190802   0.000235332   0.001726545  -0.001324520  -0.000164936  -0.000033826   0.000225881   0.000033485
                        -0.004457813   0.000029394   0.000317968   0.000163944  -0.000168794   0.000442134   0.000070853   0.000496356

    8    8.2  1.5  1.5  -0.000196012   0.000180838   0.001479255  -0.001370089  -0.000312829  -0.000057448   0.000227531   0.000056759
                         0.002300025  -0.000280988  -0.001980068   0.001123621   0.000108811  -0.000199344  -0.000243878  -0.000248175

    9    9.2  1.5  1.5   0.000130491  -0.000199893  -0.001369036   0.000899840   0.000021148   0.000008617  -0.000157375  -0.000008604
                        -0.003063250  -0.000219598  -0.001738477   0.001952133   0.000291917   0.000406474  -0.000250907   0.000294427

   10    1.2  1.5  0.5   0.005160630   0.014008714   0.051771193   0.038968392   0.007649344   0.001241515  -0.000670936  -0.001223681
                        -0.088214430   0.103384753   0.772057604  -0.613208116  -0.012993673  -0.002576502   0.015181575   0.002549606

   11    2.2  1.5  0.5   0.000071613  -0.000115867   0.000016795  -0.000009416   0.001800797   0.001134778   0.002044838   0.001118085
                         0.000018161   0.000060866  -0.000008090  -0.000002110   0.000994735   0.000285394   0.000064280   0.000285066

   12    3.2  1.5  0.5  -0.000006149   0.000016687  -0.000002250   0.000000869  -0.000230416  -0.000100727  -0.000265996  -0.000093382
                         0.000148949  -0.000005034   0.000003086  -0.000022072  -0.000151748   0.002353731  -0.000090949   0.002324971

   13    4.2  1.5  0.5   0.000132020   0.000063014  -0.000008358  -0.000018500  -0.001011162   0.002073171  -0.001121687   0.002064935
                        -0.000002922  -0.000034386   0.000005101  -0.000000198  -0.000521417  -0.000043208  -0.000025942  -0.000047106

   14    5.2  1.5  0.5   0.000000844   0.000060248  -0.000011421  -0.000003407   0.001576963   0.000119100  -0.000020091  -0.000075224
                         0.000005234   0.000106321  -0.000075695   0.000046846  -0.002793477  -0.000229815  -0.000851956   0.000173186

   15    6.2  1.5  0.5  -0.000000887  -0.000036005  -0.000002684  -0.000004954   0.000406262   0.000158516  -0.000138066  -0.000164917
                         0.000015033  -0.000081404  -0.000091639   0.000080305  -0.000684286  -0.000282358   0.003191096   0.000390669

   16    7.2  1.5  0.5  -0.000731605   0.000089341   0.000790435  -0.001010688  -0.000148641   0.000101070   0.000146023   0.000021442
                        -0.002451439  -0.000243880  -0.001660534  -0.001780760  -0.000029713  -0.000043218  -0.000043406   0.000508778

   17    8.2  1.5  0.5   0.002109344  -0.000395297  -0.002750166  -0.002581483   0.000115695  -0.000540455  -0.000142255   0.000028543
                        -0.002187095  -0.000044644  -0.000483198  -0.000688782   0.000086894  -0.000017042  -0.000023510   0.000457895

   18    9.2  1.5  0.5   0.002016603  -0.000005928  -0.000080477  -0.002469605  -0.000042240  -0.000543565   0.000081860   0.000051431
                         0.001870057   0.000248753   0.001733766   0.001808912  -0.000090317   0.000016893   0.000059465  -0.000359649

   19    1.2  1.5 -0.5   0.098149576   0.075835635   0.545089775   0.727064504  -0.002853706   0.015075995   0.002582465  -0.015194321
                        -0.035373843  -0.045358312  -0.283583962  -0.264821468  -0.000189966  -0.000249776  -0.001152719   0.000250925

   20    2.2  1.5 -0.5   0.000000405  -0.000049211   0.000005737  -0.000000609  -0.000311107   0.000022275   0.000254044  -0.000007718
                        -0.000130880  -0.000055105   0.000007759   0.000018632   0.001128000  -0.002057151   0.001125540  -0.002045834

   21    3.2  1.5 -0.5   0.000003251  -0.000129233   0.000019836   0.000001912   0.002097509   0.000018439   0.002326665   0.000083560
                         0.000017124   0.000074312  -0.000009719  -0.000003306   0.001072684   0.000275280  -0.000029063   0.000268409

   22    4.2  1.5 -0.5  -0.000001359  -0.000058443   0.000007661   0.000001285  -0.001059606  -0.000044816  -0.000104182  -0.000005082
                         0.000071772  -0.000118416   0.000016840  -0.000009707   0.001782453   0.001136801   0.002062843   0.001121976

   23    5.2  1.5 -0.5   0.000122130  -0.000005031  -0.000041468  -0.000073849  -0.000258662   0.003207850   0.000175200   0.000851074
                         0.000004270   0.000001671   0.000022058   0.000020160  -0.000009670   0.000005073  -0.000070407   0.000043639

   24    6.2  1.5 -0.5  -0.000088828  -0.000012920  -0.000071445  -0.000084899  -0.000323808   0.000795635   0.000395080  -0.003193693
                         0.000005708   0.000007737   0.000037001   0.000034599  -0.000001278  -0.000016133  -0.000154052   0.000049783

   25    7.2  1.5 -0.5  -0.000174950   0.002511965   0.002037360  -0.001199138  -0.000087427  -0.000047424   0.000507991   0.000047427
                         0.000191968  -0.000484593   0.000204357   0.001394356   0.000066631   0.000143972   0.000035501  -0.000144767

   26    8.2  1.5 -0.5  -0.000222336   0.000964171   0.001673758  -0.001553934   0.000251601  -0.000018568   0.000456931   0.000019568
                        -0.000329878  -0.002881508   0.002082549  -0.002319954  -0.000478621  -0.000143496   0.000041192   0.000142851

   27    9.2  1.5 -0.5   0.000217833  -0.002590508  -0.000655894   0.001553179   0.000282659   0.000057757  -0.000360934  -0.000057179
                        -0.000120257  -0.000923617   0.002990136  -0.000774632  -0.000464599   0.000081275   0.000041467  -0.000083472

   28    1.2  1.5 -1.5  -0.000023959   0.456796282  -0.055254072  -0.001759877  -0.007620010  -0.000026471  -0.000424328  -0.000000000
                        -0.000045955   0.876146706  -0.124984460  -0.003980833   0.013448577   0.000046718   0.015341137  -0.000000000

   29    2.2  1.5 -1.5  -0.000019447   0.000007848   0.000057574  -0.000138771   0.001531786   0.001446958  -0.001813923  -0.001452054
                         0.000000040   0.000000987   0.000003989   0.000000416   0.000946426   0.000426071  -0.000149471  -0.000425799

   30    3.2  1.5 -1.5  -0.000003175  -0.000009223  -0.000052566  -0.000024633  -0.000222809  -0.000105719   0.000426067   0.000105687
                        -0.000015215  -0.000013264  -0.000080499  -0.000112583  -0.000494187   0.002277811   0.000401601  -0.002295745

   31    4.2  1.5 -1.5  -0.000006610  -0.000018075  -0.000128139  -0.000051876  -0.001332008   0.001839452   0.001452669  -0.001857456
                         0.000005513   0.000006108   0.000042201   0.000041212  -0.000580375  -0.000171500  -0.000072299   0.000170707

   32    5.2  1.5 -1.5   0.000000745   0.000036771   0.000001090   0.000005436  -0.000445005  -0.000147252   0.000146871   0.000146756
                        -0.000011375   0.000081144   0.000093004  -0.000079257   0.000667519   0.000310699  -0.003196620  -0.000310611

   33    6.2  1.5 -1.5  -0.000000407   0.000058620  -0.000012937  -0.000003334   0.001585197   0.000094349   0.000024122  -0.000089476
                         0.000006429   0.000106775  -0.000077656   0.000044055  -0.002799455  -0.000153785  -0.000841615   0.000145056

   34    7.2  1.5 -1.5  -0.000134860  -0.004041038  -0.000385608  -0.000988924  -0.000401352  -0.000065550  -0.000495241   0.000064581
                        -0.000195085   0.001891697  -0.001277708  -0.001450548  -0.000188529  -0.000226713  -0.000047196   0.000227754

   35    8.2  1.5 -1.5   0.000165554   0.001948858   0.000473696   0.001212872   0.000145118   0.000248886   0.000249650  -0.000250075
                        -0.000290256  -0.001237129  -0.001707419  -0.002153557   0.000148254  -0.000218535  -0.000049875   0.000220701

   36    9.2  1.5 -1.5   0.000287134  -0.002655916   0.002149280   0.002143581  -0.000349403   0.000243556  -0.000294552  -0.000246460
                         0.000075727   0.001531876   0.000033682   0.000549202  -0.000207877   0.000162306   0.000000460  -0.000164252

   37    1.2  0.5  0.5  -0.000008213  -0.001714907   0.000376548   0.000151341  -0.328606174  -0.026243151  -0.031380242   0.020986387
                        -0.000319432  -0.003930882   0.002984478  -0.001961775   0.507302293   0.044130533   0.118814460  -0.048155785

   38    2.2  0.5  0.5   0.000436419  -0.005008723   0.000217653  -0.000709086   0.338531430   0.111296611   0.440967513  -0.027527894
                        -0.000003442   0.002351036   0.000243658   0.000024059   0.252218821   0.004305067   0.001927212  -0.004322358

   39    3.2  0.5  0.5  -0.002239352  -0.000504447   0.002808700   0.003933077   0.137942975  -0.581885442   0.018936542   0.154793990
                         0.000017284   0.000394194  -0.001107940  -0.001185332   0.055880854  -0.000803125   0.003895459   0.028485165

   40    4.2  0.5  0.5  -0.000116723  -0.001647968  -0.000023734  -0.000101456   0.072135239   0.007594428  -0.010485457  -0.023427067
                         0.000226745  -0.003193194  -0.003387474   0.002636646  -0.087687425  -0.051385768   0.607298328   0.027613261

   41    5.2  0.5  0.5  -0.000307247  -0.000132318  -0.001212962  -0.001042141   0.012851383  -0.030511848   0.029842010   0.004527582
                        -0.003272246  -0.000128132  -0.002597276  -0.003357989  -0.068528614   0.154639023   0.029802109  -0.595284688

   42    6.2  0.5  0.5  -0.051273839  -0.001742195  -0.012324043  -0.018711966   0.000119783  -0.037985400  -0.001470891  -0.144933918
                         0.009290801   0.000793104   0.004840693   0.002190918   0.003046651   0.026511494  -0.002798267   0.007169950

   43    7.2  0.5  0.5   0.008389633  -0.001083052  -0.006611733  -0.003785433  -0.000629257   0.007557307   0.005865177   0.025776964
                         0.045160555  -0.002332974  -0.016451413  -0.028356003  -0.011786957   0.143830327   0.009757666   0.039299294

   44    8.2  0.5  0.5   0.000566698   0.006089451   0.045452204  -0.033422143   0.091415106   0.022354718  -0.106498457  -0.001938848
                         0.000233714  -0.000965789  -0.004029110  -0.003411944   0.053125274   0.010748683  -0.004105104  -0.008055009

   45    1.2  0.5 -0.5   0.004278405  -0.000287044  -0.001733066  -0.002881886  -0.051332694   0.603369511   0.048717626   0.119636667
                        -0.000296639   0.000140393   0.000931637   0.000862342   0.001077673  -0.035817131  -0.019646908  -0.028083151

   46    2.2  0.5 -0.5   0.000230866   0.000198708  -0.000264706  -0.000310857   0.051120388   0.052555766   0.003559589  -0.010265811
                         0.005528234   0.000388572  -0.000658264  -0.000100547  -0.098955419   0.418874390   0.027636879   0.440852215

   47    3.2  0.5 -0.5  -0.000116329  -0.001019945   0.000506175  -0.000122330  -0.286153853  -0.019382976  -0.024194385   0.003370394
                         0.000629542  -0.001993666   0.004076505  -0.003016846   0.506662891   0.147564340  -0.155522396   0.019037008

   48    4.2  0.5 -0.5   0.003593336   0.000147097   0.002370480   0.003107814   0.048451803  -0.111852650  -0.028250438   0.607356067
                        -0.000014956  -0.000208327  -0.001158888  -0.001347976   0.018724190   0.019533609   0.022654633   0.006309709

   49    5.2  0.5 -0.5   0.000174789  -0.003043606  -0.003492626   0.002865941  -0.149584484  -0.065958390   0.595182290   0.028965616
                         0.000058092   0.001240345   0.000404609   0.000059210  -0.049685838  -0.022601323   0.011933142   0.030654598

   50    6.2  0.5 -0.5   0.000102171  -0.015465997  -0.005562115   0.000555729  -0.041791912   0.002591676  -0.011174479  -0.002756528
                         0.001911496  -0.049760712  -0.018000017   0.013228965   0.019979641   0.001606127   0.144680267  -0.001547698

   51    7.2  0.5 -0.5   0.002569397   0.043923328  -0.027465272   0.017719996  -0.121413437  -0.009944987  -0.038571564   0.009591769
                        -0.000118190  -0.013438858   0.008003204  -0.000604769  -0.077479373  -0.006358109  -0.026853693   0.006132724

   52    8.2  0.5 -0.5  -0.001958821   0.000469227  -0.016634426  -0.014692971   0.001668380   0.001156430   0.007998322  -0.001158965
                        -0.005846125   0.000394453  -0.029188643  -0.043200152  -0.024748417   0.105724543   0.002160819  -0.106571244


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000000  -0.000000324  -0.000000008   0.000000031   0.000000002  -0.000000302  -0.000000013   0.000001538
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000275334   0.000229637  -0.000127609  -0.000286052  -0.000334005   0.000167428   0.000397472  -0.000900528
                        -0.000507312   0.001027230  -0.002216924  -0.001455882  -0.000617520  -0.001562734   0.001831515  -0.001866964

    3    3.2  1.5  1.5  -0.001019016   0.001226691   0.001247722   0.000645301  -0.004655744   0.000796364   0.001335579   0.000763002
                         0.000202810  -0.000292128  -0.000129047   0.000021637  -0.001208243   0.000155158   0.000037595   0.000334881

    4    4.2  1.5  1.5  -0.000620134  -0.000181088  -0.000668436   0.000052207   0.000313033  -0.000089371  -0.000455587   0.000487930
                        -0.001940382  -0.000219002  -0.004224947  -0.000302217  -0.000279058   0.000877661   0.000555082   0.001806266

    5    5.2  1.5  1.5  -0.000882552  -0.001338487   0.000719606  -0.001749807  -0.000450705  -0.002619218   0.001125366  -0.002181838
                         0.000454217  -0.000033586  -0.000201854   0.000425967  -0.000314527  -0.000224639  -0.000353446   0.000972934

    6    6.2  1.5  1.5  -0.002424919  -0.004271970   0.001081264  -0.000726451  -0.000447385  -0.000885675  -0.000642275   0.001303672
                         0.001212672   0.000318417  -0.000182854   0.000081628  -0.000384657  -0.000146333   0.000198565  -0.000533302

    7    7.2  1.5  1.5   0.000028798  -0.000019803   0.001942262   0.000327864  -0.000591951   0.000225395   0.000949660   0.000500324
                        -0.001089616  -0.001738358  -0.000186120  -0.000724962   0.000103833  -0.000860608   0.000454162   0.000173936

    8    8.2  1.5  1.5   0.000743679   0.000220542   0.002037274   0.000557351  -0.000259754   0.000117712   0.001155073   0.000525411
                         0.000210879   0.001089749   0.000927550   0.000620869  -0.001766366   0.000654202  -0.000930750  -0.000530182

    9    9.2  1.5  1.5  -0.000669936  -0.000065903  -0.001094770  -0.000322827   0.001035914  -0.000003292  -0.000534739  -0.000334867
                        -0.000575401  -0.000746088   0.001946768   0.000055725  -0.001738458  -0.000236752  -0.001203927  -0.000571989

   10    1.2  1.5  0.5   0.000000165   0.000000064   0.000000012   0.000000003  -0.000000165  -0.000000036  -0.000000873  -0.000000681
                         0.000000579  -0.000000328   0.000000071   0.000000020   0.000000569  -0.000000071   0.000006084   0.000001915

   11    2.2  1.5  0.5  -0.002745225   0.001533746  -0.001977593  -0.000893228   0.003065103  -0.002214793  -0.000502355   0.000932225
                         0.001026226  -0.000218107   0.000255731   0.000394145   0.000706287   0.000355123   0.000286719  -0.000723357

   12    3.2  1.5  0.5  -0.000118351  -0.000509956   0.000220742   0.000495495  -0.000491945   0.000083270   0.000386120  -0.001029483
                        -0.001152479  -0.002267703  -0.000048881   0.001314902   0.000236156   0.002202776   0.001169280  -0.002116491

   13    4.2  1.5  0.5   0.001735769   0.000008599   0.001507085  -0.001637145  -0.002216249  -0.002143445  -0.001020472   0.001943705
                        -0.000710851  -0.000229254  -0.000224914   0.000450328  -0.000630624  -0.000354222   0.000306539  -0.000778251

   14    5.2  1.5  0.5   0.000640472  -0.000094115  -0.000721179  -0.000305987   0.000036737   0.000076050   0.000244954   0.000080138
                         0.001383969  -0.001784969  -0.004464779  -0.001581550   0.000018172   0.000106012  -0.001379065  -0.000684892

   15    6.2  1.5  0.5  -0.000664243   0.000053233   0.000309747   0.000188291   0.000535210  -0.000045262   0.000450101   0.000064390
                        -0.002017447   0.001573022   0.001254946   0.000816290  -0.002012462   0.000295380  -0.002312375  -0.001242950

   16    7.2  1.5  0.5   0.001651271  -0.000186145   0.001120225   0.000297563   0.001851443   0.000059298  -0.001360367  -0.000600024
                         0.000511572   0.001667934  -0.000405977  -0.000168721   0.000639637  -0.000235334  -0.000559884   0.000549994

   17    8.2  1.5  0.5  -0.000625085  -0.000363306  -0.000208170  -0.001163717  -0.001258078  -0.001407047   0.000248413   0.001147160
                         0.001255027   0.001531890  -0.000309575   0.000135493  -0.000439024  -0.000399038  -0.000051037   0.000277419

   18    9.2  1.5  0.5  -0.000000994  -0.001251384   0.001390256  -0.000841024   0.001163366  -0.001700259  -0.001244737  -0.000109915
                        -0.000605504  -0.001214034   0.000021359   0.000330105   0.000220974   0.000060074   0.000110113  -0.000683147

   19    1.2  1.5 -0.5   0.000000267   0.000000593   0.000000020  -0.000000070  -0.000000053  -0.000000590  -0.000001720   0.000005745
                        -0.000000201  -0.000000104  -0.000000005   0.000000015  -0.000000059  -0.000000052   0.000001083  -0.000002183

   20    2.2  1.5 -0.5  -0.000473717  -0.000275918   0.000028224   0.000508873   0.001130225   0.000447056   0.000501809   0.000169831
                        -0.001474971  -0.002917751  -0.000975916   0.001928035  -0.001937527  -0.003113493  -0.001067931  -0.000552925

   21    3.2  1.5 -0.5   0.002262689  -0.001088425   0.001404678  -0.000037967   0.002024394  -0.000397729   0.002290484   0.001225437
                        -0.000531761   0.000396922  -0.000036916  -0.000222879   0.000872345   0.000373619   0.000541342   0.000120868

   22    4.2  1.5 -0.5   0.000202473   0.000118702  -0.000200262  -0.000359992   0.000442910  -0.000211388   0.000334014   0.000075782
                        -0.000107871   0.001871928  -0.001686100  -0.001480640  -0.002126890   0.002294507  -0.002066905  -0.001062820

   23    5.2  1.5 -0.5   0.001646805   0.001524720  -0.001580181   0.004407126   0.000071437  -0.000003695   0.000650752  -0.001292028
                        -0.000694986  -0.000028351   0.000312984  -0.001015671   0.000109174  -0.000040819  -0.000228081   0.000540819

   24    6.2  1.5 -0.5  -0.001438288  -0.002104958   0.000827032  -0.001279105   0.000291817   0.002070022   0.001198729  -0.002157819
                         0.000639187   0.000283662  -0.000133421   0.000186344   0.000064348   0.000226857  -0.000334844   0.000945244

   25    7.2  1.5 -0.5  -0.001419110   0.001181444  -0.000044059  -0.000046416  -0.000240878   0.000071372  -0.000405349  -0.000844023
                         0.000895979   0.001261979   0.000339218  -0.001190617  -0.000029595  -0.001957520   0.000705843  -0.001204863

   26    8.2  1.5 -0.5  -0.001219349   0.000855951  -0.000313333   0.000365220   0.000135446  -0.000044411  -0.000521746   0.000004565
                         0.000995925  -0.001110483  -0.001128901   0.000076065  -0.001456250   0.001331740  -0.001058640   0.000253560

   27    9.2  1.5 -0.5   0.001638690  -0.000545125  -0.000011404  -0.000544030   0.000669421   0.000213607   0.000690642  -0.000164962
                         0.000595429   0.000263582  -0.000903416  -0.001279570  -0.001564086  -0.001164741  -0.000042253  -0.001238662

   28    1.2  1.5 -1.5  -0.000000142  -0.000000000  -0.000000012  -0.000000003  -0.000000109  -0.000000001   0.000000337   0.000000003
                        -0.000000291   0.000000000  -0.000000029  -0.000000007   0.000000282   0.000000002   0.000001500   0.000000013

   29    2.2  1.5 -1.5   0.001024363   0.000576623   0.001456272  -0.002101386   0.001517896  -0.000455438  -0.002018785  -0.001874103
                        -0.000242106   0.000026095  -0.000284060   0.000717785   0.000407625  -0.000534291  -0.000470122   0.000012982

   30    3.2  1.5 -1.5   0.000273013   0.000262651  -0.000263374   0.000350979   0.000142590   0.000552749   0.000493743  -0.000328969
                         0.001231087   0.001005257  -0.000589505   0.001204275  -0.000798710  -0.004778103   0.000671219  -0.001294976

   31    4.2  1.5 -1.5  -0.000276103   0.002016367   0.000260220  -0.004165110  -0.000850799  -0.000373197   0.001869263  -0.000441923
                        -0.000067244  -0.000289680  -0.000162315   0.000974083  -0.000233276   0.000191279   0.000080809   0.000566021

   32    5.2  1.5 -1.5  -0.000614845  -0.000023112   0.000265309   0.000084401  -0.000735409  -0.000130748   0.000471863   0.000098596
                        -0.001189387   0.000992309   0.001781259   0.000742599   0.002523874  -0.000533823  -0.002341871  -0.001175437

   33    6.2  1.5 -1.5  -0.001579498  -0.000031709   0.000198334   0.000238376  -0.000183041  -0.000197353  -0.000235071  -0.000053192
                        -0.003981997   0.002711052   0.000703603   0.001070395   0.000878823  -0.000556027   0.001388781   0.000670161

   34    7.2  1.5 -1.5  -0.001572417   0.000967602   0.000547810   0.000560022   0.000883966   0.000310395   0.000279214  -0.000650982
                         0.000741476  -0.000501835  -0.000577034   0.001869064   0.000100260  -0.000514628   0.000450131  -0.000827248

   35    8.2  1.5 -1.5   0.001076630  -0.000514528  -0.000785205   0.001627306  -0.000567680  -0.001553703  -0.000402346   0.000655406
                        -0.000277595  -0.000576879  -0.000282084   0.001537110  -0.000345797  -0.000879503   0.000628703  -0.001330764

   36    9.2  1.5 -1.5  -0.000699940   0.000810229   0.000070123   0.001390229   0.000219621  -0.001995106  -0.000631408   0.001291768
                         0.000266597   0.000351325   0.000320008  -0.001748053   0.000088482   0.000338979  -0.000201572   0.000258302

   37    1.2  0.5  0.5  -0.140001554  -0.029152278  -0.131436153  -0.023135689   0.016675179  -0.022745712  -0.000001207  -0.000000667
                        -0.422051861   0.148997367  -0.585525468  -0.074782440   0.104939710  -0.033691400   0.000003976   0.000001778

   38    2.2  0.5  0.5  -0.207305410   0.097976808   0.628737708   0.212975653  -0.264189771   0.055158354  -0.000002306  -0.000001581
                         0.046446109   0.004763229  -0.154060328  -0.049106761  -0.074292095   0.003818359   0.000000807   0.000000850

   39    3.2  0.5  0.5   0.306648753   0.676963036   0.007027624  -0.010648185  -0.029625010  -0.093250876  -0.000003362   0.000007773
                        -0.175709211  -0.078474324   0.000316450  -0.000879099  -0.014069740  -0.025128200   0.000002058  -0.000002637

   40    4.2  0.5  0.5   0.015040894   0.010692208   0.002747146   0.000887757  -0.212405522  -0.017968084   0.000000871   0.000001114
                         0.103524537  -0.075998954   0.030840600   0.007940220   0.725246536  -0.103431989  -0.000010420  -0.000003566

   41    5.2  0.5  0.5   0.119369696   0.035783994  -0.033727730   0.087656699  -0.058231850  -0.055822896   0.000001496  -0.000003065
                         0.171991308   0.270345003  -0.148214060   0.367252622   0.063471624   0.552751892   0.000003427  -0.000010615

   42    6.2  0.5  0.5   0.000000538   0.000000266  -0.000000015  -0.000000200  -0.000000532  -0.000003619  -0.203816153   0.527055108
                        -0.000000389   0.000000445   0.000000006  -0.000000047  -0.000000331  -0.000000229   0.038878369  -0.111956342

   43    7.2  0.5  0.5   0.000000668   0.000000291   0.000000019  -0.000000071   0.000000386   0.000000832  -0.046740350   0.107700540
                         0.000000957   0.000004073   0.000000198  -0.000000654  -0.000000124  -0.000000179  -0.260771852   0.501551766

   44    8.2  0.5  0.5  -0.000004092   0.000002203  -0.000000862  -0.000000253  -0.000004022   0.000000919   0.529535976   0.208789482
                         0.000001223   0.000000571   0.000000149   0.000000038  -0.000001160  -0.000000235   0.083291661   0.047819652

   45    1.2  0.5 -0.5   0.121299605   0.440814008   0.077986005  -0.591863550   0.023216688   0.091856961   0.000001589  -0.000003616
                        -0.091304306  -0.058405640  -0.006771747   0.099060964   0.033368597   0.053410702  -0.000001040   0.000002048

   46    2.2  0.5 -0.5   0.047079706   0.048766719  -0.034828820   0.094401743   0.016337934   0.026021129   0.000000483  -0.000000283
                         0.086056055   0.206771809  -0.215770841   0.640417053  -0.052821357  -0.273200386  -0.000001729   0.000002427

   47    3.2  0.5 -0.5   0.225094977   0.024122167   0.004829497   0.002943116  -0.010205572  -0.002434603  -0.000000872  -0.000001273
                         0.643249115  -0.352597937   0.009530615   0.006389500   0.096036443  -0.032705833   0.000008162   0.000003731

   48    4.2  0.5 -0.5  -0.063695840  -0.099696758  -0.007688817   0.029599790   0.089984340   0.753034619  -0.000003236   0.000009977
                         0.042813599   0.031687767   0.002171935  -0.009085252   0.054072608   0.063541380   0.000001867  -0.000003130

   49    5.2  0.5 -0.5   0.258822998  -0.206856439  -0.373195426  -0.149990860  -0.535666877   0.080205221  -0.000011029  -0.000003671
                        -0.085892783  -0.032257526   0.057300607   0.024651763  -0.147349407  -0.031412067  -0.000000668  -0.000000710

   50    6.2  0.5 -0.5   0.000000516   0.000000115   0.000000119  -0.000000000  -0.000001092  -0.000000117   0.006101359   0.006668381
                         0.000000045  -0.000000654   0.000000168  -0.000000016   0.000003458  -0.000000616   0.538780181   0.207383907

   51    7.2  0.5 -0.5   0.000003791  -0.000001153   0.000000633   0.000000191   0.000000467  -0.000000255   0.512963689   0.264679529
                        -0.000001517  -0.000000182  -0.000000181  -0.000000057  -0.000000712   0.000000315  -0.004672697  -0.011461496

   52    8.2  0.5 -0.5   0.000001476   0.000000688   0.000000060  -0.000000187   0.000000551   0.000000369   0.092353187  -0.197159369
                         0.000001733   0.000004215   0.000000249  -0.000000854  -0.000000772  -0.000004169   0.193263178  -0.498471698


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.000036784   0.066157183  -0.000044126  -0.010313738  -0.000000005   0.000000000   0.001446448   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000019649  -0.000048794   0.001169670  -0.000254068   0.350666013   0.005940564  -0.192823536  -0.140668768
                        -0.000212701  -0.000065884   0.000710056  -0.000425158  -0.143595346  -0.124276555  -0.168173258  -0.058501770

    3    3.2  1.5  1.5  -0.000165433   0.000175657   0.000735071   0.000974134  -0.011347721  -0.212830919  -0.082403757   0.048432614
                        -0.000019231   0.000020606  -0.000777305   0.000135618   0.002849621   0.071303291  -0.037763857   0.276534796

    4    4.2  1.5  1.5   0.000054061   0.000032608   0.000169853   0.000134249  -0.179128747  -0.081610087   0.173300093  -0.222548438
                        -0.000073111   0.000206780   0.000563219   0.001324505   0.124802098  -0.165814310  -0.038204666   0.087655355

    5    5.2  1.5  1.5  -0.000125195  -0.000873800   0.000370656  -0.000772150  -0.162194474  -0.030836201  -0.260897044  -0.109892257
                         0.000020639   0.000055326  -0.000724678   0.000358024  -0.337001607  -0.061276272   0.205581715   0.017053689

    6    6.2  1.5  1.5   0.000071923  -0.001171526  -0.000210229   0.000736414   0.090505028   0.013416157  -0.205666733   0.064366963
                        -0.000011450  -0.000029674   0.000410028  -0.000192128   0.199754393   0.036678355  -0.120187756  -0.003718940

    7    7.2  1.5  1.5  -0.000154227   0.000149155   0.001047658   0.000952882   0.009937148  -0.055284759  -0.017484848  -0.006089894
                        -0.000089906   0.003019485  -0.000457198  -0.000155381   0.000338131   0.001231455   0.100230055   0.051359539

    8    8.2  1.5  1.5  -0.000206019   0.000151313   0.000058820   0.000971153   0.006475559  -0.032072025  -0.032236578   0.061575987
                         0.000143108  -0.001577738  -0.001607662  -0.000802889  -0.012424463   0.071019407  -0.044012991   0.038986597

    9    9.2  1.5  1.5   0.000075059  -0.000103231  -0.001366970  -0.000656636  -0.009181785   0.053615231   0.002832377   0.047531041
                         0.000208074   0.002050114  -0.000419584  -0.001412942  -0.008396628   0.043752752   0.117814985  -0.043932325

   10    1.2  1.5  0.5  -0.001988202   0.000336078  -0.030884083   0.002294979  -0.000000002   0.000000000  -0.000287960   0.001236019
                         0.007477547  -0.006811470  -0.038998915  -0.043551586   0.000000001   0.000000001   0.000513351  -0.000176584

   11    2.2  1.5  0.5   0.001260258  -0.000692756   0.000095612   0.000107941   0.116316271   0.023158527  -0.148402003  -0.253299494
                        -0.000137817  -0.000176072  -0.000176354   0.000021650   0.142711303   0.027319800  -0.036612277  -0.090453036

   12    3.2  1.5  0.5  -0.000168181   0.000059501  -0.000006594  -0.000009959   0.331753749   0.055876619   0.013704018   0.027226915
                        -0.000013130  -0.001441948   0.000034484   0.000240316  -0.169981387  -0.040622876  -0.309966059   0.018437449

   13    4.2  1.5  0.5  -0.000688900  -0.001278914  -0.000046959   0.000198975   0.132890344   0.025951433  -0.272334170   0.138690068
                         0.000086533   0.000028550   0.000101056   0.000002805   0.302701795   0.049663431   0.004973446   0.047428687

   14    5.2  1.5  0.5  -0.000169943  -0.000008404  -0.000513400   0.000028143  -0.011010069   0.060704085  -0.033831768   0.046878476
                        -0.001163894  -0.000061513  -0.000531204  -0.000486353  -0.033972914   0.211403988   0.058910583   0.234210785

   15    6.2  1.5  0.5   0.000029817   0.000008473  -0.000488371   0.000042844  -0.007468345   0.105512156  -0.052908174   0.283942319
                         0.000874428  -0.000162303  -0.000680748  -0.000821799  -0.069688435   0.358571855   0.087965952  -0.179733766

   16    7.2  1.5  0.5  -0.000131005   0.000514054  -0.000270414   0.000734135  -0.044074555   0.063687145   0.045406559   0.002172298
                         0.000149248   0.001676952  -0.001242759   0.001116575   0.008478080  -0.018764559   0.090635796   0.061423979

   17    8.2  1.5  0.5   0.000271354  -0.001404550  -0.001787634   0.001696360  -0.006015135  -0.034757011   0.020571709   0.031775431
                         0.000146814   0.001483437   0.000830843   0.000383034   0.041963517   0.017480244   0.027389680   0.004435985

   18    9.2  1.5  0.5   0.000081477  -0.001343219   0.000615952   0.001659583   0.025019871   0.058059138  -0.080889236   0.028810678
                        -0.000177394  -0.001287842   0.001091600  -0.001169943   0.022407161  -0.011694880  -0.122606843   0.000338892

   19    1.2  1.5 -0.5   0.006737644   0.007225122  -0.020133352   0.046407163  -0.000000000   0.000000002   0.000582791   0.000580365
                        -0.001055100  -0.002768440   0.038686635  -0.017919743  -0.000000001  -0.000000001  -0.001104210  -0.000098118

   20    2.2  1.5 -0.5   0.000248402  -0.000003660   0.000103987   0.000007159  -0.000516112   0.006205173  -0.000199416   0.015540530
                         0.000670230   0.001267766   0.000036148  -0.000200477  -0.035810926   0.184004040   0.268965328  -0.152059545

   21    3.2  1.5 -0.5   0.001427552  -0.000030856   0.000113425  -0.000011826   0.068809649  -0.361718496  -0.008183538  -0.296452926
                        -0.000211779  -0.000165847  -0.000212099   0.000033057  -0.006135692   0.090077477  -0.031847671  -0.091555547

   22    4.2  1.5 -0.5   0.000106967   0.000013135   0.000172849  -0.000010848  -0.013103890   0.098919336   0.002083919   0.096458606
                         0.001274753  -0.000694189   0.000098601   0.000110905  -0.054481385   0.315441255  -0.146560815  -0.254728032

   23    5.2  1.5 -0.5   0.000062057  -0.001175344  -0.000222669   0.000712001  -0.093272817  -0.014043660  -0.204712751   0.066865872
                         0.000001847  -0.000045805   0.000433301  -0.000197008  -0.199190395  -0.032835288  -0.123064909  -0.012000037

   24    6.2  1.5 -0.5   0.000160495   0.000872673  -0.000380304   0.000766359  -0.156283628  -0.040196680   0.264908316   0.100650367
                        -0.000025604  -0.000062898   0.000729765  -0.000338554  -0.339532058  -0.057414990  -0.206763279  -0.020168973

   25    7.2  1.5 -0.5  -0.001721940   0.000134545   0.001199359   0.000863905   0.060321330   0.038781098  -0.057098943   0.070032164
                        -0.000333683  -0.000146066  -0.000589264  -0.000933403  -0.027739831  -0.022593599  -0.022744993   0.073294604

   26    8.2  1.5 -0.5  -0.001326451   0.000174709   0.001655946   0.001118313  -0.037680482   0.032124874   0.006531755   0.018854900
                         0.001553664   0.000254291   0.000531220   0.001623365   0.009684523   0.027660641  -0.031411655   0.028598642

   27    9.2  1.5 -0.5   0.001422771  -0.000167774   0.000835835  -0.001084859   0.051432467  -0.004116542   0.009390074  -0.088175483
                         0.001199372   0.000099795   0.001850503   0.000627748  -0.029365541   0.033333600  -0.027239613  -0.117475917

   28    1.2  1.5 -1.5   0.007001914   0.000003893   0.008885715  -0.000038016  -0.000000000  -0.000000004  -0.000000000   0.000487450
                         0.065785606   0.000036578   0.005236150  -0.000022402   0.000000000   0.000000003   0.000000000  -0.001361838

   29    2.2  1.5 -1.5  -0.000070678   0.000213586   0.000434737   0.001368206  -0.086193395   0.358617183  -0.007674623   0.093354861
                        -0.000041547  -0.000002973  -0.000237304  -0.000017917  -0.089725420  -0.122392778  -0.152155376   0.238218454

   30    3.2  1.5 -1.5   0.000039081   0.000036632  -0.000908109   0.000238666   0.207234941  -0.010423285   0.244037286   0.007784967
                         0.000172489   0.000162469  -0.000377715   0.001042867  -0.086225509   0.005314719   0.138791257   0.090309926

   31    4.2  1.5 -1.5   0.000209070   0.000066979  -0.000788095   0.000432275  -0.047544593  -0.217021261   0.157526378   0.094371697
                         0.000010540  -0.000061495   0.001072960  -0.000399005  -0.178589203   0.023758024  -0.179990855  -0.150288067

   32    5.2  1.5 -1.5  -0.000037466  -0.000007273   0.000483475  -0.000048574  -0.017059631   0.099394954   0.053089616  -0.281478080
                        -0.000874748   0.000126676   0.000700463   0.000812517  -0.066442621   0.360552040  -0.097717085   0.176355317

   33    6.2  1.5 -1.5  -0.000153499   0.000003774  -0.000536911   0.000027044   0.014009836  -0.063160230  -0.025192943   0.043848132
                        -0.001161806  -0.000072731  -0.000539394  -0.000459987   0.036455720  -0.210008959   0.059348561   0.234139369

   34    7.2  1.5 -1.5   0.003018312   0.000105724  -0.000742063   0.000670487   0.042462018   0.007264443   0.050407563  -0.100259491
                        -0.000171258   0.000143846  -0.000617633   0.000925777  -0.035424541  -0.006788896   0.011574398  -0.017315253

   35    8.2  1.5 -1.5  -0.001552862  -0.000120499  -0.000429072  -0.000765513   0.070862102   0.013048443   0.015955100   0.030574801
                         0.000317447   0.000220008  -0.001184764   0.001414930   0.032418104   0.005102772   0.071112528   0.045183203

   36    9.2  1.5 -1.5   0.002027674  -0.000214849   0.001283052  -0.001390719  -0.011624936  -0.001396501  -0.057380387  -0.109968933
                        -0.000319630  -0.000052615  -0.000883943  -0.000332504   0.068218452   0.012363589   0.029945619  -0.042370118

   37    1.2  0.5  0.5  -0.003648935  -0.000183759  -0.042548508   0.002772737  -0.000000002   0.000000003  -0.000325613   0.000361431
                        -0.089881567  -0.007724697  -0.046560460  -0.044238715  -0.000000000  -0.000000002   0.000488356   0.001825308

   38    2.2  0.5  0.5  -0.116965369   0.008959474  -0.007146572  -0.014979836  -0.000000000  -0.000000006   0.000041483   0.002393009
                         0.007606783  -0.000047851  -0.000311988   0.000426831   0.000000001  -0.000000002   0.000388319   0.001017094

   39    3.2  0.5  0.5  -0.011588017  -0.046305354  -0.037288646   0.080609802  -0.000000002   0.000000000  -0.000305147   0.001494478
                         0.003848831  -0.000225493   0.057017812  -0.025726121  -0.000000009  -0.000000003  -0.001565432   0.000019314

   40    4.2  0.5  0.5  -0.007196223  -0.002456633   0.038144052  -0.001881338   0.000000003   0.000000001   0.000330432  -0.002302358
                        -0.076617904   0.005998488   0.056121852   0.059350360  -0.000000000  -0.000000006  -0.000974679   0.001660354

   41    5.2  0.5  0.5  -0.001683333  -0.007044734   0.055756055  -0.022473567  -0.000000009  -0.000000003  -0.001816029   0.000050760
                        -0.004844583  -0.070234485   0.032166050  -0.066613926   0.000000006  -0.000000001  -0.002341402  -0.001050806

   42    6.2  0.5  0.5   0.030854524   0.723238222  -0.111445376   0.240176910  -0.001122978   0.000191196  -0.003793750  -0.000758022
                        -0.001287699  -0.131719751   0.166030334  -0.032439127  -0.004036102  -0.000838879   0.001812461  -0.000323894

   43    7.2  0.5  0.5   0.002044313  -0.116169688  -0.221166471   0.057685577   0.004094273   0.000586205  -0.000693794   0.000022717
                         0.041873617  -0.628040383  -0.146842738   0.395779992  -0.001071149  -0.000193713   0.002040907  -0.000617276

   44    8.2  0.5  0.5  -0.093064395   0.002427249   0.473144937   0.500390470  -0.000488536   0.004066656   0.001632095  -0.000352966
                        -0.022378759  -0.003072844  -0.393531571   0.044142490   0.000556761  -0.001097864   0.000584448  -0.003017173

   45    1.2  0.5 -0.5  -0.007700759   0.089762935   0.020070590  -0.060295448  -0.000000004  -0.000000001   0.001596736  -0.000569520
                         0.000634836  -0.005884404  -0.039521177   0.018512452   0.000000000   0.000000001   0.000955414   0.000141991

   46    2.2  0.5 -0.5   0.000900666   0.004815268   0.012689056  -0.006315462   0.000000004  -0.000000001   0.000151160  -0.000351625
                         0.008914217   0.117113509   0.007972800  -0.003359431  -0.000000006  -0.000000001   0.002595789  -0.000169919

   47    3.2  0.5 -0.5  -0.005125071  -0.002600767  -0.056387883  -0.003178521  -0.000000002   0.000000005  -0.000485452   0.001371029
                        -0.046021411   0.011930283  -0.063088669  -0.068054177  -0.000000002   0.000000008   0.001413568   0.000814845

   48    4.2  0.5 -0.5   0.005704793   0.076949205  -0.028510552   0.061355020  -0.000000004   0.000000002   0.002339123   0.001029021
                        -0.003077700  -0.000953246   0.052087936  -0.028986074  -0.000000004  -0.000000002  -0.001608146   0.000017361

   49    5.2  0.5 -0.5  -0.070585605   0.004995533   0.053180934   0.064366445   0.000000001  -0.000000010  -0.001006445   0.001592444
                         0.000428278   0.001161140  -0.045981132   0.000594231  -0.000000003   0.000000001  -0.000306329   0.002498849

   50    6.2  0.5 -0.5  -0.054434182  -0.001985100  -0.190453482  -0.011723396  -0.000695652   0.001807861  -0.000049496  -0.002984928
                         0.733117002  -0.030817515  -0.149882341  -0.199621406  -0.000506302   0.003779264  -0.000822833   0.002961039

   51    7.2  0.5 -0.5  -0.636808067  -0.041854796  -0.250630862  -0.265094262  -0.000569030   0.003789011  -0.000588824  -0.002155332
                        -0.049046963   0.002398970   0.311694720   0.014227799   0.000239511  -0.001885160  -0.000186632  -0.000034571

   52    8.2  0.5 -0.5  -0.002798691   0.032102774  -0.453517782   0.207843212  -0.003785771  -0.000734166  -0.002721736  -0.000000249
                         0.002738838   0.090173180  -0.216011119   0.579253337   0.001846872  -0.000098236  -0.001349101  -0.001733584


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.001374323  -0.000128873   0.000000033  -0.000000004   0.000000027  -0.000000034  -0.000000000  -0.000000005
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.211222724   0.132861906   0.050017279   0.006777733  -0.248922469  -0.150694989   0.059218272   0.016580569
                        -0.180010930   0.032135490   0.092656888   0.091456516  -0.177420492  -0.057831885  -0.030093767  -0.061357869

    3    3.2  1.5  1.5  -0.088719388  -0.083367836   0.337213877   0.291193672  -0.104602413   0.221306987   0.067856700   0.124388442
                        -0.012834218  -0.286987565  -0.102010010  -0.101212426  -0.129904074  -0.192187881   0.101714135   0.017854418

    4    4.2  1.5  1.5   0.155027077   0.240261993   0.077594472  -0.135540228  -0.227896763  -0.103232937   0.092466543   0.001487792
                        -0.029499153  -0.114227470   0.256012857  -0.245288864  -0.209670294   0.132088582  -0.084548538  -0.107178357

    5    5.2  1.5  1.5   0.030228989   0.116595564  -0.116479925   0.181895672  -0.106940312   0.003821655   0.103542706  -0.223469012
                         0.217043097  -0.007173098   0.031054718  -0.028748914   0.080780374   0.096942816   0.190448135  -0.059328007

    6    6.2  1.5  1.5   0.325839858  -0.036627581  -0.127062436  -0.087944336  -0.104864844   0.198453713   0.181515438  -0.370552956
                        -0.126280423  -0.002294924  -0.014794560   0.023635168  -0.050563449  -0.060213570   0.325277676  -0.090173505

    7    7.2  1.5  1.5  -0.018416998   0.000152411   0.026349229  -0.056314575  -0.024879876   0.014687841   0.044699886  -0.063436899
                        -0.124049175  -0.066033457   0.042818996   0.054469500   0.114343738   0.030805740  -0.072198506   0.102739811

    8    8.2  1.5  1.5  -0.027311320  -0.070564515   0.007388916  -0.099221851  -0.112588232  -0.069730084  -0.027553070  -0.023255179
                         0.068811048  -0.029038900  -0.071661008  -0.053081896   0.064012023   0.035003883  -0.039753977  -0.089658370

    9    9.2  1.5  1.5   0.007230488  -0.045317250  -0.028956823   0.017227253  -0.038783943  -0.064962341   0.117211567   0.014387779
                        -0.056050514   0.044988319  -0.012999204  -0.113494535  -0.038364769  -0.106756932  -0.036196269   0.030143624

   10    1.2  1.5  0.5  -0.000181366  -0.001297874   0.000000012  -0.000000002  -0.000000012   0.000000003   0.000000002  -0.000000001
                         0.000508288   0.000341285   0.000000041   0.000000008  -0.000000028   0.000000022  -0.000000005  -0.000000003

   11    2.2  1.5  0.5   0.163666394  -0.237337810  -0.065289629  -0.183800553  -0.119603969  -0.111367853   0.086154270   0.090828039
                         0.042329597  -0.061386325   0.041404233   0.087473190   0.394503252   0.361993214   0.132840048  -0.008211995

   12    3.2  1.5  0.5  -0.014411935   0.034380247   0.049283373  -0.024693417   0.148484149   0.168070293  -0.062522758  -0.001275874
                         0.289798055   0.040722037   0.006419928  -0.317722073  -0.013694247   0.115931582   0.015689918  -0.076719587

   13    4.2  1.5  0.5   0.246667963   0.163458302  -0.045021693   0.444311836  -0.019328738  -0.049719516  -0.016318052  -0.137012410
                        -0.009526943   0.032396527   0.027374139  -0.118389228  -0.059198317  -0.012521654   0.006994236  -0.022999881

   14    5.2  1.5  0.5  -0.011373191  -0.203243143   0.027766247  -0.063252956  -0.167053870  -0.104301761   0.307981657   0.022861633
                         0.029003095   0.283582877   0.075122557  -0.115064633  -0.105390913   0.016945500  -0.246459071  -0.367957347

   15    6.2  1.5  0.5  -0.037804466  -0.200079071   0.051543522   0.025751417   0.036849646   0.076468272  -0.181323299  -0.018487684
                         0.114403817  -0.079694862   0.192077387   0.106437446  -0.094085778   0.107177258   0.137618250   0.212025127

   16    7.2  1.5  0.5   0.017391350  -0.006035025   0.130586272   0.030440077  -0.068085856   0.097025115  -0.054278683  -0.003866269
                        -0.014896141  -0.065629208  -0.054689669  -0.049096414   0.031310564   0.054133259   0.049447664  -0.072097330

   17    8.2  1.5  0.5   0.152636877  -0.019402920  -0.015418130  -0.090045012   0.103240886  -0.004503658  -0.091193725   0.094079700
                        -0.080495775  -0.009413329  -0.010475891  -0.047989009  -0.057411299   0.019849913  -0.035479297  -0.045539570

   18    9.2  1.5  0.5   0.041428448  -0.026361961   0.131712420  -0.035950074  -0.046607024   0.025214365   0.006269056   0.062590901
                        -0.043208262  -0.001880245  -0.023000455   0.056976842   0.007829722  -0.075815114  -0.090441095   0.071749701

   19    1.2  1.5 -0.5   0.000663809  -0.000537843   0.000000006  -0.000000042   0.000000009   0.000000020  -0.000000001   0.000000004
                        -0.001166324   0.000044445  -0.000000005   0.000000007  -0.000000020  -0.000000023  -0.000000003   0.000000003

   20    2.2  1.5 -0.5   0.001762343   0.001217190  -0.000576221  -0.009112075   0.001034171  -0.002813219  -0.086136848   0.023732892
                        -0.245141610  -0.169047335  -0.203553116   0.076772498  -0.378735812   0.412225679   0.029960189  -0.156543241

   21    3.2  1.5 -0.5   0.030502305  -0.283745527  -0.297176460  -0.027093512   0.194896514  -0.137737376  -0.030463635  -0.063431087
                         0.043702349  -0.060655542   0.115079242  -0.041665430  -0.060853135  -0.057126970  -0.070423646   0.011478937

   22    4.2  1.5 -0.5  -0.010762121   0.072688162   0.085312971  -0.005222121  -0.051195975   0.036020350   0.115348063  -0.017750281
                         0.166289893  -0.235907354   0.451830405   0.052431153  -0.002791781  -0.050799361  -0.077435258   0.000354469

   23    5.2  1.5 -0.5   0.326337036  -0.030953143  -0.131101339  -0.079743730  -0.094579412   0.190798859  -0.172511562   0.382193613
                        -0.123414598   0.003525897  -0.007296939   0.007436427  -0.047124749  -0.051088503  -0.325814402   0.097584921

   24    6.2  1.5 -0.5  -0.025518337  -0.120279536   0.107110560  -0.195484819   0.104821052  -0.007279386   0.104246721  -0.221930327
                        -0.213849758   0.007088246  -0.022790205   0.036553288  -0.079667485  -0.100782143   0.185550721  -0.050634488

   25    7.2  1.5 -0.5  -0.061865386   0.018870194  -0.031113312  -0.007134655   0.108716504   0.055732295  -0.026198148  -0.069836004
                        -0.022721985  -0.012971890   0.048672559  -0.141396009  -0.022912969   0.050099366  -0.067280236  -0.022675525

   26    8.2  1.5 -0.5  -0.004102741   0.117066770  -0.082198519   0.016111516   0.001587741  -0.081561742  -0.104486890  -0.068459189
                        -0.021171953  -0.126779169  -0.060452070   0.009374543  -0.020292389  -0.085454199  -0.002707795   0.069917204

   27    9.2  1.5 -0.5   0.004967569   0.052414799   0.035837503  -0.036196821   0.001588047   0.042186175  -0.027448002   0.042994077
                        -0.025957881  -0.028912952  -0.057047714  -0.128712753   0.079882250   0.021303658   0.091171529   0.079814799

   28    1.2  1.5 -1.5  -0.000033167   0.000353694   0.000000002   0.000000014   0.000000033   0.000000026  -0.000000004   0.000000000
                         0.000124532  -0.001328030   0.000000004   0.000000030   0.000000010   0.000000008   0.000000002   0.000000000

   29    2.2  1.5 -1.5   0.003140121  -0.119587439  -0.085399670   0.105173862   0.161067576  -0.290350252   0.040399736  -0.066358123
                        -0.136656929  -0.250435256   0.033423466   0.005048348  -0.010523433   0.095588481   0.049066941  -0.003006330

   30    3.2  1.5 -1.5   0.255865233   0.010430794  -0.034611379   0.053785973  -0.154330194  -0.138430808   0.105967727  -0.019893352
                         0.154418401  -0.089033955  -0.306332764   0.348175690  -0.249188995   0.093024963  -0.067543360   0.120642246

   31    4.2  1.5 -1.5   0.172213328  -0.068403058   0.279778046   0.264399239   0.059400446  -0.279838253   0.045537551  -0.119097813
                        -0.202771572   0.142213273   0.016187205  -0.040700462   0.156767404   0.132623977   0.097034762  -0.038913081

   32    5.2  1.5 -1.5   0.036938357   0.201952518  -0.052706646  -0.022349225  -0.032408598  -0.078161981  -0.179141441  -0.015827413
                        -0.110822098   0.085068674  -0.176449837  -0.118458772   0.091445052  -0.108868747   0.146173033   0.216196848

   33    6.2  1.5 -1.5  -0.007208805  -0.205884482   0.016704228  -0.068267888  -0.171657093  -0.115144300  -0.300431287  -0.031286141
                         0.035984434   0.282364902   0.089519809  -0.108181500  -0.116376083   0.017178134   0.234908058   0.371180008

   34    7.2  1.5 -1.5   0.063848409  -0.115130926  -0.024773288   0.050001846  -0.023165451   0.010161255  -0.100148455  -0.070487515
                         0.016847003  -0.049721763   0.074327264   0.005250112   0.025061687  -0.116577217  -0.067453658  -0.047352025

   35    8.2  1.5 -1.5   0.009900365   0.073522019   0.090757969  -0.061425302   0.056206849  -0.088530136   0.015772470   0.008715303
                         0.075661030  -0.008682247   0.066525594   0.037640781   0.054114199  -0.094530756   0.091272427  -0.047577241

   36    9.2  1.5 -1.5  -0.055135716  -0.056023337   0.094895202  -0.024239445   0.093708385  -0.048419284   0.000682336  -0.121710293
                         0.032212649  -0.007438146  -0.064596349  -0.020492102  -0.082679421   0.025132104  -0.033394321   0.015340334

   37    1.2  0.5  0.5  -0.000121459  -0.002078448  -0.000462183   0.001362009   0.003011462   0.001903746   0.000061730   0.000225480
                         0.000326617   0.002356399  -0.001808826   0.001939582   0.001874917  -0.000576379   0.000282668  -0.000023220

   38    2.2  0.5  0.5  -0.000690850   0.002381704  -0.000225317  -0.001401674  -0.000242136  -0.000722635  -0.001939403  -0.002031064
                         0.000340098   0.000788382  -0.000099446   0.000884951   0.002278805   0.001666652  -0.002555428  -0.000061479

   39    3.2  0.5  0.5   0.002357517  -0.000341530  -0.000802964  -0.002473223  -0.000493649   0.001897491   0.001074500  -0.003086810
                        -0.001826491   0.000111515  -0.000328304   0.000381979  -0.000458623  -0.000916470   0.001724965  -0.000460789

   40    4.2  0.5  0.5   0.000289481   0.001669584   0.000891619   0.000416712   0.000722134   0.001491134  -0.000140928  -0.000155774
                        -0.000967496   0.000936328   0.003182951   0.002388521  -0.001544812   0.001937417   0.000027759  -0.000208593

   41    5.2  0.5  0.5  -0.001748641  -0.000018985  -0.000429226   0.000128945  -0.001100459  -0.001126133  -0.002244902   0.000520476
                         0.000142866   0.000913817  -0.001551891   0.002150693  -0.001267112  -0.000097241   0.001356722  -0.002701919

   42    6.2  0.5  0.5   0.001917643   0.001003258  -0.000000040   0.000000032  -0.000000046   0.000000030   0.000000001   0.000000001
                         0.000765353   0.000344982   0.000000009  -0.000000000   0.000000019   0.000000004   0.000000004  -0.000000005

   43    7.2  0.5  0.5  -0.001811589  -0.000139557   0.000000004  -0.000000002  -0.000000004  -0.000000021  -0.000000003   0.000000003
                        -0.003916184   0.000282171   0.000000034   0.000000021   0.000000025  -0.000000055  -0.000000002  -0.000000007

   44    8.2  0.5  0.5   0.000985574   0.000727281   0.000000061   0.000000007  -0.000000035   0.000000024  -0.000000006  -0.000000002
                         0.000234487   0.003155485  -0.000000016   0.000000003   0.000000014  -0.000000007  -0.000000005   0.000000001

   45    1.2  0.5 -0.5  -0.002811932   0.000346873  -0.002337768  -0.001830880  -0.001647058   0.003432107   0.000215002   0.000060283
                         0.001401998  -0.000033310  -0.000389724   0.000365159  -0.001115196  -0.000897137  -0.000071794   0.000282980

   46    2.2  0.5 -0.5  -0.000148874   0.000506438  -0.000192072  -0.000187075   0.000195677   0.000444792  -0.001825119   0.000713529
                        -0.002504375  -0.000580052   0.001646493  -0.000160188   0.001806001  -0.002248053   0.000893276  -0.003127678

   47    3.2  0.5 -0.5  -0.000195654  -0.002371694   0.000724690  -0.000643153  -0.001540193  -0.000607481  -0.002622381  -0.000267875
                         0.000301327   0.001808043   0.002395321  -0.000582142  -0.001438122   0.000291532   0.001692289   0.002014522

   48    4.2  0.5 -0.5  -0.000475107  -0.001009408  -0.002333957   0.003255619  -0.001998761   0.000231343  -0.000055935   0.000139840
                        -0.001854317   0.000030737   0.000656755  -0.000571933   0.001407842   0.001689498   0.000254260  -0.000032804

   49    5.2  0.5 -0.5  -0.000887922   0.000588081  -0.001995101  -0.001584946   0.001104285  -0.001426821   0.001588005   0.002604566
                        -0.000216833  -0.001652972   0.000813436   0.000283808   0.000241214   0.000883610   0.002247109   0.000310668

   50    6.2  0.5 -0.5  -0.000075165   0.000246050  -0.000000014  -0.000000009  -0.000000030  -0.000000039   0.000000003   0.000000001
                        -0.001058248   0.002050020  -0.000000029  -0.000000040  -0.000000005  -0.000000032   0.000000004   0.000000004

   51    7.2  0.5 -0.5  -0.000308582  -0.003318043  -0.000000018   0.000000033   0.000000036   0.000000004   0.000000006   0.000000002
                         0.000062237  -0.002758432   0.000000011  -0.000000012  -0.000000046  -0.000000025   0.000000005  -0.000000003

   52    8.2  0.5 -0.5  -0.002862024  -0.000027058  -0.000000006   0.000000012  -0.000000021  -0.000000030  -0.000000002   0.000000004
                        -0.001514875   0.001012723  -0.000000004   0.000000062  -0.000000014  -0.000000024  -0.000000000  -0.000000007


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5   0.000000000   0.000000007  -0.000354737  -0.003793004   0.002551687   0.005329123   0.000000019  -0.000000045
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.003808367  -0.064989691   0.021865559   0.098863574   0.033023695   0.057131201   0.001134087  -0.002526970
                         0.001661403  -0.021617123   0.002589047   0.026332325   0.001731700   0.018078619   0.061630728  -0.224141191

    3    3.2  1.5  1.5   0.030150706   0.004023139  -0.084611147   0.033074655  -0.017847121   0.023870490  -0.106055725   0.425945082
                        -0.020934539   0.011480979   0.012966783  -0.051608144   0.032034684  -0.051209144   0.007395504  -0.105577086

    4    4.2  1.5  1.5   0.023850083   0.027417550  -0.034214259   0.001573065  -0.057050999   0.024870042   0.005588137  -0.117746961
                         0.032380828   0.007258442  -0.093477322   0.033485933  -0.012623189   0.023652307   0.081293786  -0.377874855

    5    5.2  1.5  1.5  -0.010096156  -0.019987991   0.036397198  -0.023514881   0.025760556   0.056613719   0.127260265   0.021393463
                         0.010485719   0.060560547  -0.039992284  -0.070163165  -0.050025758  -0.028627695  -0.009407144  -0.003304644

    6    6.2  1.5  1.5   0.006649005   0.012535765  -0.030640346  -0.064464659   0.036349096   0.076764180   0.234144306   0.052187445
                        -0.006247689  -0.035043787   0.022812326   0.040270616   0.029765276   0.015917928  -0.025990080  -0.011448450

    7    7.2  1.5  1.5  -0.298754142   0.048007376   0.189214586  -0.123109555   0.046127983  -0.097115391  -0.000002400   0.000002304
                         0.111607812  -0.051692485  -0.015114771  -0.222369044   0.135551251   0.510418356  -0.000002547  -0.000010901

    8    8.2  1.5  1.5  -0.039912402  -0.036495399   0.131629528   0.024327977  -0.056543478   0.053151770   0.000000288  -0.000002817
                         0.447641827  -0.092472299  -0.219205581   0.347248545  -0.195512046  -0.024123203   0.000003568   0.000000671

    9    9.2  1.5  1.5   0.375017352  -0.087694473  -0.169524028   0.180603921  -0.097992108   0.164181241   0.000002114  -0.000005483
                         0.136552923   0.010185081  -0.187072293  -0.198354746   0.176624249   0.309728394  -0.000003581   0.000003419

   10    1.2  1.5  0.5   0.000000002   0.000000001  -0.000891120   0.002645033  -0.001881764   0.002724309   0.000000033  -0.000000114
                         0.000000005   0.000000002  -0.004599076   0.002443131  -0.000678558   0.001757664   0.000000021   0.000000020

   11    2.2  1.5  0.5   0.003340932   0.002699221  -0.000835063  -0.032645530  -0.044246708   0.076478765  -0.226299756   0.412069286
                        -0.006353609  -0.031343691   0.058448735  -0.013904132  -0.043844971   0.034817132  -0.009319402  -0.125727568

   12    3.2  1.5  0.5  -0.009599760  -0.061267435   0.001098751   0.003367719   0.005109466  -0.006741860  -0.008798491  -0.063987195
                        -0.008688645  -0.018244204  -0.015326468  -0.065538120   0.052880450   0.090686857  -0.275899941  -0.027330321

   13    4.2  1.5  0.5   0.009407865   0.019268829  -0.007318597  -0.058724590   0.076305345   0.066041475  -0.175593835  -0.285544485
                        -0.008067426  -0.052942256  -0.032697834   0.004579119   0.025509953  -0.014229273   0.018254559   0.072643472

   14    5.2  1.5  0.5  -0.021477293   0.008103163   0.066017176  -0.029730607  -0.031068048  -0.000522110  -0.006673436   0.058383606
                        -0.030489293   0.003595396   0.038838834  -0.021004753   0.071438799  -0.048257210  -0.051539997   0.204460280

   15    6.2  1.5  0.5  -0.037213836   0.011051307  -0.020374737  -0.037246384   0.058068989  -0.055904316   0.000096872  -0.036129295
                        -0.052288488   0.006238409   0.070908983  -0.039035749  -0.026360853  -0.006656530   0.024163631  -0.133972104

   16    7.2  1.5  0.5   0.319069894  -0.196205075   0.200961208   0.095997877   0.187734134   0.088304998  -0.000004499  -0.000002184
                        -0.276246218  -0.021163683   0.108908902   0.010727881   0.099606655   0.330054467   0.000005090  -0.000003085

   17    8.2  1.5  0.5  -0.218994229  -0.202683671   0.194103934   0.430549787   0.030739952  -0.097866392  -0.000008395   0.000002190
                         0.118835731   0.093438165  -0.018671872  -0.373599297  -0.033831773   0.092472705   0.000011235   0.000003297

   18    9.2  1.5  0.5   0.243329908   0.030191709   0.145060632  -0.007709346  -0.189193323  -0.291937797  -0.000000658   0.000002802
                        -0.129578712   0.282415797  -0.214215830  -0.086218279  -0.273988869  -0.211361448   0.000002573  -0.000001312

   19    1.2  1.5 -0.5  -0.000000001   0.000000000   0.002567252   0.000746706   0.000234771   0.000589947   0.000000022   0.000000032
                         0.000000002  -0.000000005  -0.002524738  -0.004624718  -0.003233593  -0.001911397   0.000000113   0.000000023

   20    2.2  1.5 -0.5  -0.011476337   0.005005446  -0.032194252   0.002664426   0.018193824  -0.008407416  -0.030914736  -0.090098456
                        -0.029291748   0.005145452   0.014919304   0.058393946  -0.082037911  -0.061720888  -0.429712458  -0.207799660

   21    3.2  1.5 -0.5   0.053579250  -0.006741947   0.005417777  -0.001578016  -0.076498713   0.039168651   0.048517914  -0.260597000
                        -0.034868518   0.011054144   0.065400567  -0.015284559  -0.049168137   0.035892415   0.049873036   0.091035128

   22    4.2  1.5 -0.5  -0.033490374   0.011309329  -0.058839158   0.006291385   0.051094724  -0.025524323   0.034932992  -0.046130652
                        -0.045305244   0.005068566  -0.002738467  -0.032910921  -0.044195904   0.076300540   0.292561811  -0.170406534

   23    5.2  1.5 -0.5  -0.006751036  -0.011950095  -0.029058469  -0.064768946   0.038235059   0.075756548  -0.211775673  -0.050490591
                         0.005745574   0.035327982   0.021925192   0.040886504   0.029446751   0.018156843   0.019071339   0.012312849

   24    6.2  1.5 -0.5  -0.008828710  -0.020859267  -0.036006090   0.022584599  -0.028312466  -0.055989812   0.138000597   0.022581041
                         0.009116086   0.060694700   0.040182636   0.070236384   0.048662164   0.030529380  -0.014480535  -0.008601573

   25    7.2  1.5 -0.5   0.182150333   0.384306419   0.095614983  -0.197453248  -0.210535398  -0.033365169   0.000003664   0.000003131
                        -0.075931475   0.174430923  -0.013727897   0.115146732  -0.269088406   0.209886533   0.000000928  -0.000006029

   26    8.2  1.5 -0.5   0.220859842  -0.243702719   0.442034504  -0.194593328  -0.132742304  -0.045517683  -0.000003864   0.000007463
                         0.032129294  -0.051859312   0.359937565  -0.012586181   0.022550262   0.004204001  -0.000000857  -0.000011874

   27    9.2  1.5 -0.5   0.051130199   0.270085817  -0.005006456  -0.151695685  -0.006777376  -0.105058185   0.000000217   0.000002164
                         0.279384904   0.055260637   0.086417371  -0.209569626   0.360354554  -0.315953782  -0.000003086  -0.000001540

   28    1.2  1.5 -1.5   0.000000007  -0.000000000   0.003791145  -0.000354563  -0.003205795   0.001534997  -0.000000016  -0.000000007
                        -0.000000002   0.000000000  -0.000118742   0.000011105   0.004257045  -0.002038356  -0.000000042  -0.000000017

   29    2.2  1.5 -1.5  -0.056192285  -0.003180935  -0.097990769   0.021773790  -0.019926244   0.018482452  -0.210046871  -0.057913308
                         0.039158485   0.002673120   0.029414402  -0.003272293   0.056513319  -0.027421928   0.078268579   0.021111173

   30    3.2  1.5 -1.5   0.000602424  -0.034849388  -0.034674068  -0.084975608  -0.055266790  -0.036326297   0.054707707   0.031249106
                        -0.012150540  -0.011525630  -0.050547428  -0.010311625  -0.011737063  -0.005014075   0.435411072   0.101616946

   31    4.2  1.5 -1.5   0.024233934  -0.013689122  -0.000523997  -0.031271126   0.003933233  -0.024235941  -0.394936170  -0.077862360
                        -0.014735110   0.037814711   0.033518766   0.094502602   0.034095166   0.053167477   0.026060982   0.024028311

   32    5.2  1.5 -1.5  -0.036340282   0.012655106   0.021306855   0.037631341  -0.056925191   0.055458461   0.004612054  -0.036999657
                        -0.052406904   0.007192422  -0.070864923   0.038833245   0.028003227   0.009515349   0.021150174  -0.122125733

   33    6.2  1.5 -1.5   0.021958336  -0.008147701   0.065693757  -0.031339481  -0.033462706  -0.001911079   0.008090354  -0.059974263
                         0.030050689  -0.004105833   0.038232774  -0.021841931   0.070896876  -0.046942265   0.052812335  -0.227820386

   34    7.2  1.5 -1.5   0.060694919   0.318139207   0.116087821   0.189595018   0.466156612  -0.080533124  -0.000009342   0.000003239
                         0.035957584   0.022311120  -0.226114064   0.009183887   0.229469633  -0.118390663   0.000006071   0.000001323

   35    8.2  1.5 -1.5  -0.008775680   0.165208767  -0.013445231   0.138427372  -0.051244309   0.122165845  -0.000000387  -0.000003433
                         0.099025389   0.417950079   0.347839944   0.214977398   0.027947457   0.162780938  -0.000002870   0.000001015

   36    9.2  1.5 -1.5  -0.086983045  -0.320902906  -0.186725011  -0.163584528   0.148654169  -0.200040415   0.000001218   0.000002581
                         0.015099880   0.237288937  -0.192603607   0.192287649   0.317472987  -0.027971631  -0.000006345  -0.000003261

   37    1.2  0.5  0.5   0.000000000  -0.000000001   0.001251930  -0.000601685  -0.000638517  -0.000023626  -0.000000010   0.000000019
                        -0.000000000   0.000000002   0.000962941  -0.000468124   0.001274422  -0.000859479  -0.000000015  -0.000000010

   38    2.2  0.5  0.5   0.000000002   0.000000001   0.000198769   0.000111950   0.001350910  -0.000855643  -0.000000015   0.000000002
                        -0.000000001   0.000000001  -0.001325352  -0.000191840   0.000982711  -0.000692158   0.000000011   0.000000004

   39    3.2  0.5  0.5  -0.000000002   0.000000003  -0.000875258  -0.000970842   0.000617804   0.000517073  -0.000000003  -0.000000016
                        -0.000000005  -0.000000001   0.000502037   0.001370264   0.001101953   0.000381642  -0.000000035  -0.000000007

   40    4.2  0.5  0.5   0.000000001   0.000000001   0.000488095   0.000724732  -0.001043769   0.001106096   0.000000004  -0.000000033
                        -0.000000000  -0.000000001  -0.001300495   0.000725643   0.000723801   0.000169592  -0.000000002   0.000000001

   41    5.2  0.5  0.5  -0.000000000  -0.000000001   0.000657449   0.001289663   0.001067183   0.000545667  -0.000000034  -0.000000006
                        -0.000000001   0.000000001   0.000798780  -0.000378843   0.000522368   0.001122826   0.000000009   0.000000001

   42    6.2  0.5  0.5   0.000351449   0.000627686  -0.000750411   0.001212279  -0.001192194  -0.002165128  -0.000000008   0.000000011
                        -0.000240967  -0.001113605   0.000469686   0.000598805   0.000973616   0.000647249  -0.000000025  -0.000000004

   43    7.2  0.5  0.5   0.000128002   0.001152622  -0.000413564  -0.001298347  -0.000520783  -0.000055409   0.000000027   0.000000003
                         0.000265779   0.000632571  -0.000821785  -0.001772075   0.000771360   0.001883163   0.000000011  -0.000000026

   44    8.2  0.5  0.5   0.001046720  -0.000164697  -0.002025578   0.000940521  -0.000201110   0.001023305   0.000000010   0.000000008
                        -0.000732239   0.000395950   0.000328598  -0.001323658   0.000779136  -0.001243227  -0.000000012   0.000000052

   45    1.2  0.5 -0.5  -0.000000001  -0.000000000   0.000586735   0.001221171  -0.000672362  -0.001402149  -0.000000003   0.000000017
                        -0.000000001  -0.000000000  -0.000486731  -0.001001662  -0.000535902  -0.000256579   0.000000021   0.000000004

   46    2.2  0.5 -0.5   0.000000001  -0.000000002  -0.000117901   0.000240162  -0.000038192   0.000027640   0.000000004  -0.000000005
                        -0.000000001  -0.000000000  -0.000188242   0.001318480  -0.001099886  -0.001670304   0.000000000   0.000000018

   47    3.2  0.5 -0.5   0.000000003   0.000000001   0.001013263  -0.000890545  -0.000006185  -0.000508623  -0.000000012   0.000000034
                         0.000000000  -0.000000005   0.001339200  -0.000474391   0.000642633  -0.001156411  -0.000000013  -0.000000009

   48    4.2  0.5 -0.5   0.000000001  -0.000000001  -0.000701660   0.000528569  -0.000529910  -0.001206083  -0.000000010   0.000000001
                         0.000000000   0.000000000   0.000747976   0.001284578   0.000985599   0.000398380  -0.000000031  -0.000000004

   49    5.2  0.5 -0.5  -0.000000001  -0.000000000  -0.001300891   0.000632121   0.000568691   0.000224695  -0.000000001   0.000000004
                        -0.000000000  -0.000000001  -0.000338283  -0.000818970   0.001111342  -0.001166731  -0.000000006   0.000000035

   50    6.2  0.5 -0.5   0.000917699  -0.000405353  -0.001192939  -0.000764747   0.001819497  -0.001494928  -0.000000000   0.000000026
                         0.000889907  -0.000131418   0.000636463  -0.000445964  -0.001340201   0.000366666   0.000000012  -0.000000002

   51    7.2  0.5 -0.5   0.000925938  -0.000047383   0.001242235  -0.000387635   0.001537652  -0.000929466  -0.000000024  -0.000000020
                        -0.000933447   0.000291167  -0.001811852   0.000834329   0.001088576  -0.000048005   0.000000012  -0.000000022

   52    8.2  0.5 -0.5  -0.000270214  -0.001211392  -0.000981498  -0.002034872  -0.001608703  -0.000743375   0.000000051   0.000000007
                        -0.000332996  -0.000405372  -0.001293566  -0.000265025   0.000069566  -0.000308047  -0.000000011  -0.000000014


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5  -0.000001125  -0.000000049  -0.000000032   0.000000705  -0.000000029  -0.000000146   0.000000006   0.000000007
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.136287260   0.308414407   0.117879255  -0.276092923   0.072482590   0.264737157   0.034305440   0.005442357
                         0.005370441  -0.090443517  -0.251158606   0.074865911   0.061034146   0.242970486  -0.007213489   0.021730649

    3    3.2  1.5  1.5  -0.034401695   0.067794232  -0.151008935  -0.061654100   0.071410849  -0.022924515   0.120336830  -0.086681002
                         0.034867595   0.199885200   0.156450188   0.071527273  -0.180204920  -0.004515613  -0.082598232   0.021210883

    4    4.2  1.5  1.5   0.035109760   0.045815961  -0.145987161   0.110377458   0.112676176  -0.150309822  -0.020545824   0.046465302
                        -0.078610142  -0.163664126   0.278610087  -0.148499317   0.039183366  -0.111282586  -0.052146921  -0.038455743

    5    5.2  1.5  1.5  -0.211070585   0.018278228   0.231023615   0.019323929  -0.069635961  -0.339285605   0.043916180   0.060965196
                        -0.080126196   0.152299421   0.113905848  -0.174148906  -0.006748823   0.384163645  -0.005421766  -0.001730640

    6    6.2  1.5  1.5  -0.340518108   0.008754481  -0.139802999   0.242116855   0.030877962   0.162658571   0.025215815   0.030490277
                         0.046181013  -0.060271816  -0.084507127   0.103932764   0.004917439  -0.201108029   0.038477977  -0.017800474

    7    7.2  1.5  1.5  -0.000019554  -0.000009782  -0.000016174  -0.000037734  -0.000001077   0.000002149   0.105587877   0.020280755
                        -0.000079851   0.000000340   0.000026365   0.000066664  -0.000001380  -0.000012910  -0.085250181   0.274219977

    8    8.2  1.5  1.5  -0.000002285  -0.000006292   0.000024750  -0.000009500   0.000001825  -0.000001595   0.419267011  -0.155997726
                         0.000071482   0.000025488   0.000034815   0.000028608   0.000002795   0.000002324   0.195466009  -0.107220068

    9    9.2  1.5  1.5   0.000024543   0.000010195   0.000037529   0.000044190   0.000002481  -0.000003009  -0.027987340  -0.049360975
                        -0.000056211   0.000005713  -0.000019678   0.000061216  -0.000001883  -0.000008551   0.443502300  -0.156375399

   10    1.2  1.5  0.5   0.000000296   0.000000137   0.000000741   0.000000486   0.000000079  -0.000000052  -0.000000005   0.000000003
                         0.000000406   0.000000291   0.000000159   0.000000808   0.000000034  -0.000000025  -0.000000002   0.000000001

   11    2.2  1.5  0.5   0.212245690  -0.029076900  -0.102273332  -0.067572258  -0.012550189  -0.049758519  -0.101826626   0.073567966
                         0.073351558  -0.064756735  -0.001204624   0.051115818  -0.006961244   0.120015429   0.033925791  -0.065024517

   12    3.2  1.5  0.5   0.045633564  -0.105687237  -0.092378255   0.163536336  -0.025028816   0.249419554  -0.028957048   0.006582675
                         0.351656814   0.014790213   0.171733270  -0.252859320   0.042239425   0.208100513  -0.040152755  -0.031424957

   13    4.2  1.5  0.5   0.397638942  -0.028535648  -0.148544444  -0.162007302  -0.024186148  -0.146705966   0.107997497   0.028876529
                         0.048751522  -0.132812009  -0.058910522   0.133365889  -0.026430213   0.169360401  -0.055291368   0.044426415

   14    5.2  1.5  0.5  -0.053308896  -0.274851847  -0.169074599  -0.123169871   0.259669110  -0.032212473  -0.019804380   0.011106194
                        -0.081597090   0.150500575  -0.205909597  -0.136285682   0.120426295   0.029563639  -0.038490079   0.001676031

   15    6.2  1.5  0.5  -0.092191473   0.153760448  -0.217001117  -0.133064982   0.372341317  -0.023154704   0.041664927   0.002352961
                        -0.164137679  -0.245421120   0.090511561  -0.255012904   0.190321526   0.057986173   0.051241294  -0.043324165

   16    7.2  1.5  0.5  -0.000010080  -0.000031438  -0.000032269   0.000017100  -0.000003645  -0.000003173  -0.079954563   0.129438750
                        -0.000035414  -0.000002605   0.000054141   0.000040716   0.000001259  -0.000011835   0.163417979   0.051486576

   17    8.2  1.5  0.5   0.000065375  -0.000013316   0.000029324  -0.000001832  -0.000001292  -0.000000381   0.332035187   0.047288008
                        -0.000064906   0.000020907   0.000041792  -0.000025060  -0.000002943  -0.000003923  -0.082683389  -0.021627977

   18    9.2  1.5  0.5   0.000025252   0.000012351   0.000049934  -0.000082920  -0.000000937   0.000006062  -0.056303424   0.388049381
                         0.000027941   0.000026449   0.000007541  -0.000034663   0.000007547   0.000009043   0.087002833   0.029862772

   19    1.2  1.5 -0.5  -0.000000077   0.000000026   0.000000861  -0.000000247  -0.000000038  -0.000000060   0.000000002   0.000000004
                        -0.000000312   0.000000502   0.000000386  -0.000000716   0.000000043   0.000000062   0.000000002   0.000000003

   20    2.2  1.5 -0.5   0.018200889  -0.118658809   0.042681829   0.013407687  -0.092356288   0.008874696  -0.019132904   0.021965066
                         0.068612164   0.190653544  -0.073192181   0.101397827  -0.091377951  -0.011278560   0.096303499   0.105057888

   21    3.2  1.5 -0.5  -0.091405974   0.186039599  -0.231523685  -0.159474482   0.149358309   0.039434501  -0.023835193   0.049271976
                         0.055077145   0.301884421   0.192558443   0.112222753  -0.288458024   0.029249457   0.021511481   0.004798521

   22    4.2  1.5 -0.5   0.061484663  -0.278153500   0.113067688   0.076225629  -0.200848595   0.012062363   0.052923721  -0.006613424
                         0.121131955   0.288312472  -0.176772486   0.140447688  -0.099324864  -0.033734630   0.002576925  -0.121148077

   23    5.2  1.5 -0.5  -0.308276155  -0.009985723  -0.150017477   0.224624444  -0.041148289  -0.192763526   0.007040632   0.043226604
                         0.056211874  -0.096954666  -0.106015857   0.143278886  -0.014780752   0.211595754   0.008751341  -0.002271776

   24    6.2  1.5 -0.5   0.274004590  -0.031771060  -0.269076815  -0.063953581  -0.043805249  -0.269572539  -0.036245551  -0.065251209
                         0.093783152  -0.185556035  -0.101663872   0.226255992  -0.044493109   0.319673246   0.023849110  -0.010193907

   25    7.2  1.5 -0.5  -0.000022778  -0.000014475   0.000042467  -0.000049901   0.000001659   0.000003848   0.109662377  -0.100924994
                         0.000021824  -0.000033856   0.000012116   0.000038502   0.000012140  -0.000000251   0.085903605   0.151368067

   26    8.2  1.5 -0.5  -0.000023510  -0.000091659  -0.000025099  -0.000044994   0.000001168   0.000000051   0.005126551  -0.095763792
                        -0.000007852  -0.000009239   0.000001173  -0.000024124   0.000003764  -0.000003214   0.051745922  -0.328501425

   27    9.2  1.5 -0.5  -0.000007065  -0.000002016  -0.000044316  -0.000013449   0.000002086   0.000003787   0.221205746  -0.046815027
                        -0.000028323   0.000037607  -0.000078188  -0.000048677  -0.000010685   0.000006595   0.320222047   0.092454970

   28    1.2  1.5 -1.5   0.000000038  -0.000000874  -0.000000084  -0.000000004   0.000000135  -0.000000027  -0.000000003   0.000000003
                        -0.000000031   0.000000708  -0.000000700  -0.000000032  -0.000000057   0.000000011  -0.000000006   0.000000005

   29    2.2  1.5 -1.5  -0.296519434  -0.109241090  -0.041364142  -0.235286722  -0.149975599   0.043187753  -0.021514977   0.011042599
                         0.123998822   0.081666616   0.283056926   0.147024877   0.326539032  -0.084342815   0.006240667   0.033270983

   30    3.2  1.5 -1.5   0.073236130  -0.048681598  -0.063653909   0.137300074   0.019386551   0.135629740   0.025323555  -0.010765069
                         0.197956115  -0.005415487   0.069753556  -0.168609152  -0.013041692   0.138484283   0.085569948   0.145559380

   31    4.2  1.5 -1.5  -0.138667542   0.076782004   0.134257604   0.259185676   0.095480263   0.088707151   0.009826305  -0.055398949
                        -0.098266751   0.038945761  -0.127318993  -0.178209499  -0.160811615  -0.079764014  -0.059508930   0.008508210

   32    5.2  1.5 -1.5   0.081725716  -0.113479204   0.170595704   0.140675736   0.461590402  -0.061587585  -0.029204324   0.017430158
                         0.129808001   0.195175495  -0.039979482   0.215770219   0.222779548   0.033191611  -0.053543049   0.040672049

   33    6.2  1.5 -1.5  -0.044760983  -0.293577437  -0.132098601  -0.100595385  -0.227851826   0.026563662   0.000025295   0.045941117
                        -0.041301184   0.178598868  -0.227974888  -0.128712477  -0.122416486  -0.016492470  -0.035305990   0.002409590

   34    7.2  1.5 -1.5   0.000007812   0.000035104  -0.000061681   0.000024245  -0.000006981  -0.000000459  -0.247127969  -0.020483217
                        -0.000005897   0.000074339   0.000045424  -0.000019206  -0.000011070   0.000001689   0.120563905   0.134152291

   35    8.2  1.5 -1.5   0.000020940  -0.000046796  -0.000027269   0.000037521   0.000002371   0.000000600   0.171187918   0.380000425
                         0.000015834  -0.000054083   0.000012848   0.000020415   0.000001525  -0.000003283   0.080784408   0.263801975

   36    9.2  1.5 -1.5  -0.000004320   0.000054467  -0.000066054  -0.000015056  -0.000000537   0.000003017   0.159958404   0.369075580
                         0.000010858   0.000028203  -0.000036565   0.000039610  -0.000009049   0.000000775  -0.036098140  -0.247509240

   37    1.2  0.5  0.5  -0.000000048  -0.000000313  -0.000000161  -0.000000093   0.000000026   0.000000001   0.000702215  -0.001728487
                        -0.000000093   0.000000126  -0.000000239  -0.000000171  -0.000000020   0.000000005   0.001949574   0.000257431

   38    2.2  0.5  0.5   0.000000019   0.000000238  -0.000000216  -0.000000059  -0.000000020   0.000000008  -0.002267176   0.000736998
                        -0.000000042   0.000000347   0.000000037  -0.000000057  -0.000000047   0.000000012   0.001107460  -0.000532607

   39    3.2  0.5  0.5  -0.000000188   0.000000047  -0.000000318   0.000000178   0.000000001  -0.000000001  -0.000643862   0.000124319
                         0.000000101  -0.000000103  -0.000000130   0.000000210  -0.000000020  -0.000000011   0.001495226  -0.000780734

   40    4.2  0.5  0.5   0.000000094  -0.000000136   0.000000176   0.000000163   0.000000051  -0.000000021   0.002075598  -0.000550135
                         0.000000106   0.000000239  -0.000000082   0.000000248  -0.000000006  -0.000000008   0.003415211  -0.002421428

   41    5.2  0.5  0.5   0.000000079  -0.000000145  -0.000000149   0.000000232  -0.000000017  -0.000000024   0.000074306   0.000089682
                        -0.000000228  -0.000000021   0.000000266   0.000000052  -0.000000018  -0.000000042   0.001678747   0.002433627

   42    6.2  0.5  0.5   0.000000436   0.000000046  -0.000000147  -0.000000201   0.000000021   0.000000060  -0.000000003  -0.000000005
                        -0.000000022  -0.000000117  -0.000000151   0.000000188  -0.000000015  -0.000000009   0.000000001  -0.000000001

   43    7.2  0.5  0.5  -0.000000150   0.000000100   0.000000108  -0.000000125   0.000000006  -0.000000003   0.000000000   0.000000001
                        -0.000000411  -0.000000002  -0.000000169   0.000000295  -0.000000001  -0.000000049   0.000000000  -0.000000000

   44    8.2  0.5  0.5   0.000000126   0.000000125   0.000000090   0.000000370   0.000000018  -0.000000017   0.000000001   0.000000001
                        -0.000000141  -0.000000048  -0.000000313  -0.000000223  -0.000000043   0.000000024   0.000000003  -0.000000001

   45    1.2  0.5 -0.5   0.000000322   0.000000022   0.000000180  -0.000000256   0.000000001   0.000000032   0.000647983   0.002037963
                        -0.000000099   0.000000102   0.000000072  -0.000000131   0.000000005   0.000000009   0.001622977  -0.000375038

   46    2.2  0.5 -0.5   0.000000034   0.000000041   0.000000064   0.000000011  -0.000000003  -0.000000000   0.000089031  -0.000184853
                         0.000000419   0.000000020   0.000000052  -0.000000219   0.000000014   0.000000051  -0.000904936  -0.002516423

   47    3.2  0.5 -0.5  -0.000000101  -0.000000210  -0.000000229  -0.000000167  -0.000000003   0.000000009   0.000611922   0.000967595
                        -0.000000050   0.000000040  -0.000000152  -0.000000301  -0.000000011   0.000000018  -0.000500552  -0.001309205

   48    4.2  0.5 -0.5   0.000000256   0.000000006  -0.000000265  -0.000000060   0.000000017   0.000000049   0.002369045   0.003995794
                         0.000000100  -0.000000142  -0.000000132   0.000000185  -0.000000016  -0.000000014  -0.000744034   0.000073478

   49    5.2  0.5 -0.5   0.000000099   0.000000205  -0.000000079   0.000000246   0.000000006  -0.000000009  -0.002147720   0.001487790
                        -0.000000108   0.000000127  -0.000000224  -0.000000180  -0.000000048   0.000000023   0.001147991  -0.000781149

   50    6.2  0.5 -0.5  -0.000000109   0.000000353  -0.000000163  -0.000000167  -0.000000059   0.000000026   0.000000003  -0.000000001
                        -0.000000062  -0.000000258   0.000000222  -0.000000128   0.000000014   0.000000006   0.000000003  -0.000000003

   51    7.2  0.5 -0.5  -0.000000079   0.000000142  -0.000000278  -0.000000155  -0.000000016   0.000000006  -0.000000000   0.000000000
                         0.000000061   0.000000413   0.000000159   0.000000128  -0.000000047  -0.000000002  -0.000000001   0.000000000

   52    8.2  0.5 -0.5  -0.000000128   0.000000187   0.000000177  -0.000000300   0.000000025   0.000000033   0.000000000   0.000000003
                         0.000000042   0.000000030  -0.000000394   0.000000126   0.000000016   0.000000033  -0.000000001  -0.000000001


   Nr   State  S   Sz       49            50            51            52

    1    1.2  1.5  1.5  -0.000000005  -0.000000004   0.000000000   0.000000004
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.052069245  -0.055354962   0.017153679   0.024548809
                         0.067415811  -0.054072435  -0.002830432  -0.000676802

    3    3.2  1.5  1.5  -0.007238705  -0.048017005   0.012797725   0.019311694
                        -0.054527065   0.028897932   0.018891869   0.053288481

    4    4.2  1.5  1.5  -0.030324991  -0.093954646   0.026549919   0.033674749
                        -0.006625417  -0.115312223  -0.017668815  -0.020829090

    5    5.2  1.5  1.5   0.047740816  -0.000038797  -0.064149397   0.073035889
                         0.014154521   0.013484127   0.023159248  -0.025744825

    6    6.2  1.5  1.5  -0.053601201  -0.009072808  -0.115868232   0.117463098
                        -0.037089115   0.030477989   0.045117563  -0.038481370

    7    7.2  1.5  1.5  -0.062484032   0.120440610  -0.036090514   0.197887880
                        -0.176481997  -0.207290577  -0.197800392   0.392997723

    8    8.2  1.5  1.5   0.068956720   0.286262210   0.016069325  -0.144532773
                        -0.182028110  -0.146252101   0.249565780   0.068942288

    9    9.2  1.5  1.5   0.240834465  -0.138127975  -0.184070333  -0.132101706
                         0.013865429   0.152003732  -0.213603059   0.180437479

   10    1.2  1.5  0.5   0.000000004   0.000000002   0.000000001   0.000000003
                         0.000000002   0.000000005   0.000000001   0.000000000

   11    2.2  1.5  0.5   0.080423942  -0.046569703   0.015605970   0.028615966
                         0.073712265   0.056981227   0.048329972   0.024123312

   12    3.2  1.5  0.5   0.038574860  -0.002532763  -0.011923076   0.005451876
                        -0.111584894  -0.014639795  -0.034528137   0.012857153

   13    4.2  1.5  0.5   0.066461250   0.031378773  -0.029885988   0.015898890
                        -0.000272181  -0.028470364  -0.021421806  -0.023239240

   14    5.2  1.5  0.5  -0.031447817  -0.046466040   0.100356106   0.117916550
                         0.016693692  -0.059059594  -0.055476719  -0.058198713

   15    6.2  1.5  0.5   0.017634021  -0.023107869  -0.055136185  -0.073574811
                        -0.006935287  -0.036259406   0.029281118   0.034895122

   16    7.2  1.5  0.5  -0.179328721   0.418898960   0.142002381  -0.128257295
                         0.190133309  -0.255596444   0.209996597  -0.199510319

   17    8.2  1.5  0.5   0.065643834  -0.120018674  -0.138375324   0.178698768
                         0.249127662   0.195008850   0.261431112  -0.255856322

   18    9.2  1.5  0.5   0.214504959   0.232047137  -0.253572308   0.274302631
                        -0.113913560  -0.166837655  -0.061179574   0.047859011

   19    1.2  1.5 -0.5   0.000000006  -0.000000003   0.000000002   0.000000001
                         0.000000001  -0.000000003  -0.000000002   0.000000001

   20    2.2  1.5 -0.5   0.045808824  -0.089091482   0.001920843   0.024646679
                        -0.057594703  -0.062962006  -0.037378040   0.044405783

   21    3.2  1.5 -0.5  -0.014843917   0.100865940  -0.005668752  -0.017079766
                         0.000629587  -0.061361804  -0.012763016  -0.032289838

   22    4.2  1.5 -0.5  -0.021168103  -0.013828797   0.027833738   0.004761589
                         0.036702857  -0.065007210   0.004256766  -0.036460846

   23    5.2  1.5 -0.5  -0.067570478  -0.009644657   0.123041757  -0.109060880
                        -0.032884018   0.034272801  -0.046391046   0.035422292

   24    6.2  1.5 -0.5  -0.040335234   0.003037782  -0.075736631   0.059043446
                        -0.014892519  -0.018703706   0.029914629  -0.020279407

   25    7.2  1.5 -0.5  -0.160944396  -0.147777228   0.058149352   0.056422549
                         0.463576084   0.215572187   0.229941194   0.247143164

   26    8.2  1.5 -0.5   0.165120050  -0.257382293   0.308937860   0.285472214
                        -0.158645224  -0.011316872   0.044193995   0.077456915

   27    9.2  1.5 -0.5  -0.113831201   0.065831221   0.152368201   0.128480409
                         0.262150949  -0.233783893  -0.233058681  -0.227012422

   28    1.2  1.5 -1.5   0.000000001  -0.000000001  -0.000000003  -0.000000000
                         0.000000004  -0.000000004   0.000000003   0.000000000

   29    2.2  1.5 -1.5   0.064581887   0.054839729  -0.017259433   0.013782299
                         0.042628400  -0.065182066   0.017470380  -0.010597561

   30    3.2  1.5 -1.5  -0.018057379  -0.054821903   0.025738068  -0.005060357
                         0.053053318   0.004489813   0.050499066  -0.022250333

   31    4.2  1.5 -1.5   0.132614699  -0.012905892  -0.038212763   0.031038487
                         0.067362630  -0.028230113   0.010374223  -0.007327863

   32    5.2  1.5 -1.5  -0.013169180   0.023957200  -0.068684416  -0.060726862
                         0.002897572   0.043653047   0.035769933   0.031044228

   33    6.2  1.5 -1.5  -0.027860597  -0.047612944  -0.108328821  -0.112087297
                         0.015330059  -0.044516273   0.059525304   0.053828242

   34    7.2  1.5 -1.5   0.177032960  -0.185718954   0.151936790   0.119843429
                        -0.161662168  -0.023635253   0.412943142   0.161446812

   35    8.2  1.5 -1.5   0.082216259  -0.163263510   0.149066729  -0.171330372
                        -0.310767150   0.105991860  -0.058496773  -0.182173559

   36    9.2  1.5 -1.5  -0.119252623   0.064625101   0.222023000   0.030327701
                         0.167222219   0.232415737   0.026726996   0.280336204

   37    1.2  0.5  0.5   0.001592308   0.002910447   0.000264502  -0.000014518
                        -0.000967695   0.003123336   0.000052644   0.000324960

   38    2.2  0.5  0.5   0.001215380  -0.000813862  -0.000640375  -0.001837335
                         0.001560555   0.001249416  -0.002289483  -0.002620985

   39    3.2  0.5  0.5  -0.002594589  -0.000390716  -0.002854371   0.002231819
                        -0.001319994   0.001024743   0.000814501  -0.001575526

   40    4.2  0.5  0.5   0.000931526  -0.001280960   0.000226283  -0.000273854
                        -0.000172622  -0.002069233  -0.000339209   0.000158520

   41    5.2  0.5  0.5  -0.000804348  -0.000570274  -0.001114138   0.001138447
                         0.001839286   0.000150023  -0.002443087   0.002754714

   42    6.2  0.5  0.5  -0.000000000   0.000000002  -0.000000001  -0.000000001
                        -0.000000003   0.000000001   0.000000002  -0.000000002

   43    7.2  0.5  0.5   0.000000002  -0.000000002   0.000000000   0.000000001
                        -0.000000006  -0.000000002   0.000000002  -0.000000001

   44    8.2  0.5  0.5   0.000000001   0.000000005   0.000000001   0.000000000
                        -0.000000002  -0.000000002   0.000000001   0.000000000

   45    1.2  0.5 -0.5  -0.003669524  -0.000607994   0.000247294   0.000142179
                        -0.002181862   0.001761312   0.000211319  -0.000229167

   46    2.2  0.5 -0.5  -0.001048396   0.001782809  -0.000659830   0.001235108
                         0.001060319   0.000856779  -0.003132090   0.002031335

   47    3.2  0.5 -0.5  -0.000918572  -0.001840217  -0.002675070  -0.002544308
                         0.000599151  -0.002255633   0.000554346   0.001528836

   48    4.2  0.5 -0.5   0.002293824   0.000028859   0.000302819   0.000402322
                         0.000812989   0.000946945  -0.000091789   0.000066359

   49    5.2  0.5 -0.5  -0.000025669   0.001626865   0.001234807   0.001023769
                         0.000589118  -0.001176119   0.002712889   0.002482313

   50    6.2  0.5 -0.5  -0.000000001  -0.000000003  -0.000000001  -0.000000002
                        -0.000000002   0.000000000  -0.000000002  -0.000000001

   51    7.2  0.5 -0.5   0.000000002  -0.000000005  -0.000000001  -0.000000001
                         0.000000001   0.000000003   0.000000000  -0.000000001

   52    8.2  0.5 -0.5   0.000000001  -0.000000002   0.000000000  -0.000000000
                        -0.000000005   0.000000002   0.000000000  -0.000000002


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  97.630%   0.000%   0.002%   1.867%   0.000%   0.024%   0.000%   0.024%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.002%
    7    7.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    1.2  1.5  0.5   0.781%   1.088%  59.875%  37.754%   0.023%   0.001%   0.023%   0.001%   0.000%   0.000%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%
   13    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   16    7.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    8.2  1.5  0.5   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    9.2  1.5  0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   1.088%   0.781%  37.754%  59.875%   0.001%   0.023%   0.001%   0.023%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   25    7.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    8.2  1.5 -0.5   0.000%   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%  97.630%   1.867%   0.002%   0.024%   0.000%   0.024%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   31    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   33    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.001%
   34    7.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.002%   0.001%   0.000%  36.534%   0.264%   1.510%   0.276%  19.773%   2.305%
   38    2.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%  17.822%   1.241%  19.446%   0.078%   4.513%   0.962%
   39    3.2  0.5  0.5   0.001%   0.000%   0.001%   0.002%   2.215%  33.859%   0.037%   2.477%  12.491%  46.444%
   40    4.2  0.5  0.5   0.000%   0.001%   0.001%   0.001%   1.289%   0.270%  36.892%   0.131%   1.094%   0.589%
   41    5.2  0.5  0.5   0.001%   0.000%   0.001%   0.001%   0.486%   2.484%   0.178%  35.438%   4.383%   7.437%
   42    6.2  0.5  0.5   0.272%   0.000%   0.018%   0.035%   0.001%   0.215%   0.001%   2.106%   0.000%   0.000%
   43    7.2  0.5  0.5   0.211%   0.001%   0.031%   0.082%   0.014%   2.074%   0.013%   0.221%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.004%   0.208%   0.113%   1.118%   0.062%   1.136%   0.007%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.264%  36.534%   0.276%   1.510%   2.305%  19.773%
   46    2.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   1.241%  17.822%   0.078%  19.446%   0.962%   4.513%
   47    3.2  0.5 -0.5   0.000%   0.001%   0.002%   0.001%  33.859%   2.215%   2.477%   0.037%  46.444%  12.491%
   48    4.2  0.5 -0.5   0.001%   0.000%   0.001%   0.001%   0.270%   1.289%   0.131%  36.892%   0.589%   1.094%
   49    5.2  0.5 -0.5   0.000%   0.001%   0.001%   0.001%   2.484%   0.486%  35.438%   0.178%   7.437%   4.383%
   50    6.2  0.5 -0.5   0.000%   0.272%   0.035%   0.018%   0.215%   0.001%   2.106%   0.001%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.001%   0.211%   0.082%   0.031%   2.074%   0.014%   0.221%   0.013%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.004%   0.000%   0.113%   0.208%   0.062%   1.118%   0.007%   1.136%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.438%   0.000%   0.011%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    8    8.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.005%   0.247%   0.190%
   11    2.2  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    4.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    5.2  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.006%   0.190%   0.247%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.2  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.438%   0.000%   0.011%   0.000%
   29    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    4.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    5.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    1.2  0.5  0.5  36.012%   0.613%   1.129%   0.165%   0.000%   0.000%   0.809%   0.006%   0.398%   0.196%
   38    2.2  0.5  0.5  41.905%   4.777%   7.532%   0.306%   0.000%   0.000%   1.374%   0.008%   0.005%   0.022%
   39    3.2  0.5  0.5   0.005%   0.011%   0.108%   0.933%   0.000%   0.000%   0.015%   0.214%   0.464%   0.716%
   40    4.2  0.5  0.5   0.096%   0.006%  57.110%   1.102%   0.000%   0.000%   0.592%   0.004%   0.460%   0.353%
   41    5.2  0.5  0.5   2.310%  14.256%   0.742%  30.865%   0.000%   0.000%   0.003%   0.498%   0.414%   0.494%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   4.305%  29.032%   0.095%  54.042%   3.999%   5.874%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   7.019%  26.315%   0.176%  40.793%   7.048%  15.997%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  28.735%   4.588%   0.916%   0.002%  37.873%  25.234%
   45    1.2  0.5 -0.5   0.613%  36.012%   0.165%   1.129%   0.000%   0.000%   0.006%   0.809%   0.196%   0.398%
   46    2.2  0.5 -0.5   4.777%  41.905%   0.306%   7.532%   0.000%   0.000%   0.008%   1.374%   0.022%   0.005%
   47    3.2  0.5 -0.5   0.011%   0.005%   0.933%   0.108%   0.000%   0.000%   0.214%   0.015%   0.716%   0.464%
   48    4.2  0.5 -0.5   0.006%   0.096%   1.102%  57.110%   0.000%   0.000%   0.004%   0.592%   0.353%   0.460%
   49    5.2  0.5 -0.5  14.256%   2.310%  30.865%   0.742%   0.000%   0.000%   0.498%   0.003%   0.494%   0.414%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  29.032%   4.305%  54.042%   0.095%   5.874%   3.999%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  26.315%   7.019%  40.793%   0.176%  15.997%   7.048%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   4.588%  28.735%   0.002%   0.916%  25.234%  37.873%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5  14.359%   1.548%   6.546%   2.321%   7.702%   1.868%   1.109%   0.841%   9.344%   2.605%
    3    3.2  1.5  1.5   0.014%   5.038%   0.822%   7.882%   0.804%   8.931%  12.412%   9.504%   2.782%   8.591%
    4    4.2  1.5  1.5   4.766%   3.415%   3.149%   5.721%   2.490%   7.077%   7.156%   7.854%   9.590%   2.810%
    5    5.2  1.5  1.5  13.988%   0.471%  11.033%   1.237%   4.802%   1.365%   1.453%   3.391%   1.796%   0.941%
    6    6.2  1.5  1.5   4.809%   0.153%   5.674%   0.416%  12.212%   0.135%   1.636%   0.829%   1.355%   4.301%
    7    7.2  1.5  1.5   0.010%   0.306%   1.035%   0.267%   1.573%   0.436%   0.253%   0.614%   1.369%   0.116%
    8    8.2  1.5  1.5   0.020%   0.607%   0.298%   0.531%   0.548%   0.582%   0.519%   1.266%   1.677%   0.609%
    9    9.2  1.5  1.5   0.015%   0.479%   1.389%   0.419%   0.319%   0.408%   0.101%   1.318%   0.298%   1.562%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5   3.390%   0.128%   2.336%   7.234%   2.858%   6.010%   0.598%   4.143%  16.994%  14.344%
   12    3.2  1.5  0.5  13.895%   0.477%   9.627%   0.108%   8.419%   0.284%   0.247%  10.156%   2.224%   4.169%
   13    4.2  1.5  0.5  10.929%   0.314%   7.419%   2.148%   6.094%   2.777%   0.278%  21.143%   0.388%   0.263%
   14    5.2  1.5  0.5   0.128%   4.838%   0.462%   5.705%   0.097%  12.173%   0.641%   1.724%   3.901%   1.117%
   15    6.2  1.5  0.5   0.491%  13.971%   1.054%  11.293%   1.452%   4.638%   3.955%   1.199%   1.021%   1.733%
   16    7.2  1.5  0.5   0.201%   0.441%   1.028%   0.378%   0.052%   0.434%   2.004%   0.334%   0.562%   1.234%
   17    8.2  1.5  0.5   0.180%   0.151%   0.117%   0.103%   2.978%   0.047%   0.035%   1.041%   1.395%   0.041%
   18    9.2  1.5  0.5   0.113%   0.351%   2.158%   0.083%   0.358%   0.070%   1.788%   0.454%   0.223%   0.638%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.128%   3.390%   7.234%   2.336%   6.010%   2.858%   4.143%   0.598%  14.344%  16.994%
   21    3.2  1.5 -0.5   0.477%  13.895%   0.108%   9.627%   0.284%   8.419%  10.156%   0.247%   4.169%   2.224%
   22    4.2  1.5 -0.5   0.314%  10.929%   2.148%   7.419%   2.777%   6.094%  21.143%   0.278%   0.263%   0.388%
   23    5.2  1.5 -0.5   4.838%   0.128%   5.705%   0.462%  12.173%   0.097%   1.724%   0.641%   1.117%   3.901%
   24    6.2  1.5 -0.5  13.971%   0.491%  11.293%   1.054%   4.638%   1.452%   1.199%   3.955%   1.733%   1.021%
   25    7.2  1.5 -0.5   0.441%   0.201%   0.378%   1.028%   0.434%   0.052%   0.334%   2.004%   1.234%   0.562%
   26    8.2  1.5 -0.5   0.151%   0.180%   0.103%   0.117%   0.047%   2.978%   1.041%   0.035%   0.041%   1.395%
   27    9.2  1.5 -0.5   0.351%   0.113%   0.083%   2.158%   0.070%   0.358%   0.454%   1.788%   0.638%   0.223%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5   1.548%  14.359%   2.321%   6.546%   1.868%   7.702%   0.841%   1.109%   2.605%   9.344%
   30    3.2  1.5 -1.5   5.038%   0.014%   7.882%   0.822%   8.931%   0.804%   9.504%  12.412%   8.591%   2.782%
   31    4.2  1.5 -1.5   3.415%   4.766%   5.721%   3.149%   7.077%   2.490%   7.854%   7.156%   2.810%   9.590%
   32    5.2  1.5 -1.5   0.471%  13.988%   1.237%  11.033%   1.365%   4.802%   3.391%   1.453%   0.941%   1.796%
   33    6.2  1.5 -1.5   0.153%   4.809%   0.416%   5.674%   0.135%  12.212%   0.829%   1.636%   4.301%   1.355%
   34    7.2  1.5 -1.5   0.306%   0.010%   0.267%   1.035%   0.436%   1.573%   0.614%   0.253%   0.116%   1.369%
   35    8.2  1.5 -1.5   0.607%   0.020%   0.531%   0.298%   0.582%   0.548%   1.266%   0.519%   0.609%   1.677%
   36    9.2  1.5 -1.5   0.479%   0.015%   0.419%   1.389%   0.408%   0.319%   1.318%   0.101%   1.562%   0.298%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%
   41    5.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.003%   0.000%   0.000%
    2    2.2  1.5  1.5   0.441%   0.404%   0.002%   0.469%   0.048%   1.047%   0.109%   0.359%   0.380%   5.025%
    3    3.2  1.5  1.5   1.495%   1.579%   0.135%   0.015%   0.733%   0.376%   0.134%   0.319%   1.130%  19.258%
    4    4.2  1.5  1.5   1.570%   1.149%   0.162%   0.080%   0.991%   0.112%   0.341%   0.118%   0.664%  15.665%
    5    5.2  1.5  1.5   4.699%   5.346%   0.021%   0.407%   0.292%   0.548%   0.317%   0.402%   1.628%   0.047%
    6    6.2  1.5  1.5  13.875%  14.544%   0.008%   0.139%   0.146%   0.578%   0.221%   0.615%   5.550%   0.285%
    7    7.2  1.5  1.5   0.721%   1.458%  10.171%   0.498%   3.603%   6.460%   2.050%  26.996%   0.000%   0.000%
    8    8.2  1.5  1.5   0.234%   0.858%  20.198%   0.988%   6.538%  12.117%   4.142%   0.341%   0.000%   0.000%
    9    9.2  1.5  1.5   1.505%   0.112%  15.928%   0.779%   6.373%   7.196%   4.080%  12.289%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%
   11    2.2  1.5  0.5   2.507%   0.832%   0.005%   0.099%   0.342%   0.126%   0.388%   0.706%   5.130%  18.561%
   12    3.2  1.5  0.5   0.416%   0.589%   0.017%   0.409%   0.024%   0.431%   0.282%   0.827%   7.620%   0.484%
   13    4.2  1.5  0.5   0.032%   1.930%   0.015%   0.317%   0.112%   0.347%   0.647%   0.456%   3.117%   8.681%
   14    5.2  1.5  0.5  15.559%  13.592%   0.139%   0.008%   0.587%   0.133%   0.607%   0.233%   0.270%   4.521%
   15    6.2  1.5  0.5   5.182%   4.530%   0.412%   0.016%   0.544%   0.291%   0.407%   0.317%   0.058%   1.925%
   16    7.2  1.5  0.5   0.539%   0.521%  17.812%   3.894%   5.225%   0.933%   4.517%  11.673%   0.000%   0.000%
   17    8.2  1.5  0.5   0.958%   1.092%   6.208%   4.981%   3.802%  32.495%   0.209%   1.813%   0.000%   0.000%
   18    9.2  1.5  0.5   0.822%   0.907%   7.600%   8.067%   6.693%   0.749%  11.086%  12.990%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.832%   2.507%   0.099%   0.005%   0.126%   0.342%   0.706%   0.388%  18.561%   5.130%
   21    3.2  1.5 -0.5   0.589%   0.416%   0.409%   0.017%   0.431%   0.024%   0.827%   0.282%   0.484%   7.620%
   22    4.2  1.5 -0.5   1.930%   0.032%   0.317%   0.015%   0.347%   0.112%   0.456%   0.647%   8.681%   3.117%
   23    5.2  1.5 -0.5  13.592%  15.559%   0.008%   0.139%   0.133%   0.587%   0.233%   0.607%   4.521%   0.270%
   24    6.2  1.5 -0.5   4.530%   5.182%   0.016%   0.412%   0.291%   0.544%   0.317%   0.407%   1.925%   0.058%
   25    7.2  1.5 -0.5   0.521%   0.539%   3.894%  17.812%   0.933%   5.225%  11.673%   4.517%   0.000%   0.000%
   26    8.2  1.5 -0.5   1.092%   0.958%   4.981%   6.208%  32.495%   3.802%   1.813%   0.209%   0.000%   0.000%
   27    9.2  1.5 -0.5   0.907%   0.822%   8.067%   7.600%   0.749%   6.693%  12.990%  11.086%   0.000%   0.000%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.001%   0.000%   0.000%
   29    2.2  1.5 -1.5   0.404%   0.441%   0.469%   0.002%   1.047%   0.048%   0.359%   0.109%   5.025%   0.380%
   30    3.2  1.5 -1.5   1.579%   1.495%   0.015%   0.135%   0.376%   0.733%   0.319%   0.134%  19.258%   1.130%
   31    4.2  1.5 -1.5   1.149%   1.570%   0.080%   0.162%   0.112%   0.991%   0.118%   0.341%  15.665%   0.664%
   32    5.2  1.5 -1.5   5.346%   4.699%   0.407%   0.021%   0.548%   0.292%   0.402%   0.317%   0.047%   1.628%
   33    6.2  1.5 -1.5  14.544%  13.875%   0.139%   0.008%   0.578%   0.146%   0.615%   0.221%   0.285%   5.550%
   34    7.2  1.5 -1.5   1.458%   0.721%   0.498%  10.171%   6.460%   3.603%  26.996%   2.050%   0.000%   0.000%
   35    8.2  1.5 -1.5   0.858%   0.234%   0.988%  20.198%  12.117%   6.538%   0.341%   4.142%   0.000%   0.000%
   36    9.2  1.5 -1.5   0.112%   1.505%   0.779%  15.928%   7.196%   6.373%  12.289%   4.080%   0.000%   0.000%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    2.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    3.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    5.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    5.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   1.860%  10.330%   7.698%   8.183%   0.898%  12.912%   0.123%   0.050%   0.726%   0.599%
    3    3.2  1.5  1.5   0.240%   4.455%   4.728%   0.892%   3.757%   0.055%   2.130%   0.796%   0.303%   0.314%
    4    4.2  1.5  1.5   0.741%   2.889%   9.894%   3.424%   1.423%   3.498%   0.314%   0.364%   0.096%   2.212%
    5    5.2  1.5  1.5   5.097%   2.353%   6.635%   3.070%   0.489%  26.270%   0.196%   0.372%   0.248%   0.018%
    6    6.2  1.5  1.5  11.809%   0.371%   2.669%   6.942%   0.098%   6.690%   0.212%   0.125%   0.425%   0.101%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.842%   7.561%   3.505%   5.748%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.399%   3.583%   3.789%  10.334%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.748%   2.689%   5.819%   4.218%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    2.2  1.5  0.5   5.043%   0.504%   1.046%   0.718%   0.021%   1.688%   1.152%   0.964%   1.190%   0.542%
   12    3.2  1.5  0.5  12.574%   1.139%   3.803%   9.068%   0.241%  10.552%   0.245%   0.103%   1.394%   0.022%
   13    4.2  1.5  0.5  16.049%   1.845%   2.554%   4.403%   0.128%   5.021%   1.472%   0.281%   0.442%   0.180%
   14    5.2  1.5  0.5   0.950%   9.819%   7.098%   3.374%   8.193%   0.191%   0.187%   0.013%   0.127%   0.565%
   15    6.2  1.5  0.5   3.544%   8.387%   5.528%   8.274%  17.486%   0.390%   0.436%   0.188%   0.036%   0.185%
   16    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.310%   1.941%   6.831%  24.081%
   17    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.708%   0.270%   6.637%   5.243%
   18    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.074%  15.147%   5.899%   8.168%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.504%   5.043%   0.718%   1.046%   1.688%   0.021%   0.964%   1.152%   0.542%   1.190%
   21    3.2  1.5 -0.5   1.139%  12.574%   9.068%   3.803%  10.552%   0.241%   0.103%   0.245%   0.022%   1.394%
   22    4.2  1.5 -0.5   1.845%  16.049%   4.403%   2.554%   5.021%   0.128%   0.281%   1.472%   0.180%   0.442%
   23    5.2  1.5 -0.5   9.819%   0.950%   3.374%   7.098%   0.191%   8.193%   0.013%   0.187%   0.565%   0.127%
   24    6.2  1.5 -0.5   8.387%   3.544%   8.274%   5.528%   0.390%  17.486%   0.188%   0.436%   0.185%   0.036%
   25    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.941%   3.310%  24.081%   6.831%
   26    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.270%  11.708%   5.243%   6.637%
   27    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.147%   1.074%   8.168%   5.899%
   28    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    2.2  1.5 -1.5  10.330%   1.860%   8.183%   7.698%  12.912%   0.898%   0.050%   0.123%   0.599%   0.726%
   30    3.2  1.5 -1.5   4.455%   0.240%   0.892%   4.728%   0.055%   3.757%   0.796%   2.130%   0.314%   0.303%
   31    4.2  1.5 -1.5   2.889%   0.741%   3.424%   9.894%   3.498%   1.423%   0.364%   0.314%   2.212%   0.096%
   32    5.2  1.5 -1.5   2.353%   5.097%   3.070%   6.635%  26.270%   0.489%   0.372%   0.196%   0.018%   0.248%
   33    6.2  1.5 -1.5   0.371%  11.809%   6.942%   2.669%   6.690%   0.098%   0.125%   0.212%   0.101%   0.425%
   34    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.561%   1.842%   5.748%   3.505%
   35    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.583%  21.399%  10.334%   3.789%
   36    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.689%  19.748%   4.218%   5.819%
   37    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   38    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   39    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   40    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.001%
   41    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   42    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   46    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   47    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   48    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   0.000%
   49    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   50    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52

    1    1.2  1.5  1.5   0.000%   0.000%
    2    2.2  1.5  1.5   0.030%   0.060%
    3    3.2  1.5  1.5   0.052%   0.321%
    4    4.2  1.5  1.5   0.102%   0.157%
    5    5.2  1.5  1.5   0.465%   0.600%
    6    6.2  1.5  1.5   1.546%   1.528%
    7    7.2  1.5  1.5   4.043%  19.361%
    8    8.2  1.5  1.5   6.254%   2.564%
    9    9.2  1.5  1.5   7.951%   5.001%
   10    1.2  1.5  0.5   0.000%   0.000%
   11    2.2  1.5  0.5   0.258%   0.140%
   12    3.2  1.5  0.5   0.133%   0.020%
   13    4.2  1.5  0.5   0.135%   0.079%
   14    5.2  1.5  0.5   1.315%   1.729%
   15    6.2  1.5  0.5   0.390%   0.663%
   16    7.2  1.5  0.5   6.426%   5.625%
   17    8.2  1.5  0.5   8.749%   9.740%
   18    9.2  1.5  0.5   6.804%   7.753%
   19    1.2  1.5 -0.5   0.000%   0.000%
   20    2.2  1.5 -0.5   0.140%   0.258%
   21    3.2  1.5 -0.5   0.020%   0.133%
   22    4.2  1.5 -0.5   0.079%   0.135%
   23    5.2  1.5 -0.5   1.729%   1.315%
   24    6.2  1.5 -0.5   0.663%   0.390%
   25    7.2  1.5 -0.5   5.625%   6.426%
   26    8.2  1.5 -0.5   9.740%   8.749%
   27    9.2  1.5 -0.5   7.753%   6.804%
   28    1.2  1.5 -1.5   0.000%   0.000%
   29    2.2  1.5 -1.5   0.060%   0.030%
   30    3.2  1.5 -1.5   0.321%   0.052%
   31    4.2  1.5 -1.5   0.157%   0.102%
   32    5.2  1.5 -1.5   0.600%   0.465%
   33    6.2  1.5 -1.5   1.528%   1.546%
   34    7.2  1.5 -1.5  19.361%   4.043%
   35    8.2  1.5 -1.5   2.564%   6.254%
   36    9.2  1.5 -1.5   5.001%   7.951%
   37    1.2  0.5  0.5   0.000%   0.000%
   38    2.2  0.5  0.5   0.001%   0.001%
   39    3.2  0.5  0.5   0.001%   0.001%
   40    4.2  0.5  0.5   0.000%   0.000%
   41    5.2  0.5  0.5   0.001%   0.001%
   42    6.2  0.5  0.5   0.000%   0.000%
   43    7.2  0.5  0.5   0.000%   0.000%
   44    8.2  0.5  0.5   0.000%   0.000%
   45    1.2  0.5 -0.5   0.000%   0.000%
   46    2.2  0.5 -0.5   0.001%   0.001%
   47    3.2  0.5 -0.5   0.001%   0.001%
   48    4.2  0.5 -0.5   0.000%   0.000%
   49    5.2  0.5 -0.5   0.001%   0.001%
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
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1304.39       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    104126.94  97911.90   3134.18   3075.95      3.62      0.11      0.90
 REAL TIME  *    105089.01 SEC
 DISK USED  *         1.31 GB (local),       15.80 GB (total)
 SF USED    *         6.91 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -331.735048028369

              CI              CI           MULTI         RHF-SCF
   -331.88667662   -331.69340461   -331.11564531   -331.20902817
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
