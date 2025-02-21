
 Working directory              : /wrk/irikura/molpro.NYPy9WeHFf/
 Global scratch directory       : /wrk/irikura/molpro.NYPy9WeHFf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NYPy9WeHFf/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Pb SO-CI
                                                                                 ! valence terms only
                                                                                 ! p-only active space (2/6)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis={
 spdfgh,pb,aug-cc-pwCVQZ-DK3;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 set,dkho=101
 
                                                                                 ! spherical dication orbitals (1S)
 {rhf; wf,charge=2,sym=1,spin=0}
 
 if $DKHO.EQ.0 then
     LSOP = "ECP"
 else
     LSOP = "LS"
 endif
 
 NTRIP=3
 NSING=15
 
                                                                                 ! valence active space
 {multi
     closed,21,19
     occ,21,25
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! core is KLMN except 4f
 core,14,9
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,$LSOP,5201.2,5101.2;print,vls=0,hls=0}                               !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 10-Feb-25          TIME: 10:30:58  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry PB     S AUG-CC-PWCVQZ-DK     selected for orbital group  1
 Even tempered Pb S diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry PB     P AUG-CC-PWCVQZ-DK     selected for orbital group  1
 Even tempered Pb P diffuse               selected for group 1    nprim= 1    centre=  0.005    ratio= 3.000    dratio= 1.000
 Library entry PB     D AUG-CC-PWCVQZ-DK     selected for orbital group  1
 Even tempered Pb D diffuse               selected for group 1    nprim= 1    centre=  0.016    ratio= 3.000    dratio= 1.000
 Library entry PB     F AUG-CC-PWCVQZ-DK     selected for orbital group  1
 Even tempered Pb F diffuse               selected for group 1    nprim= 1    centre=  0.024    ratio= 3.000    dratio= 1.000
 Library entry PB     G AUG-CC-PWCVQZ-DK     selected for orbital group  1
 Library entry PB     H AUG-CC-PWCVQZ-DK     selected for orbital group  1


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

   1  PB     82.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   82
 NUMBER OF PRIMITIVE AOS:         508
 NUMBER OF SYMMETRY AOS:          403
 NUMBER OF CONTRACTIONS:          211   (  105Ag  +  106Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     227.803 MB (compressed) written to integral file ( 12.5%)

     Node minimum: 3.670 MB, node maximum: 23.593 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    7881438.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    7881438      RECORD LENGTH: 524288

 Memory used in sort:       8.44 MW

 SORT1 READ   227724943. AND WROTE     1460417. INTEGRALS IN      5 RECORDS. CPU TIME:     1.09 SEC, REAL TIME:     1.13 SEC
 SORT2 READ    23371044. AND WROTE   126247696. INTEGRALS IN   1104 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.19 SEC

 Node minimum:     7880036.  Node maximum:     7903054. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 1 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7   8 9101112131415 7 8
                                        9101112131415 7 8 9  101112131415 7 8 910  1112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 9101112131415  161718192021

 Eigenvalues of metric

         1 0.584E-07 0.979E-05 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.102E-02
         2 0.128E-04 0.128E-04 0.128E-04 0.280E-03 0.280E-03 0.280E-03 0.707E-02 0.707E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        12.57     12.25
 REAL TIME  *        13.67 SEC
 DISK USED  *        31.47 MB (local),      999.27 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  18  22

 NELEC=   80   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20831.62537618  -20831.62537618     0.00D+00     0.83D+01     0     0       0.04      0.09    start
   2   -20875.86010319     -44.23472702     0.47D-01     0.62D+02     1     0       0.04      0.13    diag
   3   -20880.37260539      -4.51250220     0.10D+00     0.30D+02     2     0       0.04      0.17    diag
   4   -20882.87909312      -2.50648773     0.58D-01     0.32D+02     3     0       0.04      0.21    diag
   5   -20883.75400777      -0.87491465     0.31D-01     0.55D+01     4     0       0.04      0.25    diag
   6   -20883.97644607      -0.22243830     0.13D-01     0.15D+00     5     0       0.04      0.29    diag
   7   -20883.98309541      -0.00664934     0.20D-02     0.62D-01     6     0       0.05      0.34    diag
   8   -20883.98310528      -0.00000986     0.58D-04     0.61D-02     7     0       0.04      0.38    fixocc
   9   -20883.98310558      -0.00000030     0.59D-05     0.12D-03     8     0       0.04      0.42    diag
  10   -20883.98310558      -0.00000000     0.91D-06     0.58D-04     9     0       0.05      0.47    diag/orth
  11   -20883.98310558      -0.00000000     0.36D-06     0.40D-05     9     0       0.04      0.51    diag
  12   -20883.98310558      -0.00000000     0.41D-07     0.65D-06     9     0       0.04      0.55    diag
  13   -20883.98310558       0.00000000     0.36D-08     0.12D-06     0     0       0.04      0.59    diag

 Final occupancy:  21  19

 !RHF STATE 1.1 Energy               -20883.9831055845    
  RHF One-electron energy            -28527.7098371767    
  RHF Two-electron energy            7643.726731592149
  RHF Kinetic energy                  32630.3886099446    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.640016377225

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3254.53183     1  1  s    0.95140    1  2  s   -0.30662    1  3  s   -1.07953    1  4  s   -3.05496
                                    1  5  s    6.92518    1  6  s   -9.03710    1  7  s   -0.72218    1  8  s    1.65837
                                    1 10  s    4.60247    1 11  s    5.58660    1 12  s    1.60956
    2.1     2.00000  -588.34375     1  2  s    1.15556    1  3  s    0.54550    1  4  s    1.53775    1  5  s   -3.44942
                                    1  6  s    4.46673    1  7  s    0.35571    1  8  s   -0.83473    1 10  s   -2.27700
                                    1 11  s   -2.76018    1 12  s   -0.79603
    3.1     2.00000  -144.36822     1  3  s    0.69922    1  4  s   -0.83520    1  5  s    1.82819    1  6  s   -2.32531
                                    1  8  s    0.45306    1 10  s    1.18802    1 11  s    1.43558    1 12  s    0.41497
    4.1     2.00000   -95.12174     1  1  d2+  0.99987
    5.1     2.00000   -95.12174     1  1  d2-  0.99992
    6.1     2.00000   -95.12174     1  1  d1-  0.99226
    7.1     2.00000   -95.12174     1  1  d1+  0.99225
    8.1     2.00000   -95.12174     1  1  d0   0.99992
    9.1     2.00000   -34.60796     1  4  s    1.41408    1  5  s   -0.84841    1  6  s    1.02200    1 10  s   -0.52597
                                    1 11  s   -0.62901
   10.1     2.00000   -17.02551     1  2  d0   0.97516
   11.1     2.00000   -17.02551     1  2  d2-  0.94591    1  2  d2+ -0.32537
   12.1     2.00000   -17.02551     1  2  d2-  0.31716    1  2  d2+  0.92199
   13.1     2.00000   -17.02551     1  2  d1-  0.99084
   14.1     2.00000   -17.02551     1  2  d1+  0.99091
   15.1     2.00000    -6.76046     1  5  s    0.68867    1  6  s    0.33744
   16.1     2.00000    -1.68972     1  3  d0   1.00450
   17.1     2.00000    -1.68972     1  3  d2-  1.00446
   18.1     2.00000    -1.68972     1  3  d2+  1.00447
   19.1     2.00000    -1.68972     1  3  d1+ -0.67965    1  3  d1-  0.73965
   20.1     2.00000    -1.68972     1  3  d1+  0.73966    1  3  d1-  0.67966
   21.1     2.00000    -1.10721     1  5  s   -0.48103    1  6  s    2.00352    1 10  s   -0.32257    1 11  s   -0.60372
                                    1 12  s   -0.33864
    1.2     2.00000  -506.99834     1  1  px   0.99917
    2.2     2.00000  -506.99834     1  1  py   0.99917
    3.2     2.00000  -506.99834     1  1  pz   0.99917
    4.2     2.00000  -120.58819     1  2  px  -0.68482    1  2  py   0.74062
    5.2     2.00000  -120.58819     1  2  px   0.74062    1  2  py   0.68482
    6.2     2.00000  -120.58819     1  2  pz   1.00871
    7.2     2.00000   -26.65064     1  3  px   0.96279
    8.2     2.00000   -26.65064     1  3  py   0.96278
    9.2     2.00000   -26.65064     1  3  pz   0.96450
   10.2     2.00000    -6.44894     1  1  f1-  0.97588
   11.2     2.00000    -6.44894     1  1  f0   0.99234
   12.2     2.00000    -6.44894     1  1  f1+  0.96464
   13.2     2.00000    -6.44894     1  1  f2- -0.31991    1  1  f2+  0.94347
   14.2     2.00000    -6.44894     1  1  f2-  0.94690    1  1  f2+  0.31537
   15.2     2.00000    -6.44894     1  1  f3-  0.97314
   16.2     2.00000    -6.44894     1  1  f3+  0.96288
   17.2     2.00000    -4.45660     1  4  pz   1.01179
   18.2     2.00000    -4.45660     1  4  px   1.01179
   19.2     2.00000    -4.45660     1  4  py   1.01180


 HOMO     21.1    -1.107205 =     -30.1286eV
 LUMO     20.2    -0.476751 =     -12.9731eV
 LUMO-HOMO         0.630454 =      17.1555eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.77       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        13.17      0.60     12.25
 REAL TIME  *        14.31 SEC
 DISK USED  *        33.49 MB (local),        1.01 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  40 (   21   19)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     165 (   84   81)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.226D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.180D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.196D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.263D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.132D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.325D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.153D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.481D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.479D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 2   3 5 6 4 1 2 3 5 6 4   1 1 5 3 6 4 2 1 2 5   3 6 4 1 2 6 4 3 510
                                       13 7141511 812 9 1 2   3 5 6 4 7111310 914  15 812 2 3 5 6 4 113  10 711 91514 812 2 3
                                        5 6 4 1131011 9 712   81415 2 3 5 6 4 1 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.238D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.480D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.481D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.735D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.577D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.600D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.510D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.258D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.175D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.310D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.287D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.295D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.484D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.649D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.252D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.141D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.143D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.278D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.710D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 5   6 410 8 9 7 3 1 2 1   2 3 3 2 1 5 410 8 7   9 6 2 1 3 2 1 3 810
                                        5 4 6 9 7 2 1 3 810   9 7 5 4 6 5 4 7 9 6  10 8 2 1 3 6 810 9 7   5 41820171514161321
                                       121911 1 2 3 9 7 6 5   4 810 9 7 6 810 5 4   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  3903  ( 114 closed/active, 3303 closed/virtual, 0 active/active, 486 active/virtual )
 Total number of variables:    4488
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0 -20884.57331825  -20884.59976000   -0.02644175    0.20523532 0.00004803 0.00000000  0.90E+00      6.90
   2    9   12    0 -20884.60086429  -20884.60101818   -0.00015389    0.01271641 0.00000036 0.00000000  0.80E-01     14.55
   3    7   10    0 -20884.60101893  -20884.60101894   -0.00000001    0.00007761 0.00000000 0.00000000  0.66E-03     21.26
   4    4    4    0 -20884.60101894  -20884.60101894   -0.00000000    0.00000001 0.00000001 0.00000000  0.41E-07     27.16

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.20E-07)
                       Final energy: -20884.60101894
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.7047110348    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.66210853
 One electron energy                        -28580.50324506
 Two electron energy                          7695.79853403
 Virial ratio                                    1.64001351
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.7047110348    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.66210853
 One electron energy                        -28580.50324507
 Two electron energy                          7695.79853403
 Virial ratio                                    1.64001351
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.7047110348    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.66210853
 One electron energy                        -28580.50324507
 Two electron energy                          7695.79853403
 Virial ratio                                    1.64001351
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.6702586572    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.59720485
 One electron energy                        -28579.95238203
 Two electron energy                          7695.28212337
 Virial ratio                                    1.64001373
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.6702586572    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.59720485
 One electron energy                        -28579.95238203
 Two electron energy                          7695.28212337
 Virial ratio                                    1.64001373
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.6702586572    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.59720486
 One electron energy                        -28579.95238203
 Two electron energy                          7695.28212338
 Virial ratio                                    1.64001373
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.6702586572    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.59720486
 One electron energy                        -28579.95238204
 Two electron energy                          7695.28212338
 Virial ratio                                    1.64001373
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.6702586572    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.59720486
 One electron energy                        -28579.95238204
 Two electron energy                          7695.28212338
 Virial ratio                                    1.64001373
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.6205924670    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.41494072
 One electron energy                        -28578.27755579
 Two electron energy                          7693.65696333
 Virial ratio                                    1.64001578
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -20884.5342389736    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.03245276
 One electron energy                        -28559.91659234
 Two electron energy                          7675.38235337
 Virial ratio                                    1.64004025
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -20884.5342389736    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.03245276
 One electron energy                        -28559.91659234
 Two electron energy                          7675.38235336
 Virial ratio                                    1.64004025
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -20884.5342389736    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.03245276
 One electron energy                        -28559.91659233
 Two electron energy                          7675.38235335
 Virial ratio                                    1.64004025
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -20884.5234934617    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.21245495
 One electron energy                        -28561.34292122
 Two electron energy                          7676.81942776
 Virial ratio                                    1.64003639
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -20884.5234934616    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.21245495
 One electron energy                        -28561.34292122
 Two electron energy                          7676.81942776
 Virial ratio                                    1.64003639
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -20884.5234934616    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.21245495
 One electron energy                        -28561.34292124
 Two electron energy                          7676.81942778
 Virial ratio                                    1.64003639
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -20884.5234934616    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.21245495
 One electron energy                        -28561.34292123
 Two electron energy                          7676.81942777
 Virial ratio                                    1.64003639
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -20884.5234934616    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.21245496
 One electron energy                        -28561.34292124
 Two electron energy                          7676.81942778
 Virial ratio                                    1.64003639
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -20884.5121377494    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.40001070
 One electron energy                        -28563.05269460
 Two electron energy                          7678.54055685
 Virial ratio                                    1.64003237
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999997519297
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000002610149
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999912859
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000015635166
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.572776946899
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999971127663
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000434399
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.427218842261
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000742245898
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999260510886
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999996329
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.891513702121
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000882640078
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     3.107630351079
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000069151964
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     3.999930605592
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000002612528
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999997474738
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999866479
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999984262407
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.373093884310
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000041835495
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000002270998
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.626890618577
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999257757810
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.000739489281
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999657
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.112562347695
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000787175498
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     2.886658178589
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     3.999930759523
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     1.000069361273
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999868175
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999915114
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000220662
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000102427
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.054129168792
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999987036842
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999997294603
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.945890539162
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999996292
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999833
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000004014
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.995923950185
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.998330184424
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.005711470332
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     1.000000088513
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     1.000000033136
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 2 4 1 5   3 6 2 4 1 5 3 6 2 4   1 1 5 3 6 2 4 1 3 5   6 2 4 1 3 5 6 2 413
                                       1014151112 8 7 9 1 3   5 6 2 41310151411 8  12 7 9 2 3 5 6 4 113  10151411 812 7 9 2 5
                                        3 6 4 11310151411 8  12 7 9 2 5 3 6 4 1 2   6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 7   9 510 8 6 4 2 1 3 3   1 2 3 2 1 2 1 3 7 9  10 8 5 6 4 2 1 3 7 9
                                        810 5 6 4 2 1 3 7 9   5 810 6 4 7 9 510 8   6 4 2 1 3 9 7 5 810   6 41820171512141613
                                       211911 2 1 3 7 9 5 8  10 6 4 9 7 810 5 6 4   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3254.00125     1  1  s    0.95140    1  2  s   -0.30662    1  3  s   -1.07954    1  4  s   -3.05498
                                    1  5  s    6.92522    1  6  s   -9.03716    1  7  s   -0.72218    1  8  s    1.65837
                                    1 10  s    4.60250    1 11  s    5.58664    1 12  s    1.60957
    2.1     2.00000  -587.81550     1  2  s    1.15556    1  3  s    0.54551    1  4  s    1.53780    1  5  s   -3.44959
                                    1  6  s    4.46700    1  7  s    0.35573    1  8  s   -0.83475    1 10  s   -2.27713
                                    1 11  s   -2.76035    1 12  s   -0.79607
    3.1     2.00000  -143.84087     1  3  s    0.69920    1  4  s   -0.83528    1  5  s    1.82851    1  6  s   -2.32586
                                    1  8  s    0.45310    1 10  s    1.18829    1 11  s    1.43593    1 12  s    0.41507
    4.1     2.00000   -94.59450     1  1  d2+  0.99999
    5.1     2.00000   -94.59450     1  1  d2-  0.99999
    6.1     2.00000   -94.59450     1  1  d1-  0.99999
    7.1     2.00000   -94.59450     1  1  d0   0.99999
    8.1     2.00000   -94.59450     1  1  d1+  0.99999
    9.1     2.00000   -34.08103     1  4  s    1.41428    1  5  s   -0.84930    1  6  s    1.02355    1 10  s   -0.52674
                                    1 11  s   -0.62998
   10.1     2.00000   -16.49867     1  2  d2+  1.00031
   11.1     2.00000   -16.49867     1  2  d2-  1.00031
   12.1     2.00000   -16.49867     1  2  d1-  1.00031
   13.1     2.00000   -16.49867     1  2  d0   1.00031
   14.1     2.00000   -16.49867     1  2  d1+  1.00031
   15.1     2.00000    -6.23498     1  5  s    0.70712    1  6  s    0.29467
   16.1     2.00000    -1.16618     1  3  d2+  0.99982
   17.1     2.00000    -1.16618     1  3  d2-  0.99982
   18.1     2.00000    -1.16618     1  3  d1-  0.99982
   19.1     2.00000    -1.16618     1  3  d0   0.99982
   20.1     2.00000    -1.16618     1  3  d1+  0.99982
   21.1     2.00000    -0.64005     1  6  s    1.14804
    1.2     2.00000  -506.47024     1  1  py   0.99917
    2.2     2.00000  -506.47024     1  1  px   0.99917
    3.2     2.00000  -506.47024     1  1  pz   0.99917
    4.2     2.00000  -120.06130     1  2  py   1.00867
    5.2     2.00000  -120.06130     1  2  px   1.00867
    6.2     2.00000  -120.06130     1  2  pz   1.00867
    7.2     2.00000   -26.12442     1  3  py   0.96512
    8.2     2.00000   -26.12442     1  3  px   0.96512
    9.2     2.00000   -26.12442     1  3  pz   0.96512
   10.2     2.00000    -5.92229     1  1  f3+  0.99993
   11.2     2.00000    -5.92229     1  1  f3-  0.99993
   12.2     2.00000    -5.92229     1  1  f1-  0.99993
   13.2     2.00000    -5.92229     1  1  f2+  0.99993
   14.2     2.00000    -5.92229     1  1  f2-  0.99993
   15.2     2.00000    -5.92229     1  1  f0   0.99993
   16.2     2.00000    -5.92229     1  1  f1+  0.99993
   17.2     2.00000    -3.93166     1  4  py   0.99994
   18.2     2.00000    -3.93166     1  4  px   0.99994
   19.2     2.00000    -3.93166     1  4  pz   0.99994
   20.2     0.49962    -0.10677     1  9  pz   0.38195    1 10  pz   0.56634
   21.2     0.49962    -0.10677     1  9  px   0.38195    1 10  px   0.56634
   22.2     0.49962    -0.10677     1  9  py   0.38195    1 10  py   0.56634
   23.2     0.16705     0.01617     1 12  pz   0.83494    1 13  pz   0.37747
   24.2     0.16705     0.01617     1 12  py   0.83494    1 13  py   0.37747
   25.2     0.16705     0.01617     1 12  px   0.83494    1 13  px   0.37747
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 0aa000        -0.00036225     -0.00029069      0.99773482
 a0a000        -0.00157146      0.99773363      0.00029012
 aa0000         0.99773361      0.00157135      0.00036271
 
 Energy:   -20884.70471103 -20884.70471103 -20884.70471103
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 200000        -0.00055340      0.80564655     -0.00295050     -0.00056280     -0.09434671      0.56224106     -0.00000000
 002000         0.00033338     -0.32111638      0.00142062      0.00005546      0.74488870      0.56224110     -0.00000000
 0ba000        -0.00030033     -0.00050986      0.00019680     -0.70248301     -0.00016774     -0.00000000     -0.00000000
 0ab000         0.00030033      0.00050986     -0.00019680      0.70248301      0.00016774      0.00000000      0.00000000
 ab0000         0.70248137      0.00047479      0.00154346     -0.00030022     -0.00011265      0.00000000     -0.00000001
 ba0000        -0.70248137     -0.00047479     -0.00154346      0.00030022      0.00011265     -0.00000000      0.00000001
 a0b000        -0.00154512      0.00254332      0.70247691      0.00019567     -0.00024265     -0.00000000      0.00000010
 b0a000         0.00154512     -0.00254332     -0.70247691     -0.00019567      0.00024265      0.00000000     -0.00000010
 020000         0.00022002     -0.48453022      0.00152988      0.00050734     -0.65054202      0.56224115     -0.00000000
 a00b00        -0.00004483      0.06526666     -0.00023902     -0.00004559     -0.00764317      0.09253970     -0.00000000
 b00a00         0.00004483     -0.06526666      0.00023902      0.00004559      0.00764317     -0.09253970      0.00000000
 0b000a        -0.00001782      0.03925232     -0.00012394     -0.00004110      0.05270111     -0.09253945     -0.00000000
 0a000b         0.00001782     -0.03925232      0.00012394      0.00004110     -0.05270111      0.09253945      0.00000000
 0b00a0        -0.00002433     -0.00004130      0.00001594     -0.05690908     -0.00001359     -0.00000000      0.00003045
 0a00b0         0.00002433      0.00004130     -0.00001594      0.05690908      0.00001359      0.00000000     -0.00003045
 00b00a        -0.00002433     -0.00004130      0.00001594     -0.05690891     -0.00001359     -0.00000000     -0.00003045
 00a00b         0.00002433      0.00004130     -0.00001594      0.05690891      0.00001359      0.00000000      0.00003045
 a0000b         0.05690878      0.00003846      0.00012504     -0.00002432     -0.00000913      0.00000000     -0.01362206
 b0000a        -0.05690878     -0.00003846     -0.00012504      0.00002432      0.00000913     -0.00000000      0.01362206
 a000b0        -0.00012517      0.00020604      0.05690859      0.00001585     -0.00001966      0.00000000      0.49981441
 b000a0         0.00012517     -0.00020604     -0.05690859     -0.00001585      0.00001966     -0.00000000     -0.49981441
 0a0b00         0.05690909      0.00003846      0.00012504     -0.00002432     -0.00000913     -0.00000000      0.01362206
 0b0a00        -0.05690909     -0.00003846     -0.00012504      0.00002432      0.00000913      0.00000000     -0.01362206
 00ba00         0.00012517     -0.00020604     -0.05690873     -0.00001585      0.00001966      0.00000000      0.49981440
 00ab00        -0.00012517      0.00020604      0.05690873      0.00001585     -0.00001966     -0.00000000     -0.49981440
 00a0b0         0.00002701     -0.02601406      0.00011509      0.00000449      0.06034442      0.09253959      0.00000000
 00b0a0        -0.00002701      0.02601406     -0.00011509     -0.00000449     -0.06034442     -0.09253959     -0.00000000
 
 Energy:   -20884.67025866 -20884.67025866 -20884.67025866 -20884.67025866 -20884.67025866 -20884.62059247 -20884.53423897

 State:              8               9              10              11              12              13              14
 200000        -0.00000000     -0.00000000      0.00297250     -0.00190249     -0.09305094     -0.00000490     -0.00000887
 002000        -0.00000000      0.00000000      0.07911488      0.00100567      0.04909904      0.00000570     -0.00000122
 0ba000         0.00000000      0.00000012     -0.00000181      0.08062525     -0.00164850      0.00001350      0.00000755
 0ab000        -0.00000000     -0.00000012      0.00000181     -0.08062525      0.00164850     -0.00001350     -0.00000755
 ab0000         0.00000022     -0.00000000      0.00000309      0.00001363      0.00000410     -0.08064127     -0.00038714
 ba0000        -0.00000022      0.00000000     -0.00000309     -0.00001363     -0.00000410      0.08064127      0.00038714
 a0b000         0.00000000      0.00000000     -0.00000592      0.00000764      0.00000732      0.00038714     -0.08064139
 b0a000        -0.00000000     -0.00000000      0.00000592     -0.00000764     -0.00000732     -0.00038714      0.08064139
 020000         0.00000000     -0.00000000     -0.08208713      0.00089681      0.04395155     -0.00000080      0.00001009
 a00b00         0.00000000      0.00000000     -0.01830073      0.01171303      0.57288518      0.00003015      0.00005461
 b00a00        -0.00000000     -0.00000000      0.01830073     -0.01171303     -0.57288518     -0.00003015     -0.00005461
 0b000a         0.00000000     -0.00000000     -0.50538720      0.00552141      0.27059725     -0.00000494      0.00006215
 0a000b        -0.00000000      0.00000000      0.50538720     -0.00552141     -0.27059725      0.00000494     -0.00006215
 0b00a0        -0.00000646     -0.50000000      0.00001113     -0.49638609      0.01014932     -0.00008314     -0.00004650
 0a00b0         0.00000646      0.50000000     -0.00001113      0.49638609     -0.01014932      0.00008314      0.00004650
 00b00a         0.00000646      0.50000000      0.00001113     -0.49638612      0.01014932     -0.00008314     -0.00004650
 00a00b        -0.00000646     -0.50000000     -0.00001113      0.49638612     -0.01014932      0.00008314      0.00004650
 a0000b         0.49981441     -0.00000729     -0.00001900     -0.00008389     -0.00002525      0.49648415      0.00238348
 b0000a        -0.49981441      0.00000729      0.00001900      0.00008389      0.00002525     -0.49648415     -0.00238348
 a000b0         0.01362206      0.00003026      0.00003643     -0.00004703     -0.00004508     -0.00238349      0.49648413
 b000a0        -0.01362206     -0.00003026     -0.00003643      0.00004703      0.00004508      0.00238349     -0.49648413
 0a0b00        -0.49981440      0.00000729     -0.00001900     -0.00008389     -0.00002525      0.49648410      0.00238348
 0b0a00         0.49981440     -0.00000729      0.00001900      0.00008389      0.00002525     -0.49648410     -0.00238348
 00ba00         0.01362206      0.00003026     -0.00003643      0.00004703      0.00004508      0.00238348     -0.49648411
 00ab00        -0.01362206     -0.00003026      0.00003643     -0.00004703     -0.00004508     -0.00238348      0.49648411
 00a0b0         0.00000000     -0.00000000     -0.48708646     -0.00619162     -0.30228796     -0.00003509      0.00000754
 00b0a0        -0.00000000      0.00000000      0.48708646      0.00619162      0.30228796      0.00003509     -0.00000754
 
 Energy:   -20884.53423897 -20884.53423897 -20884.52349346 -20884.52349346 -20884.52349346 -20884.52349346 -20884.52349346

 State:             15
 200000        -0.13113270
 002000        -0.13113254
 0ba000         0.00000000
 0ab000        -0.00000000
 ab0000        -0.00000000
 ba0000         0.00000000
 a0b000        -0.00000000
 b0a000         0.00000000
 020000        -0.13113236
 a00b00         0.39732590
 b00a00        -0.39732590
 0b000a        -0.39732595
 0a000b         0.39732595
 0b00a0        -0.00000000
 0a00b0         0.00000000
 00b00a        -0.00000000
 00a00b         0.00000000
 a0000b         0.00000000
 b0000a        -0.00000000
 a000b0         0.00000000
 b000a0        -0.00000000
 0a0b00         0.00000000
 0b0a00        -0.00000000
 00ba00        -0.00000000
 00ab00         0.00000000
 00a0b0         0.39732592
 00b0a0        -0.39732592
 
 Energy:   -20884.51213775
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      307.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.73       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        41.55     28.37      0.60     12.25
 REAL TIME  *        48.16 SEC
 DISK USED  *       309.61 MB (local),        5.32 GB (total)
 SF USED    *       660.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.70471   2.0
    -20884.70471   2.0
    -20884.70471   2.0
    -20884.67026   6.0
    -20884.67026   6.0
    -20884.67026   6.0
    -20884.67026   6.0
    -20884.67026   6.0
    -20884.62059   0.0
    -20884.53424   2.0
    -20884.53424   2.0
    -20884.53424   2.0
    -20884.52349   6.0
    -20884.52349   6.0
    -20884.52349   6.0
    -20884.52349   6.0
    -20884.52349   6.0
    -20884.51214   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 82
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       15 conf       15 CSFs
 N elec internal:    14380 conf    48210 CSFs
 N-1 el internal:     8013 conf    39123 CSFs
 N-2 el internal:     2398 conf    19432 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  17 (   7  10 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     165 (  84  81 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.71 sec, npass=  1  Memory used:   7.03 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.70471103
     2    -20884.70471103
     3    -20884.70471103

 Number of blocks in overlap matrix:   970   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:    1072
 Number of N-1 electron functions:   39123

 Number of internal configurations:                24480
 Number of singly external configurations:       3226734
 Number of doubly external configurations:       7300569
 Total number of contracted configurations:     10551783
 Total number of uncontracted configurations:  135239799

 Diagonal Coupling coefficients finished.               Storage:  16186932 words, CPU-Time:      4.45 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3302922 words, CPU-time:      2.99 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.70471103     0.00000000    -1.30550479  0.48D-01  0.13D+00    11.60
    1     2     2     1.00000000     0.00000000-20884.70471103     0.00000000    -1.30537650  0.47D-01  0.13D+00    11.60
    1     3     3     1.00000000     0.00000000-20884.70471103     0.00000000    -1.30521918  0.47D-01  0.13D+00    11.60
    2     1     1     1.10326820    -0.98772128-20885.69243232    -0.98772128    -0.03395644  0.44D-02  0.25D-02   308.07
    2     2     2     1.10336034    -0.98760217-20885.69231321    -0.98760217    -0.03408916  0.45D-02  0.25D-02   308.07
    2     3     3     1.10344847    -0.98749128-20885.69220232    -0.98749128    -0.03420992  0.46D-02  0.25D-02   308.07
    3     1     1     1.08684914    -1.01954790-20885.72425893    -0.03182662    -0.00050368  0.52D-04  0.36D-04   602.31
    3     2     2     1.08684467    -1.01954569-20885.72425673    -0.03194352    -0.00050612  0.52D-04  0.36D-04   602.31
    3     3     3     1.08683994    -1.01954375-20885.72425478    -0.03205246    -0.00050824  0.52D-04  0.36D-04   602.31
    4     1     1     1.08676638    -1.01993290-20885.72464394    -0.00038501    -0.00019059  0.44D-05  0.72D-05   896.11
    4     2     2     1.08676805    -1.01993289-20885.72464392    -0.00038720    -0.00019041  0.44D-05  0.72D-05   896.11
    4     3     3     1.08676958    -1.01993285-20885.72464389    -0.00038911    -0.00019026  0.45D-05  0.72D-05   896.11
    5     1     1     1.08680719    -1.02000628-20885.72471731    -0.00007337    -0.00000535  0.10D-05  0.30D-06  1189.19
    5     2     2     1.08680674    -1.02000626-20885.72471730    -0.00007337    -0.00000537  0.10D-05  0.31D-06  1189.19
    5     3     3     1.08680623    -1.02000625-20885.72471729    -0.00007340    -0.00000538  0.10D-05  0.31D-06  1189.19
    6     1     1     1.08673688    -1.02001116-20885.72472220    -0.00000489    -0.00000078  0.40D-07  0.27D-07  1483.40
    6     2     2     1.08673705    -1.02001116-20885.72472220    -0.00000490    -0.00000078  0.40D-07  0.27D-07  1483.40
    6     3     3     1.08673717    -1.02001116-20885.72472220    -0.00000491    -0.00000078  0.40D-07  0.27D-07  1483.40
    7     1     1     1.08673808    -1.02001148-20885.72472251    -0.00000031    -0.00000012  0.13D-07  0.83D-08  1777.08
    7     2     2     1.08673800    -1.02001148-20885.72472251    -0.00000031    -0.00000012  0.13D-07  0.83D-08  1777.08
    7     3     3     1.08673812    -1.02001148-20885.72472251    -0.00000031    -0.00000012  0.13D-07  0.83D-08  1777.08
    8     1     1     1.08674768    -1.02001156-20885.72472260    -0.00000009    -0.00000002  0.11D-08  0.76D-09  2070.08
    8     2     2     1.08674767    -1.02001156-20885.72472260    -0.00000009    -0.00000002  0.11D-08  0.76D-09  2070.08
    8     3     3     1.08674770    -1.02001156-20885.72472260    -0.00000009    -0.00000002  0.11D-08  0.76D-09  2070.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.5%  73.7%
 P   0.3%  14.9%   2.6%

 Initialization:   0.5%
 Other:            6.7%

 Total CPU:     2070.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0000          -0.0000000   0.9566182  -0.0000000
 222222222222222220//000          -0.0000000   0.0000000   0.9566182
 22222222222222222/0/000           0.9566182   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958528   -0.000000
 2           0.958528    0.000000    0.000000
 3          -0.000000    0.000000    0.958528

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958528   -0.000000    0.000000
 2          -0.000000    0.958528    0.000000
 3           0.000000    0.000000    0.958528


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95852752 (fixed)   0.95853552 (relaxed)   0.95852752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00152571   -0.00349205   -0.88966586
 Singles      0.01277925   -0.05325038   -0.06090119
 Pairs        0.07410079    0.00000000   -0.06944452
 Total        1.08840574   -0.05674243   -1.02001156
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70471103
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.97149517
 One electron energy               -28576.57241005
 Two electron energy                 7690.84768745
 Virial quotient                       -0.64005832
 Correlation energy                    -1.02001156
 !MRCI STATE 1.1 Energy              -20885.7247225997    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81489748 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81487895 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81489748 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81672670 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670622 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81672670 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95852753 (fixed)   0.95853553 (relaxed)   0.95852753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00152571   -0.00349205   -0.88966588
 Singles      0.01277922   -0.05325036   -0.06090116
 Pairs        0.07410080   -0.00000000   -0.06944452
 Total        1.08840573   -0.05674241   -1.02001156
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70471103
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.97149153
 One electron energy               -28576.57240522
 Two electron energy                 7690.84768262
 Virial quotient                       -0.64005832
 Correlation energy                    -1.02001156
 !MRCI STATE 2.1 Energy              -20885.7247225996    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81489746 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81487894 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81489746 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81672669 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670621 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81672669 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95852752 (fixed)   0.95853552 (relaxed)   0.95852752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00152571   -0.00349205   -0.00463824
 Singles      0.01277927   -0.05325038   -0.06090120
 Pairs        0.07410078   -0.96326913   -0.95447212
 Total        1.08840575   -1.02001156   -1.02001156
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70471103
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.97150004
 One electron energy               -28576.57241621
 Two electron energy                 7690.84769361
 Virial quotient                       -0.64005832
 Correlation energy                    -1.02001156
 !MRCI STATE 3.1 Energy              -20885.7247225983    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81489749 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81487896 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81489749 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81672672 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670624 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81672672 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      307.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      247.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2131.62   2090.06     28.37      0.60     12.25
 REAL TIME  *      2166.40 SEC
 DISK USED  *       555.37 MB (local),        9.16 GB (total)
 SF USED    *         2.69 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.81489748  AU                              
 SETTING HLSDIAG(2)     =    -20885.81489746  AU                              
 SETTING HLSDIAG(3)     =    -20885.81489749  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 82
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       21 conf       21 CSFs
 N elec internal:    14641 conf    31556 CSFs
 N-1 el internal:     8013 conf    23568 CSFs
 N-2 el internal:     3316 conf    12649 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  17 (   7  10 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     165 (  84  81 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.67025866
     2    -20884.67025866
     3    -20884.67025866
     4    -20884.67025866
     5    -20884.67025866
     6    -20884.62059247
     7    -20884.53423897
     8    -20884.53423897
     9    -20884.53423897
    10    -20884.52349346
    11    -20884.52349346
    12    -20884.52349346
    13    -20884.52349346
    14    -20884.52349346
    15    -20884.51213775

 Number of blocks in overlap matrix:  4438   Smallest eigenvalue:  0.92D+00
 Number of N-2 electron functions:    4540
 Number of N-1 electron functions:   23568

 Number of internal configurations:                16366
 Number of singly external configurations:       1943364
 Number of doubly external configurations:      30921882
 Total number of contracted configurations:     32881612
 Total number of uncontracted configurations:   87979486

 Diagonal Coupling coefficients finished.               Storage:  22416904 words, CPU-Time:     63.75 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5011049 words, CPU-time:     12.63 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.67025866     0.00000000    -1.31688971  0.56D-01  0.14D+00    88.09
    1     2     2     1.00000000     0.00000000-20884.67025866     0.00000000    -1.31596575  0.55D-01  0.14D+00    88.09
    1     3     3     1.00000000     0.00000000-20884.67025866     0.00000000    -1.31686794  0.56D-01  0.14D+00    88.09
    1     4     4     1.00000000     0.00000000-20884.67025866     0.00000000    -1.31660168  0.56D-01  0.14D+00    88.09
    1     5     5     1.00000000     0.00000000-20884.67025866     0.00000000    -1.31586854  0.55D-01  0.14D+00    88.09
    1     6     6     1.00000000     0.00000000-20884.62059247     0.00000000    -1.31690939  0.39D-01  0.16D+00    88.09
    1     7     7     1.00000000     0.00000000-20884.53423897    -0.00000000    -1.26454040  0.44D-01  0.12D+00    88.09
    1     8     8     1.00000000     0.00000000-20884.53423897    -0.00000000    -1.26452654  0.44D-01  0.12D+00    88.09
    1     9     9     1.00000000     0.00000000-20884.53423897    -0.00000000    -1.26449472  0.44D-01  0.12D+00    88.09
    1    10    10     1.00000000     0.00000000-20884.52349346     0.00000000    -1.26940458  0.43D-01  0.12D+00    88.09
    1    11    11     1.00000000     0.00000000-20884.52349346    -0.00000000    -1.26962801  0.44D-01  0.12D+00    88.09
    1    12    12     1.00000000     0.00000000-20884.52349346     0.00000000    -1.26943847  0.43D-01  0.12D+00    88.09
    1    13    13     1.00000000     0.00000000-20884.52349346     0.00000000    -1.26971035  0.44D-01  0.12D+00    88.09
    1    14    14     1.00000000     0.00000000-20884.52349346     0.00000000    -1.26968963  0.44D-01  0.12D+00    88.09
    1    15    15     1.00000000     0.00000000-20884.51213775     0.00000000    -1.27696833  0.48D-01  0.13D+00    88.09
    2     1     1     1.10918212    -0.99031794-20885.66057659    -0.99031794    -0.03681857  0.52D-02  0.30D-02  1613.96
    2     2     2     1.10925109    -0.99016028-20885.66041893    -0.99016028    -0.03701364  0.53D-02  0.30D-02  1613.96
    2     3     3     1.10952736    -0.98985618-20885.66011484    -0.98985618    -0.03733986  0.54D-02  0.30D-02  1613.96
    2     4     4     1.10969150    -0.98964025-20885.65989890    -0.98964025    -0.03758673  0.55D-02  0.31D-02  1613.96
    2     5     5     1.10968935    -0.98961526-20885.65987392    -0.98961526    -0.03762142  0.55D-02  0.31D-02  1613.96
    2     6     6     1.11012709    -0.99290580-20885.61349827    -0.99290580    -0.03930865  0.49D-02  0.47D-02  1613.96
    2     7     7     1.09691283    -0.98162917-20885.51586814    -0.98162917    -0.02831868  0.32D-02  0.18D-02  1613.96
    2     8     8     1.09693646    -0.98159861-20885.51583759    -0.98159861    -0.02835279  0.33D-02  0.18D-02  1613.96
    2     9     9     1.09693853    -0.98159474-20885.51583371    -0.98159474    -0.02835685  0.33D-02  0.18D-02  1613.96
    2    10    10     1.09759778    -0.98239371-20885.50588717    -0.98239371    -0.02926713  0.34D-02  0.20D-02  1613.96
    2    11    11     1.09761703    -0.98235880-20885.50585226    -0.98235880    -0.02931053  0.34D-02  0.20D-02  1613.96
    2    12    12     1.09778227    -0.98220840-20885.50570186    -0.98220840    -0.02947645  0.35D-02  0.20D-02  1613.96
    2    13    13     1.09782309    -0.98215998-20885.50565344    -0.98215998    -0.02953197  0.36D-02  0.21D-02  1613.96
    2    14    14     1.09782368    -0.98215294-20885.50564640    -0.98215294    -0.02954226  0.36D-02  0.20D-02  1613.96
    2    15    15     1.10163339    -0.98169334-20885.49383109    -0.98169334    -0.03270030  0.51D-02  0.25D-02  1613.96
    3     1     1     1.08974674    -1.02473195-20885.69499061    -0.03441402    -0.00065022  0.71D-04  0.62D-04  3145.22
    3     2     2     1.08974822    -1.02472637-20885.69498503    -0.03456609    -0.00065589  0.71D-04  0.63D-04  3145.22
    3     3     3     1.08975512    -1.02472145-20885.69498011    -0.03486527    -0.00066195  0.72D-04  0.64D-04  3145.22
    3     4     4     1.08975552    -1.02471478-20885.69497344    -0.03507454    -0.00066885  0.73D-04  0.65D-04  3145.22
    3     5     5     1.08975645    -1.02471348-20885.69497214    -0.03509821    -0.00067024  0.73D-04  0.65D-04  3145.22
    3     6     6     1.08967738    -1.02958764-20885.65018010    -0.03668184    -0.00084648  0.63D-04  0.11D-03  3145.22
    3     7     7     1.08463058    -1.00821476-20885.54245373    -0.02658559    -0.00045481  0.51D-04  0.26D-04  3145.22
    3     8     8     1.08462998    -1.00821415-20885.54245312    -0.02661553    -0.00045543  0.51D-04  0.26D-04  3145.22
    3     9     9     1.08462956    -1.00821415-20885.54245312    -0.02661941    -0.00045545  0.51D-04  0.26D-04  3145.22
    3    10    10     1.08483482    -1.00976441-20885.53325788    -0.02737070    -0.00047081  0.41D-04  0.35D-04  3145.22
    3    11    11     1.08483519    -1.00976347-20885.53325693    -0.02740467    -0.00047181  0.41D-04  0.35D-04  3145.22
    3    12    12     1.08484168    -1.00975842-20885.53325188    -0.02755001    -0.00047743  0.42D-04  0.36D-04  3145.22
    3    13    13     1.08484147    -1.00975718-20885.53325064    -0.02759719    -0.00047874  0.42D-04  0.36D-04  3145.22
    3    14    14     1.08484152    -1.00975697-20885.53325043    -0.02760403    -0.00047896  0.42D-04  0.36D-04  3145.22
    3    15    15     1.08545992    -1.01219946-20885.52433721    -0.03050612    -0.00062023  0.62D-04  0.64D-04  3145.22
    4     1     1     1.08936836    -1.02526709-20885.69552575    -0.00053514    -0.00022499  0.59D-05  0.90D-05  4679.66
    4     2     2     1.08936817    -1.02526705-20885.69552570    -0.00054068    -0.00022505  0.59D-05  0.90D-05  4679.66
    4     3     3     1.08936909    -1.02526702-20885.69552568    -0.00054557    -0.00022480  0.59D-05  0.90D-05  4679.66
    4     4     4     1.08936965    -1.02526660-20885.69552525    -0.00055182    -0.00022529  0.60D-05  0.90D-05  4679.66
    4     5     5     1.08936962    -1.02526655-20885.69552521    -0.00055307    -0.00022519  0.60D-05  0.90D-05  4679.66
    4     6     6     1.08919671    -1.03019351-20885.65078598    -0.00060587    -0.00036846  0.88D-05  0.22D-04  4679.66
    4     7     7     1.08450291    -1.00854335-20885.54278232    -0.00032859    -0.00017907  0.57D-05  0.68D-05  4679.66
    4     8     8     1.08450250    -1.00854333-20885.54278231    -0.00032919    -0.00017920  0.57D-05  0.68D-05  4679.66
    4     9     9     1.08450267    -1.00854333-20885.54278230    -0.00032918    -0.00017919  0.57D-05  0.68D-05  4679.66
    4    10    10     1.08474634    -1.01010774-20885.53360120    -0.00034333    -0.00017781  0.38D-05  0.75D-05  4679.66
    4    11    11     1.08474641    -1.01010774-20885.53360120    -0.00034427    -0.00017779  0.38D-05  0.75D-05  4679.66
    4    12    12     1.08474811    -1.01010763-20885.53360110    -0.00034922    -0.00017851  0.38D-05  0.76D-05  4679.66
    4    13    13     1.08474791    -1.01010763-20885.53360109    -0.00035045    -0.00017865  0.38D-05  0.76D-05  4679.66
    4    14    14     1.08474786    -1.01010761-20885.53360107    -0.00035064    -0.00017867  0.38D-05  0.76D-05  4679.66
    4    15    15     1.08523279    -1.01266956-20885.52480731    -0.00047010    -0.00023893  0.73D-05  0.11D-04  4679.66
    5     1     1     1.08933700    -1.02535031-20885.69560897    -0.00008322    -0.00000925  0.18D-05  0.71D-06  6213.98
    5     2     2     1.08933651    -1.02535028-20885.69560894    -0.00008323    -0.00000933  0.18D-05  0.73D-06  6213.98
    5     3     3     1.08933732    -1.02535024-20885.69560890    -0.00008322    -0.00000932  0.18D-05  0.72D-06  6213.98
    5     4     4     1.08933628    -1.02535021-20885.69560887    -0.00008362    -0.00000940  0.18D-05  0.73D-06  6213.98
    5     5     5     1.08933635    -1.02535020-20885.69560886    -0.00008365    -0.00000941  0.18D-05  0.74D-06  6213.98
    5     6     6     1.08914976    -1.03034408-20885.65093655    -0.00015057    -0.00001211  0.23D-05  0.15D-05  6213.98
    5     7     7     1.08451385    -1.00861596-20885.54285493    -0.00007261    -0.00000669  0.14D-05  0.41D-06  6213.98
    5     8     8     1.08451377    -1.00861596-20885.54285493    -0.00007262    -0.00000669  0.14D-05  0.41D-06  6213.98
    5     9     9     1.08451384    -1.00861595-20885.54285492    -0.00007262    -0.00000670  0.14D-05  0.41D-06  6213.98
    5    10    10     1.08477613    -1.01017851-20885.53367197    -0.00007077    -0.00000628  0.11D-05  0.48D-06  6213.98
    5    11    11     1.08477618    -1.01017850-20885.53367196    -0.00007076    -0.00000629  0.11D-05  0.48D-06  6213.98
    5    12    12     1.08477676    -1.01017843-20885.53367189    -0.00007080    -0.00000638  0.12D-05  0.49D-06  6213.98
    5    13    13     1.08477669    -1.01017842-20885.53367188    -0.00007079    -0.00000639  0.12D-05  0.49D-06  6213.98
    5    14    14     1.08477671    -1.01017842-20885.53367188    -0.00007081    -0.00000640  0.12D-05  0.49D-06  6213.98
    5    15    15     1.08524539    -1.01276322-20885.52490097    -0.00009366    -0.00001024  0.25D-05  0.84D-06  6213.98
    6     1     1     1.08920724    -1.02535917-20885.69561783    -0.00000886    -0.00000106  0.61D-07  0.57D-07  7746.49
    6     2     2     1.08920725    -1.02535917-20885.69561783    -0.00000889    -0.00000106  0.61D-07  0.57D-07  7746.49
    6     3     3     1.08920747    -1.02535917-20885.69561783    -0.00000893    -0.00000106  0.61D-07  0.56D-07  7746.49
    6     4     4     1.08920664    -1.02535916-20885.69561782    -0.00000895    -0.00000108  0.63D-07  0.56D-07  7746.49
    6     5     5     1.08920678    -1.02535916-20885.69561782    -0.00000896    -0.00000108  0.62D-07  0.56D-07  7746.49
    6     6     6     1.08900619    -1.03035557-20885.65094804    -0.00001149    -0.00000207  0.72D-07  0.13D-06  7746.49
    6     7     7     1.08444129    -1.00862207-20885.54286104    -0.00000611    -0.00000101  0.89D-07  0.39D-07  7746.49
    6     8     8     1.08444130    -1.00862207-20885.54286104    -0.00000611    -0.00000101  0.89D-07  0.39D-07  7746.49
    6     9     9     1.08444134    -1.00862207-20885.54286104    -0.00000612    -0.00000101  0.89D-07  0.39D-07  7746.49
    6    10    10     1.08471985    -1.01018418-20885.53367764    -0.00000567    -0.00000087  0.48D-07  0.43D-07  7746.49
    6    11    11     1.08471947    -1.01018418-20885.53367764    -0.00000568    -0.00000088  0.48D-07  0.43D-07  7746.49
    6    12    12     1.08471984    -1.01018418-20885.53367764    -0.00000575    -0.00000087  0.48D-07  0.43D-07  7746.49
    6    13    13     1.08471948    -1.01018418-20885.53367764    -0.00000576    -0.00000088  0.48D-07  0.43D-07  7746.49
    6    14    14     1.08471989    -1.01018418-20885.53367764    -0.00000576    -0.00000087  0.48D-07  0.43D-07  7746.49
    6    15    15     1.08517279    -1.01277271-20885.52491046    -0.00000949    -0.00000137  0.96D-07  0.83D-07  7746.49
    7     1     1     1.08920757    -1.02535963-20885.69561829    -0.00000046    -0.00000023  0.20D-07  0.18D-07  9281.16
    7     2     2     1.08920758    -1.02535963-20885.69561829    -0.00000046    -0.00000023  0.20D-07  0.18D-07  9281.16
    7     3     3     1.08920764    -1.02535963-20885.69561829    -0.00000046    -0.00000023  0.20D-07  0.18D-07  9281.16
    7     4     4     1.08920704    -1.02535963-20885.69561828    -0.00000047    -0.00000023  0.21D-07  0.18D-07  9281.16
    7     5     5     1.08920707    -1.02535963-20885.69561828    -0.00000046    -0.00000023  0.21D-07  0.18D-07  9281.16
    7     6     6     1.08900146    -1.03035637-20885.65094884    -0.00000080    -0.00000033  0.25D-07  0.43D-07  9281.16
    7     7     7     1.08443768    -1.00862250-20885.54286148    -0.00000043    -0.00000021  0.32D-07  0.12D-07  9281.16
    7     8     8     1.08443768    -1.00862250-20885.54286148    -0.00000043    -0.00000021  0.32D-07  0.12D-07  9281.16
    7     9     9     1.08443771    -1.00862250-20885.54286148    -0.00000043    -0.00000021  0.32D-07  0.12D-07  9281.16
    7    10    10     1.08471888    -1.01018455-20885.53367801    -0.00000037    -0.00000016  0.17D-07  0.13D-07  9281.16
    7    11    11     1.08471888    -1.01018455-20885.53367801    -0.00000037    -0.00000016  0.17D-07  0.13D-07  9281.16
    7    12    12     1.08471918    -1.01018455-20885.53367801    -0.00000037    -0.00000017  0.17D-07  0.13D-07  9281.16
    7    13    13     1.08471919    -1.01018455-20885.53367801    -0.00000037    -0.00000017  0.17D-07  0.13D-07  9281.16
    7    14    14     1.08471920    -1.01018455-20885.53367801    -0.00000037    -0.00000017  0.17D-07  0.13D-07  9281.16
    7    15    15     1.08517209    -1.01277330-20885.52491105    -0.00000059    -0.00000031  0.32D-07  0.28D-07  9281.16
    8     1     1     1.08921575    -1.02535979-20885.69561845    -0.00000016    -0.00000003  0.23D-08  0.13D-08 10815.39
    8     2     2     1.08921576    -1.02535979-20885.69561845    -0.00000016    -0.00000003  0.23D-08  0.13D-08 10815.39
    8     3     3     1.08921575    -1.02535979-20885.69561845    -0.00000016    -0.00000003  0.24D-08  0.13D-08 10815.39
    8     4     4     1.08921576    -1.02535979-20885.69561845    -0.00000016    -0.00000003  0.23D-08  0.13D-08 10815.39
    8     5     5     1.08921574    -1.02535979-20885.69561845    -0.00000016    -0.00000003  0.24D-08  0.13D-08 10815.39
    8     6     6     1.08901101    -1.03035662-20885.65094909    -0.00000025    -0.00000006  0.36D-08  0.34D-08 10815.39
    8     7     7     1.08444074    -1.00862266-20885.54286163    -0.00000015    -0.00000003  0.31D-08  0.14D-08 10815.39
    8     8     8     1.08444075    -1.00862266-20885.54286163    -0.00000015    -0.00000003  0.31D-08  0.14D-08 10815.39
    8     9     9     1.08444075    -1.00862266-20885.54286163    -0.00000015    -0.00000003  0.31D-08  0.14D-08 10815.39
    8    10    10     1.08472437    -1.01018467-20885.53367813    -0.00000012    -0.00000003  0.16D-08  0.13D-08 10815.39
    8    11    11     1.08472438    -1.01018467-20885.53367813    -0.00000012    -0.00000003  0.16D-08  0.13D-08 10815.39
    8    12    12     1.08472432    -1.01018467-20885.53367813    -0.00000012    -0.00000003  0.16D-08  0.13D-08 10815.39
    8    13    13     1.08472432    -1.01018467-20885.53367813    -0.00000012    -0.00000003  0.16D-08  0.13D-08 10815.39
    8    14    14     1.08472438    -1.01018467-20885.53367813    -0.00000012    -0.00000003  0.16D-08  0.13D-08 10815.39
    8    15    15     1.08517728    -1.01277351-20885.52491126    -0.00000022    -0.00000004  0.45D-08  0.22D-08 10815.39


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.3%  39.7%
 P   0.5%  16.5%  14.3%

 Initialization:   0.7%
 Other:           27.4%

 Total CPU:    10815.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\000           0.0000000   0.0000000   0.0000000   0.9543663   0.0000000  -0.0000000  -0.0000000   0.0000000
                                  -0.0000002  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0745393  -0.0000000
 22222222222222222/\0000           0.0000000   0.9543663  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000003   0.0000000
                                   0.0000000  -0.0000000  -0.0745395   0.0000000   0.0000000   0.0000000  -0.0000000
 22222222222222222/0\000           0.9543663  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001
                                   0.0000000  -0.0745396  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 22222222222222222/00\00          -0.0000000   0.0000000   0.0609942   0.0000000  -0.0055147   0.0842807  -0.0000000   0.0000000
                                   0.0000000   0.0000000  -0.0000000   0.7800707  -0.0045888  -0.0000000   0.5466133
 22222222222222222200000          -0.0000000   0.0000000   0.7760713  -0.0000000  -0.0701670   0.5455941  -0.0000000   0.0000000
                                   0.0000000   0.0000000   0.0000000  -0.0608604   0.0003580   0.0000000  -0.0838423
 22222222222222222002000          -0.0000000   0.0000000  -0.3272692   0.0000000   0.7071809   0.5455941  -0.0000000  -0.0000000
                                   0.0000000   0.0000000   0.0000000   0.0307401   0.0525275  -0.0000000  -0.0838421
 22222222222222222/0000\           0.0000000   0.0530376  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6781131  -0.0000000
                                   0.0000000  -0.0000000   0.6755727  -0.0000000   0.0000000  -0.0000000  -0.0000000
 22222222222222222/000\0           0.0530378   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.6781131
                                   0.0000000   0.6755726   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222222222222220/00\0          -0.0000000  -0.0000000  -0.0000000   0.0530378  -0.0000000  -0.0000000   0.0000000   0.0000000
                                   0.6781131  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6755727   0.0000000
 2222222222222222200/00\           0.0000000   0.0000000  -0.0000000   0.0530376   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  -0.6781131   0.0000000   0.0000000   0.0000000  -0.0000000   0.6755727  -0.0000000
 222222222222222220/0\00           0.0000000   0.0530380   0.0000000   0.0000000  -0.0000000   0.0000000   0.6781130   0.0000000
                                  -0.0000000  -0.0000000   0.6755727   0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222222222200/\00           0.0530380   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.6781130
                                   0.0000000   0.6755727   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222222222222220/000\           0.0000000  -0.0000000  -0.0352727  -0.0000000  -0.0500648   0.0842804   0.0000000  -0.0000000
                                  -0.0000000   0.0000000  -0.0000000  -0.3860613   0.6778554   0.0000000   0.5466134
 2222222222222222200/0\0          -0.0000000   0.0000000  -0.0257212  -0.0000000   0.0555797   0.0842806  -0.0000000  -0.0000000
                                  -0.0000000   0.0000000   0.0000000  -0.3940093  -0.6732666   0.0000000   0.5466134
 22222222222222222020000          -0.0000000  -0.0000000  -0.4488020   0.0000000  -0.6370140   0.5455942   0.0000000  -0.0000000
                                  -0.0000000   0.0000000  -0.0000000   0.0301199  -0.0528852  -0.0000000  -0.0838419

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.956731   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.034121    0.000000
 2           0.956731    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.034121    0.000000    0.000000
 3          -0.000000    0.952841    0.000000    0.000000   -0.086189   -0.000000   -0.000000    0.000000   -0.000000    0.003961
            -0.000000   -0.033891   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.956731    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.034121    0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.086189   -0.000000    0.000000   -0.952841    0.000000   -0.000000    0.000000   -0.000000    0.033891
            -0.000000    0.003961   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.953578   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.072097
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958997    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958997    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 9           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958997   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 10         -0.000000   -0.000000    0.034987   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.958242    0.000000
 11          0.034987   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.958242    0.000000    0.000000
 12          0.000000    0.034987    0.000000   -0.000000    0.000204    0.000000   -0.000000    0.000000   -0.000000   -0.019452
             0.000000    0.958044    0.000000    0.000000    0.000000
 13          0.000000   -0.000204   -0.000000    0.000000    0.034987    0.000000    0.000000   -0.000000    0.000000    0.958044
            -0.000000    0.019452    0.000000   -0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.034987   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.958242   -0.000000   -0.000000    0.000000   -0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.073803   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.955706

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957340    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000406
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.957340    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000406    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.957340   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000404   -0.000039    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.957340   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000406    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.957340    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000039   -0.000404    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.956299    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000770
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958997   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958997    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958997    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 10          0.000406   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.958880
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11          0.000000    0.000406   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.958880   -0.000000    0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000404    0.000000   -0.000039    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.958880    0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000000   -0.000039   -0.000000   -0.000404    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.958880   -0.000000   -0.000000
 14          0.000000   -0.000000    0.000000    0.000406    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.958880    0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000770   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.958551


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95673142 (fixed)   0.95733970 (relaxed)   0.95733960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00173774   -0.00405052   -0.88982218
 Singles      0.01426791   -0.05624903   -0.06495756
 Pairs        0.07510287   -0.00000000   -0.07058005
 Total        1.09110853   -0.06029955   -1.02535979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.67006776
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.96422863
 One electron energy               -28576.37581934
 Two electron energy                 7690.68020089
 Virial quotient                       -0.64005757
 Correlation energy                    -1.02555069
 !MRCI STATE 1.1 Energy              -20885.6956184503    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78905486 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78905463 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78905486 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79159085 (Pople, fixed reference)
 Cluster corrected energies        -20885.79159060 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79159085 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95673142 (fixed)   0.95733970 (relaxed)   0.95733960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00173774   -0.00405052   -0.88982219
 Singles      0.01426791   -0.05624903   -0.06495755
 Pairs        0.07510288    0.00000000   -0.07058006
 Total        1.09110853   -0.06029955   -1.02535979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.67006776
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.96422761
 One electron energy               -28576.37581786
 Two electron energy                 7690.68019941
 Virial quotient                       -0.64005757
 Correlation energy                    -1.02555069
 !MRCI STATE 2.1 Energy              -20885.6956184502    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78905487 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78905464 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78905487 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79159086 (Pople, fixed reference)
 Cluster corrected energies        -20885.79159060 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79159086 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95284130 (fixed)   0.95733970 (relaxed)   0.95733960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00173774   -0.00405052   -0.88982216
 Singles      0.01426789   -0.05624903   -0.06495751
 Pairs        0.07510289   -0.00000002   -0.07058012
 Total        1.09110853   -0.06029957   -1.02535979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.67006776
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.96415887
 One electron energy               -28576.37569301
 Two electron energy                 7690.68007456
 Virial quotient                       -0.64005757
 Correlation energy                    -1.02555069
 !MRCI STATE 3.1 Energy              -20885.6956184499    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78905486 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78905463 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78905486 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79159085 (Pople, fixed reference)
 Cluster corrected energies        -20885.79159059 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79159085 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95673142 (fixed)   0.95733969 (relaxed)   0.95733960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00173774   -0.00405052   -0.88982217
 Singles      0.01426793   -0.05624903   -0.06495758
 Pairs        0.07510287   -0.00000000   -0.07058004
 Total        1.09110854   -0.06029955   -1.02535979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.67006776
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.96424223
 One electron energy               -28576.37584004
 Two electron energy                 7690.68022159
 Virial quotient                       -0.64005757
 Correlation energy                    -1.02555069
 !MRCI STATE 4.1 Energy              -20885.6956184489    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78905488 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78905465 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78905488 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79159087 (Pople, fixed reference)
 Cluster corrected energies        -20885.79159061 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79159087 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95284130 (fixed)   0.95733971 (relaxed)   0.95733961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00173774   -0.00405052   -0.88982224
 Singles      0.01426788   -0.05624900   -0.06495750
 Pairs        0.07510289    0.00000001   -0.07058005
 Total        1.09110851   -0.06029950   -1.02535979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.67006776
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.96416698
 One electron energy               -28576.37570652
 Two electron energy                 7690.68008807
 Virial quotient                       -0.64005757
 Correlation energy                    -1.02555069
 !MRCI STATE 5.1 Energy              -20885.6956184486    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78905485 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78905462 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78905485 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79159084 (Pople, fixed reference)
 Cluster corrected energies        -20885.79159058 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79159084 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95357775 (fixed)   0.95629938 (relaxed)   0.95629906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00410763   -0.00900209   -0.97950780
 Singles      0.01039248   -0.04862535   -0.05426018
 Pairs        0.07898415    0.08511277    0.00341137
 Total        1.09348427    0.02748534   -1.03035662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.61996283
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.91414676
 One electron energy               -28575.50991173
 Two electron energy                 7689.85896265
 Virial quotient                       -0.64005718
 Correlation energy                    -1.03098626
 !MRCI STATE 6.1 Energy              -20885.6509490862    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.74733008 (Davidson, fixed reference)
 Cluster corrected energies        -20885.74732932 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.74733008 (Davidson, rotated reference)

 Cluster corrected energies        -20885.75017105 (Pople, fixed reference)
 Cluster corrected energies        -20885.75017020 (Pople, relaxed reference)
 Cluster corrected energies        -20885.75017105 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95899672 (fixed)   0.95899672 (relaxed)   0.95899672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00267440   -0.00629312   -0.87527992
 Singles      0.01475464   -0.05959240   -0.06849176
 Pairs        0.06991193    0.00000000   -0.06485098
 Total        1.08734097   -0.06588552   -1.00862266
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53423897
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.27019242
 One electron energy               -28558.83023731
 Two electron energy                 7673.28737568
 Virial quotient                       -0.64006650
 Correlation energy                    -1.00862266
 !MRCI STATE 7.1 Energy              -20885.5428616296    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63095571 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63095571 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63095571 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63302224 (Pople, fixed reference)
 Cluster corrected energies        -20885.63302224 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63302224 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95899672 (fixed)   0.95899672 (relaxed)   0.95899672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00267440   -0.00629312   -0.87527991
 Singles      0.01475464   -0.05959241   -0.06849177
 Pairs        0.06991193   -0.00000000   -0.06485098
 Total        1.08734098   -0.06588553   -1.00862266
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53423897
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.27019523
 One electron energy               -28558.83024049
 Two electron energy                 7673.28737886
 Virial quotient                       -0.64006650
 Correlation energy                    -1.00862266
 !MRCI STATE 8.1 Energy              -20885.5428616294    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63095572 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63095572 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63095572 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63302224 (Pople, fixed reference)
 Cluster corrected energies        -20885.63302224 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63302224 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95899672 (fixed)   0.95899672 (relaxed)   0.95899672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00267440   -0.00629312   -0.87527991
 Singles      0.01475464   -0.05959240   -0.06849177
 Pairs        0.06991193    0.00000000   -0.06485098
 Total        1.08734098   -0.06588552   -1.00862266
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53423897
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.27019536
 One electron energy               -28558.83024040
 Two electron energy                 7673.28737877
 Virial quotient                       -0.64006650
 Correlation energy                    -1.00862266
 !MRCI STATE 9.1 Energy              -20885.5428616292    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63095572 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63095572 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63095572 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63302224 (Pople, fixed reference)
 Cluster corrected energies        -20885.63302224 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63302224 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95824153 (fixed)   0.95888436 (relaxed)   0.95887996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00265636   -0.00620939   -0.87685901
 Singles      0.01450061   -0.05919115   -0.06789207
 Pairs        0.07044882    0.00000000   -0.06543360
 Total        1.08760580   -0.06540053   -1.01018467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52368436
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.33048947
 One electron energy               -28559.54466700
 Two electron energy                 7674.01098886
 Virial quotient                       -0.64006504
 Correlation energy                    -1.00999377
 !MRCI STATE 10.1 Energy             -20885.5336781317    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62215944 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62214937 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62215944 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62425789 (Pople, fixed reference)
 Cluster corrected energies        -20885.62424672 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62425789 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95824152 (fixed)   0.95888436 (relaxed)   0.95887996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00265636   -0.00620939   -0.87685901
 Singles      0.01450061   -0.05919115   -0.06789207
 Pairs        0.07044882   -0.00000000   -0.06543360
 Total        1.08760580   -0.06540053   -1.01018467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52368436
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.33048780
 One electron energy               -28559.54466547
 Two electron energy                 7674.01098734
 Virial quotient                       -0.64006504
 Correlation energy                    -1.00999377
 !MRCI STATE 11.1 Energy             -20885.5336781317    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62215945 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62214938 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62215945 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62425789 (Pople, fixed reference)
 Cluster corrected energies        -20885.62424672 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62425789 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95804409 (fixed)   0.95888438 (relaxed)   0.95887999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00265636   -0.00620938   -0.87685905
 Singles      0.01450056   -0.05919113   -0.06789204
 Pairs        0.07044882   -0.00000002   -0.06543358
 Total        1.08760574   -0.06540053   -1.01018467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52368436
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.33051775
 One electron energy               -28559.54469252
 Two electron energy                 7674.01101439
 Virial quotient                       -0.64006504
 Correlation energy                    -1.00999377
 !MRCI STATE 12.1 Energy             -20885.5336781316    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62215939 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62214932 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62215939 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62425782 (Pople, fixed reference)
 Cluster corrected energies        -20885.62424666 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62425782 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95804409 (fixed)   0.95888438 (relaxed)   0.95887999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00265636   -0.00620938   -0.87685909
 Singles      0.01450055   -0.05919112   -0.06789203
 Pairs        0.07044883    0.00000000   -0.06543355
 Total        1.08760574   -0.06540050   -1.01018467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52368436
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.33051952
 One electron energy               -28559.54469496
 Two electron energy                 7674.01101683
 Virial quotient                       -0.64006504
 Correlation energy                    -1.00999377
 !MRCI STATE 13.1 Energy             -20885.5336781312    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62215938 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62214931 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62215938 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62425782 (Pople, fixed reference)
 Cluster corrected energies        -20885.62424665 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62425782 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95824152 (fixed)   0.95888435 (relaxed)   0.95887996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00265636   -0.00620939   -0.87685900
 Singles      0.01450062   -0.05919115   -0.06789207
 Pairs        0.07044882    0.00000000   -0.06543360
 Total        1.08760580   -0.06540053   -1.01018467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52368436
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.33049420
 One electron energy               -28559.54467293
 Two electron energy                 7674.01099480
 Virial quotient                       -0.64006504
 Correlation energy                    -1.00999377
 !MRCI STATE 14.1 Energy             -20885.5336781308    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62215945 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62214938 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62215945 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62425789 (Pople, fixed reference)
 Cluster corrected energies        -20885.62424672 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62425789 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95570593 (fixed)   0.95855536 (relaxed)   0.95855106 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00292580   -0.00678841   -0.01126921
 Singles      0.01409709   -0.05804911   -0.06645445
 Pairs        0.07132939   -0.94542270   -0.93504986
 Total        1.08835229   -1.01026022   -1.01277351
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.51276739
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.38485931
 One electron energy               -28560.28292737
 Two electron energy                 7674.75801611
 Virial quotient                       -0.64006370
 Correlation energy                    -1.01214388
 !MRCI STATE 15.1 Energy             -20885.5249112640    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.61433649 (Davidson, fixed reference)
 Cluster corrected energies        -20885.61432660 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.61433649 (Davidson, rotated reference)

 Cluster corrected energies        -20885.61652244 (Pople, fixed reference)
 Cluster corrected energies        -20885.61651146 (Pople, relaxed reference)
 Cluster corrected energies        -20885.61652244 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      307.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     4034.60       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15341.42  13209.80   2090.06     28.37      0.60     12.25
 REAL TIME  *     15853.80 SEC
 DISK USED  *         4.24 GB (local),       68.34 GB (total)
 SF USED    *        37.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.78905486  AU                              
 SETTING HLSDIAG(5)     =    -20885.78905487  AU                              
 SETTING HLSDIAG(6)     =    -20885.78905486  AU                              
 SETTING HLSDIAG(7)     =    -20885.78905488  AU                              
 SETTING HLSDIAG(8)     =    -20885.78905485  AU                              
 SETTING HLSDIAG(9)     =    -20885.74733008  AU                              
 SETTING HLSDIAG(10)    =    -20885.63095571  AU                              
 SETTING HLSDIAG(11)    =    -20885.63095572  AU                              
 SETTING HLSDIAG(12)    =    -20885.63095572  AU                              
 SETTING HLSDIAG(13)    =    -20885.62215944  AU                              
 SETTING HLSDIAG(14)    =    -20885.62215945  AU                              
 SETTING HLSDIAG(15)    =    -20885.62215939  AU                              
 SETTING HLSDIAG(16)    =    -20885.62215938  AU                              
 SETTING HLSDIAG(17)    =    -20885.62215945  AU                              
 SETTING HLSDIAG(18)    =    -20885.61433649  AU                              


         HLSDIAG
    -20885.81490
    -20885.81490
    -20885.81490
    -20885.78905
    -20885.78905
    -20885.78905
    -20885.78905
    -20885.78905
    -20885.74733
    -20885.63096
    -20885.63096
    -20885.63096
    -20885.62216
    -20885.62216
    -20885.62216
    -20885.62216
    -20885.62216
    -20885.61434
                                                  

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

 Time for Seward_LS:     158.23 sec

 CPU time:    158.23 sec, REAL time:    170.46 sec


 SORTLS1 read   151311733. and wrote   151311733. SO integrals in   592 records. CPU time:      1.38 sec, REAL time:      2.44 sec
 SORTLS2 read   151311733. and wrote   750362552. SO integrals in    48 records. CPU time:      0.63 sec, REAL time:      0.91 sec

 FILE SIZES: FILE 1:   323.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   323.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      308.00       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     4034.60       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15502.42    160.99  13209.80   2090.06     28.37      0.60     12.25
 REAL TIME  *     16028.41 SEC
 DISK USED  *         4.24 GB (local),       75.87 GB (total)
 SF USED    *        37.75 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies: -20885.724723 -20885.724723 -20885.724723
 Replaced energies: -20885.814897 -20885.814897 -20885.814897

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies: -20885.695618 -20885.695618 -20885.695618 -20885.695618 -20885.695618 -20885.650949 -20885.542862 -20885.542862
                    -20885.542862 -20885.533678 -20885.533678 -20885.533678 -20885.533678 -20885.533678 -20885.524911
 Replaced energies: -20885.789055 -20885.789055 -20885.789055 -20885.789055 -20885.789055 -20885.747330 -20885.630956 -20885.630956
                    -20885.630956 -20885.622159 -20885.622159 -20885.622159 -20885.622159 -20885.622159 -20885.614336



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.81489749

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00   -4332.81       0.00       0.00       0.00       0.00
                           -0.00    6127.52      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                        -6127.52      -0.00      -0.00       0.00       0.00   -4332.81       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00    4332.81       0.00      -0.00       0.00       0.00       0.00   -4314.45
                            0.00       0.00      -0.00      -0.00    4332.81       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00    4332.81       0.00       0.00       0.00       0.00      -0.00   -4332.81       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.01       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00   -4332.81      -0.00       0.00       0.00       0.00       0.00   -4332.81    6101.55

    6   3.1  1.0  0.0   -4332.81      -0.00      -0.00       0.00       0.00       0.00    4332.81       0.00      -0.00       0.00
                           -0.00    4332.81      -0.00      -0.00      -0.00       0.00      -0.00    4332.81       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    4332.81       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -6127.52       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00   -4332.81    6127.52       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00   -4332.81      -0.00      -0.00       0.00       0.00       0.00   -4314.45
                           -0.00      -0.00      -0.00      -0.00    4332.81      -0.00      -0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00      -0.00   -4314.45       0.00       0.00       0.00       0.00      -0.00   -4314.45    5671.80
                           -0.00       0.00       0.00       0.00   -6101.55      -0.00       0.00      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00    4314.45    6101.55       0.00       0.00       0.00      -0.00   -4314.45      -0.00

   12   3.1  0.0  0.0       0.00    2092.32      -0.00       0.00       0.00       0.00       0.00    2092.32      -0.00       0.00
                         2869.31       0.00       0.00       0.00      -0.00   -7016.81   -2869.31      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0    4314.45       0.00       0.00       0.00       0.00       0.00    4314.45       0.00       0.00       0.00
                           -0.00    4314.45      -0.00       0.00       0.00       0.00       0.00   -4314.45       0.00      -0.00

   14   5.1  0.0  0.0       0.00   -4521.20       0.00       0.00       0.00       0.00       0.00   -4521.20       0.00       0.00
                         4072.60       0.00       0.00      -0.00       0.00     634.41   -4072.60      -0.00      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00    6921.39      -0.00       0.00       0.00       0.00      -0.00    6921.39      -0.00       0.00
                         6921.39       0.00       0.00      -0.00      -0.00    9788.32   -6921.39      -0.00      -0.00      -0.00

   16   7.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00    -866.31    1225.14      -0.00       0.00      -0.00       0.00     866.31      -0.00

   17   8.1  0.0  0.0      -0.00       0.00     866.31       0.00       0.00       0.00      -0.00       0.00     866.31       0.00
                            0.00      -0.00       0.00       0.00   -1225.14      -0.00      -0.00       0.00      -0.00      -0.00

   18   9.1  0.0  0.0     866.31      -0.00       0.00       0.00       0.00       0.00     866.31      -0.00       0.00       0.00
                            0.00    -866.31       0.00      -0.00      -0.00       0.00      -0.00     866.31      -0.00      -0.00

   19  10.1  0.0  0.0      -0.00       0.00     824.33       0.00       0.00       0.00      -0.00       0.00     824.33       0.00
                            0.00       0.00      -0.00      -0.00    1165.79       0.00      -0.00      -0.00       0.00      -0.00

   20  11.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00    -824.34   -1165.79       0.00      -0.00      -0.00       0.00     824.34      -0.00

   21  12.1  0.0  0.0      -0.00    -480.77      -0.00       0.00       0.00       0.00      -0.00    -480.77      -0.00       0.00
                         -471.07      -0.00      -0.00      -0.00      -0.00    1346.11     471.07       0.00       0.00      -0.00

   22  13.1  0.0  0.0       0.00    -821.52       0.00       0.00       0.00       0.00       0.00    -821.52       0.00       0.00
                          827.12       0.00       0.00       0.00       0.00      -7.92    -827.12      -0.00      -0.00      -0.00

   23  14.1  0.0  0.0    -824.33       0.00      -0.00       0.00       0.00       0.00    -824.33       0.00      -0.00       0.00
                            0.00    -824.34      -0.00       0.00      -0.00      -0.00      -0.00     824.34       0.00      -0.00

   24  15.1  0.0  0.0      -0.00   -1833.08       0.00       0.00       0.00       0.00      -0.00   -1833.08       0.00       0.00
                        -1833.08      -0.00      -0.00       0.00       0.00   -2592.36    1833.08       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -0.00       0.00    4314.45       0.00      -0.00       0.00      -0.00     866.31      -0.00      -0.00
                            0.00   -2869.31       0.00   -4072.60   -6921.39      -0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0       0.00    2092.32       0.00   -4521.20    6921.39      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00   -4314.45      -0.00      -0.00       0.00       0.00     866.31      -0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      -0.00     866.31       0.00     824.33       0.00
                        -4314.45      -0.00       0.00      -0.00      -0.00     866.31      -0.00      -0.00       0.00     824.34

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6101.55      -0.00      -0.00       0.00       0.00   -1225.14      -0.00       0.00       0.00    1165.79

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00    1225.14       0.00   -1165.79      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    7016.81      -0.00    -634.41   -9788.32      -0.00       0.00      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00       0.00    4314.45       0.00      -0.00       0.00      -0.00     866.31      -0.00      -0.00
                           -0.00    2869.31      -0.00    4072.60    6921.39       0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0 -1.0       0.00    2092.32       0.00   -4521.20    6921.39      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00    4314.45       0.00       0.00      -0.00      -0.00    -866.31       0.00      -0.00

    9   3.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -0.00      -0.00     866.31       0.00     824.33       0.00
                         4314.45       0.00      -0.00       0.00       0.00    -866.31       0.00       0.00      -0.00    -824.34

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5671.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5671.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5671.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5671.80       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14829.33       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   40370.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   40370.55       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40370.55       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42301.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42301.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24

    1   1.1  1.0  1.0      -0.00       0.00    -824.33      -0.00
                          471.07    -827.12      -0.00    1833.08

    2   2.1  1.0  1.0    -480.77    -821.52       0.00   -1833.08
                            0.00      -0.00     824.34       0.00

    3   3.1  1.0  1.0      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -1346.11       7.92       0.00    2592.36

    7   1.1  1.0 -1.0      -0.00       0.00    -824.33      -0.00
                         -471.07     827.12       0.00   -1833.08

    8   2.1  1.0 -1.0    -480.77    -821.52       0.00   -1833.08
                           -0.00       0.00    -824.34      -0.00

    9   3.1  1.0 -1.0      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   7.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   8.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   18   9.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19  10.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   20  11.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   21  12.1  0.0  0.0   42301.12       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   22  13.1  0.0  0.0       0.00   42301.13       0.00       0.00
                           -0.00       0.00       0.00       0.00

   23  14.1  0.0  0.0       0.00       0.00   42301.11       0.00
                           -0.00      -0.00       0.00       0.00

   24  15.1  0.0  0.0       0.00       0.00       0.00   44018.05
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 24)

    The diagonal matrixelements are shifted by -20885.81489749 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    6127.519

    2    1  |1 1>+              0.000       0.006       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -6127.517   -6127.519      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    6127.517       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.003       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.006       0.000      -0.000       0.000
                                0.000       0.000   -6127.517      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000   -6127.515      -0.000
                               -0.000    6127.517       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000   -6127.515       0.003       0.000
                               -0.000    6127.519      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.006
                            -6127.519      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    6127.515       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      -0.000   -6101.550       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -6101.553      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    6101.554       0.000       0.000      -0.000       0.000

    3    1  |0 0>               0.000    2958.989      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -7016.808    4057.820       0.000

    4    1  |0 0>            6101.551       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    6101.551

    5    1  |0 0>               0.000   -6393.939       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     634.409    5759.527       0.000

    6    1  |0 0>              -0.000    9788.322      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    9788.323    9788.321       0.000

    7    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1225.144      -0.000       0.000       0.000      -0.000

    8    1  |0 0>              -0.000       0.000    1225.145       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1225.144      -0.000       0.000      -0.000

    9    1  |0 0>            1225.145      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000   -1225.143

   10    1  |0 0>              -0.000       0.000    1165.785       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    1165.787       0.000       0.000       0.000

   11    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1165.787       0.000      -0.000       0.000      -0.000

   12    1  |0 0>              -0.000    -679.913      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    1346.110    -666.198      -0.000

   13    1  |0 0>               0.000   -1161.806       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -7.920    1169.724       0.000

   14    1  |0 0>           -1165.785       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000   -1165.787

   15    1  |0 0>              -0.000   -2592.362       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -2592.362   -2592.361      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000      -0.000       0.000    6101.551       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000    2958.989       0.000   -6393.939    9788.322      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -6101.550       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            6127.515       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -6101.554      -0.000      -0.000       0.000       0.000   -1225.144

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    6101.553      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    7016.808      -0.000    -634.409   -9788.323      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -4057.820       0.000   -5759.527   -9788.321      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000   -6101.551      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -6101.551      -0.000       0.000      -0.000      -0.000    1225.144

    1    1  |0 0>               0.000    5671.801       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5671.800       0.000       0.000       0.000       0.000       0.000
                             6101.551      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5671.801       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5671.798       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5671.804       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14829.332       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   40370.553
                            -1225.144      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1165.787      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000    1225.145      -0.000      -0.000      -0.000       0.000   -1165.785      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000    -679.913   -1161.806       0.000   -2592.362
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           1225.145       0.000    1165.785       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    1165.787       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1225.144       0.000   -1165.787      -0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000   -1346.110       7.920       0.000    2592.362

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     666.198   -1169.724      -0.000    2592.361

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1225.143      -0.000       0.000       0.000      -0.000    1165.787       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    1165.787       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>           40370.552       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000   40370.552       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000   42301.112       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000   42301.111       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000   42301.124       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000   42301.126       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   42301.111       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44018.052
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.90905319    -0.09415570   -20664.79      0.00000000        0.00      0.0000
    2-20885.84311025    -0.02821276    -6191.99      0.06594294    14472.80      1.7944
    3-20885.84311025    -0.02821276    -6191.99      0.06594294    14472.80      1.7944
    4-20885.84311025    -0.02821276    -6191.99      0.06594294    14472.80      1.7944
    5-20885.82748056    -0.01258307    -2761.66      0.08157263    17903.12      2.2197
    6-20885.82748054    -0.01258305    -2761.66      0.08157265    17903.13      2.2197
    7-20885.82748054    -0.01258305    -2761.66      0.08157265    17903.13      2.2197
    8-20885.82748035    -0.01258286    -2761.62      0.08157284    17903.17      2.2197
    9-20885.82748032    -0.01258283    -2761.61      0.08157287    17903.18      2.2197
   10-20885.74891485     0.06598264    14481.52      0.16013834    35146.30      4.3576
   11-20885.74891483     0.06598266    14481.52      0.16013836    35146.31      4.3576
   12-20885.74891465     0.06598284    14481.56      0.16013854    35146.35      4.3576
   13-20885.74891464     0.06598285    14481.56      0.16013855    35146.35      4.3576
   14-20885.74891464     0.06598285    14481.56      0.16013855    35146.35      4.3576
   15-20885.71096700     0.10393049    22810.11      0.19808619    43474.89      5.3902
   16-20885.63066197     0.18423552    40435.02      0.27839123    61099.81      7.5754
   17-20885.63066196     0.18423553    40435.02      0.27839123    61099.81      7.5754
   18-20885.63066196     0.18423553    40435.02      0.27839123    61099.81      7.5754
   19-20885.62179758     0.19309991    42380.53      0.28725561    63045.32      7.8166
   20-20885.62179758     0.19309991    42380.53      0.28725561    63045.32      7.8166
   21-20885.62179758     0.19309991    42380.53      0.28725561    63045.32      7.8166
   22-20885.62179752     0.19309997    42380.54      0.28725567    63045.33      7.8166
   23-20885.62179752     0.19309997    42380.55      0.28725567    63045.33      7.8166
   24-20885.61238190     0.20251559    44447.03      0.29667129    65111.82      8.0728

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.70661794  0.00000229  0.00000003  0.00000035 -0.00000025 -0.49407865 -0.00000014
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.51995160  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000005 -0.18276300
                          -0.00000823  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002338

   3    1  |1 1>+          0.00000000 -0.00000003 -0.00000001  0.70659995 -0.00000157  0.49407878 -0.00000025  0.00000003
                           0.00000000  0.00000000 -0.00000003 -0.00504066 -0.00000000 -0.00021792  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00024798  0.00000003 -0.00010840  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000229  0.70661772  0.00000001  0.49407888  0.00000157  0.00000035 -0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000003  0.00504066 -0.00000000 -0.00021792  0.00000000  0.00000000
                           0.00000000 -0.00000003 -0.00000001  0.70659960  0.00000157 -0.49407903  0.00000025 -0.00000003

   3    1  |1 0>          -0.00000823 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00007156
                           0.51995164  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000003  0.00000016 -0.55942240

   1    1  |1 1>-         -0.00000823  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004818
                           0.51995158 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000006 -0.00000011  0.37665946

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70661757  0.00000229  0.00000003 -0.00000035  0.00000025  0.49407908  0.00000014

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00024798 -0.00000003 -0.00010840  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000229 -0.70661770 -0.00000001  0.49407907  0.00000157  0.00000035 -0.00000001

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000227  0.71492542 -0.00000036  0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00031533  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000018  0.00000000  0.71492543  0.00000227  0.00000051 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015685 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000002 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.00000020  0.71081123
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00009092

   4    1  |0 0>           0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000051  0.00000036  0.71492562  0.00000020
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000008  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000006 -0.00000002  0.07658838
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000980

   6    1  |0 0>           0.43016594 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                           0.00000681 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000012  0.03718476  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00001305 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.03718383  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00026526  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.03718476 -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000002  0.00000008 -0.02556392  0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001128 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.02556393 -0.00000008 -0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000561  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.02503703
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000320

  13    1  |0 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00516353
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000066

  14    1  |0 0>           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000002 -0.00000001 -0.02556391 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.06251594 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000099  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.00000000  0.00000021 -0.00000002  0.00000247  0.50470644  0.00000078 -0.00000000  0.02629361
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.54044182  0.14690749 -0.56396479 -0.00000001 -0.00000008  0.00000005  0.24490307 -0.00000000
                           0.00236696 -0.00001188  0.00014655 -0.00000000  0.00000000 -0.00000000  0.00000693  0.00000000

   3    1  |1 1>+          0.00000004 -0.00000003 -0.00000005 -0.00000836  0.00000078 -0.50470628 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004671 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00004758 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000001 -0.50470644  0.00000247  0.00000836  0.00000000 -0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004671 -0.00000000  0.00000000
                          -0.00000004  0.00000003  0.00000005  0.00000836 -0.00000078  0.50470652  0.00000000 -0.00000000

   3    1  |1 0>          -0.00049028  0.00004543 -0.00004021 -0.00000000 -0.00000000 -0.00000000  0.00000693  0.00000000
                           0.11194509  0.56186148 -0.15475682  0.00000001 -0.00000024 -0.00000002 -0.24490305 -0.00000000

   1    1  |1 1>-         -0.00187667 -0.00003355 -0.00010633  0.00000000  0.00000000  0.00000000  0.00000693 -0.00000000
                           0.42849682 -0.41495410 -0.40920800 -0.00000002  0.00000016  0.00000006 -0.24490290 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000021  0.00000002 -0.00000247 -0.50470654 -0.00000078  0.00000000  0.02629358

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00004758 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00000001 -0.50470629  0.00000247  0.00000836 -0.00000000  0.00000001

   1    1  |0 0>           0.00000006  0.00000004  0.00000007  0.00001159 -0.00000108  0.69910917 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00006471 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000001 -0.00000002 -0.00000001  0.69910921 -0.00000341 -0.00001159  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00006590 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.07658769  0.68798830 -0.12420057  0.00000002 -0.00000030 -0.00000003 -0.00000001  0.00000000
                          -0.00033543 -0.00005563  0.00003227  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000030 -0.00000003  0.00000341  0.69910904  0.00000108  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.71080452  0.12420062  0.68798818  0.00000002 -0.00000003 -0.00000007 -0.00000011  0.00000000
                           0.00311309 -0.00001004 -0.00017877  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000003  0.00000006  0.00000016 -0.00000000  0.00000000  0.00000000  0.90111163  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00002548  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000042
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000011
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.99930841
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000070 -0.00000007  0.04229974 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000392 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.04229976 -0.00000021 -0.00000070 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000399 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00516347  0.04071422 -0.01147223  0.00000000 -0.00000002 -0.00000000  0.00000001 -0.00000000
                           0.00002261 -0.00000329  0.00000298  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.02503676 -0.01147225 -0.04071418 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                           0.00010965  0.00000093  0.00001058 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.00000000  0.00000002 -0.00000000  0.00000021  0.04229974  0.00000007 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.08980746  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000254  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000 -0.00000001 -0.03402110 -0.00000013  0.00000002 -0.00000002  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.02166004 -0.03277326 -0.05482863
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000008  0.00000051

   3    1  |1 1>+          0.02628797  0.00000000  0.00000002 -0.00000027  0.03402110  0.00000000 -0.00000001  0.00000000
                           0.00054464  0.00000000  0.00000000 -0.00000000  0.00001370 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000041  0.00000000 -0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.02629359 -0.00000013  0.03402114  0.00000027 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00054464 -0.00000000  0.00000000 -0.00000000  0.00001370 -0.00000000 -0.00000000  0.00000000
                           0.02628795  0.00000000 -0.00000002  0.00000027 -0.03402114 -0.00000000  0.00000001 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000001  0.00000051
                           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.03921251  0.00237153  0.05482862

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000008  0.00000051
                          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.01755249 -0.03514476  0.05482860

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001  0.03402114  0.00000013 -0.00000002  0.00000002 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000041  0.00000000 -0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.02629360 -0.00000013  0.03402114  0.00000027 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000001  0.00000009 -0.01130966 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000455  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000004 -0.01130967 -0.00000009  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.01118162  0.00169649 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.01130966 -0.00000004  0.00000001 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00169648  0.01118161  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.05436075
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000050

   7    1  |0 0>          -0.00000000  0.99930841  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00001574 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.99909400  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                           0.02069949  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000011 -0.00000042 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000001  0.00000000  0.00000050 -0.00000803  0.99877778  0.00000002 -0.00000016 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00040217 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000001 -0.00000385  0.99877786  0.00000803 -0.00000003  0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00008901  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000055  0.00000003 -0.00000003  0.99729371 -0.05442867  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000068 -0.00000013 -0.00000000

  13    1  |0 0>          -0.00000000  0.00000000  0.00000009 -0.00000003  0.00000016  0.05442867  0.99729371  0.00000006
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000237 -0.00000000

  14    1  |0 0>           0.00000000 -0.00000000  0.99877786  0.00000385 -0.00000050  0.00000054 -0.00000012 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006  0.99399516
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000918


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.90905319     -0.09415570   -20664.79      0.00000000        0.00      0.0000
     2   1 -20885.84311025     -0.02821276    -6191.99      0.06594294    14472.80      1.7944
     3   1 -20885.84311025     -0.02821276    -6191.99      0.06594294    14472.80      1.7944
     4   1 -20885.84311025     -0.02821276    -6191.99      0.06594294    14472.80      1.7944
     5   1 -20885.82748056     -0.01258307    -2761.66      0.08157263    17903.12      2.2197
     6   1 -20885.82748054     -0.01258305    -2761.66      0.08157265    17903.13      2.2197
     7   1 -20885.82748054     -0.01258305    -2761.66      0.08157265    17903.13      2.2197
     8   1 -20885.82748035     -0.01258286    -2761.62      0.08157284    17903.17      2.2197
     9   1 -20885.82748032     -0.01258283    -2761.61      0.08157287    17903.18      2.2197
    10   1 -20885.74891485      0.06598264    14481.52      0.16013834    35146.30      4.3576
    11   1 -20885.74891483      0.06598266    14481.52      0.16013836    35146.31      4.3576
    12   1 -20885.74891465      0.06598284    14481.56      0.16013854    35146.35      4.3576
    13   1 -20885.74891464      0.06598285    14481.56      0.16013855    35146.35      4.3576
    14   1 -20885.74891464      0.06598285    14481.56      0.16013855    35146.35      4.3576
    15   1 -20885.71096700      0.10393049    22810.11      0.19808619    43474.89      5.3902
    16   1 -20885.63066197      0.18423552    40435.02      0.27839123    61099.81      7.5754
    17   1 -20885.63066196      0.18423553    40435.02      0.27839123    61099.81      7.5754
    18   1 -20885.63066196      0.18423553    40435.02      0.27839123    61099.81      7.5754
    19   1 -20885.62179758      0.19309991    42380.53      0.28725561    63045.32      7.8166
    20   1 -20885.62179758      0.19309991    42380.53      0.28725561    63045.32      7.8166
    21   1 -20885.62179758      0.19309991    42380.53      0.28725561    63045.32      7.8166
    22   1 -20885.62179752      0.19309997    42380.54      0.28725567    63045.33      7.8166
    23   1 -20885.62179752      0.19309997    42380.55      0.28725567    63045.33      7.8166
    24   1 -20885.61238190      0.20251559    44447.03      0.29667129    65111.82      8.0728

 E0 = -20885.81489749 is the energy of the lowest zeroth-order state
 E1 = -20885.90905319 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.70661794  0.00000229  0.00000003  0.00000035 -0.00000025 -0.49407865 -0.00000014
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.51995160  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000005 -0.18276300
                               -0.00000823  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002338

  3  1     3    1  |1 1>+       0.00000000 -0.00000003 -0.00000001  0.70659995 -0.00000157  0.49407878 -0.00000025  0.00000003
                                0.00000000  0.00000000 -0.00000003 -0.00504066 -0.00000000 -0.00021792  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00024798  0.00000003 -0.00010840  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000229  0.70661772  0.00000001  0.49407888  0.00000157  0.00000035 -0.00000001

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000003  0.00504066 -0.00000000 -0.00021792  0.00000000  0.00000000
                                0.00000000 -0.00000003 -0.00000001  0.70659960  0.00000157 -0.49407903  0.00000025 -0.00000003

  6  1     3    1  |1 0>       -0.00000823 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00007156
                                0.51995164  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000003  0.00000016 -0.55942240

  7  1     1    1  |1 1>-      -0.00000823  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004818
                                0.51995158 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000006 -0.00000011  0.37665946

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70661757  0.00000229  0.00000003 -0.00000035  0.00000025  0.49407908  0.00000014

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00024798 -0.00000003 -0.00010840  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000229 -0.70661770 -0.00000001  0.49407907  0.00000157  0.00000035 -0.00000001

 10  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000227  0.71492542 -0.00000036  0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00031533  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000018  0.00000000  0.71492543  0.00000227  0.00000051 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015685 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000002 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.00000020  0.71081123
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00009092

 13  1     4    1  |0 0>        0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000051  0.00000036  0.71492562  0.00000020
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000008  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000006 -0.00000002  0.07658838
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000980

 15  1     6    1  |0 0>        0.43016594 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003
                                0.00000681 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     7    1  |0 0>       -0.00000000 -0.00000012  0.03718476  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00001305 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.03718383  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00026526  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     9    1  |0 0>        0.00000000 -0.03718476 -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000002  0.00000008 -0.02556392  0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001128 -0.00000000 -0.00000000

 20  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.02556393 -0.00000008 -0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000561  0.00000000 -0.00000000 -0.00000000

 21  1    12    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.02503703
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000320

 22  1    13    1  |0 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00516353
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000066

 23  1    14    1  |0 0>        0.00000000 -0.00000001  0.00000000  0.00000000  0.00000002 -0.00000001 -0.02556391 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    15    1  |0 0>       -0.06251594 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000099  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.00000000  0.00000021 -0.00000002  0.00000247  0.50470644  0.00000078 -0.00000000  0.02629361
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.54044182  0.14690749 -0.56396479 -0.00000001 -0.00000008  0.00000005  0.24490307 -0.00000000
                                0.00236696 -0.00001188  0.00014655 -0.00000000  0.00000000 -0.00000000  0.00000693  0.00000000

  3  1     3    1  |1 1>+       0.00000004 -0.00000003 -0.00000005 -0.00000836  0.00000078 -0.50470628 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004671 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00004758 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000001 -0.50470644  0.00000247  0.00000836  0.00000000 -0.00000001

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004671 -0.00000000  0.00000000
                               -0.00000004  0.00000003  0.00000005  0.00000836 -0.00000078  0.50470652  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00049028  0.00004543 -0.00004021 -0.00000000 -0.00000000 -0.00000000  0.00000693  0.00000000
                                0.11194509  0.56186148 -0.15475682  0.00000001 -0.00000024 -0.00000002 -0.24490305 -0.00000000

  7  1     1    1  |1 1>-      -0.00187667 -0.00003355 -0.00010633  0.00000000  0.00000000  0.00000000  0.00000693 -0.00000000
                                0.42849682 -0.41495410 -0.40920800 -0.00000002  0.00000016  0.00000006 -0.24490290 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000021  0.00000002 -0.00000247 -0.50470654 -0.00000078  0.00000000  0.02629358

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00004758 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00000001 -0.50470629  0.00000247  0.00000836 -0.00000000  0.00000001

 10  1     1    1  |0 0>        0.00000006  0.00000004  0.00000007  0.00001159 -0.00000108  0.69910917 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00006471 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000001 -0.00000002 -0.00000001  0.69910921 -0.00000341 -0.00001159  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00006590 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.07658769  0.68798830 -0.12420057  0.00000002 -0.00000030 -0.00000003 -0.00000001  0.00000000
                               -0.00033543 -0.00005563  0.00003227  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000030 -0.00000003  0.00000341  0.69910904  0.00000108  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.71080452  0.12420062  0.68798818  0.00000002 -0.00000003 -0.00000007 -0.00000011  0.00000000
                                0.00311309 -0.00001004 -0.00017877  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000003  0.00000006  0.00000016 -0.00000000  0.00000000  0.00000000  0.90111163  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00002548  0.00000000

 16  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000042
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000011
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.99930841
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000070 -0.00000007  0.04229974 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000392 -0.00000000  0.00000000

 20  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.04229976 -0.00000021 -0.00000070 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000399 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    12    1  |0 0>        0.00516347  0.04071422 -0.01147223  0.00000000 -0.00000002 -0.00000000  0.00000001 -0.00000000
                                0.00002261 -0.00000329  0.00000298  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    13    1  |0 0>        0.02503676 -0.01147225 -0.04071418 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                                0.00010965  0.00000093  0.00001058 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    14    1  |0 0>        0.00000000  0.00000002 -0.00000000  0.00000021  0.04229974  0.00000007 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    15    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.08980746  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000254  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000 -0.00000001 -0.03402110 -0.00000013  0.00000002 -0.00000002  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.02166004 -0.03277326 -0.05482863
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000008  0.00000051

  3  1     3    1  |1 1>+       0.02628797  0.00000000  0.00000002 -0.00000027  0.03402110  0.00000000 -0.00000001  0.00000000
                                0.00054464  0.00000000  0.00000000 -0.00000000  0.00001370 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000041  0.00000000 -0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.02629359 -0.00000013  0.03402114  0.00000027 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00054464 -0.00000000  0.00000000 -0.00000000  0.00001370 -0.00000000 -0.00000000  0.00000000
                                0.02628795  0.00000000 -0.00000002  0.00000027 -0.03402114 -0.00000000  0.00000001 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000001  0.00000051
                                0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.03921251  0.00237153  0.05482862

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000008  0.00000051
                               -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.01755249 -0.03514476  0.05482860

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001  0.03402114  0.00000013 -0.00000002  0.00000002 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000041  0.00000000 -0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.02629360 -0.00000013  0.03402114  0.00000027 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000001  0.00000009 -0.01130966 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000455  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000004 -0.01130967 -0.00000009  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.01118162  0.00169649 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.01130966 -0.00000004  0.00000001 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00169648  0.01118161  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.05436075
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000050

 16  1     7    1  |0 0>       -0.00000000  0.99930841  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00001574 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     8    1  |0 0>        0.99909400  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                                0.02069949  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     9    1  |0 0>        0.00000011 -0.00000042 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1    10    1  |0 0>        0.00000001  0.00000000  0.00000050 -0.00000803  0.99877778  0.00000002 -0.00000016 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00040217 -0.00000000 -0.00000000  0.00000000

 20  1    11    1  |0 0>        0.00000000 -0.00000001 -0.00000385  0.99877786  0.00000803 -0.00000003  0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00008901  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000055  0.00000003 -0.00000003  0.99729371 -0.05442867  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000068 -0.00000013 -0.00000000

 22  1    13    1  |0 0>       -0.00000000  0.00000000  0.00000009 -0.00000003  0.00000016  0.05442867  0.99729371  0.00000006
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000237 -0.00000000

 23  1    14    1  |0 0>        0.00000000 -0.00000000  0.99877786  0.00000385 -0.00000050  0.00000054 -0.00000012 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    15    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006  0.99399516
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000918



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.93%    0.00%    0.00%    0.00%    0.00%   24.41%    0.00%
  2  1     2    1  |1 1>+        27.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.34%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.93%    0.00%   24.41%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   49.93%    0.00%   24.41%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.93%    0.00%   24.41%    0.00%    0.00%
  6  1     3    1  |1 0>         27.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.30%
  7  1     1    1  |1 1>-        27.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.19%
  8  1     2    1  |1 1>-         0.00%   49.93%    0.00%    0.00%    0.00%    0.00%   24.41%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   49.93%    0.00%   24.41%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   51.11%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   51.11%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.53%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   51.11%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.59%
 15  1     6    1  |0 0>         18.50%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |0 0>          0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 22  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 24  1    15    1  |0 0>          0.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%    0.07%
  2  1     2    1  |1 1>+        29.21%    2.16%   31.81%    0.00%    0.00%    0.00%    6.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   25.47%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%
  6  1     3    1  |1 0>          1.25%   31.57%    2.39%    0.00%    0.00%    0.00%    6.00%    0.00%
  7  1     1    1  |1 1>-        18.36%   17.22%   16.75%    0.00%    0.00%    0.00%    6.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%    0.07%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   25.47%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   48.88%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   48.88%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.59%   47.33%    1.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   48.88%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>         50.53%    1.54%   47.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.20%    0.00%
 16  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.86%
 19  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.17%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    13    1  |0 0>          0.06%    0.01%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 24  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.81%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.11%    0.30%
  3  1     3    1  |1 1>+         0.07%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.07%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.30%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.12%    0.30%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.07%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.30%
 16  1     7    1  |0 0>          0.00%   99.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |0 0>         99.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.76%    0.00%    0.00%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%    0.00%   99.76%    0.00%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.46%    0.30%    0.00%
 22  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.30%   99.46%    0.00%
 23  1    14    1  |0 0>          0.00%    0.00%   99.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   98.80%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      308.00       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     4034.60       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     27357.78  11855.35    160.99  13209.80   2090.06     28.37      0.60     12.25
 REAL TIME  *     28142.02 SEC
 DISK USED  *         4.24 GB (local),       75.87 GB (total)
 SF USED    *        37.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy= -20885.612381899227

              CI              CI           MULTI         RHF-SCF
 -20885.52491126 -20885.72472260 -20884.52349346 -20883.98310558
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
