
 Working directory              : /wrk/irikura/molpro.qktRUwfuiR/
 Global scratch directory       : /wrk/irikura/molpro.qktRUwfuiR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.qktRUwfuiR/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ra SO-CI
                                                                                 ! larger core [15 19]
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
 {rhf,so-sci;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=16
 
                                                                                 ! active space (2/10) as orbitals [7 3]
 {multi
     closed,21,22
     occ,28,25
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,15,19
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 07-May-24          TIME: 09:32:55  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry RA     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry RA     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry RA     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry RA     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry RA     G aug-cc-pwCVQZ-X      selected for orbital group  1


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

   1  RA     88.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   88
 NUMBER OF PRIMITIVE AOS:         568
 NUMBER OF SYMMETRY AOS:          462
 NUMBER OF CONTRACTIONS:          184   (   96Ag  +   88Au  )
 NUMBER OF INNER CORE ORBITALS:    39   (   20Ag  +   19Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     139.985 MB (compressed) written to integral file ( 12.3%)

     Node minimum: 16.777 MB, node maximum: 31.457 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   12193260.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   12193260      RECORD LENGTH: 524288

 Memory used in sort:      12.75 MW

 SORT1 READ   142077448. AND WROTE     2282850. INTEGRALS IN      7 RECORDS. CPU TIME:     0.58 SEC, REAL TIME:     0.61 SEC
 SORT2 READ    14096359. AND WROTE    73209670. INTEGRALS IN    642 RECORDS. CPU TIME:     0.18 SEC, REAL TIME:     0.21 SEC

 Node minimum:    12191832.  Node maximum:    12208288. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 1 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7   8 9101112131415 7 8
                                        9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.988E-05 0.177E-04 0.169E-03 0.169E-03 0.169E-03 0.169E-03 0.169E-03 0.803E-03
         2 0.347E-04 0.347E-04 0.347E-04 0.111E-03 0.111E-03 0.111E-03 0.369E-02 0.369E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        44.16     43.99
 REAL TIME  *        47.83 SEC
 DISK USED  *        31.65 MB (local),      469.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  21  23
 
 SO-SCI SOLVER WITH NELEC=88 SYM=1 MS2=0 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                43   (   21   22)
 Number of doubly occupied active orbitals:       1   (    0    1)
 Number of non-occupied active orbitals:          2   (    0    2)
 Number of virtual orbitals:                    138   (   75   63)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0  -24984.27705580  -24984.27705580    0.54233078    0.54233078    0.00000000    0    0.14E+01      0.28
    2    2    0  -24984.57686305      -0.29980725    0.30931709    0.30931709    0.00000000    0    0.13E+01      0.62
    3    2    0  -24984.58550944      -0.00864639    0.20978451    0.20978451    0.00000000    0    0.15E+01      0.89
    4    2    0  -24984.58411961       0.00138984    0.16681461    0.16681461    0.00000000    0    0.18E+00      1.11
    5    2    0  -24984.60583131      -0.02171171    0.06954206    0.06954206    0.00000000    1    0.90E-01      1.33
    6    2    0  -24984.60848525      -0.00265394    0.03066617    0.03066617    0.00000000    2    0.16E-01      1.55
    7    2    0  -24984.60857170      -0.00008645    0.01091556    0.01091556    0.00000000    3    0.18E-02      1.76
    8    2    0  -24984.60857719      -0.00000548    0.00041347    0.00041347    0.00000000    4    0.29E-03      1.98
    9    2    0  -24984.60857725      -0.00000007    0.00009633    0.00009633    0.00000000    5    0.10E-03      2.19
   10    2    0  -24984.60857725      -0.00000000    0.00001159    0.00001159    0.00000000    6    0.64E-05      2.41

 CONVERGENCE REACHED!  Final gradient:     0.00000238 ( 0.24E-05)
                       Final energy:  -24984.60857725
 

 Final occupancy:  21  23

 !RHF STATE 1.1 Energy               -24984.6085772549    
  RHF One-electron energy            -33990.6653307968    
  RHF Two-electron energy            9006.056753541874
  RHF Kinetic energy                  43484.7291978975    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.574560519017

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.30812     1  1  s    1.00000
    2.1     2.00000  -712.85837     1  2  s    0.99997
    3.1     2.00000  -179.86819     1  3  s    1.00000
    4.1     2.00000  -118.20565     1  1  d0   0.86598    1  1  d2-  0.47461
    5.1     2.00000  -118.20565     1  1  d1+  0.81065    1  1  d1- -0.58544
    6.1     2.00000  -118.20514     1  1  d2-  0.31445    1  1  d2+  0.94927
    7.1     2.00000  -118.20514     1  1  d1+  0.58547    1  1  d1-  0.81069
    8.1     2.00000  -118.20497     1  1  d0  -0.50000    1  1  d2-  0.82209    1  1  d2+ -0.27232
    9.1     2.00000   -45.82096     1  4  s    0.99900
   10.1     2.00000   -23.77685     1  2  d1+  0.81064    1  2  d1- -0.58543
   11.1     2.00000   -23.77685     1  2  d0   0.86597    1  2  d2-  0.47461
   12.1     2.00000   -23.77567     1  2  d2-  0.31444    1  2  d2+  0.94926
   13.1     2.00000   -23.77567     1  2  d1+  0.58546    1  2  d1-  0.81068
   14.1     2.00000   -23.77528     1  2  d0  -0.49999    1  2  d2-  0.82208    1  2  d2+ -0.27231
   15.1     2.00000   -10.11538     1  5  s    0.99912
   16.1     2.00000    -3.09670     1  3  d1+  0.81055    1  3  d1- -0.58537
   17.1     2.00000    -3.09670     1  3  d0   0.86588    1  3  d2-  0.47456
   18.1     2.00000    -3.09412     1  3  d1+  0.58551    1  3  d1-  0.81075
   19.1     2.00000    -3.09412     1  3  d2-  0.31446    1  3  d2+  0.94935
   20.1     2.00000    -3.09329     1  3  d0  -0.50005    1  3  d2-  0.82218    1  3  d2+ -0.27233
   21.1     2.00000    -1.72328     1  6  s    0.95719
    1.2     2.00000  -604.23277     1  1  px   0.81069    1  1  py  -0.58547
    2.2     2.00000  -604.23277     1  1  pz   1.00000
    3.2     2.00000  -604.23268     1  1  px   0.58547    1  1  py   0.81070
    4.2     2.00000  -148.82148     1  2  px   0.81069    1  2  py  -0.58547
    5.2     2.00000  -148.82148     1  2  pz   1.00000
    6.2     2.00000  -148.82096     1  2  px   0.58547    1  2  py   0.81069
    7.2     2.00000   -35.45986     1  3  px   0.81074    1  3  py  -0.58550
    8.2     2.00000   -35.45986     1  3  pz   1.00006
    9.2     2.00000   -35.45869     1  3  px   0.58555    1  3  py   0.81081
   10.2     2.00000   -11.30405     1  1  f0   0.79058    1  1  f2-  0.58131
   11.2     2.00000   -11.30405     1  1  f1+  0.78496    1  1  f1- -0.56688
   12.2     2.00000   -11.30307     1  1  f1+  0.46281    1  1  f1-  0.64084    1  1  f3+ -0.58395
   13.2     2.00000   -11.30307     1  1  f2-  0.31442    1  1  f2+  0.94918
   14.2     2.00000   -11.30248     1  1  f3+  0.29129    1  1  f3-  0.92338
   15.2     2.00000   -11.30248     1  1  f0  -0.61237    1  1  f2-  0.75046
   16.2     2.00000   -11.30229     1  1  f1+  0.35852    1  1  f1-  0.49644    1  1  f3+  0.75393
   17.2     2.00000    -6.90738     1  4  pz   0.99702
   18.2     2.00000    -6.90738     1  4  px   0.80827    1  4  py  -0.58373
   19.2     2.00000    -6.90527     1  4  px   0.58072    1  4  py   0.80411
   20.2     2.00000    -0.90803     1  5  pz   0.97672
   21.2     2.00000    -0.90803     1  5  px   0.79181    1  5  py  -0.57185
   22.2     2.00000    -0.90163     1  5  px   0.58053    1  5  py   0.80383
   23.2     2.00000    -0.10004     1  6  px   0.60430    1  6  py   0.83676


 HOMO     23.2    -0.100040 =      -2.7222eV
 LUMO     22.1    -0.073928 =      -2.0117eV
 LUMO-HOMO         0.026112 =       0.7105eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.82       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        46.73      2.57     43.99
 REAL TIME  *        50.52 SEC
 DISK USED  *        33.60 MB (local),      481.48 MB (total)
 SF USED    *         6.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (   21   22)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     131 (   68   63)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.506D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.427D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.426D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.423D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.426D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.427D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.488D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.580D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.844D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.283D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.445D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.286D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 28 SYMMETRY CONTAMINATION OF 0.722D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 5 6 3 1 4   2 5 6 3 1 4 2 6 5 3   1 1 2 4 5 6 1 3 2 4   5 6 1 1 2 4 5 6 3 1
                                        7 91214 2 4 6 5 3 2   4 5 6 1 1 7 9141215  101113 3 4 2 6 5 3 1   7 9121415101113 8 4
                                        2 6 5 3 4 2 6 5 3 3  15 8111310 8
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.119D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.343D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.965D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.529D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.661D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.264D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.535D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.592D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.693D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.422D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.423D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.430D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.501D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 6   4 510 9 8 7 3 1 2 3   1 2 2 3 1 3 1 2 1 3   2 6 410 5 8 9 7 1 3
                                        2 6 4 510 8 9 7 1 3   2 4 6 510 9 8 7 1 3   2 4 6 510 8 9 7 1 3   2 4 610 5 8 9 7 4 6
                                        510 8 9 7 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  3692  ( 213 closed/active, 2814 closed/virtual, 0 active/active, 665 active/virtual )
 Total number of variables:    4482
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0 -24984.66945295  -24984.68782390   -0.01837095    0.05841091 0.00001518 0.00000000  0.12E+01      5.75
   2    9   14    0 -24984.68736034  -24984.68740585   -0.00004551    0.00225922 0.00000092 0.00000000  0.53E-01     12.16
   3    8   12    0 -24984.68740593  -24984.68740593   -0.00000000    0.00000960 0.00000000 0.00000000  0.15E-03     17.50
   4    7    8    0 -24984.68740593  -24984.68740593    0.00000000    0.00000000 0.00000001 0.00000000  0.43E-07     21.93

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.29E-08)
                       Final energy: -24984.68740593
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7931656989    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.26648564
 One electron energy                        -33998.82391569
 Two electron energy                          9014.03074999
 Virial ratio                                    1.57455766
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -24984.7119973102    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94562279
 One electron energy                        -33999.79389092
 Two electron energy                          9015.08189361
 Virial ratio                                    1.57456004
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -24984.7119973102    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94562278
 One electron energy                        -33999.79389085
 Two electron energy                          9015.08189354
 Virial ratio                                    1.57456004
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -24984.7119973102    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94562279
 One electron energy                        -33999.79389093
 Two electron energy                          9015.08189362
 Virial ratio                                    1.57456004
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -24984.7119973102    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94562280
 One electron energy                        -33999.79389095
 Two electron energy                          9015.08189364
 Virial ratio                                    1.57456004
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -24984.7119973102    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94562281
 One electron energy                        -33999.79389113
 Two electron energy                          9015.08189382
 Virial ratio                                    1.57456004
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -24984.6708155154    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.74063897
 One electron energy                        -33990.11112623
 Two electron energy                          9005.44031071
 Virial ratio                                    1.57456180
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.7215431352    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.09634343
 One electron energy                        -34001.11283335
 Two electron energy                          9016.39129021
 Virial ratio                                    1.57455827
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.7215431350    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.09634341
 One electron energy                        -34001.11283317
 Two electron energy                          9016.39129004
 Virial ratio                                    1.57455827
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.7215431350    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.09634341
 One electron energy                        -34001.11283315
 Two electron energy                          9016.39129002
 Virial ratio                                    1.57455827
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.7215431349    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.09634342
 One electron energy                        -34001.11283326
 Two electron energy                          9016.39129012
 Virial ratio                                    1.57455827
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.7215431349    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.09634341
 One electron energy                        -34001.11283317
 Two electron energy                          9016.39129003
 Virial ratio                                    1.57455827
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.6779054990    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.50604958
 One electron energy                        -33987.84408067
 Two electron energy                          9003.16617517
 Virial ratio                                    1.57456506
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.6535775431    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.57673086
 One electron energy                        -33997.74155059
 Two electron energy                          9013.08797305
 Virial ratio                                    1.57456357
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.6535775422    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.57673090
 One electron energy                        -33997.74155108
 Two electron energy                          9013.08797353
 Virial ratio                                    1.57456357
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.6535775420    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.57673091
 One electron energy                        -33997.74155122
 Two electron energy                          9013.08797368
 Virial ratio                                    1.57456357
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.6485735347    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664240
 One electron energy                        -34002.92820579
 Two electron energy                          9018.27963226
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.6485735347    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664238
 One electron energy                        -34002.92820557
 Two electron energy                          9018.27963204
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.6485735347    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664239
 One electron energy                        -34002.92820565
 Two electron energy                          9018.27963211
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.6485735347    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664238
 One electron energy                        -34002.92820552
 Two electron energy                          9018.27963199
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.6485735347    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664239
 One electron energy                        -34002.92820568
 Two electron energy                          9018.27963214
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.6485735346    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664238
 One electron energy                        -34002.92820554
 Two electron energy                          9018.27963201
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy             -24984.6485735346    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.84664238
 One electron energy                        -34002.92820555
 Two electron energy                          9018.27963201
 Virial ratio                                    1.57455989
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.572217436141
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000001769496
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000012544604
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999984855535
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.427789072353
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     2.719224880094
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000011787624
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999988095476
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.280774241181
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999989181
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999982135
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999995888
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000022059
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.000019848118
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     6.849933955978
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     2.652000326132
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     5.206401083216
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     4.793569141914
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     3.150045534090
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     1.348047995289
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.905857708928
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999998427409
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999503607
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000824787
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.094141758419
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.024207925713
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000201074
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000166805
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.975791889841
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999988091
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000018176
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999690
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999982123
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.999983284987
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.664363385823
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     1.012581383683
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.040297880365
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     3.959715261132
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     8.335651537062
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     8.987402931498
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.521924854931
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999803095
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999987951789
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000014319678
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.478069169227
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.256567194193
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999988011301
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000011737719
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.743433868978
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000022729
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999689
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000004422
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999995817
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999996866895
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.485702658199
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     8.335418290185
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     6.753301036419
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     3.246715596954
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.514302928848
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.664549073213
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>    12.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>    12.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 5 6 1 4   2 3 5 6 1 3 4 2 5 6   1 1 2 6 4 3 5 1 2 5   3 4 6 1 5 3 2 4 6 1
                                       1310151412 8 9 711 3   5 4 2 6 110131514 9  12 8 711 4 6 2 5 3 1  1013141512 8 9 711 4
                                        6 2 5 3 4 6 2 5 3 1   4 6 5 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 1 3 2 4   610 8 9 7 5 1 3 2 1   3 2 3 2 1 3 2 1 2 3   1 810 9 7 4 6 5 2 1
                                        3 9 7 810 4 5 6 1 2   3 6 4 9 7 510 8 1 2   3 4 5 9 710 8 6 1 2   3 4 5 6 9 710 8 4 5
                                        6 9 710 8 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.20368     1  1  s    1.00000
    2.1     2.00000  -712.75287     1  2  s    0.99997
    3.1     2.00000  -179.76262     1  3  s    1.00000
    4.1     2.00000  -118.09970     1  1  d0   1.00000
    5.1     2.00000  -118.09970     1  1  d1+  1.00000
    6.1     2.00000  -118.09970     1  1  d2-  1.00000
    7.1     2.00000  -118.09970     1  1  d2+  1.00000
    8.1     2.00000  -118.09970     1  1  d1-  1.00000
    9.1     2.00000   -45.71554     1  4  s    0.99898
   10.1     2.00000   -23.67077     1  2  d1+  0.99998
   11.1     2.00000   -23.67077     1  2  d0   0.99998
   12.1     2.00000   -23.67077     1  2  d2-  0.99998
   13.1     2.00000   -23.67077     1  2  d2+  0.99998
   14.1     2.00000   -23.67077     1  2  d1-  0.99998
   15.1     2.00000   -10.01027     1  5  s    0.99879
   16.1     2.00000    -2.99031     1  3  d2-  1.00075
   17.1     2.00000    -2.99031     1  3  d1+  1.00075
   18.1     2.00000    -2.99031     1  3  d0   1.00075
   19.1     2.00000    -2.99031     1  3  d2+  1.00075
   20.1     2.00000    -2.99031     1  3  d1-  1.00075
   21.1     2.00000    -1.61696     1  6  s    1.06238
   22.1     0.56364    -0.05621     1  6  s    0.35680    1  7  s   -0.60714    1  8  s    0.31014
   23.1     0.23442     0.04960     1  4  d0   0.97277
   24.1     0.23442     0.04960     1  4  d1-  0.97277
   25.1     0.23442     0.04960     1  4  d1+  0.97277
   26.1     0.23442     0.04960     1  4  d2-  0.97277
   27.1     0.23442     0.04960     1  4  d2+  0.97277
   28.1     0.08555     0.02573     1  6  s   -0.25519    1  7  s    0.27688    1  8  s   -0.50736    1  9  s   -0.30029
                                    1 14  s    1.37345
    1.2     2.00000  -604.12718     1  1  pz   1.00000
    2.2     2.00000  -604.12718     1  1  px   1.00000
    3.2     2.00000  -604.12718     1  1  py   1.00000
    4.2     2.00000  -148.71557     1  2  px   1.00000
    5.2     2.00000  -148.71557     1  2  pz   1.00000
    6.2     2.00000  -148.71557     1  2  py   1.00000
    7.2     2.00000   -35.35385     1  3  px   1.00006
    8.2     2.00000   -35.35385     1  3  pz   1.00006
    9.2     2.00000   -35.35385     1  3  py   1.00006
   10.2     2.00000   -11.19769     1  1  f1+  1.00000
   11.2     2.00000   -11.19769     1  1  f0   1.00000
   12.2     2.00000   -11.19769     1  1  f2+  1.00000
   13.2     2.00000   -11.19769     1  1  f2-  1.00000
   14.2     2.00000   -11.19769     1  1  f3-  1.00000
   15.2     2.00000   -11.19769     1  1  f3+  1.00000
   16.2     2.00000   -11.19769     1  1  f1-  1.00000
   17.2     2.00000    -6.80154     1  4  px   0.99951
   18.2     2.00000    -6.80154     1  4  pz   0.99951
   19.2     2.00000    -6.80154     1  4  py   0.99951
   20.2     2.00000    -0.80576     1  5  px   0.99242
   21.2     2.00000    -0.80576     1  5  pz   0.99242
   22.2     2.00000    -0.80576     1  5  py   0.99242
   23.2     0.05956     0.04381     1  6  pz   1.59859    1  8  pz  -0.36306
   24.2     0.05956     0.04381     1  6  py   1.59859    1  8  py  -0.36306
   25.2     0.05956     0.04381     1  6  px   1.59859    1  8  px  -0.36306
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96584800     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.02193851
 b00000a 000     -0.00827759      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.67813973
 a00000b 000      0.00827759     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.67813973
 a00b000 000     -0.00000000      0.00027304      0.64630040      0.00004377     -0.00042710      0.00012053      0.00000000
 b00a000 000      0.00000000     -0.00027304     -0.64630040     -0.00004377      0.00042710     -0.00012053     -0.00000000
 b0a0000 000      0.00000000      0.00009848     -0.00042694     -0.00129064     -0.64629892     -0.00057622      0.00000000
 a0b0000 000     -0.00000000     -0.00009848      0.00042694      0.00129064      0.64629892      0.00057622     -0.00000000
 b000a00 000     -0.00000000      0.00019491      0.00004468     -0.64629887      0.00129130     -0.00074116      0.00000000
 a000b00 000      0.00000000     -0.00019491     -0.00004468      0.64629887     -0.00129130      0.00074116     -0.00000000
 ab00000 000      0.00000000      0.60266229     -0.00029822     -0.00008623     -0.00011595      0.23345780     -0.00000000
 ba00000 000     -0.00000000     -0.60266229      0.00029822      0.00008623      0.00011595     -0.23345780      0.00000000
 a0000b0 000     -0.00000000     -0.23345777     -0.00001409     -0.00076266     -0.00057135      0.60266164     -0.00000001
 b0000a0 000      0.00000000      0.23345777      0.00001409      0.00076266      0.00057135     -0.60266164      0.00000001
 0000000 020     -0.13466421      0.04269757     -0.00006947     -0.00030299     -0.00023805      0.27502323     -0.07630523
 0000000 200     -0.13466421     -0.25952610      0.00012842      0.00003713      0.00004993     -0.10053457     -0.07630524
 0000000 a0b      0.00000000     -0.00010183     -0.24103055     -0.00001632      0.00015928     -0.00004495      0.00000000
 0000000 b0a     -0.00000000      0.00010183      0.24103055      0.00001632     -0.00015928      0.00004495     -0.00000000
 0000000 ba0     -0.00000000     -0.00003673      0.00015922      0.00048133      0.24102999      0.00021489     -0.00000000
 0000000 ab0      0.00000000      0.00003673     -0.00015922     -0.00048133     -0.24102999     -0.00021489      0.00000000
 0000000 0ab     -0.00000000      0.00007269      0.00001666     -0.24102997      0.00048158     -0.00027641     -0.00000000
 0000000 0ba      0.00000000     -0.00007269     -0.00001666      0.24102997     -0.00048158      0.00027641      0.00000000
 0000000 002     -0.13466420      0.21682853     -0.00005896      0.00026586      0.00018811     -0.17448867     -0.07630525
 0000002 000     -0.01602037      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.13833766
 0a00b00 000     -0.00000000     -0.00003480     -0.00000798      0.11538004     -0.00023053      0.00013231     -0.00000000
 0b00a00 000      0.00000000      0.00003480      0.00000798     -0.11538004      0.00023053     -0.00013231      0.00000000
 0002000 000     -0.04968021     -0.01770082      0.00002880      0.00012561      0.00009868     -0.11401438      0.09291604
 0000020 000     -0.04968021      0.10758985     -0.00005324     -0.00001539     -0.00002070      0.04167788      0.09291603
 0000200 000     -0.04968021      0.10758985     -0.00005324     -0.00001539     -0.00002070      0.04167789      0.09291603
 0200000 000     -0.04968021     -0.10758985      0.00005324      0.00001539      0.00002070     -0.04167788      0.09291603
 0b000a0 000      0.00000000      0.04167788      0.00000252      0.00013615      0.00010200     -0.10758973      0.00000001
 0a000b0 000     -0.00000000     -0.04167788     -0.00000252     -0.00013615     -0.00010200      0.10758973     -0.00000001
 000a0b0 000      0.00000000     -0.00004221     -0.09992228     -0.00000677      0.00006603     -0.00001863     -0.00000000
 000b0a0 000     -0.00000000      0.00004221      0.09992228      0.00000677     -0.00006603      0.00001863      0.00000000
 00a0b00 000     -0.00000000     -0.00004221     -0.09992228     -0.00000677      0.00006603     -0.00001863      0.00000000
 00b0a00 000      0.00000000      0.00004221      0.09992228      0.00000677     -0.00006603      0.00001863     -0.00000000
 000ab00 000      0.00000000      0.00001523     -0.00006601     -0.00019954     -0.09992205     -0.00008909     -0.00000000
 000ba00 000     -0.00000000     -0.00001523      0.00006601      0.00019954      0.09992205      0.00008909      0.00000000
 00b00a0 000      0.00000000      0.00001523     -0.00006601     -0.00019954     -0.09992205     -0.00008909     -0.00000000
 00a00b0 000     -0.00000000     -0.00001523      0.00006601      0.00019954      0.09992205      0.00008909      0.00000000
 00ba000 000     -0.00000000     -0.00003013     -0.00000691      0.09992204     -0.00019964      0.00011459     -0.00000000
 00ab000 000      0.00000000      0.00003013      0.00000691     -0.09992204      0.00019964     -0.00011459      0.00000000
 0020000 000     -0.04968021     -0.08988903      0.00002444     -0.00011022     -0.00007799      0.07233650      0.09291602
 0b0a000 000      0.00000000      0.00002437      0.05769016      0.00000391     -0.00003812      0.00001076      0.00000000
 0a0b000 000     -0.00000000     -0.00002437     -0.05769016     -0.00000391      0.00003812     -0.00001076     -0.00000000
 0ab0000 000      0.00000000      0.00000879     -0.00003811     -0.00011521     -0.05769002     -0.00005143     -0.00000000
 0ba0000 000     -0.00000000     -0.00000879      0.00003811      0.00011521      0.05769002      0.00005143      0.00000000
 
 Energy:     -24984.79316570 -24984.71199731 -24984.71199731 -24984.71199731 -24984.71199731 -24984.71199731 -24984.67081552
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 a00a000 000     -0.00004358     -0.00002593      0.00004527      0.00018735      0.99999886     -0.00000000      0.00000000
 a0a0000 000     -0.00008910      0.00197230      0.99999691      0.00022825     -0.00004527     -0.00000000     -0.00000000
 a000a00 000     -0.00008363      0.99999690     -0.00197225     -0.00027234      0.00002607     -0.00000000     -0.00000000
 0a000a0 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0a00a00 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0000a0 000      0.90229705     -0.00004160      0.00017889     -0.43111222      0.00012008     -0.00000000     -0.00000000
 aa00000 000      0.43111226      0.00028146     -0.00016809      0.90229699     -0.00015024      0.00000000      0.00000000
 00a0a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.32637912
 000a0a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.32637910
 00a00a0 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00004362
 00aa000 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000576
 000aa00 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00004362
 0000000 a0a      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.68365443
 0000000 0aa      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00001206
 0000000 aa0     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00009138
 0000aa0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00001152
 0aa0000 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00007556
 0a0a000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.56530518
 
 Energy:     -24984.72154314 -24984.72154314 -24984.72154314 -24984.72154313 -24984.72154313 -24984.67790550 -24984.65357754

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0a000a0 000     -0.00000000     -0.00000000      0.99999638      0.00264511      0.00040902     -0.00008277     -0.00023941
 0a00a00 000      0.00000001     -0.00000000     -0.00247294      0.93349781      0.00038477      0.00037605     -0.00017051
 a0000a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 aa00000 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 00a0a00 000     -0.00000575      0.00004362      0.00009745     -0.00036391     -0.00332459      0.88990561      0.08975918
 000a0a0 000     -0.00000575      0.00004362      0.00017433      0.00021381      0.00103775     -0.30938516      0.83921369
 00a00a0 000      0.00002093      0.32637912     -0.00036638     -0.00012836      0.83495781      0.00300139      0.00013591
 00aa000 000     -0.32637912      0.00002093     -0.00083981      0.32071744     -0.00037842      0.00017225      0.00014851
 000aa00 000     -0.00002093     -0.32637911     -0.00015372     -0.00021600      0.51923396      0.00217448      0.00001959
 0000000 a0a      0.00001205     -0.00009138     -0.00000000     -0.00000000     -0.00000000      0.00000002     -0.00000000
 0000000 0aa      0.68365442     -0.00004384      0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 0000000 aa0      0.00004384      0.68365441      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000
 0000aa0 000     -0.65275822      0.00004186      0.00041991     -0.16035872      0.00018921     -0.00008612     -0.00007425
 0aa0000 000     -0.00003625     -0.56530520     -0.00012278      0.00005060      0.18228325      0.00047742      0.00006715
 0a0a000 000     -0.00000997      0.00007556     -0.00015691      0.00008666      0.00132031     -0.33516366     -0.53634274
 
 Energy:     -24984.65357754 -24984.65357754 -24984.64857353 -24984.64857353 -24984.64857353 -24984.64857353 -24984.64857353

 State:               15              16
 a00000a 000      0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000
 0a000a0 000     -0.00000980     -0.00007951
 0a00a00 000     -0.35857370     -0.00055510
 a0000a0 000      0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 00a0a00 000     -0.00006060     -0.00028936
 000a0a0 000     -0.00016725      0.00016115
 00a00a0 000      0.00106386     -0.32067920
 00aa000 000      0.83494710      0.00165890
 000aa00 000     -0.00112927      0.72827881
 0000000 a0a     -0.00000000     -0.00000000
 0000000 0aa      0.00000001      0.00000000
 0000000 aa0     -0.00000000      0.00000000
 0000aa0 000     -0.41747356     -0.00082945
 0aa0000 000      0.00126620     -0.60561619
 0a0a000 000      0.00013155      0.00007402
 
 Energy:     -24984.64857353 -24984.64857353
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      309.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.45       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        66.14     19.41      2.57     43.99
 REAL TIME  *        76.55 SEC
 DISK USED  *       311.22 MB (local),        2.10 GB (total)
 SF USED    *       666.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -24984.79317   -0.0
    -24984.71200    6.0
    -24984.71200    6.0
    -24984.71200    6.0
    -24984.71200    6.0
    -24984.71200    6.0
    -24984.67082   -0.0
    -24984.72154    6.0
    -24984.72154    6.0
    -24984.72154    6.0
    -24984.72154    6.0
    -24984.72154    6.0
    -24984.67791   -0.0
    -24984.65358    2.0
    -24984.65358    2.0
    -24984.65358    2.0
    -24984.64857   12.0
    -24984.64857   12.0
    -24984.64857   12.0
    -24984.64857   12.0
    -24984.64857   12.0
    -24984.64857   12.0
    -24984.64857   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 88
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     131 (  68  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.49 sec, npass=  1  Memory used:   3.67 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.79316570
     2    -24984.71199731
     3    -24984.71199731
     4    -24984.71199731
     5    -24984.71199731
     6    -24984.71199731
     7    -24984.67081552

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.56D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       2093960
 Number of doubly external configurations:       3213849
 Total number of contracted configurations:      5345925
 Total number of uncontracted configurations:   26752065

 Diagonal Coupling coefficients finished.               Storage:  20307871 words, CPU-Time:     16.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1875714 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.79316570    -0.00000000    -0.62474581  0.39D-01  0.91D-01    24.28
    1     2     2     1.00000000     0.00000000-24984.71199731    -0.00000000    -0.63011978  0.45D-01  0.97D-01    24.28
    1     3     3     1.00000000     0.00000000-24984.71199731    -0.00000000    -0.63032543  0.45D-01  0.97D-01    24.28
    1     4     4     1.00000000     0.00000000-24984.71199731    -0.00000000    -0.63031958  0.45D-01  0.96D-01    24.28
    1     5     5     1.00000000     0.00000000-24984.71199731     0.00000000    -0.63026339  0.45D-01  0.96D-01    24.28
    1     6     6     1.00000000     0.00000000-24984.71199731    -0.00000000    -0.63023962  0.45D-01  0.96D-01    24.28
    1     7     7     1.00000000     0.00000000-24984.67081552    -0.00000000    -0.61718972  0.46D-01  0.89D-01    24.28
    2     1     1     1.08323904    -0.50953355-24985.30269925    -0.50953355    -0.01070736  0.20D-02  0.12D-02   602.74
    2     2     2     1.08918746    -0.50816790-24985.22016521    -0.50816790    -0.01128625  0.25D-02  0.14D-02   602.74
    2     3     3     1.08929005    -0.50812014-24985.22011745    -0.50812014    -0.01133966  0.26D-02  0.14D-02   602.74
    2     4     4     1.08934119    -0.50810168-24985.22009899    -0.50810168    -0.01136162  0.26D-02  0.14D-02   602.74
    2     5     5     1.08936064    -0.50809628-24985.22009359    -0.50809628    -0.01136623  0.26D-02  0.14D-02   602.74
    2     6     6     1.08937279    -0.50808564-24985.22008295    -0.50808564    -0.01137953  0.26D-02  0.14D-02   602.74
    2     7     7     1.08641733    -0.50539143-24985.17620695    -0.50539143    -0.01049427  0.28D-02  0.12D-02   602.74
    3     1     1     1.08149272    -0.51969507-24985.31286077    -0.01016152    -0.00023138  0.31D-04  0.33D-04  1177.52
    3     2     2     1.08457662    -0.51877551-24985.23077282    -0.01060761    -0.00026135  0.40D-04  0.43D-04  1177.52
    3     3     3     1.08458405    -0.51877482-24985.23077213    -0.01065468    -0.00026194  0.40D-04  0.43D-04  1177.52
    3     4     4     1.08458923    -0.51877400-24985.23077131    -0.01067232    -0.00026290  0.41D-04  0.43D-04  1177.52
    3     5     5     1.08458885    -0.51877304-24985.23077035    -0.01067675    -0.00026394  0.41D-04  0.44D-04  1177.52
    3     6     6     1.08458804    -0.51877299-24985.23077030    -0.01068734    -0.00026396  0.41D-04  0.44D-04  1177.52
    3     7     7     1.08219451    -0.51545637-24985.18627189    -0.01006494    -0.00024772  0.44D-04  0.39D-04  1177.52
    4     1     1     1.08246116    -0.51993255-24985.31309825    -0.00023748    -0.00000849  0.30D-05  0.88D-06  1751.83
    4     2     2     1.08530970    -0.51904134-24985.23103865    -0.00026583    -0.00001027  0.45D-05  0.11D-05  1751.83
    4     3     3     1.08530989    -0.51904132-24985.23103863    -0.00026651    -0.00001029  0.45D-05  0.11D-05  1751.83
    4     4     4     1.08531110    -0.51904128-24985.23103859    -0.00026728    -0.00001035  0.46D-05  0.11D-05  1751.83
    4     5     5     1.08531058    -0.51904124-24985.23103855    -0.00026821    -0.00001038  0.46D-05  0.11D-05  1751.83
    4     6     6     1.08531034    -0.51904121-24985.23103852    -0.00026823    -0.00001041  0.46D-05  0.11D-05  1751.83
    4     7     7     1.08283984    -0.51571168-24985.18652719    -0.00025530    -0.00000961  0.37D-05  0.12D-05  1751.83
    5     1     1     1.08261114    -0.51994142-24985.31310712    -0.00000886    -0.00000036  0.91D-07  0.47D-07  2320.38
    5     2     2     1.08540404    -0.51905213-24985.23104944    -0.00001079    -0.00000051  0.15D-06  0.76D-07  2320.38
    5     3     3     1.08540415    -0.51905213-24985.23104944    -0.00001080    -0.00000051  0.15D-06  0.76D-07  2320.38
    5     4     4     1.08540428    -0.51905213-24985.23104944    -0.00001084    -0.00000051  0.15D-06  0.77D-07  2320.38
    5     5     5     1.08540421    -0.51905213-24985.23104944    -0.00001088    -0.00000051  0.15D-06  0.77D-07  2320.38
    5     6     6     1.08540411    -0.51905212-24985.23104943    -0.00001091    -0.00000051  0.15D-06  0.77D-07  2320.38
    5     7     7     1.08288967    -0.51572171-24985.18653722    -0.00001003    -0.00000043  0.13D-06  0.64D-07  2320.38
    6     1     1     1.08261678    -0.51994181-24985.31310751    -0.00000039    -0.00000002  0.36D-08  0.23D-08  2889.19
    6     2     2     1.08539597    -0.51905271-24985.23105002    -0.00000058    -0.00000003  0.10D-07  0.40D-08  2889.19
    6     3     3     1.08539591    -0.51905271-24985.23105002    -0.00000058    -0.00000003  0.10D-07  0.39D-08  2889.19
    6     4     4     1.08539598    -0.51905271-24985.23105002    -0.00000058    -0.00000003  0.10D-07  0.40D-08  2889.19
    6     5     5     1.08539592    -0.51905271-24985.23105002    -0.00000058    -0.00000003  0.10D-07  0.40D-08  2889.19
    6     6     6     1.08539593    -0.51905271-24985.23105002    -0.00000058    -0.00000003  0.10D-07  0.39D-08  2889.19
    6     7     7     1.08287893    -0.51572218-24985.18653770    -0.00000047    -0.00000002  0.49D-08  0.36D-08  2889.19
    7     1     1     1.08261678    -0.51994181-24985.31310751    -0.00000000    -0.00000002  0.36D-08  0.23D-08  3308.75
    7     2     2     1.08540358    -0.51905274-24985.23105005    -0.00000003    -0.00000000  0.36D-09  0.19D-09  3308.75
    7     3     3     1.08540313    -0.51905274-24985.23105005    -0.00000003    -0.00000000  0.70D-09  0.20D-09  3308.75
    7     4     4     1.08540314    -0.51905274-24985.23105005    -0.00000003    -0.00000000  0.70D-09  0.20D-09  3308.75
    7     5     5     1.08540314    -0.51905274-24985.23105005    -0.00000003    -0.00000000  0.68D-09  0.20D-09  3308.75
    7     6     6     1.08540315    -0.51905274-24985.23105005    -0.00000003    -0.00000000  0.69D-09  0.20D-09  3308.75
    7     7     7     1.08287893    -0.51572218-24985.18653770    -0.00000000    -0.00000002  0.49D-08  0.36D-08  3308.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   0.6%  78.9%
 P   0.2%   8.3%   4.3%

 Initialization:   0.5%
 Other:            4.8%

 Total CPU:     3308.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9287381   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0378489
 222222/00000\222000          -0.0447933   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.9167835
 222222/000\00222000          -0.0000000  -0.0000000  -0.0000000   0.8827107   0.0000000   0.0000000  -0.0000000
 222222/00\000222000          -0.0000000  -0.0000000   0.8827107   0.0000000   0.0000000   0.0000000  -0.0000000
 222222/0\0000222000          -0.0000000   0.8827104   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222/\00000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8826004   0.0139565  -0.0000000
 222222/0000\0222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0139565   0.8826004   0.0000000
 2222220000000222/0\          -0.0000000   0.0000000  -0.3103629   0.0000000   0.0000000   0.0000000  -0.0000000
 22222200000002220/\          -0.0000000  -0.0000000  -0.0000000  -0.3103629  -0.0000000   0.0000000  -0.0000000
 2222220000000222/\0          -0.0000000  -0.3103629   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222220000000222200          -0.1172552  -0.0000000  -0.0000000  -0.0000000  -0.2533786  -0.0040067  -0.0830246
 2222220000000222020          -0.1172552  -0.0000000   0.0000000  -0.0000000   0.1232194   0.2214356  -0.0830246
 2222220000000222002          -0.1172552   0.0000000  -0.0000000   0.0000000   0.1301592  -0.2174290  -0.0830246
 2222220/00\00222000          -0.0000000   0.0000000  -0.0000000   0.1542672  -0.0000000   0.0000000  -0.0000000
 2222220/000\0222000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0024391   0.1542480  -0.0000000
 2222220000002222000          -0.0087422  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1435932
 22222200/00\0222000          -0.0000000   0.1335996   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222000/\00222000           0.0000000  -0.1335996  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222000/0\0222000           0.0000000  -0.0000000  -0.1335993  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22222200/0\00222000           0.0000000  -0.0000000  -0.1335993  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22222200/\000222000          -0.0000000  -0.0000000   0.0000000  -0.1335993  -0.0000000  -0.0000000   0.0000000
 2222220200000222000          -0.0511831   0.0000000   0.0000000  -0.0000000  -0.1090697  -0.0017247   0.0849739
 2222220000020222000          -0.0511831  -0.0000000  -0.0000000  -0.0000000   0.1090697   0.0017247   0.0849739
 2222220000200222000          -0.0511831   0.0000000  -0.0000000   0.0000000   0.1090697   0.0017247   0.0849738
 2222220002000222000          -0.0511830   0.0000000  -0.0000000   0.0000000  -0.0530412  -0.0953195   0.0849738
 2222220020000222000          -0.0511830   0.0000000   0.0000000   0.0000000  -0.0560285   0.0935948   0.0849738
 2222220/\0000222000           0.0000000  -0.0771338  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/0\000222000           0.0000000  -0.0000000  -0.0771336  -0.0000000  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956720    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.059061
 2           0.000000   -0.000000    0.000000    0.000000    0.957923    0.000000    0.000000
 3           0.000000   -0.000000    0.957923   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.957923   -0.000000   -0.000000    0.000000
 5          -0.000000    0.898572    0.000000    0.000000    0.000000    0.331941    0.000000
 6           0.000000   -0.331941    0.000000    0.000000   -0.000000    0.898572   -0.000000
 7           0.062023   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956744

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958540    0.000000    0.000000    0.000000   -0.000000    0.000000    0.001477
 2           0.000000    0.957923   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.957923    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.957923   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.957923    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.957923   -0.000000
 7           0.001477    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958751


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95671967 (fixed)   0.95863558 (relaxed)   0.95853981 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00532143   -0.01033162   -0.44961352
 Singles      0.02037814   -0.06552823   -0.06994706
 Pairs        0.06267828    0.03216898   -0.00038122
 Total        1.08837785   -0.04369087   -0.51994181
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.79267772
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.65349300
 One electron energy               -33999.65438894
 Two electron energy                 9014.34128143
 Virial quotient                       -0.57456451
 Correlation energy                    -0.52042979
 !MRCI STATE 1.1 Energy              -24985.3131075104    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.35910198 (Davidson, fixed reference)
 Cluster corrected energies        -24985.35898881 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.35910198 (Davidson, rotated reference)

 Cluster corrected energies        -24985.35761572 (Pople, fixed reference)
 Cluster corrected energies        -24985.35749809 (Pople, relaxed reference)
 Cluster corrected energies        -24985.35761572 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95792264 (fixed)   0.95814932 (relaxed)   0.95792264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403273   -0.00753355   -0.42022258
 Singles      0.02094286   -0.06319547   -0.06796428
 Pairs        0.06480514   -0.00000000   -0.03086588
 Total        1.08978072   -0.07072902   -0.51905274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71199731
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.18270811
 One electron energy               -34000.01403572
 Two electron energy                 9014.78298567
 Virial quotient                       -0.57456884
 Correlation energy                    -0.51905274
 !MRCI STATE 2.1 Energy              -24985.2310500503    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.27765098 (Davidson, fixed reference)
 Cluster corrected energies        -24985.27738337 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.27765098 (Davidson, rotated reference)

 Cluster corrected energies        -24985.27619839 (Pople, fixed reference)
 Cluster corrected energies        -24985.27591965 (Pople, relaxed reference)
 Cluster corrected energies        -24985.27619839 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95792284 (fixed)   0.95814952 (relaxed)   0.95792284 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403274   -0.00753355   -0.42022310
 Singles      0.02094257   -0.06319510   -0.06796423
 Pairs        0.06480497   -0.00000000   -0.03086542
 Total        1.08978028   -0.07072865   -0.51905274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71199731
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.18272115
 One electron energy               -34000.01384788
 Two electron energy                 9014.78279783
 Virial quotient                       -0.57456884
 Correlation energy                    -0.51905274
 !MRCI STATE 3.1 Energy              -24985.2310500499    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.27765075 (Davidson, fixed reference)
 Cluster corrected energies        -24985.27738314 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.27765075 (Davidson, rotated reference)

 Cluster corrected energies        -24985.27619815 (Pople, fixed reference)
 Cluster corrected energies        -24985.27591941 (Pople, relaxed reference)
 Cluster corrected energies        -24985.27619815 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95792284 (fixed)   0.95814952 (relaxed)   0.95792284 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403274   -0.00753355   -0.42022309
 Singles      0.02094258   -0.06319511   -0.06796423
 Pairs        0.06480497   -0.00000000   -0.03086542
 Total        1.08978029   -0.07072866   -0.51905274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71199731
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.18272185
 One electron energy               -34000.01384940
 Two electron energy                 9014.78279935
 Virial quotient                       -0.57456884
 Correlation energy                    -0.51905274
 !MRCI STATE 4.1 Energy              -24985.2310500497    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.27765075 (Davidson, fixed reference)
 Cluster corrected energies        -24985.27738314 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.27765075 (Davidson, rotated reference)

 Cluster corrected energies        -24985.27619815 (Pople, fixed reference)
 Cluster corrected energies        -24985.27591941 (Pople, relaxed reference)
 Cluster corrected energies        -24985.27619815 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.89857197 (fixed)   0.95814951 (relaxed)   0.95792283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403274   -0.00753355   -0.42022307
 Singles      0.02094258   -0.06319513   -0.06796423
 Pairs        0.06480497   -0.00000000   -0.03086544
 Total        1.08978029   -0.07072867   -0.51905274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71199731
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.18272030
 One electron energy               -34000.01384928
 Two electron energy                 9014.78279923
 Virial quotient                       -0.57456884
 Correlation energy                    -0.51905274
 !MRCI STATE 5.1 Energy              -24985.2310500494    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.27765075 (Davidson, fixed reference)
 Cluster corrected energies        -24985.27738314 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.27765075 (Davidson, rotated reference)

 Cluster corrected energies        -24985.27619815 (Pople, fixed reference)
 Cluster corrected energies        -24985.27591941 (Pople, relaxed reference)
 Cluster corrected energies        -24985.27619815 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.89857197 (fixed)   0.95814951 (relaxed)   0.95792283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403274   -0.00753355   -0.42022307
 Singles      0.02094259   -0.06319513   -0.06796423
 Pairs        0.06480497    0.00000000   -0.03086544
 Total        1.08978029   -0.07072867   -0.51905274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71199731
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.18272263
 One electron energy               -34000.01385323
 Two electron energy                 9014.78280319
 Virial quotient                       -0.57456884
 Correlation energy                    -0.51905274
 !MRCI STATE 6.1 Energy              -24985.2310500485    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.27765076 (Davidson, fixed reference)
 Cluster corrected energies        -24985.27738314 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.27765076 (Davidson, rotated reference)

 Cluster corrected energies        -24985.27619816 (Pople, fixed reference)
 Cluster corrected energies        -24985.27591941 (Pople, relaxed reference)
 Cluster corrected energies        -24985.27619816 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95674371 (fixed)   0.95881466 (relaxed)   0.95875082 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00463568   -0.00934648   -0.01180150
 Singles      0.02107570   -0.06459458   -0.06937017
 Pairs        0.06218743   -0.44067948   -0.43455050
 Total        1.08789881   -0.51462054   -0.51572218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67130349
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.23124459
 One electron energy               -33990.44654001
 Two electron energy                 9005.26000231
 Virial quotient                       -0.57456718
 Correlation energy                    -0.51523420
 !MRCI STATE 7.1 Energy              -24985.1865376961    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.23182617 (Davidson, fixed reference)
 Cluster corrected energies        -24985.23175153 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.23182617 (Davidson, rotated reference)

 Cluster corrected energies        -24985.23034508 (Pople, fixed reference)
 Cluster corrected energies        -24985.23026756 (Pople, relaxed reference)
 Cluster corrected energies        -24985.23034508 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      309.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      294.23       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3460.80   3394.65     19.41      2.57     43.99
 REAL TIME  *      3498.95 SEC
 DISK USED  *       604.00 MB (local),        3.81 GB (total)
 SF USED    *         3.09 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24985.35910198  AU                              
 SETTING HLSDIAG(2)     =    -24985.27765098  AU                              
 SETTING HLSDIAG(3)     =    -24985.27765075  AU                              
 SETTING HLSDIAG(4)     =    -24985.27765075  AU                              
 SETTING HLSDIAG(5)     =    -24985.27765075  AU                              
 SETTING HLSDIAG(6)     =    -24985.27765076  AU                              
 SETTING HLSDIAG(7)     =    -24985.23182617  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 88
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     131 (  68  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.72154314
     2    -24984.72154313
     3    -24984.72154313
     4    -24984.72154313
     5    -24984.72154313
     6    -24984.67790550
     7    -24984.65357754
     8    -24984.65357754
     9    -24984.65357754
    10    -24984.64857353
    11    -24984.64857353
    12    -24984.64857353
    13    -24984.64857353
    14    -24984.64857353
    15    -24984.64857353
    16    -24984.64857353

 Number of blocks in overlap matrix:  1423   Smallest eigenvalue:  0.96D+00
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       3213263
 Number of doubly external configurations:       6347122
 Total number of contracted configurations:      9620718
 Total number of uncontracted configurations:   40479159

 Diagonal Coupling coefficients finished.               Storage:  36605440 words, CPU-Time:    105.64 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2127615 words, CPU-time:      0.68 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.72154314    -0.00000000    -0.63617169  0.47D-01  0.98D-01   129.49
    1     2     2     1.00000000     0.00000000-24984.72154313    -0.00000000    -0.63617600  0.47D-01  0.98D-01   129.49
    1     3     3     1.00000000     0.00000000-24984.72154313    -0.00000000    -0.63618875  0.47D-01  0.98D-01   129.49
    1     4     4     1.00000000     0.00000000-24984.72154313     0.00000000    -0.63599472  0.47D-01  0.97D-01   129.49
    1     5     5     1.00000000     0.00000000-24984.72154313    -0.00000000    -0.63618516  0.47D-01  0.98D-01   129.49
    1     6     6     1.00000000     0.00000000-24984.67790550    -0.00000000    -0.61019771  0.42D-01  0.86D-01   129.49
    1     7     7     1.00000000     0.00000000-24984.65357754     0.00000000    -0.62016783  0.36D-01  0.97D-01   129.49
    1     8     8     1.00000000     0.00000000-24984.65357754     0.00000000    -0.62023422  0.35D-01  0.97D-01   129.49
    1     9     9     1.00000000     0.00000000-24984.65357754     0.00000000    -0.62028152  0.36D-01  0.97D-01   129.49
    1    10    10     1.00000000     0.00000000-24984.64857353     0.00000000    -0.63842033  0.42D-01  0.11D+00   129.49
    1    11    11     1.00000000     0.00000000-24984.64857353    -0.00000000    -0.63857392  0.42D-01  0.11D+00   129.49
    1    12    12     1.00000000     0.00000000-24984.64857353     0.00000000    -0.63861584  0.42D-01  0.11D+00   129.49
    1    13    13     1.00000000     0.00000000-24984.64857353    -0.00000000    -0.63864183  0.42D-01  0.11D+00   129.49
    1    14    14     1.00000000     0.00000000-24984.64857353     0.00000000    -0.63868563  0.42D-01  0.11D+00   129.49
    1    15    15     1.00000000     0.00000000-24984.64857353    -0.00000000    -0.63860301  0.42D-01  0.11D+00   129.49
    1    16    16     1.00000000     0.00000000-24984.64857353    -0.00000000    -0.63848329  0.42D-01  0.11D+00   129.49
    2     1     1     1.08986165    -0.51059834-24985.23214147    -0.51059834    -0.01188406  0.25D-02  0.14D-02  2608.39
    2     2     2     1.08989397    -0.51056299-24985.23210612    -0.51056299    -0.01193241  0.25D-02  0.14D-02  2608.39
    2     3     3     1.08989843    -0.51055948-24985.23210261    -0.51055948    -0.01193627  0.25D-02  0.14D-02  2608.39
    2     4     4     1.08991275    -0.51055336-24985.23209649    -0.51055336    -0.01194240  0.25D-02  0.14D-02  2608.39
    2     5     5     1.08991340    -0.51054955-24985.23209269    -0.51054955    -0.01194664  0.25D-02  0.14D-02  2608.39
    2     6     6     1.08449573    -0.50444205-24985.18234755    -0.50444205    -0.00907664  0.17D-02  0.96D-03  2608.39
    2     7     7     1.09195026    -0.50444944-24985.15802699    -0.50444944    -0.01136088  0.21D-02  0.16D-02  2608.39
    2     8     8     1.09196646    -0.50444440-24985.15802194    -0.50444440    -0.01137339  0.21D-02  0.16D-02  2608.39
    2     9     9     1.09199973    -0.50442052-24985.15799806    -0.50442052    -0.01139990  0.22D-02  0.16D-02  2608.39
    2    10    10     1.09201734    -0.50940092-24985.15797446    -0.50940092    -0.01143231  0.21D-02  0.17D-02  2608.39
    2    11    11     1.09207531    -0.50937350-24985.15794704    -0.50937350    -0.01146823  0.22D-02  0.17D-02  2608.39
    2    12    12     1.09208273    -0.50936547-24985.15793900    -0.50936547    -0.01148076  0.22D-02  0.17D-02  2608.39
    2    13    13     1.09208682    -0.50936352-24985.15793705    -0.50936352    -0.01148359  0.22D-02  0.17D-02  2608.39
    2    14    14     1.08486623    -0.50847217-24985.15704571    -0.50847217    -0.01035181  0.20D-02  0.14D-02  2608.39
    2    15    15     1.08485545    -0.50846534-24985.15703888    -0.50846534    -0.01036703  0.20D-02  0.14D-02  2608.39
    2    16    16     1.08489859    -0.50843839-24985.15701192    -0.50843839    -0.01039812  0.21D-02  0.14D-02  2608.39
    3     1     1     1.08509144    -0.52172674-24985.24326988    -0.01112840    -0.00024918  0.37D-04  0.37D-04  5064.04
    3     2     2     1.08509773    -0.52172554-24985.24326867    -0.01116255    -0.00025059  0.37D-04  0.38D-04  5064.04
    3     3     3     1.08509822    -0.52172552-24985.24326865    -0.01116604    -0.00025071  0.37D-04  0.38D-04  5064.04
    3     4     4     1.08509802    -0.52172522-24985.24326835    -0.01117186    -0.00025100  0.37D-04  0.38D-04  5064.04
    3     5     5     1.08509740    -0.52172508-24985.24326822    -0.01117553    -0.00025113  0.37D-04  0.38D-04  5064.04
    3     6     6     1.08221420    -0.51335629-24985.19126179    -0.00891424    -0.00018195  0.33D-04  0.23D-04  5064.04
    3     7     7     1.08684003    -0.51512958-24985.16870712    -0.01068013    -0.00022832  0.32D-04  0.40D-04  5064.04
    3     8     8     1.08684340    -0.51512866-24985.16870620    -0.01068426    -0.00022968  0.32D-04  0.40D-04  5064.04
    3     9     9     1.08683761    -0.51512862-24985.16870616    -0.01070810    -0.00022903  0.32D-04  0.40D-04  5064.04
    3    10    10     1.08684574    -0.52013058-24985.16870411    -0.01072966    -0.00023151  0.32D-04  0.41D-04  5064.04
    3    11    11     1.08685022    -0.52012970-24985.16870323    -0.01075619    -0.00023290  0.32D-04  0.41D-04  5064.04
    3    12    12     1.08685079    -0.52012967-24985.16870321    -0.01076420    -0.00023293  0.32D-04  0.41D-04  5064.04
    3    13    13     1.08684921    -0.52012955-24985.16870308    -0.01076603    -0.00023252  0.32D-04  0.41D-04  5064.04
    3    14    14     1.08128730    -0.51828787-24985.16686140    -0.00981569    -0.00023124  0.24D-04  0.43D-04  5064.04
    3    15    15     1.08128785    -0.51828752-24985.16686106    -0.00982218    -0.00023236  0.24D-04  0.44D-04  5064.04
    3    16    16     1.08128715    -0.51828593-24985.16685946    -0.00984754    -0.00023362  0.24D-04  0.44D-04  5064.04
    4     1     1     1.08583967    -0.52198314-24985.24352628    -0.00025640    -0.00000843  0.34D-05  0.85D-06  7524.24
    4     2     2     1.08583941    -0.52198312-24985.24352626    -0.00025759    -0.00000845  0.34D-05  0.86D-06  7524.24
    4     3     3     1.08583937    -0.52198312-24985.24352625    -0.00025760    -0.00000845  0.34D-05  0.86D-06  7524.24
    4     4     4     1.08583979    -0.52198306-24985.24352620    -0.00025785    -0.00000843  0.34D-05  0.85D-06  7524.24
    4     5     5     1.08583937    -0.52198300-24985.24352613    -0.00025791    -0.00000843  0.34D-05  0.85D-06  7524.24
    4     6     6     1.08280468    -0.51354883-24985.19145433    -0.00019254    -0.00000524  0.17D-05  0.60D-06  7524.24
    4     7     7     1.08746500    -0.51536685-24985.16894440    -0.00023728    -0.00000735  0.30D-05  0.91D-06  7524.24
    4     8     8     1.08746414    -0.51536670-24985.16894424    -0.00023804    -0.00000742  0.30D-05  0.93D-06  7524.24
    4     9     9     1.08746401    -0.51536669-24985.16894423    -0.00023808    -0.00000742  0.30D-05  0.93D-06  7524.24
    4    10    10     1.08746498    -0.52037052-24985.16894405    -0.00023994    -0.00000729  0.30D-05  0.91D-06  7524.24
    4    11    11     1.08746423    -0.52037028-24985.16894382    -0.00024059    -0.00000736  0.30D-05  0.91D-06  7524.24
    4    12    12     1.08746367    -0.52037025-24985.16894379    -0.00024058    -0.00000740  0.30D-05  0.92D-06  7524.24
    4    13    13     1.08746388    -0.52037023-24985.16894377    -0.00024069    -0.00000742  0.30D-05  0.93D-06  7524.24
    4    14    14     1.08211709    -0.51852776-24985.16710129    -0.00023989    -0.00000821  0.35D-05  0.99D-06  7524.24
    4    15    15     1.08211789    -0.51852740-24985.16710093    -0.00023988    -0.00000818  0.35D-05  0.98D-06  7524.24
    4    16    16     1.08211578    -0.51852732-24985.16710086    -0.00024140    -0.00000826  0.35D-05  0.10D-05  7524.24
    5     1     1     1.08594445    -0.52199195-24985.24353508    -0.00000881    -0.00000036  0.83D-07  0.57D-07  9967.63
    5     2     2     1.08594441    -0.52199194-24985.24353508    -0.00000882    -0.00000037  0.83D-07  0.57D-07  9967.63
    5     3     3     1.08594442    -0.52199194-24985.24353508    -0.00000882    -0.00000037  0.84D-07  0.57D-07  9967.63
    5     4     4     1.08594379    -0.52199186-24985.24353500    -0.00000880    -0.00000037  0.84D-07  0.57D-07  9967.63
    5     5     5     1.08594384    -0.52199180-24985.24353493    -0.00000880    -0.00000037  0.84D-07  0.57D-07  9967.63
    5     6     6     1.08282944    -0.51355423-24985.19145973    -0.00000540    -0.00000019  0.39D-07  0.31D-07  9967.63
    5     7     7     1.08753841    -0.51537468-24985.16895222    -0.00000783    -0.00000032  0.76D-07  0.56D-07  9967.63
    5     8     8     1.08753886    -0.51537459-24985.16895214    -0.00000790    -0.00000032  0.76D-07  0.57D-07  9967.63
    5     9     9     1.08753882    -0.51537459-24985.16895214    -0.00000790    -0.00000032  0.76D-07  0.57D-07  9967.63
    5    10    10     1.08753781    -0.52037830-24985.16895183    -0.00000778    -0.00000032  0.76D-07  0.56D-07  9967.63
    5    11    11     1.08753839    -0.52037814-24985.16895167    -0.00000785    -0.00000032  0.76D-07  0.57D-07  9967.63
    5    12    12     1.08753847    -0.52037814-24985.16895167    -0.00000788    -0.00000033  0.76D-07  0.57D-07  9967.63
    5    13    13     1.08753790    -0.52037814-24985.16895167    -0.00000790    -0.00000033  0.76D-07  0.57D-07  9967.63
    5    14    14     1.08219876    -0.51853651-24985.16711004    -0.00000875    -0.00000037  0.84D-07  0.64D-07  9967.63
    5    15    15     1.08219848    -0.51853613-24985.16710966    -0.00000873    -0.00000037  0.84D-07  0.64D-07  9967.63
    5    16    16     1.08219857    -0.51853613-24985.16710966    -0.00000880    -0.00000037  0.85D-07  0.64D-07  9967.63
    6     1     1     1.08594552    -0.52199236-24985.24353549    -0.00000041    -0.00000002  0.68D-08  0.21D-08 12415.73
    6     2     2     1.08594553    -0.52199235-24985.24353549    -0.00000041    -0.00000002  0.68D-08  0.21D-08 12415.73
    6     3     3     1.08594553    -0.52199235-24985.24353549    -0.00000041    -0.00000002  0.68D-08  0.21D-08 12415.73
    6     4     4     1.08594499    -0.52199227-24985.24353541    -0.00000041    -0.00000002  0.67D-08  0.21D-08 12415.73
    6     5     5     1.08594495    -0.52199221-24985.24353534    -0.00000041    -0.00000002  0.67D-08  0.21D-08 12415.73
    6     6     6     1.08281909    -0.51355443-24985.19145993    -0.00000020    -0.00000001  0.26D-08  0.84D-09 12415.73
    6     7     7     1.08753614    -0.51537505-24985.16895260    -0.00000037    -0.00000002  0.43D-08  0.20D-08 12415.73
    6     8     8     1.08753634    -0.51537497-24985.16895251    -0.00000037    -0.00000002  0.44D-08  0.21D-08 12415.73
    6     9     9     1.08753634    -0.51537497-24985.16895251    -0.00000037    -0.00000002  0.44D-08  0.21D-08 12415.73
    6    10    10     1.08753567    -0.52037867-24985.16895220    -0.00000037    -0.00000001  0.42D-08  0.20D-08 12415.73
    6    11    11     1.08753595    -0.52037851-24985.16895205    -0.00000037    -0.00000002  0.44D-08  0.21D-08 12415.73
    6    12    12     1.08753590    -0.52037851-24985.16895205    -0.00000037    -0.00000002  0.43D-08  0.20D-08 12415.73
    6    13    13     1.08753607    -0.52037851-24985.16895205    -0.00000038    -0.00000002  0.44D-08  0.21D-08 12415.73
    6    14    14     1.08218837    -0.51853693-24985.16711046    -0.00000042    -0.00000002  0.39D-08  0.24D-08 12415.73
    6    15    15     1.08218813    -0.51853655-24985.16711008    -0.00000042    -0.00000002  0.39D-08  0.23D-08 12415.73
    6    16    16     1.08218815    -0.51853655-24985.16711008    -0.00000042    -0.00000002  0.39D-08  0.24D-08 12415.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.1%
 S   0.4%  76.7%
 P   0.2%   9.7%   4.8%

 Initialization:   0.9%
 Other:            5.2%

 Total CPU:    12415.7 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000           0.0000000   0.0000000   0.0000000  -0.0000024   0.0000000   0.9588458  -0.0000000  -0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/000/0222000          -0.0000000  -0.0000000   0.0000000   0.0000001   0.0000356   0.0000000  -0.0000000   0.0000000
                               0.0000000   0.9575342   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220/00/00222000           0.0000373   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9575338  -0.0000000
                              -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000476  -0.0000000   0.0000000  -0.0000000
 222222/000/00222000           0.9574652  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000413  -0.0000000
                              -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 222222/0/0000222000           0.0000000   0.9574652  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000255
                               0.0000000  -0.0000000  -0.0000000   0.0000289  -0.0000000  -0.0000000   0.0000000  -0.0000001
 222222/00/000222000           0.0000000   0.0000000   0.9574652  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                              -0.0000255  -0.0000000   0.0000289   0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000
 222222/0000/0222000           0.0000000   0.0000000   0.0000000   0.0016003   0.9574640  -0.0000000   0.0000000   0.0000000
                              -0.0000000  -0.0000395  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222//00000222000          -0.0000000   0.0000000   0.0000000   0.9574639  -0.0016003   0.0000027   0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 22222200//000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000426   0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0000000   0.8565737  -0.3173250   0.0000000  -0.0000000
 22222200/00/0222000           0.0000000  -0.0000303  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7040475
                              -0.0000000  -0.0000000   0.0000000   0.4876879  -0.0000000  -0.0000000  -0.0000000   0.3176334
 222222000/0/0222000          -0.0000000  -0.0000000   0.0000303  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                               0.7039668  -0.0000000  -0.4878044   0.0000000   0.0000000   0.0000000  -0.3176335   0.0000000
 22222200/0/00222000           0.0000000  -0.0000000  -0.0000003  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.6482733   0.0000000  -0.5598359   0.0000000  -0.0000000  -0.0000000  -0.3173941   0.0000000
 222222000//00222000           0.0000000  -0.0000003  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.6481807
                               0.0000000   0.0000000   0.0000000  -0.5599431  -0.0000000   0.0000000  -0.0000000  -0.3173941
 22222200000002220//          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0002599   0.6452892  -0.0000000   0.0000000
 2222220000000222//0          -0.0000000   0.0000001   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0001025
                              -0.0000000   0.0000000  -0.0000000   0.0002006  -0.0000000   0.0000000   0.0000000   0.6452880
 2222220000000222/0/           0.0000000  -0.0000000   0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                               0.0001025   0.0000000   0.0002006   0.0000000   0.0000000   0.0000000   0.6452880  -0.0000000
 2222220000//0222000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000213  -0.0000000
                               0.0000000   0.0000000   0.0000000   0.0000000  -0.4279638  -0.6355194   0.0000000   0.0000000
 2222220/0/000222000          -0.0000000   0.0000000  -0.0000173  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.0323020  -0.0000000   0.6045678   0.0000000   0.0000000   0.0000000  -0.5504107   0.0000000
 2222220//0000222000          -0.0000000  -0.0000173  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0324019
                               0.0000000   0.0000000  -0.0000000   0.6045625  -0.0000000  -0.0000000  -0.0000000  -0.5504107

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.957452    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000035    0.000000    0.000000    0.000000   -0.000013   -0.000000
 2           0.000000   -0.000000    0.957452   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000029   -0.000000   -0.000000   -0.000000    0.000020
 3           0.000000    0.000000   -0.000000    0.000000    0.957452    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000004    0.000035    0.000000    0.000000
 4           0.414146   -0.000000    0.000000    0.863248   -0.000000   -0.000002   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.863248   -0.000000   -0.000000   -0.414146   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000036
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 6           0.000001   -0.000000    0.000000    0.000002    0.000000    0.958846    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 7           0.000000   -0.000041    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.893877   -0.000000    0.000000   -0.000000   -0.343300   -0.000000
 8           0.000000   -0.000000    0.000026   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000153    0.000000
            -0.000000    0.930323    0.000000   -0.000000    0.000000    0.226650
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000026    0.000000    0.000153   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.784029    0.549699   -0.000000   -0.000000
 10         -0.000036    0.000000   -0.000000    0.000017   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957534
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 11         -0.000000    0.000000   -0.000000   -0.000000    0.000029   -0.000000    0.000300   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.549699   -0.784030    0.000000    0.000000
 12         -0.000000    0.000000    0.000029    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000300    0.000000
             0.000000    0.226650    0.000000   -0.000000   -0.000000   -0.930323
 13          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000389    0.000000   -0.000000
             0.343300   -0.000000   -0.000000    0.000000    0.893877    0.000000
 14         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.959564    0.000000    0.000000
             0.000139   -0.000000   -0.000000   -0.000000    0.000363    0.000000
 15          0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.959564   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000298    0.000157   -0.000000    0.000000
 16          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.959564   -0.000000
            -0.000000    0.000078   -0.000000    0.000000   -0.000000    0.000328

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957452    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000002    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.957452   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000001    0.000000   -0.000000
             0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.957452    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000001   -0.000000
             0.000001    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.957452   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.957452   -0.000000    0.000000    0.000000   -0.000000   -0.000002
             0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.958846    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 7          -0.000002    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957534   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000001    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957534   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000    0.000000   -0.000001   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957534   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000   -0.000002    0.000000    0.000000   -0.000000   -0.000000    0.957534
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 11          0.000000    0.000000    0.000001   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.957534    0.000000    0.000000    0.000000    0.000000   -0.000000
 12          0.000000    0.000001    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.957534   -0.000000   -0.000000    0.000000    0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.957534   -0.000000    0.000000   -0.000000
 14         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.959564    0.000000    0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.959564    0.000000
 16          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.959564

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00011493     1.08113840       2222220000000222011             

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00011496     1.08127498       2222220000000222101             

 Energy contributions of internal configurations for state 16
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00011496     1.08127089       2222220000000222110             


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95745167 (fixed)   0.95750123 (relaxed)   0.95745167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00451918   -0.00879144   -0.42179021
 Singles      0.02150387   -0.06424018   -0.06918513
 Pairs        0.06483006   -0.00000000   -0.03101702
 Total        1.09085311   -0.07303162   -0.52199236
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72154313
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.28337269
 One electron energy               -34001.09071549
 Two electron energy                 9015.84718000
 Virial quotient                       -0.57456780
 Correlation energy                    -0.52199236
 !MRCI STATE 1.1 Energy              -24985.2435354910    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.29096012 (Davidson, fixed reference)
 Cluster corrected energies        -24985.29090119 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.29096012 (Davidson, rotated reference)

 Cluster corrected energies        -24985.28885332 (Pople, fixed reference)
 Cluster corrected energies        -24985.28879284 (Pople, relaxed reference)
 Cluster corrected energies        -24985.28885332 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95745167 (fixed)   0.95750122 (relaxed)   0.95745167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00451918   -0.00879143   -0.42178142
 Singles      0.02150386   -0.06424018   -0.06918513
 Pairs        0.06483007   -0.00000958   -0.03102580
 Total        1.09085311   -0.07304119   -0.52199235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72154313
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.28337206
 One electron energy               -34001.09071308
 Two electron energy                 9015.84717760
 Virial quotient                       -0.57456780
 Correlation energy                    -0.52199235
 !MRCI STATE 2.1 Energy              -24985.2435354864    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.29096012 (Davidson, fixed reference)
 Cluster corrected energies        -24985.29090118 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.29096012 (Davidson, rotated reference)

 Cluster corrected energies        -24985.28885332 (Pople, fixed reference)
 Cluster corrected energies        -24985.28879284 (Pople, relaxed reference)
 Cluster corrected energies        -24985.28885332 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95745167 (fixed)   0.95750122 (relaxed)   0.95745167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00451918   -0.00879143   -0.42179020
 Singles      0.02150386   -0.06424018   -0.06918513
 Pairs        0.06483007    0.00000000   -0.03101702
 Total        1.09085312   -0.07303161   -0.52199235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72154313
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.28337209
 One electron energy               -34001.09071346
 Two electron energy                 9015.84717798
 Virial quotient                       -0.57456780
 Correlation energy                    -0.52199235
 !MRCI STATE 3.1 Energy              -24985.2435354863    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.29096012 (Davidson, fixed reference)
 Cluster corrected energies        -24985.29090119 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.29096012 (Davidson, rotated reference)

 Cluster corrected energies        -24985.28885332 (Pople, fixed reference)
 Cluster corrected energies        -24985.28879284 (Pople, relaxed reference)
 Cluster corrected energies        -24985.28885332 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.86324778 (fixed)   0.95750130 (relaxed)   0.95745175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00451951   -0.00879171   -0.42179086
 Singles      0.02150322   -0.06423962   -0.06918434
 Pairs        0.06483020    0.00000000   -0.03101707
 Total        1.09085293   -0.07303132   -0.52199227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72154313
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.28337229
 One electron energy               -34001.09070633
 Two electron energy                 9015.84717092
 Virial quotient                       -0.57456780
 Correlation energy                    -0.52199227
 !MRCI STATE 4.1 Energy              -24985.2435354055    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.29095993 (Davidson, fixed reference)
 Cluster corrected energies        -24985.29090100 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.29095993 (Davidson, rotated reference)

 Cluster corrected energies        -24985.28885313 (Pople, fixed reference)
 Cluster corrected energies        -24985.28879265 (Pople, relaxed reference)
 Cluster corrected energies        -24985.28885313 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86324784 (fixed)   0.95750137 (relaxed)   0.95745182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00451941   -0.00879163   -0.42179077
 Singles      0.02150321   -0.06423967   -0.06918436
 Pairs        0.06483016    0.00000000   -0.03101708
 Total        1.09085278   -0.07303129   -0.52199221
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72154313
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.28337229
 One electron energy               -34001.09070184
 Two electron energy                 9015.84716650
 Virial quotient                       -0.57456780
 Correlation energy                    -0.52199221
 !MRCI STATE 5.1 Energy              -24985.2435353401    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.29095978 (Davidson, fixed reference)
 Cluster corrected energies        -24985.29090085 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.29095978 (Davidson, rotated reference)

 Cluster corrected energies        -24985.28885298 (Pople, fixed reference)
 Cluster corrected energies        -24985.28879250 (Pople, relaxed reference)
 Cluster corrected energies        -24985.28885298 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95884582 (fixed)   0.95884582 (relaxed)   0.95884582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00449213   -0.00936552   -0.41498786
 Singles      0.02166506   -0.06448604   -0.06951954
 Pairs        0.06152606    0.00000000   -0.02904703
 Total        1.08768325   -0.07385156   -0.51355443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67790550
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.17437137
 One electron energy               -33989.23540621
 Two electron energy                 9004.04394628
 Virial quotient                       -0.57456804
 Correlation energy                    -0.51355443
 !MRCI STATE 6.1 Energy              -24985.1914599334    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.23649006 (Davidson, fixed reference)
 Cluster corrected energies        -24985.23649006 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.23649006 (Davidson, rotated reference)

 Cluster corrected energies        -24985.23437875 (Pople, fixed reference)
 Cluster corrected energies        -24985.23437875 (Pople, relaxed reference)
 Cluster corrected energies        -24985.23437875 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.89387714 (fixed)   0.95753383 (relaxed)   0.95753383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287788   -0.00602477   -0.41941977
 Singles      0.01965602   -0.05941139   -0.06376547
 Pairs        0.06813204    0.00000000   -0.03218981
 Total        1.09066594   -0.06543615   -0.51537505
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857353
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89299298
 One electron energy               -34002.52290779
 Two electron energy                 9017.35395520
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037906
 !MRCI STATE 7.1 Energy              -24985.1689525966    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613325 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613325 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613325 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21403041 (Pople, fixed reference)
 Cluster corrected energies        -24985.21403041 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21403041 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93032289 (fixed)   0.95753378 (relaxed)   0.95753378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287780   -0.00602460   -0.32068552
 Singles      0.01965627   -0.05941160   -0.06376578
 Pairs        0.06813198   -0.10768571   -0.13092367
 Total        1.09066605   -0.17312190   -0.51537497
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857353
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89298438
 One electron energy               -34002.52293931
 Two electron energy                 9017.35398680
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037897
 !MRCI STATE 8.1 Energy              -24985.1689525090    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613322 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613322 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613322 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21403038 (Pople, fixed reference)
 Cluster corrected energies        -24985.21403038 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21403038 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.78402949 (fixed)   0.95753378 (relaxed)   0.95753378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287780   -0.00602460   -0.41941941
 Singles      0.01965627   -0.05941160   -0.06376578
 Pairs        0.06813199    0.00000000   -0.03218978
 Total        1.09066605   -0.06543620   -0.51537497
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857353
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89298243
 One electron energy               -34002.52293418
 Two electron energy                 9017.35398167
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037897
 !MRCI STATE 9.1 Energy              -24985.1689525090    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613322 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613322 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613322 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21403038 (Pople, fixed reference)
 Cluster corrected energies        -24985.21403038 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21403038 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95753416 (fixed)   0.95753416 (relaxed)   0.95753416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287761   -0.00602460   -0.42402113
 Singles      0.01965545   -0.05941104   -0.06385510
 Pairs        0.06813211   -0.00000000   -0.03250244
 Total        1.09066517   -0.06543564   -0.52037867
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857353
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89297515
 One electron energy               -34002.52279141
 Two electron energy                 9017.35383921
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037867
 !MRCI STATE 10.1 Energy             -24985.1689522031    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613242 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613242 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613242 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21402958 (Pople, fixed reference)
 Cluster corrected energies        -24985.21402958 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21402958 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.78402986 (fixed)   0.95753416 (relaxed)   0.95753416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287736   -0.00602427   -0.42402048
 Singles      0.01965584   -0.05941145   -0.06385566
 Pairs        0.06813198    0.00000000   -0.03250237
 Total        1.09066518   -0.06543572   -0.52037851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857354
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89297311
 One electron energy               -34002.52291277
 Two electron energy                 9017.35396073
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037851
 !MRCI STATE 11.1 Energy             -24985.1689520463    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613226 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613226 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613226 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21402941 (Pople, fixed reference)
 Cluster corrected energies        -24985.21402941 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21402941 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.93032321 (fixed)   0.95753418 (relaxed)   0.95753418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287735   -0.00602427   -0.82929101
 Singles      0.01965585   -0.05941140   -0.06385564
 Pairs        0.06813193    0.44201437    0.37276815
 Total        1.09066513    0.37657870   -0.52037851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857354
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89299212
 One electron energy               -34002.52296139
 Two electron energy                 9017.35400934
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037851
 !MRCI STATE 12.1 Energy             -24985.1689520462    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613223 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613223 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613223 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21402939 (Pople, fixed reference)
 Cluster corrected energies        -24985.21402939 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21402939 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.89387734 (fixed)   0.95753411 (relaxed)   0.95753411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287735   -0.00602422   -0.42402035
 Singles      0.01965599   -0.05941154   -0.06385582
 Pairs        0.06813195    0.00000000   -0.03250233
 Total        1.09066528   -0.06543576   -0.52037851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64857354
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.89298425
 One electron energy               -34002.52298691
 Two electron energy                 9017.35403486
 Virial quotient                       -0.57457124
 Correlation energy                    -0.52037851
 !MRCI STATE 13.1 Energy             -24985.1689520458    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21613231 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21613231 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21613231 (Davidson, rotated reference)

 Cluster corrected energies        -24985.21402947 (Pople, fixed reference)
 Cluster corrected energies        -24985.21402947 (Pople, relaxed reference)
 Cluster corrected energies        -24985.21402947 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95956351 (fixed)   0.95967602 (relaxed)   0.95956359 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00357450   -0.00699536   -0.42513534
 Singles      0.01730471   -0.05866938   -0.06228660
 Pairs        0.06517744   -0.00000000   -0.03111499
 Total        1.08605666   -0.06566474   -0.51853693
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65357754
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.87890742
 One electron energy               -33997.86217573
 Two electron energy                 9012.69506527
 Virial quotient                       -0.57457139
 Correlation energy                    -0.51353292
 !MRCI STATE 14.1 Energy             -24985.1671104608    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21130339 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21117271 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21130339 (Davidson, rotated reference)

 Cluster corrected energies        -24985.20917566 (Pople, fixed reference)
 Cluster corrected energies        -24985.20904260 (Pople, relaxed reference)
 Cluster corrected energies        -24985.20917566 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95956378 (fixed)   0.95967630 (relaxed)   0.95956383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00357421   -0.00699510   -0.42513523
 Singles      0.01730447   -0.05866920   -0.06228637
 Pairs        0.06517742   -0.00000000   -0.03111495
 Total        1.08605610   -0.06566430   -0.51853655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65357754
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.87889311
 One electron energy               -33997.86216357
 Two electron energy                 9012.69505348
 Virial quotient                       -0.57457139
 Correlation energy                    -0.51353254
 !MRCI STATE 15.1 Energy             -24985.1671100843    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21130269 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21117198 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21130269 (Davidson, rotated reference)

 Cluster corrected energies        -24985.20917496 (Pople, fixed reference)
 Cluster corrected energies        -24985.20904187 (Pople, relaxed reference)
 Cluster corrected energies        -24985.20917496 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95956377 (fixed)   0.95967629 (relaxed)   0.95956383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00357420   -0.00699509   -0.42499205
 Singles      0.01730446   -0.05866926   -0.06228639
 Pairs        0.06517746   -0.00015542   -0.03125811
 Total        1.08605612   -0.06581978   -0.51853655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65357754
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.87888361
 One electron energy               -33997.86213256
 Two electron energy                 9012.69502248
 Virial quotient                       -0.57457139
 Correlation energy                    -0.51353254
 !MRCI STATE 16.1 Energy             -24985.1671100837    

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.21130270 (Davidson, fixed reference)
 Cluster corrected energies        -24985.21117199 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.21130270 (Davidson, rotated reference)

 Cluster corrected energies        -24985.20917497 (Pople, fixed reference)
 Cluster corrected energies        -24985.20904188 (Pople, relaxed reference)
 Cluster corrected energies        -24985.20917497 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      309.64       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1489.06       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     17960.03  14499.23   3394.65     19.41      2.57     43.99
 REAL TIME  *     18118.86 SEC
 DISK USED  *         1.76 GB (local),       10.81 GB (total)
 SF USED    *        12.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =    -24985.29096012  AU                              
 SETTING HLSDIAG(9)     =    -24985.29096012  AU                              
 SETTING HLSDIAG(10)    =    -24985.29096012  AU                              
 SETTING HLSDIAG(11)    =    -24985.29095993  AU                              
 SETTING HLSDIAG(12)    =    -24985.29095978  AU                              
 SETTING HLSDIAG(13)    =    -24985.23649006  AU                              
 SETTING HLSDIAG(14)    =    -24985.21613325  AU                              
 SETTING HLSDIAG(15)    =    -24985.21613322  AU                              
 SETTING HLSDIAG(16)    =    -24985.21613322  AU                              
 SETTING HLSDIAG(17)    =    -24985.21613242  AU                              
 SETTING HLSDIAG(18)    =    -24985.21613226  AU                              
 SETTING HLSDIAG(19)    =    -24985.21613223  AU                              
 SETTING HLSDIAG(20)    =    -24985.21613231  AU                              
 SETTING HLSDIAG(21)    =    -24985.21130339  AU                              
 SETTING HLSDIAG(22)    =    -24985.21130269  AU                              
 SETTING HLSDIAG(23)    =    -24985.21130270  AU                              


         HLSDIAG
    -24985.35910
    -24985.27765
    -24985.27765
    -24985.27765
    -24985.27765
    -24985.27765
    -24985.23183
    -24985.29096
    -24985.29096
    -24985.29096
    -24985.29096
    -24985.29096
    -24985.23649
    -24985.21613
    -24985.21613
    -24985.21613
    -24985.21613
    -24985.21613
    -24985.21613
    -24985.21613
    -24985.21130
    -24985.21130
    -24985.21130
                                                  

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

 Time for Seward_LS:     643.17 sec

 CPU time:    643.17 sec, REAL time:    669.93 sec


 SORTLS1 read    87536515. and wrote    87536515. SO integrals in   342 records. CPU time:      0.67 sec, REAL time:      1.18 sec
 SORTLS2 read    87536515. and wrote   434543664. SO integrals in    18 records. CPU time:      0.30 sec, REAL time:      1.07 sec

 FILE SIZES: FILE 1:   324.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   324.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      309.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1489.06       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     18606.70    646.65  14499.23   3394.65     19.41      2.57     43.99
 REAL TIME  *     18793.63 SEC
 DISK USED  *         1.76 GB (local),       15.18 GB (total)
 SF USED    *        12.18 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies: -24985.313108 -24985.231050 -24985.231050 -24985.231050 -24985.231050 -24985.231050 -24985.186538
 Replaced energies: -24985.359102 -24985.277651 -24985.277651 -24985.277651 -24985.277651 -24985.277651 -24985.231826

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -24985.243535 -24985.243535 -24985.243535 -24985.243535 -24985.243535 -24985.191460 -24985.168953 -24985.168953
                    -24985.168953 -24985.168952 -24985.168952 -24985.168952 -24985.168952 -24985.167110 -24985.167110 -24985.167110
 Replaced energies: -24985.290960 -24985.290960 -24985.290960 -24985.290960 -24985.290960 -24985.236490 -24985.216133 -24985.216133
                    -24985.216133 -24985.216132 -24985.216132 -24985.216132 -24985.216132 -24985.211303 -24985.211303 -24985.211303



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24985.35910198

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00

    2   2.1  0.0  0.0       0.00   17876.43       0.00       0.00       0.00       0.00       0.00     110.86      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00   17876.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     110.86      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   17876.48       0.00       0.00       0.00       0.00    -110.86       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -110.86

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   17876.48       0.00       0.00       0.00      -0.00     193.54
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     190.04       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   17876.48       0.00      -0.00      -0.00    -107.73
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     113.79      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27933.81      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00     110.86       0.00       0.00       0.00      -0.00      -0.00   14955.41       0.00       0.00
                            0.00      -0.00    -110.86      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    9   2.1  1.0  1.0      -0.00      -0.00       0.00    -110.86      -0.00      -0.00       0.00       0.00   14955.41       0.00
                            0.01       0.00       0.00       0.00    -190.04    -113.79      -0.00       0.00       0.00     147.17

   10   3.1  1.0  1.0      -0.01      -0.00       0.00       0.00     193.54    -107.73       0.00       0.00       0.00   14955.41
                            0.00       0.00       0.00     110.86      -0.00       0.00      -0.00       0.00    -147.17       0.00

   11   4.1  1.0  1.0       0.00       0.00    -191.78      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     192.16       0.00       0.00       0.00      -0.00      -0.00      -0.49       0.00       0.00

   12   5.1  1.0  1.0      -0.00       0.00     111.16      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00     110.52      -0.00       0.00       0.00      -0.00      -0.00    -294.28       0.00       0.00

   13   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00     -29.74      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      29.74      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00      -0.00     -36.79      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.00      -0.00      -0.00       1.15      36.08      -0.04       0.00       0.00       0.75

   16   9.1  1.0  1.0      -0.07      -0.00       0.00      -0.00       2.28     -36.03      -0.04       0.00       0.00       0.00
                            0.00       0.00      -0.00     -36.79      -0.00      -0.00       0.00      -0.00       0.75       0.00

   17  10.1  1.0  1.0       0.00      -0.00     -29.73       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     -29.73      -0.00       0.00      -0.00       0.00       0.00     -10.36      -0.00       0.00

   18  11.1  1.0  1.0      -0.15       0.00      -0.00      -0.00     -32.65     -12.07      -0.08       0.00       0.00       0.00
                           -0.00      -0.00       0.00       7.56       0.00       0.00      -0.00       0.00     -13.23      -0.00

   19  12.1  1.0  1.0      -0.00      -0.00      -0.00      -7.55      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.15      -0.00      -0.00       0.00      33.01     -11.03       0.08       0.00       0.00      13.23

   20  13.1  1.0  1.0       0.00     -22.89      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -22.89       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  14.1  1.0  1.0      -0.00    -331.70       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -331.70       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   22  15.1  1.0  1.0    -410.67      -0.00      -0.00      -0.00    -186.16    -334.58    -226.37       0.00       0.00       0.00
                           -0.00       0.00       0.00     331.69      -0.00      -0.00      -0.00       0.00      22.18      -0.00

   23  16.1  1.0  1.0       0.00      -0.00      -0.00    -331.68      -0.00       0.00      -0.00       0.00       0.00       0.00
                          410.67       0.00      -0.00      -0.00     196.64    -328.53     226.37       0.00       0.00     -22.18

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -104.06       0.00
                           -0.00      -0.00       0.00       0.00       4.95    -313.20       0.00       0.00      -0.00    -104.06

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     104.06      -0.00      -0.00
                           -0.00      -0.00    -156.78      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00     156.79       0.00       0.00      -0.00       0.00      -0.00     104.06       0.00      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     180.04
                            0.00       0.00      -0.00       0.52      -0.00       0.00      -0.00      -0.00     180.38       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -104.35
                            0.00       0.00      -0.00     313.48       0.00       0.00      -0.00       0.00     103.74      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.43      -0.00
                            0.00       0.00       0.00       0.00       0.66     -42.06       0.00       0.00      -0.00       7.43

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.18       0.00      -0.00
                            0.00       0.00      -2.94      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -2.93       0.00       0.00       0.00       0.00       0.00      -9.18       0.00       0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       7.41
                           -0.00       0.00      -0.00      41.99       0.00       0.00      -0.00       0.00      -7.41      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      52.96       0.00      -0.00       0.00      -0.00      -0.00       1.88       0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.88       0.00      -0.00
                           -0.00      -0.00     -52.96      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.71       0.00
                            0.28       0.00      -0.00       0.00     -57.09      -0.90       0.14       0.00      -0.00      -5.71

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.70      -0.00
                         -580.78       0.00      -0.00       0.00     541.39       8.56    -320.16      -0.00      -0.00     -15.70

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00    -469.09       0.00      -0.00       0.00      -0.00       0.00      15.70       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.70      -0.00       0.00
                            0.00      -0.00     469.09      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   40   1.1  1.0 -1.0      -0.00     110.86       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00     110.86       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.00      -0.00       0.00    -110.86      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00     190.04     113.79       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.01      -0.00       0.00       0.00     193.54    -107.73       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -110.86       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00    -191.78      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -192.16      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00       0.00     111.16      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00    -110.52       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00     -29.74      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -29.74       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00      -0.00     -36.79      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.07       0.00       0.00       0.00      -1.15     -36.08       0.04      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0      -0.07      -0.00       0.00      -0.00       2.28     -36.03      -0.04       0.00       0.00       0.00
                           -0.00      -0.00       0.00      36.79       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00      -0.00     -29.73       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      29.73       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.15       0.00      -0.00      -0.00     -32.65     -12.07      -0.08       0.00       0.00       0.00
                            0.00       0.00      -0.00      -7.56      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.00      -0.00      -0.00      -7.55      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.15       0.00       0.00      -0.00     -33.01      11.03      -0.08      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00     -22.89      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      22.89      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0      -0.00    -331.70       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     331.70      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0    -410.67      -0.00      -0.00      -0.00    -186.16    -334.58    -226.37       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -331.69       0.00       0.00       0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00      -0.00      -0.00    -331.68      -0.00       0.00      -0.00       0.00       0.00       0.00
                         -410.67      -0.00       0.00       0.00    -196.64     328.53    -226.37      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.07       0.00      -0.15      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.07      -0.00      -0.00       0.00      -0.15      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00     -29.74       0.00      -0.00      -0.00       0.00      -0.00     -22.89
                         -192.16    -110.52       0.00      -0.00       0.00      -0.00      29.73       0.00       0.00       0.00

    3   3.1  0.0  0.0    -191.78     111.16       0.00      -0.00      -0.00       0.00     -29.73      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00     -29.74       0.00       0.00       0.00      -0.00       0.00      22.89

    4   4.1  0.0  0.0      -0.00      -0.00       0.00       0.00     -36.79      -0.00       0.00      -0.00      -7.55      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      36.79      -0.00      -7.56      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       2.28      -0.00     -32.65      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -1.15       0.00       0.00      -0.00     -33.01       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00     -36.03       0.00     -12.07      -0.00       0.00
                            0.00       0.00      -0.00       0.00     -36.08       0.00      -0.00      -0.00      11.03       0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.04      -0.00      -0.08      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.04      -0.00      -0.00       0.00      -0.08       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.49     294.28       0.00      -0.00      -0.00       0.00      10.36      -0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.75       0.00      13.23      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.75      -0.00      -0.00       0.00     -13.23      -0.00

   11   4.1  1.0  1.0   14955.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.02       0.00       0.00      -0.00       0.00       0.00     -14.11

   12   5.1  1.0  1.0       0.00   14955.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -10.36      -0.00       0.00      -0.00       0.00       0.00       0.02

   13   6.1  1.0  1.0       0.00       0.00   26910.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.03

   14   7.1  1.0  1.0       0.00       0.00       0.00   31378.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      10.36       0.00       0.00      -0.00      -0.00     302.91       0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   31378.02       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     452.53      -0.00      32.19      -0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   31378.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -452.53       0.00      -0.00      -0.00      32.24      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   31378.19       0.00       0.00       0.00
                            0.00       0.00      -0.00    -302.91       0.00       0.00      -0.00      -0.00      -0.00       0.02

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.23       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -32.19       0.00       0.00      -0.00    -149.76      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.23       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -32.24       0.00     149.76      -0.00      -0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.21
                           14.11      -0.02       0.03      -0.00      -0.00       0.00      -0.02       0.00       0.00      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.45       0.04     -70.12      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.27      -0.00       0.00       0.00      -0.22       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.26      -0.00       0.22       0.00       0.00

   24   1.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -9.18      -0.00       0.00       0.00      -1.88      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       9.18      -0.00      -1.88       0.00      -0.00

   25   2.1  1.0  0.0       0.00       0.00      -0.00      -7.43      -0.00      -0.00      -0.00       0.00      -0.00      -5.71
                         -180.38    -103.74      -0.00       0.00      -0.00      -0.00       7.41      -0.00       0.00       0.00

   26   3.1  1.0  0.0    -180.04     104.35      -0.00       0.00       0.00       0.00      -7.41       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -7.43      -0.00      -0.00       0.00      -0.00       0.00       5.71

   27   4.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00       0.39       0.00      -8.08       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.42      -0.00       0.00       0.00      -8.07       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -8.92      -0.00      -2.84       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -8.92      -0.00      -0.00       0.00       2.87       0.00

   29   6.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.02       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.01      -0.00       0.00      -0.00       0.02       0.00

   30   7.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00     121.90       0.00      -0.00       0.00    -176.03      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -121.93       0.00    -176.03      -0.00       0.00

   31   8.1  1.0  0.0       0.00      -0.00      -0.00    -121.90       0.00       0.00       0.00      -0.00       0.00     -14.01
                            0.42       8.92       0.01      -0.00      -0.00       0.00    -139.96       0.00       0.00      -0.00

   32   9.1  1.0  0.0      -0.39       8.92      -0.01      -0.00      -0.00       0.00    -139.93      -0.00       0.00       0.00
                            0.00       0.00       0.00     121.93      -0.00       0.00      -0.00       0.00       0.00     -13.98

   33  10.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     139.93       0.00    -162.05      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00     139.96       0.00       0.00      -0.00     162.03       0.00

   34  11.1  1.0  0.0       8.08       2.84      -0.02      -0.00       0.00       0.00     162.05      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     176.03      -0.00      -0.00       0.00       0.00       0.00     261.89

   35  12.1  1.0  0.0      -0.00      -0.00      -0.00     176.03      -0.00      -0.00       0.00       0.00       0.00    -261.90
                            8.07      -2.87      -0.02       0.00      -0.00      -0.00    -162.03      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0      -0.00       0.00       0.00       0.00      14.01      -0.00      -0.00       0.00     261.90       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      13.98      -0.00    -261.89       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.08       0.00      -0.00      -0.00       0.33      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.08      -0.00      -0.33      -0.00       0.00

   38  15.1  1.0  0.0       9.17      15.66     -49.57      -0.00       0.00       0.00      -0.08       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.13      -0.00      -0.00       0.00      -0.00      -0.00      -0.35

   39  16.1  1.0  0.0      -0.00       0.00      -0.00      -0.12      -0.00       0.00      -0.00      -0.00       0.00       0.35
                            9.11     -15.69     -49.57      -0.00       0.00       0.00       0.08       0.00       0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00    -410.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -410.67       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0    -331.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -156.79      -0.00      -0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          331.70      -0.00       0.00      -0.00     156.78      -0.00       0.00       0.00       0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00    -331.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -331.69       0.00      -0.00       0.00      -0.00      -0.52    -313.48       0.00      -0.00

    5   5.1  0.0  0.0       0.00    -186.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -196.64      -4.95       0.00       0.00       0.00      -0.00      -0.00      -0.66

    6   6.1  0.0  0.0      -0.00    -334.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     328.53     313.20      -0.00      -0.00      -0.00      -0.00      -0.00      42.06

    7   7.1  0.0  0.0       0.00    -226.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -226.37      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00     104.06      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    -104.06       0.00      -0.00       0.00      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00    -104.06      -0.00       0.00      -0.00      -0.00       0.00       7.43
                           -0.00     -22.18      -0.00       0.00       0.00      -0.00    -180.38    -103.74      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00     180.04    -104.35       0.00      -0.00
                            0.00       0.00      22.18     104.06       0.00       0.00      -0.00       0.00      -0.00      -7.43

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    -180.04      -0.00       0.00      -0.00      -0.00
                           25.45      -0.00       0.00      -0.00     180.38       0.00      -0.00      -0.00       0.00      -0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00     104.35      -0.00       0.00      -0.00      -0.00
                           -0.04       0.00      -0.00       0.00     103.74      -0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           70.12      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00      -0.00      -7.43       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       7.43       0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00      -9.18      -0.00       0.00      -0.00       0.00       0.00     121.90
                           -0.00      -0.27      -0.00      -0.00       0.00       0.00       0.42       8.92       0.01      -0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.39      -8.92       0.01       0.00
                           -0.00       0.00      -0.26      -9.18       0.00       0.00       0.00       0.00       0.00     121.93

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -7.41       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -7.41      -0.00      -0.00       0.00      -0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -8.08      -2.84       0.02       0.00
                           -0.00      -0.00      -0.22       1.88       0.00       0.00      -0.00      -0.00       0.00     176.03

   19  12.1  1.0  1.0       0.00       0.00       0.00      -1.88      -0.00       0.00       0.00       0.00       0.00    -176.03
                            0.00       0.22      -0.00      -0.00      -0.00      -0.00       8.07      -2.87      -0.02       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00      -0.00      -5.71      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -5.71      -0.00      -0.00      -0.00      -0.00

   21  14.1  1.0  1.0   32438.04       0.00       0.00       0.00     -15.70       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     -15.70       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00   32438.19       0.00       0.00      -0.00      -0.00      -9.17     -15.66      49.57       0.00
                           -0.00      -0.00   -1034.22      15.70       0.00      -0.00      -0.00      -0.00       0.00      -0.13

   23  16.1  1.0  1.0       0.00       0.00   32438.19     -15.70       0.00      -0.00       0.00      -0.00       0.00       0.12
                            0.00    1034.22      -0.00      -0.00       0.00       0.00       9.11     -15.69     -49.57      -0.00

   24   1.1  1.0  0.0       0.00       0.00     -15.70   14955.41       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0     -15.70      -0.00       0.00       0.00   14955.41       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00   14955.41       0.00       0.00       0.00       0.00
                           15.70       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0      -0.00      -9.17       0.00       0.00       0.00       0.00   14955.45       0.00       0.00       0.00
                           -0.00       0.00      -9.11      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0      -0.00     -15.66      -0.00       0.00       0.00       0.00       0.00   14955.48       0.00       0.00
                           -0.00       0.00      15.69      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00      49.57       0.00       0.00       0.00       0.00       0.00       0.00   26910.21       0.00
                           -0.00      -0.00      49.57      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0      -0.00       0.00       0.12       0.00       0.00       0.00       0.00       0.00       0.00   31378.01
                           -0.00       0.13       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.08       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.33       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0      -0.33       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.00      -0.00      -0.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.35      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00       0.00     731.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -731.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          731.31      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0    -731.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00    -104.06       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    -104.06       0.00      -0.00       0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00     104.06      -0.00      -0.00       0.00       0.00      -0.00      -7.43
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -180.38    -103.74      -0.00       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00    -180.04     104.35      -0.00       0.00
                           -0.00      -0.00      -0.00     104.06       0.00      -0.00      -0.00       0.00      -0.00      -7.43

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     180.04      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     180.38       0.00       0.00      -0.00       0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00    -104.35       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     103.74      -0.00       0.00      -0.00       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       7.43      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       7.43       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       9.18       0.00      -0.00       0.00      -0.00      -0.00    -121.90
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.42       8.92       0.01      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.39       8.92      -0.01      -0.00
                           -0.00      -0.00      -0.00      -9.18       0.00       0.00       0.00       0.00       0.00     121.93

   49  10.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       7.41      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -7.41      -0.00      -0.00       0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       8.08       2.84      -0.02      -0.00
                           -0.00      -0.00      -0.00       1.88       0.00       0.00      -0.00      -0.00       0.00     176.03

   51  12.1  1.0 -1.0       0.00       0.00       0.00       1.88       0.00      -0.00      -0.00      -0.00      -0.00     176.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       8.07      -2.87      -0.02       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       5.71       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -5.71      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00      15.70      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -15.70       0.00       0.00       0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       9.17      15.66     -49.57      -0.00
                           -0.00      -0.00      -0.00      15.70       0.00      -0.00      -0.00      -0.00       0.00      -0.13

   55  16.1  1.0 -1.0       0.00       0.00       0.00      15.70      -0.00       0.00      -0.00       0.00      -0.00      -0.12
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       9.11     -15.69     -49.57      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.28     580.78       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     110.86
                           -0.00       2.93      -0.00     -52.96       0.00      -0.00      -0.00     469.09       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.94      -0.00       0.00      -0.00      52.96       0.00       0.00      -0.00    -469.09    -110.86

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -41.99       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      57.09    -541.39      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.90      -8.56       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.14     320.16      -0.00      -0.00       0.00

    8   1.1  1.0  1.0       9.18       0.00      -0.00      -0.00       1.88       0.00      -0.00      -0.00      15.70       0.00
                            0.00       9.18      -0.00      -1.88       0.00      -0.00       0.00     -15.70       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       5.71      15.70       0.00      -0.00       0.00
                           -0.00      -0.00       7.41      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   10   3.1  1.0  1.0      -0.00      -0.00       7.41      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       5.71      15.70       0.00      -0.00       0.00

   11   4.1  1.0  1.0       0.00      -0.39      -0.00       8.08      -0.00      -0.00       0.00       9.17      -0.00       0.00
                           -0.42      -0.00       0.00       0.00      -8.07       0.00      -0.00       0.00      -9.11       0.00

   12   5.1  1.0  1.0      -0.00       8.92       0.00       2.84      -0.00       0.00       0.00      15.66       0.00       0.00
                           -8.92      -0.00      -0.00       0.00       2.87       0.00      -0.00       0.00      15.69       0.00

   13   6.1  1.0  1.0      -0.00      -0.01      -0.00      -0.02      -0.00       0.00      -0.00     -49.57      -0.00       0.00
                           -0.01      -0.00       0.00      -0.00       0.02       0.00      -0.00      -0.00      49.57       0.00

   14   7.1  1.0  1.0    -121.90      -0.00       0.00      -0.00     176.03       0.00       0.00      -0.00      -0.12       0.00
                            0.00    -121.93       0.00    -176.03      -0.00       0.00      -0.00       0.13       0.00       0.00

   15   8.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -0.00      14.01      -0.08       0.00      -0.00       0.00
                            0.00       0.00    -139.96       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00     139.93       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -13.98       0.08       0.00      -0.00       0.00

   17  10.1  1.0  1.0       0.00    -139.93       0.00     162.05       0.00      -0.00      -0.00      -0.08      -0.00       0.00
                          139.96       0.00      -0.00      -0.00     162.03       0.00       0.00      -0.00      -0.08       0.00

   18  11.1  1.0  1.0      -0.00      -0.00    -162.05      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     261.89       0.33       0.00      -0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00     261.90       0.33      -0.00       0.00       0.00
                           -0.00      -0.00    -162.03      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   20  13.1  1.0  1.0     -14.01       0.00       0.00      -0.00    -261.90       0.00      -0.00       0.00       0.35       0.00
                            0.00      13.98      -0.00    -261.89       0.00      -0.00      -0.00       0.35      -0.00       0.00

   21  14.1  1.0  1.0       0.08      -0.00       0.00       0.00      -0.33       0.00      -0.00      -0.00    -731.31       0.00
                           -0.00      -0.08      -0.00      -0.33      -0.00       0.00      -0.00    -731.31      -0.00       0.00

   22  15.1  1.0  1.0      -0.00      -0.00       0.08      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.35     731.31       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      -0.35     731.31      -0.00       0.00       0.00
                            0.00       0.00       0.08       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -104.06
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     104.06

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   8.1  1.0  0.0   31378.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -9.18
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   32   9.1  1.0  0.0       0.00   31378.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -9.18

   33  10.1  1.0  0.0       0.00       0.00   31378.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   31378.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.88

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   31378.23       0.00       0.00       0.00       0.00      -1.88
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   31378.21       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32438.04       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32438.19       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      15.70

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32438.19     -15.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0      -9.18      -0.00       0.00       0.00      -1.88      -0.00       0.00       0.00     -15.70   14955.41
                            0.00       9.18      -0.00      -1.88       0.00      -0.00       0.00     -15.70       0.00      -0.00

   41   2.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -0.00      -5.71     -15.70      -0.00       0.00       0.00
                           -0.00      -0.00       7.41      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00      -7.41       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       5.71      15.70       0.00      -0.00      -0.00

   43   4.1  1.0 -1.0      -0.00       0.39       0.00      -8.08       0.00       0.00      -0.00      -9.17       0.00       0.00
                           -0.42      -0.00       0.00       0.00      -8.07       0.00      -0.00       0.00      -9.11       0.49

   44   5.1  1.0 -1.0       0.00      -8.92      -0.00      -2.84       0.00      -0.00      -0.00     -15.66      -0.00       0.00
                           -8.92      -0.00      -0.00       0.00       2.87       0.00      -0.00       0.00      15.69     294.28

   45   6.1  1.0 -1.0       0.00       0.01       0.00       0.02       0.00      -0.00       0.00      49.57       0.00       0.00
                           -0.01      -0.00       0.00      -0.00       0.02       0.00      -0.00      -0.00      49.57       0.00

   46   7.1  1.0 -1.0     121.90       0.00      -0.00       0.00    -176.03      -0.00      -0.00       0.00       0.12       0.00
                            0.00    -121.93       0.00    -176.03      -0.00       0.00      -0.00       0.13       0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     -14.01       0.08      -0.00       0.00       0.00
                           -0.00       0.00    -139.96       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   48   9.1  1.0 -1.0      -0.00       0.00    -139.93      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     -13.98       0.08       0.00      -0.00       0.00

   49  10.1  1.0 -1.0      -0.00     139.93       0.00    -162.05      -0.00       0.00       0.00       0.08       0.00       0.00
                          139.96       0.00       0.00      -0.00     162.03       0.00       0.00      -0.00      -0.08      10.36

   50  11.1  1.0 -1.0       0.00       0.00     162.05      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     261.89       0.33       0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00    -261.90      -0.33       0.00      -0.00       0.00
                           -0.00      -0.00    -162.03      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   52  13.1  1.0 -1.0      14.01      -0.00      -0.00       0.00     261.90       0.00       0.00      -0.00      -0.35       0.00
                            0.00      13.98      -0.00    -261.89       0.00       0.00      -0.00       0.35      -0.00       0.00

   53  14.1  1.0 -1.0      -0.08       0.00      -0.00      -0.00       0.33      -0.00      -0.00       0.00     731.31       0.00
                           -0.00      -0.08      -0.00      -0.33      -0.00       0.00       0.00    -731.31      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00      -0.08       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.35     731.31      -0.00       0.00      -0.00

   55  16.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.35    -731.31       0.00       0.00       0.00
                            0.00       0.00       0.08       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0      -0.00      -0.01       0.00      -0.00       0.00       0.00       0.00      -0.07       0.00      -0.15
                            0.01       0.00      -0.00       0.00      -0.00      -0.00      -0.07       0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00       0.00       0.00      -0.00     -29.74       0.00      -0.00      -0.00       0.00
                            0.00       0.00     192.16     110.52      -0.00       0.00      -0.00       0.00     -29.73      -0.00

    3   3.1  0.0  0.0       0.00       0.00    -191.78     111.16       0.00      -0.00      -0.00       0.00     -29.73      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      29.74      -0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0    -110.86       0.00      -0.00      -0.00       0.00       0.00     -36.79      -0.00       0.00      -0.00
                            0.00     110.86       0.00       0.00      -0.00      -0.00      -0.00     -36.79       0.00       7.56

    5   5.1  0.0  0.0      -0.00     193.54      -0.00       0.00       0.00      -0.00      -0.00       2.28      -0.00     -32.65
                         -190.04      -0.00       0.00       0.00      -0.00       0.00       1.15      -0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00    -107.73       0.00      -0.00       0.00      -0.00      -0.00     -36.03       0.00     -12.07
                         -113.79       0.00      -0.00      -0.00       0.00      -0.00      36.08      -0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.04      -0.00      -0.08
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.04       0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0     104.06      -0.00       0.00      -0.00       0.00       0.00       9.18       0.00      -0.00      -0.00
                           -0.00    -104.06       0.00      -0.00       0.00      -0.00       0.00       9.18      -0.00      -1.88

   25   2.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00       7.43       0.00       0.00       0.00      -0.00
                            0.00      -0.00    -180.38    -103.74      -0.00       0.00      -0.00      -0.00       7.41      -0.00

   26   3.1  1.0  0.0      -0.00      -0.00     180.04    -104.35       0.00      -0.00      -0.00      -0.00       7.41      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -7.43      -0.00      -0.00       0.00      -0.00

   27   4.1  1.0  0.0       0.00    -180.04      -0.00       0.00      -0.00      -0.00       0.00      -0.39      -0.00       8.08
                          180.38       0.00      -0.00      -0.00       0.00      -0.00      -0.42      -0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00     104.35      -0.00       0.00      -0.00      -0.00      -0.00       8.92       0.00       2.84
                          103.74      -0.00       0.00       0.00       0.00       0.00      -8.92      -0.00      -0.00       0.00

   29   6.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01      -0.00      -0.02
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00

   30   7.1  1.0  0.0      -7.43       0.00       0.00       0.00       0.00      -0.00    -121.90      -0.00       0.00      -0.00
                           -0.00       7.43       0.00      -0.00      -0.00       0.00       0.00    -121.93       0.00    -176.03

   31   8.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00     121.90       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.42       8.92       0.01      -0.00       0.00       0.00    -139.96       0.00

   32   9.1  1.0  0.0      -0.00       0.00       0.39      -8.92       0.01       0.00       0.00       0.00     139.93       0.00
                            0.00       0.00       0.00       0.00       0.00     121.93      -0.00      -0.00      -0.00       0.00

   33  10.1  1.0  0.0      -0.00      -7.41       0.00      -0.00       0.00      -0.00       0.00    -139.93       0.00     162.05
                           -7.41      -0.00      -0.00       0.00      -0.00      -0.00     139.96       0.00      -0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.00      -8.08      -2.84       0.02       0.00      -0.00      -0.00    -162.05      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     176.03      -0.00      -0.00       0.00      -0.00

   35  12.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00    -176.03       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       8.07      -2.87      -0.02       0.00      -0.00      -0.00    -162.03      -0.00

   36  13.1  1.0  0.0      -5.71      -0.00       0.00      -0.00      -0.00      -0.00     -14.01       0.00       0.00      -0.00
                           -0.00      -5.71      -0.00      -0.00      -0.00      -0.00       0.00      13.98      -0.00    -261.89

   37  14.1  1.0  0.0     -15.70       0.00      -0.00      -0.00       0.00      -0.00       0.08      -0.00       0.00       0.00
                           -0.00     -15.70       0.00       0.00       0.00       0.00      -0.00      -0.08      -0.00      -0.33

   38  15.1  1.0  0.0      -0.00      -0.00      -9.17     -15.66      49.57       0.00      -0.00      -0.00       0.08      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.13      -0.00      -0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.12       0.00      -0.00       0.00       0.00
                            0.00       0.00       9.11     -15.69     -49.57      -0.00       0.00       0.00       0.08       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.49    -294.28      -0.00       0.00       0.00      -0.00     -10.36       0.00

   41   2.1  1.0 -1.0   14955.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -147.17       0.00       0.00      -0.00      -0.00       0.00       0.75      -0.00     -13.23

   42   3.1  1.0 -1.0       0.00   14955.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          147.17      -0.00       0.00       0.00       0.00      -0.00       0.75       0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00   14955.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.02      -0.00      -0.00       0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00   14955.48       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      10.36       0.00      -0.00       0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26910.21       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   31378.01       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02     -10.36      -0.00      -0.00       0.00       0.00    -302.91      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   31378.02       0.00       0.00       0.00
                           -0.00      -0.75       0.00      -0.00      -0.00      -0.00      -0.00    -452.53       0.00     -32.19

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.02       0.00       0.00
                           -0.75      -0.00       0.00       0.00       0.00      -0.00     452.53      -0.00       0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.19       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     302.91      -0.00      -0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31378.23
                           13.23       0.00       0.00       0.00       0.00       0.00      32.19      -0.00      -0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -13.23       0.00       0.00       0.00      -0.00      -0.00      32.24      -0.00    -149.76

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -14.11       0.02      -0.03       0.00       0.00      -0.00       0.02      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      25.45      -0.04      70.12       0.00      -0.00      -0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.18       0.00      -0.00       0.00      -0.00       0.00      -0.27       0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      22.18       0.00      -0.00       0.00       0.00      -0.00      -0.26       0.00      -0.22


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0      -0.00       0.00      -0.00    -410.67       0.00
                            0.15       0.00      -0.00      -0.00     410.67

    2   2.1  0.0  0.0      -0.00     -22.89    -331.70      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00

    3   3.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00     -22.89    -331.70       0.00      -0.00

    4   4.1  0.0  0.0      -7.55      -0.00      -0.00      -0.00    -331.68
                            0.00       0.00       0.00     331.69      -0.00

    5   5.1  0.0  0.0      -0.00      -0.00       0.00    -186.16      -0.00
                           33.01      -0.00       0.00      -0.00     196.64

    6   6.1  0.0  0.0      -0.00       0.00      -0.00    -334.58       0.00
                          -11.03      -0.00       0.00      -0.00    -328.53

    7   7.1  0.0  0.0      -0.00       0.00       0.00    -226.37      -0.00
                            0.08      -0.00      -0.00      -0.00     226.37

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0       1.88       0.00      -0.00      -0.00      15.70
                            0.00      -0.00       0.00     -15.70       0.00

   25   2.1  1.0  0.0       0.00       5.71      15.70       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00

   26   3.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00
                            0.00       5.71      15.70       0.00      -0.00

   27   4.1  1.0  0.0      -0.00      -0.00       0.00       9.17      -0.00
                           -8.07       0.00      -0.00       0.00      -9.11

   28   5.1  1.0  0.0      -0.00       0.00       0.00      15.66       0.00
                            2.87       0.00      -0.00       0.00      15.69

   29   6.1  1.0  0.0      -0.00       0.00      -0.00     -49.57      -0.00
                            0.02       0.00      -0.00      -0.00      49.57

   30   7.1  1.0  0.0     176.03       0.00       0.00      -0.00      -0.12
                           -0.00       0.00      -0.00       0.13       0.00

   31   8.1  1.0  0.0      -0.00      14.01      -0.08       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00

   32   9.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00
                            0.00     -13.98       0.08       0.00      -0.00

   33  10.1  1.0  0.0       0.00      -0.00      -0.00      -0.08      -0.00
                          162.03       0.00       0.00      -0.00      -0.08

   34  11.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00     261.89       0.33       0.00      -0.00

   35  12.1  1.0  0.0       0.00     261.90       0.33      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00

   36  13.1  1.0  0.0    -261.90       0.00      -0.00       0.00       0.35
                            0.00      -0.00      -0.00       0.35      -0.00

   37  14.1  1.0  0.0      -0.33       0.00      -0.00      -0.00    -731.31
                           -0.00       0.00      -0.00    -731.31      -0.00

   38  15.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.35     731.31       0.00       0.00

   39  16.1  1.0  0.0      -0.00      -0.35     731.31      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      22.18       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           13.23       0.00      -0.00      -0.00     -22.18

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      14.11     -25.45       0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.02       0.04      -0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.03     -70.12       0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.27       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -32.24       0.00       0.00      -0.00       0.26

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.02      -0.00       0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          149.76       0.00       0.00       0.00       0.22

   51  12.1  1.0 -1.0   31378.23       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.22       0.00

   52  13.1  1.0 -1.0       0.00   31378.21       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   53  14.1  1.0 -1.0       0.00       0.00   32438.04       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   32438.19       0.00
                            0.22      -0.00       0.00       0.00    1034.22

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   32438.19
                           -0.00      -0.00      -0.00   -1034.22       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by -24985.35910198 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   17876.427       0.000       0.000       0.000       0.000       0.000     156.785
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   17876.477       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   17876.477       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   17876.477       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   17876.476       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27933.811      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000     156.785       0.000       0.000       0.000      -0.000      -0.000   14955.409
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000    -156.785      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.008      -0.000       0.000       0.000     273.708    -152.349       0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000    -271.222      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000     157.204      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.001       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000     -42.066      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000      -0.000     -52.035      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.103      -0.000       0.000      -0.000       3.228     -50.951      -0.056       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000     -42.048       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.214       0.000      -0.000      -0.000     -46.171     -17.065      -0.110       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000     -10.682      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000     -32.372      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000    -469.089       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+           -580.775      -0.000      -0.000      -0.000    -263.264    -473.168    -320.136       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000    -469.073      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000       0.000       4.953    -313.199       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -156.782      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     156.789       0.000       0.000      -0.000       0.000      -0.000     147.168

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.523      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000     313.481       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.001       0.000       0.000       0.000       0.661     -42.060       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -2.943      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.934       0.000       0.000       0.000       0.000       0.000     -12.986

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      41.989       0.000       0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      52.959       0.000      -0.000       0.000      -0.000      -0.000       2.662

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -52.959      -0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.276       0.000      -0.000       0.000     -57.088      -0.901       0.138       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -580.783       0.000      -0.000       0.000     541.386       8.561    -320.157      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -469.095       0.000      -0.000       0.000      -0.000       0.000      22.198

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     469.092      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -156.779      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.008       0.000       0.000       0.000    -268.755    -160.927      -0.001       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     156.785      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     271.758       0.000       0.000       0.000      -0.000      -0.000      -0.492

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     156.302      -0.000       0.000       0.000      -0.000      -0.000    -294.282

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      42.064      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.104      -0.000      -0.000      -0.000       1.623      51.026      -0.056       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -52.034      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -42.049      -0.000       0.000      -0.000       0.000       0.000     -10.358

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      10.691       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.214      -0.000      -0.000       0.000      46.687     -15.604       0.110       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -32.376       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -469.088       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     469.074      -0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              580.774       0.000      -0.000      -0.000     278.092    -464.607     320.136       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.008       0.000      -0.000       0.000       0.000       0.000      -0.103
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000       0.000       0.000      -0.000     -42.066       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000    -271.222     157.204       0.001      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            -156.785       0.000      -0.000      -0.000       0.000       0.000     -52.035      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000     273.708      -0.000       0.000       0.000      -0.000      -0.000       3.228
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000    -152.349       0.000      -0.000       0.000      -0.000      -0.000     -50.951
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.001       0.000      -0.000      -0.000       0.000       0.000      -0.056
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          14955.409       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   14955.409       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   14955.449       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   14955.483       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26910.206       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   31378.008       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   31378.016       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31378.016
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -147.168       0.000      -0.000       0.000      -0.000       0.000      12.986

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000    -255.103    -146.715      -0.002       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000     -10.514      -0.000      -0.000

    4    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                              255.103       0.000       0.000      -0.000       0.000      -0.000      -0.598      -0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                              146.715      -0.000       0.000       0.000       0.000       0.000     -12.610      -0.000

    6    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.002       0.000      -0.000      -0.000       0.000       0.000      -0.013      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      10.514       0.000      -0.000      -0.000       0.000       0.000    -172.440

    8    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.598      12.610       0.013      -0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     172.440      -0.000       0.000

   10    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -10.478      -0.000      -0.000       0.000      -0.000      -0.000     197.937       0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     248.951      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      11.407      -4.061      -0.024       0.000      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -8.081      -0.000      -0.000      -0.000      -0.000       0.000      19.767

   14    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000     -22.197       0.000       0.000       0.000       0.000      -0.000      -0.117

   15    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.179      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      12.889     -22.192     -70.107      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.492     294.282       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     147.166      -0.000      -0.000       0.000       0.000      -0.000      -0.746

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -147.166       0.000      -0.000      -0.000      -0.000       0.000      -0.749      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.018       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     -10.357      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.018      10.357       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.749      -0.000       0.000       0.000       0.000       0.000     452.526

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.746       0.000      -0.000      -0.000      -0.000       0.000    -452.526       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000    -302.911       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.227      -0.000      -0.000      -0.000      -0.000      -0.000     -32.189       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      13.227      -0.000      -0.000      -0.000       0.000       0.000     -32.238

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      14.112      -0.024       0.031      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -25.450       0.043     -70.121      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.182      -0.000       0.000      -0.000       0.000      -0.000       0.265      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -22.181      -0.000       0.000      -0.000      -0.000       0.000       0.264

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.214      -0.000       0.000      -0.000    -580.775       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.001

    2    1  |0 0>              -0.000       0.000      -0.000     -32.372    -469.089      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             -42.048      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |0 0>               0.000      -0.000     -10.682      -0.000      -0.000      -0.000    -469.073       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>              -0.000     -46.171      -0.000      -0.000       0.000    -263.264      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -4.953

    6    1  |0 0>               0.000     -17.065      -0.000       0.000      -0.000    -473.168       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     313.199

    7    1  |0 0>              -0.000      -0.110      -0.000       0.000       0.000    -320.136      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     147.168

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -12.986

   10    1  |1 1>+          31378.190       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000   31378.227       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       2.662

   12    1  |1 1>+              0.000       0.000   31378.232       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000   31378.215       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   32438.041       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32438.194       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      22.198

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32438.192       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000   14955.409
                               -0.000      -2.662       0.000      -0.000       0.000     -22.198       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               10.478      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       8.081      22.197       0.000      -0.000      -0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000     -11.407       0.000      -0.000       0.000     -12.889      -0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       4.061       0.000      -0.000       0.000      22.192      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.024       0.000      -0.000      -0.000      70.107      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -248.951      -0.000       0.000      -0.000       0.179       0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                             -197.937       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000     -19.767       0.117       0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000     229.142       0.000       0.000      -0.000      -0.109      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     370.365       0.465       0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -229.142      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -370.365       0.000       0.000      -0.000       0.497      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.465      -0.000       0.000       0.000   -1034.227      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.497    1034.227       0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.109       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.358      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -147.168
                                0.000      13.227      -0.000       0.000      -0.000     -22.182      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -13.227      -0.000       0.000       0.000      22.181       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000     -14.112      25.450      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.024      -0.043       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.031      70.121      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              302.911       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -12.986
                               -0.000      32.189      -0.000       0.000      -0.000      -0.265      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      32.238      -0.000      -0.000       0.000      -0.264      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.016       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -149.759      -0.000      -0.000      -0.000      -0.223      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -2.660
                                0.000     149.759      -0.000      -0.000       0.000       0.222      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.016       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.222       0.000      -0.000      -0.000   -1034.222      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -22.198
                               -0.000       0.223       0.000       0.000       0.000    1034.222      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.001      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -156.789      -0.000      -0.000      -0.000      -0.000      -0.000       2.934

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              156.782      -0.000       0.000       0.000       0.000      -0.000       2.943      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.523    -313.481       0.000      -0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.661       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      42.060      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -147.168       0.000      -0.000       0.000      -0.000       0.000      12.986

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000    -255.103    -146.715      -0.002       0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000     -10.514      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                              255.103       0.000       0.000      -0.000       0.000      -0.000      -0.598      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                              146.715      -0.000       0.000       0.000       0.000       0.000     -12.610      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.002       0.000      -0.000      -0.000       0.000       0.000      -0.013      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      10.514       0.000      -0.000      -0.000       0.000       0.000    -172.440

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.598      12.610       0.013      -0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     172.440      -0.000       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -10.478      -0.000      -0.000       0.000      -0.000      -0.000     197.937       0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     248.951      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      11.407      -4.061      -0.024       0.000      -0.000      -0.000

   13    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -8.081      -0.000      -0.000      -0.000      -0.000       0.000      19.767

   14    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000     -22.197       0.000       0.000       0.000       0.000      -0.000      -0.117

   15    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.179      -0.000      -0.000

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      12.889     -22.192     -70.107      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           14955.409       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   14955.409       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   14955.449       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   14955.483       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26910.206       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31378.008       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   31378.016       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   31378.016
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-            147.168      -0.000       0.000      -0.000       0.000       0.000      12.986       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000      10.514       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -0.000       0.000     254.611    -147.568       0.002      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000    -254.611       0.000       0.000      -0.000      -0.000       0.000      -0.554
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000     147.568      -0.000       0.000      -0.000      -0.000      -0.000      12.613
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-             -0.000      -0.002       0.000       0.000       0.000      -0.000      -0.000      -0.013
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-            -10.514       0.000       0.000       0.000       0.000       0.000    -172.399      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000     172.399       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-             -0.000       0.000       0.554     -12.613       0.013       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-             -0.000     -10.479       0.000      -0.000       0.000      -0.000       0.000    -197.898
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000     -11.421      -4.021       0.024       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000    -248.943       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>-             -8.080      -0.000       0.000      -0.000      -0.000      -0.000     -19.811       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-            -22.197       0.000      -0.000      -0.000       0.000      -0.000       0.118      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>-             -0.000      -0.000     -12.962     -22.148      70.108       0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000      -0.000       0.000      -0.000       0.000       0.177       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.276     580.783       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -52.959       0.000      -0.000      -0.000     469.095       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      52.959       0.000       0.000      -0.000    -469.092     156.779

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -41.989       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      57.088    -541.386      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.901      -8.561       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.138     320.157      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.662       0.000      -0.000       0.000     -22.198       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               10.478      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       8.081      22.197       0.000      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000     -11.407       0.000      -0.000       0.000     -12.889      -0.492

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       4.061       0.000      -0.000       0.000      22.192    -294.282

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.024       0.000      -0.000      -0.000      70.107      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -248.951      -0.000       0.000      -0.000       0.179       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                             -197.937       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000     -19.767       0.117       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000     229.142       0.000       0.000      -0.000      -0.109     -10.358

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     370.365       0.465       0.000      -0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -229.142      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -370.365       0.000       0.000      -0.000       0.497      -0.000      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.465      -0.000       0.000       0.000   -1034.227      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.497    1034.227       0.000       0.000       0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.109       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     147.168
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      12.986
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>           31378.190       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000   31378.227       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000   31378.232       0.000       0.000       0.000       0.000       2.660
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   31378.215       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   32438.041       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32438.194       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32438.192      22.198
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000       2.660       0.000      -0.000      -0.000      22.198   14955.409
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.000       0.000       8.080      22.197       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             10.479      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-             -0.000      11.421      -0.000      -0.000       0.000      12.962      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       4.021      -0.000       0.000       0.000      22.148       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.024      -0.000       0.000      -0.000     -70.108      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000     248.943       0.000       0.000      -0.000      -0.177       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-             -0.000       0.000      -0.000      19.811      -0.118       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-            197.898       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000     229.171       0.000      -0.000      -0.000      -0.108      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-           -229.171       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000      -0.000       0.000     370.387       0.465      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000    -370.387       0.000      -0.000       0.000       0.497       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000      -0.465       0.000       0.000      -0.000   -1034.225       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.108      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      -0.000      -0.497    1034.225      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008      -0.000       0.000      -0.000       0.000       0.000       0.104      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -271.758    -156.302       0.001      -0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000     -42.064       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -156.785      -0.000      -0.000       0.000       0.000       0.000      52.034

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              268.755       0.000      -0.000      -0.000       0.000      -0.000      -1.623       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              160.927      -0.000       0.000       0.000      -0.000       0.000     -51.026       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000       0.000       0.000       0.000      -0.000       0.056      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.492     294.282       0.000      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     147.166      -0.000      -0.000       0.000       0.000      -0.000      -0.746

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -147.166       0.000      -0.000      -0.000      -0.000       0.000      -0.749      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.018       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     -10.357      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.018      10.357       0.000       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.749      -0.000       0.000       0.000       0.000       0.000     452.526

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.746       0.000      -0.000      -0.000      -0.000       0.000    -452.526       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000    -302.911       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.227      -0.000      -0.000      -0.000      -0.000      -0.000     -32.189       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      13.227      -0.000      -0.000      -0.000       0.000       0.000     -32.238

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      14.112      -0.024       0.031      -0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -25.450       0.043     -70.121      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.182      -0.000       0.000      -0.000       0.000      -0.000       0.265      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -22.181      -0.000       0.000      -0.000      -0.000       0.000       0.264

    1    1  |1 0>            -147.168       0.000      -0.000       0.000      -0.000      -0.000     -12.986      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000     -10.514      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000    -254.611     147.568      -0.002       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000     254.611       0.000      -0.000       0.000       0.000      -0.000       0.554
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000    -147.568       0.000       0.000       0.000       0.000       0.000     -12.613
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.002      -0.000      -0.000       0.000       0.000       0.000       0.013
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>              10.514      -0.000      -0.000      -0.000      -0.000       0.000     172.399       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000    -172.399       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000      -0.000      -0.554      12.613      -0.013      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 0>               0.000      10.479      -0.000       0.000      -0.000       0.000      -0.000     197.898
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      11.421       4.021      -0.024      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000     248.943      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 0>               8.080       0.000      -0.000       0.000       0.000       0.000      19.811      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              22.197      -0.000       0.000       0.000      -0.000       0.000      -0.118       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000      12.962      22.148     -70.108      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.177      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          14955.409       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   14955.409       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   14955.449       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   14955.483       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26910.206       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   31378.008       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   31378.016       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31378.016
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.214      -0.000       0.000       0.000    -580.774

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               42.049       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      32.376     469.088      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -10.691      -0.000      -0.000      -0.000    -469.074       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -46.687       0.000      -0.000       0.000    -278.092

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.604       0.000      -0.000       0.000     464.607

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.110       0.000       0.000       0.000    -320.136

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.358      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      13.227      -0.000       0.000      -0.000     -22.182      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -13.227      -0.000       0.000       0.000      22.181

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -14.112      25.450      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.024      -0.043       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.031      70.121      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              302.911       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      32.189      -0.000       0.000      -0.000      -0.265      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      32.238      -0.000      -0.000       0.000      -0.264

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.016       0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -149.759      -0.000      -0.000      -0.000      -0.223

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     149.759      -0.000      -0.000       0.000       0.222      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.016       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.222       0.000      -0.000      -0.000   -1034.222

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.223       0.000       0.000       0.000    1034.222      -0.000

    1    1  |1 0>               0.000       0.000      -2.660      -0.000       0.000       0.000     -22.198
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000      -0.000      -8.080     -22.197      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>             -10.479       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000     -11.421       0.000       0.000      -0.000     -12.962       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -0.000      -4.021       0.000      -0.000      -0.000     -22.148      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.024       0.000      -0.000       0.000      70.108       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000    -248.943      -0.000      -0.000       0.000       0.177
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000     -19.811       0.118      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>            -197.898      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000    -229.171      -0.000       0.000       0.000       0.108       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>             229.171       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000    -370.387      -0.465       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000     370.387       0.000       0.000      -0.000      -0.497
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000      -0.000       0.465      -0.000       0.000       0.000    1034.225
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.108       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       0.000       0.497   -1034.225       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          31378.190       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   31378.227       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   31378.232       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   31378.215       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   32438.041       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32438.194       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32438.192
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24985.35925368    -0.00015170      -33.30      0.00000000        0.00      0.0000
    2-24985.29297162     0.06613036    14513.94      0.06628206    14547.23      1.8036
    3-24985.29297157     0.06613040    14513.95      0.06628211    14547.24      1.8036
    4-24985.29297157     0.06613041    14513.95      0.06628211    14547.24      1.8036
    5-24985.29184950     0.06725248    14760.21      0.06740418    14793.51      1.8342
    6-24985.29184948     0.06725250    14760.22      0.06740420    14793.51      1.8342
    7-24985.29184945     0.06725253    14760.22      0.06740423    14793.52      1.8342
    8-24985.29184941     0.06725257    14760.23      0.06740427    14793.53      1.8342
    9-24985.29184939     0.06725259    14760.24      0.06740429    14793.53      1.8342
   10-24985.28961932     0.06948266    15249.68      0.06963436    15282.98      1.8948
   11-24985.28961928     0.06948270    15249.69      0.06963440    15282.98      1.8948
   12-24985.28961928     0.06948270    15249.69      0.06963440    15282.99      1.8948
   13-24985.28961922     0.06948276    15249.70      0.06963446    15283.00      1.8949
   14-24985.28961922     0.06948276    15249.70      0.06963446    15283.00      1.8949
   15-24985.28961920     0.06948277    15249.71      0.06963447    15283.00      1.8949
   16-24985.28961916     0.06948282    15249.72      0.06963452    15283.01      1.8949
   17-24985.27756316     0.08153881    17895.70      0.08169052    17929.00      2.2229
   18-24985.27756311     0.08153886    17895.71      0.08169057    17929.01      2.2229
   19-24985.27756302     0.08153896    17895.73      0.08169066    17929.03      2.2229
   20-24985.27756281     0.08153917    17895.78      0.08169087    17929.07      2.2229
   21-24985.27756280     0.08153917    17895.78      0.08169088    17929.07      2.2229
   22-24985.23650002     0.12260196    26908.02      0.12275366    26941.31      3.3403
   23-24985.23650002     0.12260196    26908.02      0.12275366    26941.31      3.3403
   24-24985.23650002     0.12260196    26908.02      0.12275366    26941.31      3.3403
   25-24985.23236689     0.12673509    27815.14      0.12688679    27848.43      3.4528
   26-24985.22003506     0.13906692    30521.66      0.13921862    30554.96      3.7883
   27-24985.21888995     0.14021203    30772.98      0.14036373    30806.28      3.8195
   28-24985.21888976     0.14021222    30773.03      0.14036392    30806.32      3.8195
   29-24985.21888954     0.14021243    30773.07      0.14036414    30806.37      3.8195
   30-24985.21888954     0.14021244    30773.07      0.14036414    30806.37      3.8195
   31-24985.21888937     0.14021261    30773.11      0.14036431    30806.41      3.8195
   32-24985.21682288     0.14227909    31226.65      0.14243080    31259.95      3.8757
   33-24985.21682287     0.14227910    31226.65      0.14243080    31259.95      3.8757
   34-24985.21682257     0.14227941    31226.72      0.14243111    31260.02      3.8757
   35-24985.21682238     0.14227960    31226.76      0.14243130    31260.06      3.8758
   36-24985.21682237     0.14227960    31226.76      0.14243131    31260.06      3.8758
   37-24985.21682230     0.14227967    31226.78      0.14243138    31260.07      3.8758
   38-24985.21682204     0.14227994    31226.84      0.14243164    31260.13      3.8758
   39-24985.21600514     0.14309684    31406.13      0.14324854    31439.42      3.8980
   40-24985.21600514     0.14309684    31406.13      0.14324854    31439.42      3.8980
   41-24985.21600477     0.14309720    31406.21      0.14324891    31439.50      3.8980
   42-24985.21406354     0.14503843    31832.26      0.14519014    31865.55      3.9508
   43-24985.21406352     0.14503845    31832.26      0.14519016    31865.56      3.9508
   44-24985.21406304     0.14503894    31832.37      0.14519064    31865.66      3.9508
   45-24985.21406304     0.14503894    31832.37      0.14519064    31865.66      3.9508
   46-24985.21406285     0.14503912    31832.41      0.14519083    31865.70      3.9508
   47-24985.21406277     0.14503921    31832.43      0.14519091    31865.72      3.9508
   48-24985.21406267     0.14503931    31832.45      0.14519101    31865.74      3.9508
   49-24985.21406265     0.14503933    31832.45      0.14519103    31865.75      3.9508
   50-24985.21406259     0.14503938    31832.46      0.14519109    31865.76      3.9509
   51-24985.20646248     0.15263949    33500.50      0.15279120    33533.79      4.1577
   52-24985.20646229     0.15263969    33500.54      0.15279139    33533.83      4.1577
   53-24985.20646228     0.15263970    33500.54      0.15279140    33533.84      4.1577
   54-24985.20646202     0.15263995    33500.60      0.15279166    33533.89      4.1577
   55-24985.20646196     0.15264002    33500.61      0.15279172    33533.91      4.1577

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99945247 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000286 -0.00000000 -0.12362995  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000239  0.00000000  0.12362288  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000046 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.12362281
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00031361

   5    1  |0 0>          -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00341241 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.12347980  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00065589  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.54774045 -0.00000005  0.40515131 -0.00000001  0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.54773990  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.40514270
                           0.00000000  0.00012863 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00102778

   3    1  |1 1>+          0.00000057 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.41338470  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000003  0.31714298  0.00000002  0.70097090  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000001  0.00000005  0.54713687 -0.00000001 -0.40627609 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00001360 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000521  0.00000000  0.00020328 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000265  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00025523
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000065

   9    1  |1 1>+          0.00000345 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00024504 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000391 -0.00000000 -0.00020256 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000715 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00007160  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000159  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004793
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000211  0.00000000  0.00016370 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00119653 -0.00000000 -0.00453342  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.01909899 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00450585 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00120341 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00453912
                           0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001151

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002  0.81016208  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000005  0.54775745  0.00000001  0.40510293  0.00000001  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.54775836  0.00000005  0.40510159 -0.00000001  0.00000001 -0.00000000

   4    1  |1 0>           0.00000000  0.00014852 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000344
                          -0.00000000  0.63242081 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00135578

   5    1  |1 0>          -0.00000000 -0.00000025  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00205528
                          -0.00000000 -0.00105863  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81017776

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00001348  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00020733 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000141 -0.00000000 -0.00001215 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000141 -0.00000000  0.00001215 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000052
                           0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00020600

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000350  0.00000000 -0.00026071  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000351 -0.00000000 -0.00026071 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000923 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000318  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01909931 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006192  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00119672  0.00000000 -0.00454516  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00119672 -0.00000000 -0.00454500 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000005 -0.54774126  0.00000001  0.40515078  0.00000001  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000053  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.39680001 -0.00000003

   3    1  |1 1>-         -0.00000000 -0.00012863  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00102777
                          -0.00000000 -0.54774159  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.40514088

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.31531321  0.00000003  0.70232396 -0.00000002  0.00000001 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.54819330 -0.00000005  0.40393121 -0.00000001  0.00000001 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001360  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000519  0.00000000  0.00020324  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000349  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00024467 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000065
                          -0.00000000  0.00000261  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00025520

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000395  0.00000000  0.00020257 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012
                           0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004795

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000714  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007687 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000212 -0.00000000 -0.00016374 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00119647  0.00000000  0.00453326  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000028 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001151
                           0.00000000  0.00120337 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00453911

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01909895 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00456771  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000081  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00001050 -0.00000699 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00001034  0.00000000 -0.00000000  0.00000698 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001032 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.12346716 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000019
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00341244 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001461
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000001 -0.05939813  0.72783774  0.00000013  0.00000001  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000002  0.45145513  0.00000001 -0.00000000  0.00000001 -0.00000003 -0.57399543 -0.00000000
                           0.00000000  0.00005356 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002769  0.00000000

   3    1  |1 1>+         -0.69684108 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.57734347
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.59209190 -0.00000010  0.00000004 -0.22325052  0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000001 -0.42045061 -0.00000008 -0.00000011  0.59685163 -0.00000003  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000015  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00071610 -0.00023678 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00005211  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042832  0.00000000
                          -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000

   9    1  |1 1>+          0.00001099 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00049627
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00039595 -0.00000000  0.00000000 -0.00064052  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00022234  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00057417
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00091896  0.00000000  0.00000000 -0.00000000  0.00000000  0.00063082 -0.00000000
                          -0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00087667 -0.00030435 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000678 -0.00000242 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00267207 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000581  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000049 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00957521  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.57736201

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.68282716  0.00000012 -0.00000004  0.25892798 -0.00000001  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000013  0.68987759  0.23951058  0.00000005  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00009190  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000023 -0.00000000
                           0.00000000  0.77460767  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00477400 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002785  0.00000000
                           0.00000003  0.00298280  0.00000000 -0.00000000  0.00000001 -0.00000003 -0.57739349  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000244  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00075980

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00041899  0.00000000  0.00000000 -0.00105258  0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00038901  0.00106404  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000
                          -0.00000000  0.00000558  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00075729  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00033460  0.00018073  0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00032927  0.00000000 -0.00000000  0.00019027 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00026807  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00523843  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000452  0.00000038  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000452  0.00000000 -0.00000000  0.00000056 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.07996135 -0.00000002 -0.00000013  0.72586633 -0.00000003  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70641611 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.57734383

   3    1  |1 1>-          0.00000000 -0.00005255 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002801 -0.00000000
                           0.00000002  0.44290022  0.00000000  0.00000000 -0.00000001  0.00000002  0.58062165 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000011 -0.59681785 -0.20844693 -0.00000004 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000007  0.40539796 -0.60781172 -0.00000011 -0.00000001 -0.00000001

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000016  0.00000005  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00072260  0.00000000  0.00000000 -0.00021639  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001683  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00049637

   9    1  |1 1>-          0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                           0.00000000 -0.00004562  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042915  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00041395  0.00062907  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000000  0.00092823  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00061705 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00022060  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00057412

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00086763  0.00000000 -0.00000000  0.00032904 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000673  0.00000000 -0.00000000  0.00000256 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000575  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000061 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00256481  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000015

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.99140001  0.00000001  0.00000000 -0.00000002 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000001  0.99140089  0.00000006 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000006  0.99140091 -0.00000000  0.00000000 -0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.99125954 -0.01753485  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.01753486  0.99125805  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000015  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.05054347  0.00000000  0.00000000  0.00002792 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.05054263 -0.00000000  0.00000000 -0.00002776
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.08735257 -0.05066636 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.08743036 -0.00000001 -0.00000000 -0.00001579 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.05067675  0.00000000 -0.00000000 -0.00002786 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000010  0.99975688  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00332073  0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00410881  0.00000000 -0.00000000  0.00000342
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00018426  0.00402483  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00331938  0.00000000 -0.00000000 -0.00000021 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00366670  0.00127986  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00084143 -0.00000000  0.00000000 -0.00000638
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00255803  0.00000000  0.00000000  0.00000820 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.02964134  0.00000000  0.00000000 -0.01559245  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.01716084  0.02959905  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02963915 -0.00000000  0.00000000 -0.01558945
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000002

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00018945 -0.10097641 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.05054182 -0.00000000 -0.00000000 -0.00002806 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.05054490  0.00000000  0.00000000 -0.00002806  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00016867  0.00000000 -0.00000000  0.00003255

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.10105417  0.00000000  0.00000000 -0.00000006

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000132
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000002 -0.00000000  0.99975694

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000651  0.00332167  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00023137  0.00000000 -0.00000000 -0.00000333 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00023061  0.00000000  0.00000000  0.00000328 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00331494  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00418244 -0.00000000 -0.00000000  0.00000633 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00418244  0.00000000  0.00000000  0.00000634  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00450383 -0.00000862  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.03421302  0.00006418 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02963964  0.00000000  0.00000000  0.01559005 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.02963961 -0.00000000  0.00000000  0.01559001  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.05054051 -0.00000000  0.00000000  0.00002792  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.08754208 -0.05033832 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05054273 -0.00000000  0.00000000 -0.00002776

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.08760433  0.00000000  0.00000000 -0.00001570  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.05038674  0.00000000  0.00000000  0.00002792 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000  0.99975688 -0.00000010 -0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00332061 -0.00000000  0.00000000  0.00000011  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00019993 -0.00402394 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00410871 -0.00000000  0.00000000 -0.00000336

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00331938  0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00084214 -0.00000000  0.00000000 -0.00000638

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00366185  0.00129426  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00255838  0.00000000 -0.00000000 -0.00000820 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.02964138  0.00000000  0.00000000  0.01559244  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.02963923 -0.00000000  0.00000000 -0.01558948

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01704963  0.02966316  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00756833 -0.03220987  0.00000015  0.00000000  0.00000000 -0.00000000  0.00000232  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00663231  0.00000000 -0.00000015
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00663241 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00662987 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000064  0.00000170 -0.00008095  0.00000000 -0.00000000  0.00000000 -0.00669486 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000003  0.00666297 -0.00000000 -0.00000000 -0.00000000 -0.00008158 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.97782822 -0.20940761  0.00000097  0.00000000 -0.00000000 -0.00000000  0.00001346  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051259  0.00000000 -0.00064871
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00051636  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000005 -0.00000065 -0.00051161  0.00000000 -0.00000000  0.00000000 -0.00089368  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00089016  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00051469 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000056  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.48811061 -0.00000000 -0.54438645
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.60506162  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00005371 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00002473  0.00014708 -0.58847335  0.00000000  0.00000000  0.00000000 -0.03059627 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.48796677  0.00000006 -0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00004856  0.00032101 -0.18773755 -0.00000000  0.00000001 -0.00000000  0.53308160  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.12209797  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00001084 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.37784564 -0.00000000  0.38332577
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00106302  0.00000000 -0.00034527
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.12082088  0.56423374  0.00124972 -0.00000000 -0.00000000  0.00000000 -0.00081148 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00111065 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00000003 -0.00102972  0.00000000  0.00000000  0.00000000 -0.00000375 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00051703  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051707  0.00000000  0.00051900

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000169  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00102730 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000017 -0.00000318 -0.48790911  0.00000000  0.00000000  0.00000000 -0.00174570  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.03291201  0.00000000 -0.00000000 -0.00000001

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.03280675 -0.00000000  0.73511014

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00004330 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.48778951 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.61623726  0.00000000 -0.11766243

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.61622962  0.00000008 -0.00000001 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00006123 -0.00033966 -0.00236082 -0.00000000  0.00000001 -0.00000000  0.65461787  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.12082767  0.56426148 -0.00000857 -0.00000000  0.00000000 -0.00000000  0.00143745 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00099056  0.00000000  0.00037531

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00099163  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00051260  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008  0.00000062 -0.00051811 -0.00000000  0.00000000 -0.00000000  0.00088990  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00051641 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089192  0.00000000 -0.00044783

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051172  0.00000000  0.00090476

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000064  0.00000000 -0.00001595

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.48807266 -0.00000006  0.00000001 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002493  0.00015377  0.58864966 -0.00000000 -0.00000000 -0.00000000 -0.02639389  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00005371  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.60504083  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000006 -0.48796350 -0.00000000  0.04971333

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00001085 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.12219444 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00004859 -0.00032263 -0.18394377  0.00000000 -0.00000001  0.00000000 -0.53442849  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.37789374  0.00000005 -0.00000001 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00106215 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00110886  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.12082086 -0.56423388  0.00125035 -0.00000000  0.00000000 -0.00000000  0.00082054 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000878 -0.00000000 -0.00000000  0.00000000 -0.00000205 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000021  0.00000000  0.00000000  0.00000879 -0.00000000 -0.00000000  0.00000000 -0.00000208
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012  0.00000652  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000316 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00069923 -0.00000000 -0.00000000  0.00000000 -0.00092929 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00059414 -0.00074949  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000022 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00075949  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00044339  0.00000000  0.00000000  0.00070335  0.00000000 -0.00000000  0.00000000 -0.00052503
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00090646 -0.00000000 -0.00000000 -0.00029419  0.00000000 -0.00000000  0.00000001 -0.00092648
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00001620  0.00000000  0.00000000  0.00000354  0.00000000 -0.00000000  0.00000015 -0.02204936
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.19193579  0.00000003 -0.00000000  0.00000000 -0.00065126 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.04163695  0.32810411 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000749  0.00009419 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.37729130 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.05582583 -0.00000000 -0.00000010 -0.57453763 -0.00000000 -0.00000000  0.00000000 -0.00015083
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.43688783  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.70039491 -0.48298310 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00012606 -0.00013866  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.59422291 -0.00000011  0.00000000  0.00000000 -0.00042741 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00002694 -0.00000000 -0.00000000  0.00000000  0.70695900  0.00000472
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00004531 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00081762  0.00010497  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000003 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00075872 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00051039 -0.00000000 -0.00000000 -0.00080958 -0.00000000  0.00000000  0.00000001 -0.00092945

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00080416 -0.00000000  0.00000000  0.00000000  0.00092946  0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00101289  0.00001079 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000734 -0.00075833 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00003421 -0.00000044  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.57754489  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.73993401 -0.00000000 -0.00000008 -0.44801133  0.00000000 -0.00000000 -0.00000000  0.00029635

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000000 -0.45589672  0.00000008  0.00000000 -0.00000000  0.00028976  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000124 -0.00016579  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00687336  0.57750724 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.26734399  0.00000005 -0.00000000 -0.00000000 -0.00096459 -0.00000001

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.11468793  0.00000000  0.00000005  0.26865403  0.00000000 -0.00000000 -0.00000001  0.00096419

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00003065  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000023 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00014450 -0.00000000  0.00000000 -0.00000000 -0.70690755 -0.00000472

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00038006 -0.00000000 -0.00000000 -0.00014906 -0.00000000 -0.00000000 -0.00000472  0.70690791

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00065609 -0.00000000 -0.00000000 -0.00069228  0.00000000 -0.00000000 -0.00000001  0.00092927

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00075945  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000022  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00057615  0.00076346  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00069959  0.00000000 -0.00000000 -0.00000000  0.00052197  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00030147  0.00000000  0.00000000 -0.00000000 -0.00092826 -0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000336  0.00000000  0.00000000 -0.00000000  0.02204940  0.00000015

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.54235416  0.00000000  0.00000004  0.19777130  0.00000000 -0.00000000 -0.00000000  0.00065627

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.37736408  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000607 -0.00009447 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.03370068  0.32908055  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.57510297  0.00000010 -0.00000000 -0.00000000 -0.00015016 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00012810 -0.00013382 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.71170729  0.46611647 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.43682584  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.37693210  0.00000000  0.00000011  0.59824923  0.00000000 -0.00000000  0.00000000 -0.00042369

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00035172 -0.00000000  0.00000000  0.00002291 -0.00000000 -0.00000000 -0.00000472  0.70695864

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000015  0.00000004  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00081473 -0.00012516  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00004506 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000317 -0.00000000 -0.00000000 -0.00000000 -0.00000017  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000357 -0.00000000  0.00000000 -0.00000000  0.00000078
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000364  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000002 -0.00000000 -0.00000008  0.00000000 -0.00000000  0.00000000 -0.00001116 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000406  0.00000000  0.00000000  0.00000000 -0.00000069  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00002568  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00001543 -0.00000000 -0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000382 -0.00000000 -0.00000000 -0.00000000  0.00000284
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00092881  0.00000000  0.00000111  0.00000000  0.00000000 -0.00000000  0.00000039  0.00000000
                          -0.00000095  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000144  0.00000000 -0.00000000 -0.00000000  0.00000148 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000389  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000513 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.64351341  0.00000125  0.00000000  0.00000000  0.12012549
                          -0.00000000  0.00000000 -0.00000000  0.00000046 -0.00000005 -0.00000000  0.00000000  0.00000001

   8    1  |1 1>+         -0.00049939 -0.00000000 -0.70511438 -0.00000000 -0.00000000 -0.00000000  0.16524630  0.00000000
                           0.00000051 -0.00000000 -0.00198347  0.00000000  0.00000000 -0.00000000 -0.00001344  0.00000000

   9    1  |1 1>+          0.00000000  0.69453650 -0.00000000  0.00000000 -0.00000000 -0.10407798 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000109  0.56233626  0.00000000 -0.00000000 -0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.10260867 -0.00000000  0.00000000 -0.00000000 -0.53987099  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00079128 -0.00000000  0.04079957 -0.00000000  0.00000000 -0.00000000  0.50950867  0.00000001
                           0.00000081  0.00000000  0.00011477  0.00000000  0.00000000 -0.00000000 -0.00004144  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.10507369  0.00000020 -0.00000000 -0.00000001  0.58834083
                          -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000001 -0.00000000  0.00000000  0.00000003

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00026697  0.00000000 -0.00000000 -0.00000000  0.00079230
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00018343  0.00000000 -0.00000000  0.00000000  0.00003539 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.70693326 -0.00000000 -0.00045768 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000
                          -0.00072472 -0.00000000 -0.00000129  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000186  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000119  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000117 -0.00000000 -0.00000000  0.00000000 -0.00000026

   4    1  |1 0>          -0.00000111  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00108100 -0.00000000 -0.00000203 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000183 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000336  0.00000000

   6    1  |1 0>           0.00002260  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02204685 -0.00000000 -0.00000899  0.00000000  0.00000000  0.00000000  0.00000005  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00256002  0.00000000 -0.00000000  0.00000000  0.65409916  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000094 -0.48456194 -0.00000000  0.00000000  0.00000001

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000035  0.00000004  0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.48455255  0.00000094  0.00000000  0.00000001 -0.12610465

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00001108 -0.00000000 -0.00000000  0.00000000  0.00005324 -0.00000000
                          -0.00000053 -0.00000000  0.00394066 -0.00000000  0.00000000 -0.00000000  0.65457761  0.00000001

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000001  0.00000000 -0.00000000 -0.00000003
                           0.00000000 -0.00000000  0.00000000  0.15472891  0.00000030 -0.00000000 -0.00000001  0.71482462

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000030  0.15461205 -0.00000001  0.00000000  0.00000006

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.11027206 -0.00000000 -0.00000000  0.00000000  0.02647780 -0.00000001  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00018276  0.00000000 -0.00000000  0.00000000  0.00001249 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00028232 -0.00000000  0.00000000  0.00000000 -0.00077191

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00028247  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000381 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000141  0.00000000  0.00000000  0.00000000  0.00000139  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000095 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00092880 -0.00000000  0.00000111 -0.00000000 -0.00000000 -0.00000000 -0.00000038 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000039  0.00000000  0.00000000  0.00000000 -0.00000359

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000388  0.00000000 -0.00000000 -0.00000000  0.00000213

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000513  0.00000000 -0.00000000 -0.00000000  0.00001536

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000005  0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000125  0.64346897 -0.00000000 -0.00000000  0.00000001

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.69534922 -0.00000000  0.00000000 -0.00000000  0.10743101 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000051 -0.00000000 -0.00198894  0.00000000  0.00000000  0.00000000  0.00001274 -0.00000000
                           0.00050104  0.00000000  0.70705868  0.00000000  0.00000000 -0.00000000  0.15665884  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000005 -0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000  0.00000000 -0.56224341 -0.00000109 -0.00000000 -0.00000001  0.33548039

  11    1  |1 1>-         -0.00000081  0.00000000 -0.00009717  0.00000000  0.00000000 -0.00000000 -0.00004148  0.00000000
                          -0.00079082  0.00000000  0.03454372  0.00000000 -0.00000000  0.00000000 -0.50998111 -0.00000001

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.10683350 -0.00000000  0.00000000  0.00000000 -0.50756170 -0.00000001 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000021 -0.10497763  0.00000001 -0.00000000 -0.00000005

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00026540  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00072472  0.00000000  0.00000129 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.70693253 -0.00000000 -0.00045697 -0.00000000  0.00000000  0.00000000  0.00000605  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00018426 -0.00000000  0.00000000 -0.00000000  0.00001385  0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>           0.00000000 -0.00000447  0.00000049  0.00000000 -0.00000000 -0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000005 -0.04239895  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000080 -0.00000000 -0.00000000  0.04239892  0.00000005 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.04239787
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005

   5    1  |0 0>           0.00000000 -0.00000741  0.04238439  0.00000000  0.00000000  0.00004552  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000101  0.00004548 -0.00000000 -0.00000000 -0.04238749 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00002453 -0.00000073  0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00048288 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00048214
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000144 -0.00084363 -0.00000000 -0.00000000 -0.00047009 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000361 -0.00000000 -0.00000000  0.00083307  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000212 -0.00000000  0.00000000 -0.00048339 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00001535  0.00000000 -0.00000000  0.00000092  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00061155 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00072656
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000001  0.13108698  0.00005307  0.00000000  0.00000000  0.00085276  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.33532717 -0.00000001  0.00000000 -0.00062844 -0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.43324597 -0.00081361  0.00000000  0.00000000  0.00033356 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00023626
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00035531 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000081  0.70644412 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00028408 -0.39743806  0.00000000  0.00000000  0.71240469 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.70646950
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000089

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000007 -0.00001423 -0.00000000 -0.00000000 -0.00096642 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000025 -0.00000000 -0.00000000  0.00048275  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00048274 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000159

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00096392

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.02278366  0.00001036  0.00000000  0.00000000  0.00073938  0.00000000

   8    1  |1 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.12608969  0.00000000  0.00000000 -0.00008558 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00008484 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00071974

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000006 -0.00000000  0.00000000  0.00000000 -0.00069550  0.00000000  0.00000000

  12    1  |1 0>          -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.71484876  0.00000002  0.00000000 -0.00069545 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.74738699 -0.00103851 -0.00000000 -0.00000000  0.00001519 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00031802  0.81565934  0.00000000  0.00000000 -0.01202209  0.00000002

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000081  0.70649575 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00077128 -0.00000000 -0.00000000  0.70649539  0.00000081 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000285  0.00000000 -0.00000000  0.00048288  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000154  0.00082940 -0.00000000 -0.00000000 -0.00049476  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00048212

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00083463 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00048052 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000089 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.12024471  0.00000000 -0.00000000  0.00061242  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.12378218  0.00002777 -0.00000000 -0.00000000 -0.00085457 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00072719

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00062903 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00023649

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.46977169  0.00082329  0.00000000  0.00000000  0.00030944  0.00000000

  13    1  |1 1>-          0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.58837770 -0.00000001  0.00000000 -0.00035532 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00079190 -0.00000000  0.00000000 -0.70644449 -0.00000081  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000089
                          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.70647023

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00028551  0.41826137  0.00000000  0.00000000  0.70038183  0.00000001


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -24985.35925368     -0.00015170      -33.30      0.00000000        0.00      0.0000
     2   1 -24985.29297162      0.06613036    14513.94      0.06628206    14547.23      1.8036
     3   1 -24985.29297157      0.06613040    14513.95      0.06628211    14547.24      1.8036
     4   1 -24985.29297157      0.06613041    14513.95      0.06628211    14547.24      1.8036
     5   1 -24985.29184950      0.06725248    14760.21      0.06740418    14793.51      1.8342
     6   1 -24985.29184948      0.06725250    14760.22      0.06740420    14793.51      1.8342
     7   1 -24985.29184945      0.06725253    14760.22      0.06740423    14793.52      1.8342
     8   1 -24985.29184941      0.06725257    14760.23      0.06740427    14793.53      1.8342
     9   1 -24985.29184939      0.06725259    14760.24      0.06740429    14793.53      1.8342
    10   1 -24985.28961932      0.06948266    15249.68      0.06963436    15282.98      1.8948
    11   1 -24985.28961928      0.06948270    15249.69      0.06963440    15282.98      1.8948
    12   1 -24985.28961928      0.06948270    15249.69      0.06963440    15282.99      1.8948
    13   1 -24985.28961922      0.06948276    15249.70      0.06963446    15283.00      1.8949
    14   1 -24985.28961922      0.06948276    15249.70      0.06963446    15283.00      1.8949
    15   1 -24985.28961920      0.06948277    15249.71      0.06963447    15283.00      1.8949
    16   1 -24985.28961916      0.06948282    15249.72      0.06963452    15283.01      1.8949
    17   1 -24985.27756316      0.08153881    17895.70      0.08169052    17929.00      2.2229
    18   1 -24985.27756311      0.08153886    17895.71      0.08169057    17929.01      2.2229
    19   1 -24985.27756302      0.08153896    17895.73      0.08169066    17929.03      2.2229
    20   1 -24985.27756281      0.08153917    17895.78      0.08169087    17929.07      2.2229
    21   1 -24985.27756280      0.08153917    17895.78      0.08169088    17929.07      2.2229
    22   1 -24985.23650002      0.12260196    26908.02      0.12275366    26941.31      3.3403
    23   1 -24985.23650002      0.12260196    26908.02      0.12275366    26941.31      3.3403
    24   1 -24985.23650002      0.12260196    26908.02      0.12275366    26941.31      3.3403
    25   1 -24985.23236689      0.12673509    27815.14      0.12688679    27848.43      3.4528
    26   1 -24985.22003506      0.13906692    30521.66      0.13921862    30554.96      3.7883
    27   1 -24985.21888995      0.14021203    30772.98      0.14036373    30806.28      3.8195
    28   1 -24985.21888976      0.14021222    30773.03      0.14036392    30806.32      3.8195
    29   1 -24985.21888954      0.14021243    30773.07      0.14036414    30806.37      3.8195
    30   1 -24985.21888954      0.14021244    30773.07      0.14036414    30806.37      3.8195
    31   1 -24985.21888937      0.14021261    30773.11      0.14036431    30806.41      3.8195
    32   1 -24985.21682288      0.14227909    31226.65      0.14243080    31259.95      3.8757
    33   1 -24985.21682287      0.14227910    31226.65      0.14243080    31259.95      3.8757
    34   1 -24985.21682257      0.14227941    31226.72      0.14243111    31260.02      3.8757
    35   1 -24985.21682238      0.14227960    31226.76      0.14243130    31260.06      3.8758
    36   1 -24985.21682237      0.14227960    31226.76      0.14243131    31260.06      3.8758
    37   1 -24985.21682230      0.14227967    31226.78      0.14243138    31260.07      3.8758
    38   1 -24985.21682204      0.14227994    31226.84      0.14243164    31260.13      3.8758
    39   1 -24985.21600514      0.14309684    31406.13      0.14324854    31439.42      3.8980
    40   1 -24985.21600514      0.14309684    31406.13      0.14324854    31439.42      3.8980
    41   1 -24985.21600477      0.14309720    31406.21      0.14324891    31439.50      3.8980
    42   1 -24985.21406354      0.14503843    31832.26      0.14519014    31865.55      3.9508
    43   1 -24985.21406352      0.14503845    31832.26      0.14519016    31865.56      3.9508
    44   1 -24985.21406304      0.14503894    31832.37      0.14519064    31865.66      3.9508
    45   1 -24985.21406304      0.14503894    31832.37      0.14519064    31865.66      3.9508
    46   1 -24985.21406285      0.14503912    31832.41      0.14519083    31865.70      3.9508
    47   1 -24985.21406277      0.14503921    31832.43      0.14519091    31865.72      3.9508
    48   1 -24985.21406267      0.14503931    31832.45      0.14519101    31865.74      3.9508
    49   1 -24985.21406265      0.14503933    31832.45      0.14519103    31865.75      3.9508
    50   1 -24985.21406259      0.14503938    31832.46      0.14519109    31865.76      3.9509
    51   1 -24985.20646248      0.15263949    33500.50      0.15279120    33533.79      4.1577
    52   1 -24985.20646229      0.15263969    33500.54      0.15279139    33533.83      4.1577
    53   1 -24985.20646228      0.15263970    33500.54      0.15279140    33533.84      4.1577
    54   1 -24985.20646202      0.15263995    33500.60      0.15279166    33533.89      4.1577
    55   1 -24985.20646196      0.15264002    33500.61      0.15279172    33533.91      4.1577

 E0 = -24985.35910198 is the energy of the lowest zeroth-order state
 E1 = -24985.35925368 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99945247 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000286 -0.00000000 -0.12362995  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000239  0.00000000  0.12362288  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000046 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.12362281
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00031361

  5  1     5    1  |0 0>       -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00341241 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.12347980  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00065589  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.54774045 -0.00000005  0.40515131 -0.00000001  0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.54773990  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.40514270
                                0.00000000  0.00012863 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00102778

 10  1     3    1  |1 1>+       0.00000057 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.41338470  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000003  0.31714298  0.00000002  0.70097090  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000001  0.00000005  0.54713687 -0.00000001 -0.40627609 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00001360 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000521  0.00000000  0.00020328 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000265  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00025523
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000065

 16  1     9    1  |1 1>+       0.00000345 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00024504 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000391 -0.00000000 -0.00020256 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000715 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00007160  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.00000159  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004793
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000211  0.00000000  0.00016370 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00119653 -0.00000000 -0.00453342  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.01909899 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00450585 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00120341 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00453912
                                0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001151

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002  0.81016208  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000005  0.54775745  0.00000001  0.40510293  0.00000001  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.54775836  0.00000005  0.40510159 -0.00000001  0.00000001 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00014852 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000344
                               -0.00000000  0.63242081 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00135578

 28  1     5    1  |1 0>       -0.00000000 -0.00000025  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00205528
                               -0.00000000 -0.00105863  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81017776

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00001348  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00020733 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000141 -0.00000000 -0.00001215 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000141 -0.00000000  0.00001215 -0.00000000  0.00000000 -0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000052
                                0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00020600

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000350  0.00000000 -0.00026071  0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000351 -0.00000000 -0.00026071 -0.00000000 -0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000923 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000318  0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01909931 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006192  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00119672  0.00000000 -0.00454516  0.00000000 -0.00000000  0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00119672 -0.00000000 -0.00454500 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000005 -0.54774126  0.00000001  0.40515078  0.00000001  0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000053  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.39680001 -0.00000003

 42  1     3    1  |1 1>-      -0.00000000 -0.00012863  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00102777
                               -0.00000000 -0.54774159  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.40514088

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.31531321  0.00000003  0.70232396 -0.00000002  0.00000001 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.54819330 -0.00000005  0.40393121 -0.00000001  0.00000001 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001360  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000519  0.00000000  0.00020324  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000349  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00024467 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000065
                               -0.00000000  0.00000261  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00025520

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000395  0.00000000  0.00020257 -0.00000000  0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012
                                0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004795

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000714  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007687 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000212 -0.00000000 -0.00016374 -0.00000000 -0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00119647  0.00000000  0.00453326  0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000028 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001151
                                0.00000000  0.00120337 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00453911

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01909895 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00456771  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000081  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00001050 -0.00000699 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00001034  0.00000000 -0.00000000  0.00000698 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001032 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.12346716 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000019
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00341244 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001461
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000001 -0.05939813  0.72783774  0.00000013  0.00000001  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000002  0.45145513  0.00000001 -0.00000000  0.00000001 -0.00000003 -0.57399543 -0.00000000
                                0.00000000  0.00005356 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002769  0.00000000

 10  1     3    1  |1 1>+      -0.69684108 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.57734347
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.59209190 -0.00000010  0.00000004 -0.22325052  0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000001 -0.42045061 -0.00000008 -0.00000011  0.59685163 -0.00000003  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000015  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00071610 -0.00023678 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00005211  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042832  0.00000000
                               -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000

 16  1     9    1  |1 1>+       0.00001099 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00049627
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00039595 -0.00000000  0.00000000 -0.00064052  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00022234  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00057417
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00091896  0.00000000  0.00000000 -0.00000000  0.00000000  0.00063082 -0.00000000
                               -0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00087667 -0.00030435 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000678 -0.00000242 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00267207 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000581  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000049 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00957521  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.57736201

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.68282716  0.00000012 -0.00000004  0.25892798 -0.00000001  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000013  0.68987759  0.23951058  0.00000005  0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00009190  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000023 -0.00000000
                                0.00000000  0.77460767  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00477400 -0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002785  0.00000000
                                0.00000003  0.00298280  0.00000000 -0.00000000  0.00000001 -0.00000003 -0.57739349  0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000244  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00075980

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00041899  0.00000000  0.00000000 -0.00105258  0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00038901  0.00106404  0.00000000  0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000
                               -0.00000000  0.00000558  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00075729  0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00033460  0.00018073  0.00000000  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00032927  0.00000000 -0.00000000  0.00019027 -0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00026807  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00523843  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000452  0.00000038  0.00000000  0.00000000 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000452  0.00000000 -0.00000000  0.00000056 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.07996135 -0.00000002 -0.00000013  0.72586633 -0.00000003  0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70641611 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.57734383

 42  1     3    1  |1 1>-       0.00000000 -0.00005255 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002801 -0.00000000
                                0.00000002  0.44290022  0.00000000  0.00000000 -0.00000001  0.00000002  0.58062165 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000011 -0.59681785 -0.20844693 -0.00000004 -0.00000000  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000007  0.40539796 -0.60781172 -0.00000011 -0.00000001 -0.00000001

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000016  0.00000005  0.00000000  0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00072260  0.00000000  0.00000000 -0.00021639  0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001683  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00049637

 48  1     9    1  |1 1>-       0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                                0.00000000 -0.00004562  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042915  0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00041395  0.00062907  0.00000000  0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000000  0.00092823  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00061705 -0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00022060  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00057412

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00086763  0.00000000 -0.00000000  0.00032904 -0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000673  0.00000000 -0.00000000  0.00000256 -0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000575  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000061 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00256481  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000015


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.99140001  0.00000001  0.00000000 -0.00000002 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000001  0.99140089  0.00000006 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000006  0.99140091 -0.00000000  0.00000000 -0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.99125954 -0.01753485  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.01753486  0.99125805  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000015  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.05054347  0.00000000  0.00000000  0.00002792 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.05054263 -0.00000000  0.00000000 -0.00002776
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.08735257 -0.05066636 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.08743036 -0.00000001 -0.00000000 -0.00001579 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.05067675  0.00000000 -0.00000000 -0.00002786 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000010  0.99975688  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00332073  0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00410881  0.00000000 -0.00000000  0.00000342
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00018426  0.00402483  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00331938  0.00000000 -0.00000000 -0.00000021 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00366670  0.00127986  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00084143 -0.00000000  0.00000000 -0.00000638
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00255803  0.00000000  0.00000000  0.00000820 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.02964134  0.00000000  0.00000000 -0.01559245  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.01716084  0.02959905  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02963915 -0.00000000  0.00000000 -0.01558945
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000002

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00018945 -0.10097641 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.05054182 -0.00000000 -0.00000000 -0.00002806 -0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.05054490  0.00000000  0.00000000 -0.00002806  0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00016867  0.00000000 -0.00000000  0.00003255

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.10105417  0.00000000  0.00000000 -0.00000006

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000132
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000002 -0.00000000  0.99975694

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000651  0.00332167  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00023137  0.00000000 -0.00000000 -0.00000333 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00023061  0.00000000  0.00000000  0.00000328 -0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00331494  0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00418244 -0.00000000 -0.00000000  0.00000633 -0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00418244  0.00000000  0.00000000  0.00000634  0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00450383 -0.00000862  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.03421302  0.00006418 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02963964  0.00000000  0.00000000  0.01559005 -0.00000000 -0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.02963961 -0.00000000  0.00000000  0.01559001  0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.05054051 -0.00000000  0.00000000  0.00002792  0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.08754208 -0.05033832 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05054273 -0.00000000  0.00000000 -0.00002776

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.08760433  0.00000000  0.00000000 -0.00001570  0.00000000  0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.05038674  0.00000000  0.00000000  0.00002792 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000  0.99975688 -0.00000010 -0.00000002

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00332061 -0.00000000  0.00000000  0.00000011  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00019993 -0.00402394 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00410871 -0.00000000  0.00000000 -0.00000336

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00331938  0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00084214 -0.00000000  0.00000000 -0.00000638

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00366185  0.00129426  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00255838  0.00000000 -0.00000000 -0.00000820 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.02964138  0.00000000  0.00000000  0.01559244  0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.02963923 -0.00000000  0.00000000 -0.01558948

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01704963  0.02966316  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00756833 -0.03220987  0.00000015  0.00000000  0.00000000 -0.00000000  0.00000232  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00663231  0.00000000 -0.00000015
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00663241 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00662987 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000064  0.00000170 -0.00008095  0.00000000 -0.00000000  0.00000000 -0.00669486 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000003  0.00666297 -0.00000000 -0.00000000 -0.00000000 -0.00008158 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.97782822 -0.20940761  0.00000097  0.00000000 -0.00000000 -0.00000000  0.00001346  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051259  0.00000000 -0.00064871
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00051636  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000005 -0.00000065 -0.00051161  0.00000000 -0.00000000  0.00000000 -0.00089368  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00089016  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00051469 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000056  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.48811061 -0.00000000 -0.54438645
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.60506162  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00005371 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00002473  0.00014708 -0.58847335  0.00000000  0.00000000  0.00000000 -0.03059627 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.48796677  0.00000006 -0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00004856  0.00032101 -0.18773755 -0.00000000  0.00000001 -0.00000000  0.53308160  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.12209797  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00001084 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.37784564 -0.00000000  0.38332577
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00106302  0.00000000 -0.00034527
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.12082088  0.56423374  0.00124972 -0.00000000 -0.00000000  0.00000000 -0.00081148 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00111065 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00000003 -0.00102972  0.00000000  0.00000000  0.00000000 -0.00000375 -0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00051703  0.00000000 -0.00000000  0.00000000

 26  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051707  0.00000000  0.00051900

 27  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000169  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00102730 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000017 -0.00000318 -0.48790911  0.00000000  0.00000000  0.00000000 -0.00174570  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.03291201  0.00000000 -0.00000000 -0.00000001

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.03280675 -0.00000000  0.73511014

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00004330 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.48778951 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.61623726  0.00000000 -0.11766243

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.61622962  0.00000008 -0.00000001 -0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00006123 -0.00033966 -0.00236082 -0.00000000  0.00000001 -0.00000000  0.65461787  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.12082767  0.56426148 -0.00000857 -0.00000000  0.00000000 -0.00000000  0.00143745 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00099056  0.00000000  0.00037531

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00099163  0.00000000 -0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00051260  0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008  0.00000062 -0.00051811 -0.00000000  0.00000000 -0.00000000  0.00088990  0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00051641 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089192  0.00000000 -0.00044783

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00051172  0.00000000  0.00090476

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000064  0.00000000 -0.00001595

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.48807266 -0.00000006  0.00000001 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002493  0.00015377  0.58864966 -0.00000000 -0.00000000 -0.00000000 -0.02639389  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00005371  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.60504083  0.00000000  0.00000000  0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000006 -0.48796350 -0.00000000  0.04971333

 50  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00001085 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.12219444 -0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00004859 -0.00032263 -0.18394377  0.00000000 -0.00000001  0.00000000 -0.53442849  0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.37789374  0.00000005 -0.00000001 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00106215 -0.00000000  0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00110886  0.00000000  0.00000000  0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.12082086 -0.56423388  0.00125035 -0.00000000  0.00000000 -0.00000000  0.00082054 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000878 -0.00000000 -0.00000000  0.00000000 -0.00000205 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000021  0.00000000  0.00000000  0.00000879 -0.00000000 -0.00000000  0.00000000 -0.00000208
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012  0.00000652  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000316 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00069923 -0.00000000 -0.00000000  0.00000000 -0.00092929 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00059414 -0.00074949  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000022 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00075949  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00044339  0.00000000  0.00000000  0.00070335  0.00000000 -0.00000000  0.00000000 -0.00052503
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00090646 -0.00000000 -0.00000000 -0.00029419  0.00000000 -0.00000000  0.00000001 -0.00092648
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00001620  0.00000000  0.00000000  0.00000354  0.00000000 -0.00000000  0.00000015 -0.02204936
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.19193579  0.00000003 -0.00000000  0.00000000 -0.00065126 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.04163695  0.32810411 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000749  0.00009419 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.37729130 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.05582583 -0.00000000 -0.00000010 -0.57453763 -0.00000000 -0.00000000  0.00000000 -0.00015083
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.43688783  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.70039491 -0.48298310 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00012606 -0.00013866  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.59422291 -0.00000011  0.00000000  0.00000000 -0.00042741 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00002694 -0.00000000 -0.00000000  0.00000000  0.70695900  0.00000472
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00004531 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00081762  0.00010497  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000003 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00075872 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00051039 -0.00000000 -0.00000000 -0.00080958 -0.00000000  0.00000000  0.00000001 -0.00092945

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00080416 -0.00000000  0.00000000  0.00000000  0.00092946  0.00000001

 27  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00101289  0.00001079 -0.00000000  0.00000000

 28  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000734 -0.00075833 -0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00003421 -0.00000044  0.00000000 -0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.57754489  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.73993401 -0.00000000 -0.00000008 -0.44801133  0.00000000 -0.00000000 -0.00000000  0.00029635

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000000 -0.45589672  0.00000008  0.00000000 -0.00000000  0.00028976  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000124 -0.00016579  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00687336  0.57750724 -0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.26734399  0.00000005 -0.00000000 -0.00000000 -0.00096459 -0.00000001

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.11468793  0.00000000  0.00000005  0.26865403  0.00000000 -0.00000000 -0.00000001  0.00096419

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00003065  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000023 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00014450 -0.00000000  0.00000000 -0.00000000 -0.70690755 -0.00000472

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00038006 -0.00000000 -0.00000000 -0.00014906 -0.00000000 -0.00000000 -0.00000472  0.70690791

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00065609 -0.00000000 -0.00000000 -0.00069228  0.00000000 -0.00000000 -0.00000001  0.00092927

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00075945  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000022  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00057615  0.00076346  0.00000000 -0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00069959  0.00000000 -0.00000000 -0.00000000  0.00052197  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00030147  0.00000000  0.00000000 -0.00000000 -0.00092826 -0.00000001

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000336  0.00000000  0.00000000 -0.00000000  0.02204940  0.00000015

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.54235416  0.00000000  0.00000004  0.19777130  0.00000000 -0.00000000 -0.00000000  0.00065627

 47  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.37736408  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000607 -0.00009447 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.03370068  0.32908055  0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.57510297  0.00000010 -0.00000000 -0.00000000 -0.00015016 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00012810 -0.00013382 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.71170729  0.46611647 -0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.43682584  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.37693210  0.00000000  0.00000011  0.59824923  0.00000000 -0.00000000  0.00000000 -0.00042369

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00035172 -0.00000000  0.00000000  0.00002291 -0.00000000 -0.00000000 -0.00000472  0.70695864

 54  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000015  0.00000004  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00081473 -0.00012516  0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00004506 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000317 -0.00000000 -0.00000000 -0.00000000 -0.00000017  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000357 -0.00000000  0.00000000 -0.00000000  0.00000078
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000364  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000002 -0.00000000 -0.00000008  0.00000000 -0.00000000  0.00000000 -0.00001116 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000406  0.00000000  0.00000000  0.00000000 -0.00000069  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00002568  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00001543 -0.00000000 -0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000382 -0.00000000 -0.00000000 -0.00000000  0.00000284
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00092881  0.00000000  0.00000111  0.00000000  0.00000000 -0.00000000  0.00000039  0.00000000
                               -0.00000095  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000144  0.00000000 -0.00000000 -0.00000000  0.00000148 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000389  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000513 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.64351341  0.00000125  0.00000000  0.00000000  0.12012549
                               -0.00000000  0.00000000 -0.00000000  0.00000046 -0.00000005 -0.00000000  0.00000000  0.00000001

 15  1     8    1  |1 1>+      -0.00049939 -0.00000000 -0.70511438 -0.00000000 -0.00000000 -0.00000000  0.16524630  0.00000000
                                0.00000051 -0.00000000 -0.00198347  0.00000000  0.00000000 -0.00000000 -0.00001344  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.69453650 -0.00000000  0.00000000 -0.00000000 -0.10407798 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000109  0.56233626  0.00000000 -0.00000000 -0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.10260867 -0.00000000  0.00000000 -0.00000000 -0.53987099  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00079128 -0.00000000  0.04079957 -0.00000000  0.00000000 -0.00000000  0.50950867  0.00000001
                                0.00000081  0.00000000  0.00011477  0.00000000  0.00000000 -0.00000000 -0.00004144  0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.10507369  0.00000020 -0.00000000 -0.00000001  0.58834083
                               -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000001 -0.00000000  0.00000000  0.00000003

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00026697  0.00000000 -0.00000000 -0.00000000  0.00079230
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00018343  0.00000000 -0.00000000  0.00000000  0.00003539 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.70693326 -0.00000000 -0.00045768 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000
                               -0.00072472 -0.00000000 -0.00000129  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000186  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000119  0.00000000  0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000117 -0.00000000 -0.00000000  0.00000000 -0.00000026

 27  1     4    1  |1 0>       -0.00000111  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00108100 -0.00000000 -0.00000203 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000183 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000336  0.00000000

 29  1     6    1  |1 0>        0.00002260  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02204685 -0.00000000 -0.00000899  0.00000000  0.00000000  0.00000000  0.00000005  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00256002  0.00000000 -0.00000000  0.00000000  0.65409916  0.00000000  0.00000000

 31  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000094 -0.48456194 -0.00000000  0.00000000  0.00000001

 32  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000035  0.00000004  0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.48455255  0.00000094  0.00000000  0.00000001 -0.12610465

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00001108 -0.00000000 -0.00000000  0.00000000  0.00005324 -0.00000000
                               -0.00000053 -0.00000000  0.00394066 -0.00000000  0.00000000 -0.00000000  0.65457761  0.00000001

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000001  0.00000000 -0.00000000 -0.00000003
                                0.00000000 -0.00000000  0.00000000  0.15472891  0.00000030 -0.00000000 -0.00000001  0.71482462

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000030  0.15461205 -0.00000001  0.00000000  0.00000006

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.11027206 -0.00000000 -0.00000000  0.00000000  0.02647780 -0.00000001  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00018276  0.00000000 -0.00000000  0.00000000  0.00001249 -0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00028232 -0.00000000  0.00000000  0.00000000 -0.00077191

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00028247  0.00000000 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000381 -0.00000000  0.00000000  0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000141  0.00000000  0.00000000  0.00000000  0.00000139  0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000095 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00092880 -0.00000000  0.00000111 -0.00000000 -0.00000000 -0.00000000 -0.00000038 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000039  0.00000000  0.00000000  0.00000000 -0.00000359

 44  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000388  0.00000000 -0.00000000 -0.00000000  0.00000213

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000513  0.00000000 -0.00000000 -0.00000000  0.00001536

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000005  0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000125  0.64346897 -0.00000000 -0.00000000  0.00000001

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.69534922 -0.00000000  0.00000000 -0.00000000  0.10743101 -0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000051 -0.00000000 -0.00198894  0.00000000  0.00000000  0.00000000  0.00001274 -0.00000000
                                0.00050104  0.00000000  0.70705868  0.00000000  0.00000000 -0.00000000  0.15665884  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000005 -0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000  0.00000000 -0.56224341 -0.00000109 -0.00000000 -0.00000001  0.33548039

 50  1    11    1  |1 1>-      -0.00000081  0.00000000 -0.00009717  0.00000000  0.00000000 -0.00000000 -0.00004148  0.00000000
                               -0.00079082  0.00000000  0.03454372  0.00000000 -0.00000000  0.00000000 -0.50998111 -0.00000001

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.10683350 -0.00000000  0.00000000  0.00000000 -0.50756170 -0.00000001 -0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000021 -0.10497763  0.00000001 -0.00000000 -0.00000005

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00026540  0.00000000 -0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00072472  0.00000000  0.00000129 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.70693253 -0.00000000 -0.00045697 -0.00000000  0.00000000  0.00000000  0.00000605  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00018426 -0.00000000  0.00000000 -0.00000000  0.00001385  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>        0.00000000 -0.00000447  0.00000049  0.00000000 -0.00000000 -0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000005 -0.04239895  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000080 -0.00000000 -0.00000000  0.04239892  0.00000005 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.04239787
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005

  5  1     5    1  |0 0>        0.00000000 -0.00000741  0.04238439  0.00000000  0.00000000  0.00004552  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000101  0.00004548 -0.00000000 -0.00000000 -0.04238749 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00002453 -0.00000073  0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00048288 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00048214
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000144 -0.00084363 -0.00000000 -0.00000000 -0.00047009 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000361 -0.00000000 -0.00000000  0.00083307  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000212 -0.00000000  0.00000000 -0.00048339 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00001535  0.00000000 -0.00000000  0.00000092  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00061155 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00072656
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000001  0.13108698  0.00005307  0.00000000  0.00000000  0.00085276  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.33532717 -0.00000001  0.00000000 -0.00062844 -0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.43324597 -0.00081361  0.00000000  0.00000000  0.00033356 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00023626
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00035531 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000081  0.70644412 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00028408 -0.39743806  0.00000000  0.00000000  0.71240469 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.70646950
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000089

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000007 -0.00001423 -0.00000000 -0.00000000 -0.00096642 -0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000025 -0.00000000 -0.00000000  0.00048275  0.00000000 -0.00000000 -0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00048274 -0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000159

 28  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00096392

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.02278366  0.00001036  0.00000000  0.00000000  0.00073938  0.00000000

 31  1     8    1  |1 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.12608969  0.00000000  0.00000000 -0.00008558 -0.00000000  0.00000000  0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00008484 -0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00071974

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000006 -0.00000000  0.00000000  0.00000000 -0.00069550  0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.71484876  0.00000002  0.00000000 -0.00069545 -0.00000000  0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.74738699 -0.00103851 -0.00000000 -0.00000000  0.00001519 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00031802  0.81565934  0.00000000  0.00000000 -0.01202209  0.00000002

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000081  0.70649575 -0.00000000 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00077128 -0.00000000 -0.00000000  0.70649539  0.00000081 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000285  0.00000000 -0.00000000  0.00048288  0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000154  0.00082940 -0.00000000 -0.00000000 -0.00049476  0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00048212

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00083463 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00048052 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000089 -0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.12024471  0.00000000 -0.00000000  0.00061242  0.00000000 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.12378218  0.00002777 -0.00000000 -0.00000000 -0.00085457 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00072719

 49  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00062903 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00023649

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.46977169  0.00082329  0.00000000  0.00000000  0.00030944  0.00000000

 52  1    13    1  |1 1>-       0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.58837770 -0.00000001  0.00000000 -0.00035532 -0.00000000  0.00000000  0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00079190 -0.00000000  0.00000000 -0.70644449 -0.00000081  0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000089
                               -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.70647023

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00028551  0.41826137  0.00000000  0.00000000  0.70038183  0.00000001



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.53%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.53%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.53%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.52%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%   16.41%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.41%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.09%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.06%    0.00%   49.14%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.94%    0.00%   16.51%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.64%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.00%    0.00%   16.41%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%   16.41%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   40.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.64%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%   16.41%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   15.75%    0.00%
 42  1     3    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.41%
 43  1     4    1  |1 1>-         0.00%    0.00%    9.94%    0.00%   49.33%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%   30.05%    0.00%   16.32%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          1.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.35%   52.97%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   20.38%    0.00%    0.00%    0.00%    0.00%   32.95%    0.00%
 10  1     3    1  |1 1>+        48.56%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 11  1     4    1  |1 1>+         0.00%    0.00%   35.06%    0.00%    0.00%    4.98%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   17.68%    0.00%    0.00%   35.62%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 25  1     2    1  |1 0>          0.00%    0.00%   46.63%    0.00%    0.00%    6.70%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%   47.59%    5.74%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.64%    0.00%    0.00%   52.69%    0.00%    0.00%
 41  1     2    1  |1 1>-        49.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 42  1     3    1  |1 1>-         0.00%   19.62%    0.00%    0.00%    0.00%    0.00%   33.71%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   35.62%    4.35%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   16.43%   36.94%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%   98.29%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   98.29%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.29%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>         98.26%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.03%   98.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.26%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.76%    0.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.76%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.95%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.09%    0.00%    0.00%    0.02%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.03%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.02%
 24  1     1    1  |1 0>          0.00%    1.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.02%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.95%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.02%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.02%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.77%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.95%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.02%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.02%
 55  1    16    1  |1 1>-         0.03%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         95.61%    4.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%   29.64%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%   36.61%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%   34.63%    0.00%    0.00%    0.00%    0.09%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    3.52%    0.00%    0.00%    0.00%   28.42%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    1.49%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%   14.69%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         1.46%   31.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%   54.04%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   23.79%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   37.97%    0.00%    1.38%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   37.97%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 37  1    14    1  |1 0>          1.46%   31.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.82%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%   34.65%    0.00%    0.00%    0.00%    0.07%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.61%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.25%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    1.49%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    3.38%    0.00%    0.00%    0.00%   28.56%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         1.46%   31.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 14  1     7    1  |1 1>+         0.00%    0.00%    3.68%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.17%   10.77%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   14.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.31%    0.00%    0.00%   33.01%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%   19.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.06%   23.33%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%   35.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>         54.75%    0.00%    0.00%   20.07%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%   20.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    7.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          1.32%    0.00%    0.00%    7.22%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 46  1     7    1  |1 1>-        29.41%    0.00%    0.00%    3.91%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%   14.24%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.11%   10.83%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%   33.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.65%   21.73%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%   19.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-        14.21%    0.00%    0.00%   35.79%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   41.41%    0.00%    0.00%    0.00%    1.44%
 15  1     8    1  |1 1>+         0.00%    0.00%   49.72%    0.00%    0.00%    0.00%    2.73%    0.00%
 16  1     9    1  |1 1>+         0.00%   48.24%    0.00%    0.00%    0.00%    1.08%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   31.62%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    1.05%    0.00%    0.00%    0.00%   29.15%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.17%    0.00%    0.00%    0.00%   25.96%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    1.10%    0.00%    0.00%    0.00%   34.61%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+        49.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.78%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.48%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%   23.48%    0.00%    0.00%    0.00%    1.59%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    2.39%    0.00%    0.00%    0.00%   51.10%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    2.39%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    1.22%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   41.41%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%   48.35%    0.00%    0.00%    0.00%    1.15%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%    2.45%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%   31.61%    0.00%    0.00%    0.00%   11.25%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%   26.01%    0.00%
 51  1    12    1  |1 1>-         0.00%    1.14%    0.00%    0.00%    0.00%   25.76%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.10%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-        49.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.18%
  5  1     5    1  |0 0>          0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    1.72%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+        11.24%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%   18.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.91%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%   15.80%    0.00%    0.00%   50.75%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          1.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>         51.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%   55.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   66.53%    0.00%    0.00%    0.01%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.91%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%   49.91%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         1.45%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    1.53%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%   22.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-        34.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%   49.91%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%
 55  1    16    1  |1 1>-         0.00%    0.00%   17.49%    0.00%    0.00%   49.05%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      309.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1489.06       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     43540.93  24934.23    646.65  14499.23   3394.65     19.41      2.57     43.99
 REAL TIME  *     44014.10 SEC
 DISK USED  *         1.76 GB (local),       15.18 GB (total)
 SF USED    *        12.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy= -24985.206461960512

              CI              CI           MULTI         RHF-SCF
 -24985.16711008 -24985.18653770 -24984.64857353 -24984.60857725
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
