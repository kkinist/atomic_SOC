
 Working directory              : /wrk/irikura/molpro.myeFiaWTjf/
 Global scratch directory       : /wrk/irikura/molpro.myeFiaWTjf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.myeFiaWTjf/

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
 
 NTRIP=12
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 11-Feb-25          TIME: 09:37:52  
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

     Node minimum: 3.670 MB, node maximum: 23.855 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    7881438.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    7881438      RECORD LENGTH: 524288

 Memory used in sort:       8.44 MW

 SORT1 READ   227724943. AND WROTE     1460417. INTEGRALS IN      5 RECORDS. CPU TIME:     1.11 SEC, REAL TIME:     1.13 SEC
 SORT2 READ    23371044. AND WROTE   126247696. INTEGRALS IN    912 RECORDS. CPU TIME:     0.17 SEC, REAL TIME:     0.19 SEC

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
 CPU TIMES  *        12.67     12.45
 REAL TIME  *        13.74 SEC
 DISK USED  *        31.47 MB (local),     1000.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  18  22

 NELEC=   80   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20831.62537618  -20831.62537618     0.00D+00     0.83D+01     0     0       0.04      0.08    start
   2   -20875.85812097     -44.23274480     0.47D-01     0.62D+02     1     0       0.05      0.13    diag
   3   -20880.37169965      -4.51357868     0.10D+00     0.30D+02     2     0       0.04      0.17    diag
   4   -20882.87848462      -2.50678497     0.58D-01     0.32D+02     3     0       0.04      0.21    diag
   5   -20883.75389353      -0.87540891     0.31D-01     0.55D+01     4     0       0.04      0.25    diag
   6   -20883.97645631      -0.22256278     0.13D-01     0.15D+00     5     0       0.05      0.30    diag
   7   -20883.98309537      -0.00663906     0.20D-02     0.62D-01     6     0       0.04      0.34    diag
   8   -20883.98310528      -0.00000991     0.58D-04     0.62D-02     7     0       0.04      0.38    fixocc
   9   -20883.98310558      -0.00000030     0.59D-05     0.12D-03     8     0       0.04      0.42    diag
  10   -20883.98310558      -0.00000000     0.91D-06     0.58D-04     9     0       0.05      0.47    diag/orth
  11   -20883.98310558      -0.00000000     0.36D-06     0.40D-05     9     0       0.04      0.51    diag
  12   -20883.98310558      -0.00000000     0.41D-07     0.65D-06     9     0       0.04      0.55    diag
  13   -20883.98310558       0.00000000     0.36D-08     0.14D-06     0     0       0.05      0.60    diag

 Final occupancy:  21  19

 !RHF STATE 1.1 Energy               -20883.9831055845    
  RHF One-electron energy            -28527.7098371809    
  RHF Two-electron energy            7643.726731596355
  RHF Kinetic energy                  32630.3886099362    
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
    4.1     2.00000   -95.12174     1  1  d2+  0.99986
    5.1     2.00000   -95.12174     1  1  d2-  0.99988
    6.1     2.00000   -95.12174     1  1  d1+  0.94340    1  1  d1-  0.33162
    7.1     2.00000   -95.12174     1  1  d1+ -0.33163    1  1  d1-  0.94341
    8.1     2.00000   -95.12174     1  1  d0   0.99996
    9.1     2.00000   -34.60796     1  4  s    1.41408    1  5  s   -0.84841    1  6  s    1.02200    1 10  s   -0.52597
                                    1 11  s   -0.62901
   10.1     2.00000   -17.02551     1  2  d0   0.97301
   11.1     2.00000   -17.02551     1  2  d2-  0.94844    1  2  d2+ -0.31810
   12.1     2.00000   -17.02551     1  2  d2-  0.30932    1  2  d2+  0.92238
   13.1     2.00000   -17.02551     1  2  d1+  0.99159
   14.1     2.00000   -17.02551     1  2  d1-  0.99146
   15.1     2.00000    -6.76046     1  5  s    0.68867    1  6  s    0.33744
   16.1     2.00000    -1.68972     1  3  d0   1.00450
   17.1     2.00000    -1.68972     1  3  d2-  1.00447
   18.1     2.00000    -1.68972     1  3  d2+  1.00447
   19.1     2.00000    -1.68972     1  3  d1+  1.00045
   20.1     2.00000    -1.68972     1  3  d1-  1.00045
   21.1     2.00000    -1.10721     1  5  s   -0.48103    1  6  s    2.00352    1 10  s   -0.32257    1 11  s   -0.60372
                                    1 12  s   -0.33864
    1.2     2.00000  -506.99834     1  1  px   0.99826
    2.2     2.00000  -506.99834     1  1  py   0.99826
    3.2     2.00000  -506.99834     1  1  pz   0.99917
    4.2     2.00000  -120.58819     1  2  px   1.00630
    5.2     2.00000  -120.58819     1  2  py   1.00630
    6.2     2.00000  -120.58819     1  2  pz   1.00871
    7.2     2.00000   -26.65064     1  3  px   0.96436
    8.2     2.00000   -26.65064     1  3  pz   0.96424
    9.2     2.00000   -26.65064     1  3  py   0.96409
   10.2     2.00000    -6.44894     1  1  f1+  0.96682
   11.2     2.00000    -6.44894     1  1  f0   0.99368
   12.2     2.00000    -6.44894     1  1  f1-  0.95850
   13.2     2.00000    -6.44894     1  1  f2- -0.31136    1  1  f2+  0.94643
   14.2     2.00000    -6.44894     1  1  f2-  0.94944    1  1  f2+  0.30610
   15.2     2.00000    -6.44894     1  1  f3+  0.99395
   16.2     2.00000    -6.44894     1  1  f3-  0.98513
   17.2     2.00000    -4.45660     1  4  pz   1.01180
   18.2     2.00000    -4.45660     1  4  px   1.01136
   19.2     2.00000    -4.45660     1  4  py   1.01137


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
 CPU TIMES  *        13.28      0.61     12.45
 REAL TIME  *        14.38 SEC
 DISK USED  *        33.49 MB (local),        1.01 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  40 (   21   19)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     165 (   84   81)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.223D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.188D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.263D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.262D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.235D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.256D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.123D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.326D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.101D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.114D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.840D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.831D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 4 6 2 1 2   3 5 4 6 1 2 3 5 4 6   1 1 5 3 4 6 2 1 2 5   3 4 6 1 2 4 6 3 513
                                       10 71514 9 81211 1 2   3 5 4 6 7 910131115  14 812 2 3 5 4 6 113  10 7 9111514 812 2 5
                                        3 4 6 11310 911 712   81415 2 5 3 6 4 1 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.413D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.421D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.652D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.651D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.684D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.180D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.232D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.400D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.308D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.286D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.154D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.295D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.290D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.146D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.145D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.706D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 3 2 4   6 510 8 7 9 3 1 2 2   1 3 3 1 2 4 5 810 7   9 6 1 2 3 1 2 310 8
                                        4 5 6 9 7 1 2 3 810   7 9 4 5 6 4 5 7 9 6  10 8 2 1 3 6 810 7 9   4 51820171514161321
                                       111912 2 1 3 7 9 6 4   5 810 7 9 6 810 4 5   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  3903  ( 114 closed/active, 3303 closed/virtual, 0 active/active, 486 active/virtual )
 Total number of variables:    4623
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0 -20884.55103285  -20884.57663751   -0.02560466    0.19161476 0.00001179 0.00000000  0.86E+00      6.87
   2    8   10    0 -20884.57758668  -20884.57770853   -0.00012185    0.01265635 0.00000026 0.00000000  0.57E-01     14.32
   3    5    8    0 -20884.57770896  -20884.57770897   -0.00000000    0.00005943 0.00000001 0.00000000  0.35E-03     20.89
   4    4    4    0 -20884.57770897  -20884.57770897    0.00000000    0.00000001 0.00000001 0.00000000  0.12E-06     26.73

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.10E-07)
                       Final energy: -20884.57770897
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.7029553241    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.93430691
 One electron energy                        -28581.59324897
 Two electron energy                          7696.89029364
 Virial ratio                                    1.64000812
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.7029553232    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.93430700
 One electron energy                        -28581.59324942
 Two electron energy                          7696.89029409
 Virial ratio                                    1.64000812
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.7029553222    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.93430710
 One electron energy                        -28581.59324993
 Two electron energy                          7696.89029460
 Virial ratio                                    1.64000812
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -20884.5330901501    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946726
 One electron energy                        -28561.07939337
 Two electron energy                          7676.54630322
 Virial ratio                                    1.64003537
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -20884.5330901499    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946725
 One electron energy                        -28561.07939324
 Two electron energy                          7676.54630309
 Virial ratio                                    1.64003537
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -20884.5330901487    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946717
 One electron energy                        -28561.07939267
 Two electron energy                          7676.54630252
 Virial ratio                                    1.64003537
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -20884.5330901472    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946709
 One electron energy                        -28561.07939192
 Two electron energy                          7676.54630178
 Virial ratio                                    1.64003537
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -20884.5330901471    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946708
 One electron energy                        -28561.07939185
 Two electron energy                          7676.54630170
 Virial ratio                                    1.64003537
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -20884.5312110283    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.41799209
 One electron energy                        -28562.13518310
 Two electron energy                          7677.60397207
 Virial ratio                                    1.64003260
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -20884.5312110278    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.41799199
 One electron energy                        -28562.13518235
 Two electron energy                          7677.60397132
 Virial ratio                                    1.64003260
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -20884.5312110273    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.41799187
 One electron energy                        -28562.13518134
 Two electron energy                          7677.60397031
 Virial ratio                                    1.64003260
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -20884.5278142376    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946717
 One electron energy                        -28561.07939261
 Two electron energy                          7676.55157837
 Virial ratio                                    1.64003521
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.6682056478    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.85189283
 One electron energy                        -28580.89559980
 Two electron energy                          7696.22739415
 Virial ratio                                    1.64000867
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.6682056476    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.85189285
 One electron energy                        -28580.89559986
 Two electron energy                          7696.22739422
 Virial ratio                                    1.64000867
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.6682056466    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.85189291
 One electron energy                        -28580.89560015
 Two electron energy                          7696.22739450
 Virial ratio                                    1.64000867
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.6682056453    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.85189300
 One electron energy                        -28580.89560053
 Two electron energy                          7696.22739488
 Virial ratio                                    1.64000867
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.6682056451    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.85189300
 One electron energy                        -28580.89560057
 Two electron energy                          7696.22739492
 Virial ratio                                    1.64000867
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.6186570588    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32631.62237500
 One electron energy                        -28578.79247853
 Two electron energy                          7694.17382147
 Virial ratio                                    1.64001166
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -20884.5366074241    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946725
 One electron energy                        -28561.07939324
 Two electron energy                          7676.54278582
 Virial ratio                                    1.64003548
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -20884.5366074228    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946717
 One electron energy                        -28561.07939267
 Two electron energy                          7676.54278525
 Virial ratio                                    1.64003548
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -20884.5366074211    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.27946709
 One electron energy                        -28561.07939192
 Two electron energy                          7676.54278450
 Virial ratio                                    1.64003548
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -20884.5242982124    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.50501327
 One electron energy                        -28562.86387262
 Two electron energy                          7678.33957440
 Virial ratio                                    1.64003068
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -20884.5242982124    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.50501328
 One electron energy                        -28562.86387267
 Two electron energy                          7678.33957446
 Virial ratio                                    1.64003068
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -20884.5242982119    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.50501342
 One electron energy                        -28562.86387386
 Two electron energy                          7678.33957565
 Virial ratio                                    1.64003068
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -20884.5242982118    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.50501354
 One electron energy                        -28562.86387474
 Two electron energy                          7678.33957653
 Virial ratio                                    1.64003068
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -20884.5242982117    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.50501355
 One electron energy                        -28562.86387490
 Two electron energy                          7678.33957668
 Virial ratio                                    1.64003068
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -20884.5113794752    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32630.74078810
 One electron energy                        -28565.00819185
 Two electron energy                          7680.49681237
 Virial ratio                                    1.64002566
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999991
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999778
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000231
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.676589316803
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999876
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000120
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000025
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.323410700922
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000202
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999800
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999998
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.220825938149
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999999905
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000427
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999560
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.779174147887
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000033
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999967
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.789530975449
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000672
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000022532
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     3.999999977574
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     3.210469106510
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999851
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000372
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999778
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.106049662797
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000123
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999999999876
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999980
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.893950304716
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999800
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.000000000259
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999944
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000001
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.098445613644
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000496
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999194
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000385
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.901554198404
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999967
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.000000000034
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999999
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.226440272765
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000000000075
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     3.999999977251
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000022523
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     2.773559631560
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000158
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999851
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999991
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.217361020399
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000002
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999999994
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.782638994362
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999999
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999999944
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000059
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.680728448207
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999600
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000379
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000055
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.319271653709
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999999
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000000001
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.984028751786
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.999999999253
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000217
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     0.999999999903
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     0.015971261929
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     5.999999999999
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     5.999999999998
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000001
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000002
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000001
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000001
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 4 6 2 1 5   3 4 2 6 1 5 3 4 2 6   1 1 2 6 4 5 3 1 2 5   3 4 6 1 2 3 5 4 613
                                       101415 9 712 811 1 2   3 5 4 613101514 9 8  12 711 2 3 5 4 6 113  10 91514 7 81211 2 5
                                        3 4 6 11310 9111514   7 812 2 5 3 4 6 1 2   4 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 2 3 7   9 410 8 6 5 1 2 3 2   3 1 2 3 1 3 2 110 8   5 4 6 7 9 3 2 1 810
                                        7 9 4 5 6 2 1 3 810   7 9 4 5 6 7 9 410 8   6 5 1 2 3 9 7 6 810   4 51820171514161113
                                       211912 1 2 3 7 9 6 4   5 810 9 7 6 810 4 5   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3254.02878     1  1  s    0.95140    1  2  s   -0.30662    1  3  s   -1.07954    1  4  s   -3.05497
                                    1  5  s    6.92522    1  6  s   -9.03716    1  7  s   -0.72218    1  8  s    1.65837
                                    1 10  s    4.60249    1 11  s    5.58663    1 12  s    1.60957
    2.1     2.00000  -587.84291     1  2  s    1.15556    1  3  s    0.54551    1  4  s    1.53780    1  5  s   -3.44958
                                    1  6  s    4.46698    1  7  s    0.35573    1  8  s   -0.83475    1 10  s   -2.27712
                                    1 11  s   -2.76034    1 12  s   -0.79607
    3.1     2.00000  -143.86824     1  3  s    0.69920    1  4  s   -0.83527    1  5  s    1.82848    1  6  s   -2.32581
                                    1  8  s    0.45310    1 10  s    1.18827    1 11  s    1.43590    1 12  s    0.41506
    4.1     2.00000   -94.62185     1  1  d2+  0.99999
    5.1     2.00000   -94.62185     1  1  d2-  0.99999
    6.1     2.00000   -94.62185     1  1  d1+  0.99999
    7.1     2.00000   -94.62185     1  1  d1-  0.99999
    8.1     2.00000   -94.62185     1  1  d0   0.99999
    9.1     2.00000   -34.10839     1  4  s    1.41426    1  5  s   -0.84920    1  6  s    1.02337    1 10  s   -0.52665
                                    1 11  s   -0.62987
   10.1     2.00000   -16.52601     1  2  d2+  1.00032
   11.1     2.00000   -16.52601     1  2  d2-  1.00032
   12.1     2.00000   -16.52601     1  2  d1+  1.00032
   13.1     2.00000   -16.52601     1  2  d0   1.00032
   14.1     2.00000   -16.52601     1  2  d1-  1.00032
   15.1     2.00000    -6.26232     1  5  s    0.70586    1  6  s    0.29759
   16.1     2.00000    -1.19347     1  3  d2+  1.00007
   17.1     2.00000    -1.19347     1  3  d2-  1.00007
   18.1     2.00000    -1.19347     1  3  d1+  1.00007
   19.1     2.00000    -1.19347     1  3  d0   1.00007
   20.1     2.00000    -1.19347     1  3  d1-  1.00007
   21.1     2.00000    -0.66314     1  6  s    1.21155
    1.2     2.00000  -506.49763     1  1  px   0.99917
    2.2     2.00000  -506.49763     1  1  pz   0.99917
    3.2     2.00000  -506.49763     1  1  py   0.99917
    4.2     2.00000  -120.08864     1  2  px   1.00867
    5.2     2.00000  -120.08864     1  2  py   1.00867
    6.2     2.00000  -120.08864     1  2  pz   1.00867
    7.2     2.00000   -26.15173     1  3  px   0.96510
    8.2     2.00000   -26.15173     1  3  py   0.96510
    9.2     2.00000   -26.15173     1  3  pz   0.96510
   10.2     2.00000    -5.94962     1  1  f3+  0.99993
   11.2     2.00000    -5.94962     1  1  f3-  0.99993
   12.2     2.00000    -5.94962     1  1  f1+  0.99993
   13.2     2.00000    -5.94962     1  1  f2+  0.99993
   14.2     2.00000    -5.94962     1  1  f2-  0.99993
   15.2     2.00000    -5.94962     1  1  f0   0.99993
   16.2     2.00000    -5.94962     1  1  f1-  0.99993
   17.2     2.00000    -3.95896     1  4  px   1.00097
   18.2     2.00000    -3.95896     1  4  py   1.00097
   19.2     2.00000    -3.95896     1  4  pz   1.00097
   20.2     0.44444    -0.11907     1  9  py   0.40079    1 10  py   0.57989
   21.2     0.44444    -0.11907     1  9  pz   0.40079    1 10  pz   0.57989
   22.2     0.44444    -0.11907     1  9  px   0.40079    1 10  px   0.57989
   23.2     0.22223     0.01124     1 12  py   0.84766    1 13  py   0.34375
   24.2     0.22223     0.01124     1 12  pz   0.84766    1 13  pz   0.34375
   25.2     0.22223     0.01124     1 12  px   0.84766    1 13  px   0.34375
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a0a000         0.99381196     -0.00001214      0.00000297      0.00000000     -0.00000000     -0.00000000     -0.00000003
 0aa000         0.00001214      0.99381196     -0.00001482     -0.00000000     -0.00000000     -0.00000006     -0.00000000
 aa0000        -0.00000297      0.00001482      0.99381196     -0.00000000      0.00000003      0.00000000     -0.00000000
 0a00a0        -0.00000000     -0.00000000      0.00000000      0.79400257      0.00000147      0.00000076     -0.00000056
 00a00a         0.00000000     -0.00000000     -0.00000000     -0.23216741     -0.00000003     -0.00000068     -0.00000660
 0a000a         0.00000096      0.07850718     -0.00000117     -0.00000057     -0.00000452      0.70710728      0.00000062
 a0000a         0.07850718     -0.00000096      0.00000023      0.00000207     -0.00000040     -0.00000062      0.70710703
 0a0a00         0.00000023     -0.00000117     -0.07850719     -0.00000141      0.70710703      0.00000452      0.00000040
 a000a0        -0.00000023      0.00000117      0.07850721     -0.00000141      0.70710653      0.00000452      0.00000040
 00aa00        -0.07850718      0.00000096     -0.00000023      0.00000207     -0.00000040     -0.00000062      0.70710653
 00a0a0        -0.00000096     -0.07850720      0.00000117     -0.00000057     -0.00000452      0.70710628      0.00000062
 a00a00        -0.00000000      0.00000000      0.00000000     -0.56183468     -0.00000145     -0.00000008      0.00000715
 
 Energy:   -20884.70295532 -20884.70295532 -20884.70295532 -20884.53309015 -20884.53309015 -20884.53309015 -20884.53309015

 State:              8               9              10              11              12
 a0a000         0.00000000      0.00000014     -0.00000083     -0.11101290      0.00000000
 0aa000         0.00000000     -0.00000157      0.11101292     -0.00000083      0.00000000
 aa0000        -0.00000000     -0.11101293     -0.00000157     -0.00000014     -0.00000000
 0a00a0        -0.19033363     -0.00000000      0.00000000      0.00000000      0.57735000
 00a00a         0.78279286     -0.00000000     -0.00000000      0.00000000      0.57735053
 0a000a         0.00000045      0.00000994     -0.70273028      0.00000527      0.00000000
 a0000a         0.00000657     -0.00000086      0.00000527      0.70273053      0.00000000
 0a0a00        -0.00000039     -0.70273053     -0.00000994     -0.00000086     -0.00000000
 a000a0        -0.00000039      0.70273103      0.00000994      0.00000086      0.00000000
 00aa00         0.00000657      0.00000086     -0.00000527     -0.70273104      0.00000000
 00a0a0         0.00000045     -0.00000994      0.70273128     -0.00000527      0.00000000
 a00a00        -0.59245966      0.00000000     -0.00000000     -0.00000000      0.57735028
 
 Energy:   -20884.53309015 -20884.53121103 -20884.53121103 -20884.53121103 -20884.52781424
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 002000         0.78283698      0.00002011      0.00000359      0.00000040     -0.18923347      0.55226894      0.00000000
 020000        -0.22753748     -0.00000105     -0.00000360      0.00001354      0.77257340      0.55226898     -0.00000000
 a0b000        -0.00001905      0.69748280     -0.00000779      0.00000180     -0.00000466      0.00000000     -0.00000000
 b0a000         0.00001905     -0.69748280      0.00000779     -0.00000180      0.00000466     -0.00000000      0.00000000
 0ab000        -0.00000260      0.00000779      0.69748280      0.00000833      0.00000248      0.00000000      0.00000000
 0ba000         0.00000260     -0.00000779     -0.69748280     -0.00000833     -0.00000248     -0.00000000     -0.00000000
 ba0000         0.00000357      0.00000180      0.00000833     -0.69748280      0.00001328      0.00000000      0.00000000
 ab0000        -0.00000357     -0.00000180     -0.00000833      0.69748280     -0.00001328     -0.00000000     -0.00000000
 200000        -0.55529944     -0.00001906      0.00000001     -0.00001395     -0.58333998      0.55226896      0.00000000
 0b00a0         0.02680388      0.00000012      0.00000042     -0.00000160     -0.09100903     -0.11894684     -0.00000000
 0a00b0        -0.02680388     -0.00000012     -0.00000042      0.00000160      0.09100903      0.11894684      0.00000000
 00a00b         0.09221804      0.00000237      0.00000042      0.00000005     -0.02229166      0.11894679      0.00000000
 00b00a        -0.09221804     -0.00000237     -0.00000042     -0.00000005      0.02229166     -0.11894679     -0.00000000
 0b000a         0.00000031     -0.00000092     -0.08216334     -0.00000098     -0.00000029     -0.00000000     -0.00000288
 0a000b        -0.00000031      0.00000092      0.08216334      0.00000098      0.00000029      0.00000000      0.00000288
 0b0a00         0.00000042      0.00000021      0.00000098     -0.08216335      0.00000156     -0.00000000      0.50000004
 0a0b00        -0.00000042     -0.00000021     -0.00000098      0.08216335     -0.00000156      0.00000000     -0.50000004
 a0000b        -0.00000224      0.08216334     -0.00000092      0.00000021     -0.00000055      0.00000000     -0.00000020
 b0000a         0.00000224     -0.08216334      0.00000092     -0.00000021      0.00000055     -0.00000000      0.00000020
 00ab00        -0.00000224      0.08216334     -0.00000092      0.00000021     -0.00000055      0.00000000      0.00000020
 00ba00         0.00000224     -0.08216334      0.00000092     -0.00000021      0.00000055     -0.00000000     -0.00000020
 b000a0         0.00000042      0.00000021      0.00000098     -0.08216336      0.00000156      0.00000000     -0.49999996
 a000b0        -0.00000042     -0.00000021     -0.00000098      0.08216336     -0.00000156     -0.00000000      0.49999996
 00b0a0         0.00000031     -0.00000092     -0.08216336     -0.00000098     -0.00000029      0.00000000      0.00000288
 00a0b0        -0.00000031      0.00000092      0.08216336      0.00000098      0.00000029     -0.00000000     -0.00000288
 a00b00        -0.06541417     -0.00000225      0.00000000     -0.00000164     -0.06871734      0.11894681     -0.00000000
 b00a00         0.06541417      0.00000225     -0.00000000      0.00000164      0.06871734     -0.11894681      0.00000000
 
 Energy:   -20884.66820565 -20884.66820565 -20884.66820565 -20884.66820565 -20884.66820565 -20884.61865706 -20884.53660742

 State:              8               9              10              11              12              13              14
 002000         0.00000000      0.00000000     -0.12020456     -0.00000061     -0.00000065     -0.00000028      0.05961031
 020000        -0.00000000      0.00000000      0.00847825     -0.00000145      0.00000072      0.00000246     -0.13390540
 a0b000        -0.00000000     -0.00000000      0.00000125     -0.11619766     -0.00000100     -0.00000049      0.00000133
 b0a000         0.00000000      0.00000000     -0.00000125      0.11619766      0.00000100      0.00000049     -0.00000133
 0ab000        -0.00000000     -0.00000000      0.00000033      0.00000100     -0.11619767     -0.00001007     -0.00000060
 0ba000         0.00000000      0.00000000     -0.00000033     -0.00000100      0.11619767      0.00001007      0.00000060
 ba0000         0.00000000      0.00000000      0.00000081     -0.00000049     -0.00001007      0.11619768      0.00000218
 ab0000        -0.00000000     -0.00000000     -0.00000081      0.00000049      0.00001007     -0.11619768     -0.00000218
 200000        -0.00000000     -0.00000000      0.11172633      0.00000206     -0.00000007     -0.00000218      0.07429508
 0b00a0        -0.00000000      0.00000000      0.03598604     -0.00000613      0.00000305      0.00001043     -0.56836343
 0a00b0         0.00000000     -0.00000000     -0.03598604      0.00000613     -0.00000305     -0.00001043      0.56836343
 00a00b        -0.00000000     -0.00000000      0.51021028      0.00000260      0.00000275      0.00000119     -0.25301695
 00b00a         0.00000000      0.00000000     -0.51021028     -0.00000260     -0.00000275     -0.00000119      0.25301695
 0b000a        -0.50000007     -0.00000038      0.00000139      0.00000425     -0.49320277     -0.00004273     -0.00000256
 0a000b         0.50000007      0.00000038     -0.00000139     -0.00000425      0.49320277      0.00004273      0.00000256
 0b0a00        -0.00000288      0.00000020     -0.00000345      0.00000207      0.00004273     -0.49320280     -0.00000927
 0a0b00         0.00000288     -0.00000020      0.00000345     -0.00000207     -0.00004273      0.49320280      0.00000927
 a0000b        -0.00000038      0.50000003     -0.00000532      0.49320281      0.00000425      0.00000207     -0.00000566
 b0000a         0.00000038     -0.50000003      0.00000532     -0.49320281     -0.00000425     -0.00000207      0.00000566
 00ab00         0.00000038     -0.49999997     -0.00000532      0.49320288      0.00000425      0.00000207     -0.00000566
 00ba00        -0.00000038      0.49999997      0.00000532     -0.49320288     -0.00000425     -0.00000207      0.00000566
 b000a0         0.00000288     -0.00000020     -0.00000345      0.00000207      0.00004273     -0.49320288     -0.00000927
 a000b0        -0.00000288      0.00000020      0.00000345     -0.00000207     -0.00004273      0.49320288      0.00000927
 00b0a0         0.49999993      0.00000038      0.00000139      0.00000425     -0.49320291     -0.00004273     -0.00000256
 00a0b0        -0.49999993     -0.00000038     -0.00000139     -0.00000425      0.49320291      0.00004273      0.00000256
 a00b00        -0.00000000      0.00000000     -0.47422417     -0.00000873      0.00000030      0.00000925     -0.31534665
 b00a00         0.00000000     -0.00000000      0.47422417      0.00000873     -0.00000030     -0.00000925      0.31534665
 
 Energy:   -20884.53660742 -20884.53660742 -20884.52429821 -20884.52429821 -20884.52429821 -20884.52429821 -20884.52429821

 State:             15
 002000        -0.16824562
 020000        -0.16824570
 a0b000        -0.00000000
 b0a000         0.00000000
 0ab000        -0.00000000
 0ba000         0.00000000
 ba0000         0.00000000
 ab0000        -0.00000000
 200000        -0.16824565
 0b00a0        -0.39052660
 0a00b0         0.39052660
 00a00b         0.39052647
 00b00a        -0.39052647
 0b000a        -0.00000000
 0a000b         0.00000000
 0b0a00        -0.00000000
 0a0b00         0.00000000
 a0000b         0.00000000
 b0000a        -0.00000000
 00ab00         0.00000000
 00ba00        -0.00000000
 b000a0        -0.00000000
 a000b0         0.00000000
 00b0a0        -0.00000000
 00a0b0         0.00000000
 a00b00         0.39052651
 b00a00        -0.39052651
 
 Energy:   -20884.51137948
 


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
 CPU TIMES  *        41.13     27.85      0.61     12.45
 REAL TIME  *        47.01 SEC
 DISK USED  *       309.61 MB (local),        5.32 GB (total)
 SF USED    *       660.25 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.70296   2.0
    -20884.70296   2.0
    -20884.70296   2.0
    -20884.53309   6.0
    -20884.53309   6.0
    -20884.53309   6.0
    -20884.53309   6.0
    -20884.53309   6.0
    -20884.53121   2.0
    -20884.53121   2.0
    -20884.53121   2.0
    -20884.52781   0.0
    -20884.66821   6.0
    -20884.66821   6.0
    -20884.66821   6.0
    -20884.66821   6.0
    -20884.66821   6.0
    -20884.61866   0.0
    -20884.53661   2.0
    -20884.53661   2.0
    -20884.53661   2.0
    -20884.52430   6.0
    -20884.52430   6.0
    -20884.52430   6.0
    -20884.52430   6.0
    -20884.52430   6.0
    -20884.51138   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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

 Integral transformation finished. Total CPU:   1.77 sec, npass=  1  Memory used:   7.03 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.70295532
     2    -20884.70295532
     3    -20884.70295532
     4    -20884.53309015
     5    -20884.53309015
     6    -20884.53309015
     7    -20884.53309015
     8    -20884.53309015
     9    -20884.53121103
    10    -20884.53121103
    11    -20884.53121103
    12    -20884.52781424

 Number of blocks in overlap matrix:  3605   Smallest eigenvalue:  0.99D+00
 Number of N-2 electron functions:    3673
 Number of N-1 electron functions:   39123

 Number of internal configurations:                24480
 Number of singly external configurations:       3226734
 Number of doubly external configurations:      25016430
 Total number of contracted configurations:     28267644
 Total number of uncontracted configurations:  135239799

 Diagonal Coupling coefficients finished.               Storage:  24329884 words, CPU-Time:     54.72 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4587816 words, CPU-time:     10.27 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.70295532     0.00000000    -1.31441912  0.52D-01  0.14D+00    77.58
    1     2     2     1.00000000     0.00000000-20884.70295532     0.00000000    -1.31430974  0.51D-01  0.14D+00    77.58
    1     3     3     1.00000000     0.00000000-20884.70295532     0.00000000    -1.31455927  0.52D-01  0.14D+00    77.58
    1     4     4     1.00000000     0.00000000-20884.53309015     0.00000000    -1.26661684  0.43D-01  0.12D+00    77.58
    1     5     5     1.00000000     0.00000000-20884.53309015     0.00000000    -1.26672591  0.43D-01  0.12D+00    77.58
    1     6     6     1.00000000     0.00000000-20884.53309015     0.00000000    -1.26667704  0.43D-01  0.12D+00    77.58
    1     7     7     1.00000000     0.00000000-20884.53309015     0.00000000    -1.26667579  0.43D-01  0.12D+00    77.58
    1     8     8     1.00000000     0.00000000-20884.53309015     0.00000000    -1.26658802  0.43D-01  0.12D+00    77.58
    1     9     9     1.00000000     0.00000000-20884.53121103     0.00000000    -1.26937444  0.42D-01  0.12D+00    77.58
    1    10    10     1.00000000     0.00000000-20884.53121103     0.00000000    -1.26932667  0.42D-01  0.12D+00    77.58
    1    11    11     1.00000000     0.00000000-20884.53121103     0.00000000    -1.26932892  0.42D-01  0.12D+00    77.58
    1    12    12     1.00000000     0.00000000-20884.52781424     0.00000000    -1.26728069  0.42D-01  0.12D+00    77.58
    2     1     1     1.10556499    -0.98635754-20885.68931286    -0.98635754    -0.03700775  0.50D-02  0.29D-02  1641.42
    2     2     2     1.10566510    -0.98623483-20885.68919015    -0.98623483    -0.03713933  0.51D-02  0.29D-02  1641.42
    2     3     3     1.10573742    -0.98613309-20885.68908841    -0.98613309    -0.03725525  0.51D-02  0.29D-02  1641.42
    2     4     4     1.09609428    -0.98137241-20885.51446256    -0.98137241    -0.02879274  0.32D-02  0.19D-02  1641.42
    2     5     5     1.09612238    -0.98133833-20885.51442848    -0.98133833    -0.02883417  0.32D-02  0.19D-02  1641.42
    2     6     6     1.09612668    -0.98133104-20885.51442119    -0.98133104    -0.02883761  0.33D-02  0.19D-02  1641.42
    2     7     7     1.09613132    -0.98132851-20885.51441865    -0.98132851    -0.02884268  0.33D-02  0.19D-02  1641.42
    2     8     8     1.09615475    -0.98129755-20885.51438769    -0.98129755    -0.02887909  0.33D-02  0.19D-02  1641.42
    2     9     9     1.09579697    -0.98155675-20885.51276778    -0.98155675    -0.02925762  0.33D-02  0.19D-02  1641.42
    2    10    10     1.09581266    -0.98154207-20885.51275310    -0.98154207    -0.02927303  0.33D-02  0.19D-02  1641.42
    2    11    11     1.09582659    -0.98151740-20885.51272843    -0.98151740    -0.02930121  0.33D-02  0.19D-02  1641.42
    2    12    12     1.09629668    -0.98158154-20885.50939578    -0.98158154    -0.02894129  0.32D-02  0.20D-02  1641.42
    3     1     1     1.08708537    -1.02083353-20885.72378886    -0.03447600    -0.00057954  0.57D-04  0.49D-04  3212.11
    3     2     2     1.08708035    -1.02083141-20885.72378673    -0.03459658    -0.00058178  0.57D-04  0.49D-04  3212.11
    3     3     3     1.08707790    -1.02082897-20885.72378429    -0.03469588    -0.00058448  0.58D-04  0.49D-04  3212.11
    3     4     4     1.08387751    -1.00835035-20885.54144050    -0.02697794    -0.00044254  0.45D-04  0.27D-04  3212.11
    3     5     5     1.08387602    -1.00834976-20885.54143991    -0.02701143    -0.00044318  0.45D-04  0.27D-04  3212.11
    3     6     6     1.08387847    -1.00834950-20885.54143965    -0.02701847    -0.00044350  0.45D-04  0.27D-04  3212.11
    3     7     7     1.08387951    -1.00834949-20885.54143964    -0.02702098    -0.00044351  0.45D-04  0.27D-04  3212.11
    3     8     8     1.08387784    -1.00834893-20885.54143907    -0.02705138    -0.00044412  0.45D-04  0.28D-04  3212.11
    3     9     9     1.08369173    -1.00884164-20885.54005267    -0.02728489    -0.00044399  0.38D-04  0.28D-04  3212.11
    3    10    10     1.08369078    -1.00884153-20885.54005256    -0.02729946    -0.00044411  0.38D-04  0.28D-04  3212.11
    3    11    11     1.08369020    -1.00884101-20885.54005204    -0.02732361    -0.00044468  0.38D-04  0.29D-04  3212.11
    3    12    12     1.08399718    -1.00866948-20885.53648371    -0.02708794    -0.00043576  0.36D-04  0.30D-04  3212.11
    4     1     1     1.08695650    -1.02129327-20885.72424859    -0.00045974    -0.00020083  0.47D-05  0.75D-05  4778.86
    4     2     2     1.08695752    -1.02129323-20885.72424855    -0.00046182    -0.00020078  0.47D-05  0.75D-05  4778.86
    4     3     3     1.08695914    -1.02129322-20885.72424854    -0.00046425    -0.00020062  0.47D-05  0.75D-05  4778.86
    4     4     4     1.08382583    -1.00866644-20885.54175659    -0.00031609    -0.00017134  0.44D-05  0.66D-05  4778.86
    4     5     5     1.08382560    -1.00866644-20885.54175659    -0.00031668    -0.00017144  0.44D-05  0.66D-05  4778.86
    4     6     6     1.08382620    -1.00866643-20885.54175658    -0.00031693    -0.00017134  0.44D-05  0.66D-05  4778.86
    4     7     7     1.08382503    -1.00866641-20885.54175656    -0.00031693    -0.00017132  0.44D-05  0.66D-05  4778.86
    4     8     8     1.08382466    -1.00866640-20885.54175655    -0.00031748    -0.00017133  0.44D-05  0.66D-05  4778.86
    4     9     9     1.08368203    -1.00915920-20885.54037023    -0.00031756    -0.00016794  0.34D-05  0.65D-05  4778.86
    4    10    10     1.08368255    -1.00915920-20885.54037022    -0.00031766    -0.00016787  0.34D-05  0.65D-05  4778.86
    4    11    11     1.08368220    -1.00915919-20885.54037022    -0.00031819    -0.00016789  0.34D-05  0.65D-05  4778.86
    4    12    12     1.08396378    -1.00897826-20885.53679250    -0.00030878    -0.00016622  0.31D-05  0.69D-05  4778.86
    5     1     1     1.08698429    -1.02136799-20885.72432331    -0.00007472    -0.00000612  0.12D-05  0.36D-06  6347.40
    5     2     2     1.08698380    -1.02136798-20885.72432331    -0.00007476    -0.00000612  0.12D-05  0.36D-06  6347.40
    5     3     3     1.08698335    -1.02136796-20885.72432329    -0.00007474    -0.00000615  0.12D-05  0.36D-06  6347.40
    5     4     4     1.08386483    -1.00873554-20885.54182569    -0.00006911    -0.00000536  0.99D-06  0.30D-06  6347.40
    5     5     5     1.08386494    -1.00873554-20885.54182569    -0.00006911    -0.00000537  0.99D-06  0.30D-06  6347.40
    5     6     6     1.08386543    -1.00873554-20885.54182569    -0.00006910    -0.00000537  0.99D-06  0.30D-06  6347.40
    5     7     7     1.08386546    -1.00873554-20885.54182569    -0.00006912    -0.00000537  0.99D-06  0.30D-06  6347.40
    5     8     8     1.08386556    -1.00873554-20885.54182569    -0.00006914    -0.00000538  0.99D-06  0.30D-06  6347.40
    5     9     9     1.08373626    -1.00922642-20885.54043745    -0.00006722    -0.00000512  0.86D-06  0.31D-06  6347.40
    5    10    10     1.08373637    -1.00922642-20885.54043745    -0.00006722    -0.00000512  0.86D-06  0.31D-06  6347.40
    5    11    11     1.08373623    -1.00922642-20885.54043745    -0.00006723    -0.00000512  0.86D-06  0.31D-06  6347.40
    5    12    12     1.08400946    -1.00904523-20885.53685946    -0.00006697    -0.00000494  0.77D-06  0.33D-06  6347.40
    6     1     1     1.08689674    -1.02137364-20885.72432897    -0.00000565    -0.00000078  0.41D-07  0.29D-07  7913.24
    6     2     2     1.08689654    -1.02137364-20885.72432897    -0.00000566    -0.00000078  0.41D-07  0.29D-07  7913.24
    6     3     3     1.08689646    -1.02137364-20885.72432897    -0.00000568    -0.00000078  0.41D-07  0.29D-07  7913.24
    6     4     4     1.08381225    -1.00874029-20885.54183044    -0.00000475    -0.00000079  0.51D-07  0.27D-07  7913.24
    6     5     5     1.08381213    -1.00874029-20885.54183044    -0.00000475    -0.00000079  0.51D-07  0.27D-07  7913.24
    6     6     6     1.08381232    -1.00874029-20885.54183044    -0.00000476    -0.00000079  0.51D-07  0.27D-07  7913.24
    6     7     7     1.08381229    -1.00874029-20885.54183044    -0.00000475    -0.00000079  0.51D-07  0.27D-07  7913.24
    6     8     8     1.08381213    -1.00874029-20885.54183044    -0.00000475    -0.00000079  0.51D-07  0.27D-07  7913.24
    6     9     9     1.08369213    -1.00923094-20885.54044197    -0.00000452    -0.00000074  0.37D-07  0.27D-07  7913.24
    6    10    10     1.08369218    -1.00923094-20885.54044197    -0.00000452    -0.00000074  0.37D-07  0.27D-07  7913.24
    6    11    11     1.08369214    -1.00923094-20885.54044197    -0.00000452    -0.00000074  0.37D-07  0.27D-07  7913.24
    6    12    12     1.08396216    -1.00904956-20885.53686380    -0.00000433    -0.00000073  0.34D-07  0.27D-07  7913.24
    7     1     1     1.08689820    -1.02137396-20885.72432928    -0.00000032    -0.00000013  0.12D-07  0.92D-08  9481.92
    7     2     2     1.08689809    -1.02137396-20885.72432928    -0.00000032    -0.00000013  0.12D-07  0.92D-08  9481.92
    7     3     3     1.08689808    -1.02137396-20885.72432928    -0.00000032    -0.00000013  0.12D-07  0.93D-08  9481.92
    7     4     4     1.08381113    -1.00874062-20885.54183077    -0.00000033    -0.00000013  0.18D-07  0.73D-08  9481.92
    7     5     5     1.08381120    -1.00874062-20885.54183077    -0.00000033    -0.00000013  0.18D-07  0.73D-08  9481.92
    7     6     6     1.08381124    -1.00874062-20885.54183077    -0.00000033    -0.00000013  0.18D-07  0.73D-08  9481.92
    7     7     7     1.08381122    -1.00874062-20885.54183077    -0.00000033    -0.00000013  0.18D-07  0.73D-08  9481.92
    7     8     8     1.08381112    -1.00874062-20885.54183077    -0.00000033    -0.00000013  0.18D-07  0.73D-08  9481.92
    7     9     9     1.08369259    -1.00923124-20885.54044227    -0.00000030    -0.00000012  0.14D-07  0.76D-08  9481.92
    7    10    10     1.08369262    -1.00923124-20885.54044227    -0.00000030    -0.00000012  0.14D-07  0.76D-08  9481.92
    7    11    11     1.08369260    -1.00923124-20885.54044227    -0.00000030    -0.00000012  0.14D-07  0.76D-08  9481.92
    7    12    12     1.08396162    -1.00904986-20885.53686410    -0.00000030    -0.00000012  0.13D-07  0.73D-08  9481.92
    8     1     1     1.08690836    -1.02137405-20885.72432938    -0.00000009    -0.00000002  0.12D-08  0.69D-09 11049.75
    8     2     2     1.08690833    -1.02137405-20885.72432938    -0.00000009    -0.00000002  0.12D-08  0.69D-09 11049.75
    8     3     3     1.08690835    -1.02137406-20885.72432938    -0.00000009    -0.00000002  0.12D-08  0.69D-09 11049.75
    8     4     4     1.08381653    -1.00874072-20885.54183087    -0.00000010    -0.00000002  0.14D-08  0.84D-09 11049.75
    8     5     5     1.08381655    -1.00874072-20885.54183087    -0.00000010    -0.00000002  0.14D-08  0.84D-09 11049.75
    8     6     6     1.08381656    -1.00874072-20885.54183087    -0.00000010    -0.00000002  0.14D-08  0.84D-09 11049.75
    8     7     7     1.08381655    -1.00874072-20885.54183086    -0.00000010    -0.00000002  0.14D-08  0.84D-09 11049.75
    8     8     8     1.08381652    -1.00874072-20885.54183086    -0.00000010    -0.00000002  0.14D-08  0.84D-09 11049.75
    8     9     9     1.08369916    -1.00923133-20885.54044236    -0.00000009    -0.00000002  0.10D-08  0.80D-09 11049.75
    8    10    10     1.08369917    -1.00923133-20885.54044236    -0.00000009    -0.00000002  0.10D-08  0.80D-09 11049.75
    8    11    11     1.08369916    -1.00923133-20885.54044236    -0.00000009    -0.00000002  0.10D-08  0.80D-09 11049.75
    8    12    12     1.08396733    -1.00904995-20885.53686418    -0.00000009    -0.00000002  0.98D-09  0.79D-09 11049.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  55.4%
 P   0.4%  17.9%   7.5%

 Initialization:   0.6%
 Other:           17.3%

 Total CPU:    11049.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0000          -0.0000000   0.9548686  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                                   0.0820705   0.0000000  -0.0000000   0.0000000
 22222222222222222/0/000          -0.0000000   0.0000000   0.9548686  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                                  -0.0000000   0.0000000  -0.0820704   0.0000000
 222222222222222220//000           0.9548686   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000
                                   0.0000000  -0.0820704  -0.0000000   0.0000000
 222222222222222220/00/0          -0.0000000   0.0000000  -0.0000000   0.7711592  -0.0000000  -0.0000000  -0.0000000  -0.1367753
                                  -0.0000000   0.0000000  -0.0000000   0.5537560
 2222222222222222200/00/           0.0000000  -0.0000000   0.0000000  -0.2671285  -0.0000000   0.0000000   0.0000000   0.7362307
                                   0.0000000  -0.0000000   0.0000000   0.5537566
 222222222222222220/000/           0.0583502   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6782670  -0.0000000  -0.0000000
                                  -0.0000000   0.6758379  -0.0000000   0.0000000
 222222222222222220/0/00          -0.0000000  -0.0583502   0.0000000   0.0000000   0.6782667   0.0000000   0.0000000  -0.0000000
                                   0.6758381  -0.0000000   0.0000000   0.0000000
 22222222222222222/0000/           0.0000000   0.0000000   0.0583502  -0.0000000  -0.0000000   0.0000000   0.6782666  -0.0000000
                                  -0.0000000  -0.0000000   0.6758383   0.0000000
 2222222222222222200//00          -0.0000000  -0.0000000  -0.0583502   0.0000000  -0.0000000  -0.0000000   0.6782661  -0.0000000
                                   0.0000000   0.0000000  -0.6758388  -0.0000000
 22222222222222222/000/0           0.0000000   0.0583502   0.0000000  -0.0000000   0.6782659  -0.0000000   0.0000000   0.0000000
                                  -0.6758390   0.0000000   0.0000000   0.0000000
 2222222222222222200/0/0          -0.0583502   0.0000000  -0.0000000   0.0000000   0.0000000   0.6782657  -0.0000000  -0.0000000
                                  -0.0000000  -0.6758392  -0.0000000  -0.0000000
 22222222222222222/00/00          -0.0000000   0.0000000  -0.0000000  -0.5040301   0.0000000  -0.0000000  -0.0000000  -0.5994558
                                  -0.0000000   0.0000000  -0.0000000   0.5537564

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958133   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.024007
             0.000000   -0.000000
 2           0.000000    0.000000    0.958133    0.000000    0.000000    0.000000    0.000000   -0.000000    0.024007   -0.000000
             0.000000   -0.000000
 3           0.958133    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.024007   -0.000000
 4          -0.000000    0.000000   -0.000000    0.957501   -0.000000    0.000000    0.000000   -0.057285    0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.959213    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.959213    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.959213    0.000000    0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000    0.057285    0.000000   -0.000000   -0.000000    0.957501   -0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000000    0.000000   -0.024552   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958978    0.000000
            -0.000000    0.000000
 10          0.000000    0.024552    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958978
            -0.000000   -0.000000
 11          0.024552   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.958978   -0.000000
 12          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.959134

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958434   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000262
             0.000000   -0.000000
 2          -0.000000    0.958434    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000262    0.000000
             0.000000    0.000000
 3           0.000000    0.000000    0.958434   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000262   -0.000000
 4           0.000000    0.000000   -0.000000    0.959213    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.959213   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.959213    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.959213   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959213   -0.000000    0.000000
             0.000000   -0.000000
 9           0.000000   -0.000262    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959293   -0.000000
            -0.000000    0.000000
 10          0.000262    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.959293
            -0.000000    0.000000
 11          0.000000    0.000000    0.000262   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.959293    0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.959134


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95813302 (fixed)   0.95843375 (relaxed)   0.95843370 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157371   -0.00365129   -0.88881058
 Singles      0.01321204   -0.05540546   -0.06329024
 Pairs        0.07383309    0.00000000   -0.06927324
 Total        1.08861884   -0.05905674   -1.02137405
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70284521
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.09640574
 One electron energy               -28577.33928946
 Two electron energy                 7691.61496009
 Virial quotient                       -0.64005586
 Correlation energy                    -1.02148417
 !MRCI STATE 1.1 Energy              -20885.7243293778    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81485212 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81485201 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81485212 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81670700 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670687 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81670700 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95813304 (fixed)   0.95843377 (relaxed)   0.95843372 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157371   -0.00365129   -0.88881062
 Singles      0.01321200   -0.05540544   -0.06329020
 Pairs        0.07383310    0.00000000   -0.06927323
 Total        1.08861881   -0.05905672   -1.02137405
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70284521
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.09640210
 One electron energy               -28577.33928419
 Two electron energy                 7691.61495481
 Virial quotient                       -0.64005586
 Correlation energy                    -1.02148417
 !MRCI STATE 2.1 Energy              -20885.7243293775    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81485209 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81485197 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81485209 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81670696 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670683 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81670696 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95813303 (fixed)   0.95843376 (relaxed)   0.95843371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157371   -0.00365129   -0.88881061
 Singles      0.01321202   -0.05540544   -0.06329021
 Pairs        0.07383310    0.00000000   -0.06927324
 Total        1.08861883   -0.05905673   -1.02137406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.70284521
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.09640491
 One electron energy               -28577.33928788
 Two electron energy                 7691.61495851
 Virial quotient                       -0.64005586
 Correlation energy                    -1.02148417
 !MRCI STATE 3.1 Energy              -20885.7243293775    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.81485211 (Davidson, fixed reference)
 Cluster corrected energies        -20885.81485199 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.81485211 (Davidson, rotated reference)

 Cluster corrected energies        -20885.81670698 (Pople, fixed reference)
 Cluster corrected energies        -20885.81670685 (Pople, relaxed reference)
 Cluster corrected energies        -20885.81670698 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95750139 (fixed)   0.95921347 (relaxed)   0.95921347 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00279853   -0.00658462   -0.87529068
 Singles      0.01426859   -0.06025428   -0.06868314
 Pairs        0.06978250   -0.00000009   -0.06476690
 Total        1.08684962   -0.06683899   -1.00874072
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53309015
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36997132
 One electron energy               -28559.51029735
 Two electron energy                 7673.96846648
 Virial quotient                       -0.64006451
 Correlation energy                    -1.00874072
 !MRCI STATE 4.1 Energy              -20885.5418308679    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62943962 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62943962 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62943962 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63108559 (Pople, fixed reference)
 Cluster corrected energies        -20885.63108559 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63108559 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95921346 (fixed)   0.95921346 (relaxed)   0.95921346 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00279853   -0.00658462   -0.87529074
 Singles      0.01426861   -0.06025428   -0.06868315
 Pairs        0.06978251    0.00000000   -0.06476683
 Total        1.08684965   -0.06683890   -1.00874072
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53309015
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36997497
 One electron energy               -28559.51030722
 Two electron energy                 7673.96847635
 Virial quotient                       -0.64006451
 Correlation energy                    -1.00874072
 !MRCI STATE 5.1 Energy              -20885.5418308674    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62943965 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62943965 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62943965 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63108562 (Pople, fixed reference)
 Cluster corrected energies        -20885.63108562 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63108562 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95921346 (fixed)   0.95921346 (relaxed)   0.95921346 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00279853   -0.00658462   -0.87529073
 Singles      0.01426862   -0.06025429   -0.06868316
 Pairs        0.06978250    0.00000000   -0.06476683
 Total        1.08684965   -0.06683891   -1.00874072
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53309015
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36997599
 One electron energy               -28559.51030781
 Two electron energy                 7673.96847694
 Virial quotient                       -0.64006451
 Correlation energy                    -1.00874072
 !MRCI STATE 6.1 Energy              -20885.5418308665    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62943965 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62943965 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62943965 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63108562 (Pople, fixed reference)
 Cluster corrected energies        -20885.63108562 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63108562 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95921346 (fixed)   0.95921346 (relaxed)   0.95921346 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00279853   -0.00658462   -0.87529074
 Singles      0.01426861   -0.06025428   -0.06868315
 Pairs        0.06978250    0.00000000   -0.06476683
 Total        1.08684965   -0.06683890   -1.00874072
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53309015
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36997506
 One electron energy               -28559.51030593
 Two electron energy                 7673.96847507
 Virial quotient                       -0.64006451
 Correlation energy                    -1.00874072
 !MRCI STATE 7.1 Energy              -20885.5418308641    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62943964 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62943964 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62943964 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63108561 (Pople, fixed reference)
 Cluster corrected energies        -20885.63108561 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63108561 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95750139 (fixed)   0.95921348 (relaxed)   0.95921348 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00279853   -0.00658462   -0.87529081
 Singles      0.01426858   -0.06025427   -0.06868313
 Pairs        0.06978250    0.00000004   -0.06476677
 Total        1.08684962   -0.06683885   -1.00874072
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53309015
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36996985
 One electron energy               -28559.51029487
 Two electron energy                 7673.96846400
 Virial quotient                       -0.64006451
 Correlation energy                    -1.00874072
 !MRCI STATE 8.1 Energy              -20885.5418308634    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62943961 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62943961 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62943961 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63108557 (Pople, fixed reference)
 Cluster corrected energies        -20885.63108557 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63108557 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95897837 (fixed)   0.95929736 (relaxed)   0.95929257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00274176   -0.00644234   -0.87624508
 Singles      0.01401147   -0.05980881   -0.06805240
 Pairs        0.06991718   -0.00000000   -0.06493385
 Total        1.08667040   -0.06625115   -1.00923133
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53132114
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.41493351
 One electron energy               -28560.04889755
 Two electron energy                 7674.50845519
 Virial quotient                       -0.64006359
 Correlation energy                    -1.00912122
 !MRCI STATE 9.1 Energy              -20885.5404423624    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62790331 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62789234 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62790331 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62953143 (Pople, fixed reference)
 Cluster corrected energies        -20885.62951936 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62953143 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95897837 (fixed)   0.95929736 (relaxed)   0.95929257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00274176   -0.00644234   -0.87624507
 Singles      0.01401147   -0.05980881   -0.06805241
 Pairs        0.06991718    0.00000000   -0.06493386
 Total        1.08667041   -0.06625115   -1.00923133
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53132114
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.41493425
 One electron energy               -28560.04889805
 Two electron energy                 7674.50845569
 Virial quotient                       -0.64006359
 Correlation energy                    -1.00912122
 !MRCI STATE 10.1 Energy             -20885.5404423617    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62790331 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62789235 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62790331 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62953144 (Pople, fixed reference)
 Cluster corrected energies        -20885.62951936 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62953144 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95897837 (fixed)   0.95929736 (relaxed)   0.95929257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00274176   -0.00644234   -0.87624508
 Singles      0.01401147   -0.05980881   -0.06805240
 Pairs        0.06991717    0.00000000   -0.06493385
 Total        1.08667040   -0.06625115   -1.00923133
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53132114
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.41493411
 One electron energy               -28560.04889707
 Two electron energy                 7674.50845471
 Virial quotient                       -0.64006359
 Correlation energy                    -1.00912122
 !MRCI STATE 11.1 Energy             -20885.5404423607    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62790330 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62789234 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62790330 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62953143 (Pople, fixed reference)
 Cluster corrected energies        -20885.62951935 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62953143 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95913412 (fixed)   0.95913412 (relaxed)   0.95913412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00282493   -0.00661429   -0.00870702
 Singles      0.01424307   -0.06024543   -0.06864427
 Pairs        0.06996147   -0.94219023   -0.93169866
 Total        1.08702946   -1.00904995   -1.00904995
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52781424
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.37207036
 One electron energy               -28559.51267203
 Two electron energy                 7673.97580785
 Virial quotient                       -0.64006432
 Correlation energy                    -1.00904995
 !MRCI STATE 12.1 Energy             -20885.5368641840    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62468126 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62468126 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62468126 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62634632 (Pople, fixed reference)
 Cluster corrected energies        -20885.62634632 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62634632 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      307.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     2610.21       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12816.04  12774.90     27.85      0.61     12.45
 REAL TIME  *     13133.84 SEC
 DISK USED  *         2.85 GB (local),       46.08 GB (total)
 SF USED    *        26.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.81485212  AU                              
 SETTING HLSDIAG(2)     =    -20885.81485209  AU                              
 SETTING HLSDIAG(3)     =    -20885.81485211  AU                              
 SETTING HLSDIAG(4)     =    -20885.62943962  AU                              
 SETTING HLSDIAG(5)     =    -20885.62943965  AU                              
 SETTING HLSDIAG(6)     =    -20885.62943965  AU                              
 SETTING HLSDIAG(7)     =    -20885.62943964  AU                              
 SETTING HLSDIAG(8)     =    -20885.62943961  AU                              
 SETTING HLSDIAG(9)     =    -20885.62790331  AU                              
 SETTING HLSDIAG(10)    =    -20885.62790331  AU                              
 SETTING HLSDIAG(11)    =    -20885.62790330  AU                              
 SETTING HLSDIAG(12)    =    -20885.62468126  AU                              


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
     1    -20884.66820565
     2    -20884.66820565
     3    -20884.66820565
     4    -20884.66820565
     5    -20884.66820565
     6    -20884.61865706
     7    -20884.53660742
     8    -20884.53660742
     9    -20884.53660742
    10    -20884.52429821
    11    -20884.52429821
    12    -20884.52429821
    13    -20884.52429821
    14    -20884.52429821
    15    -20884.51137948

 Number of blocks in overlap matrix:  4438   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:    4540
 Number of N-1 electron functions:   23568

 Number of internal configurations:                16366
 Number of singly external configurations:       1943364
 Number of doubly external configurations:      30921882
 Total number of contracted configurations:     32881612
 Total number of uncontracted configurations:   87979486

 Diagonal Coupling coefficients finished.               Storage:  22416904 words, CPU-Time:     63.74 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5011049 words, CPU-time:     12.72 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.66820565     0.00000000    -1.32133564  0.60D-01  0.14D+00    88.27
    1     2     2     1.00000000     0.00000000-20884.66820565    -0.00000000    -1.32212352  0.61D-01  0.14D+00    88.27
    1     3     3     1.00000000     0.00000000-20884.66820565     0.00000000    -1.32238124  0.61D-01  0.14D+00    88.27
    1     4     4     1.00000000     0.00000000-20884.66820565     0.00000000    -1.32233113  0.61D-01  0.14D+00    88.27
    1     5     5     1.00000000     0.00000000-20884.66820565     0.00000000    -1.32139753  0.60D-01  0.14D+00    88.27
    1     6     6     1.00000000     0.00000000-20884.61865706     0.00000000    -1.32104361  0.45D-01  0.16D+00    88.27
    1     7     7     1.00000000     0.00000000-20884.53660742    -0.00000000    -1.26614290  0.43D-01  0.12D+00    88.27
    1     8     8     1.00000000     0.00000000-20884.53660742     0.00000000    -1.26610217  0.43D-01  0.12D+00    88.27
    1     9     9     1.00000000     0.00000000-20884.53660742     0.00000000    -1.26607867  0.43D-01  0.12D+00    88.27
    1    10    10     1.00000000     0.00000000-20884.52429821     0.00000000    -1.27294626  0.44D-01  0.12D+00    88.27
    1    11    11     1.00000000     0.00000000-20884.52429821     0.00000000    -1.27318982  0.45D-01  0.12D+00    88.27
    1    12    12     1.00000000     0.00000000-20884.52429821     0.00000000    -1.27323345  0.45D-01  0.12D+00    88.27
    1    13    13     1.00000000     0.00000000-20884.52429821    -0.00000000    -1.27326851  0.45D-01  0.12D+00    88.27
    1    14    14     1.00000000     0.00000000-20884.52429821     0.00000000    -1.27295875  0.44D-01  0.12D+00    88.27
    1    15    15     1.00000000     0.00000000-20884.51137948     0.00000000    -1.28295806  0.52D-01  0.13D+00    88.27
    2     1     1     1.11095220    -0.98998143-20885.65818708    -0.98998143    -0.03846929  0.59D-02  0.31D-02  1616.10
    2     2     2     1.11103110    -0.98983207-20885.65803771    -0.98983207    -0.03864849  0.59D-02  0.31D-02  1616.10
    2     3     3     1.11138672    -0.98940135-20885.65760699    -0.98940135    -0.03910705  0.61D-02  0.31D-02  1616.10
    2     4     4     1.11152486    -0.98925053-20885.65745618    -0.98925053    -0.03927082  0.62D-02  0.31D-02  1616.10
    2     5     5     1.11150076    -0.98923371-20885.65743936    -0.98923371    -0.03930314  0.62D-02  0.31D-02  1616.10
    2     6     6     1.11197475    -0.99186927-20885.61052633    -0.99186927    -0.04112844  0.58D-02  0.46D-02  1616.10
    2     7     7     1.09582974    -0.98134008-20885.51794751    -0.98134008    -0.02863552  0.32D-02  0.18D-02  1616.10
    2     8     8     1.09583088    -0.98133553-20885.51794295    -0.98133553    -0.02864242  0.32D-02  0.18D-02  1616.10
    2     9     9     1.09586025    -0.98130082-20885.51790825    -0.98130082    -0.02867977  0.32D-02  0.18D-02  1616.10
    2    10    10     1.09757571    -0.98194794-20885.50624615    -0.98194794    -0.03024675  0.38D-02  0.21D-02  1616.10
    2    11    11     1.09760570    -0.98190612-20885.50620433    -0.98190612    -0.03029563  0.38D-02  0.21D-02  1616.10
    2    12    12     1.09781538    -0.98168829-20885.50598651    -0.98168829    -0.03054031  0.39D-02  0.21D-02  1616.10
    2    13    13     1.09783432    -0.98166672-20885.50596493    -0.98166672    -0.03056786  0.39D-02  0.21D-02  1616.10
    2    14    14     1.09786034    -0.98163322-20885.50593143    -0.98163322    -0.03060425  0.40D-02  0.21D-02  1616.10
    2    15    15     1.10326089    -0.98072326-20885.49210273    -0.98072326    -0.03497116  0.63D-02  0.27D-02  1616.10
    3     1     1     1.09004532    -1.02597516-20885.69418081    -0.03599373    -0.00070914  0.83D-04  0.69D-04  3149.84
    3     2     2     1.09004633    -1.02596981-20885.69417546    -0.03613774    -0.00071460  0.84D-04  0.70D-04  3149.84
    3     3     3     1.09005510    -1.02595967-20885.69416532    -0.03655833    -0.00072576  0.85D-04  0.72D-04  3149.84
    3     4     4     1.09005489    -1.02595540-20885.69416105    -0.03670487    -0.00073017  0.85D-04  0.72D-04  3149.84
    3     5     5     1.09005696    -1.02595386-20885.69415950    -0.03672014    -0.00073186  0.85D-04  0.73D-04  3149.84
    3     6     6     1.08993299    -1.03045364-20885.64911070    -0.03858437    -0.00093082  0.79D-04  0.13D-03  3149.84
    3     7     7     1.08381289    -1.00815611-20885.54476354    -0.02681603    -0.00043858  0.44D-04  0.25D-04  3149.84
    3     8     8     1.08381335    -1.00815588-20885.54476330    -0.02682035    -0.00043883  0.44D-04  0.26D-04  3149.84
    3     9     9     1.08381213    -1.00815533-20885.54476275    -0.02685451    -0.00043939  0.44D-04  0.26D-04  3149.84
    3    10    10     1.08427861    -1.01017543-20885.53447364    -0.02822749    -0.00048697  0.43D-04  0.39D-04  3149.84
    3    11    11     1.08427807    -1.01017440-20885.53447261    -0.02826828    -0.00048806  0.43D-04  0.39D-04  3149.84
    3    12    12     1.08428366    -1.01016636-20885.53446457    -0.02847806    -0.00049663  0.44D-04  0.40D-04  3149.84
    3    13    13     1.08428412    -1.01016563-20885.53446384    -0.02849891    -0.00049741  0.44D-04  0.40D-04  3149.84
    3    14    14     1.08428362    -1.01016489-20885.53446310    -0.02853167    -0.00049820  0.44D-04  0.40D-04  3149.84
    3    15    15     1.08513070    -1.01323005-20885.52460953    -0.03250679    -0.00069599  0.77D-04  0.76D-04  3149.84
    4     1     1     1.08956697    -1.02657125-20885.69477690    -0.00059609    -0.00023490  0.65D-05  0.93D-05  4688.77
    4     2     2     1.08956638    -1.02657121-20885.69477686    -0.00060140    -0.00023499  0.65D-05  0.94D-05  4688.77
    4     3     3     1.08956741    -1.02657117-20885.69477682    -0.00061150    -0.00023493  0.66D-05  0.93D-05  4688.77
    4     4     4     1.08956937    -1.02657078-20885.69477643    -0.00061538    -0.00023526  0.66D-05  0.93D-05  4688.77
    4     5     5     1.08956932    -1.02657075-20885.69477640    -0.00061690    -0.00023519  0.66D-05  0.93D-05  4688.77
    4     6     6     1.08933181    -1.03114205-20885.64979911    -0.00068842    -0.00039643  0.99D-05  0.22D-04  4688.77
    4     7     7     1.08375860    -1.00847014-20885.54507756    -0.00031402    -0.00017331  0.48D-05  0.66D-05  4688.77
    4     8     8     1.08375845    -1.00847013-20885.54507756    -0.00031426    -0.00017328  0.48D-05  0.66D-05  4688.77
    4     9     9     1.08375817    -1.00847012-20885.54507754    -0.00031479    -0.00017344  0.48D-05  0.67D-05  4688.77
    4    10    10     1.08420907    -1.01053653-20885.53483475    -0.00036110    -0.00018280  0.41D-05  0.78D-05  4688.77
    4    11    11     1.08420861    -1.01053652-20885.53483473    -0.00036212    -0.00018288  0.41D-05  0.78D-05  4688.77
    4    12    12     1.08420943    -1.01053630-20885.53483452    -0.00036995    -0.00018391  0.41D-05  0.78D-05  4688.77
    4    13    13     1.08420939    -1.01053629-20885.53483450    -0.00037066    -0.00018390  0.41D-05  0.78D-05  4688.77
    4    14    14     1.08420918    -1.01053628-20885.53483449    -0.00037139    -0.00018403  0.41D-05  0.78D-05  4688.77
    4    15    15     1.08484843    -1.01377298-20885.52515246    -0.00054293    -0.00026584  0.88D-05  0.12D-04  4688.77
    5     1     1     1.08952368    -1.02665735-20885.69486300    -0.00008610    -0.00001045  0.20D-05  0.81D-06  6224.32
    5     2     2     1.08952234    -1.02665728-20885.69486293    -0.00008607    -0.00001057  0.20D-05  0.83D-06  6224.32
    5     3     3     1.08952380    -1.02665728-20885.69486293    -0.00008611    -0.00001052  0.20D-05  0.82D-06  6224.32
    5     4     4     1.08952202    -1.02665725-20885.69486290    -0.00008647    -0.00001061  0.20D-05  0.84D-06  6224.32
    5     5     5     1.08952226    -1.02665722-20885.69486287    -0.00008647    -0.00001064  0.20D-05  0.84D-06  6224.32
    5     6     6     1.08926941    -1.03130021-20885.64995727    -0.00015816    -0.00001385  0.26D-05  0.17D-05  6224.32
    5     7     7     1.08379444    -1.00854065-20885.54514808    -0.00007052    -0.00000590  0.11D-05  0.36D-06  6224.32
    5     8     8     1.08379447    -1.00854065-20885.54514808    -0.00007052    -0.00000591  0.11D-05  0.37D-06  6224.32
    5     9     9     1.08379441    -1.00854065-20885.54514807    -0.00007054    -0.00000591  0.11D-05  0.37D-06  6224.32
    5    10    10     1.08424945    -1.01060896-20885.53490717    -0.00007242    -0.00000664  0.13D-05  0.51D-06  6224.32
    5    11    11     1.08424946    -1.01060894-20885.53490716    -0.00007242    -0.00000666  0.13D-05  0.51D-06  6224.32
    5    12    12     1.08424934    -1.01060882-20885.53490703    -0.00007252    -0.00000680  0.14D-05  0.52D-06  6224.32
    5    13    13     1.08424932    -1.01060881-20885.53490703    -0.00007252    -0.00000681  0.14D-05  0.52D-06  6224.32
    5    14    14     1.08424927    -1.01060881-20885.53490702    -0.00007253    -0.00000682  0.14D-05  0.52D-06  6224.32
    5    15    15     1.08486016    -1.01387559-20885.52525506    -0.00010260    -0.00001219  0.31D-05  0.10D-05  6224.32
    6     1     1     1.08937995    -1.02666736-20885.69487301    -0.00001001    -0.00000110  0.65D-07  0.63D-07  7758.05
    6     2     2     1.08938016    -1.02666736-20885.69487300    -0.00001007    -0.00000110  0.65D-07  0.63D-07  7758.05
    6     3     3     1.08938005    -1.02666736-20885.69487300    -0.00001007    -0.00000110  0.65D-07  0.63D-07  7758.05
    6     4     4     1.08937956    -1.02666735-20885.69487300    -0.00001010    -0.00000112  0.67D-07  0.62D-07  7758.05
    6     5     5     1.08937950    -1.02666735-20885.69487299    -0.00001013    -0.00000112  0.68D-07  0.62D-07  7758.05
    6     6     6     1.08911271    -1.03131335-20885.64997041    -0.00001315    -0.00000210  0.81D-07  0.14D-06  7758.05
    6     7     7     1.08373218    -1.00854601-20885.54515343    -0.00000536    -0.00000092  0.71D-07  0.35D-07  7758.05
    6     8     8     1.08373223    -1.00854601-20885.54515343    -0.00000536    -0.00000092  0.71D-07  0.35D-07  7758.05
    6     9     9     1.08373223    -1.00854601-20885.54515343    -0.00000535    -0.00000092  0.71D-07  0.35D-07  7758.05
    6    10    10     1.08419259    -1.01061501-20885.53491322    -0.00000605    -0.00000091  0.55D-07  0.45D-07  7758.05
    6    11    11     1.08419258    -1.01061501-20885.53491322    -0.00000606    -0.00000091  0.55D-07  0.45D-07  7758.05
    6    12    12     1.08419290    -1.01061501-20885.53491322    -0.00000618    -0.00000091  0.55D-07  0.47D-07  7758.05
    6    13    13     1.08419293    -1.01061501-20885.53491322    -0.00000619    -0.00000091  0.55D-07  0.47D-07  7758.05
    6    14    14     1.08419294    -1.01061501-20885.53491322    -0.00000620    -0.00000091  0.55D-07  0.47D-07  7758.05
    6    15    15     1.08478069    -1.01388692-20885.52526639    -0.00001133    -0.00000152  0.12D-06  0.98D-07  7758.05
    7     1     1     1.08938027    -1.02666784-20885.69487349    -0.00000049    -0.00000026  0.21D-07  0.20D-07  9293.74
    7     2     2     1.08938036    -1.02666784-20885.69487349    -0.00000049    -0.00000026  0.21D-07  0.20D-07  9293.74
    7     3     3     1.08938035    -1.02666784-20885.69487349    -0.00000049    -0.00000026  0.22D-07  0.20D-07  9293.74
    7     4     4     1.08937984    -1.02666784-20885.69487349    -0.00000049    -0.00000026  0.22D-07  0.20D-07  9293.74
    7     5     5     1.08937984    -1.02666784-20885.69487349    -0.00000049    -0.00000026  0.23D-07  0.20D-07  9293.74
    7     6     6     1.08910759    -1.03131419-20885.64997124    -0.00000083    -0.00000038  0.29D-07  0.46D-07  9293.74
    7     7     7     1.08373011    -1.00854639-20885.54515382    -0.00000039    -0.00000017  0.26D-07  0.10D-07  9293.74
    7     8     8     1.08373014    -1.00854639-20885.54515382    -0.00000039    -0.00000017  0.26D-07  0.10D-07  9293.74
    7     9     9     1.08373014    -1.00854639-20885.54515381    -0.00000039    -0.00000017  0.26D-07  0.10D-07  9293.74
    7    10    10     1.08419300    -1.01061539-20885.53491360    -0.00000038    -0.00000018  0.19D-07  0.14D-07  9293.74
    7    11    11     1.08419299    -1.01061539-20885.53491360    -0.00000038    -0.00000018  0.19D-07  0.14D-07  9293.74
    7    12    12     1.08419330    -1.01061539-20885.53491360    -0.00000039    -0.00000018  0.19D-07  0.15D-07  9293.74
    7    13    13     1.08419332    -1.01061539-20885.53491360    -0.00000039    -0.00000018  0.19D-07  0.15D-07  9293.74
    7    14    14     1.08419332    -1.01061539-20885.53491360    -0.00000039    -0.00000018  0.19D-07  0.15D-07  9293.74
    7    15    15     1.08478027    -1.01388758-20885.52526706    -0.00000066    -0.00000037  0.39D-07  0.34D-07  9293.74
    8     1     1     1.08938771    -1.02666802-20885.69487367    -0.00000018    -0.00000003  0.26D-08  0.14D-08 10831.71
    8     2     2     1.08938773    -1.02666802-20885.69487367    -0.00000018    -0.00000003  0.27D-08  0.14D-08 10831.71
    8     3     3     1.08938772    -1.02666802-20885.69487367    -0.00000018    -0.00000003  0.26D-08  0.14D-08 10831.71
    8     4     4     1.08938772    -1.02666802-20885.69487367    -0.00000018    -0.00000003  0.26D-08  0.14D-08 10831.71
    8     5     5     1.08938774    -1.02666802-20885.69487367    -0.00000018    -0.00000003  0.27D-08  0.14D-08 10831.71
    8     6     6     1.08911546    -1.03131447-20885.64997152    -0.00000028    -0.00000006  0.42D-08  0.35D-08 10831.71
    8     7     7     1.08373490    -1.00854652-20885.54515395    -0.00000013    -0.00000003  0.23D-08  0.13D-08 10831.71
    8     8     8     1.08373490    -1.00854652-20885.54515394    -0.00000013    -0.00000003  0.23D-08  0.13D-08 10831.71
    8     9     9     1.08373490    -1.00854652-20885.54515394    -0.00000013    -0.00000003  0.23D-08  0.13D-08 10831.71
    8    10    10     1.08419957    -1.01061552-20885.53491373    -0.00000013    -0.00000003  0.21D-08  0.13D-08 10831.71
    8    11    11     1.08419954    -1.01061552-20885.53491373    -0.00000013    -0.00000003  0.20D-08  0.13D-08 10831.71
    8    12    12     1.08419957    -1.01061552-20885.53491373    -0.00000013    -0.00000003  0.21D-08  0.13D-08 10831.71
    8    13    13     1.08419957    -1.01061552-20885.53491373    -0.00000013    -0.00000003  0.21D-08  0.13D-08 10831.71
    8    14    14     1.08419953    -1.01061552-20885.53491373    -0.00000013    -0.00000003  0.20D-08  0.13D-08 10831.71
    8    15    15     1.08478531    -1.01388784-20885.52526731    -0.00000026    -0.00000005  0.58D-08  0.24D-08 10831.71


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.3%  39.8%
 P   0.5%  16.4%  14.3%

 Initialization:   0.7%
 Other:           27.3%

 Total CPU:    10831.7 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\000           0.9500632  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                                   0.0000000   0.0000000   0.0000000  -0.1158704   0.0000000   0.0000000  -0.0000000
 22222222222222222/0\000           0.0000000   0.0000000   0.9500632  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                                   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1158704   0.0000000   0.0000000
 22222222222222222/\0000          -0.0000000  -0.0000000   0.0000000   0.9500632   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  -0.0000000  -0.1158704  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 22222222222222222002000           0.0000000   0.7639518  -0.0000000   0.0000000  -0.1346268   0.5403887  -0.0000000  -0.0000000
                                   0.0000000  -0.0000000   0.0283281  -0.0000000  -0.0000000  -0.0902671  -0.1119458
 222222222222222220/00\0          -0.0000000  -0.0326048   0.0000000   0.0000000   0.0895532   0.1127711   0.0000000  -0.0000000
                                   0.0000000   0.0000000   0.7586842  -0.0000000   0.0000000  -0.1692638   0.5420247
 2222222222222222200/00\          -0.0000000   0.0938577  -0.0000000  -0.0000000  -0.0165400   0.1127711  -0.0000000  -0.0000000
                                   0.0000000  -0.0000000  -0.2327553   0.0000000  -0.0000000   0.7416717   0.5420248
 22222222222222222020000          -0.0000000  -0.2653857  -0.0000000   0.0000000   0.7289151   0.5403887   0.0000000  -0.0000000
                                  -0.0000000   0.0000000  -0.0923377   0.0000000   0.0000000   0.0206007  -0.1119458
 222222222222222220/000\           0.0825357   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.6782975
                                  -0.0000000   0.0000000   0.0000000   0.6731930  -0.0000000   0.0000000   0.0000000
 222222222222222220/0\00           0.0000000   0.0000000  -0.0000000   0.0825357  -0.0000000  -0.0000000   0.6782975   0.0000000
                                  -0.0000000   0.6731930  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 22222222222222222/0000\          -0.0000000   0.0000000   0.0825357   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                                   0.6782974   0.0000000   0.0000000  -0.0000000   0.6731930   0.0000000  -0.0000000
 2222222222222222200/\00           0.0000000   0.0000000   0.0825357   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                                  -0.6782974  -0.0000000  -0.0000000   0.0000000   0.6731931   0.0000000   0.0000000
 22222222222222222/000\0          -0.0000000   0.0000000  -0.0000000   0.0825357  -0.0000000   0.0000000  -0.6782973  -0.0000000
                                  -0.0000000   0.6731931   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222222222200/0\0           0.0825357   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6782973
                                   0.0000000  -0.0000000  -0.0000000   0.6731932   0.0000000  -0.0000000  -0.0000000
 22222222222222222200000          -0.0000000  -0.4985661  -0.0000000   0.0000000  -0.5942883   0.5403887   0.0000000   0.0000000
                                   0.0000000  -0.0000000   0.0640095   0.0000000   0.0000000   0.0696664  -0.1119458
 22222222222222222/00\00           0.0000000  -0.0612529   0.0000000   0.0000000  -0.0730132   0.1127711   0.0000000   0.0000000
                                   0.0000000   0.0000000  -0.5259289   0.0000000   0.0000000  -0.5724078   0.5420248

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.956345   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.040987   -0.000000   -0.000000    0.000000
 2           0.954462    0.000000   -0.000000   -0.000000   -0.059981   -0.000000    0.000000    0.000000    0.000000   -0.039326
             0.000000    0.000000    0.000000    0.011548    0.000000
 3          -0.000000    0.956345   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.040987    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.956345   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.040987    0.000000   -0.000000
 5           0.059981   -0.000000    0.000000    0.000000    0.954462    0.000000    0.000000    0.000000    0.000000   -0.011548
            -0.000000    0.000000   -0.000000   -0.039326   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.952329   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.085871
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959257   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959257    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959257   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000000    0.042169    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.958137    0.000000    0.000000
 11         -0.002819   -0.000000    0.000000   -0.000000    0.042075    0.000000   -0.000000    0.000000    0.000000    0.148829
            -0.000000    0.000000    0.000000    0.946507    0.000000
 12         -0.000000   -0.000000    0.042169   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.958137    0.000000   -0.000000    0.000000
 13         -0.000000    0.042169    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.958137    0.000000    0.000000    0.000000   -0.000000
 14          0.042075    0.000000    0.000000    0.000000    0.002819   -0.000000    0.000000    0.000000    0.000000    0.946507
             0.000000   -0.000000    0.000000   -0.148829   -0.000000
 15         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.088135   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.954592

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957223   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000552   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.957223    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000071    0.000000    0.000000    0.000547   -0.000000
 3          -0.000000    0.000000    0.957223   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000552    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.957223   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000552
            -0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.957223    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000547    0.000000   -0.000000    0.000071   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.956192   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.001024
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959257    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.959257    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.959257   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000552   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959064
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000071   -0.000000   -0.000000    0.000547    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.959064   -0.000000   -0.000000    0.000000   -0.000000
 12          0.000552    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.959064    0.000000   -0.000000    0.000000
 13         -0.000000    0.000000    0.000552    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.959064    0.000000    0.000000
 14         -0.000000    0.000547    0.000000    0.000000    0.000071   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.959064    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.001024    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.958652


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95634477 (fixed)   0.95722269 (relaxed)   0.95722252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182465   -0.00427279   -0.88869142
 Singles      0.01479827   -0.05864533   -0.06765230
 Pairs        0.07475254   -0.00000000   -0.07032430
 Total        1.09137546   -0.06291812   -1.02666802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.66793466
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.07150314
 One electron energy               -28576.93254764
 Two electron energy                 7691.23767397
 Virial quotient                       -0.64005544
 Correlation energy                    -1.02693901
 !MRCI STATE 1.1 Energy              -20885.6948736712    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78871070 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78871031 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78871070 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79128213 (Pople, fixed reference)
 Cluster corrected energies        -20885.79128170 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79128213 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95446196 (fixed)   0.95722268 (relaxed)   0.95722251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182465   -0.00427279   -0.88869143
 Singles      0.01479826   -0.05864531   -0.06765229
 Pairs        0.07475257    0.00000001   -0.07032431
 Total        1.09137548   -0.06291809   -1.02666802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.66793466
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.07149044
 One electron energy               -28576.93250588
 Two electron energy                 7691.23763221
 Virial quotient                       -0.64005544
 Correlation energy                    -1.02693901
 !MRCI STATE 2.1 Energy              -20885.6948736705    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78871072 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78871033 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78871072 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79128216 (Pople, fixed reference)
 Cluster corrected energies        -20885.79128172 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79128216 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95634476 (fixed)   0.95722268 (relaxed)   0.95722251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182465   -0.00427279   -0.88869140
 Singles      0.01479829   -0.05864533   -0.06765232
 Pairs        0.07475253    0.00000000   -0.07032430
 Total        1.09137548   -0.06291813   -1.02666802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.66793466
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.07150907
 One electron energy               -28576.93255687
 Two electron energy                 7691.23768320
 Virial quotient                       -0.64005544
 Correlation energy                    -1.02693901
 !MRCI STATE 3.1 Energy              -20885.6948736705    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78871072 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78871033 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78871072 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79128215 (Pople, fixed reference)
 Cluster corrected energies        -20885.79128172 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79128215 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95634477 (fixed)   0.95722268 (relaxed)   0.95722251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182465   -0.00427279   -0.88869141
 Singles      0.01479829   -0.05864533   -0.06765231
 Pairs        0.07475254    0.00000000   -0.07032431
 Total        1.09137548   -0.06291813   -1.02666802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.66793466
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.07149966
 One electron energy               -28576.93254212
 Two electron energy                 7691.23766845
 Virial quotient                       -0.64005544
 Correlation energy                    -1.02693901
 !MRCI STATE 4.1 Energy              -20885.6948736702    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78871071 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78871032 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78871071 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79128215 (Pople, fixed reference)
 Cluster corrected energies        -20885.79128171 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79128215 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95446195 (fixed)   0.95722267 (relaxed)   0.95722251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182465   -0.00427279   -0.88869139
 Singles      0.01479828   -0.05864534   -0.06765230
 Pairs        0.07475256    0.00000001   -0.07032434
 Total        1.09137549   -0.06291813   -1.02666802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.66793466
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.07148733
 One electron energy               -28576.93250052
 Two electron energy                 7691.23762685
 Virial quotient                       -0.64005544
 Correlation energy                    -1.02693901
 !MRCI STATE 5.1 Energy              -20885.6948736691    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.78871073 (Davidson, fixed reference)
 Cluster corrected energies        -20885.78871034 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.78871073 (Davidson, rotated reference)

 Cluster corrected energies        -20885.79128217 (Pople, fixed reference)
 Cluster corrected energies        -20885.79128173 (Pople, relaxed reference)
 Cluster corrected energies        -20885.79128217 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95232894 (fixed)   0.95619261 (relaxed)   0.95619206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00423607   -0.00932416   -0.99167303
 Singles      0.01092876   -0.05100817   -0.05694042
 Pairs        0.07856420    0.09994657    0.01729898
 Total        1.09372903    0.03961423   -1.03131447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.61777118
 Nuclear energy                         0.00000000
 Kinetic energy                     32631.01060289
 One electron energy               -28575.91335237
 Two electron energy                 7690.26338084
 Virial quotient                       -0.64005526
 Correlation energy                    -1.03220034
 !MRCI STATE 6.1 Energy              -20885.6499715241    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.74671866 (Davidson, fixed reference)
 Cluster corrected energies        -20885.74671735 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.74671866 (Davidson, rotated reference)

 Cluster corrected energies        -20885.74959374 (Pople, fixed reference)
 Cluster corrected energies        -20885.74959228 (Pople, relaxed reference)
 Cluster corrected energies        -20885.74959374 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95925739 (fixed)   0.95925739 (relaxed)   0.95925739 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00278225   -0.00656595   -0.87517759
 Singles      0.01428679   -0.06025321   -0.06870229
 Pairs        0.06968108   -0.00000000   -0.06466664
 Total        1.08675012   -0.06681916   -1.00854652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53660742
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36890831
 One electron energy               -28559.51062209
 Two electron energy                 7673.96546814
 Virial quotient                       -0.64006463
 Correlation energy                    -1.00854652
 !MRCI STATE 7.1 Energy              -20885.5451539458    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63264547 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63264547 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63264547 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63464752 (Pople, fixed reference)
 Cluster corrected energies        -20885.63464752 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63464752 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95925738 (fixed)   0.95925738 (relaxed)   0.95925738 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00278225   -0.00656595   -0.87517758
 Singles      0.01428679   -0.06025321   -0.06870230
 Pairs        0.06968108    0.00000000   -0.06466664
 Total        1.08675012   -0.06681916   -1.00854652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53660742
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36890918
 One electron energy               -28559.51062240
 Two electron energy                 7673.96546846
 Virial quotient                       -0.64006463
 Correlation energy                    -1.00854652
 !MRCI STATE 8.1 Energy              -20885.5451539448    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63264548 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63264548 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63264548 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63464752 (Pople, fixed reference)
 Cluster corrected energies        -20885.63464752 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63464752 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95925739 (fixed)   0.95925739 (relaxed)   0.95925739 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00278225   -0.00656595   -0.87517759
 Singles      0.01428679   -0.06025320   -0.06870230
 Pairs        0.06968108   -0.00000000   -0.06466664
 Total        1.08675012   -0.06681916   -1.00854652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.53660742
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.36890890
 One electron energy               -28559.51062133
 Two electron energy                 7673.96546739
 Virial quotient                       -0.64006463
 Correlation energy                    -1.00854652
 !MRCI STATE 9.1 Energy              -20885.5451539424    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.63264547 (Davidson, fixed reference)
 Cluster corrected energies        -20885.63264547 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.63264547 (Davidson, rotated reference)

 Cluster corrected energies        -20885.63464752 (Pople, fixed reference)
 Cluster corrected energies        -20885.63464752 (Pople, relaxed reference)
 Cluster corrected energies        -20885.63464752 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95813670 (fixed)   0.95906863 (relaxed)   0.95906405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275664   -0.00646117   -0.87693213
 Singles      0.01415662   -0.06001106   -0.06835819
 Pairs        0.07027506   -0.00000000   -0.06532520
 Total        1.08718831   -0.06647223   -1.01061552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52456920
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.44260213
 One electron energy               -28560.38203473
 Two electron energy                 7674.84712099
 Virial quotient                       -0.64006288
 Correlation energy                    -1.01034453
 !MRCI STATE 10.1 Energy             -20885.5349137341    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62300397 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62299349 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62300397 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62505730 (Pople, fixed reference)
 Cluster corrected energies        -20885.62504568 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62505730 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.94650726 (fixed)   0.95906864 (relaxed)   0.95906406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275664   -0.00646117   -0.87693206
 Singles      0.01415658   -0.06001107   -0.06835819
 Pairs        0.07027507   -0.00000009   -0.06532528
 Total        1.08718829   -0.06647233   -1.01061552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52456920
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.44266057
 One electron energy               -28560.38210158
 Two electron energy                 7674.84718785
 Virial quotient                       -0.64006287
 Correlation energy                    -1.01034453
 !MRCI STATE 11.1 Energy             -20885.5349137339    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62300394 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62299346 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62300394 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62505727 (Pople, fixed reference)
 Cluster corrected energies        -20885.62504565 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62505727 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95813670 (fixed)   0.95906862 (relaxed)   0.95906405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275664   -0.00646117   -0.87693213
 Singles      0.01415662   -0.06001106   -0.06835819
 Pairs        0.07027506   -0.00000000   -0.06532520
 Total        1.08718832   -0.06647223   -1.01061552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52456920
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.44260477
 One electron energy               -28560.38203735
 Two electron energy                 7674.84712361
 Virial quotient                       -0.64006288
 Correlation energy                    -1.01034453
 !MRCI STATE 12.1 Energy             -20885.5349137334    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62300398 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62299349 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62300398 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62505731 (Pople, fixed reference)
 Cluster corrected energies        -20885.62504569 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62505731 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95813670 (fixed)   0.95906862 (relaxed)   0.95906405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275664   -0.00646117   -0.87693213
 Singles      0.01415662   -0.06001106   -0.06835819
 Pairs        0.07027506    0.00000000   -0.06532520
 Total        1.08718832   -0.06647223   -1.01061552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52456920
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.44260725
 One electron energy               -28560.38204019
 Two electron energy                 7674.84712646
 Virial quotient                       -0.64006288
 Correlation energy                    -1.01034453
 !MRCI STATE 13.1 Energy             -20885.5349137331    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62300398 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62299349 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62300398 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62505731 (Pople, fixed reference)
 Cluster corrected energies        -20885.62504569 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62505731 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94650727 (fixed)   0.95906864 (relaxed)   0.95906406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275664   -0.00646117   -0.87693222
 Singles      0.01415657   -0.06001105   -0.06835818
 Pairs        0.07027507    0.00000006   -0.06532512
 Total        1.08718828   -0.06647216   -1.01061552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.52456920
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.44266120
 One electron energy               -28560.38210138
 Two electron energy                 7674.84718765
 Virial quotient                       -0.64006287
 Correlation energy                    -1.01034453
 !MRCI STATE 14.1 Energy             -20885.5349137329    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.62300394 (Davidson, fixed reference)
 Cluster corrected energies        -20885.62299345 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.62300394 (Davidson, rotated reference)

 Cluster corrected energies        -20885.62505727 (Pople, fixed reference)
 Cluster corrected energies        -20885.62504565 (Pople, relaxed reference)
 Cluster corrected energies        -20885.62505727 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95459213 (fixed)   0.95865623 (relaxed)   0.95865161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00307774   -0.00715873   -0.01284778
 Singles      0.01376865   -0.05878900   -0.06685620
 Pairs        0.07127762   -0.94423935   -0.93418386
 Total        1.08812400   -1.01018707   -1.01388784
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.51226535
 Nuclear energy                         0.00000000
 Kinetic energy                     32630.50827735
 One electron energy               -28561.28003408
 Two electron energy                 7675.75476677
 Virial quotient                       -0.64006129
 Correlation energy                    -1.01300196
 !MRCI STATE 15.1 Energy             -20885.5252673127    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.61453709 (Davidson, fixed reference)
 Cluster corrected energies        -20885.61452647 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.61453709 (Davidson, rotated reference)

 Cluster corrected energies        -20885.61669936 (Pople, fixed reference)
 Cluster corrected energies        -20885.61668756 (Pople, relaxed reference)
 Cluster corrected energies        -20885.61669936 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      307.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     6397.31       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     26043.79  13227.75  12774.90     27.85      0.61     12.45
 REAL TIME  *     26828.16 SEC
 DISK USED  *         6.55 GB (local),      105.25 GB (total)
 SF USED    *        37.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =    -20885.78871070  AU                              
 SETTING HLSDIAG(14)    =    -20885.78871072  AU                              
 SETTING HLSDIAG(15)    =    -20885.78871072  AU                              
 SETTING HLSDIAG(16)    =    -20885.78871071  AU                              
 SETTING HLSDIAG(17)    =    -20885.78871073  AU                              
 SETTING HLSDIAG(18)    =    -20885.74671866  AU                              
 SETTING HLSDIAG(19)    =    -20885.63264547  AU                              
 SETTING HLSDIAG(20)    =    -20885.63264548  AU                              
 SETTING HLSDIAG(21)    =    -20885.63264547  AU                              
 SETTING HLSDIAG(22)    =    -20885.62300397  AU                              
 SETTING HLSDIAG(23)    =    -20885.62300394  AU                              
 SETTING HLSDIAG(24)    =    -20885.62300398  AU                              
 SETTING HLSDIAG(25)    =    -20885.62300398  AU                              
 SETTING HLSDIAG(26)    =    -20885.62300394  AU                              
 SETTING HLSDIAG(27)    =    -20885.61453709  AU                              


         HLSDIAG
    -20885.81485
    -20885.81485
    -20885.81485
    -20885.62944
    -20885.62944
    -20885.62944
    -20885.62944
    -20885.62944
    -20885.62790
    -20885.62790
    -20885.62790
    -20885.62468
    -20885.78871
    -20885.78871
    -20885.78871
    -20885.78871
    -20885.78871
    -20885.74672
    -20885.63265
    -20885.63265
    -20885.63265
    -20885.62300
    -20885.62300
    -20885.62300
    -20885.62300
    -20885.62300
    -20885.61454
                                                  

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

 Time for Seward_LS:     165.42 sec

      132992364. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    36964 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    165.42 sec, REAL time:    168.63 sec


 SORTLS1 read   151311733. and wrote   151311733. SO integrals in   592 records. CPU time:      1.35 sec, REAL time:      2.43 sec
 SORTLS2 read   151311733. and wrote   750362552. SO integrals in    48 records. CPU time:      0.62 sec, REAL time:      0.90 sec

 FILE SIZES: FILE 1:  2745.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2745.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2618.25       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     6397.31       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     26211.93    168.13  13227.75  12774.90     27.85      0.61     12.45
 REAL TIME  *     27000.91 SEC
 DISK USED  *         6.55 GB (local),      112.79 GB (total)
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies: -20885.724329 -20885.724329 -20885.724329 -20885.541831 -20885.541831 -20885.541831 -20885.541831 -20885.541831
                    -20885.540442 -20885.540442 -20885.540442 -20885.536864
 Replaced energies: -20885.814852 -20885.814852 -20885.814852 -20885.629440 -20885.629440 -20885.629440 -20885.629440 -20885.629440
                    -20885.627903 -20885.627903 -20885.627903 -20885.624681

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies: -20885.694874 -20885.694874 -20885.694874 -20885.694874 -20885.694874 -20885.649972 -20885.545154 -20885.545154
                    -20885.545154 -20885.534914 -20885.534914 -20885.534914 -20885.534914 -20885.534914 -20885.525267
 Replaced energies: -20885.788711 -20885.788711 -20885.788711 -20885.788711 -20885.788711 -20885.746719 -20885.632645 -20885.632645
                    -20885.632645 -20885.623004 -20885.623004 -20885.623004 -20885.623004 -20885.623004 -20885.614537



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.81485212

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02    6324.18       0.00      -0.11    1276.30       0.01      -0.01      -0.16    1148.17      -0.01

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6324.18       0.00       0.00       0.05       0.06    1276.23      -0.03       0.00       0.09    1148.16

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.09   -1451.02      -0.05      -0.01       0.00     257.33      -0.05      -0.01

    4   4.1  1.0  1.0       0.00       0.00       0.00   40693.34       0.00       0.00       0.00       0.00       0.00       0.00
                            0.11      -0.05    1451.02      -0.02      -0.25       0.02   -1262.50      -0.05      -0.49      -0.01

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40693.33       0.00       0.00       0.00       0.00       0.00
                        -1276.30      -0.06       0.05       0.25      -0.33    3614.50      -0.00      -0.15      -0.55   -3215.53

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40693.33       0.00       0.00       0.00       0.00
                           -0.01   -1276.23       0.01      -0.02   -3614.50       0.06       0.08       0.06    3215.83      -0.07

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40693.34       0.00       0.00       0.00
                            0.01       0.03      -0.00    1262.50       0.00      -0.08       0.04    7118.10       0.11       0.05

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40693.34       0.00       0.00
                            0.16      -0.00    -257.33       0.05       0.15      -0.06   -7118.10       0.01       0.02       0.05

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41030.52       0.00
                        -1148.17      -0.09       0.05       0.49       0.55   -3215.83      -0.11      -0.02      -0.90    3747.28

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41030.52
                            0.01   -1148.16       0.01       0.01    3215.53       0.07      -0.05      -0.05   -3747.28       0.05

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.03      -0.01   -3656.01      -0.04      -0.18       0.06     648.39      -0.01      -0.02

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17       0.08   -2070.48      -0.06      -0.09       0.31      -0.11       0.03       0.17      -0.33

   13   1.1  1.0  0.0      -0.00      -0.00      -0.01     670.40       0.02      -0.02      -0.00     797.32      -0.00       0.02
                           -0.00      -0.00    4472.08      -0.02       0.02       0.01     902.15      -0.02       0.02      -0.01

   14   2.1  1.0  0.0       0.00       0.02    4472.12      -0.01       0.03      -0.01    -902.15      -0.01       0.03       0.00
                           -0.02       0.01      -0.08    -355.31       0.00       0.00      -0.01     979.25       0.01      -0.01

   15   3.1  1.0  0.0       0.02   -4472.11       0.02       0.01     902.02       0.16       0.01       0.04    -811.01      -0.16
                        -4472.10       0.00      -0.01       0.00      -0.00    -902.15      -0.00      -0.01      -0.03     811.13

   16   4.1  1.0  0.0    -670.61       0.01       0.00      -0.00      -0.01    3912.57      -0.00      -0.00       0.00   -1689.65
                            0.02     355.46      -0.00      -0.01    4805.26       0.01       0.01      -0.01    -895.48      -0.00

   17   5.1  1.0  0.0       0.00      -0.00    -902.41       0.01      -0.01       0.01    2555.90      -0.00       0.00       0.00
                            0.01      -0.02      -0.01   -4805.23       0.01       0.04       0.10   -1743.61       0.01      -0.03

   18   6.1  1.0  0.0      -0.00       0.00       0.00   -3912.56       0.00      -0.00       0.00    3289.73      -0.00       0.01
                           -0.00      -0.01     902.41       0.01       0.05      -0.08    2555.90       0.02      -0.03      -0.02

   19   7.1  1.0  0.0       0.01     902.42      -0.00       0.01   -2555.90      -0.01       0.00      -0.08   -2273.74       0.02
                         -902.48      -0.02      -0.00      -0.03      -0.00   -2555.86       0.02      -0.03       0.01   -2273.69

   20   8.1  1.0  0.0    -797.58       0.03      -0.00      -0.02      -0.02   -3289.75      -0.00      -0.01       0.00   -2009.57
                            0.01    -979.53       0.00      -0.01    1743.50      -0.03      -0.01       0.01    2468.07       0.03

   21   9.1  1.0  0.0      -0.00       0.01     811.88      -0.01       0.01      -0.00    2273.78      -0.00      -0.01      -0.00
                            0.01      -0.02      -0.01     895.53      -0.03       0.04       0.11   -2468.19      -0.02      -0.03

   22  10.1  1.0  0.0       0.00      -0.00      -0.00    1689.69      -0.01      -0.00       0.01    2009.57       0.00      -0.00
                           -0.01      -0.01    -811.90       0.01       0.05       0.08    2273.77      -0.01      -0.02       0.01

   23  11.1  1.0  0.0       0.02     811.88       0.00      -0.02    2273.78      -0.02      -0.00       0.07    2649.77       0.01
                          811.94      -0.02      -0.01       0.02      -0.01   -2273.81      -0.02      -0.04       0.00   -2649.81

   24  12.1  1.0  0.0   -1464.06       0.01      -0.00      -0.00       0.02      -0.02       0.00       0.01       0.00   -3723.58
                           -0.00    1464.05       0.00      -0.01       0.00      -0.03       0.01       0.01   -3723.59       0.04

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

   37   1.1  0.0  0.0      -0.00      -0.00      -0.00    1507.01       0.00       0.00      -0.00   -1267.11      -0.00      -0.00
                            0.00       0.00   -4418.17      -0.00       0.00      -0.00    -984.46       0.00       0.00      -0.00

   38   2.1  0.0  0.0    3278.88       0.00       0.00       0.00       0.00    1508.40      -0.00      -0.00       0.00    -524.53
                            0.00    5024.23       0.00      -0.00    -341.71      -0.00      -0.00       0.00     803.73       0.00

   39   3.1  0.0  0.0      -0.00   -4418.18       0.00       0.00     984.46       0.00       0.00      -0.00    -706.78      -0.00
                         4418.17       0.00       0.00      -0.00       0.00     984.46       0.00      -0.00       0.00    -706.78

   40   4.1  0.0  0.0       0.00       0.00    4418.18      -0.00      -0.00      -0.00    -984.46      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00    1850.86       0.00       0.00      -0.00     671.55       0.00       0.00

   41   5.1  0.0  0.0    3908.42      -0.00       0.00       0.00      -0.00   -1265.44       0.00      -0.00      -0.00    -625.23
                            0.00    -885.39      -0.00      -0.00   -1939.04       0.00      -0.00      -0.00    -141.63       0.00

   42   6.1  0.0  0.0    7057.65      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00    -772.73
                            0.00   -7057.65       0.00       0.00       0.00       0.00      -0.00      -0.00    -772.73      -0.00

   43   7.1  0.0  0.0       0.00      -0.00     904.24       0.00      -0.00      -0.00   -2542.57       0.00      -0.00       0.00
                            0.00      -0.00       0.00   -1001.37       0.00      -0.00       0.00    2759.86       0.00      -0.00

   44   8.1  0.0  0.0      -0.00       0.00      -0.00   -1889.42      -0.00       0.00      -0.00   -2247.14      -0.00      -0.00
                            0.00       0.00    -904.24      -0.00       0.00       0.00   -2542.57       0.00      -0.00       0.00

   45   9.1  0.0  0.0      -0.00     904.24      -0.00       0.00   -2542.57      -0.00      -0.00       0.00   -2259.05       0.00
                          904.24      -0.00      -0.00      -0.00       0.00    2542.57       0.00      -0.00       0.00    2259.05

   46  10.1  0.0  0.0       0.00      -0.00    -953.46      -0.00       0.00      -0.00   -2236.65       0.00      -0.00      -0.00
                            0.00      -0.00       0.00    4205.06      -0.00       0.00      -0.00    1525.73       0.00       0.00

   47  11.1  0.0  0.0    -744.89      -0.00      -0.00      -0.00      -0.00   -3294.00       0.00      -0.00       0.00    2083.45
                           -0.00     329.66      -0.00      -0.00   -4268.06       0.00      -0.00      -0.00     922.05       0.00

   48  12.1  0.0  0.0      -0.00       0.00      -0.00    3423.86       0.00      -0.00      -0.00   -2878.82       0.00       0.00
                           -0.00      -0.00     953.46      -0.00       0.00      -0.00   -2236.65       0.00      -0.00       0.00

   49  13.1  0.0  0.0      -0.00     953.46      -0.00       0.00    2236.65      -0.00      -0.00       0.00    2666.83      -0.00
                         -953.46      -0.00      -0.00      -0.00       0.00    2236.65      -0.00       0.00      -0.00    2666.83

   50  14.1  0.0  0.0    -810.72      -0.00       0.00      -0.00       0.00    3026.54      -0.00      -0.00      -0.00    2267.57
                            0.00   -1050.45      -0.00       0.00   -1339.43       0.00      -0.00       0.00   -2938.10       0.00

   51  15.1  0.0  0.0   -2113.45      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00    4436.12
                           -0.00    2113.45      -0.00       0.00       0.00      -0.00      -0.00       0.00    4436.12      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.02    -670.61       0.00      -0.00       0.01    -797.58
                           -0.01       0.17       0.00       0.02    4472.10      -0.02      -0.01       0.00     902.48      -0.01

    2   2.1  1.0  1.0       0.00       0.00      -0.00       0.02   -4472.11       0.01      -0.00       0.00     902.42       0.03
                            0.03      -0.08       0.00      -0.01      -0.00    -355.46       0.02       0.01       0.02     979.53

    3   3.1  1.0  1.0       0.00       0.00      -0.01    4472.12       0.02       0.00    -902.41       0.00      -0.00      -0.00
                            0.01    2070.48   -4472.08       0.08       0.01       0.00       0.01    -902.41       0.00      -0.00

    4   4.1  1.0  1.0       0.00       0.00     670.40      -0.01       0.01      -0.00       0.01   -3912.56       0.01      -0.02
                         3656.01       0.06       0.02     355.31      -0.00       0.01    4805.23      -0.01       0.03       0.01

    5   5.1  1.0  1.0       0.00       0.00       0.02       0.03     902.02      -0.01      -0.01       0.00   -2555.90      -0.02
                            0.04       0.09      -0.02      -0.00       0.00   -4805.26      -0.01      -0.05       0.00   -1743.50

    6   6.1  1.0  1.0       0.00       0.00      -0.02      -0.01       0.16    3912.57       0.01      -0.00      -0.01   -3289.75
                            0.18      -0.31      -0.01      -0.00     902.15      -0.01      -0.04       0.08    2555.86       0.03

    7   7.1  1.0  1.0       0.00       0.00      -0.00    -902.15       0.01      -0.00    2555.90       0.00       0.00      -0.00
                           -0.06       0.11    -902.15       0.01       0.00      -0.01      -0.10   -2555.90      -0.02       0.01

    8   8.1  1.0  1.0       0.00       0.00     797.32      -0.01       0.04      -0.00      -0.00    3289.73      -0.08      -0.01
                         -648.39      -0.03       0.02    -979.25       0.01       0.01    1743.61      -0.02       0.03      -0.01

    9   9.1  1.0  1.0       0.00       0.00      -0.00       0.03    -811.01       0.00       0.00      -0.00   -2273.74       0.00
                            0.01      -0.17      -0.02      -0.01       0.03     895.48      -0.01       0.03      -0.01   -2468.07

   10  10.1  1.0  1.0       0.00       0.00       0.02       0.00      -0.16   -1689.65       0.00       0.01       0.02   -2009.57
                            0.02       0.33       0.01       0.01    -811.13       0.00       0.03       0.02    2273.69      -0.03

   11  11.1  1.0  1.0   41030.52       0.00       0.01    -811.11      -0.00      -0.00   -2273.75      -0.00       0.00      -0.01
                            0.08    5266.03     811.12      -0.01       0.00      -0.01       0.12   -2273.74       0.00       0.00

   12  12.1  1.0  1.0       0.00   41737.68    1463.12      -0.00      -0.02      -0.01       0.00       0.01       0.07      -0.01
                        -5266.03      -0.00       0.01    1463.11       0.04      -0.01       0.05      -0.00      -0.01      -0.01

   13   1.1  1.0  0.0       0.01    1463.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -811.12      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -811.11      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01   -1463.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      -0.00      -0.01       0.00       0.00       0.00   40693.34       0.00       0.00       0.00       0.00
                            0.01       0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0   -2273.75       0.00       0.00       0.00       0.00       0.00   40693.33       0.00       0.00       0.00
                           -0.12      -0.05      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0      -0.00       0.01       0.00       0.00       0.00       0.00       0.00   40693.33       0.00       0.00
                         2273.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00   40693.34       0.00
                           -0.00       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -0.01      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40693.34
                           -0.00       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0   -2649.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11    3723.80      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.00    3723.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2649.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.01     670.40       0.02      -0.02      -0.00     797.32
                           -0.00      -0.00      -0.00      -0.00    4472.08      -0.02       0.02       0.01     902.15      -0.02

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.02    4472.12      -0.01       0.03      -0.01    -902.15      -0.01
                           -0.00      -0.00      -0.02       0.01      -0.08    -355.31       0.00       0.00      -0.01     979.25

   27   3.1  1.0 -1.0       0.00       0.00       0.02   -4472.11       0.02       0.01     902.02       0.16       0.01       0.04
                           -0.00      -0.00   -4472.10       0.00      -0.01       0.00      -0.00    -902.15      -0.00      -0.01

   28   4.1  1.0 -1.0       0.00       0.00    -670.61       0.01       0.00      -0.00      -0.01    3912.57      -0.00      -0.00
                           -0.00      -0.00       0.02     355.46      -0.00      -0.01    4805.26       0.01       0.01      -0.01

   29   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -902.41       0.01      -0.01       0.01    2555.90      -0.00
                           -0.00      -0.00       0.01      -0.02      -0.01   -4805.23       0.01       0.04       0.10   -1743.61

   30   6.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00   -3912.56       0.00      -0.00       0.00    3289.73
                           -0.00      -0.00      -0.00      -0.01     902.41       0.01       0.05      -0.08    2555.90       0.02

   31   7.1  1.0 -1.0       0.00       0.00       0.01     902.42      -0.00       0.01   -2555.90      -0.01       0.00      -0.08
                           -0.00      -0.00    -902.48      -0.02      -0.00      -0.03      -0.00   -2555.86       0.02      -0.03

   32   8.1  1.0 -1.0       0.00       0.00    -797.58       0.03      -0.00      -0.02      -0.02   -3289.75      -0.00      -0.01
                           -0.00      -0.00       0.01    -979.53       0.00      -0.01    1743.50      -0.03      -0.01       0.01

   33   9.1  1.0 -1.0       0.00       0.00      -0.00       0.01     811.88      -0.01       0.01      -0.00    2273.78      -0.00
                           -0.00      -0.00       0.01      -0.02      -0.01     895.53      -0.03       0.04       0.11   -2468.19

   34  10.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00    1689.69      -0.01      -0.00       0.01    2009.57
                           -0.00      -0.00      -0.01      -0.01    -811.90       0.01       0.05       0.08    2273.77      -0.01

   35  11.1  1.0 -1.0       0.00       0.00       0.02     811.88       0.00      -0.02    2273.78      -0.02      -0.00       0.07
                           -0.00      -0.00     811.94      -0.02      -0.01       0.02      -0.01   -2273.81      -0.02      -0.04

   36  12.1  1.0 -1.0       0.00       0.00   -1464.06       0.01      -0.00      -0.00       0.02      -0.02       0.00       0.01
                           -0.00      -0.00      -0.00    1464.05       0.00      -0.01       0.00      -0.03       0.01       0.01

   37   1.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          706.78      -0.00       0.00   -6248.24      -0.00       0.00   -1392.24       0.00       0.00      -0.00

   38   2.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00   -2468.29       0.00       0.00      -0.00   -2616.45       0.00

   39   3.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     486.27      -0.00       0.00       0.00    2741.69

   40   4.1  0.0  0.0    -706.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -6248.24       0.00      -0.00      -0.00       0.00    1392.24       0.00       0.00

   41   5.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    6779.46      -0.00       0.00       0.00    -952.60      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00   -9981.03       0.00       0.00      -0.00       0.00       0.00

   43   7.1  0.0  0.0    2259.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -4158.70    1278.79      -0.00      -0.00      -0.00      -0.00   -3595.73       0.00      -0.00

   44   8.1  0.0  0.0       0.00   -4158.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2259.05      -0.00       0.00    1278.79       0.00      -0.00    3595.73      -0.00       0.00       0.00

   45   9.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00   -4088.19      -0.00       0.00       0.00     725.09

   46  10.1  0.0  0.0    2666.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    1348.40       0.00       0.00       0.00       0.00    3163.10       0.00      -0.00

   47  11.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -1519.64      -0.00       0.00      -0.00   -1377.52       0.00

   48  12.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2666.83      -0.00      -0.00    1348.40       0.00       0.00   -3163.10      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00    1104.79      -0.00      -0.00       0.00    6228.99

   50  14.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     339.03      -0.00       0.00      -0.00   -6174.40       0.00

   51  15.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    2988.87       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.00       0.00       0.02   -1464.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.01    -811.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.01      -0.00     811.88       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.01       0.02   -1464.05       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     811.88      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     811.90       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.01    1689.69      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -895.53      -0.01      -0.02       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.01      -0.01    2273.78       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.05       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00      -0.02      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.08    2273.81       0.03       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    2273.78       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11   -2273.77       0.02      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      -0.00    2009.57       0.07       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         2468.19       0.01       0.04      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.01       0.00    2649.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.02      -0.00    3723.59       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.00      -0.00       0.01   -3723.58       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.01    2649.81      -0.04       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0   -2649.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.11   -2649.79       0.01      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00    3723.89      -0.04       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                        -3723.80       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.02    -670.61       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.02    4472.10      -0.02      -0.01       0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.02   -4472.11       0.01      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.01      -0.00    -355.46       0.02       0.01

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.01    4472.12       0.02       0.00    -902.41       0.00
                            0.00       0.00       0.00       0.00   -4472.08       0.08       0.01       0.00       0.01    -902.41

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00     670.40      -0.01       0.01      -0.00       0.01   -3912.56
                            0.00       0.00       0.00       0.00       0.02     355.31      -0.00       0.01    4805.23      -0.01

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.02       0.03     902.02      -0.01      -0.01       0.00
                            0.00       0.00       0.00       0.00      -0.02      -0.00       0.00   -4805.26      -0.01      -0.05

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.02      -0.01       0.16    3912.57       0.01      -0.00
                            0.00       0.00       0.00       0.00      -0.01      -0.00     902.15      -0.01      -0.04       0.08

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00    -902.15       0.01      -0.00    2555.90       0.00
                            0.00       0.00       0.00       0.00    -902.15       0.01       0.00      -0.01      -0.10   -2555.90

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00     797.32      -0.01       0.04      -0.00      -0.00    3289.73
                            0.00       0.00       0.00       0.00       0.02    -979.25       0.01       0.01    1743.61      -0.02

   21   9.1  1.0  0.0   41030.52       0.00       0.00       0.00      -0.00       0.03    -811.01       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.02      -0.01       0.03     895.48      -0.01       0.03

   22  10.1  1.0  0.0       0.00   41030.52       0.00       0.00       0.02       0.00      -0.16   -1689.65       0.00       0.01
                           -0.00       0.00       0.00       0.00       0.01       0.01    -811.13       0.00       0.03       0.02

   23  11.1  1.0  0.0       0.00       0.00   41030.52       0.00       0.01    -811.11      -0.00      -0.00   -2273.75      -0.00
                           -0.00      -0.00       0.00       0.00     811.12      -0.01       0.00      -0.01       0.12   -2273.74

   24  12.1  1.0  0.0       0.00       0.00       0.00   41737.68    1463.12      -0.00      -0.02      -0.01       0.00       0.01
                           -0.00      -0.00      -0.00       0.00       0.01    1463.11       0.04      -0.01       0.05      -0.00

   25   1.1  1.0 -1.0      -0.00       0.02       0.01    1463.12       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.01    -811.12      -0.01      -0.02   -6324.18      -0.00       0.11   -1276.30      -0.01

   26   2.1  1.0 -1.0       0.03       0.00    -811.11      -0.00       0.00       0.01       0.00       0.00       0.00       0.00
                            0.01      -0.01       0.01   -1463.11    6324.18      -0.00      -0.00      -0.05      -0.06   -1276.23

   27   3.1  1.0 -1.0    -811.01      -0.16      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03     811.13      -0.00      -0.04       0.00       0.00       0.09    1451.02       0.05       0.01

   28   4.1  1.0 -1.0       0.00   -1689.65      -0.00      -0.01       0.00       0.00       0.00   40693.34       0.00       0.00
                         -895.48      -0.00       0.01       0.01      -0.11       0.05   -1451.02       0.02       0.25      -0.02

   29   5.1  1.0 -1.0       0.00       0.00   -2273.75       0.00       0.00       0.00       0.00       0.00   40693.33       0.00
                            0.01      -0.03      -0.12      -0.05    1276.30       0.06      -0.05      -0.25       0.33   -3614.50

   30   6.1  1.0 -1.0      -0.00       0.01      -0.00       0.01       0.00       0.00       0.00       0.00       0.00   40693.33
                           -0.03      -0.02    2273.74       0.00       0.01    1276.23      -0.01       0.02    3614.50      -0.06

   31   7.1  1.0 -1.0   -2273.74       0.02       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01   -2273.69      -0.00       0.01      -0.01      -0.03       0.00   -1262.50      -0.00       0.08

   32   8.1  1.0 -1.0       0.00   -2009.57      -0.01      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         2468.07       0.03      -0.00       0.01      -0.16       0.00     257.33      -0.05      -0.15       0.06

   33   9.1  1.0 -1.0      -0.01      -0.00   -2649.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.03      -0.11    3723.80    1148.17       0.09      -0.05      -0.49      -0.55    3215.83

   34  10.1  1.0 -1.0       0.00      -0.00       0.00    3723.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.01    2649.79      -0.00      -0.01    1148.16      -0.01      -0.01   -3215.53      -0.07

   35  11.1  1.0 -1.0    2649.77       0.01       0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -2649.81      -0.01       0.00      -0.01       0.03       0.01    3656.01       0.04       0.18

   36  12.1  1.0 -1.0       0.00   -3723.58       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                        -3723.59       0.04       0.02       0.01       0.17      -0.08    2070.48       0.06       0.09      -0.31

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    1507.01       0.00       0.00
                         -999.53       0.00       0.00      -0.00      -0.00      -0.00    4418.17       0.00      -0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    3278.88       0.00       0.00       0.00       0.00    1508.40
                            0.00      -0.00     394.85       0.00      -0.00   -5024.23      -0.00       0.00     341.71       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00   -4418.18       0.00       0.00     984.46       0.00
                            0.00       0.00       0.00       0.00   -4418.17      -0.00      -0.00       0.00      -0.00    -984.46

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    4418.18      -0.00      -0.00      -0.00
                           -0.00     999.53       0.00       0.00       0.00       0.00      -0.00   -1850.86      -0.00      -0.00

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00    3908.42      -0.00       0.00       0.00      -0.00   -1265.44
                           -0.00       0.00   -1084.51       0.00      -0.00     885.39       0.00       0.00    1939.04      -0.00

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00    7057.65      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00    1092.80      -0.00      -0.00    7057.65      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     904.24       0.00      -0.00      -0.00
                            0.00    3194.78       0.00      -0.00      -0.00       0.00      -0.00    1001.37      -0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -1889.42      -0.00       0.00
                        -3194.78       0.00       0.00       0.00      -0.00      -0.00     904.24       0.00      -0.00      -0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     904.24      -0.00       0.00   -2542.57      -0.00
                            0.00       0.00      -0.00    5881.30    -904.24       0.00       0.00       0.00      -0.00   -2542.57

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -953.46      -0.00       0.00      -0.00
                           -0.00   -3771.47      -0.00       0.00      -0.00       0.00      -0.00   -4205.06       0.00      -0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00    -744.89      -0.00      -0.00      -0.00      -0.00   -3294.00
                           -0.00      -0.00    4250.42       0.00       0.00    -329.66       0.00       0.00    4268.06      -0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    3423.86       0.00      -0.00
                         3771.47      -0.00      -0.00      -0.00       0.00       0.00    -953.46       0.00      -0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     953.46      -0.00       0.00    2236.65      -0.00
                            0.00       0.00       0.00       0.00     953.46       0.00       0.00       0.00      -0.00   -2236.65

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00    -810.72      -0.00       0.00      -0.00       0.00    3026.54
                           -0.00       0.00    -948.27       0.00      -0.00    1050.45       0.00      -0.00    1339.43      -0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00   -2113.45      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00   -6273.62      -0.00       0.00   -2113.45       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    3278.88      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -4418.17       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00   -4418.18       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -5024.23      -0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    4418.18
                            0.00       0.00       0.00       0.00       0.00       0.00    4418.17      -0.00      -0.00      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    1507.01       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1850.86

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     984.46      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     341.71      -0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1508.40       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -984.46      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -984.46
                            0.00       0.00       0.00       0.00       0.00       0.00     984.46       0.00      -0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   -1267.11      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -671.55

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -706.78       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -803.73      -0.00      -0.00

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -524.53      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     706.78      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -706.77
                            0.00       0.00       0.00       0.00       0.00       0.00    -706.78       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0       0.01    -797.58      -0.00       0.00       0.02   -1464.06       0.00       0.00       0.00       0.00
                          902.48      -0.01      -0.01       0.01    -811.94       0.00      -0.00      -0.00       0.00    6248.24

   14   2.1  1.0  0.0     902.42       0.03       0.01      -0.00     811.88       0.01       0.00       0.00       0.00       0.00
                            0.02     979.53       0.02       0.01       0.02   -1464.05    6248.24      -0.00      -0.00      -0.00

   15   3.1  1.0  0.0      -0.00      -0.00     811.88      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.01     811.90       0.01      -0.00       0.00    2468.29      -0.00       0.00

   16   4.1  1.0  0.0       0.01      -0.02      -0.01    1689.69      -0.02      -0.00       0.00       0.00       0.00       0.00
                            0.03       0.01    -895.53      -0.01      -0.02       0.01      -0.00      -0.00    -486.27       0.00

   17   5.1  1.0  0.0   -2555.90      -0.02       0.01      -0.01    2273.78       0.02       0.00       0.00       0.00       0.00
                            0.00   -1743.50       0.03      -0.05       0.01      -0.00    1392.24      -0.00       0.00      -0.00

   18   6.1  1.0  0.0      -0.01   -3289.75      -0.00      -0.00      -0.02      -0.02       0.00       0.00       0.00       0.00
                         2555.86       0.03      -0.04      -0.08    2273.81       0.03      -0.00       0.00      -0.00   -1392.24

   19   7.1  1.0  0.0       0.00      -0.00    2273.78       0.01      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.01      -0.11   -2273.77       0.02      -0.01      -0.00    2616.45      -0.00      -0.00

   20   8.1  1.0  0.0      -0.08      -0.01      -0.00    2009.57       0.07       0.01       0.00       0.00       0.00       0.00
                            0.03      -0.01    2468.19       0.01       0.04      -0.01       0.00      -0.00   -2741.69      -0.00

   21   9.1  1.0  0.0   -2273.74       0.00      -0.01       0.00    2649.77       0.00       0.00       0.00       0.00       0.00
                           -0.01   -2468.07       0.02       0.02      -0.00    3723.59     999.53      -0.00      -0.00       0.00

   22  10.1  1.0  0.0       0.02   -2009.57      -0.00      -0.00       0.01   -3723.58       0.00       0.00       0.00       0.00
                         2273.69      -0.03       0.03      -0.01    2649.81      -0.04      -0.00       0.00      -0.00    -999.53

   23  11.1  1.0  0.0       0.00      -0.01   -2649.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.11   -2649.79       0.01      -0.02      -0.00    -394.85      -0.00      -0.00

   24  12.1  1.0  0.0       0.07      -0.01       0.00    3723.89      -0.04       0.01       0.00       0.00       0.00       0.00
                           -0.01      -0.01   -3723.80       0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    3278.88      -0.00       0.00
                            0.01       0.16   -1148.17       0.01       0.01      -0.17       0.00       0.00    4418.17      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00   -4418.18       0.00
                            0.03      -0.00      -0.09   -1148.16      -0.03       0.08       0.00    5024.23       0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    4418.18
                           -0.00    -257.33       0.05       0.01      -0.01   -2070.48   -4418.17       0.00       0.00       0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    1507.01       0.00       0.00      -0.00
                         1262.50       0.05       0.49       0.01   -3656.01      -0.06      -0.00      -0.00      -0.00    1850.86

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     984.46      -0.00
                            0.00       0.15       0.55    3215.53      -0.04      -0.09       0.00    -341.71       0.00       0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1508.40       0.00      -0.00
                           -0.08      -0.06   -3215.83       0.07      -0.18       0.31      -0.00      -0.00     984.46       0.00

   31   7.1  1.0 -1.0   40693.34       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -984.46
                           -0.04   -7118.10      -0.11      -0.05       0.06      -0.11    -984.46      -0.00       0.00      -0.00

   32   8.1  1.0 -1.0       0.00   40693.34       0.00       0.00       0.00       0.00   -1267.11      -0.00      -0.00      -0.00
                         7118.10      -0.01      -0.02      -0.05     648.39       0.03       0.00       0.00      -0.00     671.55

   33   9.1  1.0 -1.0       0.00       0.00   41030.52       0.00       0.00       0.00      -0.00       0.00    -706.78       0.00
                            0.11       0.02       0.90   -3747.28      -0.01       0.17       0.00     803.73       0.00       0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00   41030.52       0.00       0.00      -0.00    -524.53      -0.00      -0.00
                            0.05       0.05    3747.28      -0.05      -0.02      -0.33      -0.00       0.00    -706.78       0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   41030.52       0.00      -0.00       0.00      -0.00    -706.77
                           -0.06    -648.39       0.01       0.02      -0.08   -5266.03     706.78      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   41737.68      -0.00      -0.00      -0.00      -0.00
                            0.11      -0.03      -0.17       0.33    5266.03       0.00      -0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0      -0.00   -1267.11      -0.00      -0.00      -0.00      -0.00    5737.38       0.00       0.00       0.00
                          984.46      -0.00      -0.00       0.00    -706.78       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -0.00      -0.00       0.00    -524.53       0.00      -0.00       0.00    5737.37       0.00       0.00
                            0.00      -0.00    -803.73      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00      -0.00    -706.78      -0.00      -0.00      -0.00       0.00       0.00    5737.38       0.00
                           -0.00       0.00      -0.00     706.78       0.00      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0    -984.46      -0.00       0.00      -0.00    -706.77      -0.00       0.00       0.00       0.00    5737.38
                            0.00    -671.55      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0       0.00      -0.00      -0.00    -625.23      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     141.63      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00      -0.00       0.00    -772.73      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     772.73       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0   -2542.57       0.00      -0.00       0.00    2259.05       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2759.86      -0.00       0.00      -0.00    4158.70      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0      -0.00   -2247.14      -0.00      -0.00       0.00   -4158.71       0.00       0.00       0.00       0.00
                         2542.57      -0.00       0.00      -0.00    2259.05       0.00      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      -0.00       0.00   -2259.05       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -2259.05      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0   -2236.65       0.00      -0.00      -0.00    2666.83      -0.00       0.00       0.00       0.00       0.00
                            0.00   -1525.73      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.00      -0.00       0.00    2083.45       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -922.05      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0      -0.00   -2878.82       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                         2236.65      -0.00       0.00      -0.00    2666.83       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0      -0.00       0.00    2666.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00   -2666.83      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.00      -0.00      -0.00    2267.57       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    2938.10      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00      -0.00       0.00    4436.12       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -4436.12       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0    3908.42    7057.65       0.00      -0.00      -0.00       0.00    -744.89      -0.00      -0.00    -810.72
                           -0.00      -0.00      -0.00      -0.00    -904.24      -0.00       0.00       0.00     953.46      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     904.24      -0.00      -0.00       0.00     953.46      -0.00
                          885.39    7057.65       0.00      -0.00       0.00       0.00    -329.66       0.00       0.00    1050.45

    3   3.1  1.0  1.0       0.00       0.00     904.24      -0.00      -0.00    -953.46      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     904.24       0.00      -0.00       0.00    -953.46       0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   -1889.42       0.00      -0.00      -0.00    3423.86       0.00      -0.00
                            0.00      -0.00    1001.37       0.00       0.00   -4205.06       0.00       0.00       0.00      -0.00

    5   5.1  1.0  1.0      -0.00       0.00      -0.00      -0.00   -2542.57       0.00      -0.00       0.00    2236.65       0.00
                         1939.04      -0.00      -0.00      -0.00      -0.00       0.00    4268.06      -0.00      -0.00    1339.43

    6   6.1  1.0  1.0   -1265.44      -0.00      -0.00       0.00      -0.00      -0.00   -3294.00      -0.00      -0.00    3026.54
                           -0.00      -0.00       0.00      -0.00   -2542.57      -0.00      -0.00       0.00   -2236.65      -0.00

    7   7.1  1.0  1.0       0.00       0.00   -2542.57      -0.00      -0.00   -2236.65       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00    2542.57      -0.00       0.00       0.00    2236.65       0.00       0.00

    8   8.1  1.0  1.0      -0.00      -0.00       0.00   -2247.14       0.00       0.00      -0.00   -2878.82       0.00      -0.00
                            0.00       0.00   -2759.86      -0.00       0.00   -1525.73       0.00      -0.00      -0.00      -0.00

    9   9.1  1.0  1.0      -0.00       0.00      -0.00      -0.00   -2259.05      -0.00       0.00       0.00    2666.83      -0.00
                          141.63     772.73      -0.00       0.00      -0.00      -0.00    -922.05       0.00       0.00    2938.10

   10  10.1  1.0  1.0    -625.23    -772.73       0.00      -0.00       0.00      -0.00    2083.45       0.00      -0.00    2267.57
                           -0.00       0.00       0.00      -0.00   -2259.05      -0.00      -0.00      -0.00   -2666.83      -0.00

   11  11.1  1.0  1.0      -0.00      -0.00    2259.05       0.00      -0.00    2666.83       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    2259.05      -0.00      -0.00       0.00    2666.83      -0.00       0.00

   12  12.1  1.0  1.0      -0.00      -0.00       0.00   -4158.71       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00    4158.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1278.79      -0.00      -0.00   -1348.40      -0.00       0.00      -0.00       0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00   -1278.79       0.00      -0.00       0.00   -1348.40       0.00       0.00

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6779.46    9981.03       0.00      -0.00       0.00      -0.00    1519.64      -0.00      -0.00    -339.03

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    4088.19      -0.00       0.00      -0.00   -1104.79       0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -3595.73       0.00      -0.00      -0.00    3163.10       0.00      -0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    3595.73       0.00      -0.00   -3163.10       0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          952.60      -0.00      -0.00      -0.00      -0.00      -0.00    1377.52       0.00      -0.00    6174.40

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00    -725.09       0.00      -0.00       0.00   -6228.99      -0.00

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    3194.78      -0.00       0.00       0.00   -3771.47      -0.00       0.00

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -3194.78      -0.00      -0.00    3771.47       0.00       0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1084.51   -1092.80      -0.00      -0.00       0.00       0.00   -4250.42       0.00      -0.00     948.27

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00   -5881.30      -0.00      -0.00       0.00      -0.00      -0.00

   25   1.1  1.0 -1.0    3908.42    7057.65       0.00      -0.00      -0.00       0.00    -744.89      -0.00      -0.00    -810.72
                            0.00       0.00       0.00       0.00     904.24       0.00      -0.00      -0.00    -953.46       0.00

   26   2.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     904.24      -0.00      -0.00       0.00     953.46      -0.00
                         -885.39   -7057.65      -0.00       0.00      -0.00      -0.00     329.66      -0.00      -0.00   -1050.45

   27   3.1  1.0 -1.0       0.00       0.00     904.24      -0.00      -0.00    -953.46      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00    -904.24      -0.00       0.00      -0.00     953.46      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00   -1889.42       0.00      -0.00      -0.00    3423.86       0.00      -0.00
                           -0.00       0.00   -1001.37      -0.00      -0.00    4205.06      -0.00      -0.00      -0.00       0.00

   29   5.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00   -2542.57       0.00      -0.00       0.00    2236.65       0.00
                        -1939.04       0.00       0.00       0.00       0.00      -0.00   -4268.06       0.00       0.00   -1339.43

   30   6.1  1.0 -1.0   -1265.44      -0.00      -0.00       0.00      -0.00      -0.00   -3294.00      -0.00      -0.00    3026.54
                            0.00       0.00      -0.00       0.00    2542.57       0.00       0.00      -0.00    2236.65       0.00

   31   7.1  1.0 -1.0       0.00       0.00   -2542.57      -0.00      -0.00   -2236.65       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00   -2542.57       0.00      -0.00      -0.00   -2236.65      -0.00      -0.00

   32   8.1  1.0 -1.0      -0.00      -0.00       0.00   -2247.14       0.00       0.00      -0.00   -2878.82       0.00      -0.00
                           -0.00      -0.00    2759.86       0.00      -0.00    1525.73      -0.00       0.00       0.00       0.00

   33   9.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00   -2259.05      -0.00       0.00       0.00    2666.83      -0.00
                         -141.63    -772.73       0.00      -0.00       0.00       0.00     922.05      -0.00      -0.00   -2938.10

   34  10.1  1.0 -1.0    -625.23    -772.73       0.00      -0.00       0.00      -0.00    2083.45       0.00      -0.00    2267.57
                            0.00      -0.00      -0.00       0.00    2259.05       0.00       0.00       0.00    2666.83       0.00

   35  11.1  1.0 -1.0      -0.00      -0.00    2259.05       0.00      -0.00    2666.83       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -2259.05       0.00       0.00      -0.00   -2666.83       0.00      -0.00

   36  12.1  1.0 -1.0      -0.00      -0.00       0.00   -4158.71       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00   -4158.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5737.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14953.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   39989.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   39989.74       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   39989.74       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   42105.80       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   42105.81       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42105.80       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42105.80       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42105.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0   -2113.45
                            0.00

    2   2.1  1.0  1.0      -0.00
                        -2113.45

    3   3.1  1.0  1.0      -0.00
                            0.00

    4   4.1  1.0  1.0      -0.00
                           -0.00

    5   5.1  1.0  1.0       0.00
                           -0.00

    6   6.1  1.0  1.0       0.00
                            0.00

    7   7.1  1.0  1.0       0.00
                            0.00

    8   8.1  1.0  1.0      -0.00
                           -0.00

    9   9.1  1.0  1.0       0.00
                        -4436.12

   10  10.1  1.0  1.0    4436.12
                            0.00

   11  11.1  1.0  1.0       0.00
                            0.00

   12  12.1  1.0  1.0      -0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                            0.00

   14   2.1  1.0  0.0       0.00
                           -0.00

   15   3.1  1.0  0.0       0.00
                        -2988.87

   16   4.1  1.0  0.0       0.00
                           -0.00

   17   5.1  1.0  0.0       0.00
                           -0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                           -0.00

   21   9.1  1.0  0.0       0.00
                            0.00

   22  10.1  1.0  0.0       0.00
                           -0.00

   23  11.1  1.0  0.0       0.00
                         6273.62

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0   -2113.45
                           -0.00

   26   2.1  1.0 -1.0      -0.00
                         2113.45

   27   3.1  1.0 -1.0      -0.00
                           -0.00

   28   4.1  1.0 -1.0      -0.00
                            0.00

   29   5.1  1.0 -1.0       0.00
                            0.00

   30   6.1  1.0 -1.0       0.00
                           -0.00

   31   7.1  1.0 -1.0       0.00
                           -0.00

   32   8.1  1.0 -1.0      -0.00
                            0.00

   33   9.1  1.0 -1.0       0.00
                         4436.12

   34  10.1  1.0 -1.0    4436.12
                           -0.00

   35  11.1  1.0 -1.0       0.00
                           -0.00

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

   51  15.1  0.0  0.0   43964.07
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by -20885.81485212 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40693.341       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40693.335       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40693.334       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40693.335       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40693.343
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.004      -0.144       0.015      -0.013       0.004      -0.184
                                0.000       0.008    6324.489      -0.025       0.007       0.013    1276.068      -0.022

    2    1  |1 0>               0.000       0.026       0.008      -0.000       0.021      -0.003       0.192       0.016
                               -0.008       0.000      -0.059    -502.585       0.018       0.005       0.004    1385.069

    3    1  |1 0>               0.004       0.008       0.023       0.010      -0.276       0.112       0.001       0.030
                            -6324.489       0.059       0.000       0.000       0.005   -1276.011      -0.000      -0.012

    4    1  |1 0>              -0.144      -0.000       0.010      -0.005       0.004       0.006       0.005      -0.015
                                0.025     502.585      -0.000       0.000    6795.643      -0.004       0.029      -0.001

    5    1  |1 0>               0.015       0.021      -0.276       0.004      -0.016       0.005      -0.001      -0.016
                               -0.007      -0.018      -0.005   -6795.643       0.000      -0.010       0.077   -2465.759

    6    1  |1 0>              -0.013      -0.003       0.112       0.006       0.005      -0.004      -0.004      -0.013
                               -0.013      -0.005    1276.011       0.004       0.010       0.000    3614.563       0.036

    7    1  |1 0>               0.004       0.192       0.001       0.005      -0.001      -0.004       0.001      -0.054
                            -1276.068      -0.004       0.000      -0.029      -0.077   -3614.563       0.000      -0.018

    8    1  |1 0>              -0.184       0.016       0.030      -0.015      -0.016      -0.013      -0.054      -0.013
                                0.022   -1385.069       0.012       0.001    2465.759      -0.036       0.018       0.000

    9    1  |1 0>              -0.003       0.024       0.614      -0.003       0.011      -0.002       0.029      -0.001
                               -0.007      -0.022       0.012    1266.436      -0.032       0.048       0.067   -3490.466

   10    1  |1 0>               0.012      -0.001      -0.113       0.028      -0.003       0.003       0.023       0.002
                                0.003       0.000   -1147.654       0.012       0.059       0.069    3215.541      -0.029

   11    1  |1 0>               0.021       0.539       0.001      -0.020       0.023      -0.017       0.002       0.048
                             1147.673      -0.017      -0.002       0.008       0.075   -3215.607      -0.014      -0.027

   12    1  |1 0>              -0.668       0.004      -0.014      -0.006       0.012      -0.011       0.049      -0.003
                                0.004    2069.814       0.032      -0.014       0.036      -0.023      -0.002       0.003

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024    6324.183       0.003      -0.111    1276.298       0.010      -0.009      -0.163

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -6324.183       0.001       0.002       0.050       0.063    1276.235      -0.031       0.004

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003      -0.002      -0.087   -1451.020      -0.050      -0.005       0.001     257.328

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.111      -0.050    1451.020      -0.023      -0.248       0.020   -1262.499      -0.047

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1276.298      -0.063       0.050       0.248      -0.328    3614.502      -0.002      -0.153

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.010   -1276.235       0.005      -0.020   -3614.502       0.059       0.079       0.062

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009       0.031      -0.001    1262.499       0.002      -0.079       0.044    7118.097

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.163      -0.004    -257.328       0.047       0.153      -0.062   -7118.097       0.015

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1148.167      -0.092       0.051       0.492       0.546   -3215.828      -0.114      -0.023

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009   -1148.162       0.007       0.008    3215.526       0.065      -0.051      -0.049

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009      -0.029      -0.006   -3656.010      -0.041      -0.183       0.056     648.390

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.169       0.076   -2070.477      -0.064      -0.093       0.313      -0.113       0.033

    1    1  |0 0>              -0.000      -0.000      -0.000    2131.236       0.000       0.000      -0.000   -1791.971
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            4637.043       0.000       0.000       0.000       0.000    2133.204      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000   -6248.244       0.000       0.000    1392.241       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000    6248.244      -0.000      -0.000      -0.000   -1392.241      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5527.335      -0.000       0.000       0.000      -0.000   -1789.609       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            9981.029      -0.000       0.000       0.000       0.000      -0.001       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000      -0.000    1278.792       0.000      -0.000      -0.000   -3595.735       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000       0.000      -0.000   -2672.048      -0.000       0.000      -0.000   -3177.930
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000    1278.791      -0.000       0.000   -3595.738      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000      -0.000   -1348.397      -0.000       0.000      -0.000   -3163.102       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>           -1053.432      -0.000      -0.000      -0.000      -0.000   -4658.426       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000       0.000      -0.000    4842.067       0.000      -0.000      -0.000   -4071.273
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              -0.000    1348.397      -0.000       0.000    3163.107      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>           -1146.527      -0.000       0.000      -0.000       0.000    4280.172      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>           -2988.872      -0.000      -0.000      -0.000       0.000       0.006       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.004      -0.144
                                0.000       0.000       0.000       0.000       0.000       0.008    6324.489      -0.025

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.026       0.008      -0.000
                                0.000       0.000       0.000       0.000      -0.008       0.000      -0.059    -502.585

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.004       0.008       0.023       0.010
                                0.000       0.000       0.000       0.000   -6324.489       0.059       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.144      -0.000       0.010      -0.005
                                0.000       0.000       0.000       0.000       0.025     502.585      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.015       0.021      -0.276       0.004
                                0.000       0.000       0.000       0.000      -0.007      -0.018      -0.005   -6795.643

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.013      -0.003       0.112       0.006
                                0.000       0.000       0.000       0.000      -0.013      -0.005    1276.011       0.004

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.004       0.192       0.001       0.005
                                0.000       0.000       0.000       0.000   -1276.068      -0.004       0.000      -0.029

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.184       0.016       0.030      -0.015
                                0.000       0.000       0.000       0.000       0.022   -1385.069       0.012       0.001

    9    1  |1 1>+          41030.522       0.000       0.000       0.000      -0.003       0.024       0.614      -0.003
                                0.000       0.000       0.000       0.000      -0.007      -0.022       0.012    1266.436

   10    1  |1 1>+              0.000   41030.521       0.000       0.000       0.012      -0.001      -0.113       0.028
                                0.000       0.000       0.000       0.000       0.003       0.000   -1147.654       0.012

   11    1  |1 1>+              0.000       0.000   41030.523       0.000       0.021       0.539       0.001      -0.020
                                0.000       0.000       0.000       0.000    1147.673      -0.017      -0.002       0.008

   12    1  |1 1>+              0.000       0.000       0.000   41737.680      -0.668       0.004      -0.014      -0.006
                                0.000       0.000       0.000       0.000       0.004    2069.814       0.032      -0.014

    1    1  |1 0>              -0.003       0.012       0.021      -0.668       0.000       0.000       0.000       0.000
                                0.007      -0.003   -1147.673      -0.004       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.024      -0.001       0.539       0.004       0.000       0.007       0.000       0.000
                                0.022      -0.000       0.017   -2069.814      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.614      -0.113       0.001      -0.014       0.000       0.000       0.003       0.000
                               -0.012    1147.654       0.002      -0.032      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.003       0.028      -0.020      -0.006       0.000       0.000       0.000   40693.341
                            -1266.436      -0.012      -0.008       0.014      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.011      -0.003       0.023       0.012       0.000       0.000       0.000       0.000
                                0.032      -0.059      -0.075      -0.036      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.002       0.003      -0.017      -0.011       0.000       0.000       0.000       0.000
                               -0.048      -0.069    3215.607       0.023      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.029       0.023       0.002       0.049       0.000       0.000       0.000       0.000
                               -0.067   -3215.541       0.014       0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.001       0.002       0.048      -0.003       0.000       0.000       0.000       0.000
                             3490.466       0.029       0.027      -0.003      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.008       0.001      -0.009       0.003       0.000       0.000       0.000       0.000
                                0.000      -0.005      -0.082    5266.101      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.001      -0.002       0.008       0.218       0.000       0.000       0.000       0.000
                                0.005       0.000    3747.383      -0.026      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.009       0.008       0.003      -0.028       0.000       0.000       0.000       0.000
                                0.082   -3747.383       0.000      -0.014      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.003       0.218      -0.028       0.012       0.000       0.000       0.000       0.000
                            -5266.101       0.026       0.014       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.007       0.018    -948.238
                             1148.167      -0.009      -0.009       0.169       0.006       0.015       0.019       0.002

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -0.007       0.000   -6324.529       0.009
                                0.092    1148.162       0.029      -0.076       0.015      -0.008       0.056      -0.106

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.018    6324.529       0.000      -0.008
                               -0.051      -0.007       0.006    2070.477       0.019       0.056       0.013       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000     948.238      -0.009       0.008       0.000
                               -0.492      -0.008    3656.010       0.064       0.002      -0.106       0.000       0.013

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.013       0.027    1275.930      -0.016
                               -0.546   -3215.526       0.041       0.093      -0.019       0.012       0.007      -0.018

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.011      -0.007       0.109    5533.197
                             3215.828      -0.065       0.183      -0.313      -0.007       0.004      -0.184      -0.012

    7    1  |1 1>-              0.000       0.000       0.000       0.000      -0.010   -1276.026       0.006      -0.008
                                0.114       0.051      -0.056       0.113       0.235       0.024       0.004       0.018

    8    1  |1 1>-              0.000       0.000       0.000       0.000    1127.763      -0.027       0.033       0.015
                                0.023       0.049    -648.390      -0.033       0.007       0.200       0.006       0.010

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.001       0.015   -1147.552       0.008
                               -0.900    3747.283       0.010      -0.165      -0.015       0.002       0.028      -0.038

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.010       0.005      -0.108   -2389.556
                            -3747.283       0.048       0.025       0.333       0.010       0.008       0.548      -0.009

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.011   -1147.627      -0.003       0.015
                               -0.010      -0.025       0.083    5266.033      -0.580       0.010       0.006      -0.027

   12    1  |1 1>-              0.000       0.000       0.000       0.000    2069.828      -0.005      -0.010      -0.002
                                0.165      -0.333   -5266.033      -0.000       0.010      -0.668       0.030       0.006

    1    1  |0 0>              -0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -6248.240      -0.000       0.000

    2    1  |0 0>               0.000    -741.791       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -2468.286       0.000

    3    1  |0 0>            -999.533      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     486.275

    4    1  |0 0>               0.000      -0.000    -999.531      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -6248.242       0.000      -0.000      -0.000

    5    1  |0 0>              -0.000    -884.206      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    6779.464      -0.000

    6    1  |0 0>               0.000   -1092.803      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000   -9981.025       0.000

    7    1  |0 0>              -0.000       0.000    3194.780       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1278.792      -0.000      -0.000      -0.000

    8    1  |0 0>              -0.000      -0.000       0.000   -5881.298       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    1278.790       0.000      -0.000

    9    1  |0 0>           -3194.777       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000   -4088.187

   10    1  |0 0>              -0.000      -0.000    3771.471      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1348.397       0.000       0.000       0.000

   11    1  |0 0>               0.000    2946.445       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000   -1519.638      -0.000

   12    1  |0 0>               0.000       0.000       0.000      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1348.396       0.000       0.000

   13    1  |0 0>            3771.469      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    1104.793

   14    1  |0 0>              -0.000    3206.828       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     339.033      -0.000

   15    1  |0 0>               0.000    6273.626       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    2988.871       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.015      -0.013       0.004      -0.184      -0.003       0.012       0.021      -0.668
                                0.007       0.013    1276.068      -0.022       0.007      -0.003   -1147.673      -0.004

    2    1  |1 1>+              0.021      -0.003       0.192       0.016       0.024      -0.001       0.539       0.004
                                0.018       0.005       0.004    1385.069       0.022      -0.000       0.017   -2069.814

    3    1  |1 1>+             -0.276       0.112       0.001       0.030       0.614      -0.113       0.001      -0.014
                                0.005   -1276.011      -0.000      -0.012      -0.012    1147.654       0.002      -0.032

    4    1  |1 1>+              0.004       0.006       0.005      -0.015      -0.003       0.028      -0.020      -0.006
                             6795.643      -0.004       0.029      -0.001   -1266.436      -0.012      -0.008       0.014

    5    1  |1 1>+             -0.016       0.005      -0.001      -0.016       0.011      -0.003       0.023       0.012
                                0.000      -0.010       0.077   -2465.759       0.032      -0.059      -0.075      -0.036

    6    1  |1 1>+              0.005      -0.004      -0.004      -0.013      -0.002       0.003      -0.017      -0.011
                                0.010       0.000    3614.563       0.036      -0.048      -0.069    3215.607       0.023

    7    1  |1 1>+             -0.001      -0.004       0.001      -0.054       0.029       0.023       0.002       0.049
                               -0.077   -3614.563       0.000      -0.018      -0.067   -3215.541       0.014       0.002

    8    1  |1 1>+             -0.016      -0.013      -0.054      -0.013      -0.001       0.002       0.048      -0.003
                             2465.759      -0.036       0.018       0.000    3490.466       0.029       0.027      -0.003

    9    1  |1 1>+              0.011      -0.002       0.029      -0.001      -0.008       0.001      -0.009       0.003
                               -0.032       0.048       0.067   -3490.466       0.000      -0.005      -0.082    5266.101

   10    1  |1 1>+             -0.003       0.003       0.023       0.002       0.001      -0.002       0.008       0.218
                                0.059       0.069    3215.541      -0.029       0.005       0.000    3747.383      -0.026

   11    1  |1 1>+              0.023      -0.017       0.002       0.048      -0.009       0.008       0.003      -0.028
                                0.075   -3215.607      -0.014      -0.027       0.082   -3747.383       0.000      -0.014

   12    1  |1 1>+              0.012      -0.011       0.049      -0.003       0.003       0.218      -0.028       0.012
                                0.036      -0.023      -0.002       0.003   -5266.101       0.026       0.014       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40693.335       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40693.334       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40693.335       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40693.343       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   41030.522       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   41030.521       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   41030.523       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41737.680
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.013       0.011       0.010   -1127.763       0.001      -0.010       0.011   -2069.828
                               -0.019      -0.007       0.235       0.007      -0.015       0.010      -0.580       0.010

    2    1  |1 1>-             -0.027       0.007    1276.026       0.027      -0.015      -0.005    1147.627       0.005
                                0.012       0.004       0.024       0.200       0.002       0.008       0.010      -0.668

    3    1  |1 1>-          -1275.930      -0.109      -0.006      -0.033    1147.552       0.108       0.003       0.010
                                0.007      -0.184       0.004       0.006       0.028       0.548       0.006       0.030

    4    1  |1 1>-              0.016   -5533.197       0.008      -0.015      -0.008    2389.556      -0.015       0.002
                               -0.018      -0.012       0.018       0.010      -0.038      -0.009      -0.027       0.006

    5    1  |1 1>-              0.000      -0.003   -3614.594      -0.012       0.006      -0.004    3215.591       0.011
                               -0.012      -0.063      -0.071       0.072       0.015      -0.013       0.091       0.034

    6    1  |1 1>-              0.003       0.000      -0.006   -4652.396      -0.001      -0.005      -0.011      -0.019
                               -0.063       0.114      -0.028       0.003      -0.012      -0.048       0.051       0.020

    7    1  |1 1>-           3614.594       0.006       0.000       0.054    3215.579      -0.012      -0.004      -0.045
                               -0.071      -0.028      -0.032       0.029      -0.088      -0.057       0.015      -0.009

    8    1  |1 1>-              0.012    4652.396      -0.054       0.000      -0.001    2841.960       0.058       0.011
                                0.072       0.003       0.029      -0.018       0.082      -0.011       0.034      -0.012

    9    1  |1 1>-             -0.006       0.001   -3215.579       0.001       0.000       0.003    3747.352      -0.003
                                0.015      -0.012      -0.088       0.082       0.025       0.036       0.077      -0.150

   10    1  |1 1>-              0.004       0.005       0.012   -2841.960      -0.003       0.000       0.002   -5266.155
                               -0.013      -0.048      -0.057      -0.011       0.036      -0.017       0.017      -0.025

   11    1  |1 1>-          -3215.591       0.011       0.004      -0.058   -3747.352      -0.002       0.000       0.031
                                0.091       0.051       0.015       0.034       0.077       0.017       0.009      -0.020

   12    1  |1 1>-             -0.011       0.019       0.045      -0.011       0.003    5266.155      -0.031       0.000
                                0.034       0.020      -0.009      -0.012      -0.150      -0.025      -0.020      -0.011

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1392.241       0.000       0.000      -0.000    -999.530       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -2616.447       0.000       0.000      -0.000     394.853       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    2741.688       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1392.241       0.000       0.000      -0.000     999.530       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -952.605      -0.000      -0.000       0.000   -1084.512       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001       0.000       0.000      -0.000    1092.803      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -3595.731       0.000      -0.000       0.000    3194.781       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3595.732      -0.000       0.000       0.000   -3194.779       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     725.094       0.000       0.000      -0.000    5881.297

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3163.099       0.000      -0.000      -0.000   -3771.472      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1377.518       0.000      -0.000      -0.000    4250.416       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3163.101      -0.000      -0.000      -0.000    3771.471      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    6228.987       0.000       0.000       0.000       0.001

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -6174.399       0.000      -0.000       0.000    -948.273       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.003       0.000      -0.000       0.000   -6273.623      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024    6324.183       0.003      -0.111    1276.298       0.010      -0.009      -0.163

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -6324.183       0.001       0.002       0.050       0.063    1276.235      -0.031       0.004

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003      -0.002      -0.087   -1451.020      -0.050      -0.005       0.001     257.328

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.111      -0.050    1451.020      -0.023      -0.248       0.020   -1262.499      -0.047

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1276.298      -0.063       0.050       0.248      -0.328    3614.502      -0.002      -0.153

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.010   -1276.235       0.005      -0.020   -3614.502       0.059       0.079       0.062

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009       0.031      -0.001    1262.499       0.002      -0.079       0.044    7118.097

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.163      -0.004    -257.328       0.047       0.153      -0.062   -7118.097       0.015

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1148.167      -0.092       0.051       0.492       0.546   -3215.828      -0.114      -0.023

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009   -1148.162       0.007       0.008    3215.526       0.065      -0.051      -0.049

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009      -0.029      -0.006   -3656.010      -0.041      -0.183       0.056     648.390

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.169       0.076   -2070.477      -0.064      -0.093       0.313      -0.113       0.033

    1    1  |1 0>               0.000      -0.007      -0.018     948.238       0.013      -0.011      -0.010    1127.763
                               -0.006      -0.015      -0.019      -0.002       0.019       0.007      -0.235      -0.007

    2    1  |1 0>               0.007       0.000    6324.529      -0.009       0.027      -0.007   -1276.026      -0.027
                               -0.015       0.008      -0.056       0.106      -0.012      -0.004      -0.024      -0.200

    3    1  |1 0>               0.018   -6324.529       0.000       0.008    1275.930       0.109       0.006       0.033
                               -0.019      -0.056      -0.013      -0.000      -0.007       0.184      -0.004      -0.006

    4    1  |1 0>            -948.238       0.009      -0.008       0.000      -0.016    5533.197      -0.008       0.015
                               -0.002       0.106      -0.000      -0.013       0.018       0.012      -0.018      -0.010

    5    1  |1 0>              -0.013      -0.027   -1275.930       0.016       0.000       0.003    3614.594       0.012
                                0.019      -0.012      -0.007       0.018       0.012       0.063       0.071      -0.072

    6    1  |1 0>               0.011       0.007      -0.109   -5533.197      -0.003       0.000       0.006    4652.396
                                0.007      -0.004       0.184       0.012       0.063      -0.114       0.028      -0.003

    7    1  |1 0>               0.010    1276.026      -0.006       0.008   -3614.594      -0.006       0.000      -0.054
                               -0.235      -0.024      -0.004      -0.018       0.071       0.028       0.032      -0.029

    8    1  |1 0>           -1127.763       0.027      -0.033      -0.015      -0.012   -4652.396       0.054       0.000
                               -0.007      -0.200      -0.006      -0.010      -0.072      -0.003      -0.029       0.018

    9    1  |1 0>               0.001      -0.015    1147.552      -0.008       0.006      -0.001    3215.579      -0.001
                                0.015      -0.002      -0.028       0.038      -0.015       0.012       0.088      -0.082

   10    1  |1 0>              -0.010      -0.005       0.108    2389.556      -0.004      -0.005      -0.012    2841.960
                               -0.010      -0.008      -0.548       0.009       0.013       0.048       0.057       0.011

   11    1  |1 0>               0.011    1147.627       0.003      -0.015    3215.591      -0.011      -0.004       0.058
                                0.580      -0.010      -0.006       0.027      -0.091      -0.051      -0.015      -0.034

   12    1  |1 0>           -2069.828       0.005       0.010       0.002       0.011      -0.019      -0.045       0.011
                               -0.010       0.668      -0.030      -0.006      -0.034      -0.020       0.009       0.012

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40693.341       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40693.335       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40693.334       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40693.335       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40693.343
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
                                0.000       0.000   -6248.238      -0.000       0.000      -0.000   -1392.239       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    7105.332       0.000      -0.000    -483.244      -0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             6248.241       0.000       0.000      -0.000       0.000    1392.239       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    2617.510       0.000       0.000      -0.000     949.719

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1252.128      -0.000      -0.000   -2742.213       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -9981.025       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -1416.148       0.000      -0.000       0.000    3903.025

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1278.791      -0.000       0.000       0.000   -3595.736       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1278.791      -0.000      -0.000      -0.000       0.000    3595.738       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    5946.858      -0.000       0.000      -0.000    2157.715

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     466.207      -0.000      -0.000   -6035.946       0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1348.397      -0.000       0.000      -0.000   -3163.104       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1348.397      -0.000      -0.000      -0.000       0.000    3163.107      -0.000       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1485.562      -0.000       0.000   -1894.235       0.000      -0.000       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    2988.871      -0.000       0.000       0.004      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000    4637.043      -0.000       0.000
                             1148.167      -0.009      -0.009       0.169       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000   -6248.244       0.000
                                0.092    1148.162       0.029      -0.076       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000    6248.244
                               -0.051      -0.007       0.006    2070.477       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    2131.236       0.000       0.000      -0.000
                               -0.492      -0.008    3656.010       0.064       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000    1392.241      -0.000
                               -0.546   -3215.526       0.041       0.093       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    2133.204       0.000      -0.000
                             3215.828      -0.065       0.183      -0.313       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000   -1392.241
                                0.114       0.051      -0.056       0.113       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000   -1791.971      -0.000      -0.000      -0.000
                                0.023       0.049    -648.390      -0.033       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000    -999.533       0.000
                               -0.900    3747.283       0.010      -0.165       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000    -741.791      -0.000      -0.000
                            -3747.283       0.048       0.025       0.333       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -999.531
                               -0.010      -0.025       0.083    5266.033       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.000
                                0.165      -0.333   -5266.033      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.001       0.010      -0.011    2069.828       0.000       0.000       0.000       0.000
                                0.015      -0.010       0.580      -0.010      -0.000      -0.000       0.000    6248.242

    2    1  |1 0>               0.015       0.005   -1147.627      -0.005       0.000       0.000       0.000       0.000
                               -0.002      -0.008      -0.010       0.668    6248.240      -0.000      -0.000      -0.000

    3    1  |1 0>           -1147.552      -0.108      -0.003      -0.010       0.000       0.000       0.000       0.000
                               -0.028      -0.548      -0.006      -0.030       0.000    2468.286      -0.000       0.000

    4    1  |1 0>               0.008   -2389.556       0.015      -0.002       0.000       0.000       0.000       0.000
                                0.038       0.009       0.027      -0.006      -0.000      -0.000    -486.275       0.000

    5    1  |1 0>              -0.006       0.004   -3215.591      -0.011       0.000       0.000       0.000       0.000
                               -0.015       0.013      -0.091      -0.034    1392.241      -0.000       0.000      -0.000

    6    1  |1 0>               0.001       0.005       0.011       0.019       0.000       0.000       0.000       0.000
                                0.012       0.048      -0.051      -0.020      -0.000       0.000      -0.000   -1392.241

    7    1  |1 0>           -3215.579       0.012       0.004       0.045       0.000       0.000       0.000       0.000
                                0.088       0.057      -0.015       0.009      -0.000    2616.447      -0.000      -0.000

    8    1  |1 0>               0.001   -2841.960      -0.058      -0.011       0.000       0.000       0.000       0.000
                               -0.082       0.011      -0.034       0.012       0.000      -0.000   -2741.688      -0.000

    9    1  |1 0>               0.000      -0.003   -3747.352       0.003       0.000       0.000       0.000       0.000
                               -0.025      -0.036      -0.077       0.150     999.530      -0.000      -0.000       0.000

   10    1  |1 0>               0.003       0.000      -0.002    5266.155       0.000       0.000       0.000       0.000
                               -0.036       0.017      -0.017       0.025      -0.000       0.000      -0.000    -999.530

   11    1  |1 0>            3747.352       0.002       0.000      -0.031       0.000       0.000       0.000       0.000
                               -0.077      -0.017      -0.009       0.020      -0.000    -394.853      -0.000      -0.000

   12    1  |1 0>              -0.003   -5266.155       0.031       0.000       0.000       0.000       0.000       0.000
                                0.150       0.025       0.020       0.011       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000   -6248.241       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -7105.332      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    6248.238      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000   -2617.510

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     483.244      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -1392.239      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1392.239       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000    -949.719

    9    1  |1 1>-          41030.522       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -1136.642      -0.000      -0.000

   10    1  |1 1>-              0.000   41030.521       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     999.534      -0.000

   11    1  |1 1>-              0.000       0.000   41030.523       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -999.531       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000   41737.680       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.001

    1    1  |0 0>               0.000       0.000       0.000       0.000    5737.379       0.000       0.000       0.000
                                0.000      -0.000     999.531      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5737.374       0.000       0.000
                             1136.642       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5737.375       0.000
                                0.000    -999.534      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5737.376
                                0.000       0.000      -0.000      -0.001      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -200.301       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1092.803      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -5881.295      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -3194.777      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3194.775       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1303.981       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -3771.468      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    3771.466       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -4155.106       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             6273.623      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+           5527.335    9981.029       0.000      -0.000      -0.000       0.000   -1053.432      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000    1278.791      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000    1278.792      -0.000      -0.000   -1348.397      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   -2672.048       0.000      -0.000      -0.000    4842.067
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000   -3595.738       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+          -1789.609      -0.001      -0.000       0.000      -0.000      -0.000   -4658.426      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   -3595.735      -0.000      -0.000   -3163.102       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000       0.000   -3177.930       0.000       0.000      -0.000   -4071.273
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000   -3194.777      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+           -884.206   -1092.803       0.000      -0.000       0.000      -0.000    2946.445       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000    3194.780       0.000      -0.000    3771.471       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000   -5881.298       0.000      -0.000      -0.000      -0.002
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1278.792      -0.000      -0.000   -1348.397      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1278.790       0.000      -0.000       0.000   -1348.396

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -6779.464    9981.025       0.000      -0.000       0.000      -0.000    1519.638      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    4088.187      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000   -3595.732       0.000      -0.000      -0.000    3163.101

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    3595.731       0.000      -0.000   -3163.099       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              952.605      -0.001      -0.000      -0.000      -0.000      -0.000    1377.518       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    -725.094       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    3194.779      -0.000       0.000       0.000   -3771.471

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -3194.781      -0.000      -0.000    3771.472       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1084.512   -1092.803      -0.000      -0.000       0.000       0.000   -4250.416       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000   -5881.297      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000   -1278.791      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1252.128    9981.025       0.000      -0.000       0.000       0.000    -466.207       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    1278.791       0.000      -0.000       0.000   -1348.397

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1416.148       0.000       0.000   -5946.858       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2742.213      -0.000      -0.000      -0.000      -0.000       0.000    6035.946      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000   -3595.738      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    3595.736      -0.000       0.000       0.000    3163.104

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -3903.025      -0.000       0.000   -2157.715       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              200.301    1092.803      -0.000       0.000      -0.000      -0.000   -1303.981       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000   -3194.775      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    3194.777      -0.000      -0.000       0.000    3771.468

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    5881.295       0.000       0.000       0.001       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5737.373       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14953.567       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   39989.736       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   39989.736       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   39989.737       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   42105.802       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   42105.808       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42105.800
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             -0.000   -1146.527   -2988.872
                                0.000       0.000       0.000

    2    1  |1 1>+           1348.397      -0.000      -0.000
                                0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000
                                0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+           3163.107       0.000       0.000
                                0.000       0.000       0.000

    6    1  |1 1>+             -0.000    4280.172       0.006
                                0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000
                                0.000       0.000       0.000

    9    1  |1 1>+           3771.469      -0.000       0.000
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.000    3206.828    6273.626
                                0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000      -0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000
                                0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000
                               -0.000    -339.033   -2988.871

    4    1  |1 0>               0.000       0.000       0.000
                            -1104.793       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000
                                0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000
                                0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000
                               -0.000    6174.399       0.003

    8    1  |1 0>               0.000       0.000       0.000
                            -6228.987      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000
                               -0.000     948.273    6273.623

   12    1  |1 0>               0.000       0.000       0.000
                               -0.001      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                             1348.397      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000
                                0.000    1485.562   -2988.871

    3    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000
                               -0.000    1894.235      -0.004

    6    1  |1 1>-              0.000       0.000       0.000
                            -3163.107      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000
                               -0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000
                                0.000    4155.106   -6273.623

   10    1  |1 1>-              0.000       0.000       0.000
                            -3771.466      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000      -0.000

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

   13    1  |0 0>           42105.801       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   42105.809       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   43964.066
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.91305432    -0.09820220   -21552.89      0.00000000        0.00      0.0000
    2-20885.84518067    -0.03032854    -6656.35      0.06787365    14896.54      1.8469
    3-20885.84518022    -0.03032810    -6656.25      0.06787409    14896.64      1.8469
    4-20885.84517879    -0.03032667    -6655.93      0.06787553    14896.96      1.8470
    5-20885.82949521    -0.01464309    -3213.79      0.08355910    18339.10      2.2738
    6-20885.82949490    -0.01464277    -3213.72      0.08355942    18339.17      2.2738
    7-20885.82949458    -0.01464246    -3213.65      0.08355974    18339.24      2.2738
    8-20885.82949417    -0.01464205    -3213.56      0.08356015    18339.33      2.2738
    9-20885.82949391    -0.01464179    -3213.50      0.08356041    18339.39      2.2738
   10-20885.74792791     0.06692421    14688.17      0.16512641    36241.06      4.4933
   11-20885.74792768     0.06692444    14688.22      0.16512663    36241.11      4.4933
   12-20885.74792699     0.06692513    14688.37      0.16512733    36241.26      4.4933
   13-20885.74792666     0.06692546    14688.44      0.16512766    36241.33      4.4934
   14-20885.74792658     0.06692554    14688.46      0.16512773    36241.35      4.4934
   15-20885.71001069     0.10484143    23010.03      0.20304363    44562.93      5.5251
   16-20885.69573503     0.11911709    26143.18      0.21731928    47696.07      5.9136
   17-20885.69573467     0.11911745    26143.26      0.21731965    47696.15      5.9136
   18-20885.69573410     0.11911802    26143.38      0.21732022    47696.28      5.9136
   19-20885.69057381     0.12427831    27275.94      0.22248051    48828.83      6.0540
   20-20885.68795749     0.12689463    27850.15      0.22509682    49403.04      6.1252
   21-20885.68795665     0.12689548    27850.34      0.22509767    49403.23      6.1252
   22-20885.68795602     0.12689610    27850.47      0.22509829    49403.36      6.1252
   23-20885.68672313     0.12812899    28121.06      0.22633119    49673.95      6.1588
   24-20885.68672213     0.12812999    28121.28      0.22633219    49674.17      6.1588
   25-20885.68672193     0.12813019    28121.33      0.22633238    49674.22      6.1588
   26-20885.68672165     0.12813047    28121.39      0.22633266    49674.28      6.1588
   27-20885.68672074     0.12813138    28121.59      0.22633357    49674.48      6.1589
   28-20885.60086243     0.21398969    46965.31      0.31219188    68518.20      8.4952
   29-20885.60086220     0.21398992    46965.36      0.31219211    68518.25      8.4952
   30-20885.60086171     0.21399041    46965.47      0.31219261    68518.36      8.4952
   31-20885.59939844     0.21545368    47286.62      0.31365588    68839.51      8.5350
   32-20885.59939786     0.21545426    47286.74      0.31365645    68839.63      8.5350
   33-20885.59939746     0.21545466    47286.83      0.31365685    68839.72      8.5350
   34-20885.59939711     0.21545501    47286.91      0.31365721    68839.80      8.5350
   35-20885.59939606     0.21545606    47287.14      0.31365826    68840.03      8.5351
   36-20885.59650238     0.21834975    47922.23      0.31655194    69475.12      8.6138
   37-20885.59650169     0.21835043    47922.38      0.31655263    69475.27      8.6138
   38-20885.59650140     0.21835072    47922.44      0.31655292    69475.34      8.6138
   39-20885.59650108     0.21835104    47922.52      0.31655324    69475.41      8.6139
   40-20885.59650094     0.21835118    47922.54      0.31655337    69475.43      8.6139
   41-20885.59650042     0.21835170    47922.66      0.31655390    69475.55      8.6139
   42-20885.59650010     0.21835202    47922.73      0.31655422    69475.62      8.6139
   43-20885.59508688     0.21976524    48232.89      0.31796743    69785.78      8.6523
   44-20885.59508634     0.21976578    48233.01      0.31796798    69785.90      8.6523
   45-20885.59508599     0.21976613    48233.09      0.31796832    69785.98      8.6524
   46-20885.59094899     0.22390313    49141.06      0.32210533    70693.95      8.7649
   47-20885.59094788     0.22390424    49141.30      0.32210644    70694.19      8.7650
   48-20885.59094767     0.22390445    49141.35      0.32210664    70694.24      8.7650
   49-20885.59094752     0.22390460    49141.38      0.32210680    70694.27      8.7650
   50-20885.59094656     0.22390556    49141.59      0.32210776    70694.48      8.7650
   51-20885.58215279     0.23269933    51071.60      0.33090152    72624.49      9.0043

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.51801374 -0.00000128  0.00000209 -0.00000458 -0.23709140 -0.45040989 -0.02815393  0.02727179
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000127 -0.01118149 -0.00681416 -0.69512616  0.05861741 -0.05502830  0.02414171  0.01124859
                           0.00000302  0.01416613  0.01434549  0.11238761  0.41975563 -0.22817044 -0.01773616 -0.01025468

   3    1  |1 1>+          0.00000002 -0.26034972  0.17427279  0.00730806 -0.01263227 -0.00591117  0.11909055  0.06640499
                          -0.00000076 -0.31761046  0.54528274  0.00029222 -0.00828927  0.02327623 -0.38803829  0.25722649

   4    1  |1 1>+         -0.00000072  0.00897260  0.00815790 -0.00047189 -0.00314910  0.00135333 -0.00559209 -0.03323217
                          -0.00000009 -0.00820061 -0.00309294 -0.00011280 -0.00027467 -0.00011609 -0.03270071 -0.03811226

   5    1  |1 1>+         -0.00000092 -0.00031917 -0.00019445 -0.01987543 -0.00475923  0.00446642 -0.00196051 -0.00091325
                           0.00000309  0.00040459  0.00041022  0.00321342 -0.03407878  0.01852476  0.00144029  0.00083186

   6    1  |1 1>+         -0.00000161  0.00000009  0.00000010 -0.00000010 -0.01978674 -0.02711072  0.00280912 -0.00497086
                          -0.00000087  0.00000009 -0.00000014 -0.00000166 -0.00361860  0.00760529  0.00222503 -0.00203322

   7    1  |1 1>+          0.00000009 -0.00744128  0.00498228  0.00020901  0.00102586  0.00048069 -0.00966999 -0.00539257
                          -0.00000002 -0.00907777  0.01558944  0.00000814  0.00067331 -0.00188968  0.03150328 -0.02088018

   8    1  |1 1>+          0.00000010  0.01066977  0.00969740 -0.00056051  0.00264773 -0.00113865  0.00470596  0.02793862
                          -0.00000021 -0.00975166 -0.00367854 -0.00013397  0.00023342  0.00009600  0.02749483  0.03204465

   9    1  |1 1>+          0.00000009 -0.00008327 -0.00005061 -0.00523658 -0.00045375  0.00042408 -0.00018671 -0.00008735
                          -0.00000673  0.00010646  0.00010782  0.00084665 -0.00324126  0.00176074  0.00013730  0.00007925

  10    1  |1 1>+         -0.03945079  0.00000004 -0.00000000 -0.00000021 -0.00183080 -0.00347648 -0.00021707  0.00021004
                           0.00000100 -0.00000038  0.00000033 -0.00000152 -0.00000028  0.00000084  0.00000017 -0.00000036

  11    1  |1 1>+         -0.00000010  0.00196182 -0.00130922 -0.00005445 -0.00009771 -0.00004610  0.00091514  0.00050865
                          -0.00000004  0.00239218 -0.00409663 -0.00000243 -0.00006393  0.00017953 -0.00299229  0.00198697

  12    1  |1 1>+          0.00000101 -0.03842216 -0.03489863  0.00202432  0.00000093  0.00000041  0.00000419  0.00000079
                           0.00000011  0.03511670  0.01323543  0.00048117 -0.00000133  0.00000079  0.00000487  0.00000589

   1    1  |1 0>          -0.00000055 -0.31761075  0.54526985  0.00029196  0.00829216 -0.02327506  0.38805927 -0.25721888
                           0.00000019  0.26035594 -0.17426588 -0.00730673 -0.01263360 -0.00591306  0.11909545  0.06640164

   2    1  |1 0>           0.00000009 -0.38603838 -0.14554780 -0.00528497  0.00221681  0.00092949  0.26313682  0.30667162
                           0.00000028 -0.42236859 -0.38376280  0.02228251 -0.02533759  0.01089144 -0.04502084 -0.26740010

   3    1  |1 0>          -0.00000142 -0.00000000 -0.00000083  0.00000865  0.02228690 -0.04684171 -0.01370387  0.01252239
                           0.51801933  0.00000126 -0.00000053  0.00000314 -0.00331349  0.05823616  0.03137763 -0.04425056

   4    1  |1 0>           0.00000303  0.00046057  0.00046624  0.00365292 -0.01190190  0.00646920  0.00050290  0.00029075
                          -0.00000008  0.00036368  0.00022147  0.02259391  0.00166209 -0.00156004  0.00068463  0.00031880

   5    1  |1 0>          -0.00000021  0.01103274  0.00416126  0.00015186  0.00017948  0.00007583  0.02136117  0.02489580
                           0.00000018  0.01207100  0.01097510 -0.00063684 -0.00205693  0.00088443 -0.00365505 -0.02170594

   6    1  |1 0>           0.00000007 -0.00907525  0.01559052  0.00000826 -0.00067310  0.00188932 -0.03150165  0.02088213
                           0.00000004  0.00744191 -0.00498335 -0.00020946  0.00102536  0.00047962 -0.00966756 -0.00539281

   7    1  |1 0>          -0.00000019 -0.00000001  0.00000007 -0.00000083  0.00180859 -0.00380244 -0.00111290  0.00101656
                           0.00000041  0.00000010  0.00000026 -0.00000061 -0.03876814 -0.06839994 -0.00202368  0.00083579

   8    1  |1 0>          -0.00000030 -0.00008148 -0.00008268 -0.00064768 -0.06710731  0.03647349  0.00283536  0.00163966
                          -0.00000046 -0.00006368 -0.00003935 -0.00400691  0.00937051 -0.00879716  0.00385988  0.00179772

   9    1  |1 0>           0.00000001 -0.00289901 -0.00109641 -0.00003922 -0.00001752 -0.00000674 -0.00202909 -0.00236362
                           0.00000011 -0.00317069 -0.00289242  0.00016749  0.00019537 -0.00008434  0.00035250  0.00205663

  10    1  |1 0>          -0.00000021  0.00238172 -0.00410496 -0.00000210  0.00006394 -0.00017936  0.00299088 -0.00197973
                           0.00000002 -0.00195499  0.00131277  0.00005516 -0.00009723 -0.00004539  0.00092033  0.00051706

  11    1  |1 0>          -0.00000034  0.00000027 -0.00000010  0.00001698  0.00017207 -0.00036114 -0.00010544  0.00009653
                          -0.03944714 -0.00000032 -0.00000043 -0.00000286 -0.00002494  0.00044948  0.00024202 -0.00034127

  12    1  |1 0>           0.00001260  0.00128765  0.00130467  0.01022054  0.00000000 -0.00000051 -0.00000075  0.00000094
                           0.00000004  0.00101749  0.00061993  0.06321510 -0.00000013 -0.00000090 -0.00000037  0.00000024

   1    1  |1 1>-          0.00000371  0.01416535  0.01434388  0.11238824 -0.41975405  0.22817204  0.01773591  0.01025417
                          -0.00000077  0.01118672  0.00681611  0.69512741  0.05861452 -0.05503320  0.02414010  0.01124589

   2    1  |1 1>-          0.00000107  0.00000022  0.00000129  0.00000110 -0.02228800  0.04684325  0.01370375 -0.01252213
                           0.51801417 -0.00000062 -0.00000050 -0.00000057  0.24040586  0.39217264 -0.00322432  0.01697891

   3    1  |1 1>-          0.00000031  0.38604001  0.14553301  0.00528715  0.00222149  0.00092892  0.26312304  0.30667329
                          -0.00000016  0.42237306  0.38377819 -0.02228418 -0.02534118  0.01089441 -0.04500083 -0.26739192

   4    1  |1 1>-          0.00000002 -0.00357523  0.00614416  0.00000309 -0.00126565  0.00355265 -0.05922802  0.03926141
                          -0.00000102  0.00293071 -0.00196408 -0.00008343  0.00192885  0.00090354 -0.01817645 -0.01013506

   5    1  |1 1>-         -0.00000007 -0.00000020  0.00000052 -0.00000202 -0.00180954  0.00380277  0.00111130 -0.00101676
                           0.00000291  0.00000035  0.00000061 -0.00000146 -0.01897990 -0.04129478 -0.00483293  0.00580657

   6    1  |1 1>-         -0.00000235 -0.00040551 -0.00041013 -0.00321322 -0.03407825  0.01852367  0.00143996  0.00083282
                          -0.00000099 -0.00031977 -0.00019512 -0.01987431  0.00475886 -0.00446813  0.00195998  0.00091317

   7    1  |1 1>-          0.00000001 -0.01103410 -0.00416202 -0.00015116  0.00018079  0.00007498  0.02136216  0.02489631
                          -0.00000012 -0.01207186 -0.01097313  0.00063707 -0.00205706  0.00088454 -0.00365734 -0.02170590

   8    1  |1 1>-          0.00000004  0.00985299 -0.01692173 -0.00000894 -0.00045953  0.00128910 -0.02148974  0.01424272
                          -0.00000158 -0.00807720  0.00540783  0.00022680  0.00070046  0.00032914 -0.00659695 -0.00367934

   9    1  |1 1>-          0.00000030 -0.00000061  0.00000063 -0.00000175  0.00017045 -0.00036000 -0.00010665  0.00009626
                           0.03945012  0.00000009  0.00000002 -0.00000105 -0.00185625 -0.00302902  0.00002454 -0.00013013

  10    1  |1 1>-          0.00000626 -0.00010648 -0.00010806 -0.00084665 -0.00324088  0.00176202  0.00013697  0.00007876
                           0.00000087 -0.00008369 -0.00005106 -0.00523642  0.00045228 -0.00042394  0.00018645  0.00008663

  11    1  |1 1>-          0.00000005 -0.00290543 -0.00109256 -0.00003962  0.00001659  0.00000755  0.00202779  0.00236371
                          -0.00000018 -0.00317890 -0.00287977  0.00016744 -0.00019526  0.00008346 -0.00034213 -0.00206531

  12    1  |1 1>-          0.00000033  0.02889525 -0.04959115 -0.00002671  0.00000111 -0.00000090  0.00000558 -0.00000092
                           0.00000124 -0.02368613  0.01584867  0.00066571 -0.00000105 -0.00000142  0.00000458  0.00000473

   1    1  |0 0>           0.00000002 -0.00000298 -0.00000762  0.00000091  0.03725173 -0.01601401  0.06617276  0.39311180
                           0.00000007  0.00000135 -0.00000788  0.00000123  0.00326245  0.00136596  0.38683679  0.45085475

   2    1  |0 0>          -0.00000029 -0.00000018 -0.00000107  0.00000076  0.33125122  0.55660830  0.00355183  0.01216495
                          -0.00000034 -0.00000013 -0.00000088  0.00000065  0.02510166 -0.05275759 -0.01543433  0.01410363

   3    1  |0 0>          -0.00000055  0.00000279  0.00000092  0.00000066  0.08617189 -0.08090185  0.03549061  0.01653500
                          -0.00000024  0.00000045  0.00000079 -0.00000036  0.61708706 -0.33543862 -0.02607436 -0.01507562

   4    1  |0 0>          -0.00000020 -0.00000246 -0.00000376 -0.00000090  0.01857214  0.00869210 -0.17508324 -0.09762352
                           0.00000004  0.00000052 -0.00000697 -0.00000014  0.01218845 -0.03421813  0.57048481 -0.37815628

   5    1  |0 0>           0.00000084  0.00000128 -0.00000128  0.00000442  0.11611324  0.28155799  0.04380792 -0.05552810
                           0.00000035 -0.00000002  0.00000071 -0.00000402 -0.02105820  0.04425927  0.01294795 -0.01183220

   6    1  |0 0>          -0.42842605  0.00000028 -0.00000051  0.00000083 -0.00000045  0.00000082  0.00000036 -0.00000015
                          -0.00000005  0.00000004  0.00000027  0.00000348 -0.00000072  0.00000097 -0.00000013  0.00000010

   7    1  |0 0>          -0.00000018  0.01508109 -0.01009348 -0.00042332  0.00000024  0.00000040 -0.00000047 -0.00000028
                           0.00000007  0.01839838 -0.03158226 -0.00001697  0.00000011 -0.00000021  0.00000037 -0.00000049

   8    1  |0 0>           0.00000010 -0.02446594 -0.02222692  0.00129067  0.00000023 -0.00000003 -0.00000030  0.00000026
                           0.00000002  0.02236127  0.00842938  0.00030615  0.00000018 -0.00000004  0.00000022  0.00000086

   9    1  |0 0>          -0.00000005  0.00064796  0.00039482  0.04026029 -0.00000025 -0.00000042 -0.00000017 -0.00000010
                          -0.00000150 -0.00082039 -0.00083084 -0.00650928 -0.00000008  0.00000003  0.00000016 -0.00000016

  10    1  |0 0>          -0.00000013 -0.00000031 -0.00000039 -0.00000019 -0.00030589 -0.00014293  0.00288515  0.00160818
                          -0.00000002 -0.00000094 -0.00000089  0.00000004 -0.00020078  0.00056387 -0.00940087  0.00623143

  11    1  |0 0>          -0.00000029 -0.00000014 -0.00000005 -0.00000028 -0.00119125 -0.00341474 -0.00070828  0.00093326
                          -0.00000015 -0.00000000 -0.00000001 -0.00000151  0.00039758 -0.00083573 -0.00024464  0.00022340

  12    1  |0 0>           0.00000008  0.00000069 -0.00000109  0.00000000 -0.00061389  0.00026388 -0.00109001 -0.00647828
                          -0.00000002 -0.00000051  0.00000065 -0.00000003 -0.00005375 -0.00002255 -0.00637453 -0.00742951

  13    1  |0 0>           0.00000004 -0.00000011 -0.00000014  0.00000010 -0.00141984  0.00133334 -0.00058463 -0.00027247
                          -0.00000002  0.00000001 -0.00000003 -0.00000002 -0.01016773  0.00552779  0.00042958  0.00024841

  14    1  |0 0>          -0.00000003 -0.00000004  0.00000000  0.00000023 -0.00565919 -0.00969478 -0.00015138 -0.00008055
                           0.00000003 -0.00000003  0.00000012  0.00000022 -0.00036555  0.00076793  0.00022441 -0.00020526

  15    1  |0 0>           0.08222784  0.00000001  0.00000012  0.00000013 -0.00000001 -0.00000034 -0.00000009  0.00000016
                          -0.00000014  0.00000014 -0.00000016  0.00000193  0.00000032 -0.00000036  0.00000015  0.00000007

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.23817869  0.48508728  0.19425347  0.03574259  0.25929010  0.06779588  0.23724130  0.00001064
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.04415603 -0.06201623  0.20459967 -0.02836326 -0.02766028 -0.02176565  0.00000110 -0.00008533
                           0.01457302  0.17331245 -0.42599064  0.01651949 -0.00547561 -0.00726130 -0.00000388 -0.00005089

   3    1  |1 1>+          0.01728170 -0.01140121  0.00705684  0.16096927 -0.02246509  0.06240827 -0.00000002  0.00007454
                           0.03955995 -0.00846632  0.00806629  0.36638489  0.03912063 -0.30531836  0.00000030  0.00008154

   4    1  |1 1>+         -0.00256847  0.00017897 -0.00122749 -0.00507164 -0.00029013  0.00602438 -0.00000279  0.26389614
                          -0.00000578  0.00005757 -0.00090649 -0.01488710  0.00743380 -0.01839486  0.00000002 -0.06484578

   5    1  |1 1>+         -0.00358427 -0.00207109  0.00683758 -0.00094722 -0.00092514 -0.00072718 -0.00000551  0.16475378
                          -0.00117839  0.00579288 -0.01423672  0.00055099 -0.00019303 -0.00024499  0.00001571  0.10255014

   6    1  |1 1>+          0.07005843 -0.01442723 -0.00534938  0.00354917  0.02834778  0.00830349 -0.00000354 -0.00002841
                          -0.01127734  0.00330683 -0.00159409 -0.00076060 -0.00494092  0.00021865 -0.00000236 -0.00001392

   7    1  |1 1>+         -0.00140302 -0.00038344  0.00023547  0.00538586 -0.00075335  0.00209150 -0.00000218 -0.15239063
                          -0.00321130 -0.00028266  0.00026888  0.01224677  0.00130760 -0.01020486  0.00000006 -0.16148472

   8    1  |1 1>+          0.00215987 -0.00015094  0.00103516  0.00425684  0.00024258 -0.00506016  0.00000045  0.31385819
                           0.00000459 -0.00004630  0.00075672  0.01252436 -0.00625085  0.01547051 -0.00000029 -0.07712884

   9    1  |1 1>+         -0.00034151  0.00366968 -0.01210148  0.00167822  0.00163408  0.00128643  0.00000366 -0.00101647
                          -0.00012034 -0.01025047  0.02520046 -0.00097484  0.00033851  0.00043373 -0.00003458 -0.00062661

  10    1  |1 1>+         -0.00183149  0.02869448  0.01149185  0.00211256  0.01532336  0.00400611 -0.04084678  0.00006900
                           0.00000051 -0.00000163  0.00000105 -0.00000007 -0.00000090 -0.00000092  0.00000360  0.00001940

  11    1  |1 1>+          0.00013331 -0.00067226  0.00041855  0.00952675 -0.00133133  0.00369853  0.00000115 -0.00094602
                           0.00030518 -0.00050075  0.00047677  0.02166694  0.00231423 -0.01805599 -0.00000041 -0.00101393

  12    1  |1 1>+         -0.00000024 -0.00000033 -0.00000330 -0.00000753 -0.00000059  0.00000844  0.00000273  0.13590517
                           0.00000027 -0.00000155  0.00000331 -0.00000656  0.00000362 -0.00000977  0.00000021 -0.03338934

   1    1  |1 0>          -0.03955741  0.00846606 -0.00806676 -0.36638892 -0.03912058  0.30531834  0.00000009  0.00007138
                           0.01728136 -0.01140050  0.00705708  0.16096923 -0.02246401  0.06240567  0.00000007 -0.00007525

   2    1  |1 0>           0.00004701  0.00110485 -0.01766595 -0.29097861  0.14527763 -0.35950462 -0.00000015  0.00003981
                          -0.02067222 -0.00349569  0.02401516  0.09906455  0.00566580 -0.11769627 -0.00000027  0.00017319

   3    1  |1 0>           0.06944530  0.04946244 -0.02385694 -0.01138196 -0.07394527  0.00325254  0.00000148 -0.00000846
                           0.55057681 -0.02671054 -0.01707681 -0.07095811 -0.55362594 -0.15809241  0.23723616  0.00001045

   4    1  |1 0>          -0.00041274  0.00202439 -0.00497399  0.00019224 -0.00006812 -0.00008586  0.00001720  0.11659200
                           0.00125218  0.00072322 -0.00238901  0.00033076  0.00032190  0.00025380  0.00000438 -0.18731560

   5    1  |1 0>           0.00000387 -0.00003797  0.00059266  0.00972828 -0.00485763  0.01201964 -0.00000040  0.08726426
                          -0.00167810  0.00011634 -0.00080192 -0.00331160 -0.00018887  0.00393409 -0.00000106  0.35512319

   6    1  |1 0>           0.00321129  0.00028354 -0.00026978 -0.01225145 -0.00130697  0.01020499  0.00000047 -0.16149109
                          -0.00140317 -0.00037993  0.00023600  0.00537945 -0.00075080  0.00208670  0.00000086  0.15239075

   7    1  |1 0>           0.00563770 -0.00165183  0.00079382  0.00038106  0.00247166 -0.00010894 -0.00000018  0.00000404
                           0.00602506 -0.03154040 -0.01240759 -0.00001809  0.00117226  0.00075236  0.00000175 -0.00000866

   8    1  |1 0>          -0.00232884  0.01141721 -0.02803963  0.00108734 -0.00035919 -0.00047857 -0.00000260 -0.02067530
                           0.00705834  0.00408160 -0.01346825  0.00186642  0.00182137  0.00143279 -0.00000152  0.03322138

   9    1  |1 0>          -0.00000054 -0.00006574  0.00104624  0.01719862 -0.00858865  0.02125297  0.00000017  0.00054422
                           0.00015853  0.00020670 -0.00141874 -0.00586767 -0.00033583  0.00696614 -0.00000055  0.00219252

  10    1  |1 0>          -0.00030457  0.00050036 -0.00047724 -0.02166371 -0.00231402  0.01805749 -0.00000097 -0.00100932
                           0.00013334 -0.00067468  0.00041692  0.00951200 -0.00132487  0.00368046  0.00000033  0.00094298

  11    1  |1 0>           0.00053585  0.00292489 -0.00141081 -0.00067356 -0.00437323  0.00019264 -0.00000144 -0.00000950
                           0.00424538 -0.00158049 -0.00101131 -0.00419644 -0.03274200 -0.00935000 -0.04084547  0.00004908

  12    1  |1 0>          -0.00000591  0.00000042  0.00000037  0.00000158  0.00000805  0.00000217  0.00004112 -0.03924921
                           0.00000058  0.00000126  0.00000024 -0.00000063 -0.00000240 -0.00000097  0.00000145  0.06304603

   1    1  |1 1>-         -0.01456427 -0.17331250  0.42599041 -0.01652011  0.00547247  0.00726005 -0.00000445 -0.00005261
                           0.04414487 -0.06201584  0.20459997 -0.02836286 -0.02765845 -0.02176498  0.00000057  0.00008123

   2    1  |1 1>-         -0.06944765 -0.04946229  0.02385688  0.01138186  0.07394547 -0.00325222 -0.00000114 -0.00000323
                          -0.31240096 -0.45837709 -0.17717704  0.03521529  0.29433322  0.09029576  0.23724050  0.00001265

   3    1  |1 1>-          0.00004415  0.00110538 -0.01766763 -0.29097771  0.14527770 -0.35950285 -0.00000022 -0.00004308
                          -0.02067333 -0.00349581  0.02401498  0.09905938  0.00566634 -0.11769498  0.00000022 -0.00017596

   4    1  |1 1>-          0.00603797  0.00053201 -0.00050663 -0.02302735 -0.00245800  0.01918693  0.00000040 -0.06360634
                          -0.00263728 -0.00071871  0.00044270  0.01011429 -0.00141222  0.00392041 -0.00000209  0.06002169

   5    1  |1 1>-         -0.00563764  0.00165415 -0.00079757 -0.00037943 -0.00247184  0.00010816 -0.00000144 -0.00001124
                          -0.06403218 -0.01710488 -0.00706087 -0.00356788 -0.02717694 -0.00755150  0.00000667  0.00001650

   6    1  |1 1>-         -0.00118638  0.00579414 -0.01423641  0.00055334 -0.00017412 -0.00024073 -0.00001459 -0.10254545
                           0.00358339  0.00207358 -0.00683821  0.00094808  0.00092660  0.00072842 -0.00000540  0.16475372

   7    1  |1 1>-          0.00000385 -0.00003632  0.00058890  0.00973135 -0.00485712  0.01202006 -0.00000005 -0.08726985
                          -0.00167787  0.00011680 -0.00080384 -0.00330488 -0.00018875  0.00393037 -0.00000017 -0.35512158

   8    1  |1 1>-          0.00219057  0.00019272 -0.00018341 -0.00835401 -0.00089198  0.00696076 -0.00000012  0.17528818
                          -0.00095641 -0.00026437  0.00015964  0.00367582 -0.00051549  0.00142825 -0.00000420 -0.16541605

   9    1  |1 1>-          0.00053567  0.00292463 -0.00141090 -0.00067249 -0.00437349  0.00019087  0.00000265  0.00002427
                           0.00240397  0.02711552  0.01048340 -0.00208164 -0.01739406 -0.00533654  0.04084716 -0.00008440

  10    1  |1 1>-         -0.00010530 -0.01025129  0.02519958 -0.00097861  0.00031027  0.00042543  0.00003417  0.00062851
                           0.00034143 -0.00366985  0.01210386 -0.00167815 -0.00163783 -0.00128875  0.00000367 -0.00102066

  11    1  |1 1>-          0.00000029  0.00006478 -0.00104309 -0.01721333  0.00859236 -0.02126339  0.00000005  0.00054316
                          -0.00015943 -0.00020681  0.00142127  0.00585048  0.00033439 -0.00695421 -0.00000230  0.00219164

  12    1  |1 1>-         -0.00000014  0.00000093 -0.00000181 -0.00001230 -0.00000190  0.00001019  0.00000101 -0.06178015
                          -0.00000117  0.00000437  0.00000115 -0.00000001  0.00000322 -0.00000330  0.00000246  0.05831373

   1    1  |0 0>           0.03039208 -0.00472526  0.03246160  0.13390300  0.00765912 -0.15908819 -0.00000041 -0.00000065
                           0.00006704 -0.00149377  0.02388060  0.39331325 -0.19636959  0.48593462  0.00000020  0.00000186

   2    1  |0 0>          -0.29108535  0.58847470  0.22904937 -0.02808244 -0.24396702 -0.07760044 -0.00000048 -0.00000317
                           0.07821835 -0.05122187  0.02470641  0.01178633  0.07657362 -0.00336757 -0.00000092 -0.00000134

   3    1  |0 0>           0.06490790  0.08382876 -0.27656139  0.03833843  0.03738619  0.02941965 -0.00000050  0.00000127
                           0.02141794 -0.23426817  0.57581980 -0.02232990  0.00739898  0.00981379 -0.00000002  0.00000022

   4    1  |0 0>          -0.02540647 -0.01540972  0.00953936  0.21758113 -0.03036429  0.08435373  0.00000059 -0.00000050
                          -0.05815762 -0.01144403  0.01090394  0.49524372  0.05287896 -0.41269450  0.00000013  0.00000214

   5    1  |0 0>           0.64002665  0.24752999  0.10466730  0.07817281  0.60085915  0.16869149  0.00000354  0.00000328
                          -0.06561835  0.04297105 -0.02072584 -0.00988842 -0.06423957  0.00282560  0.00000102 -0.00000064

   6    1  |0 0>           0.00000220 -0.00000125 -0.00000069 -0.00000102 -0.00000559 -0.00000191  0.89835737  0.00001032
                          -0.00000127 -0.00000186  0.00000128  0.00000038  0.00000255  0.00000072 -0.00000146  0.00000523

   7    1  |0 0>           0.00000021 -0.00000234 -0.00000069 -0.00000002 -0.00000072 -0.00000007 -0.00000244 -0.15625919
                          -0.00000012  0.00000045 -0.00000053 -0.00000389 -0.00000036  0.00000234  0.00000075 -0.16557501

   8    1  |0 0>           0.00000007 -0.00000018 -0.00000042 -0.00000122 -0.00000017  0.00000158  0.00000090  0.36414487
                          -0.00000009  0.00000004 -0.00000014 -0.00000202  0.00000134 -0.00000296  0.00000013 -0.08947814

   9    1  |0 0>          -0.00000036  0.00000076  0.00000032  0.00000005 -0.00000055 -0.00000026 -0.00000159  0.16893654
                           0.00000013 -0.00000027 -0.00000013 -0.00000029 -0.00000155 -0.00000016 -0.00001588  0.10515755

  10    1  |0 0>           0.00041871 -0.00120087  0.00074218  0.01693916 -0.00236466  0.00656814 -0.00000163  0.00000189
                           0.00095838 -0.00089090  0.00084866  0.03855598  0.00411626 -0.03212782 -0.00000028  0.00000543

  11    1  |0 0>          -0.01107900  0.01318404  0.00577311  0.00631784  0.04884339  0.01380437 -0.00000236 -0.00002027
                           0.00123863  0.00383320 -0.00184879 -0.00088160 -0.00572930  0.00025222 -0.00000131 -0.00001171

  12    1  |0 0>          -0.00050101 -0.00036788  0.00252720  0.01042299  0.00059595 -0.01238444  0.00000135 -0.00000029
                          -0.00000107 -0.00011636  0.00185907  0.03062108 -0.01528808  0.03783195 -0.00000014 -0.00000267

  13    1  |0 0>          -0.00106946  0.00652489 -0.02152869  0.00298413  0.00291092  0.00229029 -0.00000034 -0.00000124
                          -0.00035295 -0.01823904  0.04482319 -0.00173837  0.00057589  0.00076421 -0.00000029 -0.00000302

  14    1  |0 0>           0.00339290  0.04791677  0.01873112 -0.00138082 -0.01278655 -0.00429279 -0.00000064  0.00001401
                          -0.00113818 -0.00352099  0.00169742  0.00081059  0.00526421 -0.00023194  0.00000012  0.00000570

  15    1  |0 0>          -0.00000152  0.00000031  0.00000058  0.00000046  0.00000500  0.00000149  0.13820726 -0.00006562
                           0.00000011  0.00000039 -0.00000020 -0.00000020  0.00000023  0.00000055 -0.00000235 -0.00001676

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00000166 -0.00000504 -0.08519378  0.00003545  0.00001295  0.00002564  0.00642154 -0.00072458
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00009519  0.00018122  0.00001946  0.02029527  0.02056812  0.01255694 -0.00741200 -0.00060749
                          -0.00003776  0.00005904 -0.00000580  0.01859455 -0.00400474  0.00864974  0.00197376  0.00014388

   3    1  |1 1>+         -0.00014958  0.00010733  0.00000666  0.01794486 -0.01057303  0.00423768 -0.00311600  0.00224024
                          -0.00000229  0.00008490  0.00000035  0.00222887  0.02720022 -0.01529580  0.00181090 -0.00155602

   4    1  |1 1>+          0.09963404  0.01427230 -0.00004993  0.02409106 -0.00733708 -0.08670036  0.10925594  0.09601949
                          -0.19368346 -0.01929124 -0.00000389  0.05510465 -0.03751402 -0.04930740 -0.01008405 -0.09796765

   5    1  |1 1>+         -0.19059894 -0.35668508 -0.00002197 -0.08856174 -0.08972829 -0.05479312 -0.20593628 -0.01652073
                           0.07737302 -0.11608538 -0.00001890 -0.08113709  0.01745210 -0.03771981  0.05461046  0.00348087

   6    1  |1 1>+          0.00002430  0.00001809  0.00004311  0.00011878  0.00008670  0.00007557 -0.00362498  0.44037343
                           0.00000124 -0.00000571 -0.00000533  0.00010843  0.00013541  0.00003071 -0.02844294 -0.29338143

   7    1  |1 1>+          0.30403127 -0.22283007 -0.00006020 -0.07824775  0.04626245 -0.01838561 -0.08606782  0.06223742
                           0.00348511 -0.17111530 -0.00001250 -0.00963600 -0.11874039  0.06667112  0.05019410 -0.04303630

   8    1  |1 1>+          0.11851608  0.01697780  0.00006188  0.02875103 -0.00879390 -0.10307665 -0.09186576 -0.08070234
                          -0.23035618 -0.02295253  0.00000906  0.06569750 -0.04467034 -0.05866888  0.00847802  0.08235224

   9    1  |1 1>+          0.00116429  0.00220916  0.00030898  0.27221877  0.27584397  0.16837922 -0.21090832 -0.01716673
                          -0.00047792  0.00072078  0.00002273  0.24940016 -0.05370648  0.11598754  0.05607403  0.00375935

  10    1  |1 1>+         -0.00004130 -0.00001666 -0.48879384  0.00033448  0.00026001  0.00021868 -0.18266418  0.02060214
                          -0.00000537  0.00000769  0.00000087  0.00017798 -0.00006704  0.00013633 -0.00012369  0.00005109

  11    1  |1 1>+          0.00187101 -0.00135416 -0.00007018 -0.24060714  0.14173867 -0.05677562  0.08841399 -0.06377412
                           0.00001078 -0.00104322 -0.00000240 -0.02987556 -0.36455835  0.20490940 -0.05151853  0.04417135

  12    1  |1 1>+          0.05131833  0.00731263  0.00008914 -0.10248662  0.03124811  0.36808160  0.00000263 -0.00004377
                          -0.09976717 -0.00994069 -0.00001774 -0.23426514  0.15937196  0.20941626 -0.00000131  0.00001411

   1    1  |1 0>          -0.00000499  0.00008509  0.00000003  0.00222029  0.02719123 -0.01527613 -0.00181383  0.00155544
                           0.00015974 -0.00011195 -0.00000463 -0.01793794  0.01058102 -0.00422345 -0.00310668  0.00225533

   2    1  |1 0>           0.00013802  0.00000605 -0.00000128 -0.01701276  0.01157319  0.01520491 -0.00023762 -0.00231166
                           0.00006795  0.00000700 -0.00000373  0.00744233 -0.00227198 -0.02672212 -0.00257915 -0.00226252

   3    1  |1 0>           0.00000639  0.00001157  0.00000316  0.00000765  0.00001916  0.00000134 -0.00050992 -0.00529564
                          -0.00001120 -0.00000286 -0.08517454  0.00004602  0.00001441  0.00002945 -0.00315644 -0.00758839

   4    1  |1 0>           0.08797032 -0.13198978 -0.00001271 -0.09226985  0.01985485 -0.04290731  0.01907052  0.00117127
                           0.21669677  0.40554828  0.00003163  0.10071809  0.10205147  0.06231513  0.07202397  0.00571145

   5    1  |1 0>           0.26063686  0.02596236  0.00000028 -0.07420684  0.05049978  0.06636243  0.00658896  0.06400586
                           0.13408363  0.01920770 -0.00001661  0.03245041 -0.00989496 -0.11665759  0.07136721  0.06273891

   6    1  |1 0>           0.00348570 -0.17110416 -0.00000515 -0.00975030 -0.11863792  0.06667857 -0.05018547  0.04304512
                          -0.30404769  0.22281855  0.00007213  0.07836020 -0.04608304  0.01852597 -0.08608235  0.06219594

   7    1  |1 0>          -0.00000691 -0.00000195  0.00000880 -0.00019685  0.00006155 -0.00012141  0.01439567  0.14661668
                           0.00000592 -0.00000505  0.00002849  0.00028738  0.00023706  0.00015270 -0.26862549  0.25026212

   8    1  |1 0>          -0.01560150  0.02341471 -0.00001902  0.01641398 -0.00354703  0.00766440  0.10754738  0.00696121
                          -0.03843078 -0.07194725 -0.00005468 -0.01793007 -0.01818645 -0.01110173  0.40526103  0.03267081

   9    1  |1 0>           0.00158600  0.00016284 -0.00002039 -0.22814987  0.15519711  0.20391479 -0.00676220 -0.06567686
                           0.00082738  0.00014832 -0.00003249  0.09981473 -0.03045483 -0.35837986 -0.07327117 -0.06433672

  10    1  |1 0>           0.00001011 -0.00105547 -0.00001056 -0.02975610 -0.36466559  0.20489840  0.05152833 -0.04420101
                          -0.00184889  0.00137099  0.00005839  0.24049823 -0.14192267  0.05663468  0.08830973 -0.06396805

  11    1  |1 0>           0.00001105  0.00000375 -0.00000313 -0.00008944 -0.00014092 -0.00004662  0.01454632  0.15061418
                          -0.00002243  0.00000713 -0.48878680  0.00015970  0.00010689  0.00014221  0.08938383  0.21576446

  12    1  |1 0>          -0.02961316  0.04442915 -0.00003074 -0.25612230  0.05515455 -0.11910161 -0.00000179 -0.00013755
                          -0.07294985 -0.13651232  0.00028712  0.27954479  0.28326244  0.17290359  0.00040384 -0.00014765

   1    1  |1 1>-         -0.00004133  0.00005831 -0.00000600  0.01859691 -0.00400549  0.00864357 -0.00197054 -0.00011638
                          -0.00009798 -0.00017991 -0.00001858 -0.02029610 -0.02056401 -0.01254883 -0.00747288 -0.00058892

   2    1  |1 1>-          0.00000003 -0.00000195  0.00000009 -0.00000919  0.00000671 -0.00000633  0.00051316  0.00530020
                          -0.00000726 -0.00000303 -0.08519105  0.00004621  0.00002479  0.00003081 -0.00329294  0.00832444

   3    1  |1 1>-         -0.00012598 -0.00001223  0.00000128  0.01701178 -0.01157552 -0.01521323 -0.00023971 -0.00231241
                          -0.00006359 -0.00001272  0.00000720 -0.00744523  0.00226179  0.02674464 -0.00257614 -0.00227127

   4    1  |1 1>-          0.00137223 -0.06737960  0.00000373 -0.00393303 -0.04664767  0.02626512 -0.09435764  0.08092119
                          -0.11975968  0.08774061  0.00003749  0.03094856 -0.01801233  0.00739906 -0.16183584  0.11696084

   5    1  |1 1>-         -0.00000729 -0.00000710 -0.00000151 -0.00009614  0.00019530 -0.00008845 -0.01404690 -0.14676315
                          -0.00001941 -0.00002814 -0.00000920  0.00017701  0.00015348  0.00007851 -0.26501148 -0.19010786

   6    1  |1 1>-         -0.07737531  0.11609410 -0.00000137  0.08119235 -0.01748613  0.03777266  0.05461631  0.00358342
                          -0.19059206 -0.35670584 -0.00006162 -0.08862969 -0.08981739 -0.05483402  0.20568328  0.01665275

   7    1  |1 1>-         -0.26064049 -0.02596984  0.00000671  0.07430688 -0.05053314 -0.06637364  0.00658860  0.06397762
                          -0.13409369 -0.01920813 -0.00005312 -0.03251663  0.00993917  0.11663089  0.07137345  0.06269393

   8    1  |1 1>-         -0.00378228  0.18573740  0.00001137  0.01048158  0.12886546 -0.07236998 -0.03424127  0.02935658
                           0.33001773 -0.24186969 -0.00006671 -0.08495628  0.05017754 -0.01998701 -0.05870648  0.04246377

   9    1  |1 1>-         -0.00001234 -0.00000007  0.00000544 -0.00003188  0.00000380  0.00000080  0.01465717  0.15056896
                           0.00004841  0.00002258  0.48882189 -0.00003180 -0.00000024 -0.00005097 -0.09310995  0.23631943

  10    1  |1 1>-          0.00047408 -0.00071154 -0.00004286 -0.24935396  0.05368711 -0.11593450  0.05605870  0.00347988
                           0.00116766  0.00218202  0.00023593  0.27214961  0.27575739  0.16832420  0.21166882  0.01687219

  11    1  |1 1>-          0.00158848  0.00015524 -0.00001218 -0.22804126  0.15515530  0.20389671  0.00676354  0.06571496
                           0.00081572  0.00014393 -0.00010408  0.09975494 -0.03040989 -0.35840815  0.07326478  0.06443617

  12    1  |1 1>-          0.00134570 -0.06548648  0.00000395  0.03062910  0.37446786 -0.21045047 -0.00000382  0.00001535
                          -0.11636915  0.08528139 -0.00005667 -0.24705969  0.14566107 -0.05823927  0.00005681  0.00009737

   1    1  |0 0>          -0.00000042 -0.00000186 -0.00001027 -0.00001030  0.00000336  0.00000286  0.01865294  0.01638894
                          -0.00000302  0.00000282 -0.00000121 -0.00001409  0.00000524  0.00000438 -0.00172127 -0.01672301

   2    1  |0 0>           0.00000287 -0.00000065  0.00000726  0.00003461  0.00002551  0.00001858 -0.02623433  0.04699844
                           0.00000015 -0.00000247 -0.00000170  0.00002284  0.00000146  0.00001171 -0.00286601 -0.02936164

   3    1  |0 0>           0.00000010  0.00000206  0.00000517  0.00000962  0.00001123  0.00000391 -0.05378077 -0.00433515
                          -0.00000089  0.00000053 -0.00000314  0.00000810 -0.00000464  0.00000591  0.01427287  0.00092156

   4    1  |0 0>           0.00000550  0.00000082 -0.00000125 -0.00001484 -0.00002365 -0.00001586  0.02249471 -0.01625920
                           0.00000082  0.00000165  0.00000115 -0.00001476  0.00001704 -0.00000477 -0.01311703  0.01124766

   5    1  |0 0>          -0.00000056 -0.00000488 -0.00000889  0.00001626  0.00001730  0.00000709 -0.03053804 -0.03350758
                           0.00000308  0.00000498  0.00000131  0.00001205 -0.00002278  0.00001131  0.00236807  0.02464900

   6    1  |0 0>          -0.00000700 -0.00000661 -0.07695401  0.00005425  0.00000925  0.00003158 -0.00000693  0.00000472
                          -0.00000292 -0.00000897 -0.00000347 -0.00001876 -0.00002661 -0.00001171 -0.00000139 -0.00000391

   7    1  |0 0>           0.31178087 -0.22849698 -0.00000469  0.16521452 -0.09740662  0.03894892 -0.00004657 -0.00007753
                           0.00358415 -0.17546461 -0.00000302  0.02049260  0.25041906 -0.14076021  0.00000011  0.00001974

   8    1  |0 0>           0.13750027  0.01966748  0.00008976 -0.06853214  0.02088747  0.24617002  0.00000030 -0.00002529
                          -0.26728231 -0.02662755 -0.00001287 -0.15664969  0.10657305  0.14005196 -0.00000083  0.00000318

   9    1  |0 0>          -0.19544770 -0.36577104  0.00022899  0.18694409  0.18943296  0.11561560  0.00027144 -0.00008181
                           0.07934216 -0.11904279  0.00002393  0.17128812 -0.03689346  0.07964855  0.00000138  0.00008752

  10    1  |0 0>          -0.00001443 -0.00001327  0.00001105  0.00010599  0.00017006  0.00013115 -0.16507382  0.11931817
                          -0.00000001 -0.00000963 -0.00000676  0.00011199 -0.00009572 -0.00000930  0.09625142 -0.08254438

  11    1  |0 0>           0.00002027  0.00002302  0.00001756 -0.00008910 -0.00008122 -0.00003100  0.19732115  0.28841724
                          -0.00000333 -0.00000577 -0.00000090 -0.00003038  0.00019024 -0.00005315 -0.01995357 -0.20721219

  12    1  |0 0>           0.00000995  0.00000151  0.00006669  0.00005851 -0.00004201  0.00002641 -0.13687392 -0.12027783
                          -0.00000213 -0.00000505  0.00000733  0.00009680 -0.00003368 -0.00001404  0.01263388  0.12272462

  13    1  |0 0>           0.00000366 -0.00001763 -0.00004773 -0.00006233 -0.00008079 -0.00004596  0.39469747  0.03180211
                           0.00000060 -0.00000577  0.00001836 -0.00004557  0.00002376 -0.00005004 -0.10473558 -0.00676847

  14    1  |0 0>          -0.00000916 -0.00000265 -0.00003140 -0.00026112 -0.00021583 -0.00014351  0.21989595 -0.31022551
                          -0.00000548 -0.00000183  0.00000608 -0.00018701  0.00001901 -0.00010779  0.01859491  0.19027800

  15    1  |0 0>           0.00003610  0.00000947  0.50549848 -0.00018110 -0.00013327 -0.00014442  0.00006224 -0.00001677
                           0.00000905 -0.00000298 -0.00000413 -0.00009141 -0.00003504 -0.00007062  0.00000449 -0.00000301

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00447731  0.00248763 -0.00888975 -0.00000147  0.00000278  0.00000922  0.00909717 -0.01899128
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00336988 -0.00375781 -0.00470698 -0.00431633  0.00377132  0.03564545 -0.01341301 -0.00310128
                           0.00034261  0.00092777  0.00150792 -0.00468499  0.00092738  0.01658274  0.00391193  0.00256032

   3    1  |1 1>+         -0.00379385  0.00708805  0.00146133  0.02214867 -0.00462870  0.00584794  0.00459133 -0.00159590
                           0.00167049 -0.00445077 -0.00065009  0.03138676  0.00793863  0.00265069  0.00042257 -0.00361064

   4    1  |1 1>+         -0.30668805 -0.17678975  0.17655850  0.02429776 -0.15165494  0.01557557 -0.07235234 -0.18315341
                          -0.09049710 -0.00102914  0.04604740 -0.02937338 -0.05195935  0.00202673  0.05730761  0.02247468

   5    1  |1 1>+         -0.09291337 -0.10367989 -0.12966910  0.02407168 -0.02102257 -0.19849199 -0.18632756 -0.04314811
                           0.00953974  0.02559653  0.04184346  0.02612809 -0.00518465 -0.09234199  0.05439685  0.03547788

   6    1  |1 1>+          0.16257431 -0.04155442 -0.13207292  0.00002342  0.00003579  0.00023122 -0.25766346 -0.14989924
                           0.05530607  0.08876876  0.00043526  0.00005025  0.00004473  0.00008455  0.13523513  0.02396708

   7    1  |1 1>+         -0.10479935  0.19606870  0.04017774 -0.12331262  0.02568823 -0.03265995  0.06361090 -0.02227689
                           0.04594478 -0.12333344 -0.01787536 -0.17473188 -0.04416423 -0.01481123  0.00588321 -0.05003532

   8    1  |1 1>+          0.25784168  0.14864884 -0.14844934  0.02886357 -0.18033182  0.01845705  0.06068185  0.15399740
                           0.07607432  0.00089673 -0.03871936 -0.03502299 -0.06185640  0.00240234 -0.04817564 -0.01889621

   9    1  |1 1>+         -0.09551912 -0.10653800 -0.13335372  0.04639135 -0.04051320 -0.38308774  0.25883280  0.05998903
                           0.00971186  0.02630476  0.04286546  0.05037242 -0.00993620 -0.17821745 -0.07551178 -0.04934370

  10    1  |1 1>+          0.12722611 -0.07047105  0.25214387 -0.00003093  0.00005063  0.00011127  0.17559496 -0.36625965
                           0.00000018 -0.00015758 -0.00011486 -0.00000606  0.00000129  0.00001661 -0.00003150 -0.00002397

  11    1  |1 1>+          0.10765586 -0.20130313 -0.04136427  0.23810234 -0.04975047  0.06282044  0.08851348 -0.03085031
                          -0.04723164  0.12660469  0.01836686  0.33737777  0.08528794  0.02848637  0.00816108 -0.06960135

  12    1  |1 1>+          0.00005036 -0.00001120 -0.00000133 -0.02266013  0.14124266 -0.01444715  0.00012474 -0.00000606
                           0.00004807 -0.00007471  0.00000235  0.02740568  0.04841865 -0.00186598 -0.00002636 -0.00001033

   1    1  |1 0>          -0.00165674  0.00445622  0.00064419  0.03138738  0.00792680  0.00265878 -0.00042449  0.00360486
                          -0.00378147  0.00708448  0.00144700 -0.02215102  0.00462022 -0.00586273  0.00458730 -0.00160726

   2    1  |1 0>          -0.00213131 -0.00003252  0.00108648  0.00711576  0.01256877 -0.00048716  0.00270046  0.00105712
                           0.00723385  0.00417273 -0.00416614  0.00587619 -0.03665667  0.00375301  0.00340528  0.00862380

   3    1  |1 0>           0.00099812  0.00160617  0.00000850  0.00000171  0.00000089 -0.00000246  0.00487763  0.00086555
                          -0.00069232 -0.00048687  0.00681302  0.00000095 -0.00000256 -0.00001794  0.00474118  0.01490008

   4    1  |1 0>           0.00334782  0.00894887  0.01462818  0.02964833 -0.00589524 -0.10498571  0.01897118  0.01240373
                           0.03241859  0.03620181  0.04526280 -0.02731162  0.02391686  0.22566311  0.06484412  0.01529990

   5    1  |1 0>           0.05912404  0.00066094 -0.03007892  0.03955284  0.06991415 -0.00274818 -0.03736362 -0.01467852
                          -0.20034707 -0.11549208  0.11534299  0.03273617 -0.20411385  0.02096518 -0.04711099 -0.11960793

   6    1  |1 0>          -0.04597634  0.12332535  0.01787883 -0.17468860 -0.04416682 -0.01478517 -0.00592218  0.05004730
                          -0.10480903  0.19608812  0.04023066  0.12328797 -0.02575127  0.03261385  0.06362498 -0.02223275

   7    1  |1 0>          -0.02763815 -0.04415544 -0.00005382  0.00001728 -0.00001577 -0.00005553 -0.06772909 -0.01199141
                           0.26712818 -0.12376329  0.30245056  0.00002242 -0.00005915  0.00007539 -0.31832703  0.32002096

   8    1  |1 0>           0.01874446  0.05039557  0.08236066 -0.00530887  0.00097495  0.01856290  0.10691086  0.06984996
                           0.18305353  0.20421202  0.25545106  0.00480966 -0.00421080 -0.03993120  0.36645110  0.08523668

   9    1  |1 0>          -0.06063665 -0.00077842  0.03088426 -0.07650072 -0.13514475  0.00523713 -0.05204114 -0.02039840
                           0.20561543  0.11857187 -0.11840734 -0.06311273  0.39405703 -0.04031691 -0.06565261 -0.16633206

  10    1  |1 0>           0.04713399 -0.12661453 -0.01833741  0.33740920  0.08524443  0.02858624 -0.00816687  0.06958335
                           0.10752706 -0.20128288 -0.04118469 -0.23811542  0.04966311 -0.06305891  0.08846166 -0.03098223

  11    1  |1 0>          -0.02840424 -0.04564186 -0.00027698  0.00000796  0.00002771  0.00008663  0.09407741  0.01665369
                           0.01989541  0.01392650 -0.19393721  0.00000753 -0.00002966 -0.00028695  0.09146387  0.28740929

  12    1  |1 0>           0.00006782 -0.00004740  0.00007171  0.01806154 -0.00357906 -0.06388093 -0.00002282  0.00001455
                          -0.00010076 -0.00009124 -0.00022066 -0.01663334  0.01454716  0.13731470 -0.00005702  0.00001299

   1    1  |1 1>-         -0.00035235 -0.00092067 -0.00152467 -0.00468705  0.00092988  0.01658692 -0.00391466 -0.00255553
                          -0.00335404 -0.00374367 -0.00467523  0.00431999 -0.00377297 -0.03565291 -0.01341727 -0.00312889

   2    1  |1 1>-         -0.00100281 -0.00160358 -0.00000861 -0.00000222 -0.00000136  0.00000155 -0.00487661 -0.00086353
                           0.00518522 -0.00199196  0.00204944  0.00000105  0.00000026  0.00000338 -0.01383446  0.00408578

   3    1  |1 1>-         -0.00214169 -0.00001580  0.00108756 -0.00710522 -0.01256680  0.00048996  0.00269702  0.00105985
                           0.00724409  0.00416696 -0.00416798 -0.00587075  0.03666289 -0.00375679  0.00340572  0.00862884

   4    1  |1 1>-         -0.08641617  0.23186643  0.03361044 -0.06880109 -0.01740029 -0.00570871 -0.01098697  0.09409500
                          -0.19704588  0.36864212  0.07559170  0.04856706 -0.01019947  0.01258235  0.11967942 -0.04175359

   5    1  |1 1>-          0.02766375  0.04461253  0.00037710 -0.00003018  0.00002260  0.00013012  0.06770256  0.01196961
                           0.10455518 -0.08221168  0.43451839  0.00003467 -0.00004165 -0.00035258 -0.06040562  0.47011155

   6    1  |1 1>-          0.00950162  0.02558448  0.04180839 -0.02602306  0.00515104  0.09227264  0.05433717  0.03550074
                           0.09299235  0.10371384  0.12975705  0.02402595 -0.02093256 -0.19833388  0.18609441  0.04305807

   7    1  |1 1>-          0.05910022  0.00070331 -0.03008447 -0.03962040 -0.07001665  0.00270073 -0.03741529 -0.01466613
                          -0.20031894 -0.11549200  0.11533517 -0.03265547  0.20407226 -0.02085152 -0.04734511 -0.11956804

   8    1  |1 1>-         -0.03133437  0.08413473  0.01219426  0.18965419  0.04791939  0.01604740 -0.00404289  0.03413276
                          -0.07148628  0.13374584  0.02739867 -0.13384133  0.02796095 -0.03540630  0.04334381 -0.01516998

   9    1  |1 1>-         -0.02837844 -0.04548682 -0.00017195  0.00001224  0.00002579  0.00007388  0.09411565  0.01668067
                           0.14701304 -0.05657922  0.05834058 -0.00002389  0.00002337 -0.00018448  0.26706615 -0.07884115

  10    1  |1 1>-          0.00983885  0.02623521  0.04300799 -0.05035480  0.01003053  0.17830884 -0.07557188 -0.04935677
                           0.09532027  0.10637155  0.13295933  0.04643268 -0.04058888 -0.38326429 -0.25887073 -0.06029754

  11    1  |1 1>-          0.06073130  0.00062369 -0.03087828 -0.07639011 -0.13505558  0.00526405  0.05202346  0.02042467
                          -0.20570937 -0.11855187  0.11840776 -0.06316286  0.39410932 -0.04041708  0.06566004  0.16636675

  12    1  |1 1>-          0.00004679  0.00000660 -0.00001395  0.12095293  0.03054184  0.01022710  0.00002202  0.00000578
                           0.00006887 -0.00000435 -0.00008324 -0.08535289  0.01781075 -0.02255106  0.00006959 -0.00007558

   1    1  |0 0>          -0.05235445 -0.03018313  0.03014119  0.00000626 -0.00000328  0.00000863 -0.01162813 -0.02945981
                          -0.01544770 -0.00017853  0.00786118  0.00000721  0.00000792  0.00000218  0.00921477  0.00361478

   2    1  |0 0>           0.03429293 -0.01414488  0.02250892  0.00000389 -0.00000355  0.00001783 -0.04162454  0.02195538
                           0.00553360  0.00886203  0.00002615  0.00000190  0.00000372  0.00000936  0.01276638  0.00226234

   3    1  |0 0>          -0.02428984 -0.02709748 -0.03389665  0.00000428 -0.00000670 -0.00001470 -0.04583831 -0.01064889
                           0.00248596  0.00668834  0.01092745 -0.00000054 -0.00000774 -0.00000777  0.01337777  0.00873773

   4    1  |0 0>           0.02738893 -0.05124067 -0.01050512  0.00000047  0.00000641  0.00002187 -0.01567083  0.00547433
                          -0.01200948  0.03223158  0.00467120  0.00000287 -0.00000021  0.00000930 -0.00144555  0.01232475

   5    1  |0 0>           0.00782720 -0.00841383  0.05368376  0.00000223 -0.00000664 -0.00003829 -0.00022925  0.05490208
                          -0.00464604 -0.00748255 -0.00005615 -0.00000036 -0.00000377 -0.00001449 -0.01070613 -0.00189470

   6    1  |0 0>           0.00000277  0.00000381 -0.00000960  0.00000015  0.00000023 -0.00000196  0.00000147 -0.00000136
                           0.00000139 -0.00000176  0.00000090  0.00000022  0.00000017  0.00000015 -0.00000055 -0.00000073

   7    1  |0 0>          -0.00006176 -0.00000183  0.00006265  0.36612766 -0.07644059  0.09679562  0.00012911  0.00003150
                           0.00003177  0.00000092 -0.00001292  0.51878065  0.13113717  0.04388273 -0.00003162 -0.00002373

   8    1  |0 0>           0.00003373 -0.00000990  0.00000271 -0.09704659  0.60598554 -0.06210076 -0.00014599  0.00004073
                           0.00003645 -0.00005562  0.00000064  0.11754313  0.20774860 -0.00809477  0.00005099 -0.00001009

   9    1  |0 0>          -0.00006118 -0.00007207 -0.00017003 -0.07137183  0.06234337  0.58922839  0.00009364  0.00027579
                          -0.00004718  0.00004873 -0.00005443 -0.07743304  0.01535160  0.27412507 -0.00007970  0.00000976

  10    1  |0 0>          -0.20099673  0.37604227  0.07710437  0.00000036  0.00004206  0.00017235 -0.10666654  0.03724093
                           0.08814451 -0.23652340 -0.03428556  0.00001821  0.00001219  0.00008098 -0.00983721  0.08388205

  11    1  |0 0>          -0.02442484  0.04781173 -0.36931211  0.00000856 -0.00005387 -0.00027819  0.03506077  0.35118664
                           0.03906206  0.06285138  0.00042809 -0.00000976 -0.00003495 -0.00012035 -0.08348485 -0.01479087

  12    1  |0 0>           0.38420581  0.22148904 -0.22120108  0.00004093 -0.00001793  0.00005374 -0.07915816 -0.20051269
                           0.11336608  0.00130877 -0.05769160  0.00003516  0.00004811  0.00001756  0.06272337  0.02460309

  13    1  |0 0>           0.17826228  0.19887386  0.24876921  0.00004285 -0.00004028 -0.00008754 -0.31190923 -0.07243172
                          -0.01826021 -0.04907865 -0.08021490  0.00001810 -0.00003991 -0.00004943  0.09102602  0.05944161

  14    1  |0 0>          -0.25700187  0.11092869 -0.21475994  0.00002385 -0.00001265  0.00002182 -0.28100061  0.19650010
                          -0.03587161 -0.05740510 -0.00015055  0.00001884  0.00002450  0.00002455  0.07668630  0.01357804

  15    1  |0 0>          -0.00004012 -0.00001204  0.00004795  0.00000049 -0.00000550  0.00002370 -0.00001789 -0.00001341
                          -0.00000944  0.00000047  0.00000391 -0.00000421 -0.00000176  0.00000717  0.00001405  0.00000757

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00757950 -0.00644470 -0.00111347  0.00000435 -0.00000774  0.00000210 -0.00000246  0.00000669
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00035610 -0.00838184 -0.00553015  0.00000544  0.00000033 -0.00000237 -0.00000389  0.00000336
                          -0.00221516  0.00221042 -0.00926712  0.00000094 -0.00000299 -0.00000026  0.00000050  0.00000095

   3    1  |1 1>+          0.01600295 -0.00768156  0.00030437  0.00000272  0.00000699  0.00000249 -0.00000773 -0.00000013
                           0.00472935  0.00577029 -0.00056252 -0.00000154 -0.00000196 -0.00000192 -0.00000014 -0.00000344

   4    1  |1 1>+          0.14671383  0.28152693 -0.09534294 -0.15017643 -0.35116036 -0.09189154 -0.15144661  0.08798677
                           0.11939154 -0.11489452 -0.06269525  0.14039487  0.03553896  0.15524743  0.26688763 -0.07625993

   5    1  |1 1>+         -0.00504778 -0.11612732 -0.07640287  0.37808029 -0.27739107 -0.02930434  0.09893949  0.05008984
                          -0.03077087  0.03061141 -0.12811942  0.04536680 -0.19241285  0.05801677 -0.18822306 -0.11299595

   6    1  |1 1>+          0.03728215 -0.01713173  0.29359491  0.33208170  0.17751739 -0.13484798 -0.06878835 -0.11660557
                           0.00531599  0.05544772  0.33916123 -0.10217472 -0.14292071  0.12163358  0.05209691 -0.10484019

   7    1  |1 1>+          0.22193388 -0.10650653  0.00412571 -0.03172750 -0.14130132 -0.34278249  0.35259785 -0.33465453
                           0.06560171  0.07999499 -0.00787829  0.02549904  0.05180917  0.19032197  0.08996570  0.10774985

   8    1  |1 1>+         -0.12331310 -0.23668344  0.08025941  0.14452711  0.01640027  0.16849161 -0.04803509  0.11943006
                          -0.10036720  0.09666022  0.05280801 -0.05219921  0.01423464  0.04212283  0.51637504  0.22215635

   9    1  |1 1>+          0.00702914  0.16162337  0.10657050  0.00002543 -0.00002619 -0.00000976  0.00001620 -0.00000693
                           0.04277779 -0.04256446  0.17853677 -0.00002052 -0.00000519 -0.00000472 -0.00000780  0.00000556

  10    1  |1 1>+         -0.14624473 -0.12428568 -0.02153194  0.00007952 -0.00002770  0.00002409  0.00002965  0.00002512
                          -0.00000730 -0.00000445  0.00000449 -0.00003973 -0.00002897  0.00000469 -0.00001769 -0.00000854

  11    1  |1 1>+          0.30862711 -0.14810797  0.00584966  0.00000826  0.00010409  0.00002328 -0.00005382 -0.00001667
                           0.09120619  0.11120437 -0.01085916 -0.00001786  0.00000344 -0.00002516  0.00002277 -0.00000466

  12    1  |1 1>+         -0.00001814  0.00004418  0.00003940 -0.00018333  0.00005742  0.00023346  0.00001838 -0.00007868
                          -0.00004255 -0.00000906  0.00006005  0.00004294 -0.00002323 -0.00003010 -0.00010417 -0.00026746

   1    1  |1 0>          -0.00472925 -0.00576003  0.00056160 -0.00000205  0.00000185 -0.00000157  0.00000412  0.00000237
                           0.01600176 -0.00767378  0.00030095 -0.00000379 -0.00000663  0.00000144  0.00000171 -0.00000065

   2    1  |1 0>           0.00562944 -0.00541232 -0.00295574  0.00000092 -0.00000219  0.00000061 -0.00000274 -0.00000751
                          -0.00690842 -0.01325797  0.00449569  0.00000271 -0.00000201 -0.00000222  0.00000220  0.00000374

   3    1  |1 0>           0.00019217  0.00199939  0.01222631 -0.00000301  0.00000381 -0.00000035  0.00000015  0.00000266
                           0.00244475  0.00383816 -0.01002429 -0.00000381 -0.00000398  0.00000130  0.00000079  0.00000239

   4    1  |1 0>          -0.01076354  0.01062292 -0.04471700 -0.07119295  0.21120520 -0.09805101  0.14652432  0.37835352
                           0.00193160  0.04055663  0.02667199  0.22575395 -0.21224824  0.30435687  0.11812386 -0.15263961

   5    1  |1 0>          -0.07796885  0.07514531  0.04113652  0.17016476  0.03764910  0.16793595  0.19931304 -0.13145541
                           0.09580325  0.18386217 -0.06244113  0.19998800  0.40262520  0.13837997  0.16242809 -0.07598386

   6    1  |1 0>          -0.06555523 -0.07997442  0.00780885  0.11745425 -0.07388836 -0.15428660 -0.01613428  0.07444490
                           0.22193282 -0.10654649  0.00413120 -0.25509215  0.31979013 -0.24410010  0.06491572 -0.23276057

   7    1  |1 0>          -0.00270250 -0.02772019 -0.16957225 -0.10211334 -0.14300788  0.12163099  0.05210354 -0.10486906
                           0.17647573  0.12556693  0.16998457 -0.33217684 -0.17726471  0.13483834  0.06881444  0.11646384

   8    1  |1 0>          -0.06061012  0.06019543 -0.25271243  0.00856869  0.04012881  0.01680258  0.08970316 -0.19029951
                           0.01018398  0.22877676  0.15087909  0.23799900 -0.13548469 -0.28906246  0.01271563  0.18498161

   9    1  |1 0>          -0.10849509  0.10437313  0.05706387 -0.00000931  0.00001721 -0.00000290  0.00003112  0.00006863
                           0.13327447  0.25571632 -0.08673422 -0.00002694  0.00002638  0.00003109  0.00000121 -0.00004418

  10    1  |1 0>          -0.09124321 -0.11115844  0.01087621 -0.00001632 -0.00000038  0.00000037  0.00001761 -0.00001041
                           0.30860600 -0.14800358  0.00582056 -0.00004225 -0.00004922  0.00001757  0.00003041 -0.00000310

  11    1  |1 0>           0.00371139  0.03854813  0.23576738 -0.00002743 -0.00001200  0.00000399 -0.00002393 -0.00001102
                           0.04715202  0.07402156 -0.19330957 -0.00005995  0.00001138 -0.00001663 -0.00002719  0.00000530

  12    1  |1 0>           0.00000406  0.00000405 -0.00001927 -0.00002239 -0.00002900  0.00001444 -0.00011362  0.00004151
                           0.00001321  0.00002015 -0.00000402 -0.00015195  0.00008337  0.00004817  0.00003759 -0.00004984

   1    1  |1 1>-          0.00221919 -0.00220120  0.00923266  0.00000137  0.00000387 -0.00000058  0.00000864  0.00000043
                          -0.00037781 -0.00836993 -0.00551375  0.00000636 -0.00000136 -0.00000222 -0.00000314  0.00000204

   2    1  |1 1>-         -0.00019303 -0.00200012 -0.01223595  0.00000594 -0.00000267  0.00000129 -0.00000045 -0.00000337
                           0.00513441  0.00260558  0.01114581 -0.00000183  0.00001562 -0.00000093  0.00000149 -0.00000869

   3    1  |1 1>-          0.00561938 -0.00541578 -0.00295723 -0.00000209 -0.00000281  0.00000489  0.00000488  0.00000420
                          -0.00690971 -0.01326083  0.00449357 -0.00000864  0.00000200  0.00001182  0.00000516 -0.00000256

   4    1  |1 1>-         -0.12335934 -0.15032015  0.01469085 -0.08548116  0.06559172  0.15133408  0.02807175 -0.03812246
                           0.41722339 -0.20014368  0.00794823  0.20072686 -0.22005378  0.24677219 -0.11130180  0.23654616

   5    1  |1 1>-          0.00268346  0.02771149  0.16951498  0.10209259  0.14293497 -0.12160412 -0.05210909  0.10485140
                           0.13900842  0.14255175 -0.12349625  0.33197135  0.17742647 -0.13486701 -0.06884496 -0.11658696

   6    1  |1 1>-         -0.03074998  0.03063645 -0.12835107 -0.03729797  0.03959223 -0.05684674 -0.03974753  0.35557422
                           0.00495760  0.11626105  0.07653570 -0.16952814  0.06344977  0.43366348  0.03282990 -0.26097929

   7    1  |1 1>-         -0.07806643  0.07503005  0.04108422  0.11196765 -0.00136403  0.01535018 -0.45540035 -0.27121688
                           0.09587053  0.18385699 -0.06241831  0.21614295  0.15614107  0.21895448  0.00744991  0.09495361

   8    1  |1 1>-         -0.04473831 -0.05447801  0.00519835  0.10071955  0.00345902  0.08806657  0.07820390  0.15402992
                           0.15139842 -0.07254981  0.00292979 -0.13286083  0.34499734  0.18044037 -0.30543186  0.17972834

   9    1  |1 1>-          0.00371861  0.03855235  0.23575049  0.00002229  0.00001699  0.00000113 -0.00000723 -0.00000895
                          -0.09909382 -0.05026089 -0.21483711  0.00001751  0.00000035  0.00000479  0.00000441  0.00002701

  10    1  |1 1>-          0.04281373 -0.04248224  0.17818452 -0.00000014 -0.00001937 -0.00001340  0.00005398 -0.00000403
                          -0.00727658 -0.16147342 -0.10631536 -0.00004405  0.00001849  0.00000642 -0.00001110 -0.00000085

  11    1  |1 1>-          0.10844459 -0.10443809 -0.05707407 -0.00002932 -0.00002679  0.00003094  0.00004109  0.00006038
                          -0.13326443 -0.25570456  0.08670149 -0.00010381 -0.00000545  0.00009912  0.00002985 -0.00002920

  12    1  |1 1>-         -0.00001550 -0.00000199  0.00010588 -0.00009157  0.00000513  0.00002034  0.00004952 -0.00002529
                          -0.00004830 -0.00000946 -0.00008764 -0.00018434 -0.00026888  0.00001379  0.00013388 -0.00002708

   1    1  |0 0>           0.02360045  0.04528495 -0.01535610  0.00000816  0.00000413 -0.00000681 -0.00000385 -0.00000218
                           0.01920838 -0.01848917 -0.01010496 -0.00000130 -0.00000703  0.00000491  0.00000006  0.00000008

   2    1  |0 0>           0.01793886  0.01063915  0.02981407 -0.00000790  0.00001129 -0.00000075  0.00000011 -0.00000746
                           0.00050460  0.00523029  0.03199044 -0.00000065  0.00000542  0.00000005 -0.00000046  0.00000074

   3    1  |0 0>          -0.00126365 -0.02861099 -0.01885310 -0.00000090  0.00000442  0.00000002 -0.00000582  0.00000280
                          -0.00757903  0.00753117 -0.03159189  0.00000309  0.00000068  0.00000078 -0.00000465 -0.00000086

   4    1  |0 0>          -0.05465323  0.02622002 -0.00103407  0.00000297 -0.00000496 -0.00000546  0.00000270  0.00000333
                          -0.01615543 -0.01969056  0.00192377 -0.00000152 -0.00000135  0.00000004  0.00000003  0.00000210

   5    1  |0 0>           0.01422741  0.01595459 -0.02069865 -0.00001133  0.00000075 -0.00000232 -0.00000479 -0.00000201
                          -0.00042159 -0.00438703 -0.02683494  0.00000473  0.00000257 -0.00000216  0.00000170  0.00000096

   6    1  |0 0>          -0.00000015 -0.00000019  0.00000262 -0.00000046  0.00000173  0.00000066  0.00000001  0.00000001
                           0.00000027  0.00000023  0.00000338 -0.00000122 -0.00000035 -0.00000034  0.00000012  0.00000043

   7    1  |0 0>          -0.00003861 -0.00011121 -0.00007915 -0.00015828 -0.00016068  0.00001764  0.00007130 -0.00003999
                          -0.00001563  0.00004711 -0.00011440  0.00007160 -0.00000212 -0.00004574 -0.00001984  0.00001829

   8    1  |0 0>           0.00003204 -0.00004566 -0.00007611  0.00009044 -0.00004504 -0.00014242  0.00000754  0.00002781
                           0.00009811  0.00006897 -0.00005844 -0.00001525  0.00003155  0.00000597  0.00005137  0.00018463

   9    1  |0 0>           0.00021615 -0.00016109 -0.00022633  0.00017724 -0.00008296 -0.00004756 -0.00004465  0.00005984
                           0.00003758  0.00008322 -0.00034873 -0.00000521 -0.00004216  0.00000899 -0.00007006  0.00003858

  10    1  |0 0>          -0.37195616  0.17845700 -0.00704614  0.00001617 -0.00002548 -0.00005850  0.00003656  0.00003592
                          -0.10994858 -0.13402394  0.01307430 -0.00002809 -0.00000793 -0.00002454  0.00001729  0.00005605

  11    1  |0 0>           0.08023017  0.09830634 -0.16595335 -0.00005839 -0.00005777  0.00000124 -0.00001816 -0.00001139
                          -0.00328471 -0.03421008 -0.20927029  0.00003675 -0.00001504 -0.00002418 -0.00001706 -0.00002019

  12    1  |0 0>           0.16060750  0.30820786 -0.10448491  0.00007035  0.00003482 -0.00006726 -0.00005352 -0.00002340
                           0.13072037 -0.12583267 -0.06873674 -0.00000363 -0.00008342  0.00006054 -0.00000335  0.00000096

  13    1  |0 0>          -0.00854155 -0.19473868 -0.12835511  0.00008902  0.00002353 -0.00002903 -0.00008643  0.00005438
                          -0.05157309  0.05126779 -0.21507397  0.00002835 -0.00003266 -0.00000515 -0.00005042 -0.00001091

  14    1  |0 0>           0.13356340  0.08584070  0.18305351 -0.00009103  0.00023142 -0.00000334  0.00002505 -0.00011420
                           0.00303306  0.03143750  0.19237730 -0.00007359  0.00006245 -0.00000591 -0.00000357  0.00003136

  15    1  |0 0>           0.00000232 -0.00000543 -0.00001469  0.00000425 -0.00002937  0.00000238 -0.00000293  0.00000511
                          -0.00000089 -0.00000092 -0.00003105  0.00001806  0.00000089  0.00000360 -0.00000179 -0.00001080

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00000400  0.00000879  0.00000791 -0.00000957  0.00001200 -0.02183064 -0.00130205 -0.03554561
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000399 -0.00001076 -0.00722154  0.00322390  0.01420707  0.02992079  0.00143582  0.00405049
                           0.00000621 -0.00000162  0.00965031  0.01067421  0.00935319  0.00155665 -0.00209661 -0.00553556

   3    1  |1 1>+         -0.00000348 -0.00001104  0.00987624 -0.01859503  0.01069368  0.00244957  0.01984329 -0.00290965
                          -0.00000221  0.00000155 -0.00077934 -0.00083971 -0.00043069 -0.00167015  0.01410392 -0.00109489

   4    1  |1 1>+         -0.29690789 -0.05856302 -0.00886870 -0.01283331 -0.01240626 -0.00111960  0.04823160 -0.00183007
                          -0.21231550  0.00192990  0.02371679  0.00411319 -0.01272538  0.00008276  0.02940957 -0.00190794

   5    1  |1 1>+         -0.07462454  0.44960225 -0.01388208  0.00604722  0.02733905  0.03134266  0.00148248  0.00415331
                          -0.02091878  0.03809174  0.01863575  0.02053457  0.01792901  0.00163271 -0.00219657 -0.00576530

   6    1  |1 1>+         -0.16783239 -0.25086244 -0.00020834  0.00022735 -0.00019140  0.05042475 -0.00558984 -0.06043797
                          -0.06486626 -0.02012128  0.00004066 -0.00000270  0.00000970  0.00667639  0.00033058  0.00736670

   7    1  |1 1>+          0.27303055 -0.01596251  0.01901091 -0.03586194  0.02048966  0.00254393  0.02070790 -0.00302121
                          -0.12482147 -0.09411125 -0.00148395 -0.00158934 -0.00081195 -0.00174821  0.01471408 -0.00114475

   8    1  |1 1>+          0.02380181  0.17471597 -0.01054102 -0.01517250 -0.01486331  0.00104087 -0.04056300  0.00153746
                          -0.25152681 -0.09161736  0.02828776  0.00481588 -0.01509406 -0.00005722 -0.02471016  0.00159795

   9    1  |1 1>+          0.00001677  0.00003794  0.07350971 -0.03289079 -0.14464502  0.35256906  0.01690855  0.04776944
                          -0.00003499  0.00002008 -0.09816941 -0.10865948 -0.09526622  0.01829892 -0.02471672 -0.06510084

  10    1  |1 1>+         -0.00000799  0.00009632  0.00001933  0.00004839 -0.00001704  0.25733981  0.01535692  0.41909883
                          -0.00000286  0.00001153 -0.00001489 -0.00003593 -0.00005411  0.00000351  0.00000120 -0.00000473

  11    1  |1 1>+         -0.00002353 -0.00010637  0.10044224 -0.18928379  0.10886774 -0.02891778 -0.23384227  0.03435299
                          -0.00000207  0.00000271 -0.00793690 -0.00857858 -0.00440890  0.01969083 -0.16635625  0.01291893

  12    1  |1 1>+          0.00007818 -0.00004973 -0.21519093 -0.30937321 -0.30184354 -0.00013880  0.00002867  0.00001190
                          -0.00017673 -0.00000232  0.57565713  0.09902050 -0.30722045 -0.00001745 -0.00008407  0.00003107

   1    1  |1 0>           0.00000210  0.00000040 -0.00077919 -0.00083979 -0.00042928  0.00167047 -0.01411381  0.00109538
                           0.00000276  0.00000449 -0.00987713  0.01859141 -0.01068684  0.00244956  0.01983140 -0.00291458

   2    1  |1 0>          -0.00000356  0.00000098  0.01664560  0.00285627 -0.00887805  0.00004383  0.01841321 -0.00120363
                          -0.00000293  0.00000322  0.00622002  0.00894312  0.00872865  0.00076829 -0.03021735  0.00113602

   3    1  |1 0>           0.00000085 -0.00000242  0.00000041 -0.00000214 -0.00000286  0.00320062  0.00017038  0.00352838
                          -0.00000575  0.00000427 -0.00000288  0.00000136  0.00000307 -0.01327945  0.00330933  0.04675592

   4    1  |1 0>           0.20933686 -0.02141763  0.02122209  0.02334325  0.02030282  0.00054777 -0.00075719 -0.00199181
                           0.05125525  0.30845990  0.01585006 -0.00707012 -0.03084001 -0.01081686 -0.00054012 -0.00152222

   5    1  |1 0>          -0.19067507  0.02069869 -0.03196991 -0.00547888  0.01700578 -0.00003357 -0.01921967  0.00126656
                           0.34234492  0.10175302 -0.01191348 -0.01709741 -0.01684571 -0.00085534  0.03153229 -0.00118033

   6    1  |1 0>           0.14679547 -0.01269318 -0.00146182 -0.00154080 -0.00079046  0.00174180 -0.01468534  0.00115506
                          -0.17838454  0.38160640 -0.01889725  0.03567792 -0.02054042  0.00258270  0.02071043 -0.00305192

   7    1  |1 0>          -0.06494579 -0.02008518  0.00004241  0.00003440  0.00006109 -0.00333652 -0.00018129 -0.00367325
                           0.16809475  0.25057633  0.00015201 -0.00007783 -0.00003841  0.05947732 -0.00071957  0.02537840

   8    1  |1 0>          -0.15228502 -0.02513460 -0.00387413 -0.00422423 -0.00358232  0.00321479 -0.00429954 -0.01135596
                          -0.12743714  0.24945554 -0.00286950  0.00121740  0.00549850 -0.06144555 -0.00295286 -0.00832665

   9    1  |1 0>           0.00002693 -0.00000784 -0.16940200 -0.02910422  0.09039826  0.00053003  0.21717975 -0.01422339
                           0.00002976 -0.00003206 -0.06330544 -0.09104754 -0.08882078  0.00898408 -0.35622083  0.01339985

  10    1  |1 0>           0.00000132  0.00000405 -0.00795960 -0.00855921 -0.00438914 -0.01968753  0.16633006 -0.01291804
                           0.00005021  0.00004125 -0.10051148  0.18918769 -0.10876792 -0.02891273 -0.23391983  0.03430207

  11    1  |1 0>           0.00001097  0.00000317 -0.00002133 -0.00002138 -0.00004144 -0.03773080 -0.00202233 -0.04161051
                          -0.00004085 -0.00004391 -0.00000830 -0.00010790  0.00001954  0.15656885 -0.03899965 -0.55128653

  12    1  |1 0>           0.00002003  0.00006450 -0.33357607 -0.36919338 -0.32364921 -0.00001813  0.00000259  0.00013591
                           0.00007809  0.00006316 -0.24975198  0.11171246  0.49144842  0.00010238  0.00000299 -0.00000873

   1    1  |1 1>-         -0.00000390 -0.00000219  0.00963529  0.01067392  0.00936379 -0.00155210  0.00209597  0.00551504
                          -0.00000559 -0.00000375  0.00721936 -0.00323788 -0.01421330  0.02991430  0.00143490  0.00405087

   2    1  |1 1>-         -0.00000333  0.00000106 -0.00000145  0.00000563  0.00001017 -0.00320031 -0.00017002 -0.00352811
                           0.00000936 -0.00001529  0.00000298  0.00000584 -0.00000980  0.03511751 -0.00200722 -0.01120533

   3    1  |1 1>-          0.00000241 -0.00000011 -0.01664739 -0.00286328  0.00888488  0.00004536  0.01842401 -0.00120629
                           0.00000615 -0.00000041 -0.00622453 -0.00894708 -0.00872729  0.00075744 -0.03021177  0.00113708

   4    1  |1 1>-         -0.13413943 -0.00673140 -0.00067999 -0.00074501 -0.00038729  0.00328184 -0.02769452  0.00212540
                           0.08884256 -0.28936487 -0.00749361  0.01410072 -0.00805010  0.00472930  0.03888911 -0.00571531

   5    1  |1 1>-          0.06490935  0.02013449 -0.00011761 -0.00004967 -0.00000621  0.00334193  0.00018186  0.00368287
                          -0.16801693 -0.25083448 -0.00020310  0.00019813 -0.00005016  0.00881631  0.00479427  0.08584906

   6    1  |1 1>-          0.24784499  0.01882429 -0.01814381 -0.02033920 -0.01810327  0.00160776 -0.00218173 -0.00573175
                           0.15863741 -0.14907096 -0.01370370  0.00632368  0.02734612 -0.03124259 -0.00151270 -0.00421581

   7    1  |1 1>-          0.18933757  0.10022647  0.03186842  0.00550604 -0.01698846 -0.00004626 -0.01924059  0.00127698
                           0.14275352  0.21265912  0.01197338  0.01716455  0.01660432 -0.00076585  0.03152485 -0.00117268

   8    1  |1 1>-         -0.02845906 -0.10083996  0.00165546  0.00179198  0.00091374  0.00118394 -0.01001711  0.00078610
                          -0.38365003  0.26127680  0.02056708 -0.03855241  0.02226549  0.00176505  0.01411454 -0.00208724

   9    1  |1 1>-          0.00000696 -0.00000683  0.00000473  0.00001671  0.00000510 -0.03773418 -0.00202180 -0.04160263
                          -0.00004218  0.00003948  0.00000831 -0.00009071 -0.00001346  0.41394281 -0.02364570 -0.13218498

  10    1  |1 1>-         -0.00000339 -0.00001173  0.09813700  0.10863703  0.09524434  0.01831654 -0.02471116 -0.06519331
                          -0.00003506  0.00004317  0.07347249 -0.03286202 -0.14463808 -0.35267150 -0.01691788 -0.04776592

  11    1  |1 1>-          0.00004410 -0.00000022 -0.16938760 -0.02919523  0.09043539 -0.00051914 -0.21711691  0.01420458
                           0.00004347  0.00000167 -0.06334541 -0.09103413 -0.08883450 -0.00908017  0.35624757 -0.01338699

  12    1  |1 1>-          0.00004687  0.00001182 -0.02702376 -0.02909075 -0.01492030  0.00000278 -0.00004204 -0.00000330
                           0.00010781  0.00019143 -0.34150018  0.64307766 -0.36975814 -0.00000865 -0.00010229 -0.00008898

   1    1  |0 0>          -0.00000125 -0.00000419  0.00000196 -0.00000251 -0.00000282  0.00048568 -0.01904064  0.00071528
                           0.00000287 -0.00000156  0.00000051  0.00000120 -0.00000240 -0.00002801 -0.01160623  0.00076033

   2    1  |0 0>           0.00001346 -0.00001598 -0.00000369  0.00000952 -0.00000894 -0.01933710  0.00082450  0.00152519
                           0.00000417 -0.00000243  0.00000069  0.00000025 -0.00000064 -0.00154534 -0.00008373 -0.00170366

   3    1  |0 0>          -0.00000663 -0.00000788 -0.00000264 -0.00000397 -0.00000100 -0.01884442 -0.00090358 -0.00255481
                           0.00000446 -0.00000230  0.00000756  0.00000147 -0.00000243 -0.00097758  0.00132129  0.00348287

   4    1  |0 0>           0.00000028  0.00000559 -0.00000031  0.00000084 -0.00000145  0.00154875  0.01250066 -0.00183432
                          -0.00000016 -0.00000064 -0.00000472 -0.00000378 -0.00000247 -0.00105197  0.00889104 -0.00069115

   5    1  |0 0>          -0.00000647 -0.00000758  0.00000008 -0.00000401  0.00000554  0.00067045 -0.00161946 -0.02660250
                          -0.00000102 -0.00000239  0.00000587  0.00000325  0.00000003  0.00129589  0.00007021  0.00142888

   6    1  |0 0>           0.00000011 -0.00000110  0.00000231 -0.00000173  0.00000106  0.00000325 -0.00000008  0.00000153
                           0.00000098  0.00000036 -0.00000006 -0.00000112 -0.00000195 -0.00000009 -0.00000016 -0.00000018

   7    1  |0 0>           0.00005445  0.00007968 -0.19026607  0.35824590 -0.20596634 -0.00001303 -0.00003783 -0.00004501
                          -0.00005111 -0.00000671  0.01506367  0.01619458  0.00830000 -0.00000097  0.00001858  0.00000482

   8    1  |0 0>          -0.00002256  0.00002878  0.11987562  0.17233836  0.16813572  0.00005475 -0.00000810  0.00000044
                           0.00013014  0.00000965 -0.32068938 -0.05514738  0.17112228  0.00000789  0.00003258 -0.00001494

   9    1  |0 0>          -0.00006835 -0.00013969  0.13913278 -0.06222703 -0.27373765 -0.00003220  0.00000601  0.00000860
                           0.00005002  0.00004115 -0.18583430 -0.20565710 -0.18027439 -0.00000465  0.00000694  0.00005542

  10    1  |0 0>           0.00003426  0.00004235 -0.00007092 -0.00007250  0.00005833 -0.03878482 -0.31417562  0.04612091
                           0.00000519 -0.00001503 -0.00005157 -0.00007890 -0.00005486  0.02645666 -0.22344804  0.01734151

  11    1  |0 0>          -0.00009569  0.00003394  0.00000349  0.00012379  0.00006802 -0.07964577  0.04309145  0.66786960
                          -0.00001826 -0.00001492  0.00005425  0.00001565 -0.00006718 -0.03732615 -0.00198348 -0.04116508

  12    1  |0 0>          -0.00001521 -0.00004146  0.00000295 -0.00001616 -0.00006128 -0.01207815  0.47852674 -0.01800206
                           0.00002619 -0.00003135 -0.00001085  0.00009093 -0.00005708  0.00070549  0.29170156 -0.01908229

  13    1  |0 0>          -0.00008115 -0.00017391 -0.00001035 -0.00012635 -0.00003850  0.47377535  0.02272906  0.06413904
                           0.00006071 -0.00002774  0.00012529  0.00000161 -0.00008688  0.02461402 -0.03319398 -0.08749909

  14    1  |0 0>           0.00018049 -0.00022665 -0.00004127  0.00009187 -0.00020772  0.47974930 -0.01533420  0.04844701
                           0.00006287 -0.00003234  0.00001471 -0.00004950 -0.00008085  0.03429389  0.00182254  0.03780499

  15    1  |0 0>          -0.00001025  0.00002216 -0.00000162  0.00004750  0.00001975 -0.00004547  0.00000357 -0.00000601
                          -0.00001277  0.00000140  0.00001570  0.00000562 -0.00000600  0.00000034  0.00000230  0.00000397

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00180236 -0.02710809 -0.03812715
                           0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00028799 -0.02945194  0.00000129
                           0.00168338  0.00620940  0.00000148

   3    1  |1 1>+         -0.01156777  0.00012797  0.00000040
                          -0.03338822 -0.00011670 -0.00000022

   4    1  |1 1>+          0.01526830  0.00216680 -0.00002957
                           0.03593713  0.00341698 -0.00000190

   5    1  |1 1>+          0.00030124 -0.03061182 -0.00002938
                           0.00177757  0.00644367 -0.00000081

   6    1  |1 1>+         -0.00102098  0.03882396  0.00001494
                           0.00578314 -0.01466713 -0.00000005

   7    1  |1 1>+         -0.01207931  0.00008581  0.00000412
                          -0.03483593 -0.00011229 -0.00000053

   8    1  |1 1>+         -0.01286532 -0.00174190  0.00000077
                          -0.03019940 -0.00288805  0.00000283

   9    1  |1 1>+          0.00343787 -0.34737579  0.00007134
                           0.01984691  0.07320405  0.00000683

  10    1  |1 1>+         -0.02125349  0.31951922  0.30196094
                          -0.00000901  0.00000068  0.00000196

  11    1  |1 1>+          0.13646370 -0.00137272  0.00000529
                           0.39359791  0.00136427  0.00000158

  12    1  |1 1>+         -0.00010696  0.00002611  0.00001147
                          -0.00001106 -0.00001218 -0.00000121

   1    1  |1 0>           0.03338152  0.00011592  0.00000028
                          -0.01157620  0.00011787 -0.00000070

   2    1  |1 0>           0.02249470  0.00215487 -0.00000013
                          -0.00956992 -0.00129250 -0.00000009

   3    1  |1 0>           0.00278195 -0.00702891 -0.00000086
                          -0.00041478 -0.00507317 -0.03813142

   4    1  |1 0>           0.00058354  0.00226631  0.00000111
                          -0.00010477  0.01076676 -0.00002130

   5    1  |1 0>          -0.02342207 -0.00226461 -0.00000168
                           0.01001076  0.00127480  0.00001208

   6    1  |1 0>           0.03481133  0.00010421 -0.00000016
                          -0.01205231  0.00007639 -0.00000137

   7    1  |1 0>          -0.00290797  0.00729068  0.00000848
                          -0.00332330  0.06179425 -0.00000177

   8    1  |1 0>           0.00346807  0.01277221 -0.00000377
                          -0.00058881  0.06049539  0.00000556

   9    1  |1 0>           0.26522612  0.02542688 -0.00000067
                          -0.11296191 -0.01520779  0.00000350

  10    1  |1 0>          -0.39363434 -0.00136799 -0.00000277
                           0.13644252 -0.00146284 -0.00000666

  11    1  |1 0>          -0.03281207  0.08288269 -0.00000745
                           0.00489702  0.05987227  0.30196261

  12    1  |1 0>          -0.00001418  0.00000692  0.00003494
                          -0.00002603  0.00008464 -0.00002156

   1    1  |1 1>-         -0.00168342 -0.00620871  0.00000222
                           0.00029113 -0.02946170  0.00000348

   2    1  |1 1>-         -0.00278172  0.00702709 -0.00000015
                          -0.00138751  0.03217327 -0.03812708

   3    1  |1 1>-          0.02249155  0.00215585 -0.00000008
                          -0.00958460 -0.00129163  0.00000122

   4    1  |1 1>-          0.06545944  0.00024843  0.00000115
                          -0.02269826  0.00032476 -0.00000198

   5    1  |1 1>-          0.00290521 -0.00730027 -0.00000748
                          -0.00231153  0.02305284  0.00000818

   6    1  |1 1>-          0.00172518  0.00644529  0.00000184
                          -0.00028943  0.03063232  0.00000821

   7    1  |1 1>-         -0.02344150 -0.00225380 -0.00000274
                           0.00999043  0.00132695  0.00000023

   8    1  |1 1>-          0.02373865  0.00008250 -0.00000220
                          -0.00821211  0.00010405  0.00000175

   9    1  |1 1>-         -0.03280153  0.08288150 -0.00000947
                          -0.01635563  0.37935717 -0.30196864

  10    1  |1 1>-          0.01984456  0.07319455 -0.00000969
                          -0.00340753  0.34727039 -0.00003014

  11    1  |1 1>-         -0.26522201 -0.02541771  0.00000060
                           0.11288847  0.01521312  0.00000704

  12    1  |1 1>-         -0.00006758 -0.00000624  0.00000117
                          -0.00002449 -0.00012239 -0.00002623

   1    1  |0 0>          -0.00603597 -0.00081078 -0.00000097
                          -0.01417684 -0.00135947 -0.00000001

   2    1  |0 0>           0.00086685 -0.01850131  0.00000062
                          -0.00134373  0.00339543 -0.00000072

   3    1  |0 0>          -0.00018369  0.01857116 -0.00000416
                          -0.00106075 -0.00391339 -0.00000002

   4    1  |0 0>          -0.00729375  0.00007362 -0.00000002
                          -0.02103964 -0.00007267 -0.00000013

   5    1  |0 0>           0.00055725 -0.00378209  0.00000055
                           0.00112801 -0.00284806  0.00000033

   6    1  |0 0>           0.00000005 -0.00000344 -0.05901894
                          -0.00000012  0.00000055  0.00000028

   7    1  |0 0>          -0.00000661 -0.00004360 -0.00001300
                           0.00003424  0.00000252 -0.00000166

   8    1  |0 0>           0.00004260 -0.00002208  0.00000017
                           0.00000779  0.00000544  0.00000065

   9    1  |0 0>           0.00000091 -0.00000765 -0.00000204
                          -0.00001642  0.00000141  0.00001441

  10    1  |0 0>           0.18328255 -0.00194642 -0.00000061
                           0.52872078  0.00184179  0.00000226

  11    1  |0 0>          -0.01105316  0.03433118 -0.00000258
                          -0.03244352  0.08196217 -0.00000037

  12    1  |0 0>           0.15168470  0.02047093 -0.00001066
                           0.35624958  0.03413502 -0.00000132

  13    1  |0 0>           0.00458383 -0.46643176  0.00002890
                           0.02665903  0.09831347 -0.00000344

  14    1  |0 0>          -0.02341345  0.47324752  0.00000428
                           0.02979999 -0.07529538  0.00000158

  15    1  |0 0>          -0.00000107  0.00004640  0.84770780
                           0.00000200 -0.00000168 -0.00000047


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.91305432     -0.09820220   -21552.89      0.00000000        0.00      0.0000
     2   1 -20885.84518067     -0.03032854    -6656.35      0.06787365    14896.54      1.8469
     3   1 -20885.84518022     -0.03032810    -6656.25      0.06787409    14896.64      1.8469
     4   1 -20885.84517879     -0.03032667    -6655.93      0.06787553    14896.96      1.8470
     5   1 -20885.82949521     -0.01464309    -3213.79      0.08355910    18339.10      2.2738
     6   1 -20885.82949490     -0.01464277    -3213.72      0.08355942    18339.17      2.2738
     7   1 -20885.82949458     -0.01464246    -3213.65      0.08355974    18339.24      2.2738
     8   1 -20885.82949417     -0.01464205    -3213.56      0.08356015    18339.33      2.2738
     9   1 -20885.82949391     -0.01464179    -3213.50      0.08356041    18339.39      2.2738
    10   1 -20885.74792791      0.06692421    14688.17      0.16512641    36241.06      4.4933
    11   1 -20885.74792768      0.06692444    14688.22      0.16512663    36241.11      4.4933
    12   1 -20885.74792699      0.06692513    14688.37      0.16512733    36241.26      4.4933
    13   1 -20885.74792666      0.06692546    14688.44      0.16512766    36241.33      4.4934
    14   1 -20885.74792658      0.06692554    14688.46      0.16512773    36241.35      4.4934
    15   1 -20885.71001069      0.10484143    23010.03      0.20304363    44562.93      5.5251
    16   1 -20885.69573503      0.11911709    26143.18      0.21731928    47696.07      5.9136
    17   1 -20885.69573467      0.11911745    26143.26      0.21731965    47696.15      5.9136
    18   1 -20885.69573410      0.11911802    26143.38      0.21732022    47696.28      5.9136
    19   1 -20885.69057381      0.12427831    27275.94      0.22248051    48828.83      6.0540
    20   1 -20885.68795749      0.12689463    27850.15      0.22509682    49403.04      6.1252
    21   1 -20885.68795665      0.12689548    27850.34      0.22509767    49403.23      6.1252
    22   1 -20885.68795602      0.12689610    27850.47      0.22509829    49403.36      6.1252
    23   1 -20885.68672313      0.12812899    28121.06      0.22633119    49673.95      6.1588
    24   1 -20885.68672213      0.12812999    28121.28      0.22633219    49674.17      6.1588
    25   1 -20885.68672193      0.12813019    28121.33      0.22633238    49674.22      6.1588
    26   1 -20885.68672165      0.12813047    28121.39      0.22633266    49674.28      6.1588
    27   1 -20885.68672074      0.12813138    28121.59      0.22633357    49674.48      6.1589
    28   1 -20885.60086243      0.21398969    46965.31      0.31219188    68518.20      8.4952
    29   1 -20885.60086220      0.21398992    46965.36      0.31219211    68518.25      8.4952
    30   1 -20885.60086171      0.21399041    46965.47      0.31219261    68518.36      8.4952
    31   1 -20885.59939844      0.21545368    47286.62      0.31365588    68839.51      8.5350
    32   1 -20885.59939786      0.21545426    47286.74      0.31365645    68839.63      8.5350
    33   1 -20885.59939746      0.21545466    47286.83      0.31365685    68839.72      8.5350
    34   1 -20885.59939711      0.21545501    47286.91      0.31365721    68839.80      8.5350
    35   1 -20885.59939606      0.21545606    47287.14      0.31365826    68840.03      8.5351
    36   1 -20885.59650238      0.21834975    47922.23      0.31655194    69475.12      8.6138
    37   1 -20885.59650169      0.21835043    47922.38      0.31655263    69475.27      8.6138
    38   1 -20885.59650140      0.21835072    47922.44      0.31655292    69475.34      8.6138
    39   1 -20885.59650108      0.21835104    47922.52      0.31655324    69475.41      8.6139
    40   1 -20885.59650094      0.21835118    47922.54      0.31655337    69475.43      8.6139
    41   1 -20885.59650042      0.21835170    47922.66      0.31655390    69475.55      8.6139
    42   1 -20885.59650010      0.21835202    47922.73      0.31655422    69475.62      8.6139
    43   1 -20885.59508688      0.21976524    48232.89      0.31796743    69785.78      8.6523
    44   1 -20885.59508634      0.21976578    48233.01      0.31796798    69785.90      8.6523
    45   1 -20885.59508599      0.21976613    48233.09      0.31796832    69785.98      8.6524
    46   1 -20885.59094899      0.22390313    49141.06      0.32210533    70693.95      8.7649
    47   1 -20885.59094788      0.22390424    49141.30      0.32210644    70694.19      8.7650
    48   1 -20885.59094767      0.22390445    49141.35      0.32210664    70694.24      8.7650
    49   1 -20885.59094752      0.22390460    49141.38      0.32210680    70694.27      8.7650
    50   1 -20885.59094656      0.22390556    49141.59      0.32210776    70694.48      8.7650
    51   1 -20885.58215279      0.23269933    51071.60      0.33090152    72624.49      9.0043

 E0 = -20885.81485212 is the energy of the lowest zeroth-order state
 E1 = -20885.91305432 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.51801374 -0.00000128  0.00000209 -0.00000458 -0.23709140 -0.45040989 -0.02815393  0.02727179
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000127 -0.01118149 -0.00681416 -0.69512616  0.05861741 -0.05502830  0.02414171  0.01124859
                                0.00000302  0.01416613  0.01434549  0.11238761  0.41975563 -0.22817044 -0.01773616 -0.01025468

  3  1     3    1  |1 1>+       0.00000002 -0.26034972  0.17427279  0.00730806 -0.01263227 -0.00591117  0.11909055  0.06640499
                               -0.00000076 -0.31761046  0.54528274  0.00029222 -0.00828927  0.02327623 -0.38803829  0.25722649

  4  1     4    1  |1 1>+      -0.00000072  0.00897260  0.00815790 -0.00047189 -0.00314910  0.00135333 -0.00559209 -0.03323217
                               -0.00000009 -0.00820061 -0.00309294 -0.00011280 -0.00027467 -0.00011609 -0.03270071 -0.03811226

  5  1     5    1  |1 1>+      -0.00000092 -0.00031917 -0.00019445 -0.01987543 -0.00475923  0.00446642 -0.00196051 -0.00091325
                                0.00000309  0.00040459  0.00041022  0.00321342 -0.03407878  0.01852476  0.00144029  0.00083186

  6  1     6    1  |1 1>+      -0.00000161  0.00000009  0.00000010 -0.00000010 -0.01978674 -0.02711072  0.00280912 -0.00497086
                               -0.00000087  0.00000009 -0.00000014 -0.00000166 -0.00361860  0.00760529  0.00222503 -0.00203322

  7  1     7    1  |1 1>+       0.00000009 -0.00744128  0.00498228  0.00020901  0.00102586  0.00048069 -0.00966999 -0.00539257
                               -0.00000002 -0.00907777  0.01558944  0.00000814  0.00067331 -0.00188968  0.03150328 -0.02088018

  8  1     8    1  |1 1>+       0.00000010  0.01066977  0.00969740 -0.00056051  0.00264773 -0.00113865  0.00470596  0.02793862
                               -0.00000021 -0.00975166 -0.00367854 -0.00013397  0.00023342  0.00009600  0.02749483  0.03204465

  9  1     9    1  |1 1>+       0.00000009 -0.00008327 -0.00005061 -0.00523658 -0.00045375  0.00042408 -0.00018671 -0.00008735
                               -0.00000673  0.00010646  0.00010782  0.00084665 -0.00324126  0.00176074  0.00013730  0.00007925

 10  1    10    1  |1 1>+      -0.03945079  0.00000004 -0.00000000 -0.00000021 -0.00183080 -0.00347648 -0.00021707  0.00021004
                                0.00000100 -0.00000038  0.00000033 -0.00000152 -0.00000028  0.00000084  0.00000017 -0.00000036

 11  1    11    1  |1 1>+      -0.00000010  0.00196182 -0.00130922 -0.00005445 -0.00009771 -0.00004610  0.00091514  0.00050865
                               -0.00000004  0.00239218 -0.00409663 -0.00000243 -0.00006393  0.00017953 -0.00299229  0.00198697

 12  1    12    1  |1 1>+       0.00000101 -0.03842216 -0.03489863  0.00202432  0.00000093  0.00000041  0.00000419  0.00000079
                                0.00000011  0.03511670  0.01323543  0.00048117 -0.00000133  0.00000079  0.00000487  0.00000589

 13  1     1    1  |1 0>       -0.00000055 -0.31761075  0.54526985  0.00029196  0.00829216 -0.02327506  0.38805927 -0.25721888
                                0.00000019  0.26035594 -0.17426588 -0.00730673 -0.01263360 -0.00591306  0.11909545  0.06640164

 14  1     2    1  |1 0>        0.00000009 -0.38603838 -0.14554780 -0.00528497  0.00221681  0.00092949  0.26313682  0.30667162
                                0.00000028 -0.42236859 -0.38376280  0.02228251 -0.02533759  0.01089144 -0.04502084 -0.26740010

 15  1     3    1  |1 0>       -0.00000142 -0.00000000 -0.00000083  0.00000865  0.02228690 -0.04684171 -0.01370387  0.01252239
                                0.51801933  0.00000126 -0.00000053  0.00000314 -0.00331349  0.05823616  0.03137763 -0.04425056

 16  1     4    1  |1 0>        0.00000303  0.00046057  0.00046624  0.00365292 -0.01190190  0.00646920  0.00050290  0.00029075
                               -0.00000008  0.00036368  0.00022147  0.02259391  0.00166209 -0.00156004  0.00068463  0.00031880

 17  1     5    1  |1 0>       -0.00000021  0.01103274  0.00416126  0.00015186  0.00017948  0.00007583  0.02136117  0.02489580
                                0.00000018  0.01207100  0.01097510 -0.00063684 -0.00205693  0.00088443 -0.00365505 -0.02170594

 18  1     6    1  |1 0>        0.00000007 -0.00907525  0.01559052  0.00000826 -0.00067310  0.00188932 -0.03150165  0.02088213
                                0.00000004  0.00744191 -0.00498335 -0.00020946  0.00102536  0.00047962 -0.00966756 -0.00539281

 19  1     7    1  |1 0>       -0.00000019 -0.00000001  0.00000007 -0.00000083  0.00180859 -0.00380244 -0.00111290  0.00101656
                                0.00000041  0.00000010  0.00000026 -0.00000061 -0.03876814 -0.06839994 -0.00202368  0.00083579

 20  1     8    1  |1 0>       -0.00000030 -0.00008148 -0.00008268 -0.00064768 -0.06710731  0.03647349  0.00283536  0.00163966
                               -0.00000046 -0.00006368 -0.00003935 -0.00400691  0.00937051 -0.00879716  0.00385988  0.00179772

 21  1     9    1  |1 0>        0.00000001 -0.00289901 -0.00109641 -0.00003922 -0.00001752 -0.00000674 -0.00202909 -0.00236362
                                0.00000011 -0.00317069 -0.00289242  0.00016749  0.00019537 -0.00008434  0.00035250  0.00205663

 22  1    10    1  |1 0>       -0.00000021  0.00238172 -0.00410496 -0.00000210  0.00006394 -0.00017936  0.00299088 -0.00197973
                                0.00000002 -0.00195499  0.00131277  0.00005516 -0.00009723 -0.00004539  0.00092033  0.00051706

 23  1    11    1  |1 0>       -0.00000034  0.00000027 -0.00000010  0.00001698  0.00017207 -0.00036114 -0.00010544  0.00009653
                               -0.03944714 -0.00000032 -0.00000043 -0.00000286 -0.00002494  0.00044948  0.00024202 -0.00034127

 24  1    12    1  |1 0>        0.00001260  0.00128765  0.00130467  0.01022054  0.00000000 -0.00000051 -0.00000075  0.00000094
                                0.00000004  0.00101749  0.00061993  0.06321510 -0.00000013 -0.00000090 -0.00000037  0.00000024

 25  1     1    1  |1 1>-       0.00000371  0.01416535  0.01434388  0.11238824 -0.41975405  0.22817204  0.01773591  0.01025417
                               -0.00000077  0.01118672  0.00681611  0.69512741  0.05861452 -0.05503320  0.02414010  0.01124589

 26  1     2    1  |1 1>-       0.00000107  0.00000022  0.00000129  0.00000110 -0.02228800  0.04684325  0.01370375 -0.01252213
                                0.51801417 -0.00000062 -0.00000050 -0.00000057  0.24040586  0.39217264 -0.00322432  0.01697891

 27  1     3    1  |1 1>-       0.00000031  0.38604001  0.14553301  0.00528715  0.00222149  0.00092892  0.26312304  0.30667329
                               -0.00000016  0.42237306  0.38377819 -0.02228418 -0.02534118  0.01089441 -0.04500083 -0.26739192

 28  1     4    1  |1 1>-       0.00000002 -0.00357523  0.00614416  0.00000309 -0.00126565  0.00355265 -0.05922802  0.03926141
                               -0.00000102  0.00293071 -0.00196408 -0.00008343  0.00192885  0.00090354 -0.01817645 -0.01013506

 29  1     5    1  |1 1>-      -0.00000007 -0.00000020  0.00000052 -0.00000202 -0.00180954  0.00380277  0.00111130 -0.00101676
                                0.00000291  0.00000035  0.00000061 -0.00000146 -0.01897990 -0.04129478 -0.00483293  0.00580657

 30  1     6    1  |1 1>-      -0.00000235 -0.00040551 -0.00041013 -0.00321322 -0.03407825  0.01852367  0.00143996  0.00083282
                               -0.00000099 -0.00031977 -0.00019512 -0.01987431  0.00475886 -0.00446813  0.00195998  0.00091317

 31  1     7    1  |1 1>-       0.00000001 -0.01103410 -0.00416202 -0.00015116  0.00018079  0.00007498  0.02136216  0.02489631
                               -0.00000012 -0.01207186 -0.01097313  0.00063707 -0.00205706  0.00088454 -0.00365734 -0.02170590

 32  1     8    1  |1 1>-       0.00000004  0.00985299 -0.01692173 -0.00000894 -0.00045953  0.00128910 -0.02148974  0.01424272
                               -0.00000158 -0.00807720  0.00540783  0.00022680  0.00070046  0.00032914 -0.00659695 -0.00367934

 33  1     9    1  |1 1>-       0.00000030 -0.00000061  0.00000063 -0.00000175  0.00017045 -0.00036000 -0.00010665  0.00009626
                                0.03945012  0.00000009  0.00000002 -0.00000105 -0.00185625 -0.00302902  0.00002454 -0.00013013

 34  1    10    1  |1 1>-       0.00000626 -0.00010648 -0.00010806 -0.00084665 -0.00324088  0.00176202  0.00013697  0.00007876
                                0.00000087 -0.00008369 -0.00005106 -0.00523642  0.00045228 -0.00042394  0.00018645  0.00008663

 35  1    11    1  |1 1>-       0.00000005 -0.00290543 -0.00109256 -0.00003962  0.00001659  0.00000755  0.00202779  0.00236371
                               -0.00000018 -0.00317890 -0.00287977  0.00016744 -0.00019526  0.00008346 -0.00034213 -0.00206531

 36  1    12    1  |1 1>-       0.00000033  0.02889525 -0.04959115 -0.00002671  0.00000111 -0.00000090  0.00000558 -0.00000092
                                0.00000124 -0.02368613  0.01584867  0.00066571 -0.00000105 -0.00000142  0.00000458  0.00000473

 37  1     1    1  |0 0>        0.00000002 -0.00000298 -0.00000762  0.00000091  0.03725173 -0.01601401  0.06617276  0.39311180
                                0.00000007  0.00000135 -0.00000788  0.00000123  0.00326245  0.00136596  0.38683679  0.45085475

 38  1     2    1  |0 0>       -0.00000029 -0.00000018 -0.00000107  0.00000076  0.33125122  0.55660830  0.00355183  0.01216495
                               -0.00000034 -0.00000013 -0.00000088  0.00000065  0.02510166 -0.05275759 -0.01543433  0.01410363

 39  1     3    1  |0 0>       -0.00000055  0.00000279  0.00000092  0.00000066  0.08617189 -0.08090185  0.03549061  0.01653500
                               -0.00000024  0.00000045  0.00000079 -0.00000036  0.61708706 -0.33543862 -0.02607436 -0.01507562

 40  1     4    1  |0 0>       -0.00000020 -0.00000246 -0.00000376 -0.00000090  0.01857214  0.00869210 -0.17508324 -0.09762352
                                0.00000004  0.00000052 -0.00000697 -0.00000014  0.01218845 -0.03421813  0.57048481 -0.37815628

 41  1     5    1  |0 0>        0.00000084  0.00000128 -0.00000128  0.00000442  0.11611324  0.28155799  0.04380792 -0.05552810
                                0.00000035 -0.00000002  0.00000071 -0.00000402 -0.02105820  0.04425927  0.01294795 -0.01183220

 42  1     6    1  |0 0>       -0.42842605  0.00000028 -0.00000051  0.00000083 -0.00000045  0.00000082  0.00000036 -0.00000015
                               -0.00000005  0.00000004  0.00000027  0.00000348 -0.00000072  0.00000097 -0.00000013  0.00000010

 43  1     7    1  |0 0>       -0.00000018  0.01508109 -0.01009348 -0.00042332  0.00000024  0.00000040 -0.00000047 -0.00000028
                                0.00000007  0.01839838 -0.03158226 -0.00001697  0.00000011 -0.00000021  0.00000037 -0.00000049

 44  1     8    1  |0 0>        0.00000010 -0.02446594 -0.02222692  0.00129067  0.00000023 -0.00000003 -0.00000030  0.00000026
                                0.00000002  0.02236127  0.00842938  0.00030615  0.00000018 -0.00000004  0.00000022  0.00000086

 45  1     9    1  |0 0>       -0.00000005  0.00064796  0.00039482  0.04026029 -0.00000025 -0.00000042 -0.00000017 -0.00000010
                               -0.00000150 -0.00082039 -0.00083084 -0.00650928 -0.00000008  0.00000003  0.00000016 -0.00000016

 46  1    10    1  |0 0>       -0.00000013 -0.00000031 -0.00000039 -0.00000019 -0.00030589 -0.00014293  0.00288515  0.00160818
                               -0.00000002 -0.00000094 -0.00000089  0.00000004 -0.00020078  0.00056387 -0.00940087  0.00623143

 47  1    11    1  |0 0>       -0.00000029 -0.00000014 -0.00000005 -0.00000028 -0.00119125 -0.00341474 -0.00070828  0.00093326
                               -0.00000015 -0.00000000 -0.00000001 -0.00000151  0.00039758 -0.00083573 -0.00024464  0.00022340

 48  1    12    1  |0 0>        0.00000008  0.00000069 -0.00000109  0.00000000 -0.00061389  0.00026388 -0.00109001 -0.00647828
                               -0.00000002 -0.00000051  0.00000065 -0.00000003 -0.00005375 -0.00002255 -0.00637453 -0.00742951

 49  1    13    1  |0 0>        0.00000004 -0.00000011 -0.00000014  0.00000010 -0.00141984  0.00133334 -0.00058463 -0.00027247
                               -0.00000002  0.00000001 -0.00000003 -0.00000002 -0.01016773  0.00552779  0.00042958  0.00024841

 50  1    14    1  |0 0>       -0.00000003 -0.00000004  0.00000000  0.00000023 -0.00565919 -0.00969478 -0.00015138 -0.00008055
                                0.00000003 -0.00000003  0.00000012  0.00000022 -0.00036555  0.00076793  0.00022441 -0.00020526

 51  1    15    1  |0 0>        0.08222784  0.00000001  0.00000012  0.00000013 -0.00000001 -0.00000034 -0.00000009  0.00000016
                               -0.00000014  0.00000014 -0.00000016  0.00000193  0.00000032 -0.00000036  0.00000015  0.00000007


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.23817869  0.48508728  0.19425347  0.03574259  0.25929010  0.06779588  0.23724130  0.00001064
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.04415603 -0.06201623  0.20459967 -0.02836326 -0.02766028 -0.02176565  0.00000110 -0.00008533
                                0.01457302  0.17331245 -0.42599064  0.01651949 -0.00547561 -0.00726130 -0.00000388 -0.00005089

  3  1     3    1  |1 1>+       0.01728170 -0.01140121  0.00705684  0.16096927 -0.02246509  0.06240827 -0.00000002  0.00007454
                                0.03955995 -0.00846632  0.00806629  0.36638489  0.03912063 -0.30531836  0.00000030  0.00008154

  4  1     4    1  |1 1>+      -0.00256847  0.00017897 -0.00122749 -0.00507164 -0.00029013  0.00602438 -0.00000279  0.26389614
                               -0.00000578  0.00005757 -0.00090649 -0.01488710  0.00743380 -0.01839486  0.00000002 -0.06484578

  5  1     5    1  |1 1>+      -0.00358427 -0.00207109  0.00683758 -0.00094722 -0.00092514 -0.00072718 -0.00000551  0.16475378
                               -0.00117839  0.00579288 -0.01423672  0.00055099 -0.00019303 -0.00024499  0.00001571  0.10255014

  6  1     6    1  |1 1>+       0.07005843 -0.01442723 -0.00534938  0.00354917  0.02834778  0.00830349 -0.00000354 -0.00002841
                               -0.01127734  0.00330683 -0.00159409 -0.00076060 -0.00494092  0.00021865 -0.00000236 -0.00001392

  7  1     7    1  |1 1>+      -0.00140302 -0.00038344  0.00023547  0.00538586 -0.00075335  0.00209150 -0.00000218 -0.15239063
                               -0.00321130 -0.00028266  0.00026888  0.01224677  0.00130760 -0.01020486  0.00000006 -0.16148472

  8  1     8    1  |1 1>+       0.00215987 -0.00015094  0.00103516  0.00425684  0.00024258 -0.00506016  0.00000045  0.31385819
                                0.00000459 -0.00004630  0.00075672  0.01252436 -0.00625085  0.01547051 -0.00000029 -0.07712884

  9  1     9    1  |1 1>+      -0.00034151  0.00366968 -0.01210148  0.00167822  0.00163408  0.00128643  0.00000366 -0.00101647
                               -0.00012034 -0.01025047  0.02520046 -0.00097484  0.00033851  0.00043373 -0.00003458 -0.00062661

 10  1    10    1  |1 1>+      -0.00183149  0.02869448  0.01149185  0.00211256  0.01532336  0.00400611 -0.04084678  0.00006900
                                0.00000051 -0.00000163  0.00000105 -0.00000007 -0.00000090 -0.00000092  0.00000360  0.00001940

 11  1    11    1  |1 1>+       0.00013331 -0.00067226  0.00041855  0.00952675 -0.00133133  0.00369853  0.00000115 -0.00094602
                                0.00030518 -0.00050075  0.00047677  0.02166694  0.00231423 -0.01805599 -0.00000041 -0.00101393

 12  1    12    1  |1 1>+      -0.00000024 -0.00000033 -0.00000330 -0.00000753 -0.00000059  0.00000844  0.00000273  0.13590517
                                0.00000027 -0.00000155  0.00000331 -0.00000656  0.00000362 -0.00000977  0.00000021 -0.03338934

 13  1     1    1  |1 0>       -0.03955741  0.00846606 -0.00806676 -0.36638892 -0.03912058  0.30531834  0.00000009  0.00007138
                                0.01728136 -0.01140050  0.00705708  0.16096923 -0.02246401  0.06240567  0.00000007 -0.00007525

 14  1     2    1  |1 0>        0.00004701  0.00110485 -0.01766595 -0.29097861  0.14527763 -0.35950462 -0.00000015  0.00003981
                               -0.02067222 -0.00349569  0.02401516  0.09906455  0.00566580 -0.11769627 -0.00000027  0.00017319

 15  1     3    1  |1 0>        0.06944530  0.04946244 -0.02385694 -0.01138196 -0.07394527  0.00325254  0.00000148 -0.00000846
                                0.55057681 -0.02671054 -0.01707681 -0.07095811 -0.55362594 -0.15809241  0.23723616  0.00001045

 16  1     4    1  |1 0>       -0.00041274  0.00202439 -0.00497399  0.00019224 -0.00006812 -0.00008586  0.00001720  0.11659200
                                0.00125218  0.00072322 -0.00238901  0.00033076  0.00032190  0.00025380  0.00000438 -0.18731560

 17  1     5    1  |1 0>        0.00000387 -0.00003797  0.00059266  0.00972828 -0.00485763  0.01201964 -0.00000040  0.08726426
                               -0.00167810  0.00011634 -0.00080192 -0.00331160 -0.00018887  0.00393409 -0.00000106  0.35512319

 18  1     6    1  |1 0>        0.00321129  0.00028354 -0.00026978 -0.01225145 -0.00130697  0.01020499  0.00000047 -0.16149109
                               -0.00140317 -0.00037993  0.00023600  0.00537945 -0.00075080  0.00208670  0.00000086  0.15239075

 19  1     7    1  |1 0>        0.00563770 -0.00165183  0.00079382  0.00038106  0.00247166 -0.00010894 -0.00000018  0.00000404
                                0.00602506 -0.03154040 -0.01240759 -0.00001809  0.00117226  0.00075236  0.00000175 -0.00000866

 20  1     8    1  |1 0>       -0.00232884  0.01141721 -0.02803963  0.00108734 -0.00035919 -0.00047857 -0.00000260 -0.02067530
                                0.00705834  0.00408160 -0.01346825  0.00186642  0.00182137  0.00143279 -0.00000152  0.03322138

 21  1     9    1  |1 0>       -0.00000054 -0.00006574  0.00104624  0.01719862 -0.00858865  0.02125297  0.00000017  0.00054422
                                0.00015853  0.00020670 -0.00141874 -0.00586767 -0.00033583  0.00696614 -0.00000055  0.00219252

 22  1    10    1  |1 0>       -0.00030457  0.00050036 -0.00047724 -0.02166371 -0.00231402  0.01805749 -0.00000097 -0.00100932
                                0.00013334 -0.00067468  0.00041692  0.00951200 -0.00132487  0.00368046  0.00000033  0.00094298

 23  1    11    1  |1 0>        0.00053585  0.00292489 -0.00141081 -0.00067356 -0.00437323  0.00019264 -0.00000144 -0.00000950
                                0.00424538 -0.00158049 -0.00101131 -0.00419644 -0.03274200 -0.00935000 -0.04084547  0.00004908

 24  1    12    1  |1 0>       -0.00000591  0.00000042  0.00000037  0.00000158  0.00000805  0.00000217  0.00004112 -0.03924921
                                0.00000058  0.00000126  0.00000024 -0.00000063 -0.00000240 -0.00000097  0.00000145  0.06304603

 25  1     1    1  |1 1>-      -0.01456427 -0.17331250  0.42599041 -0.01652011  0.00547247  0.00726005 -0.00000445 -0.00005261
                                0.04414487 -0.06201584  0.20459997 -0.02836286 -0.02765845 -0.02176498  0.00000057  0.00008123

 26  1     2    1  |1 1>-      -0.06944765 -0.04946229  0.02385688  0.01138186  0.07394547 -0.00325222 -0.00000114 -0.00000323
                               -0.31240096 -0.45837709 -0.17717704  0.03521529  0.29433322  0.09029576  0.23724050  0.00001265

 27  1     3    1  |1 1>-       0.00004415  0.00110538 -0.01766763 -0.29097771  0.14527770 -0.35950285 -0.00000022 -0.00004308
                               -0.02067333 -0.00349581  0.02401498  0.09905938  0.00566634 -0.11769498  0.00000022 -0.00017596

 28  1     4    1  |1 1>-       0.00603797  0.00053201 -0.00050663 -0.02302735 -0.00245800  0.01918693  0.00000040 -0.06360634
                               -0.00263728 -0.00071871  0.00044270  0.01011429 -0.00141222  0.00392041 -0.00000209  0.06002169

 29  1     5    1  |1 1>-      -0.00563764  0.00165415 -0.00079757 -0.00037943 -0.00247184  0.00010816 -0.00000144 -0.00001124
                               -0.06403218 -0.01710488 -0.00706087 -0.00356788 -0.02717694 -0.00755150  0.00000667  0.00001650

 30  1     6    1  |1 1>-      -0.00118638  0.00579414 -0.01423641  0.00055334 -0.00017412 -0.00024073 -0.00001459 -0.10254545
                                0.00358339  0.00207358 -0.00683821  0.00094808  0.00092660  0.00072842 -0.00000540  0.16475372

 31  1     7    1  |1 1>-       0.00000385 -0.00003632  0.00058890  0.00973135 -0.00485712  0.01202006 -0.00000005 -0.08726985
                               -0.00167787  0.00011680 -0.00080384 -0.00330488 -0.00018875  0.00393037 -0.00000017 -0.35512158

 32  1     8    1  |1 1>-       0.00219057  0.00019272 -0.00018341 -0.00835401 -0.00089198  0.00696076 -0.00000012  0.17528818
                               -0.00095641 -0.00026437  0.00015964  0.00367582 -0.00051549  0.00142825 -0.00000420 -0.16541605

 33  1     9    1  |1 1>-       0.00053567  0.00292463 -0.00141090 -0.00067249 -0.00437349  0.00019087  0.00000265  0.00002427
                                0.00240397  0.02711552  0.01048340 -0.00208164 -0.01739406 -0.00533654  0.04084716 -0.00008440

 34  1    10    1  |1 1>-      -0.00010530 -0.01025129  0.02519958 -0.00097861  0.00031027  0.00042543  0.00003417  0.00062851
                                0.00034143 -0.00366985  0.01210386 -0.00167815 -0.00163783 -0.00128875  0.00000367 -0.00102066

 35  1    11    1  |1 1>-       0.00000029  0.00006478 -0.00104309 -0.01721333  0.00859236 -0.02126339  0.00000005  0.00054316
                               -0.00015943 -0.00020681  0.00142127  0.00585048  0.00033439 -0.00695421 -0.00000230  0.00219164

 36  1    12    1  |1 1>-      -0.00000014  0.00000093 -0.00000181 -0.00001230 -0.00000190  0.00001019  0.00000101 -0.06178015
                               -0.00000117  0.00000437  0.00000115 -0.00000001  0.00000322 -0.00000330  0.00000246  0.05831373

 37  1     1    1  |0 0>        0.03039208 -0.00472526  0.03246160  0.13390300  0.00765912 -0.15908819 -0.00000041 -0.00000065
                                0.00006704 -0.00149377  0.02388060  0.39331325 -0.19636959  0.48593462  0.00000020  0.00000186

 38  1     2    1  |0 0>       -0.29108535  0.58847470  0.22904937 -0.02808244 -0.24396702 -0.07760044 -0.00000048 -0.00000317
                                0.07821835 -0.05122187  0.02470641  0.01178633  0.07657362 -0.00336757 -0.00000092 -0.00000134

 39  1     3    1  |0 0>        0.06490790  0.08382876 -0.27656139  0.03833843  0.03738619  0.02941965 -0.00000050  0.00000127
                                0.02141794 -0.23426817  0.57581980 -0.02232990  0.00739898  0.00981379 -0.00000002  0.00000022

 40  1     4    1  |0 0>       -0.02540647 -0.01540972  0.00953936  0.21758113 -0.03036429  0.08435373  0.00000059 -0.00000050
                               -0.05815762 -0.01144403  0.01090394  0.49524372  0.05287896 -0.41269450  0.00000013  0.00000214

 41  1     5    1  |0 0>        0.64002665  0.24752999  0.10466730  0.07817281  0.60085915  0.16869149  0.00000354  0.00000328
                               -0.06561835  0.04297105 -0.02072584 -0.00988842 -0.06423957  0.00282560  0.00000102 -0.00000064

 42  1     6    1  |0 0>        0.00000220 -0.00000125 -0.00000069 -0.00000102 -0.00000559 -0.00000191  0.89835737  0.00001032
                               -0.00000127 -0.00000186  0.00000128  0.00000038  0.00000255  0.00000072 -0.00000146  0.00000523

 43  1     7    1  |0 0>        0.00000021 -0.00000234 -0.00000069 -0.00000002 -0.00000072 -0.00000007 -0.00000244 -0.15625919
                               -0.00000012  0.00000045 -0.00000053 -0.00000389 -0.00000036  0.00000234  0.00000075 -0.16557501

 44  1     8    1  |0 0>        0.00000007 -0.00000018 -0.00000042 -0.00000122 -0.00000017  0.00000158  0.00000090  0.36414487
                               -0.00000009  0.00000004 -0.00000014 -0.00000202  0.00000134 -0.00000296  0.00000013 -0.08947814

 45  1     9    1  |0 0>       -0.00000036  0.00000076  0.00000032  0.00000005 -0.00000055 -0.00000026 -0.00000159  0.16893654
                                0.00000013 -0.00000027 -0.00000013 -0.00000029 -0.00000155 -0.00000016 -0.00001588  0.10515755

 46  1    10    1  |0 0>        0.00041871 -0.00120087  0.00074218  0.01693916 -0.00236466  0.00656814 -0.00000163  0.00000189
                                0.00095838 -0.00089090  0.00084866  0.03855598  0.00411626 -0.03212782 -0.00000028  0.00000543

 47  1    11    1  |0 0>       -0.01107900  0.01318404  0.00577311  0.00631784  0.04884339  0.01380437 -0.00000236 -0.00002027
                                0.00123863  0.00383320 -0.00184879 -0.00088160 -0.00572930  0.00025222 -0.00000131 -0.00001171

 48  1    12    1  |0 0>       -0.00050101 -0.00036788  0.00252720  0.01042299  0.00059595 -0.01238444  0.00000135 -0.00000029
                               -0.00000107 -0.00011636  0.00185907  0.03062108 -0.01528808  0.03783195 -0.00000014 -0.00000267

 49  1    13    1  |0 0>       -0.00106946  0.00652489 -0.02152869  0.00298413  0.00291092  0.00229029 -0.00000034 -0.00000124
                               -0.00035295 -0.01823904  0.04482319 -0.00173837  0.00057589  0.00076421 -0.00000029 -0.00000302

 50  1    14    1  |0 0>        0.00339290  0.04791677  0.01873112 -0.00138082 -0.01278655 -0.00429279 -0.00000064  0.00001401
                               -0.00113818 -0.00352099  0.00169742  0.00081059  0.00526421 -0.00023194  0.00000012  0.00000570

 51  1    15    1  |0 0>       -0.00000152  0.00000031  0.00000058  0.00000046  0.00000500  0.00000149  0.13820726 -0.00006562
                                0.00000011  0.00000039 -0.00000020 -0.00000020  0.00000023  0.00000055 -0.00000235 -0.00001676


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00000166 -0.00000504 -0.08519378  0.00003545  0.00001295  0.00002564  0.00642154 -0.00072458
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00009519  0.00018122  0.00001946  0.02029527  0.02056812  0.01255694 -0.00741200 -0.00060749
                               -0.00003776  0.00005904 -0.00000580  0.01859455 -0.00400474  0.00864974  0.00197376  0.00014388

  3  1     3    1  |1 1>+      -0.00014958  0.00010733  0.00000666  0.01794486 -0.01057303  0.00423768 -0.00311600  0.00224024
                               -0.00000229  0.00008490  0.00000035  0.00222887  0.02720022 -0.01529580  0.00181090 -0.00155602

  4  1     4    1  |1 1>+       0.09963404  0.01427230 -0.00004993  0.02409106 -0.00733708 -0.08670036  0.10925594  0.09601949
                               -0.19368346 -0.01929124 -0.00000389  0.05510465 -0.03751402 -0.04930740 -0.01008405 -0.09796765

  5  1     5    1  |1 1>+      -0.19059894 -0.35668508 -0.00002197 -0.08856174 -0.08972829 -0.05479312 -0.20593628 -0.01652073
                                0.07737302 -0.11608538 -0.00001890 -0.08113709  0.01745210 -0.03771981  0.05461046  0.00348087

  6  1     6    1  |1 1>+       0.00002430  0.00001809  0.00004311  0.00011878  0.00008670  0.00007557 -0.00362498  0.44037343
                                0.00000124 -0.00000571 -0.00000533  0.00010843  0.00013541  0.00003071 -0.02844294 -0.29338143

  7  1     7    1  |1 1>+       0.30403127 -0.22283007 -0.00006020 -0.07824775  0.04626245 -0.01838561 -0.08606782  0.06223742
                                0.00348511 -0.17111530 -0.00001250 -0.00963600 -0.11874039  0.06667112  0.05019410 -0.04303630

  8  1     8    1  |1 1>+       0.11851608  0.01697780  0.00006188  0.02875103 -0.00879390 -0.10307665 -0.09186576 -0.08070234
                               -0.23035618 -0.02295253  0.00000906  0.06569750 -0.04467034 -0.05866888  0.00847802  0.08235224

  9  1     9    1  |1 1>+       0.00116429  0.00220916  0.00030898  0.27221877  0.27584397  0.16837922 -0.21090832 -0.01716673
                               -0.00047792  0.00072078  0.00002273  0.24940016 -0.05370648  0.11598754  0.05607403  0.00375935

 10  1    10    1  |1 1>+      -0.00004130 -0.00001666 -0.48879384  0.00033448  0.00026001  0.00021868 -0.18266418  0.02060214
                               -0.00000537  0.00000769  0.00000087  0.00017798 -0.00006704  0.00013633 -0.00012369  0.00005109

 11  1    11    1  |1 1>+       0.00187101 -0.00135416 -0.00007018 -0.24060714  0.14173867 -0.05677562  0.08841399 -0.06377412
                                0.00001078 -0.00104322 -0.00000240 -0.02987556 -0.36455835  0.20490940 -0.05151853  0.04417135

 12  1    12    1  |1 1>+       0.05131833  0.00731263  0.00008914 -0.10248662  0.03124811  0.36808160  0.00000263 -0.00004377
                               -0.09976717 -0.00994069 -0.00001774 -0.23426514  0.15937196  0.20941626 -0.00000131  0.00001411

 13  1     1    1  |1 0>       -0.00000499  0.00008509  0.00000003  0.00222029  0.02719123 -0.01527613 -0.00181383  0.00155544
                                0.00015974 -0.00011195 -0.00000463 -0.01793794  0.01058102 -0.00422345 -0.00310668  0.00225533

 14  1     2    1  |1 0>        0.00013802  0.00000605 -0.00000128 -0.01701276  0.01157319  0.01520491 -0.00023762 -0.00231166
                                0.00006795  0.00000700 -0.00000373  0.00744233 -0.00227198 -0.02672212 -0.00257915 -0.00226252

 15  1     3    1  |1 0>        0.00000639  0.00001157  0.00000316  0.00000765  0.00001916  0.00000134 -0.00050992 -0.00529564
                               -0.00001120 -0.00000286 -0.08517454  0.00004602  0.00001441  0.00002945 -0.00315644 -0.00758839

 16  1     4    1  |1 0>        0.08797032 -0.13198978 -0.00001271 -0.09226985  0.01985485 -0.04290731  0.01907052  0.00117127
                                0.21669677  0.40554828  0.00003163  0.10071809  0.10205147  0.06231513  0.07202397  0.00571145

 17  1     5    1  |1 0>        0.26063686  0.02596236  0.00000028 -0.07420684  0.05049978  0.06636243  0.00658896  0.06400586
                                0.13408363  0.01920770 -0.00001661  0.03245041 -0.00989496 -0.11665759  0.07136721  0.06273891

 18  1     6    1  |1 0>        0.00348570 -0.17110416 -0.00000515 -0.00975030 -0.11863792  0.06667857 -0.05018547  0.04304512
                               -0.30404769  0.22281855  0.00007213  0.07836020 -0.04608304  0.01852597 -0.08608235  0.06219594

 19  1     7    1  |1 0>       -0.00000691 -0.00000195  0.00000880 -0.00019685  0.00006155 -0.00012141  0.01439567  0.14661668
                                0.00000592 -0.00000505  0.00002849  0.00028738  0.00023706  0.00015270 -0.26862549  0.25026212

 20  1     8    1  |1 0>       -0.01560150  0.02341471 -0.00001902  0.01641398 -0.00354703  0.00766440  0.10754738  0.00696121
                               -0.03843078 -0.07194725 -0.00005468 -0.01793007 -0.01818645 -0.01110173  0.40526103  0.03267081

 21  1     9    1  |1 0>        0.00158600  0.00016284 -0.00002039 -0.22814987  0.15519711  0.20391479 -0.00676220 -0.06567686
                                0.00082738  0.00014832 -0.00003249  0.09981473 -0.03045483 -0.35837986 -0.07327117 -0.06433672

 22  1    10    1  |1 0>        0.00001011 -0.00105547 -0.00001056 -0.02975610 -0.36466559  0.20489840  0.05152833 -0.04420101
                               -0.00184889  0.00137099  0.00005839  0.24049823 -0.14192267  0.05663468  0.08830973 -0.06396805

 23  1    11    1  |1 0>        0.00001105  0.00000375 -0.00000313 -0.00008944 -0.00014092 -0.00004662  0.01454632  0.15061418
                               -0.00002243  0.00000713 -0.48878680  0.00015970  0.00010689  0.00014221  0.08938383  0.21576446

 24  1    12    1  |1 0>       -0.02961316  0.04442915 -0.00003074 -0.25612230  0.05515455 -0.11910161 -0.00000179 -0.00013755
                               -0.07294985 -0.13651232  0.00028712  0.27954479  0.28326244  0.17290359  0.00040384 -0.00014765

 25  1     1    1  |1 1>-      -0.00004133  0.00005831 -0.00000600  0.01859691 -0.00400549  0.00864357 -0.00197054 -0.00011638
                               -0.00009798 -0.00017991 -0.00001858 -0.02029610 -0.02056401 -0.01254883 -0.00747288 -0.00058892

 26  1     2    1  |1 1>-       0.00000003 -0.00000195  0.00000009 -0.00000919  0.00000671 -0.00000633  0.00051316  0.00530020
                               -0.00000726 -0.00000303 -0.08519105  0.00004621  0.00002479  0.00003081 -0.00329294  0.00832444

 27  1     3    1  |1 1>-      -0.00012598 -0.00001223  0.00000128  0.01701178 -0.01157552 -0.01521323 -0.00023971 -0.00231241
                               -0.00006359 -0.00001272  0.00000720 -0.00744523  0.00226179  0.02674464 -0.00257614 -0.00227127

 28  1     4    1  |1 1>-       0.00137223 -0.06737960  0.00000373 -0.00393303 -0.04664767  0.02626512 -0.09435764  0.08092119
                               -0.11975968  0.08774061  0.00003749  0.03094856 -0.01801233  0.00739906 -0.16183584  0.11696084

 29  1     5    1  |1 1>-      -0.00000729 -0.00000710 -0.00000151 -0.00009614  0.00019530 -0.00008845 -0.01404690 -0.14676315
                               -0.00001941 -0.00002814 -0.00000920  0.00017701  0.00015348  0.00007851 -0.26501148 -0.19010786

 30  1     6    1  |1 1>-      -0.07737531  0.11609410 -0.00000137  0.08119235 -0.01748613  0.03777266  0.05461631  0.00358342
                               -0.19059206 -0.35670584 -0.00006162 -0.08862969 -0.08981739 -0.05483402  0.20568328  0.01665275

 31  1     7    1  |1 1>-      -0.26064049 -0.02596984  0.00000671  0.07430688 -0.05053314 -0.06637364  0.00658860  0.06397762
                               -0.13409369 -0.01920813 -0.00005312 -0.03251663  0.00993917  0.11663089  0.07137345  0.06269393

 32  1     8    1  |1 1>-      -0.00378228  0.18573740  0.00001137  0.01048158  0.12886546 -0.07236998 -0.03424127  0.02935658
                                0.33001773 -0.24186969 -0.00006671 -0.08495628  0.05017754 -0.01998701 -0.05870648  0.04246377

 33  1     9    1  |1 1>-      -0.00001234 -0.00000007  0.00000544 -0.00003188  0.00000380  0.00000080  0.01465717  0.15056896
                                0.00004841  0.00002258  0.48882189 -0.00003180 -0.00000024 -0.00005097 -0.09310995  0.23631943

 34  1    10    1  |1 1>-       0.00047408 -0.00071154 -0.00004286 -0.24935396  0.05368711 -0.11593450  0.05605870  0.00347988
                                0.00116766  0.00218202  0.00023593  0.27214961  0.27575739  0.16832420  0.21166882  0.01687219

 35  1    11    1  |1 1>-       0.00158848  0.00015524 -0.00001218 -0.22804126  0.15515530  0.20389671  0.00676354  0.06571496
                                0.00081572  0.00014393 -0.00010408  0.09975494 -0.03040989 -0.35840815  0.07326478  0.06443617

 36  1    12    1  |1 1>-       0.00134570 -0.06548648  0.00000395  0.03062910  0.37446786 -0.21045047 -0.00000382  0.00001535
                               -0.11636915  0.08528139 -0.00005667 -0.24705969  0.14566107 -0.05823927  0.00005681  0.00009737

 37  1     1    1  |0 0>       -0.00000042 -0.00000186 -0.00001027 -0.00001030  0.00000336  0.00000286  0.01865294  0.01638894
                               -0.00000302  0.00000282 -0.00000121 -0.00001409  0.00000524  0.00000438 -0.00172127 -0.01672301

 38  1     2    1  |0 0>        0.00000287 -0.00000065  0.00000726  0.00003461  0.00002551  0.00001858 -0.02623433  0.04699844
                                0.00000015 -0.00000247 -0.00000170  0.00002284  0.00000146  0.00001171 -0.00286601 -0.02936164

 39  1     3    1  |0 0>        0.00000010  0.00000206  0.00000517  0.00000962  0.00001123  0.00000391 -0.05378077 -0.00433515
                               -0.00000089  0.00000053 -0.00000314  0.00000810 -0.00000464  0.00000591  0.01427287  0.00092156

 40  1     4    1  |0 0>        0.00000550  0.00000082 -0.00000125 -0.00001484 -0.00002365 -0.00001586  0.02249471 -0.01625920
                                0.00000082  0.00000165  0.00000115 -0.00001476  0.00001704 -0.00000477 -0.01311703  0.01124766

 41  1     5    1  |0 0>       -0.00000056 -0.00000488 -0.00000889  0.00001626  0.00001730  0.00000709 -0.03053804 -0.03350758
                                0.00000308  0.00000498  0.00000131  0.00001205 -0.00002278  0.00001131  0.00236807  0.02464900

 42  1     6    1  |0 0>       -0.00000700 -0.00000661 -0.07695401  0.00005425  0.00000925  0.00003158 -0.00000693  0.00000472
                               -0.00000292 -0.00000897 -0.00000347 -0.00001876 -0.00002661 -0.00001171 -0.00000139 -0.00000391

 43  1     7    1  |0 0>        0.31178087 -0.22849698 -0.00000469  0.16521452 -0.09740662  0.03894892 -0.00004657 -0.00007753
                                0.00358415 -0.17546461 -0.00000302  0.02049260  0.25041906 -0.14076021  0.00000011  0.00001974

 44  1     8    1  |0 0>        0.13750027  0.01966748  0.00008976 -0.06853214  0.02088747  0.24617002  0.00000030 -0.00002529
                               -0.26728231 -0.02662755 -0.00001287 -0.15664969  0.10657305  0.14005196 -0.00000083  0.00000318

 45  1     9    1  |0 0>       -0.19544770 -0.36577104  0.00022899  0.18694409  0.18943296  0.11561560  0.00027144 -0.00008181
                                0.07934216 -0.11904279  0.00002393  0.17128812 -0.03689346  0.07964855  0.00000138  0.00008752

 46  1    10    1  |0 0>       -0.00001443 -0.00001327  0.00001105  0.00010599  0.00017006  0.00013115 -0.16507382  0.11931817
                               -0.00000001 -0.00000963 -0.00000676  0.00011199 -0.00009572 -0.00000930  0.09625142 -0.08254438

 47  1    11    1  |0 0>        0.00002027  0.00002302  0.00001756 -0.00008910 -0.00008122 -0.00003100  0.19732115  0.28841724
                               -0.00000333 -0.00000577 -0.00000090 -0.00003038  0.00019024 -0.00005315 -0.01995357 -0.20721219

 48  1    12    1  |0 0>        0.00000995  0.00000151  0.00006669  0.00005851 -0.00004201  0.00002641 -0.13687392 -0.12027783
                               -0.00000213 -0.00000505  0.00000733  0.00009680 -0.00003368 -0.00001404  0.01263388  0.12272462

 49  1    13    1  |0 0>        0.00000366 -0.00001763 -0.00004773 -0.00006233 -0.00008079 -0.00004596  0.39469747  0.03180211
                                0.00000060 -0.00000577  0.00001836 -0.00004557  0.00002376 -0.00005004 -0.10473558 -0.00676847

 50  1    14    1  |0 0>       -0.00000916 -0.00000265 -0.00003140 -0.00026112 -0.00021583 -0.00014351  0.21989595 -0.31022551
                               -0.00000548 -0.00000183  0.00000608 -0.00018701  0.00001901 -0.00010779  0.01859491  0.19027800

 51  1    15    1  |0 0>        0.00003610  0.00000947  0.50549848 -0.00018110 -0.00013327 -0.00014442  0.00006224 -0.00001677
                                0.00000905 -0.00000298 -0.00000413 -0.00009141 -0.00003504 -0.00007062  0.00000449 -0.00000301


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00447731  0.00248763 -0.00888975 -0.00000147  0.00000278  0.00000922  0.00909717 -0.01899128
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00336988 -0.00375781 -0.00470698 -0.00431633  0.00377132  0.03564545 -0.01341301 -0.00310128
                                0.00034261  0.00092777  0.00150792 -0.00468499  0.00092738  0.01658274  0.00391193  0.00256032

  3  1     3    1  |1 1>+      -0.00379385  0.00708805  0.00146133  0.02214867 -0.00462870  0.00584794  0.00459133 -0.00159590
                                0.00167049 -0.00445077 -0.00065009  0.03138676  0.00793863  0.00265069  0.00042257 -0.00361064

  4  1     4    1  |1 1>+      -0.30668805 -0.17678975  0.17655850  0.02429776 -0.15165494  0.01557557 -0.07235234 -0.18315341
                               -0.09049710 -0.00102914  0.04604740 -0.02937338 -0.05195935  0.00202673  0.05730761  0.02247468

  5  1     5    1  |1 1>+      -0.09291337 -0.10367989 -0.12966910  0.02407168 -0.02102257 -0.19849199 -0.18632756 -0.04314811
                                0.00953974  0.02559653  0.04184346  0.02612809 -0.00518465 -0.09234199  0.05439685  0.03547788

  6  1     6    1  |1 1>+       0.16257431 -0.04155442 -0.13207292  0.00002342  0.00003579  0.00023122 -0.25766346 -0.14989924
                                0.05530607  0.08876876  0.00043526  0.00005025  0.00004473  0.00008455  0.13523513  0.02396708

  7  1     7    1  |1 1>+      -0.10479935  0.19606870  0.04017774 -0.12331262  0.02568823 -0.03265995  0.06361090 -0.02227689
                                0.04594478 -0.12333344 -0.01787536 -0.17473188 -0.04416423 -0.01481123  0.00588321 -0.05003532

  8  1     8    1  |1 1>+       0.25784168  0.14864884 -0.14844934  0.02886357 -0.18033182  0.01845705  0.06068185  0.15399740
                                0.07607432  0.00089673 -0.03871936 -0.03502299 -0.06185640  0.00240234 -0.04817564 -0.01889621

  9  1     9    1  |1 1>+      -0.09551912 -0.10653800 -0.13335372  0.04639135 -0.04051320 -0.38308774  0.25883280  0.05998903
                                0.00971186  0.02630476  0.04286546  0.05037242 -0.00993620 -0.17821745 -0.07551178 -0.04934370

 10  1    10    1  |1 1>+       0.12722611 -0.07047105  0.25214387 -0.00003093  0.00005063  0.00011127  0.17559496 -0.36625965
                                0.00000018 -0.00015758 -0.00011486 -0.00000606  0.00000129  0.00001661 -0.00003150 -0.00002397

 11  1    11    1  |1 1>+       0.10765586 -0.20130313 -0.04136427  0.23810234 -0.04975047  0.06282044  0.08851348 -0.03085031
                               -0.04723164  0.12660469  0.01836686  0.33737777  0.08528794  0.02848637  0.00816108 -0.06960135

 12  1    12    1  |1 1>+       0.00005036 -0.00001120 -0.00000133 -0.02266013  0.14124266 -0.01444715  0.00012474 -0.00000606
                                0.00004807 -0.00007471  0.00000235  0.02740568  0.04841865 -0.00186598 -0.00002636 -0.00001033

 13  1     1    1  |1 0>       -0.00165674  0.00445622  0.00064419  0.03138738  0.00792680  0.00265878 -0.00042449  0.00360486
                               -0.00378147  0.00708448  0.00144700 -0.02215102  0.00462022 -0.00586273  0.00458730 -0.00160726

 14  1     2    1  |1 0>       -0.00213131 -0.00003252  0.00108648  0.00711576  0.01256877 -0.00048716  0.00270046  0.00105712
                                0.00723385  0.00417273 -0.00416614  0.00587619 -0.03665667  0.00375301  0.00340528  0.00862380

 15  1     3    1  |1 0>        0.00099812  0.00160617  0.00000850  0.00000171  0.00000089 -0.00000246  0.00487763  0.00086555
                               -0.00069232 -0.00048687  0.00681302  0.00000095 -0.00000256 -0.00001794  0.00474118  0.01490008

 16  1     4    1  |1 0>        0.00334782  0.00894887  0.01462818  0.02964833 -0.00589524 -0.10498571  0.01897118  0.01240373
                                0.03241859  0.03620181  0.04526280 -0.02731162  0.02391686  0.22566311  0.06484412  0.01529990

 17  1     5    1  |1 0>        0.05912404  0.00066094 -0.03007892  0.03955284  0.06991415 -0.00274818 -0.03736362 -0.01467852
                               -0.20034707 -0.11549208  0.11534299  0.03273617 -0.20411385  0.02096518 -0.04711099 -0.11960793

 18  1     6    1  |1 0>       -0.04597634  0.12332535  0.01787883 -0.17468860 -0.04416682 -0.01478517 -0.00592218  0.05004730
                               -0.10480903  0.19608812  0.04023066  0.12328797 -0.02575127  0.03261385  0.06362498 -0.02223275

 19  1     7    1  |1 0>       -0.02763815 -0.04415544 -0.00005382  0.00001728 -0.00001577 -0.00005553 -0.06772909 -0.01199141
                                0.26712818 -0.12376329  0.30245056  0.00002242 -0.00005915  0.00007539 -0.31832703  0.32002096

 20  1     8    1  |1 0>        0.01874446  0.05039557  0.08236066 -0.00530887  0.00097495  0.01856290  0.10691086  0.06984996
                                0.18305353  0.20421202  0.25545106  0.00480966 -0.00421080 -0.03993120  0.36645110  0.08523668

 21  1     9    1  |1 0>       -0.06063665 -0.00077842  0.03088426 -0.07650072 -0.13514475  0.00523713 -0.05204114 -0.02039840
                                0.20561543  0.11857187 -0.11840734 -0.06311273  0.39405703 -0.04031691 -0.06565261 -0.16633206

 22  1    10    1  |1 0>        0.04713399 -0.12661453 -0.01833741  0.33740920  0.08524443  0.02858624 -0.00816687  0.06958335
                                0.10752706 -0.20128288 -0.04118469 -0.23811542  0.04966311 -0.06305891  0.08846166 -0.03098223

 23  1    11    1  |1 0>       -0.02840424 -0.04564186 -0.00027698  0.00000796  0.00002771  0.00008663  0.09407741  0.01665369
                                0.01989541  0.01392650 -0.19393721  0.00000753 -0.00002966 -0.00028695  0.09146387  0.28740929

 24  1    12    1  |1 0>        0.00006782 -0.00004740  0.00007171  0.01806154 -0.00357906 -0.06388093 -0.00002282  0.00001455
                               -0.00010076 -0.00009124 -0.00022066 -0.01663334  0.01454716  0.13731470 -0.00005702  0.00001299

 25  1     1    1  |1 1>-      -0.00035235 -0.00092067 -0.00152467 -0.00468705  0.00092988  0.01658692 -0.00391466 -0.00255553
                               -0.00335404 -0.00374367 -0.00467523  0.00431999 -0.00377297 -0.03565291 -0.01341727 -0.00312889

 26  1     2    1  |1 1>-      -0.00100281 -0.00160358 -0.00000861 -0.00000222 -0.00000136  0.00000155 -0.00487661 -0.00086353
                                0.00518522 -0.00199196  0.00204944  0.00000105  0.00000026  0.00000338 -0.01383446  0.00408578

 27  1     3    1  |1 1>-      -0.00214169 -0.00001580  0.00108756 -0.00710522 -0.01256680  0.00048996  0.00269702  0.00105985
                                0.00724409  0.00416696 -0.00416798 -0.00587075  0.03666289 -0.00375679  0.00340572  0.00862884

 28  1     4    1  |1 1>-      -0.08641617  0.23186643  0.03361044 -0.06880109 -0.01740029 -0.00570871 -0.01098697  0.09409500
                               -0.19704588  0.36864212  0.07559170  0.04856706 -0.01019947  0.01258235  0.11967942 -0.04175359

 29  1     5    1  |1 1>-       0.02766375  0.04461253  0.00037710 -0.00003018  0.00002260  0.00013012  0.06770256  0.01196961
                                0.10455518 -0.08221168  0.43451839  0.00003467 -0.00004165 -0.00035258 -0.06040562  0.47011155

 30  1     6    1  |1 1>-       0.00950162  0.02558448  0.04180839 -0.02602306  0.00515104  0.09227264  0.05433717  0.03550074
                                0.09299235  0.10371384  0.12975705  0.02402595 -0.02093256 -0.19833388  0.18609441  0.04305807

 31  1     7    1  |1 1>-       0.05910022  0.00070331 -0.03008447 -0.03962040 -0.07001665  0.00270073 -0.03741529 -0.01466613
                               -0.20031894 -0.11549200  0.11533517 -0.03265547  0.20407226 -0.02085152 -0.04734511 -0.11956804

 32  1     8    1  |1 1>-      -0.03133437  0.08413473  0.01219426  0.18965419  0.04791939  0.01604740 -0.00404289  0.03413276
                               -0.07148628  0.13374584  0.02739867 -0.13384133  0.02796095 -0.03540630  0.04334381 -0.01516998

 33  1     9    1  |1 1>-      -0.02837844 -0.04548682 -0.00017195  0.00001224  0.00002579  0.00007388  0.09411565  0.01668067
                                0.14701304 -0.05657922  0.05834058 -0.00002389  0.00002337 -0.00018448  0.26706615 -0.07884115

 34  1    10    1  |1 1>-       0.00983885  0.02623521  0.04300799 -0.05035480  0.01003053  0.17830884 -0.07557188 -0.04935677
                                0.09532027  0.10637155  0.13295933  0.04643268 -0.04058888 -0.38326429 -0.25887073 -0.06029754

 35  1    11    1  |1 1>-       0.06073130  0.00062369 -0.03087828 -0.07639011 -0.13505558  0.00526405  0.05202346  0.02042467
                               -0.20570937 -0.11855187  0.11840776 -0.06316286  0.39410932 -0.04041708  0.06566004  0.16636675

 36  1    12    1  |1 1>-       0.00004679  0.00000660 -0.00001395  0.12095293  0.03054184  0.01022710  0.00002202  0.00000578
                                0.00006887 -0.00000435 -0.00008324 -0.08535289  0.01781075 -0.02255106  0.00006959 -0.00007558

 37  1     1    1  |0 0>       -0.05235445 -0.03018313  0.03014119  0.00000626 -0.00000328  0.00000863 -0.01162813 -0.02945981
                               -0.01544770 -0.00017853  0.00786118  0.00000721  0.00000792  0.00000218  0.00921477  0.00361478

 38  1     2    1  |0 0>        0.03429293 -0.01414488  0.02250892  0.00000389 -0.00000355  0.00001783 -0.04162454  0.02195538
                                0.00553360  0.00886203  0.00002615  0.00000190  0.00000372  0.00000936  0.01276638  0.00226234

 39  1     3    1  |0 0>       -0.02428984 -0.02709748 -0.03389665  0.00000428 -0.00000670 -0.00001470 -0.04583831 -0.01064889
                                0.00248596  0.00668834  0.01092745 -0.00000054 -0.00000774 -0.00000777  0.01337777  0.00873773

 40  1     4    1  |0 0>        0.02738893 -0.05124067 -0.01050512  0.00000047  0.00000641  0.00002187 -0.01567083  0.00547433
                               -0.01200948  0.03223158  0.00467120  0.00000287 -0.00000021  0.00000930 -0.00144555  0.01232475

 41  1     5    1  |0 0>        0.00782720 -0.00841383  0.05368376  0.00000223 -0.00000664 -0.00003829 -0.00022925  0.05490208
                               -0.00464604 -0.00748255 -0.00005615 -0.00000036 -0.00000377 -0.00001449 -0.01070613 -0.00189470

 42  1     6    1  |0 0>        0.00000277  0.00000381 -0.00000960  0.00000015  0.00000023 -0.00000196  0.00000147 -0.00000136
                                0.00000139 -0.00000176  0.00000090  0.00000022  0.00000017  0.00000015 -0.00000055 -0.00000073

 43  1     7    1  |0 0>       -0.00006176 -0.00000183  0.00006265  0.36612766 -0.07644059  0.09679562  0.00012911  0.00003150
                                0.00003177  0.00000092 -0.00001292  0.51878065  0.13113717  0.04388273 -0.00003162 -0.00002373

 44  1     8    1  |0 0>        0.00003373 -0.00000990  0.00000271 -0.09704659  0.60598554 -0.06210076 -0.00014599  0.00004073
                                0.00003645 -0.00005562  0.00000064  0.11754313  0.20774860 -0.00809477  0.00005099 -0.00001009

 45  1     9    1  |0 0>       -0.00006118 -0.00007207 -0.00017003 -0.07137183  0.06234337  0.58922839  0.00009364  0.00027579
                               -0.00004718  0.00004873 -0.00005443 -0.07743304  0.01535160  0.27412507 -0.00007970  0.00000976

 46  1    10    1  |0 0>       -0.20099673  0.37604227  0.07710437  0.00000036  0.00004206  0.00017235 -0.10666654  0.03724093
                                0.08814451 -0.23652340 -0.03428556  0.00001821  0.00001219  0.00008098 -0.00983721  0.08388205

 47  1    11    1  |0 0>       -0.02442484  0.04781173 -0.36931211  0.00000856 -0.00005387 -0.00027819  0.03506077  0.35118664
                                0.03906206  0.06285138  0.00042809 -0.00000976 -0.00003495 -0.00012035 -0.08348485 -0.01479087

 48  1    12    1  |0 0>        0.38420581  0.22148904 -0.22120108  0.00004093 -0.00001793  0.00005374 -0.07915816 -0.20051269
                                0.11336608  0.00130877 -0.05769160  0.00003516  0.00004811  0.00001756  0.06272337  0.02460309

 49  1    13    1  |0 0>        0.17826228  0.19887386  0.24876921  0.00004285 -0.00004028 -0.00008754 -0.31190923 -0.07243172
                               -0.01826021 -0.04907865 -0.08021490  0.00001810 -0.00003991 -0.00004943  0.09102602  0.05944161

 50  1    14    1  |0 0>       -0.25700187  0.11092869 -0.21475994  0.00002385 -0.00001265  0.00002182 -0.28100061  0.19650010
                               -0.03587161 -0.05740510 -0.00015055  0.00001884  0.00002450  0.00002455  0.07668630  0.01357804

 51  1    15    1  |0 0>       -0.00004012 -0.00001204  0.00004795  0.00000049 -0.00000550  0.00002370 -0.00001789 -0.00001341
                               -0.00000944  0.00000047  0.00000391 -0.00000421 -0.00000176  0.00000717  0.00001405  0.00000757


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00757950 -0.00644470 -0.00111347  0.00000435 -0.00000774  0.00000210 -0.00000246  0.00000669
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00035610 -0.00838184 -0.00553015  0.00000544  0.00000033 -0.00000237 -0.00000389  0.00000336
                               -0.00221516  0.00221042 -0.00926712  0.00000094 -0.00000299 -0.00000026  0.00000050  0.00000095

  3  1     3    1  |1 1>+       0.01600295 -0.00768156  0.00030437  0.00000272  0.00000699  0.00000249 -0.00000773 -0.00000013
                                0.00472935  0.00577029 -0.00056252 -0.00000154 -0.00000196 -0.00000192 -0.00000014 -0.00000344

  4  1     4    1  |1 1>+       0.14671383  0.28152693 -0.09534294 -0.15017643 -0.35116036 -0.09189154 -0.15144661  0.08798677
                                0.11939154 -0.11489452 -0.06269525  0.14039487  0.03553896  0.15524743  0.26688763 -0.07625993

  5  1     5    1  |1 1>+      -0.00504778 -0.11612732 -0.07640287  0.37808029 -0.27739107 -0.02930434  0.09893949  0.05008984
                               -0.03077087  0.03061141 -0.12811942  0.04536680 -0.19241285  0.05801677 -0.18822306 -0.11299595

  6  1     6    1  |1 1>+       0.03728215 -0.01713173  0.29359491  0.33208170  0.17751739 -0.13484798 -0.06878835 -0.11660557
                                0.00531599  0.05544772  0.33916123 -0.10217472 -0.14292071  0.12163358  0.05209691 -0.10484019

  7  1     7    1  |1 1>+       0.22193388 -0.10650653  0.00412571 -0.03172750 -0.14130132 -0.34278249  0.35259785 -0.33465453
                                0.06560171  0.07999499 -0.00787829  0.02549904  0.05180917  0.19032197  0.08996570  0.10774985

  8  1     8    1  |1 1>+      -0.12331310 -0.23668344  0.08025941  0.14452711  0.01640027  0.16849161 -0.04803509  0.11943006
                               -0.10036720  0.09666022  0.05280801 -0.05219921  0.01423464  0.04212283  0.51637504  0.22215635

  9  1     9    1  |1 1>+       0.00702914  0.16162337  0.10657050  0.00002543 -0.00002619 -0.00000976  0.00001620 -0.00000693
                                0.04277779 -0.04256446  0.17853677 -0.00002052 -0.00000519 -0.00000472 -0.00000780  0.00000556

 10  1    10    1  |1 1>+      -0.14624473 -0.12428568 -0.02153194  0.00007952 -0.00002770  0.00002409  0.00002965  0.00002512
                               -0.00000730 -0.00000445  0.00000449 -0.00003973 -0.00002897  0.00000469 -0.00001769 -0.00000854

 11  1    11    1  |1 1>+       0.30862711 -0.14810797  0.00584966  0.00000826  0.00010409  0.00002328 -0.00005382 -0.00001667
                                0.09120619  0.11120437 -0.01085916 -0.00001786  0.00000344 -0.00002516  0.00002277 -0.00000466

 12  1    12    1  |1 1>+      -0.00001814  0.00004418  0.00003940 -0.00018333  0.00005742  0.00023346  0.00001838 -0.00007868
                               -0.00004255 -0.00000906  0.00006005  0.00004294 -0.00002323 -0.00003010 -0.00010417 -0.00026746

 13  1     1    1  |1 0>       -0.00472925 -0.00576003  0.00056160 -0.00000205  0.00000185 -0.00000157  0.00000412  0.00000237
                                0.01600176 -0.00767378  0.00030095 -0.00000379 -0.00000663  0.00000144  0.00000171 -0.00000065

 14  1     2    1  |1 0>        0.00562944 -0.00541232 -0.00295574  0.00000092 -0.00000219  0.00000061 -0.00000274 -0.00000751
                               -0.00690842 -0.01325797  0.00449569  0.00000271 -0.00000201 -0.00000222  0.00000220  0.00000374

 15  1     3    1  |1 0>        0.00019217  0.00199939  0.01222631 -0.00000301  0.00000381 -0.00000035  0.00000015  0.00000266
                                0.00244475  0.00383816 -0.01002429 -0.00000381 -0.00000398  0.00000130  0.00000079  0.00000239

 16  1     4    1  |1 0>       -0.01076354  0.01062292 -0.04471700 -0.07119295  0.21120520 -0.09805101  0.14652432  0.37835352
                                0.00193160  0.04055663  0.02667199  0.22575395 -0.21224824  0.30435687  0.11812386 -0.15263961

 17  1     5    1  |1 0>       -0.07796885  0.07514531  0.04113652  0.17016476  0.03764910  0.16793595  0.19931304 -0.13145541
                                0.09580325  0.18386217 -0.06244113  0.19998800  0.40262520  0.13837997  0.16242809 -0.07598386

 18  1     6    1  |1 0>       -0.06555523 -0.07997442  0.00780885  0.11745425 -0.07388836 -0.15428660 -0.01613428  0.07444490
                                0.22193282 -0.10654649  0.00413120 -0.25509215  0.31979013 -0.24410010  0.06491572 -0.23276057

 19  1     7    1  |1 0>       -0.00270250 -0.02772019 -0.16957225 -0.10211334 -0.14300788  0.12163099  0.05210354 -0.10486906
                                0.17647573  0.12556693  0.16998457 -0.33217684 -0.17726471  0.13483834  0.06881444  0.11646384

 20  1     8    1  |1 0>       -0.06061012  0.06019543 -0.25271243  0.00856869  0.04012881  0.01680258  0.08970316 -0.19029951
                                0.01018398  0.22877676  0.15087909  0.23799900 -0.13548469 -0.28906246  0.01271563  0.18498161

 21  1     9    1  |1 0>       -0.10849509  0.10437313  0.05706387 -0.00000931  0.00001721 -0.00000290  0.00003112  0.00006863
                                0.13327447  0.25571632 -0.08673422 -0.00002694  0.00002638  0.00003109  0.00000121 -0.00004418

 22  1    10    1  |1 0>       -0.09124321 -0.11115844  0.01087621 -0.00001632 -0.00000038  0.00000037  0.00001761 -0.00001041
                                0.30860600 -0.14800358  0.00582056 -0.00004225 -0.00004922  0.00001757  0.00003041 -0.00000310

 23  1    11    1  |1 0>        0.00371139  0.03854813  0.23576738 -0.00002743 -0.00001200  0.00000399 -0.00002393 -0.00001102
                                0.04715202  0.07402156 -0.19330957 -0.00005995  0.00001138 -0.00001663 -0.00002719  0.00000530

 24  1    12    1  |1 0>        0.00000406  0.00000405 -0.00001927 -0.00002239 -0.00002900  0.00001444 -0.00011362  0.00004151
                                0.00001321  0.00002015 -0.00000402 -0.00015195  0.00008337  0.00004817  0.00003759 -0.00004984

 25  1     1    1  |1 1>-       0.00221919 -0.00220120  0.00923266  0.00000137  0.00000387 -0.00000058  0.00000864  0.00000043
                               -0.00037781 -0.00836993 -0.00551375  0.00000636 -0.00000136 -0.00000222 -0.00000314  0.00000204

 26  1     2    1  |1 1>-      -0.00019303 -0.00200012 -0.01223595  0.00000594 -0.00000267  0.00000129 -0.00000045 -0.00000337
                                0.00513441  0.00260558  0.01114581 -0.00000183  0.00001562 -0.00000093  0.00000149 -0.00000869

 27  1     3    1  |1 1>-       0.00561938 -0.00541578 -0.00295723 -0.00000209 -0.00000281  0.00000489  0.00000488  0.00000420
                               -0.00690971 -0.01326083  0.00449357 -0.00000864  0.00000200  0.00001182  0.00000516 -0.00000256

 28  1     4    1  |1 1>-      -0.12335934 -0.15032015  0.01469085 -0.08548116  0.06559172  0.15133408  0.02807175 -0.03812246
                                0.41722339 -0.20014368  0.00794823  0.20072686 -0.22005378  0.24677219 -0.11130180  0.23654616

 29  1     5    1  |1 1>-       0.00268346  0.02771149  0.16951498  0.10209259  0.14293497 -0.12160412 -0.05210909  0.10485140
                                0.13900842  0.14255175 -0.12349625  0.33197135  0.17742647 -0.13486701 -0.06884496 -0.11658696

 30  1     6    1  |1 1>-      -0.03074998  0.03063645 -0.12835107 -0.03729797  0.03959223 -0.05684674 -0.03974753  0.35557422
                                0.00495760  0.11626105  0.07653570 -0.16952814  0.06344977  0.43366348  0.03282990 -0.26097929

 31  1     7    1  |1 1>-      -0.07806643  0.07503005  0.04108422  0.11196765 -0.00136403  0.01535018 -0.45540035 -0.27121688
                                0.09587053  0.18385699 -0.06241831  0.21614295  0.15614107  0.21895448  0.00744991  0.09495361

 32  1     8    1  |1 1>-      -0.04473831 -0.05447801  0.00519835  0.10071955  0.00345902  0.08806657  0.07820390  0.15402992
                                0.15139842 -0.07254981  0.00292979 -0.13286083  0.34499734  0.18044037 -0.30543186  0.17972834

 33  1     9    1  |1 1>-       0.00371861  0.03855235  0.23575049  0.00002229  0.00001699  0.00000113 -0.00000723 -0.00000895
                               -0.09909382 -0.05026089 -0.21483711  0.00001751  0.00000035  0.00000479  0.00000441  0.00002701

 34  1    10    1  |1 1>-       0.04281373 -0.04248224  0.17818452 -0.00000014 -0.00001937 -0.00001340  0.00005398 -0.00000403
                               -0.00727658 -0.16147342 -0.10631536 -0.00004405  0.00001849  0.00000642 -0.00001110 -0.00000085

 35  1    11    1  |1 1>-       0.10844459 -0.10443809 -0.05707407 -0.00002932 -0.00002679  0.00003094  0.00004109  0.00006038
                               -0.13326443 -0.25570456  0.08670149 -0.00010381 -0.00000545  0.00009912  0.00002985 -0.00002920

 36  1    12    1  |1 1>-      -0.00001550 -0.00000199  0.00010588 -0.00009157  0.00000513  0.00002034  0.00004952 -0.00002529
                               -0.00004830 -0.00000946 -0.00008764 -0.00018434 -0.00026888  0.00001379  0.00013388 -0.00002708

 37  1     1    1  |0 0>        0.02360045  0.04528495 -0.01535610  0.00000816  0.00000413 -0.00000681 -0.00000385 -0.00000218
                                0.01920838 -0.01848917 -0.01010496 -0.00000130 -0.00000703  0.00000491  0.00000006  0.00000008

 38  1     2    1  |0 0>        0.01793886  0.01063915  0.02981407 -0.00000790  0.00001129 -0.00000075  0.00000011 -0.00000746
                                0.00050460  0.00523029  0.03199044 -0.00000065  0.00000542  0.00000005 -0.00000046  0.00000074

 39  1     3    1  |0 0>       -0.00126365 -0.02861099 -0.01885310 -0.00000090  0.00000442  0.00000002 -0.00000582  0.00000280
                               -0.00757903  0.00753117 -0.03159189  0.00000309  0.00000068  0.00000078 -0.00000465 -0.00000086

 40  1     4    1  |0 0>       -0.05465323  0.02622002 -0.00103407  0.00000297 -0.00000496 -0.00000546  0.00000270  0.00000333
                               -0.01615543 -0.01969056  0.00192377 -0.00000152 -0.00000135  0.00000004  0.00000003  0.00000210

 41  1     5    1  |0 0>        0.01422741  0.01595459 -0.02069865 -0.00001133  0.00000075 -0.00000232 -0.00000479 -0.00000201
                               -0.00042159 -0.00438703 -0.02683494  0.00000473  0.00000257 -0.00000216  0.00000170  0.00000096

 42  1     6    1  |0 0>       -0.00000015 -0.00000019  0.00000262 -0.00000046  0.00000173  0.00000066  0.00000001  0.00000001
                                0.00000027  0.00000023  0.00000338 -0.00000122 -0.00000035 -0.00000034  0.00000012  0.00000043

 43  1     7    1  |0 0>       -0.00003861 -0.00011121 -0.00007915 -0.00015828 -0.00016068  0.00001764  0.00007130 -0.00003999
                               -0.00001563  0.00004711 -0.00011440  0.00007160 -0.00000212 -0.00004574 -0.00001984  0.00001829

 44  1     8    1  |0 0>        0.00003204 -0.00004566 -0.00007611  0.00009044 -0.00004504 -0.00014242  0.00000754  0.00002781
                                0.00009811  0.00006897 -0.00005844 -0.00001525  0.00003155  0.00000597  0.00005137  0.00018463

 45  1     9    1  |0 0>        0.00021615 -0.00016109 -0.00022633  0.00017724 -0.00008296 -0.00004756 -0.00004465  0.00005984
                                0.00003758  0.00008322 -0.00034873 -0.00000521 -0.00004216  0.00000899 -0.00007006  0.00003858

 46  1    10    1  |0 0>       -0.37195616  0.17845700 -0.00704614  0.00001617 -0.00002548 -0.00005850  0.00003656  0.00003592
                               -0.10994858 -0.13402394  0.01307430 -0.00002809 -0.00000793 -0.00002454  0.00001729  0.00005605

 47  1    11    1  |0 0>        0.08023017  0.09830634 -0.16595335 -0.00005839 -0.00005777  0.00000124 -0.00001816 -0.00001139
                               -0.00328471 -0.03421008 -0.20927029  0.00003675 -0.00001504 -0.00002418 -0.00001706 -0.00002019

 48  1    12    1  |0 0>        0.16060750  0.30820786 -0.10448491  0.00007035  0.00003482 -0.00006726 -0.00005352 -0.00002340
                                0.13072037 -0.12583267 -0.06873674 -0.00000363 -0.00008342  0.00006054 -0.00000335  0.00000096

 49  1    13    1  |0 0>       -0.00854155 -0.19473868 -0.12835511  0.00008902  0.00002353 -0.00002903 -0.00008643  0.00005438
                               -0.05157309  0.05126779 -0.21507397  0.00002835 -0.00003266 -0.00000515 -0.00005042 -0.00001091

 50  1    14    1  |0 0>        0.13356340  0.08584070  0.18305351 -0.00009103  0.00023142 -0.00000334  0.00002505 -0.00011420
                                0.00303306  0.03143750  0.19237730 -0.00007359  0.00006245 -0.00000591 -0.00000357  0.00003136

 51  1    15    1  |0 0>        0.00000232 -0.00000543 -0.00001469  0.00000425 -0.00002937  0.00000238 -0.00000293  0.00000511
                               -0.00000089 -0.00000092 -0.00003105  0.00001806  0.00000089  0.00000360 -0.00000179 -0.00001080


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00000400  0.00000879  0.00000791 -0.00000957  0.00001200 -0.02183064 -0.00130205 -0.03554561
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000399 -0.00001076 -0.00722154  0.00322390  0.01420707  0.02992079  0.00143582  0.00405049
                                0.00000621 -0.00000162  0.00965031  0.01067421  0.00935319  0.00155665 -0.00209661 -0.00553556

  3  1     3    1  |1 1>+      -0.00000348 -0.00001104  0.00987624 -0.01859503  0.01069368  0.00244957  0.01984329 -0.00290965
                               -0.00000221  0.00000155 -0.00077934 -0.00083971 -0.00043069 -0.00167015  0.01410392 -0.00109489

  4  1     4    1  |1 1>+      -0.29690789 -0.05856302 -0.00886870 -0.01283331 -0.01240626 -0.00111960  0.04823160 -0.00183007
                               -0.21231550  0.00192990  0.02371679  0.00411319 -0.01272538  0.00008276  0.02940957 -0.00190794

  5  1     5    1  |1 1>+      -0.07462454  0.44960225 -0.01388208  0.00604722  0.02733905  0.03134266  0.00148248  0.00415331
                               -0.02091878  0.03809174  0.01863575  0.02053457  0.01792901  0.00163271 -0.00219657 -0.00576530

  6  1     6    1  |1 1>+      -0.16783239 -0.25086244 -0.00020834  0.00022735 -0.00019140  0.05042475 -0.00558984 -0.06043797
                               -0.06486626 -0.02012128  0.00004066 -0.00000270  0.00000970  0.00667639  0.00033058  0.00736670

  7  1     7    1  |1 1>+       0.27303055 -0.01596251  0.01901091 -0.03586194  0.02048966  0.00254393  0.02070790 -0.00302121
                               -0.12482147 -0.09411125 -0.00148395 -0.00158934 -0.00081195 -0.00174821  0.01471408 -0.00114475

  8  1     8    1  |1 1>+       0.02380181  0.17471597 -0.01054102 -0.01517250 -0.01486331  0.00104087 -0.04056300  0.00153746
                               -0.25152681 -0.09161736  0.02828776  0.00481588 -0.01509406 -0.00005722 -0.02471016  0.00159795

  9  1     9    1  |1 1>+       0.00001677  0.00003794  0.07350971 -0.03289079 -0.14464502  0.35256906  0.01690855  0.04776944
                               -0.00003499  0.00002008 -0.09816941 -0.10865948 -0.09526622  0.01829892 -0.02471672 -0.06510084

 10  1    10    1  |1 1>+      -0.00000799  0.00009632  0.00001933  0.00004839 -0.00001704  0.25733981  0.01535692  0.41909883
                               -0.00000286  0.00001153 -0.00001489 -0.00003593 -0.00005411  0.00000351  0.00000120 -0.00000473

 11  1    11    1  |1 1>+      -0.00002353 -0.00010637  0.10044224 -0.18928379  0.10886774 -0.02891778 -0.23384227  0.03435299
                               -0.00000207  0.00000271 -0.00793690 -0.00857858 -0.00440890  0.01969083 -0.16635625  0.01291893

 12  1    12    1  |1 1>+       0.00007818 -0.00004973 -0.21519093 -0.30937321 -0.30184354 -0.00013880  0.00002867  0.00001190
                               -0.00017673 -0.00000232  0.57565713  0.09902050 -0.30722045 -0.00001745 -0.00008407  0.00003107

 13  1     1    1  |1 0>        0.00000210  0.00000040 -0.00077919 -0.00083979 -0.00042928  0.00167047 -0.01411381  0.00109538
                                0.00000276  0.00000449 -0.00987713  0.01859141 -0.01068684  0.00244956  0.01983140 -0.00291458

 14  1     2    1  |1 0>       -0.00000356  0.00000098  0.01664560  0.00285627 -0.00887805  0.00004383  0.01841321 -0.00120363
                               -0.00000293  0.00000322  0.00622002  0.00894312  0.00872865  0.00076829 -0.03021735  0.00113602

 15  1     3    1  |1 0>        0.00000085 -0.00000242  0.00000041 -0.00000214 -0.00000286  0.00320062  0.00017038  0.00352838
                               -0.00000575  0.00000427 -0.00000288  0.00000136  0.00000307 -0.01327945  0.00330933  0.04675592

 16  1     4    1  |1 0>        0.20933686 -0.02141763  0.02122209  0.02334325  0.02030282  0.00054777 -0.00075719 -0.00199181
                                0.05125525  0.30845990  0.01585006 -0.00707012 -0.03084001 -0.01081686 -0.00054012 -0.00152222

 17  1     5    1  |1 0>       -0.19067507  0.02069869 -0.03196991 -0.00547888  0.01700578 -0.00003357 -0.01921967  0.00126656
                                0.34234492  0.10175302 -0.01191348 -0.01709741 -0.01684571 -0.00085534  0.03153229 -0.00118033

 18  1     6    1  |1 0>        0.14679547 -0.01269318 -0.00146182 -0.00154080 -0.00079046  0.00174180 -0.01468534  0.00115506
                               -0.17838454  0.38160640 -0.01889725  0.03567792 -0.02054042  0.00258270  0.02071043 -0.00305192

 19  1     7    1  |1 0>       -0.06494579 -0.02008518  0.00004241  0.00003440  0.00006109 -0.00333652 -0.00018129 -0.00367325
                                0.16809475  0.25057633  0.00015201 -0.00007783 -0.00003841  0.05947732 -0.00071957  0.02537840

 20  1     8    1  |1 0>       -0.15228502 -0.02513460 -0.00387413 -0.00422423 -0.00358232  0.00321479 -0.00429954 -0.01135596
                               -0.12743714  0.24945554 -0.00286950  0.00121740  0.00549850 -0.06144555 -0.00295286 -0.00832665

 21  1     9    1  |1 0>        0.00002693 -0.00000784 -0.16940200 -0.02910422  0.09039826  0.00053003  0.21717975 -0.01422339
                                0.00002976 -0.00003206 -0.06330544 -0.09104754 -0.08882078  0.00898408 -0.35622083  0.01339985

 22  1    10    1  |1 0>        0.00000132  0.00000405 -0.00795960 -0.00855921 -0.00438914 -0.01968753  0.16633006 -0.01291804
                                0.00005021  0.00004125 -0.10051148  0.18918769 -0.10876792 -0.02891273 -0.23391983  0.03430207

 23  1    11    1  |1 0>        0.00001097  0.00000317 -0.00002133 -0.00002138 -0.00004144 -0.03773080 -0.00202233 -0.04161051
                               -0.00004085 -0.00004391 -0.00000830 -0.00010790  0.00001954  0.15656885 -0.03899965 -0.55128653

 24  1    12    1  |1 0>        0.00002003  0.00006450 -0.33357607 -0.36919338 -0.32364921 -0.00001813  0.00000259  0.00013591
                                0.00007809  0.00006316 -0.24975198  0.11171246  0.49144842  0.00010238  0.00000299 -0.00000873

 25  1     1    1  |1 1>-      -0.00000390 -0.00000219  0.00963529  0.01067392  0.00936379 -0.00155210  0.00209597  0.00551504
                               -0.00000559 -0.00000375  0.00721936 -0.00323788 -0.01421330  0.02991430  0.00143490  0.00405087

 26  1     2    1  |1 1>-      -0.00000333  0.00000106 -0.00000145  0.00000563  0.00001017 -0.00320031 -0.00017002 -0.00352811
                                0.00000936 -0.00001529  0.00000298  0.00000584 -0.00000980  0.03511751 -0.00200722 -0.01120533

 27  1     3    1  |1 1>-       0.00000241 -0.00000011 -0.01664739 -0.00286328  0.00888488  0.00004536  0.01842401 -0.00120629
                                0.00000615 -0.00000041 -0.00622453 -0.00894708 -0.00872729  0.00075744 -0.03021177  0.00113708

 28  1     4    1  |1 1>-      -0.13413943 -0.00673140 -0.00067999 -0.00074501 -0.00038729  0.00328184 -0.02769452  0.00212540
                                0.08884256 -0.28936487 -0.00749361  0.01410072 -0.00805010  0.00472930  0.03888911 -0.00571531

 29  1     5    1  |1 1>-       0.06490935  0.02013449 -0.00011761 -0.00004967 -0.00000621  0.00334193  0.00018186  0.00368287
                               -0.16801693 -0.25083448 -0.00020310  0.00019813 -0.00005016  0.00881631  0.00479427  0.08584906

 30  1     6    1  |1 1>-       0.24784499  0.01882429 -0.01814381 -0.02033920 -0.01810327  0.00160776 -0.00218173 -0.00573175
                                0.15863741 -0.14907096 -0.01370370  0.00632368  0.02734612 -0.03124259 -0.00151270 -0.00421581

 31  1     7    1  |1 1>-       0.18933757  0.10022647  0.03186842  0.00550604 -0.01698846 -0.00004626 -0.01924059  0.00127698
                                0.14275352  0.21265912  0.01197338  0.01716455  0.01660432 -0.00076585  0.03152485 -0.00117268

 32  1     8    1  |1 1>-      -0.02845906 -0.10083996  0.00165546  0.00179198  0.00091374  0.00118394 -0.01001711  0.00078610
                               -0.38365003  0.26127680  0.02056708 -0.03855241  0.02226549  0.00176505  0.01411454 -0.00208724

 33  1     9    1  |1 1>-       0.00000696 -0.00000683  0.00000473  0.00001671  0.00000510 -0.03773418 -0.00202180 -0.04160263
                               -0.00004218  0.00003948  0.00000831 -0.00009071 -0.00001346  0.41394281 -0.02364570 -0.13218498

 34  1    10    1  |1 1>-      -0.00000339 -0.00001173  0.09813700  0.10863703  0.09524434  0.01831654 -0.02471116 -0.06519331
                               -0.00003506  0.00004317  0.07347249 -0.03286202 -0.14463808 -0.35267150 -0.01691788 -0.04776592

 35  1    11    1  |1 1>-       0.00004410 -0.00000022 -0.16938760 -0.02919523  0.09043539 -0.00051914 -0.21711691  0.01420458
                                0.00004347  0.00000167 -0.06334541 -0.09103413 -0.08883450 -0.00908017  0.35624757 -0.01338699

 36  1    12    1  |1 1>-       0.00004687  0.00001182 -0.02702376 -0.02909075 -0.01492030  0.00000278 -0.00004204 -0.00000330
                                0.00010781  0.00019143 -0.34150018  0.64307766 -0.36975814 -0.00000865 -0.00010229 -0.00008898

 37  1     1    1  |0 0>       -0.00000125 -0.00000419  0.00000196 -0.00000251 -0.00000282  0.00048568 -0.01904064  0.00071528
                                0.00000287 -0.00000156  0.00000051  0.00000120 -0.00000240 -0.00002801 -0.01160623  0.00076033

 38  1     2    1  |0 0>        0.00001346 -0.00001598 -0.00000369  0.00000952 -0.00000894 -0.01933710  0.00082450  0.00152519
                                0.00000417 -0.00000243  0.00000069  0.00000025 -0.00000064 -0.00154534 -0.00008373 -0.00170366

 39  1     3    1  |0 0>       -0.00000663 -0.00000788 -0.00000264 -0.00000397 -0.00000100 -0.01884442 -0.00090358 -0.00255481
                                0.00000446 -0.00000230  0.00000756  0.00000147 -0.00000243 -0.00097758  0.00132129  0.00348287

 40  1     4    1  |0 0>        0.00000028  0.00000559 -0.00000031  0.00000084 -0.00000145  0.00154875  0.01250066 -0.00183432
                               -0.00000016 -0.00000064 -0.00000472 -0.00000378 -0.00000247 -0.00105197  0.00889104 -0.00069115

 41  1     5    1  |0 0>       -0.00000647 -0.00000758  0.00000008 -0.00000401  0.00000554  0.00067045 -0.00161946 -0.02660250
                               -0.00000102 -0.00000239  0.00000587  0.00000325  0.00000003  0.00129589  0.00007021  0.00142888

 42  1     6    1  |0 0>        0.00000011 -0.00000110  0.00000231 -0.00000173  0.00000106  0.00000325 -0.00000008  0.00000153
                                0.00000098  0.00000036 -0.00000006 -0.00000112 -0.00000195 -0.00000009 -0.00000016 -0.00000018

 43  1     7    1  |0 0>        0.00005445  0.00007968 -0.19026607  0.35824590 -0.20596634 -0.00001303 -0.00003783 -0.00004501
                               -0.00005111 -0.00000671  0.01506367  0.01619458  0.00830000 -0.00000097  0.00001858  0.00000482

 44  1     8    1  |0 0>       -0.00002256  0.00002878  0.11987562  0.17233836  0.16813572  0.00005475 -0.00000810  0.00000044
                                0.00013014  0.00000965 -0.32068938 -0.05514738  0.17112228  0.00000789  0.00003258 -0.00001494

 45  1     9    1  |0 0>       -0.00006835 -0.00013969  0.13913278 -0.06222703 -0.27373765 -0.00003220  0.00000601  0.00000860
                                0.00005002  0.00004115 -0.18583430 -0.20565710 -0.18027439 -0.00000465  0.00000694  0.00005542

 46  1    10    1  |0 0>        0.00003426  0.00004235 -0.00007092 -0.00007250  0.00005833 -0.03878482 -0.31417562  0.04612091
                                0.00000519 -0.00001503 -0.00005157 -0.00007890 -0.00005486  0.02645666 -0.22344804  0.01734151

 47  1    11    1  |0 0>       -0.00009569  0.00003394  0.00000349  0.00012379  0.00006802 -0.07964577  0.04309145  0.66786960
                               -0.00001826 -0.00001492  0.00005425  0.00001565 -0.00006718 -0.03732615 -0.00198348 -0.04116508

 48  1    12    1  |0 0>       -0.00001521 -0.00004146  0.00000295 -0.00001616 -0.00006128 -0.01207815  0.47852674 -0.01800206
                                0.00002619 -0.00003135 -0.00001085  0.00009093 -0.00005708  0.00070549  0.29170156 -0.01908229

 49  1    13    1  |0 0>       -0.00008115 -0.00017391 -0.00001035 -0.00012635 -0.00003850  0.47377535  0.02272906  0.06413904
                                0.00006071 -0.00002774  0.00012529  0.00000161 -0.00008688  0.02461402 -0.03319398 -0.08749909

 50  1    14    1  |0 0>        0.00018049 -0.00022665 -0.00004127  0.00009187 -0.00020772  0.47974930 -0.01533420  0.04844701
                                0.00006287 -0.00003234  0.00001471 -0.00004950 -0.00008085  0.03429389  0.00182254  0.03780499

 51  1    15    1  |0 0>       -0.00001025  0.00002216 -0.00000162  0.00004750  0.00001975 -0.00004547  0.00000357 -0.00000601
                               -0.00001277  0.00000140  0.00001570  0.00000562 -0.00000600  0.00000034  0.00000230  0.00000397


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00180236 -0.02710809 -0.03812715
                                0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00028799 -0.02945194  0.00000129
                                0.00168338  0.00620940  0.00000148

  3  1     3    1  |1 1>+      -0.01156777  0.00012797  0.00000040
                               -0.03338822 -0.00011670 -0.00000022

  4  1     4    1  |1 1>+       0.01526830  0.00216680 -0.00002957
                                0.03593713  0.00341698 -0.00000190

  5  1     5    1  |1 1>+       0.00030124 -0.03061182 -0.00002938
                                0.00177757  0.00644367 -0.00000081

  6  1     6    1  |1 1>+      -0.00102098  0.03882396  0.00001494
                                0.00578314 -0.01466713 -0.00000005

  7  1     7    1  |1 1>+      -0.01207931  0.00008581  0.00000412
                               -0.03483593 -0.00011229 -0.00000053

  8  1     8    1  |1 1>+      -0.01286532 -0.00174190  0.00000077
                               -0.03019940 -0.00288805  0.00000283

  9  1     9    1  |1 1>+       0.00343787 -0.34737579  0.00007134
                                0.01984691  0.07320405  0.00000683

 10  1    10    1  |1 1>+      -0.02125349  0.31951922  0.30196094
                               -0.00000901  0.00000068  0.00000196

 11  1    11    1  |1 1>+       0.13646370 -0.00137272  0.00000529
                                0.39359791  0.00136427  0.00000158

 12  1    12    1  |1 1>+      -0.00010696  0.00002611  0.00001147
                               -0.00001106 -0.00001218 -0.00000121

 13  1     1    1  |1 0>        0.03338152  0.00011592  0.00000028
                               -0.01157620  0.00011787 -0.00000070

 14  1     2    1  |1 0>        0.02249470  0.00215487 -0.00000013
                               -0.00956992 -0.00129250 -0.00000009

 15  1     3    1  |1 0>        0.00278195 -0.00702891 -0.00000086
                               -0.00041478 -0.00507317 -0.03813142

 16  1     4    1  |1 0>        0.00058354  0.00226631  0.00000111
                               -0.00010477  0.01076676 -0.00002130

 17  1     5    1  |1 0>       -0.02342207 -0.00226461 -0.00000168
                                0.01001076  0.00127480  0.00001208

 18  1     6    1  |1 0>        0.03481133  0.00010421 -0.00000016
                               -0.01205231  0.00007639 -0.00000137

 19  1     7    1  |1 0>       -0.00290797  0.00729068  0.00000848
                               -0.00332330  0.06179425 -0.00000177

 20  1     8    1  |1 0>        0.00346807  0.01277221 -0.00000377
                               -0.00058881  0.06049539  0.00000556

 21  1     9    1  |1 0>        0.26522612  0.02542688 -0.00000067
                               -0.11296191 -0.01520779  0.00000350

 22  1    10    1  |1 0>       -0.39363434 -0.00136799 -0.00000277
                                0.13644252 -0.00146284 -0.00000666

 23  1    11    1  |1 0>       -0.03281207  0.08288269 -0.00000745
                                0.00489702  0.05987227  0.30196261

 24  1    12    1  |1 0>       -0.00001418  0.00000692  0.00003494
                               -0.00002603  0.00008464 -0.00002156

 25  1     1    1  |1 1>-      -0.00168342 -0.00620871  0.00000222
                                0.00029113 -0.02946170  0.00000348

 26  1     2    1  |1 1>-      -0.00278172  0.00702709 -0.00000015
                               -0.00138751  0.03217327 -0.03812708

 27  1     3    1  |1 1>-       0.02249155  0.00215585 -0.00000008
                               -0.00958460 -0.00129163  0.00000122

 28  1     4    1  |1 1>-       0.06545944  0.00024843  0.00000115
                               -0.02269826  0.00032476 -0.00000198

 29  1     5    1  |1 1>-       0.00290521 -0.00730027 -0.00000748
                               -0.00231153  0.02305284  0.00000818

 30  1     6    1  |1 1>-       0.00172518  0.00644529  0.00000184
                               -0.00028943  0.03063232  0.00000821

 31  1     7    1  |1 1>-      -0.02344150 -0.00225380 -0.00000274
                                0.00999043  0.00132695  0.00000023

 32  1     8    1  |1 1>-       0.02373865  0.00008250 -0.00000220
                               -0.00821211  0.00010405  0.00000175

 33  1     9    1  |1 1>-      -0.03280153  0.08288150 -0.00000947
                               -0.01635563  0.37935717 -0.30196864

 34  1    10    1  |1 1>-       0.01984456  0.07319455 -0.00000969
                               -0.00340753  0.34727039 -0.00003014

 35  1    11    1  |1 1>-      -0.26522201 -0.02541771  0.00000060
                                0.11288847  0.01521312  0.00000704

 36  1    12    1  |1 1>-      -0.00006758 -0.00000624  0.00000117
                               -0.00002449 -0.00012239 -0.00002623

 37  1     1    1  |0 0>       -0.00603597 -0.00081078 -0.00000097
                               -0.01417684 -0.00135947 -0.00000001

 38  1     2    1  |0 0>        0.00086685 -0.01850131  0.00000062
                               -0.00134373  0.00339543 -0.00000072

 39  1     3    1  |0 0>       -0.00018369  0.01857116 -0.00000416
                               -0.00106075 -0.00391339 -0.00000002

 40  1     4    1  |0 0>       -0.00729375  0.00007362 -0.00000002
                               -0.02103964 -0.00007267 -0.00000013

 41  1     5    1  |0 0>        0.00055725 -0.00378209  0.00000055
                                0.00112801 -0.00284806  0.00000033

 42  1     6    1  |0 0>        0.00000005 -0.00000344 -0.05901894
                               -0.00000012  0.00000055  0.00000028

 43  1     7    1  |0 0>       -0.00000661 -0.00004360 -0.00001300
                                0.00003424  0.00000252 -0.00000166

 44  1     8    1  |0 0>        0.00004260 -0.00002208  0.00000017
                                0.00000779  0.00000544  0.00000065

 45  1     9    1  |0 0>        0.00000091 -0.00000765 -0.00000204
                               -0.00001642  0.00000141  0.00001441

 46  1    10    1  |0 0>        0.18328255 -0.00194642 -0.00000061
                                0.52872078  0.00184179  0.00000226

 47  1    11    1  |0 0>       -0.01105316  0.03433118 -0.00000258
                               -0.03244352  0.08196217 -0.00000037

 48  1    12    1  |0 0>        0.15168470  0.02047093 -0.00001066
                                0.35624958  0.03413502 -0.00000132

 49  1    13    1  |0 0>        0.00458383 -0.46643176  0.00002890
                                0.02665903  0.09831347 -0.00000344

 50  1    14    1  |0 0>       -0.02341345  0.47324752  0.00000428
                                0.02979999 -0.07529538  0.00000158

 51  1    15    1  |0 0>       -0.00000107  0.00004640  0.84770780
                                0.00000200 -0.00000168 -0.00000047



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        26.83%    0.00%    0.00%    0.00%    5.62%   20.29%    0.08%    0.07%
  2  1     2    1  |1 1>+         0.00%    0.03%    0.03%   49.58%   17.96%    5.51%    0.09%    0.02%
  3  1     3    1  |1 1>+         0.00%   16.87%   32.77%    0.01%    0.02%    0.06%   16.48%    7.06%
  4  1     4    1  |1 1>+         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.11%    0.26%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.12%    0.04%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.08%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.01%    0.03%    0.00%    0.00%    0.00%    0.11%    0.05%
  8  1     8    1  |1 1>+         0.00%    0.02%    0.01%    0.00%    0.00%    0.00%    0.08%    0.18%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.27%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   16.87%   32.77%    0.01%    0.02%    0.06%   16.48%    7.06%
 14  1     2    1  |1 0>          0.00%   32.74%   16.85%    0.05%    0.06%    0.01%    7.13%   16.56%
 15  1     3    1  |1 0>         26.83%    0.00%    0.00%    0.00%    0.05%    0.56%    0.12%    0.21%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.01%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.03%    0.01%    0.00%    0.00%    0.00%    0.05%    0.11%
 18  1     6    1  |1 0>          0.00%    0.01%    0.03%    0.00%    0.00%    0.00%    0.11%    0.05%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.15%    0.47%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.46%    0.14%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.41%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.03%    0.03%   49.58%   17.96%    5.51%    0.09%    0.02%
 26  1     2    1  |1 1>-        26.83%    0.00%    0.00%    0.00%    5.83%   15.60%    0.02%    0.04%
 27  1     3    1  |1 1>-         0.00%   32.74%   16.85%    0.05%    0.06%    0.01%    7.13%   16.55%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%    0.16%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.17%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.12%    0.04%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.03%    0.01%    0.00%    0.00%    0.00%    0.05%    0.11%
 32  1     8    1  |1 1>-         0.00%    0.02%    0.03%    0.00%    0.00%    0.00%    0.05%    0.02%
 33  1     9    1  |1 1>-         0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.14%    0.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.14%    0.03%   15.40%   35.78%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   11.04%   31.26%    0.03%    0.03%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   38.82%   11.91%    0.19%    0.05%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.12%   35.61%   15.25%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.39%    8.12%    0.21%    0.32%
 42  1     6    1  |0 0>         18.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.06%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.11%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         5.67%   23.53%    3.77%    0.13%    6.72%    0.46%    5.63%    0.00%
  2  1     2    1  |1 1>+         0.22%    3.39%   22.33%    0.11%    0.08%    0.05%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.19%    0.02%    0.01%   16.01%    0.20%    9.71%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.01%    0.04%    0.00%    7.38%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    3.77%
  6  1     6    1  |1 1>+         0.50%    0.02%    0.00%    0.00%    0.08%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.01%    0.00%    4.93%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.03%    0.00%   10.45%
  9  1     9    1  |1 1>+         0.00%    0.01%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.08%    0.01%    0.00%    0.02%    0.00%    0.17%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.06%    0.00%    0.03%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.96%
 13  1     1    1  |1 0>          0.19%    0.02%    0.01%   16.02%    0.20%    9.71%    0.00%    0.00%
 14  1     2    1  |1 0>          0.04%    0.00%    0.09%    9.45%    2.11%   14.31%    0.00%    0.00%
 15  1     3    1  |1 0>         30.80%    0.32%    0.09%    0.52%   31.20%    2.50%    5.63%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.87%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.02%    0.00%   13.37%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.01%    0.00%    4.93%
 19  1     7    1  |1 0>          0.01%    0.10%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.01%    0.01%    0.10%    0.00%    0.00%    0.00%    0.00%    0.15%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.01%    0.05%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.03%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.11%    0.01%    0.17%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.55%
 25  1     1    1  |1 1>-         0.22%    3.39%   22.33%    0.11%    0.08%    0.05%    0.00%    0.00%
 26  1     2    1  |1 1>-        10.24%   21.26%    3.20%    0.14%    9.21%    0.82%    5.63%    0.00%
 27  1     3    1  |1 1>-         0.04%    0.00%    0.09%    9.45%    2.11%   14.31%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.06%    0.00%    0.04%    0.00%    0.76%
 29  1     5    1  |1 1>-         0.41%    0.03%    0.01%    0.00%    0.07%    0.01%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    3.77%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.02%    0.00%   13.37%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%    5.81%
 33  1     9    1  |1 1>-         0.00%    0.07%    0.01%    0.00%    0.03%    0.00%    0.17%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.01%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.01%    0.05%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.72%
 37  1     1    1  |0 0>          0.09%    0.00%    0.16%   17.26%    3.86%   26.14%    0.00%    0.00%
 38  1     2    1  |0 0>          9.08%   34.89%    5.31%    0.09%    6.54%    0.60%    0.00%    0.00%
 39  1     3    1  |0 0>          0.47%    6.19%   40.81%    0.20%    0.15%    0.10%    0.00%    0.00%
 40  1     4    1  |0 0>          0.40%    0.04%    0.02%   29.26%    0.37%   17.74%    0.00%    0.00%
 41  1     5    1  |0 0>         41.39%    6.31%    1.14%    0.62%   36.52%    2.85%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   80.70%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.18%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.06%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.96%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.11%    0.00%    0.00%
 47  1    11    1  |0 0>          0.01%    0.02%    0.00%    0.00%    0.24%    0.02%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.02%    0.16%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.04%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.23%    0.04%    0.00%    0.02%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.91%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.73%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.08%    0.04%    0.02%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.09%    0.03%    0.00%    0.00%
  4  1     4    1  |1 1>+         4.74%    0.06%    0.00%    0.36%    0.15%    0.99%    1.20%    1.88%
  5  1     5    1  |1 1>+         4.23%   14.07%    0.00%    1.44%    0.84%    0.44%    4.54%    0.03%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%   28.00%
  7  1     7    1  |1 1>+         9.24%    7.89%    0.00%    0.62%    1.62%    0.48%    0.99%    0.57%
  8  1     8    1  |1 1>+         6.71%    0.08%    0.00%    0.51%    0.21%    1.41%    0.85%    1.33%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   13.63%    7.90%    4.18%    4.76%    0.03%
 10  1    10    1  |1 1>+         0.00%    0.00%   23.89%    0.00%    0.00%    0.00%    3.34%    0.04%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    5.88%   15.30%    4.52%    1.05%    0.60%
 12  1    12    1  |1 1>+         1.26%    0.02%    0.00%    6.54%    2.64%   17.93%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.09%    0.03%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.01%    0.09%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.73%    0.00%    0.00%    0.00%    0.00%    0.01%
 16  1     4    1  |1 0>          5.47%   18.19%    0.00%    1.87%    1.08%    0.57%    0.56%    0.00%
 17  1     5    1  |1 0>          8.59%    0.10%    0.00%    0.66%    0.26%    1.80%    0.51%    0.80%
 18  1     6    1  |1 0>          9.25%    7.89%    0.00%    0.62%    1.62%    0.48%    0.99%    0.57%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.24%    8.41%
 20  1     8    1  |1 0>          0.17%    0.57%    0.00%    0.06%    0.03%    0.02%   17.58%    0.11%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    6.20%    2.50%   17.00%    0.54%    0.85%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    5.87%   15.31%    4.52%    1.05%    0.60%
 23  1    11    1  |1 0>          0.00%    0.00%   23.89%    0.00%    0.00%    0.00%    0.82%    6.92%
 24  1    12    1  |1 0>          0.62%    2.06%    0.00%   14.37%    8.33%    4.41%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.04%    0.02%    0.01%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.73%    0.00%    0.00%    0.00%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.01%    0.09%    0.00%    0.00%
 28  1     4    1  |1 1>-         1.43%    1.22%    0.00%    0.10%    0.25%    0.07%    3.51%    2.02%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.04%    5.77%
 30  1     6    1  |1 1>-         4.23%   14.07%    0.00%    1.44%    0.84%    0.44%    4.53%    0.03%
 31  1     7    1  |1 1>-         8.59%    0.10%    0.00%    0.66%    0.27%    1.80%    0.51%    0.80%
 32  1     8    1  |1 1>-        10.89%    9.30%    0.00%    0.73%    1.91%    0.56%    0.46%    0.27%
 33  1     9    1  |1 1>-         0.00%    0.00%   23.89%    0.00%    0.00%    0.00%    0.89%    7.85%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   13.62%    7.89%    4.18%    4.79%    0.03%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    6.20%    2.50%   17.00%    0.54%    0.85%
 36  1    12    1  |1 1>-         1.35%    1.16%    0.00%    6.20%   16.14%    4.77%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.05%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.31%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.31%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.04%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.17%
 42  1     6    1  |0 0>          0.00%    0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          9.72%    8.30%    0.00%    2.77%    7.22%    2.13%    0.00%    0.00%
 44  1     8    1  |0 0>          9.03%    0.11%    0.00%    2.92%    1.18%    8.02%    0.00%    0.00%
 45  1     9    1  |0 0>          4.45%   14.80%    0.00%    6.43%    3.72%    1.97%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.65%    2.11%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.93%   12.61%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.89%    2.95%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.68%    0.11%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.87%   13.24%
 51  1    15    1  |0 0>          0.00%    0.00%   25.55%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.04%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.02%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.15%    0.01%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        10.22%    3.13%    3.33%    0.15%    2.57%    0.02%    0.85%    3.41%
  5  1     5    1  |1 1>+         0.87%    1.14%    1.86%    0.13%    0.05%    4.79%    3.77%    0.31%
  6  1     6    1  |1 1>+         2.95%    0.96%    1.74%    0.00%    0.00%    0.00%    8.47%    2.30%
  7  1     7    1  |1 1>+         1.31%    5.37%    0.19%    4.57%    0.26%    0.13%    0.41%    0.30%
  8  1     8    1  |1 1>+         7.23%    2.21%    2.35%    0.21%    3.63%    0.03%    0.60%    2.41%
  9  1     9    1  |1 1>+         0.92%    1.20%    1.96%    0.47%    0.17%   17.85%    7.27%    0.60%
 10  1    10    1  |1 1>+         1.62%    0.50%    6.36%    0.00%    0.00%    0.00%    3.08%   13.41%
 11  1    11    1  |1 1>+         1.38%    5.66%    0.20%   17.05%    0.97%    0.48%    0.79%    0.58%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.13%    2.23%    0.02%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.15%    0.01%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.00%    0.01%    0.15%    0.00%    0.00%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 16  1     4    1  |1 0>          0.11%    0.14%    0.23%    0.16%    0.06%    6.19%    0.46%    0.04%
 17  1     5    1  |1 0>          4.36%    1.33%    1.42%    0.26%    4.66%    0.04%    0.36%    1.45%
 18  1     6    1  |1 0>          1.31%    5.37%    0.19%    4.57%    0.26%    0.13%    0.41%    0.30%
 19  1     7    1  |1 0>          7.21%    1.73%    9.15%    0.00%    0.00%    0.00%   10.59%   10.26%
 20  1     8    1  |1 0>          3.39%    4.42%    7.20%    0.01%    0.00%    0.19%   14.57%    1.21%
 21  1     9    1  |1 0>          4.60%    1.41%    1.50%    0.98%   17.35%    0.17%    0.70%    2.81%
 22  1    10    1  |1 0>          1.38%    5.65%    0.20%   17.05%    0.97%    0.48%    0.79%    0.58%
 23  1    11    1  |1 0>          0.12%    0.23%    3.76%    0.00%    0.00%    0.00%    1.72%    8.29%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.06%    0.02%    2.29%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.02%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 27  1     3    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.15%    0.00%    0.00%    0.01%
 28  1     4    1  |1 1>-         4.63%   18.97%    0.68%    0.71%    0.04%    0.02%    1.44%    1.06%
 29  1     5    1  |1 1>-         1.17%    0.87%   18.88%    0.00%    0.00%    0.00%    0.82%   22.11%
 30  1     6    1  |1 1>-         0.87%    1.14%    1.86%    0.13%    0.05%    4.79%    3.76%    0.31%
 31  1     7    1  |1 1>-         4.36%    1.33%    1.42%    0.26%    4.65%    0.04%    0.36%    1.45%
 32  1     8    1  |1 1>-         0.61%    2.50%    0.09%    5.39%    0.31%    0.15%    0.19%    0.14%
 33  1     9    1  |1 1>-         2.24%    0.53%    0.34%    0.00%    0.00%    0.00%    8.02%    0.65%
 34  1    10    1  |1 1>-         0.92%    1.20%    1.95%    0.47%    0.17%   17.87%    7.27%    0.61%
 35  1    11    1  |1 1>-         4.60%    1.41%    1.50%    0.98%   17.36%    0.17%    0.70%    2.81%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    2.19%    0.13%    0.06%    0.00%    0.00%
 37  1     1    1  |0 0>          0.30%    0.09%    0.10%    0.00%    0.00%    0.00%    0.02%    0.09%
 38  1     2    1  |0 0>          0.12%    0.03%    0.05%    0.00%    0.00%    0.00%    0.19%    0.05%
 39  1     3    1  |0 0>          0.06%    0.08%    0.13%    0.00%    0.00%    0.00%    0.23%    0.02%
 40  1     4    1  |0 0>          0.09%    0.37%    0.01%    0.00%    0.00%    0.00%    0.02%    0.02%
 41  1     5    1  |0 0>          0.01%    0.01%    0.29%    0.00%    0.00%    0.00%    0.01%    0.30%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   40.32%    2.30%    1.13%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    2.32%   41.04%    0.39%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    1.11%    0.41%   42.23%    0.00%    0.00%
 46  1    10    1  |0 0>          4.82%   19.74%    0.71%    0.00%    0.00%    0.00%    1.15%    0.84%
 47  1    11    1  |0 0>          0.21%    0.62%   13.64%    0.00%    0.00%    0.00%    0.82%   12.36%
 48  1    12    1  |0 0>         16.05%    4.91%    5.23%    0.00%    0.00%    0.00%    1.02%    4.08%
 49  1    13    1  |0 0>          3.21%    4.20%    6.83%    0.00%    0.00%    0.00%   10.56%    0.88%
 50  1    14    1  |0 0>          6.73%    1.56%    4.61%    0.00%    0.00%    0.00%    8.48%    3.88%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.03%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         3.58%    9.25%    1.30%    4.23%   12.46%    3.25%    9.42%    1.36%
  5  1     5    1  |1 1>+         0.10%    1.44%    2.23%   14.50%   11.40%    0.42%    4.52%    1.53%
  6  1     6    1  |1 1>+         0.14%    0.34%   20.12%   12.07%    5.19%    3.30%    0.74%    2.46%
  7  1     7    1  |1 1>+         5.36%    1.77%    0.01%    0.17%    2.27%   15.37%   13.24%   12.36%
  8  1     8    1  |1 1>+         2.53%    6.54%    0.92%    2.36%    0.05%    3.02%   26.90%    6.36%
  9  1     9    1  |1 1>+         0.19%    2.79%    4.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         2.14%    1.54%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        10.36%    3.43%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.03%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    0.18%    0.27%    5.60%    8.97%   10.22%    3.54%   16.65%
 17  1     5    1  |1 0>          1.53%    3.95%    0.56%    6.90%   16.35%    4.74%    6.61%    2.31%
 18  1     6    1  |1 0>          5.36%    1.77%    0.01%    7.89%   10.77%    8.34%    0.45%    5.97%
 19  1     7    1  |1 0>          3.12%    1.65%    5.76%   12.08%    5.19%    3.30%    0.75%    2.46%
 20  1     8    1  |1 0>          0.38%    5.60%    8.66%    5.67%    2.00%    8.38%    0.82%    7.04%
 21  1     9    1  |1 0>          2.95%    7.63%    1.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         10.36%    3.43%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.22%    0.70%    9.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        18.93%    6.27%    0.03%    4.76%    5.27%    8.38%    1.32%    5.74%
 29  1     5    1  |1 1>-         1.93%    2.11%    4.40%   12.06%    5.19%    3.30%    0.75%    2.46%
 30  1     6    1  |1 1>-         0.10%    1.45%    2.23%    3.01%    0.56%   19.13%    0.27%   19.45%
 31  1     7    1  |1 1>-         1.53%    3.94%    0.56%    5.93%    2.44%    4.82%   20.74%    8.26%
 32  1     8    1  |1 1>-         2.49%    0.82%    0.00%    2.78%   11.90%    4.03%    9.94%    5.60%
 33  1     9    1  |1 1>-         0.98%    0.40%   10.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.19%    2.79%    4.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         2.95%    7.63%    1.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.09%    0.24%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.03%    0.01%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.01%    0.09%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.32%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.02%    0.03%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>         15.04%    4.98%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.64%    1.08%    7.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          4.29%   11.08%    1.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.27%    4.06%    6.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          1.78%    0.84%    7.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.13%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.03%    0.09%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.03%    0.01%    0.00%    0.06%    0.00%
  4  1     4    1  |1 1>+        13.32%    0.34%    0.06%    0.02%    0.03%    0.00%    0.32%    0.00%
  5  1     5    1  |1 1>+         0.60%   20.36%    0.05%    0.05%    0.11%    0.10%    0.00%    0.01%
  6  1     6    1  |1 1>+         3.24%    6.33%    0.00%    0.00%    0.00%    0.26%    0.00%    0.37%
  7  1     7    1  |1 1>+         9.01%    0.91%    0.04%    0.13%    0.04%    0.00%    0.06%    0.00%
  8  1     8    1  |1 1>+         6.38%    3.89%    0.09%    0.03%    0.04%    0.00%    0.23%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    1.50%    1.29%    3.00%   12.46%    0.09%    0.65%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.62%    0.02%   17.56%
 11  1    11    1  |1 1>+         0.00%    0.00%    1.02%    3.59%    1.19%    0.12%    8.24%    0.13%
 12  1    12    1  |1 1>+         0.00%    0.00%   37.77%   10.55%   18.55%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.03%    0.01%    0.00%    0.06%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.03%    0.01%    0.02%    0.00%    0.13%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.22%
 16  1     4    1  |1 0>          4.64%    9.56%    0.07%    0.06%    0.14%    0.01%    0.00%    0.00%
 17  1     5    1  |1 0>         15.36%    1.08%    0.12%    0.03%    0.06%    0.00%    0.14%    0.00%
 18  1     6    1  |1 0>          5.34%   14.58%    0.04%    0.13%    0.04%    0.00%    0.06%    0.00%
 19  1     7    1  |1 0>          3.25%    6.32%    0.00%    0.00%    0.00%    0.35%    0.00%    0.07%
 20  1     8    1  |1 0>          3.94%    6.29%    0.00%    0.00%    0.00%    0.38%    0.00%    0.02%
 21  1     9    1  |1 0>          0.00%    0.00%    3.27%    0.91%    1.61%    0.01%   17.41%    0.04%
 22  1    10    1  |1 0>          0.00%    0.00%    1.02%    3.59%    1.18%    0.12%    8.24%    0.13%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    2.59%    0.15%   30.56%
 24  1    12    1  |1 0>          0.00%    0.00%   17.36%   14.88%   34.63%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.01%    0.03%    0.09%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.03%    0.01%    0.02%    0.00%    0.13%    0.00%
 28  1     4    1  |1 1>-         2.59%    8.38%    0.01%    0.02%    0.01%    0.00%    0.23%    0.00%
 29  1     5    1  |1 1>-         3.24%    6.33%    0.00%    0.00%    0.00%    0.01%    0.00%    0.74%
 30  1     6    1  |1 1>-         8.66%    2.26%    0.05%    0.05%    0.11%    0.10%    0.00%    0.01%
 31  1     7    1  |1 1>-         5.62%    5.53%    0.12%    0.03%    0.06%    0.00%    0.14%    0.00%
 32  1     8    1  |1 1>-        14.80%    7.84%    0.04%    0.15%    0.05%    0.00%    0.03%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   17.28%    0.06%    1.92%
 34  1    10    1  |1 1>-         0.00%    0.00%    1.50%    1.29%    3.00%   12.47%    0.09%    0.65%
 35  1    11    1  |1 1>-         0.00%    0.00%    3.27%    0.91%    1.61%    0.01%   17.41%    0.04%
 36  1    12    1  |1 1>-         0.00%    0.00%   11.74%   41.44%   13.69%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    3.64%   12.86%    4.25%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%   11.72%    3.27%    5.76%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    5.39%    4.62%   10.74%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.22%   14.86%    0.24%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.77%    0.19%   44.77%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   31.41%    0.07%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   22.51%    0.16%    1.18%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.13%    0.02%    0.38%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.07%    0.15%
  2  1     2    1  |1 1>+         0.00%    0.09%    0.00%
  3  1     3    1  |1 1>+         0.12%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.15%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.10%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.17%    0.00%
  7  1     7    1  |1 1>+         0.14%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.11%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.04%   12.60%    0.00%
 10  1    10    1  |1 1>+         0.05%   10.21%    9.12%
 11  1    11    1  |1 1>+        17.35%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.12%    0.00%    0.00%
 14  1     2    1  |1 0>          0.06%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.01%    0.15%
 16  1     4    1  |1 0>          0.00%    0.01%    0.00%
 17  1     5    1  |1 0>          0.06%    0.00%    0.00%
 18  1     6    1  |1 0>          0.14%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.39%    0.00%
 20  1     8    1  |1 0>          0.00%    0.38%    0.00%
 21  1     9    1  |1 0>          8.31%    0.09%    0.00%
 22  1    10    1  |1 0>         17.36%    0.00%    0.00%
 23  1    11    1  |1 0>          0.11%    1.05%    9.12%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.09%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.11%    0.15%
 27  1     3    1  |1 1>-         0.06%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.48%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.06%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.10%    0.00%
 31  1     7    1  |1 1>-         0.06%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.06%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.13%   15.08%    9.12%
 34  1    10    1  |1 1>-         0.04%   12.60%    0.00%
 35  1    11    1  |1 1>-         8.31%    0.09%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.04%    0.00%
 39  1     3    1  |0 0>          0.00%    0.04%    0.00%
 40  1     4    1  |0 0>          0.05%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.35%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>         31.31%    0.00%    0.00%
 47  1    11    1  |0 0>          0.12%    0.79%    0.00%
 48  1    12    1  |0 0>         14.99%    0.16%    0.00%
 49  1    13    1  |0 0>          0.07%   22.72%    0.00%
 50  1    14    1  |0 0>          0.14%   22.96%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   71.86%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2618.25       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     6397.31       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    135087.95 108876.02    168.13  13227.75  12774.90     27.85      0.61     12.45
 REAL TIME  *    137402.32 SEC
 DISK USED  *         6.55 GB (local),      112.79 GB (total)
 SF USED    *        37.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy= -20885.582152792547

              CI              CI           MULTI         RHF-SCF
 -20885.52526731 -20885.53686418 -20884.52429821 -20883.98310558
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
