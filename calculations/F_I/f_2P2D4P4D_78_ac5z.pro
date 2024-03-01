
 Working directory              : /wrk/irikura/molpro.NR3omDjvo6/
 Global scratch directory       : /wrk/irikura/molpro.NR3omDjvo6/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NR3omDjvo6/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,F SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={F};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 ! start with dication to get better 3s3p orbitals
 {rhf,so-sci;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! Active space (7/8) to get 3p orbs
 {multi
     closed,1,0;
     occ,3,6
     wf,nelec=9,sym=2,spin=1;state,8;
     wf,nelec=9,sym=2,spin=3;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(9) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Feb-24          TIME: 17:00:37  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry F      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry F      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  F       9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     115.606 MB (compressed) written to integral file ( 12.5%)

     Node minimum: 6.816 MB, node maximum: 12.059 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5717064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5717064      RECORD LENGTH: 524288

 Memory used in sort:       6.27 MW

 SORT1 READ   116167465. AND WROTE      980139. INTEGRALS IN      3 RECORDS. CPU TIME:     0.53 SEC, REAL TIME:     0.54 SEC
 SORT2 READ    12192376. AND WROTE    68575111. INTEGRALS IN    444 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.16 SEC

 Node minimum:     5710154.  Node maximum:     5725412. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.578E-05 0.405E-03 0.391E-02 0.886E-02 0.376E-01 0.376E-01 0.376E-01 0.376E-01
         2 0.317E-03 0.317E-03 0.317E-03 0.260E-01 0.260E-01 0.260E-01 0.387E-01 0.387E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.17      1.82
 REAL TIME  *         2.89 SEC
 DISK USED  *        30.07 MB (local),      580.39 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   0
 
 SO-SCI SOLVER WITH NELEC=7 SYM=2 MS2=3 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                 2   (    2    0)
 Number of singly occupied active orbitals:       3   (    0    3)
 Number of virtual orbitals:                    176   (   85   91)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -97.27540119     -97.27540119    1.22796274    1.22796274    0.00000000    0    0.37E+00      0.12
    2    1    0     -97.68936100      -0.41395981    0.22771920    0.22771920    0.00000000    0    0.53E-01      0.24
    3    1    0     -97.69672853      -0.00736753    0.02385613    0.02385613    0.00000000    0    0.35E-02      0.36
    4    1    0     -97.69679861      -0.00007008    0.00414609    0.00414609    0.00000000    1    0.66E-03      0.47
    5    1    0     -97.69680076      -0.00000215    0.00018634    0.00018634    0.00000000    2    0.34E-04      0.58
    6    1    0     -97.69680077      -0.00000001    0.00002612    0.00002612    0.00000000    3    0.53E-05      0.71

 CONVERGENCE REACHED!  Final gradient:     0.00000123 ( 0.12E-05)
                       Final energy:     -97.69680077
 

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -97.696800765952
  RHF One-electron energy            -126.307861040824
  RHF Two-electron energy              28.611060274871
  RHF Kinetic energy                   98.281917689973
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994046545511

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -28.10648     1  1  s    0.99042
    2.1     2.00000    -2.92101     1  2  s    1.08066
    1.2     1.00000    -2.34359     1  1  px   1.17761    1  1  pz  -0.30608
    2.2     1.00000    -2.34359     1  1  py   0.99582    1  1  pz  -0.66516
    3.2     1.00000    -2.34359     1  1  py   0.69914    1  1  pz   0.97360


 HOMO      3.2    -2.343588 =     -63.7723eV
 LUMO      3.1    -0.466855 =     -12.7038eV
 LUMO-HOMO         1.876733 =      51.0685eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       31.09       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        0.84       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.94      0.77      1.82
 REAL TIME  *         3.74 SEC
 DISK USED  *        32.03 MB (local),      603.90 MB (total)
 SF USED    *         5.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     172 (   84   88)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.2)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 1 6   4 3 5 2 112 8 71514  11 91013 4 6 3 5 2 8  12 711 915141310 2 4
                                        6 5 3 1 7 911131014  15 812 2 4 3 6 5 1 4   6 5 3 2 111 912 8 7  10131415 4 5 6 3 2 1
                                        1 5 3 4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.391D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.187D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 4   5 7 9 6 810 3 2 1 6   7 9 810 5 4 3 1 221  13141618201517111219
                                       10 8 9 7 6 5 4 3 2 1  14161211171521131920  18 7 9 810 4 5 6 3 2   110 8 6 4 5 9 7 3 2
                                        110 8 9 7 6 4 5 3 2   1 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  782  ( 2 closed/active, 84 closed/virtual, 0 active/active, 696 active/virtual )
 Total number of variables:    22830
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0    -98.98493039     -99.09405723   -0.10912684    0.63148346 0.00257158 0.00274889  0.87E+00      1.85
   2    7   28    0    -99.09825461     -99.09875612   -0.00050151    0.03801724 0.00001639 0.00002184  0.48E-01      3.67
   3    6   23    0    -99.09875798     -99.09875800   -0.00000002    0.00021625 0.00000925 0.00000448  0.27E-03      5.67
   4    4   12    0    -99.09875800     -99.09875800   -0.00000000    0.00000143 0.00000000 0.00000006  0.30E-05      6.60

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.24E-08)
                       Final energy:    -99.09875800
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.475418024068
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.93964142
 One electron energy                          -139.89274992
 Two electron energy                            40.41733189
 Virial ratio                                    1.98549407
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.475418024068
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.93964142
 One electron energy                          -139.89274992
 Two electron energy                            40.41733189
 Virial ratio                                    1.98549407
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.475418024068
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.93964142
 One electron energy                          -139.89274992
 Two electron energy                            40.41733189
 Virial ratio                                    1.98549407
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -99.006409071222
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.49557112
 One electron energy                          -135.19771812
 Two electron energy                            36.19130905
 Virial ratio                                    1.99508358
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -99.006409071222
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.49557112
 One electron energy                          -135.19771812
 Two electron energy                            36.19130905
 Virial ratio                                    1.99508358
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -99.006409071222
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.49557112
 One electron energy                          -135.19771812
 Two electron energy                            36.19130905
 Virial ratio                                    1.99508358
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -99.006409071205
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.49557112
 One electron energy                          -135.19771812
 Two electron energy                            36.19130905
 Virial ratio                                    1.99508358
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -99.006409071205
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.49557112
 One electron energy                          -135.19771812
 Two electron energy                            36.19130905
 Virial ratio                                    1.99508358
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -99.020647698694
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.44105774
 One electron energy                          -135.14275266
 Two electron energy                            36.12210496
 Virial ratio                                    1.99577227
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -99.020647698694
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.44105774
 One electron energy                          -135.14275266
 Two electron energy                            36.12210496
 Virial ratio                                    1.99577227
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -99.020647698694
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.44105774
 One electron energy                          -135.14275266
 Two electron energy                            36.12210496
 Virial ratio                                    1.99577227
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy               -99.011977080212
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.46100945
 One electron energy                          -135.16357204
 Two electron energy                            36.15159496
 Virial ratio                                    1.99548534
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy               -99.011977080212
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.46100945
 One electron energy                          -135.16357204
 Two electron energy                            36.15159496
 Virial ratio                                    1.99548534
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy               -99.011977080207
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.46100945
 One electron energy                          -135.16357204
 Two electron energy                            36.15159496
 Virial ratio                                    1.99548534
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy               -99.011977080207
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.46100945
 One electron energy                          -135.16357204
 Two electron energy                            36.15159496
 Virial ratio                                    1.99548534
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy               -99.011977080207
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.46100945
 One electron energy                          -135.16357204
 Two electron energy                            36.15159496
 Virial ratio                                    1.99548534
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.993194871164
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.121814289378
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.884990839458
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.001417992905
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.589155782560
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.409425863912
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.547632397997
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.452367962626
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.068109392419
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.962899819529
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.968990788052
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.364502851190
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.635514340016
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.075785000493
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     2.094694957374
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.829502850927
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.887094862686
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.879925018930
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.232980118384
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.030857730929
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.380533201024
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.588609255797
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.129086347359
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.870913464890
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.995343662354
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.298487079685
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.706169257961
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     2.584073061480
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.415900830820
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.492587990383
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.137539154675
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     1.369898962642
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.119710266150
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.998260691693
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.882029042157
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.967724276165
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.030311016415
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.001964880291
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     2.323281254644
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.676718572484
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.936546945228
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.738613100785
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.324839953987
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.051424087330
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.948584829165
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.431627009124
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     2.767765887950
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.800598186431
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 5 3 6 2 3   5 4 6 2 112 8 71514   9111013 4 3 5 6 2 8  12 71415 9111013 2 4
                                        3 5 6 1 713101514 9  11 812 2 5 4 3 6 1 5   4 3 6 2 112 811 9 7  10131415 5 4 6 3 2 1
                                        1 5 3 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 2 3 4   5 6 7 910 8 3 1 2 6  10 8 7 9 4 5 2 3 121  13141620181915171112
                                        9 7 810 6 4 5 3 2 1  14161112182019211317  15 9 7 810 4 5 6 3 2   110 8 7 9 4 5 6 3 2
                                        110 8 7 9 6 4 5 3 2   1 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.83103     1  1  s    0.98995
    2.1     1.99630    -1.88792     1  2  s    1.04328
    3.1     0.00398     1.29067     1  2  s   -1.83839    1  4  s   -0.59540    1  5  s    1.44341    1  6  s    1.21961
    1.2     1.39175    -0.82317     1  1  py   1.07709
    2.2     1.39175    -0.82317     1  1  pz   1.07709
    3.2     1.39175    -0.82317     1  1  px   1.07709
    4.2     0.27482     0.08792     1  1  py  -0.29578    1 10  py   1.04592
    5.2     0.27482     0.08792     1  1  pz  -0.29578    1 10  pz   1.04592
    6.2     0.27482     0.08792     1  1  px  -0.29578    1 10  px   1.04592
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2a2000      0.91338928     -0.04060050      0.33437257     -0.00000000     -0.00000000      0.00000000      0.00000000
 20 22a000     -0.08030845      0.91229706      0.33014848     -0.00000000      0.00000000     -0.00000000      0.00000000
 20 a22000     -0.32711461     -0.33734118      0.85260211     -0.00000000     -0.00000000     -0.00000000      0.00000000
 20 2aab00      0.00000000      0.00000000     -0.00000000     -0.00045166     -0.00011815     -0.00018315      0.65352687
 20 aa200b      0.00000000      0.00000000     -0.00000000      0.00014446      0.00021371      0.00051472     -0.22340959
 20 aa2b00     -0.10312401      0.00458390     -0.03775153      0.57222724      0.05783029      0.01472077      0.00040662
 20 2aa00b      0.10312401     -0.00458390      0.03775153      0.57222724      0.05783029      0.01472077      0.00040662
 20 a2ab00      0.00906703     -0.10300070     -0.03727462     -0.01250262      0.25495991     -0.51560085     -0.00004809
 20 2aa0b0      0.00906703     -0.10300070     -0.03727462      0.01250262     -0.25495991      0.51560085      0.00004809
 20 a2a00b     -0.03693209     -0.03808669      0.09626098     -0.05835010      0.51250003      0.25484127      0.00005985
 20 aa20b0     -0.03693209     -0.03808669      0.09626098      0.05835010     -0.51250003     -0.25484127     -0.00005985
 20 a2a0b0     -0.00000000      0.00000000      0.00000000     -0.00030719      0.00009556      0.00033157      0.43011729
 20 2aba00     -0.00000000     -0.00000000      0.00000000      0.00022711      0.00005664      0.00008492     -0.32838813
 20 2baa00     -0.00000000     -0.00000000     -0.00000000      0.00022455      0.00006150      0.00009822     -0.32513875
 20 ba200a     -0.00000000     -0.00000000      0.00000000     -0.00006627     -0.00010668     -0.00025853      0.10318752
 20 ab200a     -0.00000000     -0.00000000      0.00000000     -0.00007820     -0.00010703     -0.00025619      0.12022207
 20 2ba00a     -0.02171027      0.00096503     -0.00794767     -0.29061124     -0.02936968     -0.00747609     -0.00020650
 20 ab2a00      0.02171027     -0.00096503      0.00794767     -0.29061124     -0.02936968     -0.00747609     -0.00020650
 20 ba2a00      0.08141374     -0.00361887      0.02980386     -0.28161600     -0.02846061     -0.00724468     -0.00020011
 20 2ab00a     -0.08141374      0.00361887     -0.02980386     -0.28161600     -0.02846061     -0.00724468     -0.00020011
 20 a2ba00     -0.00190884      0.02168431      0.00784727      0.00634958     -0.12948390      0.26185297      0.00002442
 20 2ab0a0     -0.00190884      0.02168431      0.00784727     -0.00634958      0.12948390     -0.26185297     -0.00002442
 20 b2a00a      0.00777516      0.00801823     -0.02026543      0.02963367     -0.26027819     -0.12942365     -0.00003040
 20 ba20a0      0.00777516      0.00801823     -0.02026543     -0.02963367      0.26027819      0.12942365      0.00003040
 20 b2a0a0      0.00000000     -0.00000000      0.00000000      0.00014891     -0.00005039     -0.00017127     -0.20816606
 20 b2aa00     -0.00715819      0.08131639      0.02942735      0.00615304     -0.12547601      0.25374788      0.00002367
 20 2ba0a0     -0.00715819      0.08131639      0.02942735     -0.00615304      0.12547601     -0.25374788     -0.00002367
 20 a2b00a      0.02915693      0.03006846     -0.07599556      0.02871643     -0.25222185     -0.12541762     -0.00002945
 20 ab20a0      0.02915693      0.03006846     -0.07599556     -0.02871643      0.25222185      0.12541762      0.00002945
 20 a2b0a0      0.00000000      0.00000000     -0.00000000      0.00015828     -0.00004517     -0.00016030     -0.22195123
 ab 2a2000      0.05336182     -0.00237195      0.01953464     -0.00000000     -0.00000000     -0.00000000      0.00000000
 ab 22a000     -0.00469176      0.05329801      0.01928786     -0.00000000      0.00000000     -0.00000000      0.00000000
 20 2020a0      0.05025263     -0.00223375      0.01839643     -0.00000000     -0.00000000      0.00000000      0.00000000
 20 22000a     -0.00441839      0.05019254      0.01816403     -0.00000000      0.00000000     -0.00000000     -0.00000000
 
 Energy:      -99.47541802    -99.47541802    -99.47541802    -99.00640907    -99.00640907    -99.00640907    -99.00640907

 State:              8
 20 2a2000     -0.00000000
 20 22a000     -0.00000000
 20 a22000      0.00000000
 20 2aab00     -0.11934265
 20 aa200b      0.62564216
 20 aa2b00     -0.00001879
 20 2aa00b     -0.00001879
 20 a2ab00      0.00032281
 20 2aa0b0     -0.00032281
 20 a2a00b     -0.00034988
 20 aa20b0      0.00034988
 20 a2a0b0      0.50629952
 20 2aba00      0.05077444
 20 2baa00      0.06856821
 20 ba200a     -0.31586250
 20 ab200a     -0.30977966
 20 2ba00a      0.00000955
 20 ab2a00      0.00000955
 20 ba2a00      0.00000925
 20 2ab00a      0.00000925
 20 a2ba00     -0.00016394
 20 2ab0a0      0.00016394
 20 b2a00a      0.00017769
 20 ba20a0     -0.00017769
 20 b2a0a0     -0.25900522
 20 b2aa00     -0.00015887
 20 2ba0a0      0.00015887
 20 a2b00a      0.00017219
 20 ab20a0     -0.00017219
 20 a2b0a0     -0.24729429
 ab 2a2000     -0.00000000
 ab 22a000     -0.00000000
 20 2020a0     -0.00000000
 20 22000a      0.00000000
 
 Energy:      -99.00640907
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 a2a0a0      0.00000000     -0.00000000      0.00000000      0.80913604      0.09232791      0.00002723     -0.00187508
 20 aa200a      0.00000000     -0.00000000      0.00000000      0.32460758      0.74689885      0.00005467     -0.00151899
 20 a2aa00      0.68085807     -0.13585078      0.12419940      0.00190765      0.00077064      0.11209704      0.42603794
 20 2aa0a0      0.68085807     -0.13585078      0.12419940     -0.00190765     -0.00077064     -0.11209704     -0.42603794
 20 2aaa00      0.00000000      0.00000000      0.00000000      0.48452846     -0.65457094     -0.00002744     -0.00035608
 20 aa20a0      0.04812784      0.59073398      0.38231623     -0.00012458     -0.00001921      0.64287681      0.15100404
 20 a2a00a      0.04812784      0.59073398      0.38231623      0.00012458      0.00001921     -0.64287681     -0.15100404
 20 2aa00a      0.17766439      0.36059195     -0.57953209      0.00054947      0.00039134     -0.26752034      0.54139630
 20 aa2a00     -0.17766439     -0.36059195      0.57953209      0.00054947      0.00039134     -0.26752034      0.54139630
 
 Energy:      -99.02064770    -99.02064770    -99.02064770    -99.01197708    -99.01197708    -99.01197708    -99.01197708

 State:              8
 20 a2a0a0     -0.00148683
 20 aa200a     -0.00100551
 20 a2aa00      0.55076780
 20 2aa0a0     -0.55076780
 20 2aaa00     -0.00048132
 20 aa20a0     -0.24765025
 20 a2a00a      0.24765025
 20 2aa00a     -0.36434315
 20 aa2a00     -0.36434315
 
 Energy:      -99.01197708
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.58       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.52      3.56      0.77      1.82
 REAL TIME  *        12.24 SEC
 DISK USED  *        40.47 MB (local),      705.17 MB (total)
 SF USED    *        32.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.47541802   2.0
    -99.47541802   2.0
    -99.47541802   2.0
    -99.00640907   6.0
    -99.00640907   6.0
    -99.00640907   6.0
    -99.00640907   6.0
    -99.00640907   6.0
    -99.02064770   2.0
    -99.02064770   2.0
    -99.02064770   2.0
    -99.01197708   6.0
    -99.01197708   6.0
    -99.01197708   6.0
    -99.01197708   6.0
    -99.01197708   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      554 conf     1204 CSFs
 N elec internal:     1016 conf     2352 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     172 (  84  88 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.47541802
     2       -99.47541802
     3       -99.47541802
     4       -99.00640907
     5       -99.00640907
     6       -99.00640907
     7       -99.00640907
     8       -99.00640907

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:     479
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:        231232
 Number of doubly external configurations:       3545730
 Total number of contracted configurations:      3778166
 Total number of uncontracted configurations:   18850280

 Diagonal Coupling coefficients finished.               Storage:   1342717 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    672497 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.47541802     0.00000000    -0.26868401  0.56D-01  0.12D-01     1.19
    1     2     2     1.00000000     0.00000000   -99.47541802     0.00000000    -0.26858968  0.56D-01  0.12D-01     1.19
    1     3     3     1.00000000     0.00000000   -99.47541802     0.00000000    -0.26828163  0.56D-01  0.12D-01     1.19
    1     4     4     1.00000000     0.00000000   -99.00640907     0.00000000    -0.18527498  0.19D-01  0.98D-02     1.19
    1     5     5     1.00000000     0.00000000   -99.00640907     0.00000000    -0.18536852  0.19D-01  0.98D-02     1.19
    1     6     6     1.00000000     0.00000000   -99.00640907     0.00000000    -0.18551259  0.19D-01  0.98D-02     1.19
    1     7     7     1.00000000     0.00000000   -99.00640907     0.00000000    -0.18711592  0.20D-01  0.10D-01     1.19
    1     8     8     1.00000000     0.00000000   -99.00640907     0.00000000    -0.18533297  0.20D-01  0.97D-02     1.19
    2     1     1     1.05618857    -0.24661680   -99.72203482    -0.24661680    -0.01496274  0.14D-02  0.12D-02    55.34
    2     2     2     1.05618642    -0.24656757   -99.72198559    -0.24656757    -0.01498346  0.14D-02  0.12D-02    55.34
    2     3     3     1.05620311    -0.24644088   -99.72185891    -0.24644088    -0.01504657  0.14D-02  0.12D-02    55.34
    2     4     4     1.02829596    -0.18163686   -99.18804593    -0.18163686    -0.00506461  0.26D-03  0.45D-03    55.34
    2     5     5     1.02807958    -0.18163557   -99.18804465    -0.18163557    -0.00503617  0.25D-03  0.44D-03    55.34
    2     6     6     1.02809957    -0.18163411   -99.18804318    -0.18163411    -0.00503989  0.25D-03  0.44D-03    55.34
    2     7     7     1.02808838    -0.18161220   -99.18802127    -0.18161220    -0.00505546  0.25D-03  0.44D-03    55.34
    2     8     8     1.02836154    -0.18157183   -99.18798091    -0.18157183    -0.00511105  0.28D-03  0.44D-03    55.34
    3     1     1     1.05577594    -0.26262939   -99.73804742    -0.01601260    -0.00106389  0.58D-04  0.93D-04   109.21
    3     2     2     1.05576648    -0.26262385   -99.73804187    -0.01605628    -0.00106599  0.59D-04  0.93D-04   109.21
    3     3     3     1.05576056    -0.26260306   -99.73802108    -0.01616218    -0.00107843  0.59D-04  0.94D-04   109.21
    3     4     4     1.02934816    -0.18717769   -99.19358676    -0.00554083    -0.00038597  0.30D-04  0.36D-04   109.21
    3     5     5     1.02934853    -0.18717665   -99.19358572    -0.00554108    -0.00038733  0.30D-04  0.36D-04   109.21
    3     6     6     1.02934512    -0.18717352   -99.19358259    -0.00553941    -0.00038758  0.30D-04  0.36D-04   109.21
    3     7     7     1.02936491    -0.18716637   -99.19357544    -0.00555417    -0.00039068  0.31D-04  0.36D-04   109.21
    3     8     8     1.02932869    -0.18716053   -99.19356960    -0.00558869    -0.00039777  0.31D-04  0.38D-04   109.21
    4     1     1     1.05795315    -0.26396834   -99.73938636    -0.00133895    -0.00010277  0.47D-05  0.92D-05   163.87
    4     2     2     1.05794904    -0.26396731   -99.73938533    -0.00134346    -0.00010337  0.48D-05  0.92D-05   163.87
    4     3     3     1.05794436    -0.26396447   -99.73938249    -0.00136141    -0.00010504  0.48D-05  0.94D-05   163.87
    4     4     4     1.03067435    -0.18768756   -99.19409663    -0.00050987    -0.00005543  0.43D-05  0.55D-05   163.87
    4     5     5     1.03067431    -0.18768750   -99.19409657    -0.00051085    -0.00005541  0.43D-05  0.55D-05   163.87
    4     6     6     1.03067600    -0.18768633   -99.19409540    -0.00051281    -0.00005587  0.43D-05  0.56D-05   163.87
    4     7     7     1.03070022    -0.18768368   -99.19409276    -0.00051732    -0.00005735  0.43D-05  0.57D-05   163.87
    4     8     8     1.03069524    -0.18768303   -99.19409210    -0.00052251    -0.00005848  0.42D-05  0.61D-05   163.87
    5     1     1     1.05879279    -0.26409675   -99.73951478    -0.00012841    -0.00001241  0.71D-06  0.11D-05   218.20
    5     2     2     1.05879408    -0.26409658   -99.73951460    -0.00012927    -0.00001250  0.71D-06  0.11D-05   218.20
    5     3     3     1.05879497    -0.26409618   -99.73951421    -0.00013172    -0.00001279  0.73D-06  0.11D-05   218.20
    5     4     4     1.03087807    -0.18776338   -99.19417245    -0.00007583    -0.00001018  0.60D-06  0.10D-05   218.20
    5     5     5     1.03087898    -0.18776337   -99.19417244    -0.00007587    -0.00001018  0.60D-06  0.10D-05   218.20
    5     6     6     1.03087911    -0.18776306   -99.19417213    -0.00007673    -0.00001032  0.61D-06  0.10D-05   218.20
    5     7     7     1.03088520    -0.18776224   -99.19417131    -0.00007855    -0.00001071  0.64D-06  0.11D-05   218.20
    5     8     8     1.03088822    -0.18776173   -99.19417080    -0.00007869    -0.00001097  0.61D-06  0.11D-05   218.20
    6     1     1     1.05870539    -0.26411268   -99.73953070    -0.00001593    -0.00000174  0.86D-07  0.16D-06   272.27
    6     2     2     1.05870534    -0.26411264   -99.73953066    -0.00001606    -0.00000176  0.87D-07  0.16D-06   272.27
    6     3     3     1.05870449    -0.26411263   -99.73953066    -0.00001645    -0.00000181  0.90D-07  0.16D-06   272.27
    6     4     4     1.03086993    -0.18777714   -99.19418621    -0.00001375    -0.00000230  0.11D-06  0.23D-06   272.27
    6     5     5     1.03087007    -0.18777712   -99.19418619    -0.00001375    -0.00000229  0.11D-06  0.22D-06   272.27
    6     6     6     1.03086965    -0.18777703   -99.19418610    -0.00001397    -0.00000234  0.11D-06  0.23D-06   272.27
    6     7     7     1.03086742    -0.18777678   -99.19418585    -0.00001454    -0.00000247  0.12D-06  0.24D-06   272.27
    6     8     8     1.03086487    -0.18777653   -99.19418560    -0.00001481    -0.00000252  0.12D-06  0.24D-06   272.27
    7     1     1     1.05873460    -0.26411489   -99.73953292    -0.00000221    -0.00000029  0.16D-07  0.25D-07   326.58
    7     2     2     1.05873547    -0.26411485   -99.73953288    -0.00000222    -0.00000028  0.15D-07  0.24D-07   326.58
    7     3     3     1.05873505    -0.26411483   -99.73953286    -0.00000220    -0.00000028  0.15D-07  0.24D-07   326.58
    7     4     4     1.03090035    -0.18778021   -99.19418928    -0.00000307    -0.00000060  0.45D-07  0.57D-07   326.58
    7     5     5     1.03090019    -0.18778019   -99.19418926    -0.00000307    -0.00000060  0.45D-07  0.56D-07   326.58
    7     6     6     1.03090021    -0.18778017   -99.19418924    -0.00000313    -0.00000061  0.45D-07  0.58D-07   326.58
    7     7     7     1.03090041    -0.18778009   -99.19418916    -0.00000331    -0.00000064  0.50D-07  0.60D-07   326.58
    7     8     8     1.03089974    -0.18777988   -99.19418895    -0.00000335    -0.00000066  0.51D-07  0.64D-07   326.58
    8     1     1     1.05875094    -0.26411523   -99.73953326    -0.00000034    -0.00000005  0.21D-08  0.43D-08   381.33
    8     2     2     1.05875107    -0.26411518   -99.73953320    -0.00000032    -0.00000005  0.19D-08  0.42D-08   381.33
    8     3     3     1.05875103    -0.26411516   -99.73953318    -0.00000033    -0.00000005  0.20D-08  0.42D-08   381.33
    8     4     4     1.03089849    -0.18778096   -99.19419003    -0.00000075    -0.00000016  0.10D-07  0.16D-07   381.33
    8     5     5     1.03089846    -0.18778094   -99.19419001    -0.00000075    -0.00000016  0.10D-07  0.16D-07   381.33
    8     6     6     1.03089835    -0.18778093   -99.19419000    -0.00000077    -0.00000016  0.11D-07  0.16D-07   381.33
    8     7     7     1.03089760    -0.18778090   -99.19418997    -0.00000081    -0.00000017  0.11D-07  0.17D-07   381.33
    8     8     8     1.03089781    -0.18778070   -99.19418978    -0.00000082    -0.00000018  0.10D-07  0.19D-07   381.33
    9     1     1     1.05875095    -0.26411523   -99.73953326    -0.00000000    -0.00000005  0.21D-08  0.43D-08   417.10
    9     2     2     1.05875108    -0.26411518   -99.73953320    -0.00000000    -0.00000005  0.19D-08  0.42D-08   417.10
    9     3     3     1.05875104    -0.26411516   -99.73953318    -0.00000000    -0.00000005  0.20D-08  0.42D-08   417.10
    9     4     4     1.03090294    -0.18778119   -99.19419027    -0.00000023    -0.00000002  0.12D-08  0.21D-08   417.10
    9     5     5     1.03090306    -0.18778118   -99.19419025    -0.00000024    -0.00000002  0.13D-08  0.21D-08   417.10
    9     6     6     1.03089877    -0.18778116   -99.19419024    -0.00000023    -0.00000005  0.23D-08  0.47D-08   417.10
    9     7     7     1.03089876    -0.18778114   -99.19419021    -0.00000024    -0.00000005  0.24D-08  0.47D-08   417.10
    9     8     8     1.03090321    -0.18778099   -99.19419007    -0.00000029    -0.00000002  0.13D-08  0.23D-08   417.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.4%
 P   0.3%   5.2%  63.6%

 Initialization:   0.2%
 Other:           30.2%

 Total CPU:      417.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 202/2000           0.9615609   0.0000000   0.0000034   0.0000176   0.0000000   0.0000000   0.0000000  -0.0000000
 2022/000          -0.0000000   0.9615608  -0.0000174   0.0000000   0.0000000  -0.0000007  -0.0000000   0.0000000
 20/22000          -0.0000034   0.0000174   0.9615608   0.0000000  -0.0000000   0.0000000  -0.0000237   0.0000000
 20/2/0\0           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0247824   0.0000166   0.0000065   0.8010022
 202//\00          -0.0000000   0.0000000   0.0000000  -0.0000000   0.7058724   0.0001716   0.0000000   0.3788538
 20//20\0          -0.0000003   0.0000014   0.0763379  -0.0000265   0.0000031  -0.0000155   0.6940864  -0.0000057
 20//2\00          -0.0763379  -0.0000000  -0.0000003   0.6940336  -0.0000000   0.0000007   0.0000265  -0.0000000
 202//0\0           0.0000000  -0.0763378   0.0000014   0.0000007   0.0001637  -0.6938952  -0.0000155   0.0000093
 20/2/\00           0.0000000  -0.0763379   0.0000014  -0.0000007  -0.0001637   0.6938827   0.0000155  -0.0000093
 202//00\           0.0763379   0.0000000   0.0000003   0.6937420  -0.0000000   0.0000007   0.0000265  -0.0000000
 20/2/00\          -0.0000003   0.0000014   0.0763380   0.0000265  -0.0000031   0.0000154  -0.6936914   0.0000057
 20//200\          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.6812417  -0.0001551   0.0000065   0.4216909
 /\22/000          -0.0000000   0.0592995  -0.0000011   0.0000000  -0.0000000   0.0000002   0.0000000   0.0000000
 /\/22000          -0.0000002   0.0000011   0.0592995   0.0000000  -0.0000000   0.0000000  -0.0000051   0.0000000
 /\2/2000           0.0592994   0.0000000   0.0000002   0.0000040   0.0000000   0.0000000   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/2\000   8.2    -0.0000000   0.0872512  -0.0000016  -0.0000000  -0.0000078   0.0331847   0.0000007  -0.0000004
 20/2\000   7.2    -0.0000003   0.0000016   0.0872509  -0.0000013   0.0000001  -0.0000007   0.0331585  -0.0000003
 202/\000   7.2     0.0872500   0.0000000   0.0000003  -0.0331554   0.0000000  -0.0000000  -0.0000013   0.0000000
 20/\2000   8.2     0.0872498   0.0000000   0.0000003   0.0331956  -0.0000000   0.0000000   0.0000013   0.0000000
 202/\000   9.2     0.0000000  -0.0872494   0.0000016  -0.0000000  -0.0000078   0.0331880   0.0000007  -0.0000004
 20/\2000   9.2    -0.0000003   0.0000016   0.0872494   0.0000013  -0.0000001   0.0000007  -0.0332140   0.0000003

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000003    0.967775    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.967775    0.000017    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000017    0.967775    0.000003   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000022    0.984874   -0.000001   -0.000038   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000   -0.000232    0.000004   -0.004889    0.984862
 6           0.000001   -0.000000   -0.000000    0.000001    0.984876   -0.000022    0.000012    0.000232
 7          -0.000000    0.000030   -0.000000    0.000038    0.000022    0.984876    0.000008   -0.000004
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000013   -0.000008    0.984862    0.004889

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967775    0.000000    0.000000   -0.000011    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.967775   -0.000000   -0.000000   -0.000000    0.000001    0.000000   -0.000000
 3           0.000000   -0.000000    0.967775   -0.000000    0.000000   -0.000000    0.000015   -0.000000
 4          -0.000011   -0.000000   -0.000000    0.984874   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.984874   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000001   -0.000000    0.000000   -0.000000    0.984876   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000015   -0.000000    0.000000   -0.000000    0.984876   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.984874


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96777471 (fixed)   0.97185863 (relaxed)   0.96777471 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00845762   -0.00000000   -0.14659306
 Singles      0.04055265   -0.10983081   -0.11289519
 Pairs        0.01869520    0.00000000   -0.00462698
 Total        1.06770547   -0.10983081   -0.26411523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47541802
 Nuclear energy                         0.00000000
 Kinetic energy                       100.40238772
 One electron energy                 -139.18509001
 Two electron energy                   39.44555676
 Virial quotient                       -0.99339802
 Correlation energy                    -0.26411523
 !MRCI STATE 1.2 Energy               -99.739533257764

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.75741530 (Davidson, fixed reference)
 Cluster corrected energies           -99.75505028 (Davidson, relaxed reference)
 Cluster corrected energies           -99.75741530 (Davidson, rotated reference)

 Cluster corrected energies           -99.75171690 (Pople, fixed reference)
 Cluster corrected energies           -99.75007617 (Pople, relaxed reference)
 Cluster corrected energies           -99.75171690 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96777461 (fixed)   0.97185856 (relaxed)   0.96777461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00845770   -0.00000000   -0.14659316
 Singles      0.04055262   -0.10983063   -0.11289512
 Pairs        0.01869536   -0.00000000   -0.00462689
 Total        1.06770569   -0.10983063   -0.26411518
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47541802
 Nuclear energy                         0.00000000
 Kinetic energy                       100.40239465
 One electron energy                 -139.18509428
 Two electron energy                   39.44556108
 Virial quotient                       -0.99339795
 Correlation energy                    -0.26411518
 !MRCI STATE 2.2 Energy               -99.739533199795

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.75741530 (Davidson, fixed reference)
 Cluster corrected energies           -99.75505025 (Davidson, relaxed reference)
 Cluster corrected energies           -99.75741530 (Davidson, rotated reference)

 Cluster corrected energies           -99.75171688 (Pople, fixed reference)
 Cluster corrected energies           -99.75007613 (Pople, relaxed reference)
 Cluster corrected energies           -99.75171688 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96777465 (fixed)   0.97185858 (relaxed)   0.96777465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00845766   -0.00000000   -0.14659313
 Singles      0.04055260   -0.10983065   -0.11289509
 Pairs        0.01869534   -0.00000000   -0.00462694
 Total        1.06770560   -0.10983065   -0.26411516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47541802
 Nuclear energy                         0.00000000
 Kinetic energy                       100.40239161
 One electron energy                 -139.18509270
 Two electron energy                   39.44555952
 Virial quotient                       -0.99339798
 Correlation energy                    -0.26411516
 !MRCI STATE 3.2 Energy               -99.739533183616

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.75741526 (Davidson, fixed reference)
 Cluster corrected energies           -99.75505022 (Davidson, relaxed reference)
 Cluster corrected energies           -99.75741526 (Davidson, rotated reference)

 Cluster corrected energies           -99.75171685 (Pople, fixed reference)
 Cluster corrected energies           -99.75007611 (Pople, relaxed reference)
 Cluster corrected energies           -99.75171685 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.98487392 (fixed)   0.98489767 (relaxed)   0.98487392 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004824    0.00000000   -0.11106759
 Singles      0.01802376   -0.07328482   -0.07436333
 Pairs        0.01288067   -0.00000000   -0.00235028
 Total        1.03095267   -0.07328482   -0.18778119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00640907
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86475089
 One electron energy                 -135.13803103
 Two electron energy                   35.94384077
 Virial quotient                       -0.99328531
 Correlation energy                    -0.18778119
 !MRCI STATE 4.2 Energy               -99.194190265345

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20000259 (Davidson, fixed reference)
 Cluster corrected energies           -99.19999326 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20000259 (Davidson, rotated reference)

 Cluster corrected energies           -99.19810470 (Pople, fixed reference)
 Cluster corrected energies           -99.19809834 (Pople, relaxed reference)
 Cluster corrected energies           -99.19810470 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98486172 (fixed)   0.98489761 (relaxed)   0.98487388 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004820    0.00000000   -0.00001014
 Singles      0.01802392   -0.07328504   -0.07436325
 Pairs        0.01288063   -0.11449474   -0.11340779
 Total        1.03095276   -0.18777978   -0.18778118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00640907
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86474274
 One electron energy                 -135.13802387
 Two electron energy                   35.94383362
 Virial quotient                       -0.99328539
 Correlation energy                    -0.18778118
 !MRCI STATE 5.2 Energy               -99.194190247532

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20000259 (Davidson, fixed reference)
 Cluster corrected energies           -99.19999326 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20000259 (Davidson, rotated reference)

 Cluster corrected energies           -99.19810469 (Pople, fixed reference)
 Cluster corrected energies           -99.19809834 (Pople, relaxed reference)
 Cluster corrected energies           -99.19810469 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98487594 (fixed)   0.98489967 (relaxed)   0.98487597 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004812    0.00000000   -0.11104593
 Singles      0.01802276   -0.07328056   -0.07436450
 Pairs        0.01287749   -0.00002702   -0.00237073
 Total        1.03094838   -0.07330758   -0.18778116
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00640907
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86491350
 One electron energy                 -135.13805459
 Two electron energy                   35.94386436
 Virial quotient                       -0.99328369
 Correlation energy                    -0.18778116
 !MRCI STATE 6.2 Energy               -99.194190235983

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20000176 (Davidson, fixed reference)
 Cluster corrected energies           -99.19999244 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20000176 (Davidson, rotated reference)

 Cluster corrected energies           -99.19810412 (Pople, fixed reference)
 Cluster corrected energies           -99.19809778 (Pople, relaxed reference)
 Cluster corrected energies           -99.19810412 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98487593 (fixed)   0.98489967 (relaxed)   0.98487593 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004820   -0.00000000   -0.11107261
 Singles      0.01802274   -0.07328056   -0.07436449
 Pairs        0.01287751    0.00000050   -0.00234404
 Total        1.03094845   -0.07328005   -0.18778114
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00640907
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86491623
 One electron energy                 -135.13805626
 Two electron energy                   35.94386605
 Virial quotient                       -0.99328367
 Correlation energy                    -0.18778114
 !MRCI STATE 7.2 Energy               -99.194190209875

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20000175 (Davidson, fixed reference)
 Cluster corrected energies           -99.19999242 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20000175 (Davidson, rotated reference)

 Cluster corrected energies           -99.19810410 (Pople, fixed reference)
 Cluster corrected energies           -99.19809776 (Pople, relaxed reference)
 Cluster corrected energies           -99.19810410 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98486168 (fixed)   0.98489754 (relaxed)   0.98487381 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004818   -0.00000000   -0.11051478
 Singles      0.01802432   -0.07328622   -0.07436359
 Pairs        0.01288038   -0.00056829   -0.00290262
 Total        1.03095289   -0.07385451   -0.18778099
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.00640907
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86473302
 One electron energy                 -135.13802649
 Two electron energy                   35.94383642
 Virial quotient                       -0.99328549
 Correlation energy                    -0.18778099
 !MRCI STATE 8.2 Energy               -99.194190065955

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20000243 (Davidson, fixed reference)
 Cluster corrected energies           -99.19999310 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20000243 (Davidson, rotated reference)

 Cluster corrected energies           -99.19810452 (Pople, fixed reference)
 Cluster corrected energies           -99.19809818 (Pople, relaxed reference)
 Cluster corrected energies           -99.19810452 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      236.44       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       431.16    424.63      3.56      0.77      1.82
 REAL TIME  *       458.06 SEC
 DISK USED  *       275.33 MB (local),        3.44 GB (total)
 SF USED    *         2.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.75741530  AU                              
 SETTING HLSDIAG(2)     =       -99.75741530  AU                              
 SETTING HLSDIAG(3)     =       -99.75741526  AU                              
 SETTING HLSDIAG(4)     =       -99.20000259  AU                              
 SETTING HLSDIAG(5)     =       -99.20000259  AU                              
 SETTING HLSDIAG(6)     =       -99.20000176  AU                              
 SETTING HLSDIAG(7)     =       -99.20000175  AU                              
 SETTING HLSDIAG(8)     =       -99.20000243  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  9
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:      344 conf      656 CSFs
 N elec internal:      736 conf     1344 CSFs
 N-1 el internal:      728 conf     1932 CSFs
 N-2 el internal:      492 conf     2060 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     172 (  84  88 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.02064770
     2       -99.02064770
     3       -99.02064770
     4       -99.01197708
     5       -99.01197708
     6       -99.01197708
     7       -99.01197708
     8       -99.01197708

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4828D-07

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.48D-07
 Number of N-2 electron functions:     445
 Number of N-1 electron functions:    1932

 Number of internal configurations:                  656
 Number of singly external configurations:        166064
 Number of doubly external configurations:       3291206
 Total number of contracted configurations:      3457926
 Total number of uncontracted configurations:   15355708

 Diagonal Coupling coefficients finished.               Storage:    889048 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    666088 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.02064770     0.00000000    -0.18254893  0.18D-01  0.93D-02     0.60
    1     2     2     1.00000000     0.00000000   -99.02064770     0.00000000    -0.18273591  0.18D-01  0.93D-02     0.60
    1     3     3     1.00000000     0.00000000   -99.02064770     0.00000000    -0.18274784  0.18D-01  0.94D-02     0.60
    1     4     4     1.00000000     0.00000000   -99.01197708     0.00000000    -0.18363361  0.18D-01  0.95D-02     0.60
    1     5     5     1.00000000     0.00000000   -99.01197708     0.00000000    -0.18616882  0.19D-01  0.10D-01     0.60
    1     6     6     1.00000000     0.00000000   -99.01197708     0.00000000    -0.18304562  0.19D-01  0.93D-02     0.60
    1     7     7     1.00000000     0.00000000   -99.01197708    -0.00000000    -0.18321444  0.19D-01  0.94D-02     0.60
    1     8     8     1.00000000     0.00000000   -99.01197708     0.00000000    -0.18321871  0.19D-01  0.94D-02     0.60
    2     1     1     1.02655970    -0.17976886   -99.20041656    -0.17976886    -0.00531511  0.25D-03  0.45D-03    47.29
    2     2     2     1.02656721    -0.17971762   -99.20036532    -0.17971762    -0.00534782  0.25D-03  0.45D-03    47.29
    2     3     3     1.02654603    -0.17969547   -99.20034317    -0.17969547    -0.00534970  0.25D-03  0.45D-03    47.29
    2     4     4     1.02695580    -0.18054680   -99.19252388    -0.18054680    -0.00513126  0.23D-03  0.45D-03    47.29
    2     5     5     1.02697445    -0.18038536   -99.19236244    -0.18038536    -0.00523115  0.25D-03  0.44D-03    47.29
    2     6     6     1.02703892    -0.18018269   -99.19215977    -0.18018269    -0.00537895  0.26D-03  0.45D-03    47.29
    2     7     7     1.02704998    -0.18013042   -99.19210750    -0.18013042    -0.00541192  0.26D-03  0.45D-03    47.29
    2     8     8     1.02702821    -0.18012042   -99.19209750    -0.18012042    -0.00541210  0.26D-03  0.45D-03    47.29
    3     1     1     1.02798234    -0.18575201   -99.20639971    -0.00598315    -0.00042668  0.24D-04  0.38D-04    94.44
    3     2     2     1.02797822    -0.18574478   -99.20639248    -0.00602716    -0.00043096  0.24D-04  0.38D-04    94.44
    3     3     3     1.02797491    -0.18573827   -99.20638597    -0.00604280    -0.00043514  0.24D-04  0.38D-04    94.44
    3     4     4     1.02821917    -0.18629353   -99.19827061    -0.00574673    -0.00041349  0.23D-04  0.37D-04    94.44
    3     5     5     1.02826962    -0.18628055   -99.19825763    -0.00589518    -0.00041921  0.22D-04  0.38D-04    94.44
    3     6     6     1.02827400    -0.18625899   -99.19823607    -0.00607630    -0.00043603  0.23D-04  0.39D-04    94.44
    3     7     7     1.02826970    -0.18625150   -99.19822858    -0.00612108    -0.00044058  0.23D-04  0.39D-04    94.44
    3     8     8     1.02826626    -0.18624848   -99.19822556    -0.00612806    -0.00044253  0.23D-04  0.39D-04    94.44
    4     1     1     1.02900396    -0.18631509   -99.20696279    -0.00056308    -0.00005746  0.51D-05  0.52D-05   141.32
    4     2     2     1.02900361    -0.18631436   -99.20696206    -0.00056958    -0.00005804  0.51D-05  0.52D-05   141.32
    4     3     3     1.02900386    -0.18631425   -99.20696195    -0.00057598    -0.00005822  0.51D-05  0.52D-05   141.32
    4     4     4     1.02934665    -0.18684967   -99.19882675    -0.00055614    -0.00006061  0.48D-05  0.55D-05   141.32
    4     5     5     1.02935410    -0.18684922   -99.19882630    -0.00056867    -0.00006045  0.49D-05  0.56D-05   141.32
    4     6     6     1.02933861    -0.18684753   -99.19882461    -0.00058854    -0.00006244  0.50D-05  0.57D-05   141.32
    4     7     7     1.02933784    -0.18684681   -99.19882389    -0.00059531    -0.00006302  0.50D-05  0.57D-05   141.32
    4     8     8     1.02933869    -0.18684655   -99.19882363    -0.00059807    -0.00006327  0.51D-05  0.57D-05   141.32
    5     1     1     1.02910058    -0.18639311   -99.20704081    -0.00007802    -0.00000963  0.90D-06  0.87D-06   187.75
    5     2     2     1.02910344    -0.18639296   -99.20704065    -0.00007860    -0.00000968  0.90D-06  0.88D-06   187.75
    5     3     3     1.02910270    -0.18639291   -99.20704061    -0.00007867    -0.00000972  0.90D-06  0.88D-06   187.75
    5     4     4     1.02944929    -0.18693603   -99.19891311    -0.00008636    -0.00001158  0.90D-06  0.11D-05   187.75
    5     5     5     1.02944499    -0.18693564   -99.19891272    -0.00008642    -0.00001189  0.91D-06  0.11D-05   187.75
    5     6     6     1.02944681    -0.18693560   -99.19891268    -0.00008807    -0.00001186  0.92D-06  0.11D-05   187.75
    5     7     7     1.02944607    -0.18693555   -99.19891263    -0.00008874    -0.00001191  0.92D-06  0.11D-05   187.75
    5     8     8     1.02945907    -0.18693521   -99.19891229    -0.00008866    -0.00001208  0.93D-06  0.11D-05   187.75
    6     1     1     1.02910464    -0.18640637   -99.20705407    -0.00001326    -0.00000205  0.85D-07  0.19D-06   235.12
    6     2     2     1.02910436    -0.18640631   -99.20705401    -0.00001335    -0.00000209  0.86D-07  0.19D-06   235.12
    6     3     3     1.02910473    -0.18640630   -99.20705400    -0.00001339    -0.00000209  0.85D-07  0.19D-06   235.12
    6     4     4     1.02943379    -0.18695280   -99.19892988    -0.00001677    -0.00000288  0.13D-06  0.25D-06   235.12
    6     5     5     1.02943170    -0.18695270   -99.19892978    -0.00001706    -0.00000292  0.14D-06  0.25D-06   235.12
    6     6     6     1.02943231    -0.18695268   -99.19892976    -0.00001708    -0.00000293  0.14D-06  0.25D-06   235.12
    6     7     7     1.02943192    -0.18695267   -99.19892975    -0.00001712    -0.00000294  0.14D-06  0.25D-06   235.12
    6     8     8     1.02943061    -0.18695257   -99.19892965    -0.00001736    -0.00000300  0.14D-06  0.26D-06   235.12
    7     1     1     1.02913234    -0.18640918   -99.20705688    -0.00000281    -0.00000052  0.33D-07  0.47D-07   282.01
    7     2     2     1.02913223    -0.18640917   -99.20705686    -0.00000286    -0.00000054  0.34D-07  0.48D-07   282.01
    7     3     3     1.02913224    -0.18640916   -99.20705686    -0.00000285    -0.00000054  0.34D-07  0.48D-07   282.01
    7     4     4     1.02947074    -0.18695687   -99.19893395    -0.00000407    -0.00000082  0.53D-07  0.70D-07   282.01
    7     5     5     1.02947027    -0.18695682   -99.19893390    -0.00000413    -0.00000084  0.55D-07  0.72D-07   282.01
    7     6     6     1.02947024    -0.18695682   -99.19893390    -0.00000414    -0.00000084  0.55D-07  0.72D-07   282.01
    7     7     7     1.02947022    -0.18695682   -99.19893390    -0.00000415    -0.00000084  0.55D-07  0.72D-07   282.01
    7     8     8     1.02947077    -0.18695677   -99.19893385    -0.00000420    -0.00000086  0.59D-07  0.75D-07   282.01
    8     1     1     1.02913501    -0.18640985   -99.20705755    -0.00000067    -0.00000013  0.97D-08  0.12D-07   328.75
    8     2     2     1.02913490    -0.18640984   -99.20705754    -0.00000068    -0.00000014  0.98D-08  0.13D-07   328.75
    8     3     3     1.02913489    -0.18640984   -99.20705753    -0.00000068    -0.00000014  0.97D-08  0.13D-07   328.75
    8     4     4     1.02947238    -0.18695793   -99.19893501    -0.00000106    -0.00000023  0.17D-07  0.20D-07   328.75
    8     5     5     1.02947264    -0.18695792   -99.19893500    -0.00000110    -0.00000024  0.19D-07  0.21D-07   328.75
    8     6     6     1.02947257    -0.18695792   -99.19893500    -0.00000110    -0.00000024  0.19D-07  0.21D-07   328.75
    8     7     7     1.02947257    -0.18695791   -99.19893499    -0.00000110    -0.00000024  0.19D-07  0.21D-07   328.75
    8     8     8     1.02947233    -0.18695788   -99.19893496    -0.00000111    -0.00000025  0.19D-07  0.22D-07   328.75
    9     1     1     1.02913680    -0.18641002   -99.20705772    -0.00000017    -0.00000004  0.19D-08  0.33D-08   376.23
    9     2     2     1.02913690    -0.18641002   -99.20705771    -0.00000017    -0.00000003  0.19D-08  0.32D-08   376.23
    9     3     3     1.02913680    -0.18641001   -99.20705771    -0.00000017    -0.00000004  0.19D-08  0.33D-08   376.23
    9     4     4     1.02947425    -0.18695824   -99.19893532    -0.00000031    -0.00000007  0.42D-08  0.62D-08   376.23
    9     5     5     1.02947430    -0.18695824   -99.19893532    -0.00000032    -0.00000007  0.44D-08  0.64D-08   376.23
    9     6     6     1.02947424    -0.18695823   -99.19893531    -0.00000032    -0.00000007  0.45D-08  0.64D-08   376.23
    9     7     7     1.02947424    -0.18695823   -99.19893531    -0.00000032    -0.00000007  0.45D-08  0.64D-08   376.23
    9     8     8     1.02947392    -0.18695821   -99.19893529    -0.00000033    -0.00000008  0.45D-08  0.67D-08   376.23
   10     1     1     1.02913680    -0.18641002   -99.20705772    -0.00000000    -0.00000004  0.19D-08  0.33D-08   407.03
   10     2     2     1.02913690    -0.18641002   -99.20705771    -0.00000000    -0.00000003  0.19D-08  0.32D-08   407.03
   10     3     3     1.02913679    -0.18641001   -99.20705771    -0.00000000    -0.00000004  0.19D-08  0.33D-08   407.03
   10     4     4     1.02947914    -0.18695837   -99.19893545    -0.00000012    -0.00000001  0.64D-09  0.78D-09   407.03
   10     5     5     1.02947914    -0.18695836   -99.19893544    -0.00000013    -0.00000001  0.64D-09  0.78D-09   407.03
   10     6     6     1.02947913    -0.18695836   -99.19893544    -0.00000012    -0.00000001  0.76D-09  0.11D-08   407.03
   10     7     7     1.02947835    -0.18695833   -99.19893541    -0.00000010    -0.00000002  0.14D-08  0.21D-08   407.03
   10     8     8     1.02947857    -0.18695833   -99.19893541    -0.00000012    -0.00000002  0.12D-08  0.18D-08   407.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.2%   4.9%  63.0%

 Initialization:   0.1%
 Other:           31.3%

 Total CPU:      407.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 202///00           0.0000000  -0.0000000  -0.0000000  -0.0000025   0.0000363  -0.1898324  -0.0000015   0.7797956
 20//200/           0.0000000  -0.0000000   0.0000000  -0.0000340  -0.0000718   0.7703857   0.0000067  -0.2254574
 20/2/00/           0.6950525  -0.0000949   0.0000000   0.6950820  -0.0000441   0.0000337  -0.0001915   0.0000104
 202//00/           0.0000000   0.0000224   0.6950528   0.0000441   0.6950818   0.0000596  -0.0000424  -0.0000178
 202//0/0           0.0000949   0.6950532  -0.0000224  -0.0001915  -0.0000424   0.0000060  -0.6950817   0.0000001
 20/2//00           0.0000949   0.6950535  -0.0000224   0.0001915   0.0000424  -0.0000060   0.6950814  -0.0000001
 20//2/00          -0.0000000  -0.0000224  -0.6950539   0.0000441   0.6950808   0.0000596  -0.0000424  -0.0000178
 20//20/0           0.6950541  -0.0000949   0.0000000  -0.6950805   0.0000441  -0.0000337   0.0001915  -0.0000104
 20/2/0/0           0.0000000   0.0000000   0.0000000  -0.0000365  -0.0000355   0.5802979   0.0000052   0.5544047

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000135    0.985685    0.000000    0.000000    0.000000    0.000000   -0.000001    0.000000
 2           0.985685   -0.000135    0.000032   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000032    0.000000    0.985685   -0.000000    0.000000   -0.000000   -0.000000   -0.000001
 4           0.000000    0.000001    0.000000   -0.000028   -0.000042    0.000272    0.985558    0.000062
 5          -0.000000   -0.000000    0.000001    0.000001   -0.000088    0.000060   -0.000062    0.985558
 6           0.000000    0.000000   -0.000000    0.276967    0.945841   -0.000009    0.000048    0.000085
 7          -0.000000   -0.000000   -0.000000    0.000003    0.000008    0.985559   -0.000272   -0.000060
 8           0.000000   -0.000000    0.000000    0.945841   -0.276966   -0.000000    0.000015   -0.000025

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985685   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.985685    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.985685    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.985559    0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.985559    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.985559   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.985559    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.985559


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98568475 (fixed)   0.98574242 (relaxed)   0.98568476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011700    0.00000000   -0.10980759
 Singles      0.01654910   -0.07341157   -0.07432258
 Pairs        0.01259110   -0.00000000   -0.00227985
 Total        1.02925720   -0.07341157   -0.18641002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.02064770
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85127125
 One electron energy                 -135.16528039
 Two electron energy                   35.95822268
 Virial quotient                       -0.99354827
 Correlation energy                    -0.18641002
 !MRCI STATE 1.2 Energy               -99.207057716027

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.21251155 (Davidson, fixed reference)
 Cluster corrected energies           -99.21248911 (Davidson, relaxed reference)
 Cluster corrected energies           -99.21251155 (Davidson, rotated reference)

 Cluster corrected energies           -99.20978405 (Pople, fixed reference)
 Cluster corrected energies           -99.20977284 (Pople, relaxed reference)
 Cluster corrected energies           -99.20978405 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98568470 (fixed)   0.98574237 (relaxed)   0.98568471 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011700    0.00000000   -0.10980769
 Singles      0.01654910   -0.07341146   -0.07432258
 Pairs        0.01259121    0.00000000   -0.00227975
 Total        1.02925730   -0.07341146   -0.18641002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.02064770
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85127583
 One electron energy                 -135.16528320
 Two electron energy                   35.95822549
 Virial quotient                       -0.99354822
 Correlation energy                    -0.18641002
 !MRCI STATE 2.2 Energy               -99.207057713884

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.21251157 (Davidson, fixed reference)
 Cluster corrected energies           -99.21248912 (Davidson, relaxed reference)
 Cluster corrected energies           -99.21251157 (Davidson, rotated reference)

 Cluster corrected energies           -99.20978406 (Pople, fixed reference)
 Cluster corrected energies           -99.20977284 (Pople, relaxed reference)
 Cluster corrected energies           -99.20978406 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98568476 (fixed)   0.98574242 (relaxed)   0.98568476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011700    0.00000000   -0.10980769
 Singles      0.01654911   -0.07341158   -0.07432258
 Pairs        0.01259109    0.00000012   -0.00227974
 Total        1.02925720   -0.07341146   -0.18641001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.02064770
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85127091
 One electron energy                 -135.16528042
 Two electron energy                   35.95822272
 Virial quotient                       -0.99354827
 Correlation energy                    -0.18641001
 !MRCI STATE 3.2 Energy               -99.207057707143

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.21251154 (Davidson, fixed reference)
 Cluster corrected energies           -99.21248910 (Davidson, relaxed reference)
 Cluster corrected energies           -99.21251154 (Davidson, rotated reference)

 Cluster corrected energies           -99.20978404 (Pople, fixed reference)
 Cluster corrected energies           -99.20977283 (Pople, relaxed reference)
 Cluster corrected energies           -99.20978404 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98555847 (fixed)   0.98557851 (relaxed)   0.98555851 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004059    0.00000000   -0.11035536
 Singles      0.01674021   -0.07334560   -0.07428308
 Pairs        0.01274013   -0.00000720   -0.00231993
 Total        1.02952093   -0.07335280   -0.18695837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01197708
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85905625
 One electron energy                 -135.14824674
 Two electron energy                   35.94931129
 Virial quotient                       -0.99338947
 Correlation energy                    -0.18695837
 !MRCI STATE 4.2 Energy               -99.198935445728

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20445463 (Davidson, fixed reference)
 Cluster corrected energies           -99.20444682 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20445463 (Davidson, rotated reference)

 Cluster corrected energies           -99.20169444 (Pople, fixed reference)
 Cluster corrected energies           -99.20169053 (Pople, relaxed reference)
 Cluster corrected energies           -99.20169444 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98555850 (fixed)   0.98557851 (relaxed)   0.98555851 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004059    0.00000000   -0.00000737
 Singles      0.01674020   -0.07334557   -0.07428306
 Pairs        0.01274013   -0.11361280   -0.11266793
 Total        1.02952093   -0.18695836   -0.18695836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01197708
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85905591
 One electron energy                 -135.14824661
 Two electron energy                   35.94931117
 Virial quotient                       -0.99338948
 Correlation energy                    -0.18695836
 !MRCI STATE 5.2 Energy               -99.198935441648

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20445463 (Davidson, fixed reference)
 Cluster corrected energies           -99.20444681 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20445463 (Davidson, rotated reference)

 Cluster corrected energies           -99.20169443 (Pople, fixed reference)
 Cluster corrected energies           -99.20169053 (Pople, relaxed reference)
 Cluster corrected energies           -99.20169443 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94584091 (fixed)   0.98557851 (relaxed)   0.98555850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004061    0.00000000   -0.11035333
 Singles      0.01674036   -0.07334514   -0.07428285
 Pairs        0.01273996   -0.00000974   -0.00232217
 Total        1.02952094   -0.07335488   -0.18695836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01197708
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85907311
 One electron energy                 -135.14826604
 Two electron energy                   35.94933061
 Virial quotient                       -0.99338931
 Correlation energy                    -0.18695836
 !MRCI STATE 6.2 Energy               -99.198935436737

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20445462 (Davidson, fixed reference)
 Cluster corrected energies           -99.20444681 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20445462 (Davidson, rotated reference)

 Cluster corrected energies           -99.20169443 (Pople, fixed reference)
 Cluster corrected energies           -99.20169052 (Pople, relaxed reference)
 Cluster corrected energies           -99.20169443 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98555884 (fixed)   0.98557888 (relaxed)   0.98555888 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004059    0.00000000   -0.11036725
 Singles      0.01674199   -0.07334755   -0.07428292
 Pairs        0.01273756    0.00000694   -0.00230817
 Total        1.02952014   -0.07334062   -0.18695833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01197708
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85909320
 One electron energy                 -135.14832346
 Two electron energy                   35.94938805
 Virial quotient                       -0.99338911
 Correlation energy                    -0.18695833
 !MRCI STATE 7.2 Energy               -99.198935412851

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20445445 (Davidson, fixed reference)
 Cluster corrected energies           -99.20444664 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20445445 (Davidson, rotated reference)

 Cluster corrected energies           -99.20169433 (Pople, fixed reference)
 Cluster corrected energies           -99.20169043 (Pople, relaxed reference)
 Cluster corrected energies           -99.20169433 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94584126 (fixed)   0.98557878 (relaxed)   0.98555878 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004059    0.00000000   -0.11036359
 Singles      0.01674176   -0.07334727   -0.07428290
 Pairs        0.01273801    0.00000292   -0.00231184
 Total        1.02952036   -0.07334435   -0.18695833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.01197708
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85908594
 One electron energy                 -135.14831145
 Two electron energy                   35.94937604
 Virial quotient                       -0.99338918
 Correlation energy                    -0.18695833
 !MRCI STATE 8.2 Energy               -99.198935409471

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.20445449 (Davidson, fixed reference)
 Cluster corrected energies           -99.20444667 (Davidson, relaxed reference)
 Cluster corrected energies           -99.20445449 (Davidson, rotated reference)

 Cluster corrected energies           -99.20169435 (Pople, fixed reference)
 Cluster corrected energies           -99.20169044 (Pople, relaxed reference)
 Cluster corrected energies           -99.20169435 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      450.38       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       844.29    413.13    424.63      3.56      0.77      1.82
 REAL TIME  *       892.44 SEC
 DISK USED  *       489.28 MB (local),        5.95 GB (total)
 SF USED    *         2.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(9)     =       -99.21251155  AU                              
 SETTING HLSDIAG(10)    =       -99.21251157  AU                              
 SETTING HLSDIAG(11)    =       -99.21251154  AU                              
 SETTING HLSDIAG(12)    =       -99.20445463  AU                              
 SETTING HLSDIAG(13)    =       -99.20445463  AU                              
 SETTING HLSDIAG(14)    =       -99.20445462  AU                              
 SETTING HLSDIAG(15)    =       -99.20445445  AU                              
 SETTING HLSDIAG(16)    =       -99.20445449  AU                              


        HLSDIAG
    -99.75741530
    -99.75741530
    -99.75741526
    -99.20000259
    -99.20000259
    -99.20000176
    -99.20000175
    -99.20000243
    -99.21251155
    -99.21251157
    -99.21251154
    -99.20445463
    -99.20445463
    -99.20445462
    -99.20445445
    -99.20445449
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       5.67 sec

       26643658. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19777 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      5.67 sec, REAL time:      5.99 sec


 SORTLS1 read    80941655. and wrote    80941655. SO integrals in   336 records. CPU time:      0.73 sec, REAL time:      1.07 sec
 SORTLS2 read    80941655. and wrote   406960599. SO integrals in    36 records. CPU time:      0.44 sec, REAL time:      0.64 sec

 FILE SIZES: FILE 1:  1337.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1337.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:    -99.739533    -99.739533    -99.739533    -99.194190    -99.194190    -99.194190    -99.194190    -99.194190
 Replaced energies:    -99.757415    -99.757415    -99.757415    -99.200003    -99.200003    -99.200002    -99.200002    -99.200002

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:    -99.207058    -99.207058    -99.207058    -99.198935    -99.198935    -99.198935    -99.198935    -99.198935
 Replaced energies:    -99.212512    -99.212512    -99.212512    -99.204455    -99.204455    -99.204455    -99.204454    -99.204454

 >>> Fock matrix approximation error in all internal so: 
   4.1744628250361053       (exact)    4.2415830998378983       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.2412346068455236       (exact)   -5.8758863720058256       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0283386801145529E-004  (exact)   -7.8187196963585149E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.9997575994848283E-004  (exact)   -2.2420471455454380E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3569365303822009E-004  (exact)    4.7293092893720151E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7012374621130061E-004  (exact)   -5.7929064702041152E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3444957573292206E-004  (exact)   -1.3547011083786095E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.1582615574102817E-004  (exact)    8.0250391947343563E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1461565260481015       (exact)   -5.7248752377579493       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1713802869279619E-003  (exact)   -1.3042625819168242E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1961634784231753E-004  (exact)   -1.3249258587790631E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.1901459863002493       (exact)    3.4627975758802041       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1744482089007509       (exact)   -4.2061327813949667       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9998147475249067E-004  (exact)    2.2094977812038438E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4255535391234091E-004  (exact)    1.5876676320158349E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1671993969994040E-004  (exact)    1.2895752920591281E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.2407874951631408       (exact)   -5.7900888702883400       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9346958618833657E-005  (exact)   -6.3580298987372754E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7456555575489547       (exact)   -4.8144635428052300       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3195389292854821E-004  (exact)   -2.3545259935471162E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8406103956484110E-004  (exact)    2.8593368232787334E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9088344240633282       (exact)   -5.2975082072898232       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7142787258804669E-003  (exact)   -1.5512422337109390E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3760659730881028E-004  (exact)   -3.0120131031009047E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0009890160928211E-004  (exact)   -5.4342121135589078E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7681232288525128E-003  (exact)   -2.5265759131130675E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8415204197824317E-004  (exact)    2.8839671553759728E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0445894441291014E-004  (exact)   -4.1125015353251910E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7456610052025994       (exact)    4.7790394934810108       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.0019895958620415E-004  (exact)    5.4136046250555128E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0583666886087968E-004  (exact)   -3.6739679150510189E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3795735311764487E-004  (exact)    1.2554132384138623E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9084700479035615       (exact)   -5.3824746743898357       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.6421584387595595E-004  (exact)   -5.1506787993457954E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3022800164282519E-004  (exact)   -2.3356606851894840E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.2579796567294181       (exact)    5.3372861202271453       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.1184996837744074E-004  (exact)    3.1327858294945911E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8995385028240240E-004  (exact)   -2.5993774964332080E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.2916283558303581E-004  (exact)   -6.4977936249094575E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3199517194670514       (exact)    2.9616747868767548       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.3267496601124357E-004  (exact)   -3.9555303305716262E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2836000227794340E-005  (exact)    4.0017354892544951E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3073981335346991E-003  (exact)    1.3263543893945687E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8967055274833615E-004  (exact)   -2.9170791065514942E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6278343535393971E-003  (exact)    1.4594189668852501E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.2227484110529545       (exact)   -5.6309285172337376       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5714279017054100E-003  (exact)   -1.4234327659041208E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0499249377856710E-004  (exact)    2.7752614824330381E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.047734502868078       (exact)   -9.1709645593017814       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.1198334516641131E-005  (exact)   -7.2230575878221619E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5388179585488235       (exact)   -1.5620280395542538       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0011225677428281E-004  (exact)   -8.9703202816814943E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6749534461875586E-003  (exact)   -2.3862486898257223E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.343621460436982       (exact)    10.119383117921238       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.0430273896954858E-004  (exact)    3.6353985394179262E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4991757714163159E-004  (exact)   -1.3369207052816277E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7012361373981826E-004  (exact)   -5.7447594024439695E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.1623527295318291E-004  (exact)   -7.9130302940892661E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.3345361216921736       (exact)    5.8643485900114314       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2969837263936182E-003  (exact)    1.4268959158259776E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8668709892014403       (exact)    3.2338359875955600       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1744450972218381       (exact)   -4.2063125852740022       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3444890363827097E-004  (exact)   -1.3661671476805699E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.2442820711440490       (exact)   -5.7939272245865139       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.2852260784408930E-004  (exact)   -8.0087648014737429E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7431049562219590E-004  (exact)   -1.9533787626715190E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0022726578690088E-004  (exact)   -2.2120776053897144E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.9153863560898106E-004  (exact)   -4.4165660858218293E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3444841268138446E-004  (exact)    1.3547491741291236E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1744268944531679       (exact)   -4.2417297331718142       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.5455835966313346E-005  (exact)    7.6672004183204063E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7416970989103932E-004  (exact)    1.9251437806346906E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2369002857404309E-003  (exact)    1.3867436150926075E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.2427794065533000       (exact)   -5.8779053286799527       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1674468392775366E-004  (exact)   -1.3088736165845768E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.0307845166956077E-005  (exact)    7.8823648933778215E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3074172621838299E-003  (exact)    1.3165625424751428E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0078562213419559E-004  (exact)   -3.0513511030613104E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6283495156784887E-003  (exact)   -1.4836746982076203E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.5909101584601162       (exact)    5.1264314032736245       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.5539869385522440E-003  (exact)    1.4184702084309819E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8814722985407037E-004  (exact)    4.3339039156166435E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.412539000491137       (exact)   -9.4603451419395910       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8960373420351004E-004  (exact)    2.9162948363701180E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7456624998118819       (exact)   -4.8142878721603939       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6224828567331848E-004  (exact)   -1.6472275605787366E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.6673157570584728E-004  (exact)   -3.3406501522758512E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7487175122682021E-003  (exact)   -1.5752108661218362E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9095712760565382       (exact)    5.2989674049139248       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0442332464820879E-003  (exact)    9.3205400633240452E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8094741272180753E-004  (exact)    5.2876391079491715E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8342852968784296E-004  (exact)   -3.8896109168238120E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2979362785419206       (exact)    1.3173756999562878       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8972645926402840E-004  (exact)    4.3782103934667600E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2035963557967539E-004  (exact)    2.0332134545303593E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.6248959533324568E-004  (exact)    6.8251601655811196E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.483449869342824       (exact)   -10.243218815223969       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1005938185865277E-004  (exact)   -3.7413573706664046E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7456576450500547       (exact)    4.7788528665472692       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8968198983018794E-004  (exact)    2.9387102891381927E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9104906321099158       (exact)   -5.3853604519168554       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5401717554260333E-003  (exact)   -1.4122198836718420E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.6706297482349962E-004  (exact)   -3.2923626301263593E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2621498791849025E-004  (exact)   -2.9530270044297830E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8685896484251868E-003  (exact)    2.6062656826778903E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.3245643575345856       (exact)   -5.4043156518650948       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0805840147573105E-004  (exact)    9.6424358033512909E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.1512975190692225E-005  (exact)    6.5876229042906228E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.9335328892732463E-005  (exact)   -8.0381766888413370E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7981077318917600       (exact)   -2.4962753035242931       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3306562474196858E-004  (exact)   -1.2127919883045852E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8202515973018896       (exact)    4.8979665201452640       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7119359277727204E-004  (exact)    5.7478606976996832E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4282779204971101E-003  (exact)    1.6012980907551065E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0539176242417234       (exact)   -6.7872831995698970       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.6197708579787026E-004  (exact)   -1.0648867787858430E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1171498305935807E-005  (exact)    9.1001112006623870E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7119536545029636E-004  (exact)   -5.8114826045276512E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8202400775526693       (exact)    4.8568273382684879       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.3118665592147654E-004  (exact)    2.5538611767835721E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3880168126820518E-005  (exact)   -4.0099106032919604E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.6170000315576657E-004  (exact)    1.0759729314204064E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0563265295712734       (exact)   -6.6902600770032414       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7485502358050771E-004  (exact)   -1.9323061327097021E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5524706532871438E-004  (exact)   -1.5642548996516850E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.21499984044622258       (exact)  -0.32035048445807823       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4444612032448646E-004  (exact)   -1.7913808471078932E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3813621218479054E-004  (exact)    1.5294551054496045E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.9863988531718419       (exact)   -7.7198588055775534       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8768088322423492E-004  (exact)   -2.9199782545658026E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4798222332396493       (exact)    5.5590637473153883       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4106245441844571E-003  (exact)    1.4198109841420444E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.1619612362337264E-004  (exact)   -2.8157395372892832E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.4531429514850586E-004  (exact)   -6.5646990524474258E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8238048759208754       (exact)    6.1187542351351416       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0321599571863202E-003  (exact)    1.8492313051513922E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1821615265559176E-004  (exact)   -1.0948665547022108E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8030179402023980E-004  (exact)   -2.8449165521723442E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4742523204966085E-004  (exact)   -3.5244913047333218E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3440004681402769E-004  (exact)    3.3675214795488571E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0615341102646965E-003  (exact)   -9.4642711760874751E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   13.641267733927675       (exact)    12.418576175340529       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.7800456765348213E-003  (exact)    2.5361274643056859E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.5272201605824266E-004  (exact)    3.2098889773867433E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.42151718891631884       (exact)  -0.43294874825980223       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.5770671086319208       (exact)    4.6456560188602527       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.6584357245772893E-004  (exact)    2.6968750378643326E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4260661211607530       (exact)    8.4001953258415956       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1695133846254446E-003  (exact)    1.0646889831259102E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4079317111928485E-004  (exact)    3.0552885837708654E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0051818520994997E-004  (exact)    2.6663409414204764E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4106073810007580E-003  (exact)   -1.4317416156013813E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4798063020460956       (exact)    5.5183492218220653       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8053859125059191E-004  (exact)   -1.6607423567387288E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.0203376247306619E-004  (exact)   -7.3012973994646753E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0319958540074077E-003  (exact)   -1.8242260172041079E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8250455519296178       (exact)    6.2180360395847014       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0744649685831415E-005  (exact)   -2.5023419234229388E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3702201876549633       (exact)    4.4361216104559835       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.2215798112286747E-005  (exact)    8.3404483388218603E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.8698038843065312       (exact)   -8.8121477729955906       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.5019580979572465E-004  (exact)   -3.1880692005637233E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.2307600826709331E-005  (exact)    8.2804500660831168E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.7818817300703009E-004  (exact)   -3.3768802557443005E-004  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.75741530

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     132.94
                           -0.00       0.00      -0.00       0.00      -0.49      -0.00      -0.00     -15.89      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -132.94      -0.00
                           -0.00       0.00     132.92      -0.00       0.00      -0.00      13.77      -0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -132.92      -0.00       0.00       0.00     -13.78      -0.00       0.00     132.94       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00  122337.95       0.00       0.00       0.00       0.00      -0.00     -13.78
                           -0.00       0.00      -0.00      -0.00     113.42       0.03      -0.00      -3.49       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00  122337.95       0.00       0.00       0.00      -0.00      -0.00
                            0.49      -0.00      -0.00    -113.42      -0.00      -0.00      -0.02       0.00      -0.00      13.53

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00  122338.13       0.00       0.00      13.78      -0.00
                            0.00       0.00      13.78      -0.03       0.00      -0.00      56.76      -0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00  122338.14       0.00       0.00      -0.00
                            0.00     -13.77       0.00       0.00       0.02     -56.76      -0.00       0.00     -13.78      -0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  122337.98      -0.00      -0.00
                           15.89       0.00      -0.00       3.49      -0.00       0.00      -0.00      -0.00       0.00      -8.39

    9   1.2  0.5 -0.5      -0.00    -132.94       0.00      -0.00      -0.00      13.78       0.00      -0.00       0.00       0.00
                            0.00      -0.00    -132.94      -0.00       0.00      -0.00      13.78      -0.00       0.00      -0.00

   10   2.2  0.5 -0.5     132.94      -0.00       0.00     -13.78      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     -13.53      -0.00       0.00       8.39       0.00      -0.00

   11   3.2  0.5 -0.5      -0.00      -0.00      -0.00       0.00     -14.02      -0.00      -0.00      -7.53       0.00       0.00
                          132.94       0.00       0.00      13.78       0.00       0.00       0.00      -0.00      -0.00     132.92

   12   4.2  0.5 -0.5       0.00      13.78      -0.00      -0.00       0.01     -56.75      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -13.78      -0.00       0.00      -0.00      56.71      -0.00       0.00      -0.00

   13   5.2  0.5 -0.5       0.00       0.00      14.02      -0.01      -0.00       0.00     -53.66       0.00       0.00       0.00
                           -0.00      13.53      -0.00      -0.00       0.00     -59.74      -0.00      -0.02      -0.49       0.00

   14   6.2  0.5 -0.5     -13.78       0.00       0.00      56.75      -0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      59.74       0.00       0.00      96.48      -0.00      -0.00

   15   7.2  0.5 -0.5      -0.00       0.00       0.00       0.00      53.66       0.01       0.00     -99.99       0.00       0.00
                          -13.78      -0.00      -0.00     -56.71       0.00      -0.00       0.00       0.00      -0.00      13.77

   16   8.2  0.5 -0.5       0.00       0.00       7.53      -0.00      -0.00      -0.00      99.99      -0.00       0.00       0.00
                            0.00      -8.39       0.00       0.00       0.02     -96.48      -0.00       0.00     -15.89      -0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00     -32.58      -0.01      -0.00     -17.50       0.00       0.00
                           22.18      -0.00       0.00     -32.02      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   18   2.2  1.5  1.5      22.15       0.00       0.00      32.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -31.44      -0.01      -0.00      19.50      -0.00      -0.00

   19   3.2  1.5  1.5      -0.00      22.18      -0.00      -0.00      -0.01      32.03       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -22.15       0.00       0.00       0.00     -32.04      -0.00      -0.00      -0.00

   20   4.2  1.5  1.5      -0.01       0.00      -0.00       0.01     -33.67      -0.01      -0.00      62.73       0.00       0.00
                          -26.27      -0.00       0.00     -35.66      -0.01      -0.00      -0.00      -0.02      -0.00      -0.00

   21   5.2  1.5  1.5      -0.00      26.28       0.00       0.00       0.01     -35.65      -0.01      -0.00       0.00       0.00
                            0.00      -0.00      26.29       0.00      -0.00       0.00     -35.73      -0.00      -0.00      -0.00

   22   6.2  1.5  1.5       0.00       0.00      -7.21      -0.00      -0.00      -0.00      69.32       0.00       0.00       0.00
                           -0.00      29.23       0.00      -0.00      -0.00      20.06      -0.00       0.00      -0.00      -0.00

   23   7.2  1.5  1.5     -26.31      -0.00      -0.00      35.72       0.01       0.00       0.00      -0.02       0.00       0.00
                            0.01       0.00      -0.00       0.01     -37.66      -0.01       0.00     -60.80      -0.00      -0.00

   24   8.2  1.5  1.5      -0.00      -0.00      29.58      -0.00      -0.00       0.00      16.94       0.00       0.00       0.00
                           -0.00      -8.54      -0.00      -0.00      -0.02      68.73       0.00      -0.00      -0.00      -0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      25.62       0.00       0.00       0.01     -36.99      -0.01       0.00      12.81      -0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      12.79       0.00
                           -0.00      -0.00      25.58       0.00      -0.00       0.01     -37.02      -0.00      -0.00       0.00

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      12.81
                            0.00      -0.00      -0.00      -0.00      -1.34      -0.00       0.00     -42.67       0.00      -0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      30.32       0.01      -0.00      -0.00      41.20       0.01      -0.00     -15.17      -0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.17
                           -0.00      -0.00       0.00      -0.01      82.37       0.02       0.00      -2.57       0.00      -0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.43       0.00      -0.00      57.02       0.01       0.00       0.00      -0.00      -0.00      16.87

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.19      -0.00
                            0.00      -0.01      30.38      -0.00      -0.00      -0.01      41.24      -0.00       0.00       0.00

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           24.27       0.00       0.00     -59.68      -0.00       0.00      -0.00       0.00      -0.00      -4.93

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00     -18.81      -0.00      -0.00     -10.10       0.00       0.00
                          -12.81       0.00      -0.00      18.49       0.00       0.00       0.00      -0.00       0.00      25.62

   34   2.2  1.5 -0.5      12.79       0.00       0.00      18.51       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      18.15       0.00       0.00     -11.26      -0.00      -0.00

   35   3.2  1.5 -0.5      -0.00      12.81      -0.00      -0.00      -0.00      18.49       0.00      -0.00       0.00       0.00
                           -0.00       0.00      12.79      -0.00      -0.00      -0.00      18.50       0.00       0.00      -0.00

   36   4.2  1.5 -0.5      -0.00       0.00      -0.00       0.01     -19.44      -0.01      -0.00      36.22       0.00       0.00
                           15.17       0.00      -0.00      20.59       0.01       0.00       0.00       0.01      -0.00      30.32

   37   5.2  1.5 -0.5      -0.00      15.17       0.00       0.00       0.01     -20.58      -0.00      -0.00       0.00       0.00
                           -0.00       0.00     -15.18      -0.00       0.00      -0.00      20.63       0.00      -0.00      -0.00

   38   6.2  1.5 -0.5       0.00       0.00      -4.16      -0.00      -0.00      -0.00      40.02       0.00       0.00       0.00
                            0.00     -16.87      -0.00       0.00       0.00     -11.58       0.00      -0.00      25.43       0.00

   39   7.2  1.5 -0.5     -15.19      -0.00      -0.00      20.62       0.01       0.00       0.00      -0.01       0.00       0.00
                           -0.00      -0.00       0.00      -0.01      21.74       0.01      -0.00      35.10       0.00      -0.01

   40   8.2  1.5 -0.5      -0.00      -0.00      17.08      -0.00      -0.00       0.00       9.78       0.00       0.00       0.00
                            0.00       4.93       0.00       0.00       0.01     -39.68      -0.00       0.00      24.27       0.00

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -22.18       0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.15       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      22.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      26.27       0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      26.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -29.23

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -26.31      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       8.54


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.00       0.00       0.00     -13.78      -0.00       0.00       0.00      22.15      -0.00      -0.01
                         -132.94      -0.00       0.00      -0.00      13.78      -0.00     -22.18       0.00      -0.00      26.27

    2   2.2  0.5  0.5      -0.00      13.78       0.00       0.00       0.00       0.00       0.00       0.00      22.18       0.00
                           -0.00       0.00     -13.53      -0.00       0.00       8.39       0.00      -0.00       0.00       0.00

    3   3.2  0.5  0.5      -0.00      -0.00      14.02       0.00       0.00       7.53       0.00       0.00      -0.00      -0.00
                           -0.00      13.78       0.00       0.00       0.00      -0.00      -0.00       0.00      22.15      -0.00

    4   4.2  0.5  0.5       0.00      -0.00      -0.01      56.75       0.00      -0.00       0.00      32.05      -0.00       0.01
                          -13.78       0.00       0.00      -0.00      56.71      -0.00      32.02      -0.00      -0.00      35.66

    5   5.2  0.5  0.5     -14.02       0.01      -0.00      -0.00      53.66      -0.00     -32.58       0.00      -0.01     -33.67
                           -0.00      -0.00      -0.00     -59.74      -0.00      -0.02       0.00      31.44      -0.00       0.01

    6   6.2  0.5  0.5      -0.00     -56.75       0.00      -0.00       0.01      -0.00      -0.01       0.00      32.03      -0.01
                           -0.00       0.00      59.74      -0.00       0.00      96.48       0.00       0.01      -0.00       0.00

    7   7.2  0.5  0.5      -0.00      -0.00     -53.66      -0.01       0.00      99.99      -0.00       0.00       0.00      -0.00
                           -0.00     -56.71       0.00      -0.00      -0.00       0.00       0.00       0.00      32.04       0.00

    8   8.2  0.5  0.5      -7.53       0.00       0.00       0.00     -99.99      -0.00     -17.50       0.00      -0.00      62.73
                            0.00       0.00       0.02     -96.48      -0.00      -0.00      -0.00     -19.50       0.00       0.02

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.49       0.00       0.00      15.89       0.00       0.00       0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -132.92       0.00      -0.00       0.00     -13.77       0.00       0.00       0.00       0.00       0.00

   11   3.2  0.5 -0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      13.78       0.00      -0.00       0.00       0.00       0.00       0.00

   12   4.2  0.5 -0.5       0.00  122337.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -113.42      -0.03       0.00       3.49       0.00       0.00       0.00       0.00

   13   5.2  0.5 -0.5       0.00       0.00  122337.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     113.42       0.00       0.00       0.02      -0.00       0.00       0.00       0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00  122338.13       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.78       0.03      -0.00       0.00     -56.76       0.00       0.00       0.00       0.00       0.00

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00  122338.14       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.02      56.76       0.00      -0.00       0.00       0.00       0.00       0.00

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00  122337.98       0.00       0.00       0.00       0.00
                            0.00      -3.49       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00  119592.55       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      78.95      -0.00      -0.01

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  119592.55       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -78.95       0.00       0.00      84.74

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  119592.55       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  121360.84
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01     -84.74      -0.00       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01       0.01      -0.00      -0.00

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      70.78       0.01

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      84.74       0.01       0.00     -79.07

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      67.58      -0.01

   25   1.2  1.5  0.5       0.00       0.00     -18.81      -0.00      -0.00     -10.10      -0.00      -0.00      -0.01       0.00
                            0.00     -18.49      -0.00      -0.00      -0.00       0.00       0.00       0.00      45.58       0.00

   26   2.2  1.5  0.5       0.00      18.51       0.00       0.00       0.00       0.00       0.00       0.00     -45.58       0.00
                           -0.00       0.00     -18.15      -0.00      -0.00      11.26      -0.00       0.00      -0.01       0.00

   27   3.2  1.5  0.5      -0.00      -0.00      -0.00      18.49       0.00      -0.00       0.01      45.58       0.00       0.01
                          -12.79       0.00       0.00       0.00     -18.50      -0.00     -45.58       0.01       0.00     -48.92

   28   4.2  1.5  0.5      -0.00       0.01     -19.44      -0.01      -0.00      36.22      -0.00      -0.00      -0.01       0.00
                            0.00     -20.59      -0.01      -0.00      -0.00      -0.01      -0.00      -0.00      48.92       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.01     -20.58      -0.00      -0.00      -0.00     -48.92      -0.00      -0.01
                           15.18       0.00      -0.00       0.00     -20.63      -0.00     -48.92       0.00      -0.00     -45.65

   30   6.2  1.5  0.5      -4.16      -0.00      -0.00      -0.00      40.02       0.00     -13.38      -0.00       0.00     -88.71
                            0.00      -0.00      -0.00      11.58      -0.00       0.00       0.00      54.20       0.00      -0.01

   31   7.2  1.5  0.5      -0.00      20.62       0.01       0.00       0.00      -0.01      -0.00       0.00     -48.92       0.00
                           -0.00       0.01     -21.74      -0.01       0.00     -35.10       0.00       0.00      -0.01       0.00

   32   8.2  1.5  0.5      17.08      -0.00      -0.00       0.00       9.78       0.00      54.89      -0.01       0.00     -21.60
                           -0.00      -0.00      -0.01      39.68       0.00      -0.00      -0.00     -15.86       0.00      -0.02

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01     -36.99      -0.01       0.00      -0.00      -0.00      -0.00      -0.00

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.58       0.00      -0.00       0.01     -37.02      -0.00      -0.00      -0.00      -0.00      -0.00

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.34      -0.00       0.00     -42.67      -0.00      -0.00      -0.00      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      41.20       0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      82.37       0.02       0.00      -2.57      -0.00      -0.00      -0.00      -0.00

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      57.02       0.01       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.38      -0.00      -0.00      -0.01      41.24      -0.00      -0.00      -0.00      -0.00      -0.00

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -59.68      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  1.5 -1.5       0.00       0.00     -32.58      -0.01      -0.00     -17.50       0.00       0.00       0.00       0.00
                           -0.00      32.02       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5       0.00      32.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      31.44       0.01       0.00     -19.50      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5      -0.00      -0.00      -0.01      32.03       0.00      -0.00       0.00       0.00       0.00       0.00
                           22.15      -0.00      -0.00      -0.00      32.04       0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5      -0.00       0.01     -33.67      -0.01      -0.00      62.73       0.00       0.00       0.00       0.00
                           -0.00      35.66       0.01       0.00       0.00       0.02      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.01     -35.65      -0.01      -0.00       0.00       0.00       0.00       0.00
                          -26.29      -0.00       0.00      -0.00      35.73       0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5      -7.21      -0.00      -0.00      -0.00      69.32       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -20.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5      -0.00      35.72       0.01       0.00       0.00      -0.02       0.00       0.00       0.00       0.00
                            0.00      -0.01      37.66       0.01      -0.00      60.80      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5      29.58      -0.00      -0.00       0.00      16.94       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.02     -68.73      -0.00       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      -0.00       0.00     -26.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00       0.00       0.00     -25.43

    2   2.2  0.5  0.5      26.28       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -29.23      -0.00       8.54     -25.62       0.00       0.00     -30.32       0.00      -0.00

    3   3.2  0.5  0.5       0.00      -7.21      -0.00      29.58       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.29      -0.00       0.00       0.00      -0.00     -25.58       0.00      -0.01      -0.00       0.00

    4   4.2  0.5  0.5       0.00      -0.00      35.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.01     -57.02

    5   5.2  0.5  0.5       0.01      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      37.66       0.02      -0.01       0.00       1.34       0.00     -82.37      -0.01

    6   6.2  0.5  0.5     -35.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -20.06       0.01     -68.73      36.99      -0.01       0.00     -41.20      -0.02      -0.00

    7   7.2  0.5  0.5      -0.01      69.32       0.00      16.94       0.00       0.00       0.00       0.00       0.00       0.00
                           35.73       0.00      -0.00      -0.00       0.01      37.02      -0.00      -0.01      -0.00      -0.00

    8   8.2  0.5  0.5      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      60.80       0.00      -0.00       0.00      42.67       0.00       2.57       0.00

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      12.79      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00     -12.81       0.00      -0.00      15.17      -0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      12.81       0.00      15.17       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -16.87

   11   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -4.16
                            0.00       0.00       0.00       0.00      -0.00       0.00      12.79      -0.00     -15.18      -0.00

   12   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      18.51      -0.00       0.01       0.00      -0.00
                            0.00       0.00       0.00       0.00      18.49      -0.00      -0.00      20.59      -0.00       0.00

   13   5.2  0.5 -0.5       0.00       0.00       0.00       0.00     -18.81       0.00      -0.00     -19.44       0.01      -0.00
                            0.00       0.00       0.00       0.00       0.00      18.15      -0.00       0.01       0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      18.49      -0.01     -20.58      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -11.58

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      40.02
                            0.00       0.00       0.00       0.00       0.00       0.00      18.50       0.00      20.63       0.00

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00     -10.10       0.00      -0.00      36.22      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     -11.26       0.00       0.01       0.00      -0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00     -13.38
                           -0.01       0.00     -84.74       0.00      -0.00       0.00      45.58       0.00      48.92      -0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      45.58      -0.00     -48.92      -0.00
                           -0.01       0.00      -0.01      -0.00      -0.00      -0.00      -0.01       0.00      -0.00     -54.20

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.01     -45.58       0.00      -0.01      -0.00       0.00
                            0.00     -70.78      -0.00     -67.58     -45.58       0.01      -0.00     -48.92       0.00      -0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.01     -88.71
                            0.00      -0.01      79.07       0.01      -0.00      -0.00      48.92      -0.00      45.65       0.01

   21   5.2  1.5  1.5  121360.84       0.00       0.00       0.00       0.00      48.92       0.00       0.01       0.00       0.01
                           -0.00    -109.24      -0.01     114.36     -48.92       0.00      -0.00     -45.65      -0.00      -0.00

   22   6.2  1.5  1.5       0.00  121360.84       0.00       0.00      13.38       0.00      -0.00      88.71      -0.01       0.00
                          109.24       0.00      -0.00       0.01       0.00      54.20       0.00      -0.01       0.00      -0.00

   23   7.2  1.5  1.5       0.00       0.00  121360.88       0.00       0.00      -0.00      48.92      -0.00     -45.65       0.02
                            0.01       0.00      -0.00      -0.01       0.00       0.00      -0.01       0.00      -0.01      25.65

   24   8.2  1.5  1.5       0.00       0.00       0.00  121360.87     -54.89       0.01      -0.00      21.60      -0.00      -0.00
                         -114.36      -0.01       0.01      -0.00      -0.00     -15.86       0.00      -0.02      -0.00       0.00

   25   1.2  1.5  0.5       0.00      13.38       0.00     -54.89  119592.55       0.00       0.00       0.00       0.00       0.00
                           48.92      -0.00      -0.00       0.00      -0.00      26.32      -0.00      -0.00      -0.00       0.00

   26   2.2  1.5  0.5      48.92       0.00      -0.00       0.01       0.00  119592.55       0.00       0.00       0.00       0.00
                           -0.00     -54.20      -0.00      15.86     -26.32       0.00       0.00      28.25      -0.00       0.00

   27   3.2  1.5  0.5       0.00      -0.00      48.92      -0.00       0.00       0.00  119592.55       0.00       0.00       0.00
                            0.00      -0.00       0.01      -0.00       0.00      -0.00       0.00       0.00       0.00     -23.59

   28   4.2  1.5  0.5       0.01      88.71      -0.00      21.60       0.00       0.00       0.00  121360.84       0.00       0.00
                           45.65       0.01      -0.00       0.02       0.00     -28.25      -0.00       0.00       0.00      -0.00

   29   5.2  1.5  0.5       0.00      -0.01     -45.65      -0.00       0.00       0.00       0.00       0.00  121360.84       0.00
                            0.00      -0.00       0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00     -36.41

   30   6.2  1.5  0.5       0.01       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00  121360.84
                            0.00       0.00     -25.65      -0.00      -0.00      -0.00      23.59       0.00      36.41       0.00

   31   7.2  1.5  0.5      45.65      -0.02      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      25.65      -0.00      87.63      28.25       0.00       0.00     -26.36       0.00       0.00

   32   8.2  1.5  0.5       0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -87.63       0.00      -0.00       0.00      22.53      -0.00     -38.12      -0.00

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01       0.00       0.00      15.45
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      52.63       0.00      56.49      -0.00

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00     -52.63       0.00      56.49       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01       0.00      -0.00     -62.59

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.01      52.63       0.00       0.02       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     -52.63       0.01       0.00     -56.49       0.00      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.02       0.00       0.01     102.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      56.49       0.00      52.71       0.01

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00     -56.49      -0.00      -0.01       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00     -56.49       0.00      -0.00     -52.71       0.00      -0.00

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00     -15.45      -0.00       0.00    -102.43       0.01       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      62.59       0.00      -0.01       0.00       0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00     -56.49       0.00      52.71      -0.02
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.02       0.00      -0.01      29.61

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      63.38      -0.01       0.00     -24.95       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -18.32       0.00      -0.03      -0.01       0.00

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       0.00       0.00       0.00      12.79      -0.00      -0.00      -0.00       0.00     -15.19      -0.00
                           -0.00     -24.27      12.81      -0.00       0.00     -15.17       0.00      -0.00       0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00      12.81       0.00      15.17       0.00      -0.00      -0.00
                            0.01      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      16.87       0.00      -4.93

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -4.16      -0.00      17.08
                          -30.38      -0.00       0.00      -0.00     -12.79       0.00      15.18       0.00      -0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00      18.51      -0.00       0.01       0.00      -0.00      20.62      -0.00
                            0.00      59.68     -18.49       0.00       0.00     -20.59       0.00      -0.00       0.01      -0.00

    5   5.2  0.5  0.5       0.00       0.00     -18.81       0.00      -0.00     -19.44       0.01      -0.00       0.01      -0.00
                            0.00       0.00      -0.00     -18.15       0.00      -0.01      -0.00      -0.00     -21.74      -0.01

    6   6.2  0.5  0.5       0.00       0.00      -0.00       0.00      18.49      -0.01     -20.58      -0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00       0.00      -0.00       0.00      11.58      -0.01      39.68

    7   7.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      40.02       0.00       9.78
                          -41.24       0.00      -0.00      -0.00     -18.50      -0.00     -20.63      -0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00     -10.10       0.00      -0.00      36.22      -0.00       0.00      -0.01       0.00
                            0.00      -0.00       0.00      11.26      -0.00      -0.01      -0.00       0.00     -35.10      -0.00

    9   1.2  0.5 -0.5     -15.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     -25.43      -0.00     -24.27

   10   2.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       4.93     -25.62       0.00       0.00     -30.32       0.00      -0.00       0.01      -0.00

   11   3.2  0.5 -0.5      -0.00      17.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -25.58       0.00      -0.01      -0.00       0.00     -30.38      -0.00

   12   4.2  0.5 -0.5      20.62      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00      -0.00      -0.00       0.00       0.00       0.01     -57.02       0.00      59.68

   13   5.2  0.5 -0.5       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.74       0.01      -0.01       0.00       1.34       0.00     -82.37      -0.01       0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     -39.68      36.99      -0.01       0.00     -41.20      -0.02      -0.00       0.01      -0.00

   15   7.2  0.5 -0.5       0.00       9.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      37.02      -0.00      -0.01      -0.00      -0.00     -41.24       0.00

   16   8.2  0.5 -0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           35.10       0.00      -0.00       0.00      42.67       0.00       2.57       0.00       0.00      -0.00

   17   1.2  1.5  1.5      -0.00      54.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      15.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5     -48.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5       0.00     -21.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5      45.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      87.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00     -15.45      -0.00      63.38
                          -28.25       0.00      -0.00       0.00      52.63       0.00      56.49      -0.00      -0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00      -0.00       0.00      52.63      -0.00     -56.49      -0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.01       0.00      -0.00     -62.59      -0.00      18.32

   27   3.2  1.5  0.5       0.00       0.00      -0.01     -52.63       0.00      -0.02      -0.00       0.00     -56.49       0.00
                           -0.00     -22.53     -52.63       0.01      -0.00     -56.49       0.00      -0.00       0.02      -0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.02       0.00      -0.01    -102.43       0.00     -24.95
                           26.36       0.00      -0.00      -0.00      56.49      -0.00      52.71       0.01      -0.00       0.03

   29   5.2  1.5  0.5       0.00       0.00       0.00      56.49       0.00       0.01       0.00       0.01      52.71       0.00
                           -0.00      38.12     -56.49       0.00      -0.00     -52.71      -0.00      -0.00       0.01       0.01

   30   6.2  1.5  0.5       0.00       0.00      15.45       0.00      -0.00     102.43      -0.01       0.00      -0.02       0.00
                           -0.00       0.00       0.00      62.59       0.00      -0.01       0.00      -0.00     -29.61      -0.00

   31   7.2  1.5  0.5  121360.88       0.00       0.00      -0.00      56.49      -0.00     -52.71       0.02      -0.00       0.01
                           -0.00      -0.00       0.00       0.00      -0.02       0.00      -0.01      29.61       0.00     101.18

   32   8.2  1.5  0.5       0.00  121360.87     -63.38       0.01      -0.00      24.95      -0.00      -0.00      -0.01      -0.00
                            0.00      -0.00      -0.00     -18.32       0.00      -0.03      -0.01       0.00    -101.18      -0.00

   33   1.2  1.5 -0.5       0.00     -63.38  119592.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -26.32       0.00       0.00       0.00      -0.00      28.25      -0.00

   34   2.2  1.5 -0.5      -0.00       0.01       0.00  119592.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      18.32      26.32      -0.00      -0.00     -28.25       0.00      -0.00       0.00       0.00

   35   3.2  1.5 -0.5      56.49      -0.00       0.00       0.00  119592.55       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      23.59       0.00      22.53

   36   4.2  1.5 -0.5      -0.00      24.95       0.00       0.00       0.00  121360.84       0.00       0.00       0.00       0.00
                           -0.00       0.03      -0.00      28.25       0.00      -0.00      -0.00       0.00     -26.36      -0.00

   37   5.2  1.5 -0.5     -52.71      -0.00       0.00       0.00       0.00       0.00  121360.84       0.00       0.00       0.00
                            0.01       0.01      -0.00      -0.00       0.00       0.00       0.00      36.41       0.00     -38.12

   38   6.2  1.5 -0.5       0.02      -0.00       0.00       0.00       0.00       0.00       0.00  121360.84       0.00       0.00
                          -29.61      -0.00       0.00       0.00     -23.59      -0.00     -36.41      -0.00       0.00      -0.00

   39   7.2  1.5 -0.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00  121360.88       0.00
                           -0.00     101.18     -28.25      -0.00      -0.00      26.36      -0.00      -0.00       0.00       0.00

   40   8.2  1.5 -0.5       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  121360.87
                         -101.18       0.00       0.00      -0.00     -22.53       0.00      38.12       0.00      -0.00       0.00

   41   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.01       0.00       0.00      13.38       0.00     -54.89
                           -0.00      -0.00       0.00       0.00      45.58       0.00      48.92      -0.00      -0.00       0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00     -45.58       0.00      48.92       0.00      -0.00       0.01
                           -0.00      -0.00      -0.00       0.00      -0.01       0.00      -0.00     -54.20      -0.00      15.86

   43   3.2  1.5 -1.5       0.00       0.00       0.01      45.58       0.00       0.01       0.00      -0.00      48.92      -0.00
                           -0.00      -0.00     -45.58       0.01       0.00     -48.92       0.00      -0.00       0.01      -0.00

   44   4.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.01       0.00       0.01      88.71      -0.00      21.60
                           -0.00      -0.00      -0.00      -0.00      48.92       0.00      45.65       0.01      -0.00       0.02

   45   5.2  1.5 -1.5       0.00       0.00      -0.00     -48.92      -0.00      -0.01       0.00      -0.01     -45.65      -0.00
                           -0.00      -0.00     -48.92       0.00      -0.00     -45.65       0.00      -0.00       0.01       0.00

   46   6.2  1.5 -1.5       0.00       0.00     -13.38      -0.00       0.00     -88.71       0.01       0.00       0.02      -0.00
                           -0.00      -0.00       0.00      54.20       0.00      -0.01       0.00       0.00     -25.65      -0.00

   47   7.2  1.5 -1.5       0.00       0.00      -0.00       0.00     -48.92       0.00      45.65      -0.02      -0.00      -0.01
                           -0.00      -0.00       0.00       0.00      -0.01       0.00      -0.01      25.65      -0.00      87.63

   48   8.2  1.5 -1.5       0.00       0.00      54.89      -0.01       0.00     -21.60       0.00       0.00       0.01      -0.00
                           -0.00      -0.00      -0.00     -15.86       0.00      -0.02      -0.00       0.00     -87.63       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   1.2  0.5 -0.5       0.00      22.15      -0.00      -0.01      -0.00       0.00     -26.31      -0.00
                           22.18      -0.00       0.00     -26.27       0.00      -0.00       0.01      -0.00

   10   2.2  0.5 -0.5       0.00       0.00      22.18       0.00      26.28       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      29.23       0.00      -8.54

   11   3.2  0.5 -0.5       0.00       0.00      -0.00      -0.00       0.00      -7.21      -0.00      29.58
                            0.00      -0.00     -22.15       0.00      26.29       0.00      -0.00      -0.00

   12   4.2  0.5 -0.5       0.00      32.05      -0.00       0.01       0.00      -0.00      35.72      -0.00
                          -32.02       0.00       0.00     -35.66       0.00      -0.00       0.01      -0.00

   13   5.2  0.5 -0.5     -32.58       0.00      -0.01     -33.67       0.01      -0.00       0.01      -0.00
                           -0.00     -31.44       0.00      -0.01      -0.00      -0.00     -37.66      -0.02

   14   6.2  0.5 -0.5      -0.01       0.00      32.03      -0.01     -35.65      -0.00       0.00       0.00
                           -0.00      -0.01       0.00      -0.00       0.00      20.06      -0.01      68.73

   15   7.2  0.5 -0.5      -0.00       0.00       0.00      -0.00      -0.01      69.32       0.00      16.94
                           -0.00      -0.00     -32.04      -0.00     -35.73      -0.00       0.00       0.00

   16   8.2  0.5 -0.5     -17.50       0.00      -0.00      62.73      -0.00       0.00      -0.02       0.00
                            0.00      19.50      -0.00      -0.02      -0.00       0.00     -60.80      -0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   1.2  1.5 -0.5      -0.00       0.00       0.01      -0.00      -0.00     -13.38      -0.00      54.89
                           -0.00       0.00      45.58       0.00      48.92      -0.00      -0.00       0.00

   34   2.2  1.5 -0.5      -0.00       0.00      45.58      -0.00     -48.92      -0.00       0.00      -0.01
                           -0.00      -0.00      -0.01       0.00      -0.00     -54.20      -0.00      15.86

   35   3.2  1.5 -0.5      -0.01     -45.58       0.00      -0.01      -0.00       0.00     -48.92       0.00
                          -45.58       0.01      -0.00     -48.92       0.00      -0.00       0.01      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.01       0.00      -0.01     -88.71       0.00     -21.60
                           -0.00      -0.00      48.92      -0.00      45.65       0.01      -0.00       0.02

   37   5.2  1.5 -0.5       0.00      48.92       0.00       0.01       0.00       0.01      45.65       0.00
                          -48.92       0.00      -0.00     -45.65      -0.00      -0.00       0.01       0.00

   38   6.2  1.5 -0.5      13.38       0.00      -0.00      88.71      -0.01       0.00      -0.02       0.00
                            0.00      54.20       0.00      -0.01       0.00      -0.00     -25.65      -0.00

   39   7.2  1.5 -0.5       0.00      -0.00      48.92      -0.00     -45.65       0.02      -0.00       0.01
                            0.00       0.00      -0.01       0.00      -0.01      25.65       0.00      87.63

   40   8.2  1.5 -0.5     -54.89       0.01      -0.00      21.60      -0.00      -0.00      -0.01      -0.00
                           -0.00     -15.86       0.00      -0.02      -0.00       0.00     -87.63      -0.00

   41   1.2  1.5 -1.5  119592.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -78.95       0.00       0.01       0.01      -0.00      84.74      -0.00

   42   2.2  1.5 -1.5       0.00  119592.55       0.00       0.00       0.00       0.00       0.00       0.00
                           78.95      -0.00      -0.00     -84.74       0.01      -0.00       0.01       0.00

   43   3.2  1.5 -1.5       0.00       0.00  119592.55       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      70.78       0.00      67.58

   44   4.2  1.5 -1.5       0.00       0.00       0.00  121360.84       0.00       0.00       0.00       0.00
                           -0.01      84.74       0.00      -0.00      -0.00       0.01     -79.07      -0.01

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00  121360.84       0.00       0.00       0.00
                           -0.01      -0.01       0.00       0.00       0.00     109.24       0.01    -114.36

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00  121360.84       0.00       0.00
                            0.00       0.00     -70.78      -0.01    -109.24      -0.00       0.00      -0.01

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00  121360.88       0.00
                          -84.74      -0.01      -0.00      79.07      -0.01      -0.00       0.00       0.01

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  121360.87
                            0.00      -0.00     -67.58       0.01     114.36       0.01      -0.01       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -99.75802124    -0.00060593     -132.99      0.00000000        0.00      0.0000
     2   -99.75802124    -0.00060593     -132.99      0.00000000        0.00      0.0000
     3   -99.75802110    -0.00060579     -132.96      0.00000014        0.03      0.0000
     4   -99.75802110    -0.00060579     -132.96      0.00000014        0.03      0.0000
     5   -99.75620410     0.00121121      265.83      0.00181714      398.82      0.0494
     6   -99.75620410     0.00121121      265.83      0.00181714      398.82      0.0494
     7   -99.21291716     0.54449814   119503.53      0.54510407   119636.52     14.8330
     8   -99.21291716     0.54449814   119503.53      0.54510407   119636.52     14.8330
     9   -99.21291715     0.54449815   119503.53      0.54510408   119636.52     14.8330
    10   -99.21291715     0.54449815   119503.53      0.54510408   119636.52     14.8330
    11   -99.21291714     0.54449817   119503.53      0.54510410   119636.52     14.8330
    12   -99.21291714     0.54449817   119503.53      0.54510410   119636.52     14.8330
    13   -99.21230332     0.54511199   119638.25      0.54571792   119771.24     14.8497
    14   -99.21230332     0.54511199   119638.25      0.54571792   119771.24     14.8497
    15   -99.21230331     0.54511199   119638.25      0.54571792   119771.24     14.8497
    16   -99.21230331     0.54511199   119638.25      0.54571792   119771.24     14.8497
    17   -99.21192172     0.54549359   119722.00      0.54609952   119854.99     14.8601
    18   -99.21192172     0.54549359   119722.00      0.54609952   119854.99     14.8601
    19   -99.20517518     0.55224012   121202.70      0.55284605   121335.68     15.0437
    20   -99.20517518     0.55224012   121202.70      0.55284605   121335.68     15.0437
    21   -99.20517517     0.55224014   121202.70      0.55284607   121335.69     15.0437
    22   -99.20517517     0.55224014   121202.70      0.55284607   121335.69     15.0437
    23   -99.20517512     0.55224018   121202.71      0.55284612   121335.70     15.0437
    24   -99.20517512     0.55224018   121202.71      0.55284612   121335.70     15.0437
    25   -99.20517503     0.55224027   121202.73      0.55284621   121335.72     15.0437
    26   -99.20517503     0.55224027   121202.73      0.55284621   121335.72     15.0437
    27   -99.20436311     0.55305219   121380.93      0.55365813   121513.91     15.0658
    28   -99.20436311     0.55305219   121380.93      0.55365813   121513.91     15.0658
    29   -99.20436306     0.55305225   121380.94      0.55365818   121513.92     15.0658
    30   -99.20436306     0.55305225   121380.94      0.55365818   121513.92     15.0658
    31   -99.20436290     0.55305240   121380.97      0.55365834   121513.96     15.0658
    32   -99.20436290     0.55305240   121380.97      0.55365834   121513.96     15.0658
    33   -99.20373935     0.55367595   121517.83      0.55428188   121650.81     15.0828
    34   -99.20373935     0.55367595   121517.83      0.55428188   121650.81     15.0828
    35   -99.20373925     0.55367605   121517.85      0.55428199   121650.83     15.0828
    36   -99.20373925     0.55367605   121517.85      0.55428199   121650.83     15.0828
    37   -99.20336386     0.55405145   121600.24      0.55465738   121733.22     15.0930
    38   -99.20336386     0.55405145   121600.24      0.55465738   121733.22     15.0930
    39   -99.20044522     0.55697008   122240.80      0.55757601   122373.79     15.1724
    40   -99.20044522     0.55697008   122240.80      0.55757601   122373.79     15.1724
    41   -99.20044479     0.55697051   122240.90      0.55757645   122373.89     15.1724
    42   -99.20044479     0.55697051   122240.90      0.55757645   122373.89     15.1724
    43   -99.20044443     0.55697087   122240.98      0.55757680   122373.96     15.1724
    44   -99.20044443     0.55697087   122240.98      0.55757680   122373.96     15.1724
    45   -99.19918993     0.55822537   122516.31      0.55883130   122649.29     15.2066
    46   -99.19918993     0.55822537   122516.31      0.55883130   122649.29     15.2066
    47   -99.19918931     0.55822599   122516.44      0.55883192   122649.43     15.2066
    48   -99.19918931     0.55822599   122516.44      0.55883192   122649.43     15.2066


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.809862958   0.039216966  -0.095768971   0.007919222  -0.006630101   0.577325999   0.000000000  -0.000000154
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.016689694   0.344658877   0.041551097   0.502472986  -0.375498515  -0.004312283  -0.000000004  -0.000000000
                        -0.016734584   0.345573160  -0.034362930  -0.415361322  -0.438492841  -0.005037756   0.000000014   0.000000000

    3    3.2  0.5  0.5  -0.011031993   0.227865362   0.039410403   0.476373585  -0.438500896  -0.005035812  -0.000000011  -0.000000000
                         0.011005233  -0.227264384   0.047654215   0.576279382   0.375505393   0.004312362  -0.000000003  -0.000000000

    4    4.2  0.5  0.5  -0.000018704  -0.000000902  -0.000157513   0.000013026   0.000000000  -0.000000009   0.000005817  -0.013867422
                        -0.000000000  -0.000000004  -0.000000004   0.000000001  -0.000000000  -0.000000000  -0.000000037  -0.000000181

    5    5.2  0.5  0.5  -0.000000001   0.000000021  -0.000000005  -0.000000014   0.000000000   0.000000000   0.000000425   0.000000791
                         0.000013824   0.000000691   0.000158012  -0.000013054  -0.000000000   0.000000034   0.000006296  -0.014625570

    6    6.2  0.5  0.5   0.000004355  -0.000089929   0.000006047   0.000073130  -0.000000026  -0.000000000   0.000337361  -0.000000162
                         0.000004368  -0.000090176  -0.000004964  -0.000060458  -0.000000030  -0.000000000  -0.001111005  -0.000003926

    7    7.2  0.5  0.5   0.000005007  -0.000103412   0.000003291   0.000039851  -0.000000041  -0.000000000  -0.002798389  -0.000001518
                        -0.000004995   0.000103131   0.000003985   0.000048202   0.000000035   0.000000000  -0.000848163  -0.000000846

    8    8.2  0.5  0.5  -0.000000000   0.000000002   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000275  -0.000001043
                        -0.000158292  -0.000007665   0.000013787  -0.000001140  -0.000000002   0.000000143  -0.000001626   0.003998229

    9    1.2  0.5 -0.5  -0.027693372   0.571891163  -0.006103805  -0.073814712   0.375507591   0.004312387   0.000000045   0.000000000
                        -0.027767743   0.573426986   0.005045557   0.061017082   0.438519507   0.005036026  -0.000000147  -0.000000000

   10    2.2  0.5 -0.5  -0.488068181  -0.023634554  -0.651923408   0.053919426  -0.006631347   0.577299841   0.000000000  -0.000000015
                        -0.000007982   0.000000049  -0.000003558   0.000012144   0.000001204   0.000010450  -0.000000000  -0.000000000

   11    3.2  0.5 -0.5   0.000006599   0.000001973  -0.000005143   0.000014059   0.000000120  -0.000010435  -0.000000000  -0.000000000
                        -0.321825611  -0.015582683   0.747682899  -0.061839339  -0.006629922   0.577310433  -0.000000000   0.000000011

   12    4.2  0.5 -0.5   0.000000639  -0.000013208  -0.000010039  -0.000121402  -0.000000006  -0.000000000   0.004027675   0.000001725
                         0.000000636  -0.000013243   0.000008300   0.000100359  -0.000000007  -0.000000000  -0.013269636  -0.000005556

   13    5.2  0.5 -0.5  -0.000000504   0.000009787  -0.000008307  -0.000100678   0.000000026   0.000000000  -0.013995276  -0.000005901
                         0.000000473  -0.000009763  -0.000010071  -0.000121786  -0.000000022  -0.000000000  -0.004247298  -0.000002236

   14    6.2  0.5 -0.5   0.000127353   0.000006168  -0.000094885   0.000007824  -0.000000000   0.000000040  -0.000003710   0.001161095
                        -0.000000003  -0.000000001  -0.000000006  -0.000000027  -0.000000000  -0.000000000  -0.000001295  -0.000000121

   15    7.2  0.5 -0.5   0.000000003  -0.000000001  -0.000000004  -0.000000003  -0.000000000   0.000000000  -0.000000369  -0.000001205
                         0.000146048   0.000007073   0.000062542  -0.000005168  -0.000000001   0.000000054  -0.000001698   0.002924100

   16    8.2  0.5 -0.5   0.000005426  -0.000112080  -0.000000725  -0.000008784   0.000000108   0.000000001   0.003826165   0.000001476
                        -0.000005414   0.000111779  -0.000000879  -0.000010627  -0.000000093  -0.000000001   0.001160304   0.000000736

   17    1.2  1.5  1.5  -0.000000020  -0.000000001   0.000000002   0.000000000   0.000000000  -0.000000015   0.000010426   0.000110454
                        -0.000149854  -0.000007257   0.000017721  -0.000001466   0.000001230  -0.000107065   0.000262858  -0.637467147

   18    2.2  1.5  1.5  -0.000149651  -0.000007248   0.000017696  -0.000001470   0.000001228  -0.000106919  -0.000302870   0.735505281
                         0.000000020   0.000000000  -0.000000002   0.000000005  -0.000000000   0.000000015   0.000016819   0.000125256

   19    3.2  1.5  1.5   0.000001059  -0.000021774  -0.000016494  -0.000199455   0.000000087   0.000000004   0.012241311   0.000002505
                         0.000001057  -0.000021831   0.000013641   0.000164883   0.000000101   0.000000001  -0.040434669  -0.000011007

   20    4.2  1.5  1.5   0.000000049  -0.000000009  -0.000000005   0.000000006   0.000000014   0.000000035  -0.000000985  -0.000009502
                         0.000174806   0.000008461  -0.000020671   0.000001715  -0.000001427   0.000124959  -0.000014855   0.036838989

   21    5.2  1.5  1.5   0.000005993  -0.000123530   0.000001322   0.000016008   0.000162670   0.000001876  -0.001256596  -0.000002298
                         0.000005986  -0.000123843  -0.000001093  -0.000013225   0.000189937   0.000002174   0.004145750  -0.000000726

   22    6.2  1.5  1.5  -0.000004674   0.000096485  -0.000005919  -0.000071548  -0.000131639  -0.000001513  -0.005101806  -0.000001514
                         0.000004669  -0.000096248  -0.000007158  -0.000086552   0.000112752   0.000001301  -0.001545530  -0.000000245

   23    7.2  1.5  1.5   0.000175084   0.000008487  -0.000020705   0.000001711  -0.000001449   0.000125158   0.000009864  -0.023840595
                        -0.000000048   0.000000004   0.000000006   0.000000000  -0.000000010  -0.000000035  -0.000000385  -0.000009345

   24    8.2  1.5  1.5   0.000003857  -0.000079651  -0.000007167  -0.000086631   0.000137756   0.000001583   0.000859865   0.000000587
                        -0.000003844   0.000079444  -0.000008666  -0.000104796  -0.000117970  -0.000001353   0.000261649  -0.000000222

   25    1.2  1.5  0.5  -0.000006542   0.000135098  -0.000006803  -0.000082233  -0.000046963  -0.000000540   0.046226682   0.000022020
                         0.000006526  -0.000134767  -0.000008229  -0.000099510   0.000040226   0.000000462   0.014016704  -0.000006155

   26    2.2  1.5  0.5   0.000005306  -0.000109522   0.000010820   0.000130848   0.000040156   0.000000457   0.035229039   0.000033747
                         0.000005316  -0.000109780  -0.000008947  -0.000108144   0.000046882   0.000000539  -0.116259391  -0.000041078

   27    3.2  1.5  0.5   0.000086472   0.000004191  -0.000010129   0.000000833   0.000001418  -0.000123536   0.000068841  -0.169779850
                        -0.000000000   0.000000003   0.000000000   0.000000004  -0.000000002  -0.000000000  -0.000009574  -0.000048820

   28    4.2  1.5  0.5  -0.000000708   0.000014649  -0.000009177  -0.000111062  -0.000164321  -0.000001888   0.005468795   0.000004541
                         0.000000715  -0.000014602  -0.000011121  -0.000134424   0.000140788   0.000001628   0.001656574   0.000001431

   29    5.2  1.5  0.5   0.000020704   0.000001002   0.000174538  -0.000014420   0.000000019   0.000000041  -0.000015597   0.037187196
                         0.000000007   0.000000002  -0.000000010  -0.000000001   0.000000001   0.000000011   0.000001344   0.000005169

   30    6.2  1.5  0.5   0.000000001   0.000000001   0.000000012  -0.000000005  -0.000000009  -0.000000000  -0.000000265   0.000002050
                        -0.000112539  -0.000005451   0.000135976  -0.000011252   0.000002090  -0.000181441   0.000008183  -0.019574435

   31    7.2  1.5  0.5  -0.000000711   0.000014651   0.000011125   0.000134662   0.000141033   0.000001620   0.001968986  -0.000000718
                        -0.000000713   0.000014698  -0.000009203  -0.000111257   0.000164608   0.000001890  -0.006499707  -0.000002629

   32    8.2  1.5  0.5  -0.000000000   0.000000000  -0.000000002  -0.000000004  -0.000000002  -0.000000000   0.000000126  -0.000001566
                        -0.000136149  -0.000006593  -0.000112256   0.000009282   0.000001992  -0.000173244  -0.000010982   0.026763897

   33    1.2  1.5 -0.5  -0.000000022  -0.000000001   0.000000020   0.000000001   0.000000000   0.000000008   0.000012286  -0.000014291
                         0.000190823   0.000009241   0.000129091  -0.000010677   0.000000710  -0.000061836  -0.000019283   0.048304977

   34    2.2  1.5 -0.5  -0.000155070  -0.000007511   0.000169754  -0.000014040  -0.000000706   0.000061729   0.000049110  -0.121479755
                        -0.000000026  -0.000000003  -0.000000014  -0.000000002   0.000000003   0.000000008  -0.000020362  -0.000057716

   35    3.2  1.5 -0.5   0.000002962  -0.000061062   0.000000640   0.000007807   0.000080351   0.000000921  -0.049266513  -0.000029156
                         0.000002965  -0.000061227  -0.000000534  -0.000006453   0.000093834   0.000001078   0.162474668   0.000063092

   36    4.2  1.5 -0.5   0.000000005  -0.000000006   0.000000043  -0.000000012  -0.000000009   0.000000060  -0.000000051  -0.000003275
                         0.000020683   0.000001006   0.000174369  -0.000014419   0.000002493  -0.000216385  -0.000004761   0.005714187

   37    5.2  1.5 -0.5   0.000000709  -0.000014625  -0.000011114  -0.000134533  -0.000000035   0.000000013   0.010796223   0.000005816
                         0.000000708  -0.000014655   0.000009188   0.000111195  -0.000000024   0.000000013  -0.035585517  -0.000014534

   38    6.2  1.5 -0.5  -0.000003859   0.000079683   0.000007165   0.000086625   0.000137817   0.000001581   0.018731157   0.000007908
                         0.000003849  -0.000079471   0.000008676   0.000104812  -0.000118014  -0.000001366   0.005683512   0.000002123

   39    7.2  1.5 -0.5   0.000020753   0.000001007   0.000174677  -0.000014438  -0.000002489   0.000216763   0.000002307  -0.006791398
                        -0.000000005  -0.000000000  -0.000000044  -0.000000005  -0.000000001   0.000000060   0.000001451  -0.000003765

   40    8.2  1.5 -0.5  -0.000004668   0.000096401  -0.000005917  -0.000071520   0.000131591   0.000001512  -0.025610533  -0.000010545
                         0.000004656  -0.000096143  -0.000007152  -0.000086523  -0.000112682  -0.000001297  -0.007772182  -0.000003069

   41    1.2  1.5 -1.5   0.000005139  -0.000106119  -0.000000934  -0.000011289  -0.000081333  -0.000000934  -0.610017348  -0.000248498
                        -0.000005124   0.000105806  -0.000001130  -0.000013660   0.000069627   0.000000800  -0.185049182  -0.000086325

   42    2.2  1.5 -1.5   0.000005118  -0.000105662   0.000001136   0.000013641  -0.000069532  -0.000000799  -0.213510582  -0.000104064
                         0.000005132  -0.000105975  -0.000000933  -0.000011273  -0.000081222  -0.000000933   0.703833269   0.000284928

   43    3.2  1.5 -1.5   0.000030834   0.000001496   0.000258783  -0.000021404   0.000000004  -0.000000134  -0.000011261   0.042247052
                         0.000000001   0.000000003   0.000000006  -0.000000005   0.000000003   0.000000000  -0.000000800   0.000030832

   44    4.2  1.5 -1.5  -0.000005984   0.000123807   0.000001088   0.000013166   0.000094938   0.000001075   0.035253583   0.000013928
                         0.000005981  -0.000123406   0.000001325   0.000015936  -0.000081250  -0.000000939   0.010690939   0.000005257

   45    5.2  1.5 -1.5   0.000174919   0.000008470  -0.000020765   0.000001716   0.000002872  -0.000250076  -0.000000027  -0.004332005
                         0.000000014   0.000000016   0.000000006  -0.000000000   0.000000011  -0.000000019  -0.000002410  -0.000001727

   46    6.2  1.5 -1.5   0.000000015   0.000000006   0.000000001  -0.000000001   0.000000004  -0.000000021   0.000000205  -0.000002938
                        -0.000136283  -0.000006607  -0.000112296   0.000009288  -0.000001996   0.000173325  -0.000001520   0.005330768

   47    7.2  1.5 -1.5  -0.000005996   0.000123603  -0.000001319  -0.000015962   0.000081380   0.000000950   0.006915654   0.000003234
                        -0.000006006   0.000124003   0.000001090   0.000013187   0.000095089   0.000001094  -0.022815515  -0.000009327

   48    8.2  1.5 -1.5  -0.000000004   0.000000002   0.000000003  -0.000000003   0.000000002   0.000000006  -0.000000383  -0.000000618
                         0.000112498   0.000005446  -0.000135967   0.000011246   0.000002082  -0.000181366   0.000000497  -0.000898790


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000007  -0.000000105   0.000000005  -0.000000000   0.000000132  -0.000132486   0.000220712   0.000000143
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000028   0.000000002  -0.000000000   0.000000001  -0.000162684  -0.000000227  -0.000000036  -0.000004281
                         0.000000013  -0.000000001  -0.000000000  -0.000000036   0.000199720   0.000000200   0.000000001   0.000000483

    3    3.2  0.5  0.5  -0.000000002   0.000000000   0.000000000   0.000000011  -0.000096764  -0.000000099   0.000000017  -0.000029300
                        -0.000000004   0.000000000  -0.000000000   0.000000000  -0.000078909  -0.000000143   0.000000105  -0.000222982

    4    4.2  0.5  0.5  -0.000507732  -0.008091892   0.001133717   0.000000114   0.000004678  -0.003941874  -0.002375820  -0.000000725
                         0.000000760   0.000000068  -0.000001641  -0.000002844  -0.000001111   0.000002627   0.000001578   0.000000024

    5    5.2  0.5  0.5   0.000001736  -0.000001799  -0.000013814  -0.000016873  -0.000000989   0.000002625   0.000001577  -0.000001138
                         0.000178777   0.002852460  -0.006087797   0.000003184  -0.000004730   0.003870453   0.002487472   0.000000935

    6    6.2  0.5  0.5  -0.006025266   0.000378362  -0.000040121   0.000316810  -0.000048019   0.000000619  -0.000002547   0.004559172
                         0.002718352  -0.000169849  -0.000001714  -0.014621054   0.000060949   0.000000912   0.000000993  -0.000599812

    7    7.2  0.5  0.5  -0.006486091   0.000406224   0.000000022  -0.001017817   0.003119362   0.000002965   0.000000107  -0.000293488
                        -0.014383769   0.000904132   0.000003033  -0.000023514   0.002539985   0.000003156   0.000001858  -0.002222421

    8    8.2  0.5  0.5  -0.000000598   0.000000045  -0.000030593  -0.000036940   0.000000011  -0.000000082  -0.000000049  -0.000000043
                        -0.000504324  -0.008022958  -0.013367774  -0.000000422   0.000002475  -0.002491003   0.003870304   0.000002549

    9    1.2  0.5 -0.5  -0.000000095   0.000000006  -0.000000000   0.000000000  -0.000083620  -0.000000083  -0.000000141   0.000218822
                         0.000000043  -0.000000003   0.000000000  -0.000000005   0.000102763   0.000000102   0.000000019  -0.000028829

   10    2.2  0.5 -0.5   0.000000002   0.000000031  -0.000000036  -0.000000000  -0.000000299   0.000257593   0.000004308  -0.000000036
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000049  -0.000000130  -0.000000081   0.000000003

   11    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000049  -0.000000132  -0.000000076   0.000000003
                        -0.000000000  -0.000000004   0.000000011   0.000000000   0.000000167  -0.000124860  -0.000224899  -0.000000106

   12    4.2  0.5 -0.5  -0.007376999   0.000463186  -0.000002846   0.000023688  -0.002490005  -0.000003814   0.000000722  -0.002355672
                         0.003325446  -0.000207969   0.000000058  -0.001133470   0.003055856   0.000002928  -0.000000071   0.000308761

   13    5.2  0.5 -0.5  -0.001173910   0.000071889   0.000003511   0.006086377  -0.003000460  -0.000003044   0.000001251  -0.000323346
                        -0.002599705   0.000163695  -0.000016808   0.000132197  -0.002444925  -0.000003753   0.000000778  -0.002466367

   14    6.2  0.5 -0.5   0.000414736   0.006610088  -0.014624450   0.000000933  -0.000000316   0.000077583  -0.004598459  -0.000002655
                        -0.000000652   0.000001994   0.000032424   0.000040147  -0.000001056   0.000001223   0.000000839  -0.000000651

   15    7.2  0.5 -0.5  -0.000001236   0.000001775  -0.000003717  -0.000003032  -0.000000576   0.000001312   0.000000684  -0.000000136
                        -0.000991196  -0.015778535  -0.001018082  -0.000000081  -0.000004292   0.004022678  -0.002241715  -0.000001856

   16    8.2  0.5 -0.5   0.003297220  -0.000206716   0.000000297   0.013364651   0.001932094   0.000001913   0.000000375  -0.000505582
                         0.007314110  -0.000460013  -0.000036941   0.000290542   0.001572294   0.000001571   0.000002522  -0.003837140

   17    1.2  1.5  1.5  -0.000006255  -0.000042204  -0.000709775  -0.000825504   0.000000510  -0.000031304   0.000052318   0.000001414
                        -0.014413480  -0.229602484  -0.296596970  -0.000012740   0.000227684  -0.229659068   0.382805362   0.000247127

   18    2.2  1.5  1.5   0.000616161   0.009892539  -0.078815588  -0.000004673   0.000214190  -0.229655902   0.382797590   0.000234419
                         0.000008506  -0.000011752   0.000200579   0.000222513   0.000016042   0.000031319  -0.000052316   0.000000249

   19    3.2  1.5  1.5   0.489569297  -0.030766715   0.000890659  -0.007047169  -0.418823662  -0.000634100   0.000107369  -0.394411156
                        -0.220780642   0.013838901   0.000001854   0.326507925   0.514001692   0.000518234  -0.000026228   0.051695156

   20    4.2  1.5  1.5  -0.000001533  -0.000003564  -0.000053221  -0.000056005  -0.000000466  -0.000003777   0.000006303  -0.000001364
                        -0.000581798  -0.009273234  -0.020074750   0.000000090   0.000012075  -0.013720736   0.022870116   0.000014848

   21    5.2  1.5  1.5  -0.008850417   0.000555572   0.000044048  -0.000360409   0.008656980   0.000007767   0.000016043  -0.022672909
                         0.003992559  -0.000249616   0.000001402   0.016587265  -0.010642047  -0.000009663  -0.000003298   0.002988266

   22    6.2  1.5  1.5  -0.014978101   0.000938989   0.000000276   0.006616461   0.020182528   0.000020332   0.000000423  -0.000774596
                        -0.033213517   0.002087223  -0.000018461   0.000142442   0.016435658   0.000021293   0.000008238  -0.005813752

   23    7.2  1.5  1.5  -0.001246989  -0.019856134  -0.029697144  -0.000001229   0.000013250  -0.013719992   0.022869172   0.000016142
                         0.000000787   0.000004513   0.000074385   0.000081318   0.000000761   0.000003777  -0.000006303  -0.000000314

   24    8.2  1.5  1.5  -0.008787089   0.000550833   0.000000194   0.029255882   0.004548347   0.000004731  -0.000001965   0.003391893
                        -0.019483059   0.001223820  -0.000080414   0.000632887   0.003715104   0.000008851  -0.000013099   0.025789344

   25    1.2  1.5  0.5  -0.112925123   0.007079379   0.000004063   0.607808293  -0.502435301  -0.000502740  -0.000020597   0.027981547
                        -0.250556555   0.015734271  -0.001667765   0.013163504  -0.409191910  -0.000536741  -0.000214004   0.210514741

   26    2.2  1.5  0.5   0.597476466  -0.037547033  -0.000108530   0.000880045   0.074498730   0.000208336  -0.000359335   0.665930383
                        -0.269371868   0.016883618  -0.000000679  -0.042274062  -0.091008944  -0.000095557   0.000050862  -0.087609238

   27    3.2  1.5  0.5   0.023905619   0.380546525   0.650224956   0.000029984  -0.000133849   0.132592182  -0.221013086  -0.000164128
                        -0.000025942  -0.000000544  -0.001487954  -0.001795613   0.000003211   0.000000042   0.000000021   0.000003619

   28    4.2  1.5  0.5   0.002948604  -0.000186102   0.000001600   0.028107110   0.017723890   0.000016419  -0.000001773   0.001779329
                         0.006529561  -0.000409996  -0.000077021   0.000604927   0.014450071   0.000022027  -0.000002780   0.013604578

   29    5.2  1.5  0.5  -0.001337494  -0.021295338   0.022222982  -0.000000760   0.000025823  -0.022867983  -0.013719804  -0.000005155
                         0.000000857  -0.000003072  -0.000049417  -0.000062215  -0.000005716   0.000016396   0.000011220  -0.000001110

   30    6.2  1.5  0.5  -0.000001626  -0.000000634  -0.000010499  -0.000011309   0.000005029  -0.000012478  -0.000007493   0.000000392
                        -0.001894753  -0.030172146  -0.004324186   0.000000041   0.000009940  -0.005882657  -0.025998596  -0.000012931

   31    7.2  1.5  0.5   0.019020340  -0.001194864  -0.000056213   0.000422799  -0.014450524  -0.000020735   0.000004966  -0.013603621
                        -0.008577518   0.000537316  -0.000000176  -0.019775034   0.017724443   0.000017822  -0.000001132   0.001779203

   32    8.2  1.5  0.5   0.000000354  -0.000000702  -0.000042548  -0.000052694  -0.000004003   0.000011593   0.000006961  -0.000000286
                         0.001100282   0.017528892  -0.019491816  -0.000000931  -0.000029307   0.026014488  -0.005878416  -0.000006950

   33    1.2  1.5 -0.5   0.000012366   0.000022551  -0.001341355  -0.001667528  -0.000099012   0.000270830   0.000244726  -0.000007532
                         0.017253544   0.274828444  -0.607949340  -0.000028369  -0.000728721   0.647980852  -0.212366089  -0.000214861

   34    2.2  1.5 -0.5   0.041168370   0.655392498   0.042283193   0.000001433  -0.000205613   0.117611932   0.671668551   0.000362900
                        -0.000038682   0.000029107  -0.000057810  -0.000108524   0.000101284  -0.000343404  -0.000124073   0.000003490

   35    3.2  1.5 -0.5  -0.346925384   0.021804215   0.001795856  -0.014132175  -0.083687305  -0.000086971  -0.000163195   0.219119612
                         0.156391951  -0.009800796   0.000004941   0.650073054   0.102845127   0.000101793   0.000017850  -0.028868349

   36    4.2  1.5 -0.5   0.000001164   0.000004654  -0.000058232  -0.000077038   0.000006722  -0.000021523  -0.000012922   0.000001395
                        -0.000450254  -0.007164455  -0.028113559   0.000000102   0.000026638  -0.022867889  -0.013720438  -0.000002987

   37    5.2  1.5 -0.5   0.019412628  -0.001219679   0.000062189  -0.000481564   0.014446153   0.000020732  -0.000004965   0.013603728
                        -0.008754504   0.000548886   0.000001970   0.022217820  -0.017727198  -0.000016422   0.000001774  -0.001780934

   38    6.2  1.5 -0.5  -0.012399207   0.000777200  -0.000000261  -0.004323165  -0.004555007  -0.000004536   0.000002077  -0.003388466
                        -0.027506691   0.001728019   0.000011306  -0.000094586  -0.003722597  -0.000010174   0.000012769  -0.025776837

   39    7.2  1.5 -0.5   0.001310117   0.020864974   0.019779516   0.000000918   0.000026911  -0.022868604  -0.013719472  -0.000005071
                        -0.000001207   0.000002941  -0.000038167  -0.000056206  -0.000004835   0.000021525   0.000012922  -0.000000474

   40    8.2  1.5 -0.5   0.007204452  -0.000451858  -0.000000094  -0.019487302   0.020170816   0.000020205   0.000000624  -0.000774731
                         0.015979922  -0.001003218   0.000052702  -0.000421585   0.016428387   0.000021603   0.000006928  -0.005827146

   41    1.2  1.5 -1.5   0.094320785  -0.005917776   0.000003316   0.296527108   0.178115255   0.000176281   0.000030877  -0.049949543
                         0.209334390  -0.013142615  -0.000825596   0.006477378   0.144976688   0.000144101   0.000245195  -0.379532602

   42    2.2  1.5 -1.5   0.009023350  -0.000558225   0.000222562  -0.001733208  -0.144974702  -0.000122746  -0.000232378   0.379524896
                        -0.004054787   0.000260975  -0.000000345   0.078796751   0.178112789   0.000176262   0.000030867  -0.049948530

   43    3.2  1.5 -1.5  -0.033735815  -0.537049518   0.326583218   0.000015466  -0.000802189   0.663031515   0.397784480   0.000109875
                         0.000027903  -0.000077322  -0.000696441  -0.000890526   0.000164749  -0.000441411  -0.000265069   0.000011979

   44    4.2  1.5 -1.5   0.003807754  -0.000237703   0.000001179   0.020069917   0.010640102   0.000009660   0.000003292  -0.002981008
                         0.008455407  -0.000531026  -0.000055992   0.000443591   0.008662956   0.000007259   0.000014543  -0.022675005

   45    5.2  1.5 -1.5   0.000609071   0.009709295   0.016591138  -0.000000546   0.000012397  -0.013718472   0.022868986   0.000016336
                        -0.000000760   0.000002577  -0.000037779  -0.000044067   0.000000074  -0.000002086   0.000001167   0.000001174

   46    6.2  1.5 -1.5  -0.000001753   0.000005091   0.000013749   0.000018463  -0.000003683   0.000009841   0.000008577  -0.000000657
                        -0.002288710  -0.036434615   0.006617979   0.000000083  -0.000029209   0.026028162  -0.005865120  -0.000008223

   47    7.2  1.5 -1.5  -0.018103695   0.001137141   0.000081327  -0.000651872  -0.008662487  -0.000007773  -0.000016044   0.022674069
                         0.008156121  -0.000511755   0.000000353   0.029690082   0.010639525   0.000010758   0.000001797  -0.002980885

   48    8.2  1.5 -1.5  -0.000000784   0.000003835   0.000063847   0.000080402  -0.000003879   0.000010869   0.000005728  -0.000000237
                        -0.001342070  -0.021372939   0.029262657   0.000001370  -0.000009256   0.005872761   0.026011443   0.000013244


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000112600   0.000000001  -0.000000332  -0.000000024   0.000000498  -0.000000069   0.000000027   0.000000002
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000001   0.000084396  -0.000000042   0.000000589  -0.000000018  -0.000000129  -0.000000005   0.000000082
                         0.000000000  -0.000074684   0.000000040  -0.000000559   0.000000002   0.000000014   0.000000001  -0.000000019

    3    3.2  0.5  0.5   0.000000001  -0.000074563   0.000000013  -0.000000177  -0.000000005  -0.000000034  -0.000000002   0.000000025
                         0.000000001  -0.000084261   0.000000013  -0.000000186  -0.000000042  -0.000000307  -0.000000007   0.000000106

    4    4.2  0.5  0.5  -0.000004299   0.000000001   0.000043636   0.000003113  -0.000047281   0.000006528   0.000019748   0.000001227
                        -0.000000000  -0.000000000   0.000000006   0.000000005   0.000000009  -0.000000000  -0.000000122   0.000000007

    5    5.2  0.5  0.5   0.000000000  -0.000000000   0.000000006  -0.000000018   0.000000003  -0.000000020  -0.000000013   0.000000033
                        -0.000005021  -0.000000001  -0.000000849  -0.000000053  -0.000014717   0.000002029  -0.000003103  -0.000000196

    6    6.2  0.5  0.5  -0.000000001   0.000000395  -0.000002982   0.000041652   0.000011251   0.000081403   0.000008079  -0.000130990
                        -0.000000002  -0.000000349   0.000002827  -0.000039556  -0.000001234  -0.000008969  -0.000001975   0.000030386

    7    7.2  0.5  0.5  -0.000000000  -0.000002344  -0.000002446   0.000034258   0.000000854   0.000006245  -0.000000099   0.000001571
                         0.000000000  -0.000002649  -0.000002585   0.000036059   0.000007858   0.000056907  -0.000000414   0.000006854

    8    8.2  0.5  0.5   0.000000000  -0.000000000  -0.000000043   0.000000001   0.000000031  -0.000000006  -0.000000839   0.000000063
                         0.000010462  -0.000000000   0.000008931   0.000000645   0.000058018  -0.000008006  -0.000159627  -0.000009851

    9    1.2  0.5 -0.5   0.000000001  -0.000084326   0.000000017  -0.000000241   0.000000068   0.000000495   0.000000002  -0.000000026
                        -0.000000001   0.000074618  -0.000000016   0.000000229  -0.000000007  -0.000000054  -0.000000000   0.000000006

   10    2.2  0.5 -0.5   0.000112696   0.000000001  -0.000000812  -0.000000058   0.000000129  -0.000000018   0.000000084   0.000000005
                         0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   11    3.2  0.5 -0.5  -0.000000002  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000112515   0.000000001  -0.000000257  -0.000000018  -0.000000308   0.000000043  -0.000000109  -0.000000007

   12    4.2  0.5 -0.5   0.000000001   0.000003219  -0.000002255   0.000031661  -0.000006490  -0.000047002   0.000001193  -0.000019242
                        -0.000000000  -0.000002849   0.000002146  -0.000030028   0.000000708   0.000005123  -0.000000290   0.000004440

   13    5.2  0.5 -0.5  -0.000000000  -0.000003327  -0.000000024   0.000000588   0.000000240   0.000001601   0.000000077  -0.000000704
                         0.000000001  -0.000003760  -0.000000051   0.000000612   0.000002014   0.000014630   0.000000184  -0.000003022

   14    6.2  0.5 -0.5   0.000000527  -0.000000001  -0.000057442  -0.000004110  -0.000081896   0.000011319  -0.000134467  -0.000008316
                        -0.000000000  -0.000000002  -0.000000047   0.000000000  -0.000000079   0.000000006   0.000000674  -0.000000056

   15    7.2  0.5 -0.5   0.000000000   0.000000000  -0.000000050   0.000000004  -0.000000031  -0.000000004  -0.000000054   0.000000001
                         0.000003537  -0.000000000   0.000049738   0.000003559   0.000057248  -0.000007904  -0.000007032  -0.000000425

   16    8.2  0.5 -0.5  -0.000000000   0.000006933   0.000000444  -0.000006176  -0.000000863  -0.000006267   0.000002336  -0.000036033
                         0.000000000   0.000007835   0.000000469  -0.000006452  -0.000007960  -0.000057678   0.000009571  -0.000155509

   17    1.2  1.5  1.5   0.000068248   0.000001325   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000012  -0.000000001
                         0.499719523   0.000004056   0.000002851   0.000000204  -0.000004820   0.000000666   0.000002106   0.000000130

   18    2.2  1.5  1.5   0.499709024   0.000004056   0.000002854   0.000000204  -0.000004122   0.000000570   0.000001228   0.000000076
                        -0.000068248  -0.000001325  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000008   0.000000001

   19    3.2  1.5  1.5  -0.000016095  -0.000001293  -0.000000534   0.000007451   0.000000610   0.000004422  -0.000000026   0.000000439
                         0.000000000   0.000001143   0.000000506  -0.000007075  -0.000000067  -0.000000488   0.000000007  -0.000000102

   20    4.2  1.5  1.5   0.000002073  -0.000000468  -0.000059623  -0.000045417   0.000014367  -0.000046661  -0.001758499   0.000148202
                         0.007524715   0.000000949  -0.203101852  -0.014486331   0.429102629  -0.059280947  -0.335009277  -0.020683841

   21    5.2  1.5  1.5   0.000000577  -0.011269749   0.025400680  -0.354484819  -0.064152012  -0.464335857  -0.013617504   0.220907143
                        -0.000000528   0.009973955  -0.024049182   0.336583057   0.006984272   0.051033021   0.003350429  -0.051301309

   22    6.2  1.5  1.5  -0.000000030  -0.006889452  -0.028955143   0.405140737   0.002286128   0.016716860  -0.001614535   0.024949682
                         0.000000447  -0.007783787  -0.030572414   0.426792006   0.020921552   0.151571542  -0.006601179   0.107377610

   23    7.2  1.5  1.5   0.007525562   0.000000691   0.022894761   0.001639777  -0.158151833   0.021855018   0.424566204   0.026215270
                        -0.000002073  -0.000000695  -0.000009518  -0.000010364  -0.000034793  -0.000002327  -0.002210553   0.000166931

   24    8.2  1.5  1.5  -0.000000039   0.007212022   0.011738392  -0.164198732  -0.004703443  -0.034225302  -0.005236088   0.080756576
                         0.000000028   0.008149686   0.012389935  -0.172929686  -0.042983213  -0.311091309  -0.021430339   0.347784747

   25    1.2  1.5  0.5  -0.000000977   0.191221319  -0.000000351   0.000004915  -0.000000052  -0.000000376  -0.000000031   0.000000476
                        -0.000002261   0.216038765  -0.000000370   0.000005180  -0.000000478  -0.000003451  -0.000000126   0.000002044

   26    2.2  1.5  0.5   0.000016324   0.216035997   0.000000093  -0.000001286  -0.000000843  -0.000006102   0.000000008  -0.000000143
                         0.000000979  -0.191218867  -0.000000088   0.000001223   0.000000092   0.000000669  -0.000000002   0.000000031

   27    3.2  1.5  0.5   0.577030494  -0.000002275  -0.000001395  -0.000000099   0.000003498  -0.000000483  -0.000003653  -0.000000225
                        -0.000000000   0.000004628  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000020  -0.000000001

   28    4.2  1.5  0.5   0.000000044  -0.008640059   0.020494600  -0.286933531   0.005101566   0.037057119   0.005941442  -0.091272147
                         0.000000786  -0.009758668   0.021655629  -0.302446422   0.046799174   0.338522084   0.024233402  -0.393371386

   29    5.2  1.5  0.5  -0.000000718  -0.000000048  -0.032555693  -0.002330903  -0.201390517   0.027799817   0.492086367   0.030397554
                         0.000000666   0.000001146  -0.000108336   0.000017439   0.000035862  -0.000034562  -0.002584306   0.000214014

   30    6.2  1.5  0.5   0.000000000  -0.000000363   0.000009565  -0.000026814  -0.000009277  -0.000014920  -0.000203603   0.000004744
                        -0.010883139  -0.000000637  -0.353160457  -0.025239842   0.506139104  -0.069938171  -0.017393162  -0.001065512

   31    7.2  1.5  0.5   0.000000102  -0.009758540  -0.005447235   0.076000086   0.017679451   0.127996624  -0.014914988   0.242358697
                        -0.000000141   0.008639946   0.005156680  -0.072118251  -0.001930805  -0.014055085   0.003639723  -0.056162916

   32    8.2  1.5  0.5  -0.000000000  -0.000000155  -0.000015292  -0.000010586  -0.000049939   0.000005283   0.001174022  -0.000071424
                        -0.010395934  -0.000000233  -0.021607699  -0.001554739   0.058541754  -0.008100333   0.212649264   0.013158222

   33    1.2  1.5 -0.5  -0.000039404   0.000000766   0.000000003  -0.000000000   0.000000001  -0.000000000   0.000000009  -0.000000001
                         0.288510553   0.000002341  -0.000007141  -0.000000510   0.000003472  -0.000000480   0.000002099   0.000000130

   34    2.2  1.5 -0.5  -0.288506855   0.000011576  -0.000001775  -0.000000127  -0.000006139   0.000000848   0.000000146   0.000000008
                        -0.000039402  -0.000011551  -0.000000002   0.000000000  -0.000000002  -0.000000000  -0.000000003   0.000000000

   35    3.2  1.5 -0.5   0.000004771   0.432136785  -0.000000072   0.000001012  -0.000000480  -0.000003477   0.000000219  -0.000003559
                         0.000001958  -0.382389840   0.000000068  -0.000000960   0.000000052   0.000000380  -0.000000053   0.000000824

   36    4.2  1.5 -0.5   0.000003591  -0.000000488  -0.000126948   0.000027398   0.000091040   0.000008704  -0.002002561   0.000186704
                        -0.013033887  -0.000000618   0.416898868   0.029816004  -0.340544316   0.047076414  -0.403816346  -0.024950424

   37    5.2  1.5 -0.5   0.000000795  -0.000000979  -0.001703481   0.023550361   0.027639294   0.200204358  -0.029527098   0.479391492
                         0.000000826  -0.000000023   0.001591090  -0.022478098  -0.002983355  -0.021825605   0.007225480  -0.111083165

   38    6.2  1.5 -0.5  -0.000000150   0.007212100   0.017346461  -0.242994037   0.007577066   0.054951411  -0.000250589   0.003817091
                        -0.000000718   0.008150357   0.018334413  -0.256273715   0.069526512   0.503147220  -0.001035637   0.016970366

   39    7.2  1.5 -0.5   0.013033716   0.000000170   0.104771438   0.007500913   0.128765966  -0.017784571  -0.248777641  -0.015352354
                         0.000003591   0.000000038   0.000043739  -0.000005811   0.000077798  -0.000000264   0.001302342  -0.000098302

   40    8.2  1.5 -0.5  -0.000000038   0.006889237   0.001062035  -0.014855777   0.000884556   0.006404443   0.003107058  -0.047947568
                        -0.000000277   0.007785491   0.001135521  -0.015690724   0.008051894   0.058190400   0.012786325  -0.207176539

   41    1.2  1.5 -1.5  -0.000001695   0.331105856   0.000000140  -0.000001962   0.000000072   0.000000523  -0.000000031   0.000000474
                        -0.000003915   0.374284007   0.000000148  -0.000002069   0.000000662   0.000004792  -0.000000126   0.000002051

   42    2.2  1.5 -1.5   0.000003915  -0.374276144  -0.000000148   0.000002071  -0.000000567  -0.000004098   0.000000073  -0.000001196
                        -0.000001695   0.331098899   0.000000140  -0.000001964   0.000000062   0.000000447  -0.000000018   0.000000276

   43    3.2  1.5 -1.5  -0.000001726   0.000012054  -0.000010275  -0.000000735  -0.000004449   0.000000614   0.000000450   0.000000027
                         0.000000001  -0.000010666  -0.000000007   0.000000000  -0.000000005   0.000000000  -0.000000002   0.000000000

   44    4.2  1.5 -1.5  -0.000000979   0.004984968  -0.009934159   0.139698116  -0.006388654  -0.046565478   0.004919044  -0.075625570
                        -0.000000400   0.005636616  -0.010543640   0.147427297  -0.058935710  -0.426568538   0.020090950  -0.326366482

   45    5.2  1.5 -1.5  -0.015049486  -0.000000782   0.488822595   0.034979382   0.467131714  -0.064531078   0.226783208   0.014023134
                        -0.000001171  -0.000000013   0.000352160  -0.000024651   0.000327075   0.000020800  -0.001080566   0.000116345

   46    6.2  1.5 -1.5  -0.000001290   0.000000318  -0.000352923   0.000022849  -0.000164750   0.000001552  -0.000512237   0.000047050
                         0.010394801   0.000000314   0.588464370   0.042107865   0.152490503  -0.021046083  -0.110236903  -0.006795591

   47    7.2  1.5 -1.5   0.000000978  -0.005637249  -0.001197079   0.016620746  -0.021726125  -0.157213506   0.025468649  -0.413608795
                         0.000000063   0.004985530   0.001120705  -0.015745516   0.002370083   0.017202215  -0.006214192   0.095859857

   48    8.2  1.5 -1.5   0.000000386   0.000000047   0.000173342  -0.000006444   0.000253611  -0.000009754  -0.001710471   0.000147486
                        -0.010882585  -0.000000005  -0.238465665  -0.017067522  -0.312968218   0.043239783  -0.357033514  -0.022060242


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000000   0.000000267   0.000000038  -0.000000047   0.000000022   0.000000000   0.000000327  -0.000000011
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000009   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000058  -0.000000000  -0.000000010
                         0.000000027   0.000000000  -0.000000005  -0.000000004  -0.000000000  -0.000000119   0.000000012   0.000000349

    3    3.2  0.5  0.5  -0.000000336  -0.000000000   0.000000038   0.000000031   0.000000000   0.000000180  -0.000000002  -0.000000053
                        -0.000000115  -0.000000000  -0.000000001  -0.000000001  -0.000000000  -0.000000088  -0.000000000  -0.000000001

    4    4.2  0.5  0.5  -0.000000003   0.000010644   0.041313349  -0.050641785  -0.072747353   0.000013882   0.031947120  -0.001121791
                        -0.000000002   0.000000000  -0.000008900  -0.000012056  -0.000082788   0.000005341   0.000009896   0.000000554

    5    5.2  0.5  0.5  -0.000000009  -0.000000001  -0.000003357  -0.000009026   0.000104537  -0.000014671  -0.000012279  -0.000000009
                        -0.000000003   0.000002562  -0.009416786   0.011505406  -0.087167486   0.000006871   0.052376443  -0.001840491

    6    6.2  0.5  0.5   0.000000584   0.000000022   0.002401209   0.001926305   0.000012675   0.019066349  -0.000023625  -0.000735316
                        -0.000001789   0.000000000   0.069238960   0.056491595  -0.000018417   0.039034577   0.000946659   0.026683561

    7    7.2  0.5  0.5   0.000014208   0.000000003  -0.054192211  -0.044213027   0.000002072   0.015972166   0.002561647   0.073095437
                         0.000004871   0.000000001   0.001877082   0.001508700  -0.000002873  -0.007787398   0.000066487   0.001997182

    8    8.2  0.5  0.5  -0.000000017  -0.000000032  -0.000002319  -0.000006343   0.000045843  -0.000009278  -0.000004436  -0.000004423
                        -0.000000005  -0.000006595  -0.010236560   0.012544468  -0.050440003   0.000010934  -0.088003285   0.003082806

    9    1.2  0.5 -0.5  -0.000000086  -0.000000000   0.000000002   0.000000001   0.000000000   0.000000010  -0.000000000  -0.000000009
                         0.000000252  -0.000000000   0.000000047   0.000000038   0.000000000   0.000000020   0.000000011   0.000000327

   10    2.2  0.5 -0.5  -0.000000000  -0.000000028   0.000000004  -0.000000005   0.000000133   0.000000000  -0.000000349   0.000000012
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   11    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000355  -0.000000031   0.000000038  -0.000000201   0.000000000   0.000000053  -0.000000002

   12    4.2  0.5 -0.5  -0.000003451   0.000000001   0.001748650   0.001407817  -0.000010881  -0.031930023  -0.000031176  -0.000862176
                         0.000010069   0.000000003   0.050611587   0.041289356  -0.000010141  -0.065365571   0.001121358   0.031935485

   13    5.2  0.5 -0.5   0.000002424   0.000000000  -0.011498330  -0.009411363   0.000000247  -0.078320134   0.001839805   0.052357261
                         0.000000830   0.000000010   0.000403562   0.000319564   0.000016198   0.038264058   0.000050249   0.001417458

   14    6.2  0.5 -0.5  -0.000000007   0.000001881  -0.056524427   0.069280580  -0.043442164  -0.000011007  -0.026693690   0.000946951
                         0.000000021   0.000000027   0.000012030   0.000025464  -0.000048171   0.000019460   0.000006655   0.000002225

   15    7.2  0.5 -0.5  -0.000000000  -0.000000001   0.000008334   0.000017626   0.000006972  -0.000001676  -0.000001134  -0.000003463
                         0.000000003  -0.000015020   0.044238760  -0.054224707  -0.017769456   0.000003121  -0.073122717   0.002562507

   16    8.2  0.5 -0.5  -0.000006229  -0.000000001  -0.012536873  -0.010230619  -0.000005767  -0.045326842  -0.003081778  -0.087970370
                        -0.000002168   0.000000018   0.000436513   0.000348713   0.000013129   0.022128564  -0.000079731  -0.002406681

   17    1.2  1.5  1.5  -0.000000000   0.000000000  -0.000000137   0.000001487   0.000055810  -0.000004906  -0.000010493  -0.000000627
                        -0.000000000  -0.000000375   0.006296446  -0.007720445  -0.045532465   0.000008946   0.008985447  -0.000314542

   18    2.2  1.5  1.5   0.000000000   0.000000758  -0.009229301   0.011314997   0.030762604  -0.000005726  -0.033042986   0.001157391
                        -0.000000000   0.000000001   0.000000088   0.000002147   0.000044193  -0.000002524  -0.000005864   0.000000690

   19    3.2  1.5  1.5  -0.000000715  -0.000000000  -0.001029836  -0.000827443  -0.000003372  -0.002718129  -0.000009515  -0.000304931
                         0.000002089   0.000000000  -0.029740028  -0.024262262   0.000000488  -0.005558145   0.000392307   0.011205032

   20    4.2  1.5  1.5  -0.000007253   0.000060508  -0.000004907   0.000031429   0.000414383   0.000004929   0.000008915   0.000026269
                         0.000000839  -0.032372230   0.123142241  -0.150954716  -0.161895550   0.000032783   0.577707962  -0.020221562

   21    5.2  1.5  1.5  -0.003533880   0.000004868   0.001248624   0.000999070   0.000075169   0.065545857  -0.000211725  -0.006631996
                         0.010401527   0.000003903   0.036462153   0.029766268   0.000029031   0.134239829   0.008490199   0.243372080

   22    6.2  1.5  1.5  -0.098267279  -0.000003398   0.351644518   0.286872285  -0.000024419  -0.022287731  -0.010860187  -0.310030962
                        -0.033612466  -0.000002036  -0.012165801  -0.009784910  -0.000011815   0.010837960  -0.000258578  -0.008441788

   23    7.2  1.5  1.5   0.000001541   0.368622880  -0.033959416   0.041661395   0.609996617  -0.000128107   0.152480411  -0.005347134
                        -0.000021636  -0.000024107  -0.000032843   0.000019524   0.000704587  -0.000083663  -0.000233655  -0.000028136

   24    8.2  1.5  1.5  -0.328170696  -0.000004288   0.386241327   0.315103130   0.000007490   0.164328104   0.001420090   0.040437141
                        -0.112358966  -0.000022934  -0.013383275  -0.010743651  -0.000058684  -0.080287144   0.000041001   0.001120574

   25    1.2  1.5  0.5   0.000000129   0.000000000  -0.028871861  -0.023554350  -0.000001178  -0.016300518  -0.000390390  -0.011135593
                         0.000000045   0.000000000   0.000997628   0.000800309   0.000005310   0.007963263  -0.000009702  -0.000302008

   26    2.2  1.5  0.5  -0.000000552  -0.000000000  -0.000778999  -0.000626358   0.000002010   0.003256888  -0.000026761  -0.000832383
                         0.000001608   0.000000000  -0.022627510  -0.018459436   0.000002026   0.006673381   0.001069359   0.030528213

   27    3.2  1.5  0.5  -0.000000000   0.000001055   0.005089048  -0.006237281   0.025575169  -0.000005831   0.041676269  -0.001460106
                        -0.000000000  -0.000000001  -0.000000630  -0.000002755   0.000023610  -0.000004652  -0.000002340  -0.000002839

   28    4.2  1.5  0.5   0.022188572   0.000002238   0.139405534   0.113759521  -0.000007222   0.209998416   0.011183972   0.318505633
                         0.007666079   0.000003395  -0.004823685  -0.003876563  -0.000077037  -0.102598776   0.000277321   0.008614668

   29    5.2  1.5  0.5  -0.000007059   0.016311589  -0.192897983   0.236411714  -0.517891663   0.000073619   0.376288108  -0.013196694
                         0.000011319  -0.000086408   0.000075654   0.000070429  -0.000673271   0.000065528   0.000072085  -0.000022561

   30    6.2  1.5  0.5   0.000000723   0.000010390  -0.000059872  -0.000045544  -0.000426552   0.000039947   0.000076639   0.000025171
                        -0.000004422   0.136132947  -0.236989025   0.290519123   0.365910095  -0.000081603   0.096909623  -0.003391466

   31    7.2  1.5  0.5  -0.196312260  -0.000013842   0.001149867   0.000909464  -0.000016198  -0.086714639   0.000325222   0.010413375
                         0.573175873   0.000006192   0.034286295   0.027969323  -0.000025247  -0.177495080  -0.013449778  -0.383929036

   32    8.2  1.5  0.5   0.000011130  -0.000027306   0.000071012   0.000098646   0.000213690   0.000010346  -0.000035869   0.000009360
                        -0.000002140   0.587727219   0.291184760  -0.356947432  -0.166812864   0.000031906   0.251003624  -0.008793741

   33    1.2  1.5 -0.5  -0.000000000   0.000000001  -0.000007884  -0.000006971   0.000021296  -0.000004258   0.000002075  -0.000000958
                        -0.000000000   0.000000137  -0.023567941   0.028889091  -0.018141665   0.000003385  -0.011139687   0.000390510

   34    2.2  1.5 -0.5  -0.000000000   0.000001700  -0.018470059   0.022640915   0.007425719  -0.000002702   0.030539559  -0.001069691
                         0.000000000  -0.000000000   0.000007018   0.000002601   0.000005800  -0.000000920   0.000001264  -0.000002440

   35    3.2  1.5 -0.5   0.000000343  -0.000000000  -0.000216641  -0.000173883  -0.000006736  -0.011220427   0.000037019   0.001139987
                        -0.000000998  -0.000000000  -0.006233518  -0.005086076  -0.000003206  -0.022982424  -0.001459640  -0.041660675

   36    4.2  1.5 -0.5  -0.000002486   0.000058429   0.000026742   0.000040373  -0.000282110   0.000072420  -0.000082866   0.000028073
                        -0.000003218   0.023475478   0.113825548  -0.139488957   0.233721552  -0.000027241   0.318622102  -0.011187374

   37    5.2  1.5 -0.5   0.005369997   0.000012996   0.008177384   0.006539221   0.000091149   0.227386688   0.000337681   0.010199567
                        -0.015402550  -0.000003008   0.236270256   0.192787128   0.000037492   0.465303688  -0.013192392  -0.376149856

   38    6.2  1.5 -0.5  -0.128776731  -0.000004417   0.290346696   0.236851694  -0.000055870  -0.328776215  -0.003390889  -0.096871418
                        -0.044144454  -0.000000749  -0.010007957  -0.008066957   0.000071647   0.160613138  -0.000067416  -0.002721976

   39    7.2  1.5 -0.5  -0.000010345   0.605862254   0.027984061  -0.034305561  -0.197544620   0.000029791  -0.384070225   0.013453643
                         0.000011087   0.000115989  -0.000050191   0.000026549  -0.000234845   0.000003507  -0.000070707   0.000042041

   40    8.2  1.5 -0.5  -0.555991601  -0.000005633  -0.356734114  -0.291015938   0.000033214   0.149875671  -0.008790719  -0.250911070
                        -0.190516731   0.000009835   0.012338978   0.009914296  -0.000004670  -0.073238384  -0.000230688  -0.006815850

   41    1.2  1.5 -1.5  -0.000000354  -0.000000000   0.007715854   0.006292738  -0.000005894  -0.040910469   0.000314408   0.008982385
                        -0.000000121   0.000000000  -0.000266234  -0.000216054   0.000008328   0.019988546   0.000009213   0.000234789

   42    2.2  1.5 -1.5  -0.000000245   0.000000000  -0.000390157  -0.000316402   0.000004777   0.013510476   0.000030904   0.000896121
                         0.000000717   0.000000000  -0.011308269  -0.009223876   0.000004042   0.027637055  -0.001156979  -0.033030833

   43    3.2  1.5 -1.5   0.000000000  -0.000002208   0.024276367  -0.029757851   0.006187173  -0.000001038  -0.011209180   0.000392421
                        -0.000000000  -0.000000001  -0.000005042  -0.000009390   0.000009795  -0.000003245  -0.000001049   0.000001197

   44    4.2  1.5 -1.5  -0.030643351  -0.000003145   0.150864856   0.123069647  -0.000031631  -0.145366991   0.020214744   0.577492442
                        -0.010437914   0.000006590  -0.005207928  -0.004227680   0.000009924   0.071265553   0.000525734   0.015778743

   45    5.2  1.5 -1.5   0.000002114  -0.010985408  -0.029783021   0.036483526  -0.149387316   0.000059015  -0.243462425   0.008492815
                         0.000005870  -0.000029192   0.000022258  -0.000002466  -0.000144735   0.000054866  -0.000013861   0.000020113

   46    6.2  1.5 -1.5  -0.000000824  -0.000061505  -0.000058229  -0.000100102   0.000016036  -0.000021316  -0.000024346   0.000037972
                        -0.000003874   0.103856884  -0.287039107   0.351854890   0.024783140  -0.000016780   0.310145871  -0.010863199

   47    7.2  1.5 -1.5  -0.119531220   0.000020967  -0.001448159  -0.001197355   0.000131312   0.267747003  -0.000117837  -0.004395862
                         0.348704913   0.000005556  -0.041636223  -0.033938315   0.000078536   0.548094801   0.005345909   0.152417213

   48    8.2  1.5 -1.5  -0.000020305  -0.000103516  -0.000068139  -0.000130472   0.000222087  -0.000049479  -0.000016334   0.000002221
                        -0.000011492   0.346872501  -0.315286225   0.386473101  -0.182892598   0.000032430  -0.040452661   0.001420679


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.000223407  -0.000002401   0.000275972  -0.000002337   0.000327266  -0.000000014  -0.000000052  -0.000000044
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000001165  -0.000108045   0.000000657   0.000077256   0.000000012   0.000274682  -0.000000000   0.000000000
                         0.000000722   0.000067295  -0.000002728  -0.000322283  -0.000000009  -0.000177632   0.000000059  -0.000000068

    3    3.2  0.5  0.5  -0.000001992  -0.000185458   0.000000456   0.000053969  -0.000000007  -0.000177784  -0.000000023   0.000000027
                        -0.000003203  -0.000297732   0.000000112   0.000012944  -0.000000012  -0.000274918  -0.000000000   0.000000000

    4    4.2  0.5  0.5  -0.043917762   0.000472517   0.035608639  -0.000299295   0.000039135   0.000000008   0.501828851   0.429661305
                         0.000000131  -0.000000180  -0.000000107   0.000001107   0.000000001  -0.000000004  -0.000012801   0.000005987

    5    5.2  0.5  0.5   0.000000018  -0.000011095  -0.000000116  -0.000000752   0.000000004  -0.000000009   0.000014717  -0.000005546
                         0.045014256  -0.000477625  -0.034090441   0.000293107   0.000002782  -0.000000005   0.535655268   0.458544118

    6    6.2  0.5  0.5   0.000481898   0.044819642   0.000039850   0.004732082  -0.000000008   0.000016491   0.000154729  -0.000181391
                        -0.000289017  -0.027918640  -0.000174762  -0.019735746   0.000000000  -0.000010668  -0.023450984   0.027457329

    7    7.2  0.5  0.5  -0.000051881  -0.004646883  -0.000457950  -0.054252665  -0.000000001   0.000018974  -0.087599452   0.102330254
                        -0.000079779  -0.007462027  -0.000109907  -0.013005396   0.000000001   0.000029337  -0.000575826   0.000673594

    8    8.2  0.5  0.5  -0.000000007  -0.000000383   0.000000005   0.000000353  -0.000000000  -0.000000001  -0.000004384   0.000003576
                         0.034207138  -0.000367246   0.044915023  -0.000380024   0.000000101  -0.000000004  -0.129005163  -0.110604599

    9    1.2  0.5 -0.5   0.000002038   0.000189627   0.000000545   0.000064331  -0.000000012  -0.000274813  -0.000000000   0.000000000
                        -0.000001269  -0.000118121  -0.000002273  -0.000268369   0.000000007   0.000177709   0.000000044  -0.000000052

   10    2.2  0.5 -0.5   0.000127289  -0.000001370  -0.000331414   0.000002806   0.000327113  -0.000000014   0.000000068   0.000000059
                        -0.000000007   0.000000003   0.000000002  -0.000000003   0.000000006  -0.000000001  -0.000000000  -0.000000000

   11    3.2  0.5 -0.5  -0.000000003   0.000000003   0.000000007  -0.000000003  -0.000000006  -0.000000000   0.000000000  -0.000000000
                        -0.000350770   0.000003772   0.000055500  -0.000000470   0.000327394  -0.000000014  -0.000000027  -0.000000023

   12    4.2  0.5 -0.5  -0.000401164  -0.037277148   0.000070844   0.008300680   0.000000009  -0.000032862   0.002810934  -0.003302862
                         0.000249679   0.023220338  -0.000290792  -0.034627646  -0.000000001   0.000021252  -0.429652110   0.501817982

   13    5.2  0.5 -0.5  -0.000243115  -0.023800178   0.000285208   0.033151271  -0.000000005   0.000001507  -0.458534299   0.535643660
                        -0.000411271  -0.038207784   0.000067593   0.007946789   0.000000009   0.000002339  -0.003000734   0.003526548

   14    6.2  0.5 -0.5  -0.052803890   0.000561842  -0.020295130   0.000179237   0.000019640   0.000000007  -0.027457927  -0.023451494
                         0.000000157  -0.000009476   0.000001205   0.000001986   0.000000004  -0.000000005   0.000001373   0.000000977

   15    7.2  0.5 -0.5  -0.000001125  -0.000001855  -0.000000510   0.000000128   0.000000003   0.000000002  -0.000002688  -0.000001499
                        -0.008790641   0.000095147  -0.055789712   0.000470954  -0.000034938  -0.000000000  -0.102332471  -0.087601345

   16    8.2  0.5 -0.5  -0.000193848  -0.018086199  -0.000369637  -0.043677676   0.000000001   0.000000055   0.110602245  -0.129002361
                        -0.000311918  -0.029034767  -0.000088243  -0.010469953   0.000000004   0.000000084   0.000721564  -0.000850160

   17    1.2  1.5  1.5   0.000002259   0.000000056   0.000002791  -0.000000030   0.000002298   0.000000050   0.000001870   0.000002071
                         0.016528943  -0.000177667   0.020413875  -0.000172893   0.016825730  -0.000000741  -0.014530185  -0.012438459

   18    2.2  1.5  1.5   0.016528929  -0.000178635   0.020426136  -0.000172781   0.016824888  -0.000000741   0.016464558   0.014097282
                        -0.000002251   0.000000548  -0.000002794  -0.000000868  -0.000002297  -0.000000050   0.000001556   0.000001881

   19    3.2  1.5  1.5  -0.000323599  -0.030015755   0.000056311   0.006675970  -0.000000543  -0.000000744  -0.000006783   0.000006939
                         0.000200770   0.018697143  -0.000235587  -0.027849872   0.000000000   0.000000484   0.000954088  -0.001116772

   20    4.2  1.5  1.5  -0.000076871   0.000019485  -0.000095307  -0.000013971  -0.000061564   0.000017623   0.000008875   0.000009119
                        -0.279808857   0.003006210  -0.345644876   0.002901298  -0.223474534  -0.000014048  -0.053401477  -0.045731488

   21    5.2  1.5  1.5   0.002534143   0.237413754   0.000660972   0.080521596   0.000002186   0.375292203  -0.000028556   0.000038288
                        -0.001573115  -0.147896298  -0.002824456  -0.336081211   0.000002362  -0.242726312   0.004820954  -0.005614918

   22    6.2  1.5  1.5  -0.000317174  -0.029940780   0.003633426   0.428891582   0.000010096   0.167653961  -0.006797342   0.007941081
                        -0.000534265  -0.048112208   0.000856797   0.102779655   0.000000083   0.259192479  -0.000046582   0.000049789

   23    7.2  1.5  1.5  -0.279809529   0.002992829  -0.345567911   0.002925549  -0.223500089  -0.000011648   0.036708278   0.031415480
                         0.000077206   0.000009050   0.000095420   0.000020500   0.000061575   0.000017681   0.000013547   0.000013155

   24    8.2  1.5  1.5  -0.002505393  -0.233140787  -0.000468488  -0.055100500  -0.000008492  -0.175536775   0.000164465  -0.000177138
                        -0.004029483  -0.374261535  -0.000114147  -0.013198357  -0.000014802  -0.271431989   0.000000004  -0.000001626

   25    1.2  1.5  0.5  -0.000007363  -0.000703097   0.000330167   0.039003205   0.000000257   0.005276404  -0.000610030   0.000707726
                        -0.000012539  -0.001139041   0.000079431   0.009348497   0.000000344   0.008157082  -0.000003633   0.000004285

   26    2.2  1.5  0.5   0.000360284   0.033528286   0.000013238   0.001636466   0.000000971   0.008158540  -0.000014754   0.000017223
                        -0.000224450  -0.020884983  -0.000058182  -0.006850573  -0.000000257  -0.005277349   0.002257026  -0.002635568

   27    3.2  1.5  0.5  -0.009541552   0.000101480  -0.011797543   0.000099865   0.019429944  -0.000001119  -0.003336614  -0.002861331
                         0.000000007   0.000000720   0.000000002   0.000000218   0.000000000   0.000000112   0.000000065  -0.000000041

   28    4.2  1.5  0.5  -0.001939317  -0.182643622   0.002284252   0.272128417   0.000010224   0.210246320   0.006115108  -0.007134457
                        -0.003178376  -0.293389352   0.000547970   0.065311888  -0.000006622   0.324932233   0.000036835  -0.000045260

   29    5.2  1.5  0.5   0.345582623  -0.003687653  -0.279796869   0.002346752  -0.000041778   0.000006517  -0.055785503  -0.047752459
                        -0.000040213   0.000011785   0.000007406   0.000007676  -0.000019802  -0.000033433  -0.000002335  -0.000003082

   30    6.2  1.5  0.5   0.000030221  -0.000013477  -0.000024468   0.000017167   0.000000007   0.000008334  -0.000003852  -0.000004697
                         0.441023290  -0.004754900   0.056644031  -0.000480120   0.323162737   0.000003363   0.029345588   0.025122639

   31    7.2  1.5  0.5   0.003136314   0.293353668  -0.000539986  -0.065279133   0.000013705   0.325034111   0.000052226  -0.000054788
                        -0.001957155  -0.182620912   0.002301412   0.271991200  -0.000007350  -0.210312229  -0.007749816   0.009041144

   32    8.2  1.5  0.5  -0.000009626   0.000001048   0.000007834   0.000000537  -0.000000009   0.000004003   0.000000525   0.000001694
                        -0.056653146   0.000606409   0.440915505  -0.003732117   0.308771115  -0.000008682  -0.038860664  -0.033280474

   33    1.2  1.5 -0.5   0.000005456  -0.000000381   0.000000910   0.000000279  -0.000001326   0.000000028  -0.000000355  -0.000000367
                         0.001338555  -0.000014536  -0.040107909   0.000339587   0.009714856  -0.000000428   0.000707739   0.000610040

   34    2.2  1.5 -0.5   0.039500994  -0.000424479   0.007043319  -0.000059665  -0.009716593   0.000000954  -0.002635625  -0.002257074
                        -0.000000244  -0.000000020   0.000005523  -0.000000689  -0.000001328  -0.000000312  -0.000000056  -0.000000043

   35    3.2  1.5 -0.5   0.000085755   0.008098804   0.000023067   0.002750076   0.000001001   0.016315799   0.000018718  -0.000021941
                        -0.000054266  -0.005044857  -0.000097164  -0.011472536  -0.000000513  -0.010550707  -0.002861270   0.003336542

   36    4.2  1.5 -0.5   0.000095906  -0.000034411  -0.000077953   0.000000402  -0.000106626   0.000012181   0.000001516   0.000003257
                         0.345595132  -0.003723149  -0.279856234   0.002349059   0.387019973   0.000000009  -0.007134601  -0.006115218

   37    5.2  1.5 -0.5  -0.003136285  -0.293349288   0.000539576   0.065229447  -0.000023628  -0.000024329   0.000309990  -0.000363403
                         0.001939754   0.182684279  -0.002283892  -0.272087132  -0.000024536   0.000039314  -0.047751453   0.055784319

   38    6.2  1.5 -0.5   0.002502599   0.233154694   0.000470895   0.055089271  -0.000005172  -0.175481484   0.025122130  -0.029344983
                         0.004043051   0.374353351   0.000095225   0.013180251   0.000007349  -0.271367653   0.000160011  -0.000188542

   39    7.2  1.5 -0.5   0.345552837  -0.003696879  -0.279715161   0.002363886  -0.387141312   0.000015500   0.009041309   0.007749992
                        -0.000096314  -0.000002970   0.000078087   0.000011362  -0.000106650  -0.000001270   0.000004489  -0.000001416

   40    8.2  1.5 -0.5  -0.000319735  -0.029945802   0.003629427   0.428767076  -0.000008076  -0.167666663  -0.033279770   0.038859833
                        -0.000515270  -0.048091870   0.000869455   0.102787533  -0.000005117  -0.259282648  -0.000216497   0.000254251

   41    1.2  1.5 -1.5  -0.000093985  -0.008737359  -0.000168123  -0.019850851   0.000000445   0.009134656   0.012438205  -0.014529885
                        -0.000150773  -0.014030841  -0.000040331  -0.004761304   0.000000595   0.014130225   0.000079478  -0.000093392

   42    2.2  1.5 -1.5   0.000151914   0.014030825   0.000039432   0.004764166  -0.000000595  -0.014129517   0.000090543  -0.000106388
                        -0.000093984  -0.008737359  -0.000168223  -0.019862774   0.000000444   0.009134200  -0.014096991   0.016464215

   43    3.2  1.5 -1.5   0.035362815  -0.000380821  -0.028638854   0.000242224  -0.000000888   0.000000456   0.001116793   0.000954112
                        -0.000000101   0.000000683   0.000000093   0.000000157  -0.000000003  -0.000000294   0.000000382  -0.000000528

   44    4.2  1.5 -1.5   0.001572922   0.147876886   0.002824628   0.336100628   0.000022427  -0.121297827   0.045730565  -0.053400387
                         0.002561952   0.237540374   0.000662723   0.080664469   0.000002227  -0.187690459   0.000290704  -0.000341233

   45    5.2  1.5 -1.5  -0.279711647   0.002982709  -0.345592688   0.002900723   0.446945521  -0.000000553   0.005615049   0.004821038
                        -0.000006553  -0.000004618  -0.000039104   0.000015634   0.000034763   0.000003171  -0.000001475   0.000003052

   46    6.2  1.5 -1.5  -0.000024642   0.000013265  -0.000028850   0.000013779   0.000038306  -0.000008433   0.000002275  -0.000002016
                        -0.056667754   0.000621178   0.441034744  -0.003733055  -0.308688501   0.000005552  -0.007941237  -0.006797501

   47    7.2  1.5 -1.5  -0.002535507  -0.237541121  -0.000662027  -0.080646638  -0.000019383   0.187711924   0.000192810  -0.000227118
                         0.001590067   0.147876957   0.002849732   0.336025757  -0.000008522  -0.121311695  -0.031414891   0.036707578

   48    8.2  1.5 -1.5   0.000006520   0.000003932   0.000009478   0.000001795  -0.000011487  -0.000000907   0.000000465  -0.000001075
                        -0.440938003   0.004744862  -0.056659171   0.000482190   0.323246785  -0.000017040   0.000177145   0.000164461


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5  -0.000000030  -0.000000004   0.000000006   0.000000001   0.000008401   0.000039435   0.000167226  -0.000012761
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000018  -0.000000144  -0.000000006   0.000000026   0.000000389  -0.000000083  -0.000000551  -0.000007223
                         0.000000003  -0.000000028  -0.000000011   0.000000044   0.000161816  -0.000034528   0.000003700   0.000048315

    3    3.2  0.5  0.5   0.000000002  -0.000000017   0.000000024  -0.000000097  -0.000122362   0.000026123   0.000008927   0.000117154
                        -0.000000011   0.000000086  -0.000000014   0.000000058   0.000000293  -0.000000062   0.000001337   0.000017517

    4    4.2  0.5  0.5   0.177411108   0.022069026  -0.337477451  -0.083157522   0.127813375   0.598944139  -0.146743333   0.011125772
                         0.000003895  -0.000015441  -0.000123157   0.000481197  -0.000000462   0.000002990  -0.000001531  -0.000011123

    5    5.2  0.5  0.5   0.000001647  -0.000018550  -0.000092675   0.000373548   0.000001289   0.000002616   0.000000466   0.000015045
                         0.125376043   0.015593593   0.267920633   0.066007086  -0.126771999  -0.594179368   0.165508035  -0.012715906

    6    6.2  0.5  0.5  -0.043059268   0.346137312  -0.082110995   0.336705716  -0.000433500   0.000092585  -0.006799449  -0.089100783
                        -0.008161846   0.066802049  -0.140363292   0.567093440  -0.174951064   0.037243738   0.045483839   0.595790770

    7    7.2  0.5  0.5  -0.011643874   0.095143358   0.115971843  -0.468345196   0.424321766  -0.090488406   0.034407349   0.450606620
                         0.061328348  -0.493053872  -0.067809600   0.278089487  -0.001029826   0.000223179   0.005147378   0.067394585

    8    8.2  0.5  0.5   0.000023104  -0.000252192  -0.000032950   0.000132515  -0.000003509   0.000000660  -0.000000170  -0.000002505
                         0.737144123   0.091644069   0.091293037   0.022502802   0.034588867   0.162318158   0.605635364  -0.046225641

    9    1.2  0.5 -0.5  -0.000000004   0.000000030   0.000000001  -0.000000003   0.000000095  -0.000000020  -0.000001887  -0.000024731
                        -0.000000001   0.000000006   0.000000001  -0.000000005   0.000039435  -0.000008401   0.000012621   0.000165387

   10    2.2  0.5 -0.5  -0.000000147  -0.000000018   0.000000051   0.000000012  -0.000034528  -0.000161816  -0.000048852   0.000003741
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001  -0.000000002   0.000000002

   11    3.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000002   0.000000001   0.000000002
                        -0.000000088  -0.000000011  -0.000000113  -0.000000028   0.000026123   0.000122362  -0.000118456   0.000009027

   12    4.2  0.5 -0.5   0.021666549  -0.174199881  -0.042012267   0.172283503   0.001450194  -0.000308368   0.001656382   0.021700240
                         0.004195568  -0.033602124  -0.071766110   0.290188627   0.598942383  -0.127813003  -0.011001787  -0.145129961

   13    5.2  0.5 -0.5   0.002935590  -0.023750868   0.056960753  -0.230381018  -0.594177627   0.126771625   0.012578305   0.163688029
                        -0.015314791   0.123105842  -0.033354873   0.136770102   0.001438307  -0.000307603   0.001865666   0.024477312

   14    6.2  0.5 -0.5   0.352524541   0.043825746   0.659519249   0.162613303   0.037243853   0.174951601  -0.602416460   0.045989261
                        -0.000025855   0.000142387   0.000262386  -0.000991402   0.000002594   0.000010772   0.000010006   0.000001887

   15    7.2  0.5 -0.5   0.000024511  -0.000184004   0.000229163  -0.000847215   0.000004535   0.000004551  -0.000013657   0.000002302
                         0.502149757   0.062423651  -0.544684251  -0.134338723  -0.090488681  -0.424323016  -0.455618652   0.034790245

   16    8.2  0.5 -0.5   0.017111973  -0.139655585   0.019421408  -0.078500842   0.162317686  -0.034588757   0.045716970   0.598975784
                        -0.090032657   0.723794015  -0.011366731   0.046605122  -0.000391543   0.000087084   0.006838750   0.089566761

   17    1.2  1.5  1.5  -0.000000262   0.000000512  -0.000000166  -0.000000707  -0.000000036  -0.000000174  -0.000000744   0.000000058
                        -0.010534310  -0.001310255   0.000226053   0.000053872  -0.000273795  -0.001285225  -0.005448611   0.000415776

   18    2.2  1.5  1.5  -0.002200326  -0.000272983  -0.001939720  -0.000476197  -0.000271681  -0.001275311  -0.005447293   0.000415667
                         0.000001860  -0.000003494  -0.000000684   0.000002382  -0.000000261   0.000000239   0.000000750   0.000000015

   19    3.2  1.5  1.5   0.000272204  -0.002189144  -0.002231551   0.009151482  -0.000022405   0.000004804  -0.000025431  -0.000335603
                         0.000051404  -0.000422413  -0.003816992   0.015413405  -0.009256597   0.001975598   0.000170410   0.002244379

   20    4.2  1.5  1.5   0.000021304  -0.000023058  -0.000002983   0.000016416  -0.000001394   0.000002905   0.000010604  -0.000000904
                         0.043307659   0.005383059   0.010600816   0.002606556   0.001917758   0.009005034   0.038379646  -0.002931200

   21    5.2  1.5  1.5   0.004523203  -0.036331002   0.000614396  -0.002517028  -0.000024197   0.000005727   0.000436307   0.005686411
                         0.000856183  -0.007006993   0.001050645  -0.004246914  -0.009080184   0.001933791  -0.002905706  -0.038046168

   22    6.2  1.5  1.5  -0.000780364   0.006372166   0.013166973  -0.053168784   0.033544160  -0.007156819   0.001501449   0.019647281
                         0.004111427  -0.033041802  -0.007697139   0.031567867  -0.000081876   0.000017861   0.000225821   0.002934504

   23    7.2  1.5  1.5   0.067749673   0.008426776   0.004335463   0.001074376   0.001929197   0.009054448   0.038518036  -0.002939447
                        -0.000012946   0.000012507  -0.000000927  -0.000009444   0.000000032  -0.000002600  -0.000010394   0.000003161

   24    8.2  1.5  1.5   0.000443688  -0.003608662   0.014082785  -0.056868742   0.019564878  -0.004178235  -0.002586396  -0.033925375
                        -0.002326924   0.018708241  -0.008233777   0.033764994  -0.000047143   0.000010156  -0.000386468  -0.005071967

   25    1.2  1.5  0.5  -0.000211282   0.001720860  -0.003621687   0.014625182   0.006819848  -0.001454952   0.000376727   0.004930386
                         0.001110669  -0.008928218   0.002117031  -0.008681194  -0.000015979   0.000003397   0.000056184   0.000736219

   26    2.2  1.5  0.5   0.001583048  -0.012722400  -0.001748427   0.007170866   0.000008414  -0.000001761   0.000085843   0.001123597
                         0.000300445  -0.002453530  -0.002992096   0.012082000   0.003854559  -0.000823247  -0.000573253  -0.007518754

   27    3.2  1.5  0.5   0.022038785   0.002740273   0.002962816   0.000730472   0.000155919   0.000731916   0.003135005  -0.000239264
                        -0.000000669   0.000007359   0.000001185  -0.000004771  -0.000000125   0.000000027   0.000000019   0.000000244

   28    4.2  1.5  0.5   0.001193682  -0.009738278   0.004728596  -0.019111918   0.037680074  -0.008039416  -0.000698468  -0.009191176
                        -0.006290097   0.050551095  -0.002765560   0.011344446  -0.000080925   0.000016719  -0.000103097  -0.001377043

   29    5.2  1.5  0.5  -0.006490780  -0.000805821  -0.056566764  -0.013957809   0.008045657   0.037709274  -0.009256863   0.000703592
                        -0.000004048   0.000005860  -0.000017970   0.000092185   0.000001723  -0.000002839   0.000002304  -0.000001155

   30    6.2  1.5  0.5   0.000000030  -0.000008728   0.000010941  -0.000063343   0.000002550   0.000002710  -0.000000772  -0.000000045
                         0.041593176   0.005174194  -0.040507887  -0.009986450   0.004174482   0.019548939  -0.034206297   0.002607869

   31    7.2  1.5  0.5  -0.006760897   0.054359222   0.000979435  -0.004003575   0.000080591  -0.000019527   0.000105299   0.001372545
                        -0.001283290   0.010474104   0.001673236  -0.006756179   0.037774368  -0.008061863  -0.000695975  -0.009162352

   32    8.2  1.5  0.5   0.000001297  -0.000009769  -0.000017455   0.000074976   0.000000334  -0.000000952   0.000000169  -0.000000511
                         0.010072505   0.001251997   0.049691655   0.012252111  -0.007163545  -0.033576032  -0.019959493   0.001525566

   33    1.2  1.5 -0.5   0.000001515   0.000002931   0.000004743  -0.000026971   0.000000119   0.000000499  -0.000001027   0.000000148
                        -0.009092548  -0.001130582  -0.017007617  -0.004194962   0.001454956   0.006819866   0.004985050  -0.000380893

   34    2.2  1.5 -0.5   0.012956823   0.001611299  -0.014049769  -0.003465418   0.000823249   0.003854568  -0.007602245   0.000579644
                         0.000000820   0.000004862  -0.000003274   0.000022782  -0.000000228  -0.000000899  -0.000000700  -0.000000121

   35    3.2  1.5 -0.5  -0.002692056   0.021639654  -0.000368576   0.001512618  -0.000001795   0.000000252   0.000035626   0.000463615
                        -0.000511849   0.004175335  -0.000630685   0.002547600  -0.000731913   0.000155919  -0.000236597  -0.003100535

   36    4.2  1.5 -0.5  -0.000013628  -0.000019425  -0.000006217   0.000033929   0.000002707   0.000010121  -0.000002626  -0.000001333
                         0.051480551   0.006402329   0.022225252   0.005477846   0.008039433   0.037680160  -0.009293759   0.000706035

   37    5.2  1.5 -0.5   0.000790122  -0.006374033   0.007041848  -0.028875246  -0.000088276   0.000021163  -0.000105196  -0.001371268
                         0.000158396  -0.001225535   0.012051610  -0.048641744  -0.037709170   0.008045629   0.000695685   0.009154733

   38    6.2  1.5 -0.5  -0.000971547   0.007878782   0.008621281  -0.034833704  -0.019548888   0.004174476   0.002579200   0.033830048
                         0.005082171  -0.040840141  -0.005040507   0.020676124   0.000044525  -0.000007537   0.000385631   0.005059505

   39    7.2  1.5 -0.5  -0.055359116  -0.006881579   0.007853315   0.001938784   0.008061886   0.037774453  -0.009264587   0.000703895
                        -0.000012475  -0.000020621  -0.000003613  -0.000011293   0.000000047  -0.000010682   0.000002440  -0.000001214

   40    8.2  1.5 -0.5  -0.000227566   0.001909249  -0.010575824   0.042728988   0.033575936  -0.007163524   0.001508866   0.019740042
                         0.001231180  -0.009889901   0.006186419  -0.025367191  -0.000080177   0.000017643   0.000225110   0.002951626

   41    1.2  1.5 -1.5  -0.000247691   0.001995710   0.000045972  -0.000194335  -0.001285222   0.000273795  -0.000411196  -0.005388588
                         0.001286630  -0.010343540  -0.000028093   0.000115473   0.000002931  -0.000000625  -0.000061546  -0.000806526

   42    2.2  1.5 -1.5  -0.000268703   0.002160137  -0.000240902   0.000990214  -0.000002842   0.000000917   0.000061458   0.000806337
                        -0.000048279   0.000418621  -0.000410774   0.001667930  -0.001275308   0.000271680  -0.000411098  -0.005387284

   43    3.2  1.5 -1.5  -0.002229525  -0.000277013   0.017925474   0.004421364   0.001975604   0.009256624  -0.002269332   0.000172297
                         0.000000089  -0.000001089   0.000007077  -0.000028119   0.000000030   0.000000038  -0.000000007   0.000000050

   44    4.2  1.5 -1.5   0.000997041  -0.008224435   0.002250174  -0.009115835   0.009005015  -0.001917749   0.002898835   0.037956053
                        -0.005289969   0.042519554  -0.001315719   0.005410995  -0.000018853   0.000006028   0.000434387   0.005686422

   45    5.2  1.5 -1.5  -0.037000536  -0.004603494  -0.004936771  -0.001217079   0.001933799   0.009080216   0.038468768  -0.002938280
                        -0.000001835  -0.000016122   0.000001933   0.000007610   0.000001054   0.000002257   0.000002735   0.000001787

   46    6.2  1.5 -1.5  -0.000002115  -0.000012568   0.000024140  -0.000097641   0.000000569   0.000000824   0.000003385   0.000001290
                         0.033650634   0.004184811  -0.061834046  -0.015251413  -0.007156842  -0.033544260  -0.019865220   0.001518336

   47    7.2  1.5 -1.5   0.008276581  -0.066520637   0.000540014  -0.002211111   0.000019278  -0.000004693  -0.000437839  -0.005706681
                         0.001583955  -0.012846136   0.000928848  -0.003729239   0.009054428  -0.001929192   0.002906657   0.038092952

   48    8.2  1.5 -1.5   0.000000464   0.000005121   0.000026124  -0.000103338   0.000000060  -0.000000131  -0.000001001   0.000000282
                        -0.019053102  -0.002368841  -0.066137190  -0.016312855  -0.004178247  -0.019564935   0.034302418  -0.002615111


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  65.588%   0.154%   0.917%   0.006%   0.004%  33.331%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.056%  23.821%   0.291%  42.500%  33.328%   0.004%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.024%  10.357%   0.382%  55.903%  33.329%   0.004%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   0.007%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   0.000%   0.001%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.025%   0.000%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%
    9    1.2  0.5 -0.5   0.154%  65.588%   0.006%   0.917%  33.331%   0.004%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5  23.821%   0.056%  42.500%   0.291%   0.004%  33.328%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5  10.357%   0.024%  55.903%   0.382%   0.004%  33.329%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   0.007%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   0.000%   0.001%   0.000%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.025%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.006%   0.000%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  40.636%   0.021%   5.272%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  54.097%   0.000%   0.010%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.178%   0.000%  28.842%   0.114%
   20    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.136%   0.000%   0.009%
   21    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.009%   0.000%
   22    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.133%   0.001%
   23    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.057%   0.000%   0.039%
   24    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.046%   0.000%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.233%   0.000%   7.553%   0.030%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.476%   0.000%  42.954%   0.169%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.883%   0.057%  14.482%
   28    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.005%   0.000%
   29    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.138%   0.000%   0.045%
   30    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.091%
   31    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.044%   0.000%
   32    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%   0.000%   0.031%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.233%   0.030%   7.553%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.476%   0.169%  42.954%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.883%   0.000%  14.482%   0.057%
   36    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.005%
   37    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.138%   0.000%   0.045%   0.000%
   38    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.091%   0.000%
   39    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.044%
   40    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%   0.000%   0.031%   0.000%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  40.636%   0.000%   5.272%   0.021%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  54.097%   0.000%   0.010%   0.000%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.178%   0.114%  28.842%
   44    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.136%   0.000%   0.009%   0.000%
   45    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.009%
   46    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.133%
   47    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.057%   0.000%   0.039%   0.000%
   48    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.046%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.004%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
    7    7.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.018%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.004%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   14    6.2  0.5 -0.5   0.021%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.018%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   17    1.2  1.5  1.5   8.797%   0.000%   0.000%   5.274%  14.654%   0.000%  24.972%   0.000%   0.000%   0.000%
   18    2.2  1.5  1.5   0.621%   0.000%   0.000%   5.274%  14.653%   0.000%  24.971%   0.000%   0.000%   0.000%
   19    3.2  1.5  1.5   0.000%  10.666%  43.961%   0.000%   0.000%  15.823%   0.000%   0.000%   0.000%   0.000%
   20    4.2  1.5  1.5   0.040%   0.000%   0.000%   0.019%   0.052%   0.000%   0.006%   0.000%   4.125%   0.021%
   21    5.2  1.5  1.5   0.000%   0.028%   0.019%   0.000%   0.000%   0.052%   0.000%   0.023%   0.122%  23.895%
   22    6.2  1.5  1.5   0.000%   0.004%   0.068%   0.000%   0.000%   0.003%   0.000%   0.011%   0.177%  34.629%
   23    7.2  1.5  1.5   0.088%   0.000%   0.000%   0.019%   0.052%   0.000%   0.006%   0.000%   0.052%   0.000%
   24    8.2  1.5  1.5   0.000%   0.086%   0.003%   0.000%   0.000%   0.068%   0.000%   0.012%   0.029%   5.687%
   25    1.2  1.5  0.5   0.000%  36.960%  41.988%   0.000%   0.000%   4.510%   0.000%   8.324%   0.000%   0.000%
   26    2.2  1.5  0.5   0.000%   0.179%   1.383%   0.000%   0.000%  45.114%   0.000%   8.324%   0.000%   0.000%
   27    3.2  1.5  0.5  42.279%   0.000%   0.000%   1.758%   4.885%   0.000%  33.296%   0.000%   0.000%   0.000%
   28    4.2  1.5  0.5   0.000%   0.079%   0.052%   0.000%   0.000%   0.019%   0.000%   0.017%   0.089%  17.380%
   29    5.2  1.5  0.5   0.049%   0.000%   0.000%   0.052%   0.019%   0.000%   0.000%   0.000%   0.106%   0.001%
   30    6.2  1.5  0.5   0.002%   0.000%   0.000%   0.003%   0.068%   0.000%   0.012%   0.000%  12.472%   0.064%
   31    7.2  1.5  0.5   0.000%   0.039%   0.052%   0.000%   0.000%   0.019%   0.000%   0.017%   0.006%   1.098%
   32    8.2  1.5  0.5   0.038%   0.000%   0.000%   0.068%   0.003%   0.000%   0.011%   0.000%   0.047%   0.000%
   33    1.2  1.5 -0.5  36.960%   0.000%   0.000%  41.988%   4.510%   0.000%   8.324%   0.000%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.179%   0.000%   0.000%   1.383%  45.114%   0.000%   8.324%   0.000%   0.000%   0.000%
   35    3.2  1.5 -0.5   0.000%  42.279%   1.758%   0.000%   0.000%   4.885%   0.000%  33.296%   0.000%   0.000%
   36    4.2  1.5 -0.5   0.079%   0.000%   0.000%   0.052%   0.019%   0.000%   0.017%   0.000%  17.380%   0.089%
   37    5.2  1.5 -0.5   0.000%   0.049%   0.052%   0.000%   0.000%   0.019%   0.000%   0.000%   0.001%   0.106%
   38    6.2  1.5 -0.5   0.000%   0.002%   0.003%   0.000%   0.000%   0.068%   0.000%   0.012%   0.064%  12.472%
   39    7.2  1.5 -0.5   0.039%   0.000%   0.000%   0.052%   0.019%   0.000%   0.017%   0.000%   1.098%   0.006%
   40    8.2  1.5 -0.5   0.000%   0.038%   0.068%   0.000%   0.000%   0.003%   0.000%   0.011%   0.000%   0.047%
   41    1.2  1.5 -1.5   0.000%   8.797%   5.274%   0.000%   0.000%  14.654%   0.000%  24.972%   0.000%   0.000%
   42    2.2  1.5 -1.5   0.000%   0.621%   5.274%   0.000%   0.000%  14.653%   0.000%  24.971%   0.000%   0.000%
   43    3.2  1.5 -1.5  10.666%   0.000%   0.000%  43.961%  15.823%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  1.5 -1.5   0.000%   0.040%   0.019%   0.000%   0.000%   0.052%   0.000%   0.006%   0.021%   4.125%
   45    5.2  1.5 -1.5   0.028%   0.000%   0.000%   0.019%   0.052%   0.000%   0.023%   0.000%  23.895%   0.122%
   46    6.2  1.5 -1.5   0.004%   0.000%   0.000%   0.068%   0.003%   0.000%   0.011%   0.000%  34.629%   0.177%
   47    7.2  1.5 -1.5   0.000%   0.088%   0.019%   0.000%   0.000%   0.052%   0.000%   0.006%   0.000%   0.052%
   48    8.2  1.5 -1.5   0.086%   0.000%   0.000%   0.003%   0.068%   0.000%   0.012%   0.000%   5.687%   0.029%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.171%   0.256%   0.529%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.013%   0.760%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.480%   0.320%   0.000%   0.189%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.294%   0.196%   0.000%   0.032%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.016%   0.254%   0.000%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.171%   0.000%   0.529%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.009%   0.000%   0.760%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.320%   0.480%   0.189%   0.000%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.196%   0.294%   0.032%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.010%   0.000%   0.254%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.006%   0.207%   0.000%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.013%   0.095%   0.000%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.089%   0.059%   0.000%   0.004%
   20    4.2  1.5  1.5  18.413%   0.351%  11.223%   0.043%   0.000%   0.105%   1.516%   2.279%   2.621%   0.000%
   21    5.2  1.5  1.5   0.416%  21.821%   0.020%   5.143%   0.012%   0.000%   0.133%   0.089%   0.000%   2.232%
   22    6.2  1.5  1.5   0.044%   2.325%   0.005%   1.215%   1.079%   0.000%  12.380%   8.239%   0.000%   0.061%
   23    7.2  1.5  1.5   2.501%   0.048%  18.026%   0.069%   0.000%  13.588%   0.115%   0.174%  37.210%   0.000%
   24    8.2  1.5  1.5   0.187%   9.795%   0.049%  12.748%  12.032%   0.000%  14.936%   9.941%   0.000%   3.345%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.083%   0.056%   0.000%   0.033%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   0.034%   0.000%   0.006%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.004%   0.065%   0.000%
   28    4.2  1.5  0.5   0.222%  11.597%   0.062%  16.307%   0.055%   0.000%   1.946%   1.296%   0.000%   5.463%
   29    5.2  1.5  0.5   4.056%   0.077%  24.216%   0.092%   0.000%   0.027%   3.721%   5.589%  26.821%   0.000%
   30    6.2  1.5  0.5  25.618%   0.489%   0.030%   0.000%   0.000%   1.853%   5.616%   8.440%  13.389%   0.000%
   31    7.2  1.5  0.5   0.032%   1.658%   0.024%   6.189%  36.707%   0.000%   0.118%   0.078%   0.000%   3.902%
   32    8.2  1.5  0.5   0.343%   0.007%   4.522%   0.017%   0.000%  34.542%   8.479%  12.741%   2.783%   0.000%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.056%   0.083%   0.033%   0.000%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%   0.051%   0.006%   0.000%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.003%   0.000%   0.065%
   36    4.2  1.5 -0.5  11.597%   0.222%  16.307%   0.062%   0.000%   0.055%   1.296%   1.946%   5.463%   0.000%
   37    5.2  1.5 -0.5   0.077%   4.056%   0.092%  24.216%   0.027%   0.000%   5.589%   3.721%   0.000%  26.821%
   38    6.2  1.5 -0.5   0.489%  25.618%   0.000%   0.030%   1.853%   0.000%   8.440%   5.616%   0.000%  13.389%
   39    7.2  1.5 -0.5   1.658%   0.032%   6.189%   0.024%   0.000%  36.707%   0.078%   0.118%   3.902%   0.000%
   40    8.2  1.5 -0.5   0.007%   0.343%   0.017%   4.522%  34.542%   0.000%  12.741%   8.479%   0.000%   2.783%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.004%   0.000%   0.207%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.009%   0.000%   0.095%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.089%   0.004%   0.000%
   44    4.2  1.5 -1.5   0.351%  18.413%   0.043%  11.223%   0.105%   0.000%   2.279%   1.516%   0.000%   2.621%
   45    5.2  1.5 -1.5  21.821%   0.416%   5.143%   0.020%   0.000%   0.012%   0.089%   0.133%   2.232%   0.000%
   46    6.2  1.5 -1.5   2.325%   0.044%   1.215%   0.005%   0.000%   1.079%   8.239%  12.380%   0.061%   0.000%
   47    7.2  1.5 -1.5   0.048%   2.501%   0.069%  18.026%  13.588%   0.000%   0.174%   0.115%   0.000%  37.210%
   48    8.2  1.5 -1.5   9.795%   0.187%  12.748%   0.049%   0.000%  12.032%   9.941%  14.936%   3.345%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.102%   0.000%   0.193%   0.000%   0.127%   0.000%   0.000%   0.000%  25.183%  18.461%
    5    5.2  0.5  0.5   0.274%   0.000%   0.203%   0.000%   0.116%   0.000%   0.000%   0.000%  28.693%  21.026%
    6    6.2  0.5  0.5   0.000%   0.071%   0.000%   0.279%   0.000%   0.041%   0.000%   0.000%   0.055%   0.075%
    7    7.2  0.5  0.5   0.001%   0.535%   0.000%   0.008%   0.000%   0.311%   0.000%   0.000%   0.767%   1.047%
    8    8.2  0.5  0.5   0.774%   0.001%   0.117%   0.000%   0.202%   0.000%   0.000%   0.000%   1.664%   1.223%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.102%   0.000%   0.193%   0.000%   0.127%   0.000%   0.000%  18.461%  25.183%
   13    5.2  0.5 -0.5   0.000%   0.274%   0.000%   0.203%   0.000%   0.116%   0.000%   0.000%  21.026%  28.693%
   14    6.2  0.5 -0.5   0.071%   0.000%   0.279%   0.000%   0.041%   0.000%   0.000%   0.000%   0.075%   0.055%
   15    7.2  0.5 -0.5   0.535%   0.001%   0.008%   0.000%   0.311%   0.000%   0.000%   0.000%   1.047%   0.767%
   16    8.2  0.5 -0.5   0.001%   0.774%   0.000%   0.117%   0.000%   0.202%   0.000%   0.000%   1.223%   1.664%
   17    1.2  1.5  1.5   0.008%   0.000%   0.027%   0.000%   0.042%   0.000%   0.028%   0.000%   0.021%   0.015%
   18    2.2  1.5  1.5   0.109%   0.000%   0.027%   0.000%   0.042%   0.000%   0.028%   0.000%   0.027%   0.020%
   19    3.2  1.5  1.5   0.000%   0.013%   0.000%   0.125%   0.000%   0.082%   0.000%   0.000%   0.000%   0.000%
   20    4.2  1.5  1.5  33.375%   0.041%   7.829%   0.001%  11.947%   0.001%   4.994%   0.000%   0.285%   0.209%
   21    5.2  1.5  1.5   0.007%   5.927%   0.001%   7.824%   0.001%  11.943%   0.000%  19.976%   0.002%   0.003%
   22    6.2  1.5  1.5   0.012%   9.619%   0.000%   0.321%   0.001%  19.451%   0.000%   9.529%   0.005%   0.006%
   23    7.2  1.5  1.5   2.325%   0.003%   7.829%   0.001%  11.942%   0.001%   4.995%   0.000%   0.135%   0.099%
   24    8.2  1.5  1.5   0.000%   0.164%   0.002%  19.443%   0.000%   0.321%   0.000%  10.449%   0.000%   0.000%
   25    1.2  1.5  0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.161%   0.000%   0.009%   0.000%   0.000%
   26    2.2  1.5  0.5   0.000%   0.093%   0.000%   0.156%   0.000%   0.005%   0.000%   0.009%   0.001%   0.001%
   27    3.2  1.5  0.5   0.174%   0.000%   0.009%   0.000%   0.014%   0.000%   0.038%   0.000%   0.001%   0.001%
   28    4.2  1.5  0.5   0.013%  10.152%   0.001%  11.944%   0.001%   7.832%   0.000%  14.978%   0.004%   0.005%
   29    5.2  1.5  0.5  14.159%   0.017%  11.943%   0.001%   7.829%   0.001%   0.000%   0.000%   0.311%   0.228%
   30    6.2  1.5  0.5   0.939%   0.001%  19.450%   0.002%   0.321%   0.000%  10.443%   0.000%   0.086%   0.063%
   31    7.2  1.5  0.5   0.018%  14.751%   0.001%  11.941%   0.001%   7.824%   0.000%  14.988%   0.006%   0.008%
   32    8.2  1.5  0.5   6.300%   0.008%   0.321%   0.000%  19.441%   0.001%   9.534%   0.000%   0.151%   0.111%
   33    1.2  1.5 -0.5   0.012%   0.000%   0.000%   0.000%   0.161%   0.000%   0.009%   0.000%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.093%   0.000%   0.156%   0.000%   0.005%   0.000%   0.009%   0.000%   0.001%   0.001%
   35    3.2  1.5 -0.5   0.000%   0.174%   0.000%   0.009%   0.000%   0.014%   0.000%   0.038%   0.001%   0.001%
   36    4.2  1.5 -0.5  10.152%   0.013%  11.944%   0.001%   7.832%   0.001%  14.978%   0.000%   0.005%   0.004%
   37    5.2  1.5 -0.5   0.017%  14.159%   0.001%  11.943%   0.001%   7.829%   0.000%   0.000%   0.228%   0.311%
   38    6.2  1.5 -0.5   0.001%   0.939%   0.002%  19.450%   0.000%   0.321%   0.000%  10.443%   0.063%   0.086%
   39    7.2  1.5 -0.5  14.751%   0.018%  11.941%   0.001%   7.824%   0.001%  14.988%   0.000%   0.008%   0.006%
   40    8.2  1.5 -0.5   0.008%   6.300%   0.000%   0.321%   0.001%  19.441%   0.000%   9.534%   0.111%   0.151%
   41    1.2  1.5 -1.5   0.000%   0.008%   0.000%   0.027%   0.000%   0.042%   0.000%   0.028%   0.015%   0.021%
   42    2.2  1.5 -1.5   0.000%   0.109%   0.000%   0.027%   0.000%   0.042%   0.000%   0.028%   0.020%   0.027%
   43    3.2  1.5 -1.5   0.013%   0.000%   0.125%   0.000%   0.082%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  1.5 -1.5   0.041%  33.375%   0.001%   7.829%   0.001%  11.947%   0.000%   4.994%   0.209%   0.285%
   45    5.2  1.5 -1.5   5.927%   0.007%   7.824%   0.001%  11.943%   0.001%  19.976%   0.000%   0.003%   0.002%
   46    6.2  1.5 -1.5   9.619%   0.012%   0.321%   0.000%  19.451%   0.001%   9.529%   0.000%   0.006%   0.005%
   47    7.2  1.5 -1.5   0.003%   2.325%   0.001%   7.829%   0.001%  11.942%   0.000%   4.995%   0.099%   0.135%
   48    8.2  1.5 -1.5   0.164%   0.000%  19.443%   0.002%   0.321%   0.000%  10.449%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   3.147%   0.049%  11.389%   0.692%   1.634%  35.873%   2.153%   0.012%
    5    5.2  0.5  0.5   1.572%   0.024%   7.178%   0.436%   1.607%  35.305%   2.739%   0.016%
    6    6.2  0.5  0.5   0.192%  12.427%   2.644%  43.497%   3.061%   0.139%   0.212%  36.291%
    7    7.2  0.5  0.5   0.390%  25.215%   1.805%  29.668%  18.005%   0.819%   0.121%  20.759%
    8    8.2  0.5  0.5  54.338%   0.840%   0.833%   0.051%   0.120%   2.635%  36.679%   0.214%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.049%   3.147%   0.692%  11.389%  35.873%   1.634%   0.012%   2.153%
   13    5.2  0.5 -0.5   0.024%   1.572%   0.436%   7.178%  35.305%   1.607%   0.016%   2.739%
   14    6.2  0.5 -0.5  12.427%   0.192%  43.497%   2.644%   0.139%   3.061%  36.291%   0.212%
   15    7.2  0.5 -0.5  25.215%   0.390%  29.668%   1.805%   0.819%  18.005%  20.759%   0.121%
   16    8.2  0.5 -0.5   0.840%  54.338%   0.051%   0.833%   2.635%   0.120%   0.214%  36.679%
   17    1.2  1.5  1.5   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   19    3.2  1.5  1.5   0.000%   0.000%   0.002%   0.032%   0.009%   0.000%   0.000%   0.001%
   20    4.2  1.5  1.5   0.188%   0.003%   0.011%   0.001%   0.000%   0.008%   0.147%   0.001%
   21    5.2  1.5  1.5   0.002%   0.137%   0.000%   0.002%   0.008%   0.000%   0.001%   0.148%
   22    6.2  1.5  1.5   0.002%   0.113%   0.023%   0.382%   0.113%   0.005%   0.000%   0.039%
   23    7.2  1.5  1.5   0.459%   0.007%   0.002%   0.000%   0.000%   0.008%   0.148%   0.001%
   24    8.2  1.5  1.5   0.001%   0.036%   0.027%   0.437%   0.038%   0.002%   0.001%   0.118%
   25    1.2  1.5  0.5   0.000%   0.008%   0.002%   0.029%   0.005%   0.000%   0.000%   0.002%
   26    2.2  1.5  0.5   0.000%   0.017%   0.001%   0.020%   0.001%   0.000%   0.000%   0.006%
   27    3.2  1.5  0.5   0.049%   0.001%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   28    4.2  1.5  0.5   0.004%   0.265%   0.003%   0.049%   0.142%   0.006%   0.000%   0.009%
   29    5.2  1.5  0.5   0.004%   0.000%   0.320%   0.019%   0.006%   0.142%   0.009%   0.000%
   30    6.2  1.5  0.5   0.173%   0.003%   0.164%   0.010%   0.002%   0.038%   0.117%   0.001%
   31    7.2  1.5  0.5   0.005%   0.306%   0.000%   0.006%   0.143%   0.006%   0.000%   0.009%
   32    8.2  1.5  0.5   0.010%   0.000%   0.247%   0.015%   0.005%   0.113%   0.040%   0.000%
   33    1.2  1.5 -0.5   0.008%   0.000%   0.029%   0.002%   0.000%   0.005%   0.002%   0.000%
   34    2.2  1.5 -0.5   0.017%   0.000%   0.020%   0.001%   0.000%   0.001%   0.006%   0.000%
   35    3.2  1.5 -0.5   0.001%   0.049%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   36    4.2  1.5 -0.5   0.265%   0.004%   0.049%   0.003%   0.006%   0.142%   0.009%   0.000%
   37    5.2  1.5 -0.5   0.000%   0.004%   0.019%   0.320%   0.142%   0.006%   0.000%   0.009%
   38    6.2  1.5 -0.5   0.003%   0.173%   0.010%   0.164%   0.038%   0.002%   0.001%   0.117%
   39    7.2  1.5 -0.5   0.306%   0.005%   0.006%   0.000%   0.006%   0.143%   0.009%   0.000%
   40    8.2  1.5 -0.5   0.000%   0.010%   0.015%   0.247%   0.113%   0.005%   0.000%   0.040%
   41    1.2  1.5 -1.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.032%   0.002%   0.000%   0.009%   0.001%   0.000%
   44    4.2  1.5 -1.5   0.003%   0.188%   0.001%   0.011%   0.008%   0.000%   0.001%   0.147%
   45    5.2  1.5 -1.5   0.137%   0.002%   0.002%   0.000%   0.000%   0.008%   0.148%   0.001%
   46    6.2  1.5 -1.5   0.113%   0.002%   0.382%   0.023%   0.005%   0.113%   0.039%   0.000%
   47    7.2  1.5 -1.5   0.007%   0.459%   0.000%   0.002%   0.008%   0.000%   0.001%   0.148%
   48    8.2  1.5 -1.5   0.036%   0.001%   0.437%   0.027%   0.002%   0.038%   0.118%   0.001%


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
              1      24     1275.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      450.38       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4493.41   3649.11    413.13    424.63      3.56      0.77      1.82
 REAL TIME  *      4638.79 SEC
 DISK USED  *       489.47 MB (local),       10.14 GB (total)
 SF USED    *         2.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -99.199189312099

              CI              CI           MULTI         RHF-SCF
    -99.19893541    -99.19419007    -99.01197708    -97.69680077
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
