
 Working directory              : /wrk/irikura/molpro.sYPHWnGMJu/
 Global scratch directory       : /wrk/irikura/molpro.sYPHWnGMJu/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.sYPHWnGMJu/

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
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=16
 
 w(1) = 99
 do i=2,NSING
     w(i) = 1
 enddo
 
                                                                                 ! active space (2/10) as orbitals [7 3]
 {multi
     closed,21,22
     occ,28,25
     wf,sym=1,spin=0;state,NSING;
        weight,w
     wf,sym=1,spin=2;state,NTRIP;
        weight,all,1
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
  (64 PROC) 64 bit mpp version                                                           DATE: 06-May-24          TIME: 12:33:05  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry RA     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     F aug-cc-pwCVTZ-X      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         430
 NUMBER OF SYMMETRY AOS:          359
 NUMBER OF CONTRACTIONS:          125   (   57Ag  +   68Au  )
 NUMBER OF INNER CORE ORBITALS:    39   (   20Ag  +   19Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     37.224 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 4.194 MB, node maximum: 10.224 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2626485.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2626485      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    36081304. AND WROTE      538463. INTEGRALS IN      2 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.18 SEC
 SORT2 READ     3260452. AND WROTE    15753876. INTEGRALS IN    234 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC

 Node minimum:     2624806.  Node maximum:     2626485. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.525E-03 0.161E-02 0.161E-02 0.161E-02 0.161E-02 0.161E-02 0.163E-02 0.203E-01
         2 0.243E-02 0.243E-02 0.243E-02 0.514E-02 0.514E-02 0.514E-02 0.700E-01 0.700E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        14.47     14.29
 REAL TIME  *        17.54 SEC
 DISK USED  *        30.49 MB (local),      250.27 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  21  23

 NELEC=   88   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24984.29449825  -24984.29449825     0.00D+00     0.73D+00     0     0       0.01      0.04    start
   2   -24984.38775570      -0.09325745     0.63D-02     0.19D+00     1     0       0.02      0.06    diag
   3   -24984.39998493      -0.01222923     0.28D-02     0.82D-01     2     0       0.01      0.07    diag
   4   -24984.41003965      -0.01005472     0.91D-03     0.98D-01     3     0       0.02      0.09    diag
   5   -24984.41791696      -0.00787731     0.71D-03     0.52D-01     4     0       0.01      0.10    diag
   6   -24984.40358598       0.01433097     0.79D-03     0.67D-01     5     0       0.02      0.12    diag
   7   -24984.40997326      -0.00638727     0.55D-03     0.11D+00     6     0       0.01      0.13    diag
   8   -24984.41146894      -0.00149568     0.53D-03     0.17D-01     7     0       0.02      0.15    fixocc
   9   -24984.42656859      -0.01509965     0.53D-03     0.11D+00     8     0       0.01      0.16    diag
  10   -24984.45001344      -0.02344485     0.50D-03     0.14D+00     9     0       0.02      0.18    diag/orth
  11   -24984.44742675       0.00258668     0.21D-03     0.36D-01     9     0       0.02      0.20    diag
  12   -24984.45063458      -0.00320783     0.23D-03     0.29D-01     9     0       0.01      0.21    diag
  13   -24984.45063396       0.00000062     0.69D-04     0.61D-02     9     0       0.02      0.23    diag
  14   -24984.45062820       0.00000577     0.44D-04     0.16D-02     9     0       0.01      0.24    diag
  15   -24984.45064760      -0.00001940     0.25D-04     0.11D-02     9     0       0.02      0.26    diag
  16   -24984.45066461      -0.00001702     0.20D-04     0.10D-02     9     0       0.01      0.27    diag
  17   -24984.45069590      -0.00003129     0.17D-04     0.79D-03     9     0       0.02      0.29    diag
  18   -24984.45070477      -0.00000887     0.12D-04     0.54D-03     9     0       0.01      0.30    diag
  19   -24984.45070686      -0.00000210     0.64D-05     0.27D-03     9     0       0.02      0.32    diag
  20   -24984.45070732      -0.00000045     0.36D-05     0.17D-03     9     0       0.01      0.33    diag/orth
  21   -24984.45070732      -0.00000001     0.64D-06     0.91D-05     9     0       0.02      0.35    diag
  22   -24984.45070732      -0.00000000     0.16D-06     0.15D-04     9     0       0.01      0.36    diag
  23   -24984.45070732      -0.00000000     0.43D-07     0.47D-05     9     0       0.02      0.38    diag
  24   -24984.45070732      -0.00000000     0.24D-07     0.23D-05     9     0       0.01      0.39    diag
  25   -24984.45070732       0.00000000     0.20D-07     0.24D-06     0     0       0.02      0.41    diag

 Final occupancy:  21  23

 !RHF STATE 1.1 Energy               -24984.4507073216    
  RHF One-electron energy            -33978.0845091992    
  RHF Two-electron energy            8993.633801877597
  RHF Kinetic energy                  43484.7984750474    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.574555973202

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.45322     1  1  s    1.00000
    2.1     2.00000  -713.00331     1  2  s    1.00000
    3.1     2.00000  -180.01283     1  3  s    1.00000
    4.1     2.00000  -118.35011     1  1  d0   0.86602    1  1  d2+  0.50000
    5.1     2.00000  -118.35011     1  1  d1-  1.00000
    6.1     2.00000  -118.34991     1  1  d2-  1.00000
    7.1     2.00000  -118.34991     1  1  d1+  1.00000
    8.1     2.00000  -118.34984     1  1  d0  -0.50000    1  1  d2+  0.86602
    9.1     2.00000   -45.96516     1  4  s    1.00003
   10.1     2.00000   -23.92051     1  2  d1-  1.00000
   11.1     2.00000   -23.92051     1  2  d0   0.86602    1  2  d2+  0.50000
   12.1     2.00000   -23.92004     1  2  d1+  1.00000
   13.1     2.00000   -23.92004     1  2  d2-  1.00000
   14.1     2.00000   -23.91989     1  2  d0  -0.50000    1  2  d2+  0.86602
   15.1     2.00000   -10.25876     1  5  s    0.99902
   16.1     2.00000    -3.23860     1  3  d1-  1.00101
   17.1     2.00000    -3.23860     1  3  d0   0.86690    1  3  d2+  0.50049
   18.1     2.00000    -3.23763     1  3  d1+  1.00102
   19.1     2.00000    -3.23763     1  3  d2-  1.00102
   20.1     2.00000    -3.23729     1  3  d0  -0.50050    1  3  d2+  0.86692
   21.1     2.00000    -1.86382     1  6  s    1.00368
    1.2     2.00000  -604.37766     1  1  pz   1.00000
    2.2     2.00000  -604.37766     1  1  py   1.00000
    3.2     2.00000  -604.37763     1  1  px   1.00000
    4.2     2.00000  -148.96597     1  2  py   1.00000
    5.2     2.00000  -148.96597     1  2  pz   1.00000
    6.2     2.00000  -148.96577     1  2  px   1.00000
    7.2     2.00000   -35.60374     1  3  pz   0.99998
    8.2     2.00000   -35.60374     1  3  py   0.99998
    9.2     2.00000   -35.60328     1  3  px   0.99997
   10.2     2.00000   -11.44759     1  1  f0   0.79057    1  1  f2+  0.61237
   11.2     2.00000   -11.44759     1  1  f1-  0.96824
   12.2     2.00000   -11.44720     1  1  f1+  0.79057    1  1  f3+  0.61237
   13.2     2.00000   -11.44720     1  1  f2-  1.00000
   14.2     2.00000   -11.44696     1  1  f0  -0.61237    1  1  f2+  0.79057
   15.2     2.00000   -11.44696     1  1  f3-  0.96825
   16.2     2.00000   -11.44688     1  1  f1+ -0.61237    1  1  f3+  0.79057
   17.2     2.00000    -7.05017     1  4  pz   1.00091
   18.2     2.00000    -7.05017     1  4  py   1.00091
   19.2     2.00000    -7.04937     1  4  px   1.00132
   20.2     2.00000    -1.04605     1  5  py   1.03386
   21.2     2.00000    -1.04605     1  5  pz   1.03386
   22.2     2.00000    -1.04343     1  5  px   1.04084
   23.2     2.00000    -0.05365     1  6  px   0.82343    1  8  px   0.78813    1 11  px   0.70820


 HOMO     23.2    -0.053645 =      -1.4598eV
 LUMO     22.1    -0.168129 =      -4.5750eV
 LUMO-HOMO        -0.114484 =      -3.1153eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        14.88      0.41     14.29
 REAL TIME  *        17.99 SEC
 DISK USED  *        31.30 MB (local),      255.08 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  
 SETTING W(1)           =        99.00000000                                  

 DO I                   =         2.00000000   
 SETTING W(2)           =         1.00000000                                  

 DO I                   =         3.00000000   
 SETTING W(3)           =         1.00000000                                  

 DO I                   =         4.00000000   
 SETTING W(4)           =         1.00000000                                  

 DO I                   =         5.00000000   
 SETTING W(5)           =         1.00000000                                  

 DO I                   =         6.00000000   
 SETTING W(6)           =         1.00000000                                  

 DO I                   =         7.00000000   
 SETTING W(7)           =         1.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (   21   22)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      72 (   29   43)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.269D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.185D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.185D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.407D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.385D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.429D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.429D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.352D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.536D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 28 SYMMETRY CONTAMINATION OF 0.104D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 6   2 4 3 5 1 6 2 4 3 5   1 1 2 6 4 3 5 1 2 6   3 4 5 1 6 2 4 3 5 1
                                        2 6 4 3 5 1 6 2 3 4   5 6 2 3 4 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.113D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.113D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.412D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.413D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.217D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.190D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.251D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.670D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.205D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.301D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.262D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.356D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.286D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.329D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.617D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.562D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.492D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 3 1 3 2 1 6   5 4 810 9 7 3 2 1 2   3 1 1 3 2 1 3 2 3 2   6 5 1 8 410 9 1 3 2
                                        5 6 1 4 810 9 7 6 5   8 4 910 7 3 2 1 6 5   8 4 910 7 2 3 7

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.81818   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
 Weight factors for state symmetry  2:    0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
                                          0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
 
 Number of orbital rotations:  2100  ( 213 closed/active, 1555 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    2890
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    1 -24984.76233237  -24984.77269572   -0.01036335    0.09455258 0.00045561 0.00000000  0.11E+01      2.38
   2   10   16    0 -24984.77308324  -24984.77363637   -0.00055313    0.00237295 0.00000131 0.00000000  0.28E+00      5.39
   3   13   22    0 -24984.77364563  -24984.77364641   -0.00000078    0.00009472 0.00000000 0.00000000  0.96E-02      8.62
   4    4    8    0 -24984.77364641  -24984.77364641   -0.00000000    0.00000016 0.00000001 0.00000000  0.93E-05     10.80

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-08)
                       Final energy: -24984.77364641
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7943901625    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.67358090
 One electron energy                        -33999.49782166
 Two electron energy                          9014.70343149
 Virial ratio                                    1.57455231
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -24984.7111008344    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37563552
 One electron energy                        -34000.94862468
 Two electron energy                          9016.23752384
 Virial ratio                                    1.57455434
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -24984.7111008344    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37563552
 One electron energy                        -34000.94862467
 Two electron energy                          9016.23752384
 Virial ratio                                    1.57455434
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -24984.7111008344    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37563552
 One electron energy                        -34000.94862469
 Two electron energy                          9016.23752386
 Virial ratio                                    1.57455434
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -24984.7111008343    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37563552
 One electron energy                        -34000.94862473
 Two electron energy                          9016.23752389
 Virial ratio                                    1.57455434
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -24984.7111008343    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37563552
 One electron energy                        -34000.94862474
 Two electron energy                          9016.23752391
 Virial ratio                                    1.57455434
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -24984.6626134147    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.43022541
 One electron energy                        -33992.74715033
 Two electron energy                          9008.08453691
 Virial ratio                                    1.57455250
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.7207912480    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.46108005
 One electron energy                        -34001.65556223
 Two electron energy                          9016.93477098
 Virial ratio                                    1.57455343
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.7207912480    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.46108005
 One electron energy                        -34001.65556233
 Two electron energy                          9016.93477108
 Virial ratio                                    1.57455343
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.7207912479    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.46108005
 One electron energy                        -34001.65556223
 Two electron energy                          9016.93477098
 Virial ratio                                    1.57455343
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.7207912479    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.46108005
 One electron energy                        -34001.65556228
 Two electron energy                          9016.93477103
 Virial ratio                                    1.57455343
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.7207912479    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.46108005
 One electron energy                        -34001.65556223
 Two electron energy                          9016.93477099
 Virial ratio                                    1.57455343
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.6761007315    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12034811
 One electron energy                        -33990.30602996
 Two electron energy                          9005.62992923
 Virial ratio                                    1.57455690
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.6471650692    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426633
 One electron energy                        -34003.89017379
 Two electron energy                          9019.24300872
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.6471650692    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426633
 One electron energy                        -34003.89017379
 Two electron energy                          9019.24300873
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.6471650691    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426633
 One electron energy                        -34003.89017387
 Two electron energy                          9019.24300880
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.6471650691    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426633
 One electron energy                        -34003.89017385
 Two electron energy                          9019.24300878
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.6471650691    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426634
 One electron energy                        -34003.89017390
 Two electron energy                          9019.24300883
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.6471650691    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426634
 One electron energy                        -34003.89017387
 Two electron energy                          9019.24300880
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.6471650691    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.24426634
 One electron energy                        -34003.89017392
 Two electron energy                          9019.24300885
 Virial ratio                                    1.57455460
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.6460865653    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.23307297
 One electron energy                        -34001.76059724
 Two electron energy                          9017.11451068
 Virial ratio                                    1.57455472
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.6460865652    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.23307297
 One electron energy                        -34001.76059729
 Two electron energy                          9017.11451072
 Virial ratio                                    1.57455472
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy             -24984.6460865651    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.23307297
 One electron energy                        -34001.76059733
 Two electron energy                          9017.11451076
 Virial ratio                                    1.57455472
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999692848
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.141554258119
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.858444670418
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.998775603121
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.001231486139
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.833817437682
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000001478601
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000114748
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999987387670
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.166198391001
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     2.916468810896
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.737829869993
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.984062163029
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.448995427003
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     4.548182781796
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     2.018728810745
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     7.345693647059
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999380
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999995700
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000004884
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999597502
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.569247203901
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.430753442775
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000705611
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.999999047574
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.175962349301
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000007384844
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999995704629
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000020124827
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.824008914355
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.888718717827
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.973058879883
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.135151831653
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     6.531333257282
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     3.474434830181
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     8.859150149089
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.138229493462
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000321673
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999678929
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.999999999414
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000709650
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     2.289198537980
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.710801886807
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.001223691268
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.998769466288
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.990220213018
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999991136555
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000004180623
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999992487503
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.009792694645
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     5.194812471277
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.289111250125
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.880786005318
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.019671315715
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.977382388023
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.122121040166
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     4.516076859479
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999678947
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000325371
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.999999995702
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 5   3 6 4 2 1 5 6 3 4 2   1 1 6 4 5 2 3 1 3 2   5 6 4 1 6 4 3 5 2 1
                                        2 5 6 3 4 1 6 4 3 5   2 6 4 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 2 1 3 7   9 6 810 5 4 2 1 3 2   1 3 3 2 1 2 1 3 2 1   310 8 5 7 9 6 4 2 1
                                        310 8 5 7 9 4 6 6 7   9 8 510 4 2 1 3 6 7   9 8 510 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.20302     1  1  s    1.00000
    2.1     2.00000  -712.75356     1  2  s    1.00000
    3.1     2.00000  -179.76338     1  3  s    1.00000
    4.1     2.00000  -118.10016     1  1  d2+  1.00000
    5.1     2.00000  -118.10016     1  1  d2-  1.00000
    6.1     2.00000  -118.10016     1  1  d1-  1.00000
    7.1     2.00000  -118.10016     1  1  d1+  1.00000
    8.1     2.00000  -118.10016     1  1  d0   1.00000
    9.1     2.00000   -45.71636     1  4  s    1.00001
   10.1     2.00000   -23.67104     1  2  d2+  1.00000
   11.1     2.00000   -23.67104     1  2  d2-  1.00000
   12.1     2.00000   -23.67104     1  2  d1-  1.00000
   13.1     2.00000   -23.67104     1  2  d1+  1.00000
   14.1     2.00000   -23.67104     1  2  d0   1.00000
   15.1     2.00000   -10.01147     1  5  s    0.99961
   16.1     2.00000    -2.99091     1  3  d2+  1.00019
   17.1     2.00000    -2.99091     1  3  d1-  1.00019
   18.1     2.00000    -2.99091     1  3  d2-  1.00019
   19.1     2.00000    -2.99091     1  3  d1+  1.00019
   20.1     2.00000    -2.99091     1  3  d0   1.00019
   21.1     2.00000    -1.62163     1  6  s    0.99684
   22.1     1.62102    -0.13590     1  7  s    1.10729
   23.1     0.04996     0.06946     1  4  d1-  0.91069
   24.1     0.04996     0.06946     1  4  d1+  0.91069
   25.1     0.04996     0.06946     1  4  d2+  0.91069
   26.1     0.04996     0.06946     1  4  d0   0.91069
   27.1     0.04996     0.06946     1  4  d2-  0.91069
   28.1     0.01763     0.04449     1  6  s   -0.34038    1  7  s    1.41906    1  9  s    0.96603    1 12  s    0.94717
    1.2     2.00000  -604.12760     1  1  pz   1.00000
    2.2     2.00000  -604.12760     1  1  px   1.00000
    3.2     2.00000  -604.12760     1  1  py   1.00000
    4.2     2.00000  -148.71608     1  2  px   1.00000
    5.2     2.00000  -148.71608     1  2  py   1.00000
    6.2     2.00000  -148.71608     1  2  pz   1.00000
    7.2     2.00000   -35.35430     1  3  py   1.00000
    8.2     2.00000   -35.35430     1  3  px   1.00000
    9.2     2.00000   -35.35430     1  3  pz   1.00000
   10.2     2.00000   -11.19803     1  1  f3+  1.00000
   11.2     2.00000   -11.19803     1  1  f3-  1.00000
   12.2     2.00000   -11.19803     1  1  f0   1.00000
   13.2     2.00000   -11.19803     1  1  f2-  1.00000
   14.2     2.00000   -11.19803     1  1  f2+  1.00000
   15.2     2.00000   -11.19803     1  1  f1-  1.00000
   16.2     2.00000   -11.19803     1  1  f1+  1.00000
   17.2     2.00000    -6.80196     1  4  py   1.00013
   18.2     2.00000    -6.80196     1  4  px   1.00013
   19.2     2.00000    -6.80196     1  4  pz   1.00013
   20.2     2.00000    -0.80501     1  5  py   0.99937
   21.2     2.00000    -0.80501     1  5  px   0.99937
   22.2     2.00000    -0.80501     1  5  pz   0.99937
   23.2     0.03719     0.06366     1  5  pz   0.33473    1  6  pz   0.65451    1  7  pz  -0.58992
   24.2     0.03719     0.06366     1  5  py   0.33473    1  6  py   0.65451    1  7  py  -0.58992
   25.2     0.03719     0.06366     1  5  px   0.33473    1  6  px   0.65451    1  7  px  -0.58992
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96647676     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00500385
 b00000a 000     -0.00019678      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.68409046
 a00000b 000      0.00019678     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.68409046
 a0b0000 000      0.00000000      0.65274216      0.00036170      0.00005286     -0.00002698     -0.00013604     -0.00000000
 b0a0000 000     -0.00000000     -0.65274216     -0.00036170     -0.00005286      0.00002698      0.00013604      0.00000000
 ba00000 000     -0.00000000     -0.00002436      0.00027021     -0.00021201     -0.65260902      0.01318456     -0.00000000
 ab00000 000      0.00000000      0.00002436     -0.00027021      0.00021201      0.65260902     -0.01318456      0.00000000
 b0000a0 000      0.00000000     -0.00013634     -0.00029423     -0.00063190     -0.01318446     -0.65260872     -0.00000000
 a0000b0 000     -0.00000000      0.00013634      0.00029423      0.00063190      0.01318446      0.65260872      0.00000000
 a000b00 000      0.00000000      0.00019648     -0.42688547      0.49380264     -0.00034281     -0.00027879      0.00000000
 b000a00 000     -0.00000000     -0.00019648      0.42688547     -0.49380264      0.00034281      0.00027879     -0.00000000
 a00b000 000      0.00000000     -0.00030833      0.49380258      0.42688522      0.00005292     -0.00063697     -0.00000000
 b00a000 000     -0.00000000      0.00030833     -0.49380258     -0.42688522     -0.00005292      0.00063697      0.00000000
 0000000 002     -0.13447519     -0.00014131      0.24802578      0.04750611      0.00008404     -0.00015949      0.02726927
 0000000 020     -0.13447519      0.00006530     -0.08287131     -0.23854966      0.00004858      0.00026735      0.02726927
 0000000 a0b      0.00000000      0.21870125      0.00012119      0.00001771     -0.00000904     -0.00004558      0.00000000
 0000000 b0a     -0.00000000     -0.21870125     -0.00012119     -0.00001771      0.00000904      0.00004558     -0.00000000
 0000000 ba0      0.00000000     -0.00000816      0.00009053     -0.00007103     -0.21865664      0.00441749     -0.00000000
 0000000 ab0     -0.00000000      0.00000816     -0.00009053      0.00007103      0.21865664     -0.00441749      0.00000000
 0000000 0ab     -0.00000000      0.00004568      0.00009858      0.00021172      0.00441745      0.21865654      0.00000000
 0000000 0ba      0.00000000     -0.00004568     -0.00009858     -0.00021172     -0.00441745     -0.21865654     -0.00000000
 0000000 200     -0.13447519      0.00007602     -0.16515447      0.19104355     -0.00013263     -0.00010786      0.02726926
 0000002 000     -0.02602905     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.16184997
 0000ab0 000     -0.00000000     -0.00002502     -0.00005400     -0.00011598     -0.00241981     -0.11977653     -0.00000000
 0000ba0 000      0.00000000      0.00002502      0.00005400      0.00011598      0.00241981      0.11977653      0.00000000
 0200000 000     -0.04689211      0.00006704     -0.11766213     -0.02253665     -0.00003987      0.00007566     -0.08436729
 0020000 000     -0.04689211     -0.00003098      0.03931371      0.11316671     -0.00002305     -0.00012683     -0.08436729
 0b000a0 000      0.00000000     -0.10375073     -0.00005749     -0.00000840      0.00000429      0.00002162      0.00000000
 0a000b0 000     -0.00000000      0.10375073      0.00005749      0.00000840     -0.00000429     -0.00002162     -0.00000000
 00ab000 000      0.00000000      0.10375073      0.00005749      0.00000840     -0.00000429     -0.00002162     -0.00000000
 00ba000 000     -0.00000000     -0.10375073     -0.00005749     -0.00000840      0.00000429      0.00002162      0.00000000
 00a00b0 000      0.00000000      0.00000387     -0.00004295      0.00003370      0.10372956     -0.00209563     -0.00000000
 00b00a0 000     -0.00000000     -0.00000387      0.00004295     -0.00003370     -0.10372956      0.00209563      0.00000000
 0b0a000 000      0.00000000      0.00000387     -0.00004295      0.00003370      0.10372956     -0.00209563     -0.00000000
 0a0b000 000     -0.00000000     -0.00000387      0.00004295     -0.00003370     -0.10372956      0.00209563      0.00000000
 0ab0000 000     -0.00000000      0.00002167      0.00004677      0.00010044      0.00209562      0.10372952      0.00000000
 0ba0000 000      0.00000000     -0.00002167     -0.00004677     -0.00010044     -0.00209562     -0.10372952     -0.00000000
 0000200 000     -0.04689211      0.00003606     -0.07834842      0.09063006     -0.00006292     -0.00005117     -0.08436729
 0000020 000     -0.04689211     -0.00003606      0.07834842     -0.09063006      0.00006292      0.00005117     -0.08436730
 0002000 000     -0.04689211     -0.00003606      0.07834842     -0.09063006      0.00006292      0.00005117     -0.08436729
 000ba00 000      0.00000000     -0.00005659      0.09063005      0.07834837      0.00000971     -0.00011691     -0.00000000
 000ab00 000     -0.00000000      0.00005659     -0.09063005     -0.07834837     -0.00000971      0.00011691      0.00000000
 00a0b00 000     -0.00000000      0.05990051      0.00003319      0.00000485     -0.00000248     -0.00001248     -0.00000000
 00b0a00 000      0.00000000     -0.05990051     -0.00003319     -0.00000485      0.00000248      0.00001248      0.00000000
 0a00b00 000     -0.00000000      0.00000224     -0.00002480      0.00001946      0.05988829     -0.00120991     -0.00000000
 0b00a00 000      0.00000000     -0.00000224      0.00002480     -0.00001946     -0.05988829      0.00120991      0.00000000
 
 Energy:     -24984.79439016 -24984.71110083 -24984.71110083 -24984.71110083 -24984.71110083 -24984.71110083 -24984.66261341
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 a0a0000 000     -0.00033191      0.00113570      0.99995545     -0.00013721     -0.00006383     -0.00000000      0.00000000
 a0000a0 000      0.00320986      0.99994958     -0.00113481     -0.00124226     -0.00013646      0.00000000     -0.00000000
 aa00000 000     -0.00025276      0.00124273      0.00013548      0.99994893     -0.00358316     -0.00000000      0.00000000
 a00a000 000      0.99872781     -0.00319826      0.00033835      0.00043355      0.04944237      0.00000000     -0.00000000
 a000a00 000     -0.04944291      0.00029949      0.00004749      0.00356590      0.99872665     -0.00000000     -0.00000000
 0000aa0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00017546
 000aa00 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.44129874
 0aa0000 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00010899
 0a000a0 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.14918522
 00aa000 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.80089037
 0a0a000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00037017
 000a0a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00005449
 0a00a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00015820
 00a0a00 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.37626211
 00a00a0 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00064418
 0000000 aa0      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 a0a      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000002
 0000000 0aa     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:     -24984.72079125 -24984.72079125 -24984.72079125 -24984.72079125 -24984.72079125 -24984.67610073 -24984.64716507

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a0a0000 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 aa00000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a00a000 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000aa0 000     -0.00063587      0.00020536     -0.07003753      0.99702062      0.03230572     -0.00069410      0.00000000
 000aa00 000      0.89735991      0.00042492     -0.00007587      0.00064601     -0.00004425      0.00003911      0.00000000
 0aa0000 000     -0.00002208     -0.00216274      0.89222801      0.06259497      0.00252243      0.00009757     -0.00021209
 0a000a0 000     -0.07340456      0.00061188     -0.00015503      0.00060003     -0.00061046      0.87883695     -0.37430799
 00aa000 000      0.39386022     -0.00052628      0.00010750      0.00008718     -0.00031326     -0.05872280     -0.37430791
 0a0a000 000     -0.00021492      0.76866534      0.00211727      0.01480031     -0.45708777     -0.00081753      0.00000932
 000a0a0 000     -0.00001104     -0.00108137      0.44611399      0.03129748      0.00126122      0.00004878      0.00042418
 0a00a00 000      0.00015987     -0.07718813     -0.00053318     -0.02035019      0.62739717      0.00054355      0.00001614
 00a0a00 000      0.18501514      0.00004942     -0.00002744      0.00039676     -0.00053331      0.47349317      0.64832038
 00a00a0 000      0.00006199      0.63497154      0.00119377     -0.02044725      0.62959606      0.00012394     -0.00000932
 0000000 aa0     -0.00000000      0.00000001      0.00000000      0.00000000     -0.00000002     -0.00000000      0.00001363
 0000000 a0a     -0.00000001      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000002      0.54723622
 0000000 0aa      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000      0.00031007
 
 Energy:     -24984.64716507 -24984.64716507 -24984.64716507 -24984.64716507 -24984.64716507 -24984.64716507 -24984.64608657

 State:               15              16
 a00000a 000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000
 a0000a0 000      0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000
 0000aa0 000      0.00000000      0.00000000
 000aa00 000     -0.00000000      0.00000000
 0aa0000 000     -0.37430794     -0.00002454
 0a000a0 000      0.00021209      0.00000933
 00aa000 000      0.00021209      0.00000933
 0a0a000 000     -0.00002455      0.37430798
 000a0a0 000      0.74861590      0.00004908
 0a00a00 000     -0.00004251      0.64832051
 00a0a00 000     -0.00036735     -0.00001617
 00a00a0 000      0.00002455     -0.37430800
 0000000 aa0     -0.00003589      0.54723630
 0000000 a0a     -0.00031007     -0.00001365
 0000000 0aa      0.54723622      0.00003588
 
 Energy:     -24984.64608657 -24984.64608657
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.94       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.99      8.11      0.41     14.29
 REAL TIME  *        30.37 SEC
 DISK USED  *       159.79 MB (local),        1.00 GB (total)
 SF USED    *       307.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -24984.79439    0.0
    -24984.71110    6.0
    -24984.71110    6.0
    -24984.71110    6.0
    -24984.71110    6.0
    -24984.71110    6.0
    -24984.66261    0.0
    -24984.72079    6.0
    -24984.72079    6.0
    -24984.72079    6.0
    -24984.72079    6.0
    -24984.72079    6.0
    -24984.67610    0.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64717   12.0
    -24984.64609    2.0
    -24984.64609    2.0
    -24984.64609    2.0
                                                  


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
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.13 sec, npass=  1  Memory used:   1.80 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.79439016
     2    -24984.71110083
     3    -24984.71110083
     4    -24984.71110083
     5    -24984.71110083
     6    -24984.71110083
     7    -24984.66261341

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.72D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1148936
 Number of doubly external configurations:        976024
 Total number of contracted configurations:      2163076
 Total number of uncontracted configurations:    8644507

 Diagonal Coupling coefficients finished.               Storage:  20307871 words, CPU-Time:     16.73 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1151914 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.79439016     0.00000000    -0.36065542  0.36D-01  0.59D-01    23.21
    1     2     2     1.00000000     0.00000000-24984.71110083     0.00000000    -0.36729849  0.45D-01  0.63D-01    23.21
    1     3     3     1.00000000     0.00000000-24984.71110083     0.00000000    -0.36711663  0.45D-01  0.63D-01    23.21
    1     4     4     1.00000000     0.00000000-24984.71110083     0.00000000    -0.36709240  0.45D-01  0.63D-01    23.21
    1     5     5     1.00000000     0.00000000-24984.71110083     0.00000000    -0.36723723  0.45D-01  0.63D-01    23.21
    1     6     6     1.00000000     0.00000000-24984.71110083    -0.00000000    -0.36735661  0.46D-01  0.63D-01    23.21
    1     7     7     1.00000000     0.00000000-24984.66261341     0.00000000    -0.36698089  0.62D-01  0.60D-01    23.21
    2     1     1     1.06706663    -0.31772719-24985.11211736    -0.31772719    -0.00629102  0.16D-02  0.67D-03   311.26
    2     2     2     1.07539601    -0.31668084-24985.02778168    -0.31668084    -0.00644172  0.17D-02  0.84D-03   311.26
    2     3     3     1.07542026    -0.31667799-24985.02777883    -0.31667799    -0.00644544  0.17D-02  0.84D-03   311.26
    2     4     4     1.07553579    -0.31664741-24985.02774824    -0.31664741    -0.00648353  0.17D-02  0.85D-03   311.26
    2     5     5     1.07551919    -0.31664120-24985.02774203    -0.31664120    -0.00648987  0.17D-02  0.85D-03   311.26
    2     6     6     1.07554627    -0.31664118-24985.02774201    -0.31664118    -0.00649129  0.17D-02  0.85D-03   311.26
    2     7     7     1.08324247    -0.31685959-24984.97947300    -0.31685959    -0.00846278  0.37D-02  0.11D-02   311.26
    3     1     1     1.06817835    -0.32402665-24985.11841682    -0.00629946    -0.00015207  0.36D-04  0.20D-04   598.70
    3     2     2     1.07414466    -0.32306134-24985.03416217    -0.00638050    -0.00015302  0.34D-04  0.26D-04   598.70
    3     3     3     1.07413886    -0.32306116-24985.03416200    -0.00638317    -0.00015310  0.34D-04  0.26D-04   598.70
    3     4     4     1.07415728    -0.32306017-24985.03416100    -0.00641276    -0.00015425  0.34D-04  0.27D-04   598.70
    3     5     5     1.07415989    -0.32305949-24985.03416033    -0.00641830    -0.00015494  0.34D-04  0.27D-04   598.70
    3     6     6     1.07415871    -0.32305928-24985.03416012    -0.00641810    -0.00015509  0.34D-04  0.27D-04   598.70
    3     7     7     1.07615071    -0.32487699-24984.98749041    -0.00801740    -0.00028469  0.80D-04  0.48D-04   598.70
    4     1     1     1.06901937    -0.32418659-24985.11857675    -0.00015993    -0.00000697  0.36D-05  0.65D-06   881.89
    4     2     2     1.07489720    -0.32322188-24985.03432272    -0.00016054    -0.00000759  0.58D-05  0.67D-06   881.89
    4     3     3     1.07489803    -0.32322183-24985.03432266    -0.00016066    -0.00000764  0.58D-05  0.67D-06   881.89
    4     4     4     1.07489871    -0.32322183-24985.03432266    -0.00016166    -0.00000764  0.58D-05  0.67D-06   881.89
    4     5     5     1.07489426    -0.32322182-24985.03432265    -0.00016232    -0.00000763  0.58D-05  0.67D-06   881.89
    4     6     6     1.07489827    -0.32322177-24985.03432261    -0.00016249    -0.00000768  0.59D-05  0.68D-06   881.89
    4     7     7     1.07639575    -0.32516082-24984.98777423    -0.00028382    -0.00001368  0.86D-05  0.16D-05   881.89
    5     1     1     1.06916005    -0.32419485-24985.11858501    -0.00000826    -0.00000037  0.15D-06  0.41D-07  1161.55
    5     2     2     1.07498655    -0.32323122-24985.03433205    -0.00000933    -0.00000063  0.27D-06  0.86D-07  1161.55
    5     3     3     1.07498615    -0.32323121-24985.03433204    -0.00000938    -0.00000064  0.28D-06  0.87D-07  1161.55
    5     4     4     1.07498680    -0.32323121-24985.03433204    -0.00000938    -0.00000064  0.28D-06  0.87D-07  1161.55
    5     5     5     1.07498704    -0.32323120-24985.03433204    -0.00000939    -0.00000064  0.28D-06  0.87D-07  1161.55
    5     6     6     1.07498670    -0.32323120-24985.03433204    -0.00000943    -0.00000065  0.28D-06  0.87D-07  1161.55
    5     7     7     1.07619641    -0.32517681-24984.98779022    -0.00001599    -0.00000103  0.70D-06  0.11D-06  1161.55
    6     1     1     1.06917534    -0.32419527-24985.11858543    -0.00000042    -0.00000002  0.50D-08  0.24D-08  1440.57
    6     2     2     1.07498921    -0.32323197-24985.03433281    -0.00000076    -0.00000005  0.27D-07  0.62D-08  1440.57
    6     3     3     1.07498919    -0.32323197-24985.03433281    -0.00000076    -0.00000005  0.27D-07  0.62D-08  1440.57
    6     4     4     1.07498904    -0.32323197-24985.03433280    -0.00000076    -0.00000005  0.28D-07  0.64D-08  1440.57
    6     5     5     1.07498908    -0.32323197-24985.03433280    -0.00000077    -0.00000005  0.28D-07  0.64D-08  1440.57
    6     6     6     1.07498898    -0.32323197-24985.03433280    -0.00000077    -0.00000005  0.28D-07  0.64D-08  1440.57
    6     7     7     1.07610378    -0.32517798-24984.98779140    -0.00000118    -0.00000008  0.30D-07  0.13D-07  1440.57
    7     1     1     1.06917883    -0.32419528-24985.11858545    -0.00000001    -0.00000001  0.20D-08  0.11D-08  1686.77
    7     2     2     1.07500329    -0.32323203-24985.03433286    -0.00000006    -0.00000000  0.22D-08  0.44D-09  1686.77
    7     3     3     1.07500328    -0.32323203-24985.03433286    -0.00000006    -0.00000000  0.22D-08  0.45D-09  1686.77
    7     4     4     1.07500323    -0.32323203-24985.03433286    -0.00000006    -0.00000000  0.23D-08  0.46D-09  1686.77
    7     5     5     1.07500321    -0.32323203-24985.03433286    -0.00000006    -0.00000000  0.23D-08  0.46D-09  1686.77
    7     6     6     1.07500321    -0.32323203-24985.03433286    -0.00000006    -0.00000000  0.23D-08  0.46D-09  1686.77
    7     7     7     1.07610105    -0.32517807-24984.98779148    -0.00000008    -0.00000000  0.22D-08  0.96D-09  1686.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   1.0%  72.9%
 P   0.4%  12.6%   4.5%

 Initialization:   1.0%
 Other:            2.8%

 Total CPU:     1686.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9334777   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0599648
 222222/00000\222000           0.0572722   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9243857
 222222/\00000222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.8958659   0.0000000
 222222/0000\0222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.8958659  -0.0000000  -0.0000000
 222222/0\0000222000           0.0000000  -0.0000000  -0.0000000   0.8958659   0.0000000  -0.0000000   0.0000000
 222222/000\00222000           0.0000000   0.7925135   0.4177297   0.0000000  -0.0000000   0.0000000   0.0000000
 222222/00\000222000          -0.0000000  -0.4177297   0.7925135   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220000000222/\0           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.2774687  -0.0000000
 2222220000000222/0\           0.0000000   0.0000000  -0.0000000   0.2774687  -0.0000000  -0.0000000  -0.0000000
 22222200000002220/\           0.0000000  -0.0000000  -0.0000000   0.0000000   0.2774687  -0.0000000   0.0000000
 2222220000000222020          -0.1165809  -0.0087226  -0.2263842   0.0000000   0.0000000  -0.0000000   0.0426446
 2222220000000222200          -0.1165810   0.2004158   0.1056381  -0.0000000  -0.0000000   0.0000000   0.0426446
 2222220000000222002          -0.1165809  -0.1916932   0.1207461   0.0000000   0.0000000   0.0000000   0.0426446
 2222220000002222000          -0.0170733   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.1751171
 2222220000/\0222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1602820  -0.0000000  -0.0000000
 222222000/\00222000          -0.0000000   0.0747372  -0.1417908   0.0000000  -0.0000000  -0.0000000   0.0000000
 22222200/\000222000           0.0000000   0.0000000   0.0000000   0.1388083  -0.0000000   0.0000000  -0.0000000
 2222220/\0000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.1388082   0.0000000   0.0000000
 22222200/00\0222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1388082  -0.0000000
 2222220/000\0222000           0.0000000   0.0000000   0.0000000   0.1388082  -0.0000000   0.0000000  -0.0000000
 2222220/0\000222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1388082   0.0000000
 2222220020000222000          -0.0489001   0.0043636   0.1132523  -0.0000000   0.0000000  -0.0000000  -0.0756798
 2222220000200222000          -0.0489002   0.1002612   0.0528472  -0.0000000   0.0000000  -0.0000000  -0.0756798
 2222220000020222000          -0.0489001  -0.1002612  -0.0528471   0.0000000  -0.0000000   0.0000000  -0.0756798
 2222220002000222000          -0.0489002  -0.1002611  -0.0528471   0.0000000  -0.0000000  -0.0000000  -0.0756798
 2222220200000222000          -0.0489001   0.0958976  -0.0604051   0.0000000  -0.0000000  -0.0000000  -0.0756798
 22222200/0\00222000           0.0000000   0.0000000   0.0000000   0.0801410  -0.0000000   0.0000000  -0.0000000
 2222220/00\00222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0801410  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961142    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.059064
 2           0.000000   -0.000000   -0.895149    0.350787   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.350787    0.895149    0.000000    0.000000    0.000000
 4          -0.000000    0.961428    0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.000000    0.961428    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.961428   -0.000000   -0.000000
 7          -0.061715    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958353

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962954   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.001411
 2          -0.000000    0.961428    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.961428   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.961428    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.961428   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961428   -0.000000
 7          -0.001411    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.960337

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3282       0.00006982    -1.13606330       2222221010000222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3216       0.00006982    -1.13606415       2222221000010222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3316       0.00006982    -1.13606411       2222221100000222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96114177 (fixed)   0.96316237 (relaxed)   0.96295384 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00864586   -0.01410941   -0.22233727
 Singles      0.02386540   -0.06749965   -0.06976760
 Pairs        0.04591153   -0.01972500   -0.03209041
 Total        1.07842280   -0.10133406   -0.32419528
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.79387048
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.97729518
 One electron energy               -33998.44451560
 Two electron energy                 9013.32593016
 Virial quotient                       -0.57456897
 Correlation energy                    -0.32471496
 !MRCI STATE 1.1 Energy              -24985.1185854456    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.14405050 (Davidson, fixed reference)
 Cluster corrected energies        -24985.14389889 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.14405050 (Davidson, rotated reference)

 Cluster corrected energies        -24985.14302273 (Pople, fixed reference)
 Cluster corrected energies        -24985.14286775 (Pople, relaxed reference)
 Cluster corrected energies        -24985.14302273 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.89514899 (fixed)   0.96184046 (relaxed)   0.96142768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636834   -0.01011414   -0.23885462
 Singles      0.02726158   -0.06688578   -0.06997112
 Pairs        0.04821935   -0.00000000   -0.01440628
 Total        1.08184927   -0.07699992   -0.32323203
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71110083
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.50647155
 One electron energy               -33999.16695027
 Two electron energy                 9014.13261741
 Virial quotient                       -0.57457325
 Correlation energy                    -0.32323203
 !MRCI STATE 2.1 Energy              -24985.0343328635    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06078917 (Davidson, fixed reference)
 Cluster corrected energies        -24985.06048909 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06078917 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05979432 (Pople, fixed reference)
 Cluster corrected energies        -24985.05948596 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05979432 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.89514899 (fixed)   0.96184046 (relaxed)   0.96142768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636834   -0.01011414   -0.23885463
 Singles      0.02726158   -0.06688577   -0.06997112
 Pairs        0.04821935    0.00000000   -0.01440627
 Total        1.08184927   -0.07699991   -0.32323203
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71110083
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.50646966
 One electron energy               -33999.16694485
 Two electron energy                 9014.13261199
 Virial quotient                       -0.57457325
 Correlation energy                    -0.32323203
 !MRCI STATE 3.1 Energy              -24985.0343328635    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06078917 (Davidson, fixed reference)
 Cluster corrected energies        -24985.06048909 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06078917 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05979432 (Pople, fixed reference)
 Cluster corrected energies        -24985.05948596 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05979432 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96142770 (fixed)   0.96184048 (relaxed)   0.96142770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636835   -0.01011415   -0.23885471
 Singles      0.02726150   -0.06688570   -0.06997109
 Pairs        0.04821937    0.00000000   -0.01440623
 Total        1.08184923   -0.07699984   -0.32323203
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71110083
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.50645341
 One electron energy               -33999.16691325
 Two electron energy                 9014.13258039
 Virial quotient                       -0.57457325
 Correlation energy                    -0.32323203
 !MRCI STATE 4.1 Energy              -24985.0343328634    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06078916 (Davidson, fixed reference)
 Cluster corrected energies        -24985.06048907 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06078916 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05979431 (Pople, fixed reference)
 Cluster corrected energies        -24985.05948594 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05979431 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96142771 (fixed)   0.96184049 (relaxed)   0.96142771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636835   -0.01011415   -0.23885473
 Singles      0.02726149   -0.06688568   -0.06997108
 Pairs        0.04821937   -0.00000000   -0.01440621
 Total        1.08184921   -0.07699983   -0.32323203
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71110083
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.50645728
 One electron energy               -33999.16692034
 Two electron energy                 9014.13258747
 Virial quotient                       -0.57457325
 Correlation energy                    -0.32323203
 !MRCI STATE 5.1 Energy              -24985.0343328634    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06078915 (Davidson, fixed reference)
 Cluster corrected energies        -24985.06048907 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06078915 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05979431 (Pople, fixed reference)
 Cluster corrected energies        -24985.05948594 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05979431 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96142771 (fixed)   0.96184049 (relaxed)   0.96142771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636835   -0.01011415   -0.23885472
 Singles      0.02726149   -0.06688570   -0.06997109
 Pairs        0.04821936    0.00000000   -0.01440623
 Total        1.08184921   -0.07699984   -0.32323203
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71110083
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.50645217
 One electron energy               -33999.16690789
 Two electron energy                 9014.13257503
 Virial quotient                       -0.57457325
 Correlation energy                    -0.32323203
 !MRCI STATE 6.1 Energy              -24985.0343328633    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06078915 (Davidson, fixed reference)
 Cluster corrected energies        -24985.06048907 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06078915 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05979430 (Pople, fixed reference)
 Cluster corrected energies        -24985.05948594 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05979430 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95835284 (fixed)   0.96064744 (relaxed)   0.96033691 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00762679   -0.01256878   -0.01455453
 Singles      0.03048298   -0.07007490   -0.07376739
 Pairs        0.04619847   -0.24180163   -0.23685615
 Total        1.08430825   -0.32444532   -0.32517807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.66313310
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.69239559
 One electron energy               -33990.54003884
 Two electron energy                 9005.55224736
 Virial quotient                       -0.57456973
 Correlation energy                    -0.32465839
 !MRCI STATE 7.1 Energy              -24984.9877914839    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.01516286 (Davidson, fixed reference)
 Cluster corrected energies        -24985.01493531 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.01516286 (Davidson, rotated reference)

 Cluster corrected energies        -24985.01418799 (Pople, fixed reference)
 Cluster corrected energies        -24985.01395315 (Pople, relaxed reference)
 Cluster corrected energies        -24985.01418799 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      122.18       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1785.24   1762.25      8.11      0.41     14.29
 REAL TIME  *      1805.18 SEC
 DISK USED  *       281.03 MB (local),        1.71 GB (total)
 SF USED    *         1.31 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24985.14405050  AU                              
 SETTING HLSDIAG(2)     =    -24985.06078917  AU                              
 SETTING HLSDIAG(3)     =    -24985.06078917  AU                              
 SETTING HLSDIAG(4)     =    -24985.06078916  AU                              
 SETTING HLSDIAG(5)     =    -24985.06078915  AU                              
 SETTING HLSDIAG(6)     =    -24985.06078915  AU                              
 SETTING HLSDIAG(7)     =    -24985.01516286  AU                              


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
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.72079125
     2    -24984.72079125
     3    -24984.72079125
     4    -24984.72079125
     5    -24984.72079125
     6    -24984.67610073
     7    -24984.64716507
     8    -24984.64716507
     9    -24984.64716507
    10    -24984.64716507
    11    -24984.64716507
    12    -24984.64716507
    13    -24984.64716507
    14    -24984.64608657
    15    -24984.64608657
    16    -24984.64608657

 Number of blocks in overlap matrix:  1441   Smallest eigenvalue:  0.92D+00
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1764653
 Number of doubly external configurations:       1927621
 Total number of contracted configurations:      3752607
 Total number of uncontracted configurations:   13070967

 Diagonal Coupling coefficients finished.               Storage:  36605332 words, CPU-Time:    105.62 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1360804 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.72079125    -0.00000000    -0.37152591  0.47D-01  0.64D-01   127.90
    1     2     2     1.00000000     0.00000000-24984.72079125    -0.00000000    -0.37163852  0.47D-01  0.64D-01   127.90
    1     3     3     1.00000000     0.00000000-24984.72079125    -0.00000000    -0.37166012  0.47D-01  0.64D-01   127.90
    1     4     4     1.00000000     0.00000000-24984.72079125     0.00000000    -0.37166078  0.47D-01  0.64D-01   127.90
    1     5     5     1.00000000     0.00000000-24984.72079125     0.00000000    -0.37151413  0.47D-01  0.64D-01   127.90
    1     6     6     1.00000000     0.00000000-24984.67610073     0.00000000    -0.35627224  0.46D-01  0.57D-01   127.90
    1     7     7     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37332682  0.43D-01  0.71D-01   127.90
    1     8     8     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37317072  0.43D-01  0.71D-01   127.90
    1     9     9     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37346265  0.43D-01  0.71D-01   127.90
    1    10    10     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37351190  0.43D-01  0.72D-01   127.90
    1    11    11     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37345357  0.43D-01  0.71D-01   127.90
    1    12    12     1.00000000     0.00000000-24984.64716507     0.00000000    -0.37338517  0.43D-01  0.71D-01   127.90
    1    13    13     1.00000000     0.00000000-24984.64716507    -0.00000000    -0.37351501  0.43D-01  0.72D-01   127.90
    1    14    14     1.00000000     0.00000000-24984.64608657    -0.00000000    -0.36824774  0.43D-01  0.69D-01   127.90
    1    15    15     1.00000000     0.00000000-24984.64608657     0.00000000    -0.36817115  0.43D-01  0.69D-01   127.90
    1    16    16     1.00000000     0.00000000-24984.64608657     0.00000000    -0.36825561  0.43D-01  0.69D-01   127.90
    2     1     1     1.07538511    -0.31880349-24985.03959474    -0.31880349    -0.00718105  0.20D-02  0.90D-03  1471.99
    2     2     2     1.07539567    -0.31880260-24985.03959385    -0.31880260    -0.00718267  0.20D-02  0.90D-03  1471.99
    2     3     3     1.07541034    -0.31878467-24985.03957591    -0.31878467    -0.00720754  0.20D-02  0.91D-03  1471.99
    2     4     4     1.07542582    -0.31877574-24985.03956699    -0.31877574    -0.00721684  0.20D-02  0.91D-03  1471.99
    2     5     5     1.07542486    -0.31877429-24985.03956554    -0.31877429    -0.00721819  0.20D-02  0.91D-03  1471.99
    2     6     6     1.07340905    -0.31412676-24984.99022749    -0.31412676    -0.00632109  0.19D-02  0.71D-03  1471.99
    2     7     7     1.07773824    -0.31640457-24984.96356964    -0.31640457    -0.00662833  0.18D-02  0.98D-03  1471.99
    2     8     8     1.07778946    -0.31637178-24984.96353685    -0.31637178    -0.00667246  0.18D-02  0.10D-02  1471.99
    2     9     9     1.07778592    -0.31637029-24984.96353536    -0.31637029    -0.00667360  0.18D-02  0.10D-02  1471.99
    2    10    10     1.07782714    -0.31634775-24984.96351282    -0.31634775    -0.00670315  0.18D-02  0.10D-02  1471.99
    2    11    11     1.07786336    -0.31632731-24984.96349237    -0.31632731    -0.00672832  0.18D-02  0.10D-02  1471.99
    2    12    12     1.07786115    -0.31632487-24984.96348994    -0.31632487    -0.00673359  0.18D-02  0.10D-02  1471.99
    2    13    13     1.07786106    -0.31632379-24984.96348886    -0.31632379    -0.00673507  0.18D-02  0.10D-02  1471.99
    2    14    14     1.07772614    -0.31455549-24984.96064206    -0.31455549    -0.00645795  0.17D-02  0.10D-02  1471.99
    2    15    15     1.07777980    -0.31453143-24984.96061799    -0.31453143    -0.00648472  0.17D-02  0.10D-02  1471.99
    2    16    16     1.07778185    -0.31452963-24984.96061619    -0.31452963    -0.00648723  0.17D-02  0.10D-02  1471.99
    3     1     1     1.07357490    -0.32585455-24985.04664579    -0.00705105    -0.00016592  0.38D-04  0.26D-04  2816.40
    3     2     2     1.07357595    -0.32585441-24985.04664566    -0.00705182    -0.00016597  0.38D-04  0.26D-04  2816.40
    3     3     3     1.07358088    -0.32585413-24985.04664538    -0.00706946    -0.00016675  0.37D-04  0.26D-04  2816.40
    3     4     4     1.07358002    -0.32585370-24985.04664495    -0.00707796    -0.00016715  0.38D-04  0.26D-04  2816.40
    3     5     5     1.07357961    -0.32585367-24985.04664492    -0.00707938    -0.00016717  0.38D-04  0.26D-04  2816.40
    3     6     6     1.07216842    -0.32042230-24984.99652303    -0.00629554    -0.00015968  0.40D-04  0.24D-04  2816.40
    3     7     7     1.07584352    -0.32296579-24984.97013086    -0.00656122    -0.00014477  0.32D-04  0.26D-04  2816.40
    3     8     8     1.07585137    -0.32296450-24984.97012957    -0.00659271    -0.00014725  0.32D-04  0.26D-04  2816.40
    3     9     9     1.07584872    -0.32296429-24984.97012936    -0.00659399    -0.00014680  0.32D-04  0.26D-04  2816.40
    3    10    10     1.07584771    -0.32296416-24984.97012923    -0.00661641    -0.00014688  0.32D-04  0.26D-04  2816.40
    3    11    11     1.07585258    -0.32296340-24984.97012847    -0.00663609    -0.00014821  0.32D-04  0.27D-04  2816.40
    3    12    12     1.07585250    -0.32296337-24984.97012844    -0.00663851    -0.00014823  0.32D-04  0.27D-04  2816.40
    3    13    13     1.07585362    -0.32296283-24984.97012790    -0.00663904    -0.00014829  0.32D-04  0.27D-04  2816.40
    3    14    14     1.07491801    -0.32092730-24984.96701386    -0.00637181    -0.00015206  0.27D-04  0.31D-04  2816.40
    3    15    15     1.07492107    -0.32092611-24984.96701267    -0.00639468    -0.00015334  0.27D-04  0.32D-04  2816.40
    3    16    16     1.07492097    -0.32092602-24984.96701258    -0.00639639    -0.00015345  0.27D-04  0.32D-04  2816.40
    4     1     1     1.07445166    -0.32603066-24985.04682191    -0.00017611    -0.00000758  0.56D-05  0.62D-06  4144.86
    4     2     2     1.07445159    -0.32603064-24985.04682188    -0.00017622    -0.00000759  0.57D-05  0.62D-06  4144.86
    4     3     3     1.07445157    -0.32603064-24985.04682188    -0.00017651    -0.00000759  0.57D-05  0.62D-06  4144.86
    4     4     4     1.07445067    -0.32603033-24985.04682158    -0.00017664    -0.00000758  0.56D-05  0.62D-06  4144.86
    4     5     5     1.07445093    -0.32603025-24985.04682150    -0.00017658    -0.00000758  0.56D-05  0.62D-06  4144.86
    4     6     6     1.07283741    -0.32058591-24984.99668664    -0.00016361    -0.00000680  0.45D-05  0.67D-06  4144.86
    4     7     7     1.07666229    -0.32312227-24984.97028734    -0.00015648    -0.00000677  0.53D-05  0.63D-06  4144.86
    4     8     8     1.07666223    -0.32312227-24984.97028734    -0.00015777    -0.00000678  0.53D-05  0.63D-06  4144.86
    4     9     9     1.07666148    -0.32312219-24984.97028726    -0.00015790    -0.00000677  0.53D-05  0.64D-06  4144.86
    4    10    10     1.07666231    -0.32312157-24984.97028664    -0.00015741    -0.00000677  0.53D-05  0.63D-06  4144.86
    4    11    11     1.07666122    -0.32312142-24984.97028649    -0.00015803    -0.00000678  0.53D-05  0.63D-06  4144.86
    4    12    12     1.07666112    -0.32312142-24984.97028649    -0.00015804    -0.00000679  0.53D-05  0.63D-06  4144.86
    4    13    13     1.07666098    -0.32312139-24984.97028646    -0.00015856    -0.00000678  0.52D-05  0.64D-06  4144.86
    4    14    14     1.07534569    -0.32108789-24984.96717446    -0.00016059    -0.00000716  0.57D-05  0.66D-06  4144.86
    4    15    15     1.07534584    -0.32108787-24984.96717444    -0.00016177    -0.00000722  0.58D-05  0.67D-06  4144.86
    4    16    16     1.07534593    -0.32108787-24984.96717444    -0.00016185    -0.00000722  0.58D-05  0.67D-06  4144.86
    5     1     1     1.07459794    -0.32604011-24985.04683135    -0.00000945    -0.00000053  0.20D-06  0.75D-07  5455.90
    5     2     2     1.07459789    -0.32604010-24985.04683135    -0.00000946    -0.00000053  0.20D-06  0.75D-07  5455.90
    5     3     3     1.07459790    -0.32604010-24985.04683135    -0.00000946    -0.00000053  0.20D-06  0.75D-07  5455.90
    5     4     4     1.07459630    -0.32603977-24985.04683102    -0.00000944    -0.00000053  0.20D-06  0.75D-07  5455.90
    5     5     5     1.07459623    -0.32603969-24985.04683093    -0.00000944    -0.00000053  0.20D-06  0.75D-07  5455.90
    5     6     6     1.07283260    -0.32059366-24984.99669439    -0.00000775    -0.00000040  0.19D-06  0.46D-07  5455.90
    5     7     7     1.07676591    -0.32313079-24984.97029586    -0.00000852    -0.00000042  0.14D-06  0.66D-07  5455.90
    5     8     8     1.07676591    -0.32313079-24984.97029586    -0.00000852    -0.00000042  0.14D-06  0.66D-07  5455.90
    5     9     9     1.07676541    -0.32313070-24984.97029577    -0.00000851    -0.00000042  0.14D-06  0.65D-07  5455.90
    5    10    10     1.07676541    -0.32313010-24984.97029517    -0.00000853    -0.00000042  0.14D-06  0.66D-07  5455.90
    5    11    11     1.07676494    -0.32312997-24984.97029504    -0.00000855    -0.00000042  0.14D-06  0.66D-07  5455.90
    5    12    12     1.07676493    -0.32312997-24984.97029504    -0.00000855    -0.00000042  0.14D-06  0.66D-07  5455.90
    5    13    13     1.07676406    -0.32312992-24984.97029499    -0.00000853    -0.00000041  0.14D-06  0.64D-07  5455.90
    5    14    14     1.07526864    -0.32109679-24984.96718335    -0.00000889    -0.00000051  0.18D-06  0.85D-07  5455.90
    5    15    15     1.07526869    -0.32109679-24984.96718335    -0.00000891    -0.00000051  0.18D-06  0.85D-07  5455.90
    5    16    16     1.07526788    -0.32109675-24984.96718332    -0.00000888    -0.00000050  0.18D-06  0.84D-07  5455.90
    6     1     1     1.07461585    -0.32604074-24985.04683199    -0.00000064    -0.00000003  0.19D-07  0.37D-08  6767.83
    6     2     2     1.07461583    -0.32604074-24985.04683199    -0.00000064    -0.00000003  0.19D-07  0.37D-08  6767.83
    6     3     3     1.07461583    -0.32604074-24985.04683199    -0.00000064    -0.00000003  0.19D-07  0.37D-08  6767.83
    6     4     4     1.07461427    -0.32604041-24985.04683165    -0.00000064    -0.00000003  0.19D-07  0.37D-08  6767.83
    6     5     5     1.07461428    -0.32604032-24985.04683157    -0.00000064    -0.00000003  0.19D-07  0.37D-08  6767.83
    6     6     6     1.07281620    -0.32059411-24984.99669485    -0.00000045    -0.00000003  0.13D-07  0.30D-08  6767.83
    6     7     7     1.07677322    -0.32313128-24984.97029635    -0.00000049    -0.00000002  0.52D-08  0.38D-08  6767.83
    6     8     8     1.07677322    -0.32313128-24984.97029635    -0.00000049    -0.00000002  0.52D-08  0.38D-08  6767.83
    6     9     9     1.07677259    -0.32313119-24984.97029626    -0.00000049    -0.00000002  0.51D-08  0.38D-08  6767.83
    6    10    10     1.07677274    -0.32313060-24984.97029567    -0.00000049    -0.00000002  0.52D-08  0.39D-08  6767.83
    6    11    11     1.07677241    -0.32313047-24984.97029554    -0.00000049    -0.00000002  0.51D-08  0.38D-08  6767.83
    6    12    12     1.07677241    -0.32313047-24984.97029554    -0.00000049    -0.00000002  0.51D-08  0.38D-08  6767.83
    6    13    13     1.07677163    -0.32313041-24984.97029547    -0.00000049    -0.00000002  0.49D-08  0.37D-08  6767.83
    6    14    14     1.07523562    -0.32109737-24984.96718394    -0.00000059    -0.00000003  0.70D-08  0.49D-08  6767.83
    6    15    15     1.07523563    -0.32109737-24984.96718394    -0.00000059    -0.00000003  0.70D-08  0.50D-08  6767.83
    6    16    16     1.07523543    -0.32109734-24984.96718390    -0.00000058    -0.00000003  0.69D-08  0.49D-08  6767.83
    7     1     1     1.07463045    -0.32604078-24985.04683203    -0.00000004    -0.00000000  0.12D-08  0.29D-09  7591.81
    7     2     2     1.07463047    -0.32604078-24985.04683203    -0.00000004    -0.00000000  0.12D-08  0.29D-09  7591.81
    7     3     3     1.07463047    -0.32604078-24985.04683203    -0.00000004    -0.00000000  0.12D-08  0.29D-09  7591.81
    7     4     4     1.07462884    -0.32604044-24985.04683169    -0.00000004    -0.00000000  0.13D-08  0.29D-09  7591.81
    7     5     5     1.07462885    -0.32604036-24985.04683161    -0.00000004    -0.00000000  0.13D-08  0.29D-09  7591.81
    7     6     6     1.07281596    -0.32059414-24984.99669487    -0.00000003    -0.00000000  0.15D-08  0.16D-09  7591.81
    7     7     7     1.07677322    -0.32313128-24984.97029635    -0.00000000    -0.00000002  0.52D-08  0.38D-08  7591.81
    7     8     8     1.07677321    -0.32313128-24984.97029635    -0.00000000    -0.00000002  0.52D-08  0.38D-08  7591.81
    7     9     9     1.07677259    -0.32313119-24984.97029626    -0.00000000    -0.00000002  0.51D-08  0.38D-08  7591.81
    7    10    10     1.07677273    -0.32313060-24984.97029567    -0.00000000    -0.00000002  0.52D-08  0.39D-08  7591.81
    7    11    11     1.07677241    -0.32313047-24984.97029554    -0.00000000    -0.00000002  0.51D-08  0.38D-08  7591.81
    7    12    12     1.07677240    -0.32313047-24984.97029554    -0.00000000    -0.00000002  0.51D-08  0.38D-08  7591.81
    7    13    13     1.07677163    -0.32313041-24984.97029547    -0.00000000    -0.00000002  0.49D-08  0.37D-08  7591.81
    7    14    14     1.07523955    -0.32109740-24984.96718397    -0.00000003    -0.00000000  0.21D-09  0.17D-09  7591.81
    7    15    15     1.07523955    -0.32109740-24984.96718397    -0.00000003    -0.00000000  0.21D-09  0.17D-09  7591.81
    7    16    16     1.07523938    -0.32109737-24984.96718393    -0.00000003    -0.00000000  0.20D-09  0.17D-09  7591.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.1%
 S   0.7%  73.6%
 P   0.3%  11.3%   5.9%

 Initialization:   1.4%
 Other:            2.8%

 Total CPU:     7591.8 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000          -0.0000000  -0.0000000  -0.0000000  -0.0000047  -0.0000000   0.9622680   0.0000000   0.0000000
                               0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 222222000//00222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000505   0.0000000  -0.0000000  -0.0000000
                              -0.0000000   0.0000000   0.0000000   0.0000000   0.9614773  -0.0000000  -0.0000000  -0.0000000
 2222220000//0222000          -0.0000536   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.9614766  -0.0000034   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/00/000222000           0.0000000   0.0000000  -0.0000000   0.0000034   0.9612034   0.0000000  -0.0000000   0.0000000
                               0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000570  -0.0000000   0.0000000   0.0000000
 222222/000/00222000          -0.0000000  -0.0000000  -0.0000000   0.9612033  -0.0000034   0.0000053  -0.0000000   0.0000000
                               0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/0000/0222000           0.9612029  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                               0.0000606  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222//00000222000           0.0000000   0.9612029  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000307  -0.0000000
                              -0.0000000  -0.0000000   0.0000456  -0.0000000  -0.0000000  -0.0000000  -0.0000013  -0.0000000
 222222/0/0000222000           0.0000000   0.0000000   0.9612029   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000307
                              -0.0000000   0.0000000   0.0000000   0.0000456  -0.0000000  -0.0000013   0.0000000   0.0000000
 2222220//0000222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.0000030   0.8601300   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.3622536
 222222000/0/0222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                               0.0000015   0.4296675  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.7254494
 2222220/000/0222000          -0.0000000   0.0000000   0.0000003  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7218919
                               0.0000000   0.0000000   0.0000000   0.4675837   0.0000000  -0.3623380  -0.0000000   0.0000000
 22222200/00/0222000           0.0000000   0.0000003   0.0000000  -0.0000000   0.0000000  -0.0000000   0.7218814  -0.0000000
                              -0.0000000   0.0000000   0.4675999   0.0000000   0.0000000   0.0000000  -0.3623380  -0.0000000
 2222220/0/000222000           0.0000000   0.0000429   0.0000000   0.0000000   0.0000000   0.0000000   0.6330208  -0.0000000
                               0.0000000   0.0000000  -0.5821126   0.0000000   0.0000000  -0.0000000   0.3626028  -0.0000000
 22222200//000222000          -0.0000000  -0.0000000  -0.0000429   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6330078
                              -0.0000000  -0.0000000  -0.0000000   0.5821269  -0.0000000  -0.3626028  -0.0000000   0.0000000
 2222220/00/00222000          -0.0000000  -0.0000234   0.0000000   0.0000000  -0.0000000   0.0000000   0.0510732  -0.0000000
                              -0.0000000  -0.0000000   0.6057502  -0.0000000  -0.0000000  -0.0000000   0.6282817   0.0000000
 22222200/0/00222000          -0.0000000   0.0000000  -0.0000234   0.0000000  -0.0000000   0.0000000   0.0000000   0.0510868
                              -0.0000000   0.0000000   0.0000000   0.6057490  -0.0000000   0.6282817   0.0000000  -0.0000000
 22222200000002220//           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                               0.0000000  -0.0002224  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.5180458
 2222220000000222/0/          -0.0000000   0.0000000   0.0000006  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0001112
                               0.0000000  -0.0000000  -0.0000000  -0.0001464   0.0000000   0.5180428   0.0000000  -0.0000000
 2222220000000222//0          -0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0001112   0.0000000
                               0.0000000   0.0000000  -0.0001464   0.0000000   0.0000000  -0.0000000   0.5180428   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.961069    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000054   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000   -0.000000    0.000000    0.961069   -0.000000   -0.000000   -0.000000    0.000000    0.000035   -0.000000
             0.000000   -0.000034    0.000000    0.000000    0.000000    0.000001
 3          -0.000000   -0.000000    0.961069   -0.000000   -0.000000   -0.000000   -0.000048    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000008    0.000001   -0.000000   -0.000000
 4          -0.046025    0.000000    0.000000    0.000000    0.959966   -0.000005    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5           0.959966   -0.000000    0.000000   -0.000000    0.046025   -0.000000    0.000000    0.000050    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000005    0.962268   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000031   -0.000000    0.000000   -0.000000   -0.000000    0.941319   -0.000000
            -0.000000    0.195846   -0.000000    0.000000    0.000000   -0.000210
 8           0.000000   -0.000000   -0.000031   -0.000000    0.000000    0.000000   -0.663391   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.695951   -0.000210    0.000000    0.000000
 9           0.000000    0.000061   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000003
             0.961477   -0.000000   -0.000000    0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961477
            -0.000003   -0.000000    0.000000    0.000000   -0.000419    0.000000
 11          0.000000    0.000000    0.000000    0.000046    0.000000    0.000000   -0.000000    0.000000   -0.195846    0.000000
             0.000000    0.941319    0.000000   -0.000000   -0.000000   -0.000276
 12          0.000000    0.000000    0.000046   -0.000000   -0.000000    0.000000    0.695952    0.000000    0.000000    0.000000
             0.000000    0.000000    0.663392   -0.000276   -0.000000    0.000000
 13         -0.000057    0.000000   -0.000000    0.000000   -0.000003    0.000000   -0.000000    0.961477    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 14         -0.000000   -0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.000055   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000344    0.962171    0.000000   -0.000000
 15          0.000000    0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000   -0.000000    0.000150   -0.000000
            -0.000000    0.000314   -0.000000    0.000000   -0.000000    0.962171
 16          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000421
            -0.000000    0.000000   -0.000000   -0.000000    0.962171    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961069    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000004    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.961069    0.000000    0.000000    0.000000   -0.000000   -0.000002   -0.000000    0.000000   -0.000000
             0.000003   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.961069   -0.000000   -0.000000   -0.000000    0.000000   -0.000002   -0.000000    0.000000
            -0.000000    0.000003    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.961069   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.961069   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000003   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.962268   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000002    0.000000   -0.000000    0.000000   -0.000000    0.961476   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 8          -0.000000   -0.000000   -0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.961476    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 9           0.000004    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.961477   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961477
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000001
 11         -0.000000    0.000003   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.961477    0.000000    0.000000    0.000000    0.000001   -0.000000
 12          0.000000   -0.000000    0.000003    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.961477   -0.000000    0.000001   -0.000000   -0.000000
 13         -0.000000    0.000000    0.000000    0.000000   -0.000003    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.961477   -0.000000    0.000000    0.000000
 14         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000001   -0.000000    0.962171    0.000000    0.000000
 15          0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000001   -0.000000    0.000000    0.000000    0.962171   -0.000000
 16         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000001
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.962171


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96106860 (fixed)   0.96125329 (relaxed)   0.96106860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746991   -0.01207339   -0.24070387
 Singles      0.02721658   -0.06787634   -0.07089063
 Pairs        0.04797135    0.00000000   -0.01444628
 Total        1.08265784   -0.07994974   -0.32604078
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72079125
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58977029
 One electron energy               -33999.85033018
 Two electron energy                 9014.80349815
 Virial quotient                       -0.57457244
 Correlation energy                    -0.32604078
 !MRCI STATE 1.1 Energy              -24985.0468320300    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07378186 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07364623 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07378186 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07241362 (Pople, fixed reference)
 Cluster corrected energies        -24985.07227629 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07241362 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96106858 (fixed)   0.96125327 (relaxed)   0.96106858 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746993   -0.01207339   -0.24070367
 Singles      0.02721657   -0.06787634   -0.07089062
 Pairs        0.04797139   -0.00000021   -0.01444648
 Total        1.08265789   -0.07994994   -0.32604078
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72079125
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58977001
 One electron energy               -33999.85032935
 Two electron energy                 9014.80349732
 Virial quotient                       -0.57457244
 Correlation energy                    -0.32604078
 !MRCI STATE 2.1 Energy              -24985.0468320266    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07378187 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07364624 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07378187 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07241364 (Pople, fixed reference)
 Cluster corrected energies        -24985.07227630 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07241364 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96106857 (fixed)   0.96125327 (relaxed)   0.96106858 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746993   -0.01207339   -0.24070386
 Singles      0.02721657   -0.06787634   -0.07089062
 Pairs        0.04797139   -0.00000000   -0.01444629
 Total        1.08265789   -0.07994973   -0.32604078
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72079125
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58977009
 One electron energy               -33999.85032925
 Two electron energy                 9014.80349723
 Virial quotient                       -0.57457244
 Correlation energy                    -0.32604078
 !MRCI STATE 3.1 Energy              -24985.0468320266    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07378187 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07364624 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07378187 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07241364 (Pople, fixed reference)
 Cluster corrected energies        -24985.07227630 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07241364 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95996629 (fixed)   0.96125370 (relaxed)   0.96106899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00747059   -0.01207387   -0.24070500
 Singles      0.02721480   -0.06787522   -0.07088910
 Pairs        0.04797157    0.00000000   -0.01444635
 Total        1.08265695   -0.07994909   -0.32604044
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72079125
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58975842
 One electron energy               -33999.85023606
 Two electron energy                 9014.80340437
 Virial quotient                       -0.57457244
 Correlation energy                    -0.32604044
 !MRCI STATE 4.1 Energy              -24985.0468316924    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07378120 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07364556 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07378120 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07241297 (Pople, fixed reference)
 Cluster corrected energies        -24985.07227562 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07241297 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95996639 (fixed)   0.96125380 (relaxed)   0.96106909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00747037   -0.01207373   -0.24070484
 Singles      0.02721483   -0.06787529   -0.07088918
 Pairs        0.04797153    0.00000000   -0.01444634
 Total        1.08265673   -0.07994902   -0.32604036
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72079125
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58975850
 One electron energy               -33999.85023954
 Two electron energy                 9014.80340793
 Virial quotient                       -0.57457244
 Correlation energy                    -0.32604036
 !MRCI STATE 5.1 Energy              -24985.0468316077    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07378104 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07364540 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07378104 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07241280 (Pople, fixed reference)
 Cluster corrected energies        -24985.07227546 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07241280 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96226801 (fixed)   0.96226801 (relaxed)   0.96226801 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00665968   -0.01222724   -0.23625708
 Singles      0.02778726   -0.06758086   -0.07082596
 Pairs        0.04551362   -0.00000000   -0.01351110
 Total        1.07996057   -0.07980810   -0.32059414
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67610073
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.61196645
 One electron energy               -33989.43174263
 Two electron energy                 9004.43504776
 Virial quotient                       -0.57457099
 Correlation energy                    -0.32059414
 !MRCI STATE 6.1 Energy              -24984.9966948746    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.02232977 (Davidson, fixed reference)
 Cluster corrected energies        -24985.02232977 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.02232977 (Davidson, rotated reference)

 Cluster corrected energies        -24985.02097513 (Pople, fixed reference)
 Cluster corrected energies        -24985.02097513 (Pople, relaxed reference)
 Cluster corrected energies        -24985.02097513 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.94131873 (fixed)   0.96147625 (relaxed)   0.96147625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461264   -0.00830641   -0.24183275
 Singles      0.02472360   -0.06307614   -0.06569948
 Pairs        0.05240374    0.00005452   -0.01559905
 Total        1.08173998   -0.07132803   -0.32313128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21204803
 One electron energy               -34001.46299945
 Two electron energy                 9016.49270310
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313128
 !MRCI STATE 7.1 Energy              -24984.9702963527    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670910 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670910 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670910 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534947 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534947 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534947 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.69595143 (fixed)   0.96147625 (relaxed)   0.96147625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461264   -0.00830641   -0.24178235
 Singles      0.02472360   -0.06307613   -0.06569948
 Pairs        0.05240374    0.00000000   -0.01564945
 Total        1.08173998   -0.07138254   -0.32313128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21204790
 One electron energy               -34001.46299866
 Two electron energy                 9016.49270231
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313128
 !MRCI STATE 8.1 Energy              -24984.9702963527    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670910 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670910 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670910 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534947 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534947 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534947 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96147657 (fixed)   0.96147657 (relaxed)   0.96147657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461255   -0.00830656   -0.24178284
 Singles      0.02472271   -0.06307565   -0.06569886
 Pairs        0.05240399   -0.00000000   -0.01564949
 Total        1.08173925   -0.07138221   -0.32313119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21199938
 One electron energy               -34001.46272856
 Two electron energy                 9016.49243230
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313119
 !MRCI STATE 9.1 Energy              -24984.9702962553    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670876 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670876 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670876 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534913 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534913 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534913 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96147675 (fixed)   0.96147684 (relaxed)   0.96147684 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461184   -0.00830586   -0.24178185
 Singles      0.02472302   -0.06307606   -0.06569929
 Pairs        0.05240377    0.00000000   -0.01564946
 Total        1.08173864   -0.07138192   -0.32313060
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21204870
 One electron energy               -34001.46309475
 Two electron energy                 9016.49279908
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313060
 !MRCI STATE 10.1 Energy             -24984.9702956674    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670792 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670792 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670792 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534830 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534830 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534830 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.94131944 (fixed)   0.96147703 (relaxed)   0.96147703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461175   -0.00830590   -0.24184827
 Singles      0.02472256   -0.06307571   -0.06569890
 Pairs        0.05240390    0.00007156   -0.01558330
 Total        1.08173822   -0.07131005   -0.32313047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21200518
 One electron energy               -34001.46285823
 Two electron energy                 9016.49256269
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313047
 !MRCI STATE 11.1 Energy             -24984.9702955362    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670764 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670764 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670764 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534802 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534802 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534802 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.69595214 (fixed)   0.96147703 (relaxed)   0.96147703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461175   -0.00830590   -0.24178212
 Singles      0.02472256   -0.06307571   -0.06569890
 Pairs        0.05240390    0.00000000   -0.01564945
 Total        1.08173821   -0.07138161   -0.32313047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21200497
 One electron energy               -34001.46285632
 Two electron energy                 9016.49256078
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313047
 !MRCI STATE 12.1 Energy             -24984.9702955362    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670764 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670764 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670764 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534802 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534802 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534802 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96147725 (fixed)   0.96147726 (relaxed)   0.96147726 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00461201   -0.00830627   -0.24178307
 Singles      0.02472146   -0.06307483   -0.06569791
 Pairs        0.05240424   -0.00000000   -0.01564943
 Total        1.08173771   -0.07138110   -0.32313041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64716507
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.21194618
 One electron energy               -34001.46242772
 Two electron energy                 9016.49213224
 Virial quotient                       -0.57457567
 Correlation energy                    -0.32313041
 !MRCI STATE 13.1 Energy             -24984.9702954747    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99670741 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99670741 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99670741 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99534778 (Pople, fixed reference)
 Cluster corrected energies        -24984.99534778 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99534778 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.96217085 (fixed)   0.96222440 (relaxed)   0.96217091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00459341   -0.00837982   -0.24048544
 Singles      0.02428272   -0.06280512   -0.06536146
 Pairs        0.05130244    0.00000000   -0.01525050
 Total        1.08017857   -0.07118494   -0.32109740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64608657
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.25019613
 One electron energy               -33998.97540662
 Two electron energy                 9014.00822265
 Virial quotient                       -0.57457509
 Correlation energy                    -0.32109740
 !MRCI STATE 14.1 Energy             -24984.9671839663    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99292910 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99289053 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99292910 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99157295 (Pople, fixed reference)
 Cluster corrected energies        -24984.99153405 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99157295 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.96217084 (fixed)   0.96222440 (relaxed)   0.96217091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00459341   -0.00837982   -0.00912328
 Singles      0.02428271   -0.06280512   -0.06536146
 Pairs        0.05130245   -0.24991245   -0.24661266
 Total        1.08017857   -0.32109738   -0.32109740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64608657
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.25019609
 One electron energy               -33998.97540674
 Two electron energy                 9014.00822278
 Virial quotient                       -0.57457509
 Correlation energy                    -0.32109740
 !MRCI STATE 15.1 Energy             -24984.9671839662    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99292910 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99289053 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99292910 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99157295 (Pople, fixed reference)
 Cluster corrected energies        -24984.99153405 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99157295 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.96217094 (fixed)   0.96222449 (relaxed)   0.96217103 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00459332   -0.00837979   -0.24048545
 Singles      0.02428253   -0.06280510   -0.06536141
 Pairs        0.05130245   -0.00000000   -0.01525050
 Total        1.08017830   -0.07118489   -0.32109737
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64608657
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.25019707
 One electron energy               -33998.97539938
 Two electron energy                 9014.00821544
 Virial quotient                       -0.57457509
 Correlation energy                    -0.32109737
 !MRCI STATE 16.1 Energy             -24984.9671839311    

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99292897 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99289043 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99292897 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99157282 (Pople, fixed reference)
 Cluster corrected energies        -24984.99153395 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99157282 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      598.17       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11233.39   9448.14   1762.25      8.11      0.41     14.29
 REAL TIME  *     11319.47 SEC
 DISK USED  *       757.02 MB (local),        4.50 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =    -24985.07378186  AU                              
 SETTING HLSDIAG(9)     =    -24985.07378187  AU                              
 SETTING HLSDIAG(10)    =    -24985.07378187  AU                              
 SETTING HLSDIAG(11)    =    -24985.07378120  AU                              
 SETTING HLSDIAG(12)    =    -24985.07378104  AU                              
 SETTING HLSDIAG(13)    =    -24985.02232977  AU                              
 SETTING HLSDIAG(14)    =    -24984.99670910  AU                              
 SETTING HLSDIAG(15)    =    -24984.99670910  AU                              
 SETTING HLSDIAG(16)    =    -24984.99670876  AU                              
 SETTING HLSDIAG(17)    =    -24984.99670792  AU                              
 SETTING HLSDIAG(18)    =    -24984.99670764  AU                              
 SETTING HLSDIAG(19)    =    -24984.99670764  AU                              
 SETTING HLSDIAG(20)    =    -24984.99670741  AU                              
 SETTING HLSDIAG(21)    =    -24984.99292910  AU                              
 SETTING HLSDIAG(22)    =    -24984.99292910  AU                              
 SETTING HLSDIAG(23)    =    -24984.99292897  AU                              


         HLSDIAG
    -24985.14405
    -24985.06079
    -24985.06079
    -24985.06079
    -24985.06079
    -24985.06079
    -24985.01516
    -24985.07378
    -24985.07378
    -24985.07378
    -24985.07378
    -24985.07378
    -24985.02233
    -24984.99671
    -24984.99671
    -24984.99671
    -24984.99671
    -24984.99671
    -24984.99671
    -24984.99671
    -24984.99293
    -24984.99293
    -24984.99293
                                                  

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

 Time for Seward_LS:     310.66 sec

       19066877. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4660 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    310.66 sec, REAL time:    311.41 sec


 SORTLS1 read    19073439. and wrote    19073439. SO integrals in    84 records. CPU time:      0.18 sec, REAL time:      0.28 sec
 SORTLS2 read    19073439. and wrote    93046131. SO integrals in    18 records. CPU time:      0.05 sec, REAL time:      0.25 sec

 FILE SIZES: FILE 1:   471.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   471.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      598.17       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11548.04    314.62   9448.14   1762.25      8.11      0.41     14.29
 REAL TIME  *     11635.25 SEC
 DISK USED  *       757.11 MB (local),        5.47 GB (total)
 SF USED    *         5.02 GB
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

 Original energies: -24985.118585 -24985.034333 -24985.034333 -24985.034333 -24985.034333 -24985.034333 -24984.987791
 Replaced energies: -24985.144051 -24985.060789 -24985.060789 -24985.060789 -24985.060789 -24985.060789 -24985.015163

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -24985.046832 -24985.046832 -24985.046832 -24985.046832 -24985.046832 -24984.996695 -24984.970296 -24984.970296
                    -24984.970296 -24984.970296 -24984.970296 -24984.970296 -24984.970295 -24984.967184 -24984.967184 -24984.967184
 Replaced energies: -24985.073782 -24985.073782 -24985.073782 -24985.073781 -24985.073781 -24985.022330 -24984.996709 -24984.996709
                    -24984.996709 -24984.996708 -24984.996708 -24984.996708 -24984.996707 -24984.992929 -24984.992929 -24984.992929



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24985.14405050

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00

    2   2.1  0.0  0.0       0.00   18273.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00     209.64
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     111.77      -0.00

    3   3.1  0.0  0.0       0.00       0.00   18273.75       0.00       0.00       0.00       0.00      -0.00      -0.00      -8.13
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     177.55      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   18273.75       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     105.08       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   18273.75       0.00       0.00       0.00    -105.09      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -105.09

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   18273.75       0.00     105.08       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   28287.57       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00     105.08       0.00   15422.18       0.00       0.00
                           -0.00      -0.00      -0.00    -105.08       0.00       0.00      -0.00       0.00      -0.00       0.00

    9   2.1  1.0  1.0      -0.00       0.00      -0.00       0.00    -105.09       0.00       0.00       0.00   15422.18       0.00
                           -0.01    -111.77    -177.55      -0.00       0.00      -0.00      -0.00       0.00      -0.00     126.66

   10   3.1  1.0  1.0       0.01     209.64      -8.13       0.00      -0.00       0.00       0.00       0.00       0.00   15422.18
                           -0.00       0.00       0.00       0.00     105.09      -0.00      -0.00      -0.00    -126.66       0.00

   11   4.1  1.0  1.0      -0.00       0.00      -0.00    -181.94      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     181.94       0.00      -0.00      -0.00       0.00

   12   5.1  1.0  1.0      -0.00       0.00       0.00     105.05      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     105.04       0.00    -253.19       0.00       0.00

   13   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00      -0.00      -0.00       0.00      27.89      -0.00       0.00       0.00       0.00       0.00
                           -0.10      15.80     -25.14       0.00       0.00      -0.00       0.03      -0.00      -0.00       1.55

   15   8.1  1.0  1.0       0.10      11.81     -27.25       0.00       0.00      -0.00      -0.03       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -27.89      -0.00      -0.00       0.00      -1.55       0.00

   16   9.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00      23.48      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -23.48      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   17  10.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.00      18.01      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      18.01      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   18  11.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -9.92      -0.00      -0.00       0.00       0.00       0.00
                           -0.16      25.54       7.53      -0.00       0.00      -0.00       0.03      -0.00      -0.00      19.57

   19  12.1  1.0  1.0       0.16     -20.65     -16.82       0.00      -0.00       0.00      -0.03       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       9.92      -0.00       0.00       0.00     -19.57       0.00

   20  13.1  1.0  1.0      -0.00      -0.00       0.00     -23.46       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -23.46       0.00     -15.33       0.00       0.00

   21  14.1  1.0  1.0    -448.54      14.43     376.26       0.00       0.00       0.00      88.26       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -326.29       0.00      -0.00      -0.00     -26.42       0.00

   22  15.1  1.0  1.0       0.00      -0.00       0.00      -0.00     326.29      -0.00       0.00       0.00       0.00       0.00
                          448.54    -318.56     200.75       0.00      -0.00      -0.00     -88.26      -0.00       0.00      26.42

   23  16.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00     326.32      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     326.32       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.56       0.00
                            0.00     138.34    -262.46      -0.00       0.00       0.00      -0.00       0.00       0.00     -89.56

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      89.56      -0.00      -0.00
                           -0.00      -0.00       0.00    -148.62       0.00       0.00      -0.00      -0.00      -0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00     148.62       0.00      89.56      -0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     155.05
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     155.05      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -89.51
                           -0.00      -0.00       0.00       0.00     297.13      -0.00      -0.00       0.00      89.51      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.09      -0.00      -0.00
                            0.00       0.00       0.00      -3.36      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       3.36      -0.00     -13.09       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.04      -0.00
                            0.00     -15.49      29.38      -0.00       0.00       0.00       0.00      -0.00       0.00     -11.04

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -8.45      -0.00
                            0.32      40.33      21.26      -0.00       0.00      -0.00      -0.06       0.00      -0.00       8.45

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.65      -0.00      -0.00
                           -0.00       0.00      -0.00     -41.68       0.00      -0.00       0.00       0.00       0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      41.68      -0.00       4.65      -0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.99
                            0.00      -0.00      -0.00       0.00      33.09       0.00       0.00      -0.00     -10.99      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00     461.47       0.00     -18.71       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.71      -0.00      -0.00
                           -0.00       0.00       0.00    -461.47       0.00       0.00       0.00      -0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.70       0.00
                         -634.31    -471.01    -248.27       0.00       0.00       0.00     124.86       0.00       0.00      18.70

   40   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00     105.08       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     105.08      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.00       0.00      -0.00       0.00    -105.09       0.00       0.00       0.00       0.00       0.00
                            0.01     111.77     177.55       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.01     209.64      -8.13       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00    -105.09       0.00       0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0      -0.00       0.00      -0.00    -181.94      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00    -181.94      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00       0.00       0.00     105.05      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00    -105.04      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      27.89      -0.00       0.00       0.00       0.00       0.00
                            0.10     -15.80      25.14      -0.00      -0.00       0.00      -0.03      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.10      11.81     -27.25       0.00       0.00      -0.00      -0.03       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      27.89       0.00       0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00      23.48      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      23.48       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -0.00      18.01      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -18.01       0.00       0.00       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -9.92      -0.00      -0.00       0.00       0.00       0.00
                            0.16     -25.54      -7.53       0.00      -0.00       0.00      -0.03      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.16     -20.65     -16.82       0.00      -0.00       0.00      -0.03       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -9.92       0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0      -0.00      -0.00       0.00     -23.46       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      23.46      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0    -448.54      14.43     376.26       0.00       0.00       0.00      88.26       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     326.29      -0.00       0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00      -0.00       0.00      -0.00     326.29      -0.00       0.00       0.00       0.00       0.00
                         -448.54     318.56    -200.75      -0.00       0.00       0.00      88.26      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00     326.32      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -326.32      -0.00       0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.10      -0.00      -0.00      -0.00       0.16      -0.00
                            0.00       0.00      -0.00       0.10      -0.00      -0.00      -0.00       0.16      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00      -0.00      11.81       0.00       0.00       0.00     -20.65      -0.00
                           -0.00       0.00       0.00     -15.80      -0.00       0.00       0.00     -25.54       0.00       0.00

    3   3.1  0.0  0.0      -0.00       0.00       0.00      -0.00     -27.25       0.00      -0.00       0.00     -16.82       0.00
                            0.00      -0.00       0.00      25.14      -0.00      -0.00      -0.00      -7.53       0.00       0.00

    4   4.1  0.0  0.0    -181.94     105.05       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -23.46
                            0.00      -0.00       0.00      -0.00       0.00      23.48     -18.01       0.00       0.00      -0.00

    5   5.1  0.0  0.0      -0.00      -0.00       0.00      27.89       0.00       0.00      -0.00      -9.92      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      27.89       0.00       0.00      -0.00      -9.92       0.00

    6   6.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00      23.48      18.01      -0.00       0.00      -0.00
                         -181.94    -105.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.46

    7   7.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.03      -0.00      -0.00      -0.00      -0.03       0.00
                           -0.00      -0.00       0.00      -0.03       0.00      -0.00       0.00      -0.03      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     253.19       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      15.33

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       1.55      -0.00       0.00       0.00      19.57      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.55      -0.00       0.00      -0.00     -19.57      -0.00      -0.00

   11   4.1  1.0  1.0   15422.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      20.98      -0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00   15422.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      15.32      -0.00      -0.00      -0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00   26714.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.05       0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   32337.70       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -394.91      -0.00      -0.00      -0.00      44.65       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   32337.70       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     394.91      -0.00       0.00       0.00     -44.64       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   32337.78       0.00       0.00       0.00       0.00
                            0.00     -15.32       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -265.87

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   32337.96       0.00       0.00       0.00
                          -20.98       0.00      -0.05       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32338.02       0.00       0.00
                            0.00       0.00      -0.00       0.00      44.64      -0.00      -0.00       0.00     129.17      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32338.02       0.00
                           -0.00       0.00       0.00     -44.65      -0.00       0.00      -0.00    -129.17       0.00      -0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32338.07
                           -0.00      -0.00      -0.00      -0.00      -0.00     265.87      -0.00       0.00       0.00      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.27      -0.00      -0.00       0.00       0.10      -0.00      -0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.27       0.00       0.00       0.00      -0.10       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.31      -0.00      99.37      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   1.1  1.0  0.0      -0.00       0.00      -0.00      13.09       0.00       0.00      -0.00      -4.65      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      13.09       0.00      -0.00      -0.00      -4.65       0.00

   25   2.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00      11.04       8.45       0.00       0.00      -0.00
                         -155.05     -89.51      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      10.99

   26   3.1  1.0  0.0    -155.05      89.51      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     -10.99
                            0.00       0.00       0.00      -0.00      -0.00      11.04      -8.45       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00      -0.00      -1.05      -0.00       0.00      -0.00     -11.93       0.00
                           -0.00      -0.00       0.00      -1.05      -0.00      -0.00      -0.00     -11.93       0.00       0.00

   28   5.1  1.0  0.0      -0.00       0.00      -0.00      -0.00     -13.67       0.00      -0.00      -0.00      -2.41       0.00
                            0.00      -0.00       0.00      13.67      -0.00       0.00       0.00       2.41      -0.00       0.00

   29   6.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.02      -0.00      -0.00      -0.00       0.02      -0.00
                           -0.00      -0.00      -0.00       0.02      -0.00       0.00       0.00       0.02      -0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00    -127.15      19.38      -0.00      -0.00      -0.00
                            1.05     -13.67      -0.02       0.00      -0.00      -0.00       0.00      -0.00      -0.00     102.12

   31   8.1  1.0  0.0       1.05      13.67      -0.02      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -102.12
                            0.00       0.00       0.00       0.00      -0.00    -127.16     -19.38      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.00      -0.00       0.00     127.15      -0.00      -0.00      -0.00     138.36       0.00      -0.00
                            0.00      -0.00      -0.00       0.00     127.16      -0.00       0.00      -0.00     138.36       0.00

   33  10.1  1.0  0.0      -0.00       0.00       0.00     -19.38       0.00       0.00      -0.00    -229.37      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      19.38      -0.00      -0.00       0.00     229.37      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -138.36     229.37       0.00      -0.00      -0.00
                           11.93      -2.41      -0.02       0.00       0.00       0.00      -0.00       0.00       0.00    -157.68

   35  12.1  1.0  0.0      11.93       2.41      -0.02       0.00       0.00      -0.00       0.00       0.00      -0.00     157.68
                           -0.00       0.00       0.00       0.00       0.00    -138.36    -229.37      -0.00       0.00       0.00

   36  13.1  1.0  0.0      -0.00      -0.00       0.00       0.00     102.12       0.00       0.00       0.00    -157.68      -0.00
                           -0.00      -0.00      -0.00    -102.12       0.00      -0.00       0.00     157.68      -0.00       0.00

   37  14.1  1.0  0.0     -10.83     -18.66      70.24      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.06
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.12      -0.31      -0.00      -0.00       0.00

   38  15.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.12       0.31       0.00       0.00       0.00
                          -10.83      18.66      70.24       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.06

   39  16.1  1.0  0.0      -0.00      -0.00       0.00      -0.10       0.00       0.00      -0.00      -0.28       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.10      -0.00      -0.00      -0.00       0.28      -0.00

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

    1   1.1  0.0  0.0    -448.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -448.54      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      14.43      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     318.56       0.00    -138.34       0.00       0.00      -0.00       0.00      -0.00      -0.00

    3   3.1  0.0  0.0     376.26       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -200.75       0.00     262.46      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -326.32       0.00     148.62      -0.00      -0.00      -0.00       0.00       3.36

    5   5.1  0.0  0.0       0.00     326.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          326.29       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -297.13      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00     326.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00    -148.62       0.00       0.00      -0.00       0.00

    7   7.1  0.0  0.0      88.26       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      88.26       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00      89.56      -0.00       0.00      -0.00       0.00     -13.09
                            0.00       0.00       0.00      -0.00       0.00     -89.56      -0.00      -0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00     -89.56      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           26.42      -0.00      -0.00      -0.00       0.00       0.00    -155.05     -89.51      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00     155.05     -89.51       0.00      -0.00
                           -0.00     -26.42       0.00      89.56      -0.00      -0.00       0.00       0.00       0.00      -0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    -155.05       0.00      -0.00      -0.00       0.00
                           -0.00       0.00     -30.31       0.00     155.05      -0.00       0.00      -0.00       0.00      -1.05

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      89.51       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      89.51      -0.00       0.00       0.00       0.00      13.67

   13   6.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00     -99.37       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.02

   14   7.1  1.0  1.0       0.00       0.00       0.00      13.09       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.27       0.00       0.00      -0.00      -0.00       0.00       1.05     -13.67      -0.02      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.05     -13.67       0.02       0.00
                            0.00       0.27      -0.00     -13.09       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00      11.04       0.00      -0.00       0.00      -0.00    -127.15
                            0.00      -0.00       0.00      -0.00       0.00     -11.04       0.00      -0.00      -0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00      -0.00       8.45       0.00       0.00      -0.00      -0.00      19.38
                           -0.00      -0.00       0.00       0.00      -0.00       8.45       0.00      -0.00      -0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00      -4.65       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.10      -0.00       0.00       0.00       0.00      -0.00      11.93      -2.41      -0.02       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00     -11.93      -2.41       0.02      -0.00
                            0.00       0.10       0.00       4.65      -0.00      -0.00      -0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     -10.99       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     -10.99      -0.00      -0.00      -0.00      -0.00    -102.12

   21  14.1  1.0  1.0   33167.31       0.00       0.00       0.00      -0.00       0.00      10.83      18.66     -70.24       0.00
                           -0.00    -933.15       0.00     -18.71       0.00       0.00      -0.00       0.00      -0.00      -0.00

   22  15.1  1.0  1.0       0.00   33167.31       0.00      18.71       0.00       0.00      -0.00       0.00      -0.00      -0.00
                          933.15       0.00      -0.00      -0.00       0.00      -0.00     -10.83      18.66      70.24       0.00

   23  16.1  1.0  1.0       0.00       0.00   33167.34      -0.00      18.70      -0.00       0.00       0.00      -0.00       0.10
                           -0.00       0.00       0.00       0.00       0.00      18.70       0.00      -0.00      -0.00       0.00

   24   1.1  1.0  0.0       0.00      18.71      -0.00   15422.18       0.00       0.00       0.00       0.00       0.00       0.00
                           18.71       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00       0.00      18.70       0.00   15422.18       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00   15422.18       0.00       0.00       0.00       0.00
                           -0.00       0.00     -18.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0      10.83      -0.00       0.00       0.00       0.00       0.00   15422.33       0.00       0.00       0.00
                            0.00      10.83      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0      18.66       0.00       0.00       0.00       0.00       0.00       0.00   15422.36       0.00       0.00
                           -0.00     -18.66       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0     -70.24      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   26714.61       0.00
                            0.00     -70.24       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00      -0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00   32337.70
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.00       0.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0      -0.00      -0.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.31       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -0.00       0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.28      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0      -0.06      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     659.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0       0.00      -0.00    -659.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0       0.00     659.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -659.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     -89.56       0.00      -0.00       0.00      -0.00      13.09
                           -0.00      -0.00      -0.00       0.00       0.00     -89.56      -0.00      -0.00      -0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      89.56      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -155.05     -89.51      -0.00       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00    -155.05      89.51      -0.00       0.00
                           -0.00      -0.00      -0.00      89.56      -0.00       0.00       0.00       0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     155.05       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     155.05      -0.00      -0.00      -0.00       0.00      -1.05

   44   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     -89.51      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      89.51      -0.00       0.00      -0.00       0.00      13.67

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.02

   46   7.1  1.0 -1.0       0.00       0.00       0.00     -13.09      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.05     -13.67      -0.02       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       1.05      13.67      -0.02      -0.00
                           -0.00      -0.00      -0.00     -13.09       0.00       0.00       0.00       0.00       0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00     -11.04      -0.00       0.00      -0.00       0.00     127.15
                           -0.00      -0.00      -0.00      -0.00       0.00     -11.04       0.00      -0.00      -0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00      -8.45      -0.00      -0.00       0.00       0.00     -19.38
                           -0.00      -0.00      -0.00       0.00      -0.00       8.45       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       4.65      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      11.93      -2.41      -0.02       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00      11.93       2.41      -0.02       0.00
                           -0.00      -0.00      -0.00       4.65      -0.00      -0.00      -0.00       0.00       0.00       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      10.99      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -10.99      -0.00      -0.00      -0.00      -0.00    -102.12

   53  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00     -10.83     -18.66      70.24      -0.00
                           -0.00      -0.00      -0.00     -18.71       0.00       0.00      -0.00       0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00     -18.71      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -10.83      18.66      70.24       0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00     -18.70       0.00      -0.00      -0.00       0.00      -0.10
                           -0.00      -0.00      -0.00       0.00       0.00      18.70       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.32       0.00      -0.00      -0.00      -0.00       0.00     634.31      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      15.49     -40.33      -0.00      -0.00       0.00       0.00      -0.00     471.01      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -29.38     -21.26       0.00       0.00       0.00      -0.00      -0.00     248.27      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      41.68       0.00      -0.00      -0.00     461.47      -0.00    -105.08

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -33.09       0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     105.08
                           -3.36      -0.00       0.00       0.00     -41.68      -0.00    -461.47      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.06      -0.00       0.00      -0.00      -0.00      -0.00    -124.86      -0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00       4.65       0.00       0.00      -0.00     -18.71       0.00       0.00
                           13.09       0.00      -0.00      -0.00      -4.65       0.00      18.71       0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00     -11.04      -8.45      -0.00      -0.00       0.00       0.00      -0.00     -18.70       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      10.99      -0.00      -0.00      -0.00       0.00

   10   3.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00      10.99      -0.00      -0.00       0.00       0.00
                           -0.00      11.04      -8.45       0.00       0.00       0.00      -0.00       0.00     -18.70       0.00

   11   4.1  1.0  1.0       1.05       0.00      -0.00       0.00      11.93      -0.00     -10.83       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -11.93       0.00       0.00       0.00      10.83      -0.00       0.00

   12   5.1  1.0  1.0      13.67      -0.00       0.00       0.00       2.41      -0.00     -18.66      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       2.41      -0.00       0.00      -0.00     -18.66       0.00       0.00

   13   6.1  1.0  1.0      -0.02       0.00       0.00       0.00      -0.02       0.00      70.24       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.02      -0.00       0.00       0.00     -70.24       0.00       0.00

   14   7.1  1.0  1.0      -0.00     127.15     -19.38       0.00       0.00       0.00      -0.00       0.00      -0.10       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     102.12       0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00     102.12      -0.00      -0.00       0.00       0.00
                            0.00    -127.16     -19.38      -0.00      -0.00      -0.00       0.00      -0.00      -0.10       0.00

   16   9.1  1.0  1.0       0.00      -0.00       0.00    -138.36      -0.00       0.00      -0.00      -0.12       0.00       0.00
                          127.16       0.00       0.00      -0.00     138.36       0.00       0.12       0.00       0.00       0.00

   17  10.1  1.0  1.0      -0.00      -0.00      -0.00     229.37       0.00       0.00       0.00       0.31      -0.00       0.00
                           19.38      -0.00       0.00       0.00     229.37      -0.00       0.31       0.00       0.00       0.00

   18  11.1  1.0  1.0      -0.00     138.36    -229.37       0.00       0.00       0.00       0.00       0.00      -0.28       0.00
                            0.00       0.00      -0.00      -0.00       0.00    -157.68       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00    -157.68      -0.00       0.00       0.00       0.00
                            0.00    -138.36    -229.37      -0.00      -0.00       0.00       0.00       0.00      -0.28       0.00

   20  13.1  1.0  1.0    -102.12      -0.00      -0.00      -0.00     157.68      -0.00       0.06       0.00       0.00       0.00
                            0.00      -0.00       0.00     157.68      -0.00      -0.00      -0.00       0.06       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00      -0.06      -0.00       0.00       0.00       0.00
                           -0.00      -0.12      -0.31      -0.00      -0.00       0.00      -0.00       0.00     659.85       0.00

   22  15.1  1.0  1.0       0.00       0.12      -0.31      -0.00      -0.00      -0.00      -0.00      -0.00     659.85       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.06      -0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0      -0.00      -0.00       0.00       0.28      -0.00      -0.00      -0.00    -659.85      -0.00       0.00
                            0.10      -0.00      -0.00      -0.00       0.28      -0.00    -659.85      -0.00       0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.56
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      89.56

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.09
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31   8.1  1.0  0.0   32337.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.09

   32   9.1  1.0  0.0       0.00   32337.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00   32337.96       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   32338.02       0.00       0.00       0.00       0.00       0.00      -4.65
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   32338.02       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       4.65

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   32338.07       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   33167.31       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -18.71

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   33167.31       0.00      18.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   33167.34      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00      -0.00      -4.65      -0.00      -0.00       0.00      18.71      -0.00   15422.18
                           13.09       0.00      -0.00      -0.00      -4.65       0.00      18.71       0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.00      11.04       8.45       0.00       0.00      -0.00      -0.00       0.00      18.70       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      10.99      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -0.00     -10.99       0.00       0.00      -0.00       0.00
                           -0.00      11.04      -8.45       0.00       0.00       0.00      -0.00       0.00     -18.70       0.00

   43   4.1  1.0 -1.0      -1.05      -0.00       0.00      -0.00     -11.93       0.00      10.83      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -11.93       0.00       0.00       0.00      10.83      -0.00       0.00

   44   5.1  1.0 -1.0     -13.67       0.00      -0.00      -0.00      -2.41       0.00      18.66       0.00       0.00       0.00
                           -0.00       0.00       0.00       2.41      -0.00       0.00      -0.00     -18.66       0.00     253.19

   45   6.1  1.0 -1.0       0.02      -0.00      -0.00      -0.00       0.02      -0.00     -70.24      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.02      -0.00       0.00       0.00     -70.24       0.00       0.00

   46   7.1  1.0 -1.0       0.00    -127.15      19.38      -0.00      -0.00      -0.00       0.00      -0.00       0.10       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     102.12       0.00      -0.00      -0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00    -102.12       0.00       0.00      -0.00       0.00
                           -0.00    -127.16     -19.38      -0.00      -0.00      -0.00       0.00      -0.00      -0.10      -0.00

   48   9.1  1.0 -1.0      -0.00      -0.00      -0.00     138.36       0.00      -0.00       0.00       0.12      -0.00       0.00
                          127.16      -0.00       0.00      -0.00     138.36       0.00       0.12       0.00       0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00      -0.00    -229.37      -0.00      -0.00      -0.00      -0.31       0.00       0.00
                           19.38      -0.00      -0.00       0.00     229.37      -0.00       0.31       0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00    -138.36     229.37       0.00      -0.00      -0.00      -0.00      -0.00       0.28       0.00
                            0.00       0.00      -0.00       0.00       0.00    -157.68       0.00       0.00       0.00       0.00

   51  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -0.00     157.68       0.00      -0.00      -0.00       0.00
                            0.00    -138.36    -229.37      -0.00       0.00       0.00       0.00       0.00      -0.28      -0.00

   52  13.1  1.0 -1.0     102.12       0.00       0.00       0.00    -157.68      -0.00      -0.06      -0.00      -0.00       0.00
                            0.00      -0.00       0.00     157.68      -0.00       0.00      -0.00       0.06       0.00      15.33

   53  14.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00       0.06      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.12      -0.31      -0.00      -0.00       0.00       0.00       0.00     659.85       0.00

   54  15.1  1.0 -1.0      -0.00      -0.12       0.31       0.00       0.00       0.00       0.00      -0.00    -659.85       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.06      -0.00      -0.00       0.00       0.00

   55  16.1  1.0 -1.0       0.00       0.00      -0.00      -0.28       0.00       0.00       0.00     659.85      -0.00       0.00
                            0.10      -0.00      -0.00      -0.00       0.28      -0.00    -659.85      -0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0      -0.00       0.01      -0.00      -0.00      -0.00       0.00       0.10      -0.00      -0.00      -0.00
                           -0.01      -0.00      -0.00      -0.00       0.00      -0.10       0.00       0.00       0.00      -0.16

    2   2.1  0.0  0.0       0.00     209.64       0.00       0.00       0.00      -0.00      11.81       0.00       0.00       0.00
                         -111.77       0.00       0.00      -0.00      -0.00      15.80       0.00      -0.00      -0.00      25.54

    3   3.1  0.0  0.0      -0.00      -8.13      -0.00       0.00       0.00      -0.00     -27.25       0.00      -0.00       0.00
                         -177.55       0.00      -0.00       0.00      -0.00     -25.14       0.00       0.00       0.00       7.53

    4   4.1  0.0  0.0       0.00       0.00    -181.94     105.05       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     -23.48      18.01      -0.00

    5   5.1  0.0  0.0    -105.09      -0.00      -0.00      -0.00       0.00      27.89       0.00       0.00      -0.00      -9.92
                            0.00     105.09       0.00      -0.00      -0.00       0.00     -27.89      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      23.48      18.01      -0.00
                           -0.00      -0.00     181.94     105.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.03      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.03      -0.00       0.00      -0.00       0.03

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

   24   1.1  1.0  0.0      89.56      -0.00       0.00      -0.00       0.00     -13.09      -0.00      -0.00       0.00       4.65
                            0.00     -89.56      -0.00      -0.00      -0.00       0.00      13.09       0.00      -0.00      -0.00

   25   2.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     -11.04      -8.45      -0.00
                            0.00       0.00    -155.05     -89.51      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   26   3.1  1.0  0.0      -0.00      -0.00     155.05     -89.51       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      11.04      -8.45       0.00

   27   4.1  1.0  0.0      -0.00    -155.05       0.00      -0.00      -0.00       0.00       1.05       0.00      -0.00       0.00
                          155.05      -0.00       0.00      -0.00       0.00      -1.05      -0.00      -0.00      -0.00     -11.93

   28   5.1  1.0  0.0       0.00      89.51       0.00       0.00       0.00       0.00      13.67      -0.00       0.00       0.00
                           89.51      -0.00       0.00       0.00       0.00      13.67      -0.00       0.00       0.00       2.41

   29   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.02      -0.00       0.00       0.00       0.02

   30   7.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     127.15     -19.38       0.00
                           -0.00       0.00       1.05     -13.67      -0.02      -0.00      -0.00      -0.00       0.00      -0.00

   31   8.1  1.0  0.0      -0.00      -0.00      -1.05     -13.67       0.02       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    -127.16     -19.38      -0.00

   32   9.1  1.0  0.0      11.04       0.00      -0.00       0.00      -0.00    -127.15       0.00      -0.00       0.00    -138.36
                            0.00     -11.04       0.00      -0.00      -0.00       0.00     127.16       0.00       0.00      -0.00

   33  10.1  1.0  0.0       8.45       0.00       0.00      -0.00      -0.00      19.38      -0.00      -0.00      -0.00     229.37
                           -0.00       8.45       0.00      -0.00      -0.00      -0.00      19.38      -0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     138.36    -229.37       0.00
                            0.00      -0.00      11.93      -2.41      -0.02       0.00       0.00       0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00      -0.00     -11.93      -2.41       0.02      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -138.36    -229.37      -0.00

   36  13.1  1.0  0.0      -0.00     -10.99       0.00       0.00      -0.00      -0.00    -102.12      -0.00      -0.00      -0.00
                          -10.99      -0.00      -0.00      -0.00      -0.00    -102.12       0.00      -0.00       0.00     157.68

   37  14.1  1.0  0.0      -0.00       0.00      10.83      18.66     -70.24       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.12      -0.31      -0.00

   38  15.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.12      -0.31      -0.00
                            0.00      -0.00     -10.83      18.66      70.24       0.00       0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0      18.70      -0.00       0.00       0.00      -0.00       0.10      -0.00      -0.00       0.00       0.28
                            0.00      18.70       0.00      -0.00      -0.00       0.00       0.10      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -253.19      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0   15422.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -126.66      -0.00       0.00      -0.00      -0.00      -1.55       0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00   15422.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          126.66      -0.00       0.00       0.00       0.00       1.55       0.00      -0.00       0.00      19.57

   43   4.1  1.0 -1.0       0.00       0.00   15422.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     -20.98       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00   15422.36       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     -15.32       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26714.61       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.05      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   32337.70       0.00       0.00       0.00       0.00
                            0.00      -1.55      -0.00      -0.00       0.00      -0.00     394.91       0.00       0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   32337.70       0.00       0.00       0.00
                            1.55      -0.00      -0.00       0.00      -0.00    -394.91       0.00      -0.00      -0.00      44.64

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32337.78       0.00       0.00
                           -0.00       0.00      -0.00      15.32      -0.00      -0.00       0.00       0.00       0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32337.96       0.00
                            0.00      -0.00      20.98      -0.00       0.05      -0.00       0.00      -0.00       0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32338.02
                            0.00     -19.57      -0.00      -0.00       0.00      -0.00     -44.64       0.00       0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.57      -0.00       0.00      -0.00      -0.00      44.65       0.00      -0.00       0.00     129.17

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -265.87       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.42      -0.00      -0.00       0.00       0.00      -0.27       0.00       0.00      -0.00      -0.10

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -26.42       0.00      -0.00      -0.00       0.00       0.27      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -30.31       0.00     -99.37       0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0       0.16      -0.00    -448.54       0.00       0.00
                            0.00       0.00      -0.00     448.54       0.00

    2   2.1  0.0  0.0     -20.65      -0.00      14.43      -0.00      -0.00
                           -0.00      -0.00       0.00    -318.56      -0.00

    3   3.1  0.0  0.0     -16.82       0.00     376.26       0.00      -0.00
                           -0.00      -0.00       0.00     200.75      -0.00

    4   4.1  0.0  0.0       0.00     -23.46       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00     326.32

    5   5.1  0.0  0.0      -0.00       0.00       0.00     326.29       0.00
                            9.92      -0.00    -326.29      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00      -0.00     326.32
                           -0.00     -23.46       0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.03       0.00      88.26       0.00      -0.00
                            0.00       0.00      -0.00     -88.26      -0.00

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

   24   1.1  1.0  0.0       0.00       0.00      -0.00     -18.71       0.00
                           -4.65       0.00      18.71       0.00      -0.00

   25   2.1  1.0  0.0      -0.00       0.00       0.00      -0.00     -18.70
                            0.00      10.99      -0.00      -0.00      -0.00

   26   3.1  1.0  0.0       0.00      10.99      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00     -18.70

   27   4.1  1.0  0.0      11.93      -0.00     -10.83       0.00      -0.00
                            0.00       0.00       0.00      10.83      -0.00

   28   5.1  1.0  0.0       2.41      -0.00     -18.66      -0.00      -0.00
                           -0.00       0.00      -0.00     -18.66       0.00

   29   6.1  1.0  0.0      -0.02       0.00      70.24       0.00       0.00
                           -0.00       0.00       0.00     -70.24       0.00

   30   7.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.10
                           -0.00     102.12       0.00      -0.00      -0.00

   31   8.1  1.0  0.0       0.00     102.12      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.10

   32   9.1  1.0  0.0      -0.00       0.00      -0.00      -0.12       0.00
                          138.36       0.00       0.12       0.00       0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.31      -0.00
                          229.37      -0.00       0.31       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.28
                            0.00    -157.68       0.00       0.00       0.00

   35  12.1  1.0  0.0      -0.00    -157.68      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.28

   36  13.1  1.0  0.0     157.68      -0.00       0.06       0.00       0.00
                           -0.00      -0.00      -0.00       0.06       0.00

   37  14.1  1.0  0.0       0.00      -0.06      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     659.85

   38  15.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00     659.85
                           -0.00      -0.06      -0.00       0.00       0.00

   39  16.1  1.0  0.0      -0.00      -0.00      -0.00    -659.85      -0.00
                            0.28      -0.00    -659.85      -0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.33      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -19.57       0.00     -26.42       0.00       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      26.42      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      30.31

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      99.37

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -44.65      -0.00       0.27      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.27       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00     265.87      -0.00       0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                         -129.17       0.00       0.10       0.00      -0.00

   51  12.1  1.0 -1.0   32338.02       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.10      -0.00

   52  13.1  1.0 -1.0       0.00   32338.07       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00

   53  14.1  1.0 -1.0       0.00       0.00   33167.31       0.00       0.00
                            0.00       0.00       0.00     933.15      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   33167.31       0.00
                            0.10      -0.00    -933.15      -0.00       0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   33167.34
                            0.00      -0.00       0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by -24985.14405050 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   18273.750       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   18273.751       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   18273.753       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   18273.754       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   18273.755       0.000     148.609
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   28287.567       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000     148.609       0.000   15422.185
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000    -148.623       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.012     296.477     -11.499       0.000      -0.000       0.000       0.003       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000      -0.000    -257.303      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000     148.557      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.003       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000      -0.000       0.000      39.443      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.143      16.706     -38.532       0.000       0.000      -0.000      -0.041       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      33.209      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      25.463      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000      -0.000     -14.033      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.220     -29.198     -23.785       0.000      -0.000       0.000      -0.046       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000      -0.000       0.000     -33.182       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+           -634.329      20.401     532.116       0.000       0.000       0.000     124.823       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000      -0.000       0.000      -0.000     461.450      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000     461.488      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     138.339    -262.456      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000    -148.617       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000     148.617       0.000     126.663

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.001      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     297.126      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -3.357      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       3.357      -0.000     -18.517

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.486      29.380      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.319      40.332      21.259      -0.000       0.000      -0.000      -0.065       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000     -41.675       0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      41.675      -0.000       6.580

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      33.089       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000     461.470       0.000     -26.454

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000    -461.470       0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -634.313    -471.012    -248.268       0.000       0.000       0.000     124.857       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -148.609       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.012    -158.069    -251.087      -0.000       0.000      -0.000      -0.003       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     148.623      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     257.304       0.000      -0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000     148.556       0.000    -253.195

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.003      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.142      22.346     -35.559       0.000       0.000      -0.000       0.041      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -39.442      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -33.208      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      25.464      -0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.220      36.125      10.645      -0.000       0.000      -0.000       0.046      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      14.034      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000     -33.182       0.000     -15.326

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -461.450       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              634.329    -450.517     283.897       0.000      -0.000      -0.000    -124.823      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     461.488       0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.012      -0.000      -0.000      -0.000       0.000       0.143      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000     296.477       0.000       0.000       0.000      -0.000      16.706       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000     -11.499      -0.000       0.000       0.000      -0.000     -38.532       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000    -257.303     148.557       0.003       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -148.623      -0.000      -0.000      -0.000       0.000      39.443       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      33.209
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.003      -0.000       0.000       0.000       0.000      -0.041      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          15422.182       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   15422.182       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   15422.329       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   15422.365       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26714.614       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32337.700       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32337.701       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32337.775
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

    1    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000    -126.663      -0.000      -0.000      -0.000       0.000      18.517       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000    -219.272    -126.589      -0.003       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      15.617

    4    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              219.272      -0.000       0.000      -0.000       0.000      -1.481      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              126.589      -0.000       0.000       0.000       0.000      19.337      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.003      -0.000      -0.000      -0.000       0.000       0.025      -0.000       0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       1.481     -19.337      -0.025       0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -179.828

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     -15.617       0.000      -0.000      -0.000       0.000     179.828       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      11.947       0.000      -0.000      -0.000      -0.000      27.410      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      16.869      -3.409      -0.034       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000    -195.670

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -15.547      -0.000      -0.000      -0.000      -0.000    -144.426       0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.173

   15    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000     -15.322      26.392      99.340       0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      26.445       0.000      -0.000      -0.000       0.000       0.144      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001     253.195       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     126.657       0.000      -0.000       0.000       0.000       1.553      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.657       0.000      -0.000      -0.000      -0.000      -1.553      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      15.320

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.553       0.000       0.000      -0.000       0.000    -394.912      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.553       0.000       0.000      -0.000       0.000     394.912      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -15.320       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -20.977       0.000      -0.049       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      19.574       0.000       0.000      -0.000       0.000      44.640      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.574       0.000      -0.000       0.000       0.000     -44.646      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000     265.867

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.422       0.000       0.000      -0.000      -0.000       0.271      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      26.422      -0.000       0.000       0.000      -0.000      -0.270       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      30.314      -0.000      99.366      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000      -0.000       0.220      -0.000    -634.329       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000     -29.198      -0.000      20.401      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -138.339

    3    1  |0 0>              -0.000       0.000     -23.785       0.000     532.116       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     262.456

    4    1  |0 0>               0.000      -0.000       0.000     -33.182       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000     -14.033      -0.000       0.000       0.000     461.450       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>              25.463      -0.000       0.000      -0.000       0.000      -0.000     461.488       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |0 0>              -0.000      -0.000      -0.046       0.000     124.823       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     126.663

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -18.517

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+          32337.958       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000   32338.019       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000   32338.020       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       6.580

   13    1  |1 1>+              0.000       0.000       0.000   32338.070       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   33167.315       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -26.454

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   33167.315       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   33167.342       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000   15422.185
                               -0.000      -0.000      -6.580       0.000      26.454       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      15.547      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              -11.947       0.000       0.000       0.000      -0.000       0.000     -26.445      -0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000     -16.869       0.000       0.000       0.000      15.322      -0.000      -0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       3.409      -0.000       0.000      -0.000     -26.392       0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.034      -0.000       0.000       0.000     -99.340       0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     144.426       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              -27.410      -0.000      -0.000      -0.000       0.000      -0.000      -0.144      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000     195.670       0.000       0.173       0.000       0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     324.376      -0.000       0.445       0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000    -222.997       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             -324.376      -0.000       0.000       0.000       0.000       0.000      -0.398      -0.000

   13    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000     222.997      -0.000       0.000      -0.000       0.081       0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.445      -0.000      -0.000       0.000       0.000       0.000     933.174      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.081      -0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.398      -0.000    -933.174      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      15.326       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -126.663
                                0.000       0.000      19.574      -0.000      26.422      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -19.574      -0.000      -0.000      -0.000     -26.422       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               20.977      -0.000       0.000       0.000      -0.000       0.000     -30.314       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.049       0.000      -0.000       0.000       0.000      -0.000     -99.366       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      18.517
                               -0.000      -0.000      44.646       0.000      -0.271       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -44.640       0.000       0.000       0.000       0.270      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -265.867       0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.001      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -6.580
                               -0.000       0.000     129.170      -0.000      -0.101      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000    -129.170       0.000      -0.000       0.000       0.101       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.001       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.101      -0.000      -0.000      -0.000    -933.148       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      26.454
                                0.000       0.000      -0.101       0.000     933.148       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      15.486

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000     -29.380

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              148.617      -0.000      -0.000      -0.000       0.000       3.357       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001    -297.126      -0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -148.617       0.000       0.000      -0.000       0.000      -3.357      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000    -126.663      -0.000      -0.000      -0.000       0.000      18.517       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000    -219.272    -126.589      -0.003       0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      15.617

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              219.272      -0.000       0.000      -0.000       0.000      -1.481      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              126.589      -0.000       0.000       0.000       0.000      19.337      -0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.003      -0.000      -0.000      -0.000       0.000       0.025      -0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       1.481     -19.337      -0.025       0.000      -0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -179.828

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     -15.617       0.000      -0.000      -0.000       0.000     179.828       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      11.947       0.000      -0.000      -0.000      -0.000      27.410      -0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      16.869      -3.409      -0.034       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000    -195.670

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -15.547      -0.000      -0.000      -0.000      -0.000    -144.426       0.000      -0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.173

   15    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000     -15.322      26.392      99.340       0.000       0.000      -0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      26.445       0.000      -0.000      -0.000       0.000       0.144      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           15422.182       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   15422.182       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   15422.329       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   15422.365       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26714.614       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32337.700       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32337.701       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   32337.775
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

    1    1  |1 1>-            126.663      -0.000       0.000      -0.000       0.000     -18.517      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000     -15.618
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-             -0.000       0.000     219.271    -126.591       0.003      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-             -0.000    -219.271       0.000      -0.000      -0.000       0.000       1.482       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000     126.591       0.000       0.000       0.000       0.000      19.337      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000      -0.003       0.000      -0.000       0.000       0.000      -0.025       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000     179.823
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-             -0.000      -0.000      -1.482     -19.337       0.025       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-             15.618       0.000      -0.000       0.000      -0.000    -179.823       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-             11.947       0.000       0.000      -0.000      -0.000      27.404      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000     195.671
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000     -16.869      -3.409       0.034      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>-             -0.000     -15.547       0.000       0.000      -0.000      -0.000    -144.421      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 1>-             -0.000       0.000      15.322      26.392     -99.340       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.173
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-             26.445      -0.000       0.000       0.000      -0.000       0.144      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.319       0.000      -0.000      -0.000      -0.000       0.000     634.313       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -40.332      -0.000      -0.000       0.000       0.000      -0.000     471.012       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -21.259       0.000       0.000       0.000      -0.000      -0.000     248.268       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      41.675       0.000      -0.000      -0.000     461.470      -0.000     148.609

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -33.089       0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -41.675      -0.000    -461.470      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.065      -0.000       0.000      -0.000      -0.000      -0.000    -124.857       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -6.580       0.000      26.454       0.000      -0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      15.547      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              -11.947       0.000       0.000       0.000      -0.000       0.000     -26.445      -0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000     -16.869       0.000       0.000       0.000      15.322      -0.000      -0.001

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       3.409      -0.000       0.000      -0.000     -26.392       0.000    -253.195

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.034      -0.000       0.000       0.000     -99.340       0.000      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     144.426       0.000      -0.000      -0.000      -0.000

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              -27.410      -0.000      -0.000      -0.000       0.000      -0.000      -0.144       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000     195.670       0.000       0.173       0.000       0.000      -0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     324.376      -0.000       0.445       0.000       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000    -222.997       0.000       0.000       0.000      -0.000

   12    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             -324.376      -0.000       0.000       0.000       0.000       0.000      -0.398       0.000

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000     222.997      -0.000       0.000      -0.000       0.081       0.000     -15.326

   14    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.445      -0.000      -0.000       0.000       0.000       0.000     933.174      -0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.081      -0.000       0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.398      -0.000    -933.174      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     126.663
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -18.517
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>           32337.958       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000   32338.019       0.000       0.000       0.000       0.000       0.000       6.580
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000   32338.020       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   32338.070       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   33167.315       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   33167.315       0.000     -26.454
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   33167.342       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       6.580       0.000       0.000      -0.000     -26.454       0.000   15422.185
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-            -11.947      -0.000      -0.000       0.000       0.000      -0.000     -26.445       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       0.000      15.547      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-             -0.000       0.000      16.869      -0.000     -15.322       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       3.409      -0.000     -26.392      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000      -0.034       0.000      99.340       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-            -27.404       0.000       0.000       0.000      -0.000       0.000      -0.144       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000     144.421      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000    -195.671      -0.000       0.000      -0.000      -0.173       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000     324.378       0.000       0.000       0.000       0.444      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-           -324.378       0.000       0.000       0.000       0.000       0.000      -0.399       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-             -0.000      -0.000       0.000    -223.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000      -0.000     223.000       0.000       0.081       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000      -0.000       0.000      -0.081       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-             -0.444      -0.000      -0.000      -0.000      -0.000       0.000     933.174       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.399      -0.000      -0.000      -0.000    -933.174       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.012       0.000       0.000       0.000      -0.000       0.142      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              158.069      -0.000      -0.000       0.000       0.000     -22.346      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              251.087      -0.000       0.000      -0.000       0.000      35.559      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      33.208

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -148.623      -0.000       0.000       0.000      -0.000      39.442       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -257.304    -148.556       0.003       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000      -0.000       0.000      -0.041       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001     253.195       0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     126.657       0.000      -0.000       0.000       0.000       1.553      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.657       0.000      -0.000      -0.000      -0.000      -1.553      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      15.320

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.553       0.000       0.000      -0.000       0.000    -394.912      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.553       0.000       0.000      -0.000       0.000     394.912      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -15.320       0.000       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -20.977       0.000      -0.049       0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      19.574       0.000       0.000      -0.000       0.000      44.640      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.574       0.000      -0.000       0.000       0.000     -44.646      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000     265.867

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.422       0.000       0.000      -0.000      -0.000       0.271      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      26.422      -0.000       0.000       0.000      -0.000      -0.270       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      30.314      -0.000      99.366      -0.000       0.000      -0.000

    1    1  |1 0>            -126.663       0.000      -0.000       0.000      -0.000      18.517       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      15.618
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000    -219.271     126.591      -0.003       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000     219.271       0.000       0.000       0.000      -0.000      -1.482      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000    -126.591      -0.000       0.000      -0.000      -0.000     -19.337       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.003      -0.000       0.000       0.000      -0.000       0.025      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000    -179.823
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       1.482      19.337      -0.025      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>             -15.618      -0.000       0.000      -0.000       0.000     179.823      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>             -11.947      -0.000      -0.000       0.000       0.000     -27.404       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000    -195.671
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      16.869       3.409      -0.034       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.000      15.547      -0.000      -0.000       0.000       0.000     144.421       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000      -0.000     -15.322     -26.392      99.340      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.173
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 0>             -26.445       0.000      -0.000      -0.000       0.000      -0.144       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          15422.182       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   15422.182       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   15422.329       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   15422.365       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26714.614       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32337.700       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32337.701       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32337.775
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
                               -0.000       0.220      -0.000      -0.000       0.000    -634.329      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -36.125       0.000       0.000      -0.000     450.517       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -10.645       0.000       0.000      -0.000    -283.897       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.464       0.000       0.000      -0.000      -0.000      -0.000    -461.488

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -14.034       0.000     461.450       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      33.182      -0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.046      -0.000      -0.000       0.000     124.823       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      15.326       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      19.574      -0.000      26.422      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -19.574      -0.000      -0.000      -0.000     -26.422       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               20.977      -0.000       0.000       0.000      -0.000       0.000     -30.314

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.049       0.000      -0.000       0.000       0.000      -0.000     -99.366

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      44.646       0.000      -0.271       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -44.640       0.000       0.000       0.000       0.270      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -265.867       0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.001      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     129.170      -0.000      -0.101      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -129.170       0.000      -0.000       0.000       0.101       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.101      -0.000      -0.000      -0.000    -933.148       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.101       0.000     933.148       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |1 0>              -0.000      -6.580      -0.000      -0.000       0.000      26.454      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              11.947       0.000       0.000      -0.000      -0.000       0.000      26.445
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000     -15.547       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000     -16.869       0.000      15.322      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -3.409       0.000      26.392       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.034      -0.000     -99.340      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>              27.404      -0.000      -0.000      -0.000       0.000      -0.000       0.144
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>              -0.000      -0.000      -0.000    -144.421       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000     195.671       0.000      -0.000       0.000       0.173      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000    -324.378      -0.000      -0.000      -0.000      -0.444       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>             324.378       0.000      -0.000      -0.000      -0.000      -0.000       0.399
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000     223.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000    -223.000       0.000      -0.081      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.081       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.444       0.000       0.000       0.000       0.000       0.000    -933.174
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 0>              -0.000      -0.399       0.000       0.000       0.000     933.174       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

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

   10    1  |1 1>-          32337.958       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   32338.019       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   32338.020       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   32338.070       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   33167.315       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   33167.315       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   33167.342
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24985.14422601    -0.00017551      -38.52      0.00000000        0.00      0.0000
    2-24985.07551253     0.06853798    15042.35      0.06871348    15080.87      1.8698
    3-24985.07551248     0.06853803    15042.36      0.06871353    15080.88      1.8698
    4-24985.07551248     0.06853803    15042.36      0.06871353    15080.88      1.8698
    5-24985.07456192     0.06948858    15250.98      0.06966409    15289.50      1.8957
    6-24985.07456178     0.06948872    15251.01      0.06966423    15289.53      1.8957
    7-24985.07456162     0.06948889    15251.05      0.06966439    15289.57      1.8957
    8-24985.07456162     0.06948889    15251.05      0.06966439    15289.57      1.8957
    9-24985.07456152     0.06948898    15251.07      0.06966449    15289.59      1.8957
   10-24985.07262821     0.07142229    15675.38      0.07159780    15713.90      1.9483
   11-24985.07262818     0.07142233    15675.39      0.07159783    15713.91      1.9483
   12-24985.07262818     0.07142233    15675.39      0.07159783    15713.91      1.9483
   13-24985.07262808     0.07142242    15675.41      0.07159793    15713.93      1.9483
   14-24985.07262803     0.07142247    15675.42      0.07159798    15713.94      1.9483
   15-24985.07262803     0.07142247    15675.42      0.07159798    15713.94      1.9483
   16-24985.07262791     0.07142259    15675.45      0.07159810    15713.97      1.9483
   17-24985.06071061     0.08333990    18290.99      0.08351540    18329.51      2.2726
   18-24985.06071054     0.08333996    18291.01      0.08351547    18329.53      2.2726
   19-24985.06071006     0.08334044    18291.11      0.08351595    18329.63      2.2726
   20-24985.06071005     0.08334045    18291.11      0.08351595    18329.63      2.2726
   21-24985.06071001     0.08334049    18291.12      0.08351599    18329.64      2.2726
   22-24985.02234605     0.12170445    26711.04      0.12187996    26749.56      3.3165
   23-24985.02234605     0.12170445    26711.04      0.12187996    26749.56      3.3165
   24-24985.02234605     0.12170446    26711.04      0.12187996    26749.56      3.3165
   25-24985.01523222     0.12881828    28272.35      0.12899379    28310.86      3.5101
   26-24985.00118783     0.14286268    31354.73      0.14303818    31393.25      3.8923
   27-24984.99912891     0.14492159    31806.61      0.14509709    31845.13      3.9483
   28-24984.99912844     0.14492206    31806.72      0.14509756    31845.23      3.9483
   29-24984.99912820     0.14492230    31806.77      0.14509781    31845.29      3.9483
   30-24984.99912815     0.14492235    31806.78      0.14509786    31845.30      3.9483
   31-24984.99912815     0.14492235    31806.78      0.14509786    31845.30      3.9483
   32-24984.99731379     0.14673671    32204.99      0.14691222    32243.51      3.9977
   33-24984.99731379     0.14673671    32204.99      0.14691222    32243.51      3.9977
   34-24984.99731372     0.14673679    32205.00      0.14691229    32243.52      3.9977
   35-24984.99731334     0.14673716    32205.08      0.14691266    32243.60      3.9977
   36-24984.99731334     0.14673716    32205.08      0.14691266    32243.60      3.9977
   37-24984.99731314     0.14673736    32205.13      0.14691287    32243.65      3.9977
   38-24984.99731295     0.14673756    32205.17      0.14691306    32243.69      3.9977
   39-24984.99716430     0.14688621    32237.80      0.14706171    32276.31      4.0018
   40-24984.99716430     0.14688621    32237.80      0.14706171    32276.31      4.0018
   41-24984.99716424     0.14688626    32237.81      0.14706177    32276.33      4.0018
   42-24984.99489257     0.14915793    32736.38      0.14933344    32774.90      4.0636
   43-24984.99489253     0.14915797    32736.39      0.14933347    32774.91      4.0636
   44-24984.99489190     0.14915861    32736.53      0.14933411    32775.05      4.0636
   45-24984.99489190     0.14915861    32736.53      0.14933411    32775.05      4.0636
   46-24984.99489163     0.14915887    32736.59      0.14933438    32775.11      4.0636
   47-24984.99489156     0.14915894    32736.60      0.14933445    32775.12      4.0636
   48-24984.99489138     0.14915912    32736.64      0.14933463    32775.16      4.0636
   49-24984.99489138     0.14915912    32736.64      0.14933463    32775.16      4.0636
   50-24984.99489128     0.14915923    32736.67      0.14933473    32775.19      4.0636
   51-24984.98855484     0.15549566    34127.35      0.15567117    34165.87      4.2360
   52-24984.98855472     0.15549578    34127.38      0.15567128    34165.90      4.2360
   53-24984.98855467     0.15549583    34127.39      0.15567134    34165.91      4.2360
   54-24984.98855453     0.15549597    34127.42      0.15567148    34165.94      4.2360
   55-24984.98855453     0.15549597    34127.42      0.15567148    34165.94      4.2360

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99938596  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000121 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000011 -0.00000000  0.00000000  0.00000000 -0.05628597 -0.10679538 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000006  0.00000000  0.00000000 -0.00000000  0.10682195 -0.05627199 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000484  0.00000000 -0.00000000  0.12091274 -0.00000249
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000003

   5    1  |0 0>          -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000486 -0.00000000 -0.00000000 -0.00000000 -0.00000249 -0.12091272
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000002

   7    1  |0 0>          -0.00026745 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000028  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000001 -0.54779681 -0.00002568  0.00000000  0.00000000  0.00000836  0.40533869
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000012  0.00000005

   2    1  |1 1>+          0.00000000 -0.54779291  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000439 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000081  0.00000000  0.00000000 -0.00000000  0.40517258  0.70197741  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000001 -0.00001482  0.31618967  0.00000000 -0.00000000  0.70183555 -0.00001448
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000045 -0.00000020

   5    1  |1 1>+          0.00000000  0.00000001 -0.00002567  0.54757631 -0.00000000  0.00000000 -0.40522409  0.00000836
                           0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00002398 -0.00000000  0.00000000 -0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000486 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000461  0.00000000  0.00000000 -0.00000000 -0.00063933  0.00004277  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000967 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00051482
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000496 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00041045
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000321  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000704 -0.00000000 -0.00000000 -0.00000000 -0.00010329  0.00056061  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000704 -0.00000000  0.00000000 -0.00051356  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.02022919 -0.00000000  0.00000000  0.00000000 -0.00466031  0.00268770  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00140559  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00140051  0.00000007  0.00000000  0.00000000  0.00000010  0.00465705
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.81048499  0.00011459 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012
                           0.00000000  0.00000001 -0.00002568  0.54781292  0.00000000 -0.00000000  0.40528551 -0.00000836

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000012 -0.00000005
                           0.00000000  0.00000001  0.54781293  0.00002568  0.00000000  0.00000000  0.00000836  0.40528549

   4    1  |1 0>           0.00000000 -0.00000507 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.63233054 -0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000221  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00002367  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000  0.00000000 -0.00005810  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000139 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005812

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00052207  0.00000007 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001026 -0.00000000  0.00000000  0.00000000  0.00000009 -0.00068102 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000769 -0.00000000  0.00000000 -0.00065520  0.00000001

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000769  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00065520

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00140169 -0.00000007  0.00000000  0.00000000  0.00000010  0.00466741

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000007 -0.00140168  0.00000000 -0.00000000  0.00466741 -0.00000010

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02022872  0.00000000  0.00000000  0.00000000  0.00000076 -0.00537938 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012
                           0.00000000 -0.00000001  0.00002568 -0.54779682  0.00000000 -0.00000000  0.40533869 -0.00000836

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000081 -0.00000000 -0.00000000  0.00000000  0.40537105 -0.70186282 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000439  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.54779289  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000009
                           0.00000000  0.00000001  0.31618582  0.00001482  0.00000000  0.00000000  0.00001448  0.70183840

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000012 -0.00000005
                           0.00000000 -0.00000001 -0.54757853 -0.00002567  0.00000000  0.00000000  0.00000836  0.40521917

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00002398  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000460 -0.00000000 -0.00000000 -0.00000000 -0.00063932 -0.00004295  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000486 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000968 -0.00000000  0.00000000 -0.00051483  0.00000001

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000496  0.00000000 -0.00000000  0.00041046 -0.00000001

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000704  0.00000000 -0.00000000 -0.00000000 -0.00010315 -0.00056064 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000320  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000705  0.00000000  0.00000000  0.00000000  0.00000001  0.00051356

  14    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00140559  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02022919  0.00000000 -0.00000000 -0.00000000 -0.00465955 -0.00268902  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000007 -0.00140051 -0.00000000  0.00000000 -0.00465705  0.00000010

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001265
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002401
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000716  0.00000000  0.00000000  0.00000803  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.12092049  0.00000003  0.00000000 -0.00000000  0.00000561  0.00000000 -0.00000000 -0.00000000
                           0.00000177  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000717 -0.00000000 -0.00000000 -0.00000802  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.22430722 -0.00001002 -0.00000000  0.69487917 -0.00004055 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000030  0.00000028  0.00000000

   2    1  |1 1>+         -0.40532862  0.44703013 -0.00000000  0.00000001  0.57736200  0.00000000 -0.00000001  0.00000001
                           0.00000593  0.00000088  0.00000000 -0.00000000 -0.00000153  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.57733397
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000001  0.00000001  0.00002389 -0.53416923 -0.00000000 -0.00001976 -0.33879555 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000013 -0.00000012 -0.00000000

   5    1  |1 1>+         -0.00000001  0.00000001  0.00002384 -0.53298000  0.00000001  0.00002915  0.49943902 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000020  0.00000018  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000024 -0.00000000  0.00000000  0.00000013  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00062035  0.00011156 -0.00000000 -0.00000000 -0.00072970 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00059261
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00107665 -0.00000005  0.00000000  0.00009375 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00112360  0.00000005 -0.00000000  0.00071237 -0.00000004  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00021016  0.00132021 -0.00000000  0.00000000 -0.00080243 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091351
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000002 -0.00037184 -0.00000000 -0.00000006 -0.00101229 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000038
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00466309 -0.00000341  0.00000000  0.00000000 -0.00000082 -0.00000000 -0.00000000 -0.00000000
                          -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000686  0.00000000 -0.00000000  0.00000438 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57737978

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000014 -0.00000000
                           0.00000001 -0.00000001 -0.00002758  0.61661174  0.00000000  0.00002282  0.39113417  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000017 -0.00000016 -0.00000000
                          -0.00000000  0.00000000  0.61669734  0.00002759 -0.00000000  0.39099918 -0.00002282  0.00000000

   4    1  |1 0>           0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000284  0.77469631 -0.00000000  0.00000001  0.00012976  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00001185  0.00000000  0.00000000 -0.00000000  0.00000153 -0.00000000 -0.00000000 -0.00000000
                           0.81040177 -0.00009793  0.00000000  0.00000000  0.57747112  0.00000000 -0.00000001  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000029 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000004 -0.00082704  0.00000000  0.00000008  0.00139285 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00082673 -0.00000004 -0.00000000  0.00139304 -0.00000008 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00109088

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.00052464  0.00000000  0.00000001  0.00017225  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00052470  0.00000002 -0.00000000  0.00017210 -0.00000001  0.00000000

  13    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00051944 -0.00000019  0.00000000  0.00000000  0.00108608  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000334 -0.00000000 -0.00000000  0.00000046 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000335 -0.00000000  0.00000000  0.00000047 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000028 -0.00000025 -0.00000000
                           0.00000001  0.00000000  0.00001004 -0.22445933  0.00000001  0.00004055  0.69483004 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.57733397

   3    1  |1 1>-          0.00000593 -0.00000088 -0.00000000  0.00000000 -0.00000153  0.00000000  0.00000000  0.00000000
                           0.40532864  0.44722049 -0.00000000  0.00000000 -0.57721458 -0.00000000  0.00000001 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000015  0.00000013  0.00000000
                          -0.00000000 -0.00000000 -0.53423964 -0.00002390  0.00000000 -0.33868212  0.00001976 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000022  0.00000020  0.00000000
                          -0.00000000  0.00000000  0.53287442  0.00002383  0.00000000 -0.49955329  0.00002915  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000024  0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00059262

   8    1  |1 1>-          0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00062036  0.00011134 -0.00000000  0.00000000  0.00072975  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000005 -0.00107667  0.00000000  0.00000001  0.00009351 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000005 -0.00112343 -0.00000000 -0.00000004 -0.00071262 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091350

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00021017  0.00131994 -0.00000000  0.00000000  0.00080285  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00037207  0.00000002 -0.00000000  0.00101221 -0.00000006 -0.00000000

  14    1  |1 1>-         -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00466310 -0.00000341  0.00000000  0.00000000  0.00000081 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000038

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000686 -0.00000000 -0.00000000 -0.00000438 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000011 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.88125784 -0.45508123  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.45508307  0.88125440  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.99179942  0.00000016  0.00000002 -0.00000000  0.00000015 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000002 -0.00000003  0.99179858 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000326  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000016  0.99179942  0.00000003 -0.00000015 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000025 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000001  0.04944134  0.00000000  0.00004075  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.04944523 -0.00000000 -0.00000000 -0.00004045
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.08588350 -0.04865733  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.08559911 -0.00000001 -0.00000000  0.00000000 -0.00002310  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.04942313  0.00000001  0.00000000  0.00000000 -0.00004067  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000101  0.99967657 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00303091 -0.00000000 -0.00000000 -0.00000499
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00021651  0.00321499  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00255016 -0.00000000 -0.00000016 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00195902 -0.00000000 -0.00000976 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00107559 -0.00000000 -0.00000000 -0.00000658
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00282780  0.00059062  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00254813  0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.01631309 -0.02882510 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.02870142  0.00000000  0.00000000  0.01798011
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000 -0.00000000 -0.00000003

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.02870478 -0.00000000  0.01798423  0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00082956 -0.09869705 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.04944380 -0.00000001 -0.00000000  0.00000000 -0.00004100  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.04944380  0.00000000 -0.00004100 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000000  0.00000000  0.00004726

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000033  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.09884949 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000152
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.99967666

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00025946  0.00000000  0.00000000 -0.00000000  0.00000484 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00025951 -0.00000000  0.00000483  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002145 -0.00255207 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00349513 -0.00002938 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00320251  0.00000000  0.00000000 -0.00000000  0.00000677 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00320252 -0.00000000  0.00000676  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00254186 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.02870202 -0.00000000 -0.01798076 -0.00000002  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02870202  0.00000000  0.00000000  0.00000002 -0.01798076  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.03311608  0.00027835  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.04944137 -0.00000001 -0.00000000 -0.00000000  0.00004076 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.08505350 -0.05009410 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.04944518 -0.00000000 -0.00000000 -0.00004046

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.08559944  0.00000000 -0.00002310 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.04942252  0.00000000  0.00004067  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000  0.99967657  0.00000101 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00027043  0.00321089  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00303087 -0.00000000 -0.00000000 -0.00000499

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00255015  0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00195904 -0.00000000 -0.00000000 -0.00000000  0.00000976 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00283736  0.00054307 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00107567 -0.00000000 -0.00000000 -0.00000658

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00254815  0.00000000  0.00000012  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02870142  0.00000000  0.00000000  0.01798011

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01679531 -0.02854683 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.02870477 -0.00000000 -0.00000000  0.00000002 -0.01798423  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00272899 -0.03493230  0.00000000  0.00000000 -0.00000188 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000064 -0.00000406  0.00235598 -0.00000000  0.00450885  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000034 -0.00000215 -0.00446310  0.00000000  0.00238008 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00499828 -0.00000000  0.00000127
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00499306  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000114  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00499828 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.99752745  0.07027744 -0.00000001  0.00000000  0.00000411  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00068581 -0.00000006
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00069249 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000015  0.00000072  0.00068898 -0.00000000  0.00119147  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00119332  0.00000000 -0.00066631
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00068728 -0.00000000 -0.00128585
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000106  0.00000000 -0.00005839
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.58272468  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00013263  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00001290 -0.00016633  0.60852585 -0.00000000 -0.04541806  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000023  0.48815762  0.00003438
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000015

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000018  0.37792725 -0.00002483
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000011

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.20387493 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00004640 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00001495 -0.00019326  0.10297146  0.00000000 -0.53267286 -0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.48786334  0.00000023 -0.03783982
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  14    1  |1 1>+         -0.04054245  0.57557022  0.00110356  0.00000000 -0.00066377  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00093843 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00090907  0.00000009
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00000000  0.00137685 -0.00000000 -0.00000084  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00069409  0.00000000  0.00076582

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00069410  0.00000005

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000031 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00137349  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000018
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.05209582  0.00000002  0.70188902

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000019
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.05210935  0.00004400

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000005 -0.48780554  0.00000000  0.00029972 -0.00000000 -0.00000000 -0.00000001

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00002194 -0.00036741  0.00040087 -0.00000000  0.65464725  0.00000000  0.00000002  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.61491407  0.00000029 -0.22149256

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000006
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000029  0.61491281 -0.00001390

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00011097 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.48754954  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00081738 -0.00000009

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00081752 -0.00000000 -0.00148409

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.04054825  0.57556789  0.00000078 -0.00000000  0.00135959  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00068580  0.00000000 -0.00090710

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000017 -0.00000072  0.00068752  0.00000000 -0.00119230  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00069249  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00119332 -0.00000004

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00068727  0.00000008

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000107 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001289  0.00016640  0.60857860 -0.00000000  0.04466415  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00013263  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.58272003 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000014
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.48815508  0.00000023  0.54811687

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.37793037 -0.00000018  0.39550105

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001497  0.00019345  0.10363444 -0.00000000  0.53254789  0.00000000  0.00000001  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00004641 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.20388770  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000023 -0.48786336  0.00000235

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00093793  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.04054246 -0.57557022  0.00110439 -0.00000000  0.00066239  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00090876  0.00000000 -0.00144684

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000240 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000450  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00001283 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000106
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00001078 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000

   6    1  |0 0>          -0.00000127 -0.00000000  0.00000000 -0.00001285 -0.00000000  0.00000000 -0.00000107  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00090640 -0.00000000  0.00000000 -0.00102044  0.00000000  0.00000000 -0.00108875  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00083221 -0.00108606 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002855 -0.00000603 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00109008  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000004 -0.00000000 -0.00099055 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00061389
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000008 -0.00000000  0.00046026  0.00000000  0.00000000 -0.00000000  0.00000000  0.00108262
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00001918 -0.00000000 -0.00000000 -0.00000000  0.00000007  0.02543111
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.06069017 -0.39023017  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00208201 -0.00216667 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.31376254 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.54823653  0.00000000  0.00000006 -0.18051404  0.00000000 -0.00000000  0.00153227 -0.00000000
                          -0.00000015  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.39590116 -0.00000000 -0.00000019  0.58586803 -0.00000000  0.00000000 -0.00072277  0.00000000
                           0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.70537045 -0.42307580  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02419814 -0.00234903  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.48444770  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000237  0.00000000  0.57596976  0.00000019  0.00000000  0.00000000  0.00000000  0.00039033
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00003488 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00264449 -0.00011307  0.00000001 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00009072 -0.00000063  0.00000000  0.00000000

  16    1  |1 1>+          0.00145214 -0.00000000  0.00000000 -0.00039190 -0.00000000 -0.00000000 -0.70686930  0.00000185
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00108850 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005  0.00000000  0.00113578  0.00000000  0.00000000  0.00000000  0.00000000  0.00108956

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00076658  0.00000000  0.00000000 -0.00113527  0.00000000 -0.00000000  0.00108957 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004984  0.00000002 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00145276 -0.00000412  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000604  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000309 -0.00108814 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000360 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00010500  0.00000029 -0.00000000  0.00000000

   7    1  |1 0>           0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00004402  0.00000001 -0.50287902 -0.00000017 -0.00000000 -0.00000000  0.00000000  0.00097668

   8    1  |1 0>           0.00000019 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70154375  0.00000001 -0.00000017  0.50335799 -0.00000000 -0.00000000  0.00098000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.57768777 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000190 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001389 -0.00000000 -0.19771948 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00126923

  12    1  |1 0>          -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.22164156 -0.00000000 -0.00000007  0.19755865 -0.00000000  0.00000000 -0.00127150  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005617 -0.00320765 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00163749  0.57771853 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001
                          -0.00148950  0.00000000 -0.00000000  0.00057453  0.00000000  0.00000000  0.70688013 -0.00000185

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000009 -0.00000000 -0.00057310 -0.00000000 -0.00000000 -0.00000000  0.00000185  0.70688016

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000006 -0.00000000  0.00101982  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00108875

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00109008  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002876 -0.00000600  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00083836  0.00108133 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00066699 -0.00000000 -0.00000000  0.00099010 -0.00000000  0.00000000  0.00061388 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00128555  0.00000000 -0.00000000  0.00046112 -0.00000000 -0.00000000 -0.00108263  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00005859  0.00000000 -0.00000000  0.00001923  0.00000000  0.00000000  0.02543111 -0.00000007

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.31377349 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00200662 -0.00216860  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.05849253  0.39057772 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000015 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00003438  0.00000001  0.18088875  0.00000006  0.00000000  0.00000000  0.00000000  0.00152800

  10    1  |1 1>-          0.00000011 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002481  0.00000000  0.58613462  0.00000019  0.00000000  0.00000000  0.00000000  0.00071772

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.48444089  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.02411543 -0.00237117 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.70295959  0.42706351  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.03745033  0.00000000 -0.00000019  0.57599534 -0.00000000  0.00000000 -0.00039178  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00009074 -0.00000055 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00264511  0.00009848  0.00000001 -0.00000002

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00003503  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000009 -0.00000000 -0.00039062 -0.00000000 -0.00000000 -0.00000000  0.00000185  0.70686931

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000207 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000451 -0.00000000 -0.00000000 -0.00000000  0.00001769  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000238  0.00000000  0.00000000  0.00000000 -0.00003358  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000593 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00001366 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000593  0.00000000  0.00000000  0.00000193
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000120  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000564 -0.00000000 -0.00000000  0.00000641
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00108921 -0.00000000  0.00000356  0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                           0.00000132 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000346  0.00000000  0.00000000  0.00000000 -0.00000366 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000037 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000684  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000361 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00014375  0.00000000  0.70460756 -0.00000000 -0.00000000  0.00000000 -0.08931547  0.00000000
                           0.00000017 -0.00000000 -0.00000617 -0.00000000 -0.00000000  0.00000000  0.00068349 -0.00000000

   8    1  |1 1>+          0.00000000 -0.70125783  0.00000000  0.00000000 -0.00000000  0.17667596 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000179  0.64138751  0.00000000  0.00000000 -0.13101534
                           0.00000000 -0.00000000  0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000027  0.09512272  0.00000000 -0.00000000 -0.59003152
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

  11    1  |1 1>+          0.00266901 -0.00000000 -0.05972828  0.00000000 -0.00000000  0.00000000  0.52698085 -0.00000000
                          -0.00000324  0.00000000  0.00000052 -0.00000000  0.00000000 -0.00000000 -0.00403275  0.00000000

  12    1  |1 1>+         -0.00000000 -0.01796549 -0.00000000 -0.00000000  0.00000000  0.50454659 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.56775959 -0.00000158 -0.00000000  0.00000000  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000002  0.00000000  0.00000000  0.00000001

  14    1  |1 1>+         -0.00000000 -0.00015926  0.00000000  0.00000000 -0.00000000  0.00000252 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.70687119  0.00000000  0.00036867 -0.00000000 -0.00000000  0.00000000 -0.00001250  0.00000000
                          -0.00085721 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010 -0.00000000

  16    1  |1 1>+          0.00000001  0.00000000  0.00000000 -0.00000000  0.00020843  0.00000000 -0.00000000 -0.00060646
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000501 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000262  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000261  0.00000000  0.00000000 -0.00000253

   4    1  |1 0>           0.00000152 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00125446  0.00000000 -0.00000363 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000751 -0.00000000

   6    1  |1 0>          -0.00003084 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02542758 -0.00000000 -0.00000701  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000002 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.50139357 -0.00000140 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000140 -0.50140839  0.00000000 -0.00000000 -0.01837618

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00001588 -0.00000000 -0.00000000 -0.00000000  0.65445707 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.12576268 -0.00000000  0.00000000  0.00000000 -0.00011396 -0.00000000  0.00000001

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.07503427 -0.00000021 -0.00000000 -0.00000001 -0.00000011

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000021 -0.07451260 -0.00000000  0.00000000  0.72674805

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00500930 -0.00000000
                          -0.00000011 -0.00000000 -0.00013702  0.00000000 -0.00000000  0.00000000  0.65459172 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00020858 -0.00000000  0.00000000  0.00058721

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000002 -0.00000000 -0.00000000 -0.00020907 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00017910  0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000564  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000347  0.00000000  0.00000000 -0.00000000 -0.00000367  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000132  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00108921  0.00000000  0.00000356  0.00000000 -0.00000000 -0.00000000 -0.00000011  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000774

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000684 -0.00000000 -0.00000000  0.00000564

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000361 -0.00000000  0.00000000  0.00001083

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.70126609 -0.00000000 -0.00000000  0.00000000  0.17660545  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000018  0.00000000  0.00000617  0.00000000 -0.00000000 -0.00000000  0.00068566  0.00000000
                          -0.00014436  0.00000000  0.70456895 -0.00000000 -0.00000000  0.00000000  0.08959870  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000002  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.64147885  0.00000179  0.00000000  0.00000000  0.00000002

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.09554156 -0.00000027 -0.00000000 -0.00000001 -0.00000009

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.01800637 -0.00000000 -0.00000000 -0.00000000  0.50469277 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000324  0.00000000 -0.00000052 -0.00000000  0.00000000 -0.00000000 -0.00403296  0.00000000
                           0.00266908  0.00000000 -0.05952331 -0.00000000  0.00000000 -0.00000000 -0.52700770  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000158  0.56798868 -0.00000000  0.00000000  0.32587828

  14    1  |1 1>-          0.00085721  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000
                           0.70687117  0.00000000  0.00036855 -0.00000000 -0.00000000  0.00000000  0.00001289  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00015941 -0.00000000 -0.00000000  0.00000000  0.00000278  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000002 -0.00000000 -0.00000000 -0.00020889 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>           0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000034  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000972 -0.01920258 -0.00000000 -0.03630035 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000512  0.03631119 -0.00000000 -0.01919688 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000193 -0.00000000  0.00000000  0.00000000 -0.00000000  0.04109797 -0.00000011
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.04109585  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00005929 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011  0.04109798
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000187 -0.00000000 -0.00000000  0.00000486  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066749
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00066615  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000379  0.00066827  0.00000000  0.00115538  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000774 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00114970 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000564 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00066539  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00001083 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000264 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00059466  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000086 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.07872598 -0.00080967  0.00000000  0.00005555  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00053233
                           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000009  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00029066
                           0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000001  0.00000000  0.00000000  0.00028260 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.46482982 -0.00016387  0.00000000  0.00076380  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.32627749 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00056479  0.00000000
                           0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00024286  0.70595288 -0.00000000 -0.40886288 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.70650728  0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00101931 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000197  0.70651344
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00133632 -0.00000000 -0.00000182 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000253 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00066712 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066713

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000192 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00133079 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01874428  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000672  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000668

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00010332  0.00068818 -0.00000000 -0.00000090 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.74539038 -0.00000121 -0.00000000 -0.00095492 -0.00000000  0.00000000

  11    1  |1 0>           0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.72669501  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00060389  0.00000000

  12    1  |1 0>           0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000011 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00060403

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000093  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00064585  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000197  0.70650266

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00058733  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.70650265  0.00000197

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00025639  0.00110974  0.00000001  0.81580597  0.00000001 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000641  0.00000000  0.00000000  0.00000000 -0.00000000  0.00066749 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000379  0.00066513 -0.00000000 -0.00115719 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00066615 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00114970

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066538

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000264

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.07879058 -0.00080994 -0.00000000 -0.00005323  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000086 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00059477 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.13056072 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00053229  0.00000000

  10    1  |1 1>-          0.00000016  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.58996542  0.00000000  0.00000000  0.00000000 -0.00000000  0.00029076 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.46467245 -0.00016601 -0.00000000 -0.00076351 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00028260  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00056490

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00101931 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.70650730 -0.00000001 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00024296  0.70706262  0.00000000  0.40694076  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00060640  0.00000000  0.00000000  0.00000000 -0.00000001  0.70651345 -0.00000197


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -24985.14422601     -0.00017551      -38.52      0.00000000        0.00      0.0000
     2   1 -24985.07551253      0.06853798    15042.35      0.06871348    15080.87      1.8698
     3   1 -24985.07551248      0.06853803    15042.36      0.06871353    15080.88      1.8698
     4   1 -24985.07551248      0.06853803    15042.36      0.06871353    15080.88      1.8698
     5   1 -24985.07456192      0.06948858    15250.98      0.06966409    15289.50      1.8957
     6   1 -24985.07456178      0.06948872    15251.01      0.06966423    15289.53      1.8957
     7   1 -24985.07456162      0.06948889    15251.05      0.06966439    15289.57      1.8957
     8   1 -24985.07456162      0.06948889    15251.05      0.06966439    15289.57      1.8957
     9   1 -24985.07456152      0.06948898    15251.07      0.06966449    15289.59      1.8957
    10   1 -24985.07262821      0.07142229    15675.38      0.07159780    15713.90      1.9483
    11   1 -24985.07262818      0.07142233    15675.39      0.07159783    15713.91      1.9483
    12   1 -24985.07262818      0.07142233    15675.39      0.07159783    15713.91      1.9483
    13   1 -24985.07262808      0.07142242    15675.41      0.07159793    15713.93      1.9483
    14   1 -24985.07262803      0.07142247    15675.42      0.07159798    15713.94      1.9483
    15   1 -24985.07262803      0.07142247    15675.42      0.07159798    15713.94      1.9483
    16   1 -24985.07262791      0.07142259    15675.45      0.07159810    15713.97      1.9483
    17   1 -24985.06071061      0.08333990    18290.99      0.08351540    18329.51      2.2726
    18   1 -24985.06071054      0.08333996    18291.01      0.08351547    18329.53      2.2726
    19   1 -24985.06071006      0.08334044    18291.11      0.08351595    18329.63      2.2726
    20   1 -24985.06071005      0.08334045    18291.11      0.08351595    18329.63      2.2726
    21   1 -24985.06071001      0.08334049    18291.12      0.08351599    18329.64      2.2726
    22   1 -24985.02234605      0.12170445    26711.04      0.12187996    26749.56      3.3165
    23   1 -24985.02234605      0.12170445    26711.04      0.12187996    26749.56      3.3165
    24   1 -24985.02234605      0.12170446    26711.04      0.12187996    26749.56      3.3165
    25   1 -24985.01523222      0.12881828    28272.35      0.12899379    28310.86      3.5101
    26   1 -24985.00118783      0.14286268    31354.73      0.14303818    31393.25      3.8923
    27   1 -24984.99912891      0.14492159    31806.61      0.14509709    31845.13      3.9483
    28   1 -24984.99912844      0.14492206    31806.72      0.14509756    31845.23      3.9483
    29   1 -24984.99912820      0.14492230    31806.77      0.14509781    31845.29      3.9483
    30   1 -24984.99912815      0.14492235    31806.78      0.14509786    31845.30      3.9483
    31   1 -24984.99912815      0.14492235    31806.78      0.14509786    31845.30      3.9483
    32   1 -24984.99731379      0.14673671    32204.99      0.14691222    32243.51      3.9977
    33   1 -24984.99731379      0.14673671    32204.99      0.14691222    32243.51      3.9977
    34   1 -24984.99731372      0.14673679    32205.00      0.14691229    32243.52      3.9977
    35   1 -24984.99731334      0.14673716    32205.08      0.14691266    32243.60      3.9977
    36   1 -24984.99731334      0.14673716    32205.08      0.14691266    32243.60      3.9977
    37   1 -24984.99731314      0.14673736    32205.13      0.14691287    32243.65      3.9977
    38   1 -24984.99731295      0.14673756    32205.17      0.14691306    32243.69      3.9977
    39   1 -24984.99716430      0.14688621    32237.80      0.14706171    32276.31      4.0018
    40   1 -24984.99716430      0.14688621    32237.80      0.14706171    32276.31      4.0018
    41   1 -24984.99716424      0.14688626    32237.81      0.14706177    32276.33      4.0018
    42   1 -24984.99489257      0.14915793    32736.38      0.14933344    32774.90      4.0636
    43   1 -24984.99489253      0.14915797    32736.39      0.14933347    32774.91      4.0636
    44   1 -24984.99489190      0.14915861    32736.53      0.14933411    32775.05      4.0636
    45   1 -24984.99489190      0.14915861    32736.53      0.14933411    32775.05      4.0636
    46   1 -24984.99489163      0.14915887    32736.59      0.14933438    32775.11      4.0636
    47   1 -24984.99489156      0.14915894    32736.60      0.14933445    32775.12      4.0636
    48   1 -24984.99489138      0.14915912    32736.64      0.14933463    32775.16      4.0636
    49   1 -24984.99489138      0.14915912    32736.64      0.14933463    32775.16      4.0636
    50   1 -24984.99489128      0.14915923    32736.67      0.14933473    32775.19      4.0636
    51   1 -24984.98855484      0.15549566    34127.35      0.15567117    34165.87      4.2360
    52   1 -24984.98855472      0.15549578    34127.38      0.15567128    34165.90      4.2360
    53   1 -24984.98855467      0.15549583    34127.39      0.15567134    34165.91      4.2360
    54   1 -24984.98855453      0.15549597    34127.42      0.15567148    34165.94      4.2360
    55   1 -24984.98855453      0.15549597    34127.42      0.15567148    34165.94      4.2360

 E0 = -24985.14405050 is the energy of the lowest zeroth-order state
 E1 = -24985.14422601 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99938596  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000121 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000011 -0.00000000  0.00000000  0.00000000 -0.05628597 -0.10679538 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000006  0.00000000  0.00000000 -0.00000000  0.10682195 -0.05627199 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000484  0.00000000 -0.00000000  0.12091274 -0.00000249
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000003

  5  1     5    1  |0 0>       -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000486 -0.00000000 -0.00000000 -0.00000000 -0.00000249 -0.12091272
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000002

  7  1     7    1  |0 0>       -0.00026745 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000028  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000001 -0.54779681 -0.00002568  0.00000000  0.00000000  0.00000836  0.40533869
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000012  0.00000005

  9  1     2    1  |1 1>+       0.00000000 -0.54779291  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000439 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000081  0.00000000  0.00000000 -0.00000000  0.40517258  0.70197741  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000001 -0.00001482  0.31618967  0.00000000 -0.00000000  0.70183555 -0.00001448
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000045 -0.00000020

 12  1     5    1  |1 1>+       0.00000000  0.00000001 -0.00002567  0.54757631 -0.00000000  0.00000000 -0.40522409  0.00000836
                                0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00002398 -0.00000000  0.00000000 -0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000486 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000461  0.00000000  0.00000000 -0.00000000 -0.00063933  0.00004277  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000967 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00051482
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000496 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00041045
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000321  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000704 -0.00000000 -0.00000000 -0.00000000 -0.00010329  0.00056061  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000704 -0.00000000  0.00000000 -0.00051356  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+       0.02022919 -0.00000000  0.00000000  0.00000000 -0.00466031  0.00268770  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00140559  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00140051  0.00000007  0.00000000  0.00000000  0.00000010  0.00465705
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.81048499  0.00011459 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012
                                0.00000000  0.00000001 -0.00002568  0.54781292  0.00000000 -0.00000000  0.40528551 -0.00000836

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000012 -0.00000005
                                0.00000000  0.00000001  0.54781293  0.00002568  0.00000000  0.00000000  0.00000836  0.40528549

 27  1     4    1  |1 0>        0.00000000 -0.00000507 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.63233054 -0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000221  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001

 29  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00002367  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000  0.00000000 -0.00005810  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000139 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005812

 32  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00052207  0.00000007 -0.00000000 -0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001026 -0.00000000  0.00000000  0.00000000  0.00000009 -0.00068102 -0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000769 -0.00000000  0.00000000 -0.00065520  0.00000001

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000769  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00065520

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00140169 -0.00000007  0.00000000  0.00000000  0.00000010  0.00466741

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000007 -0.00140168  0.00000000 -0.00000000  0.00466741 -0.00000010

 39  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02022872  0.00000000  0.00000000  0.00000000  0.00000076 -0.00537938 -0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000026  0.00000012
                                0.00000000 -0.00000001  0.00002568 -0.54779682  0.00000000 -0.00000000  0.40533869 -0.00000836

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000081 -0.00000000 -0.00000000  0.00000000  0.40537105 -0.70186282 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000439  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.54779289  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000009
                                0.00000000  0.00000001  0.31618582  0.00001482  0.00000000  0.00000000  0.00001448  0.70183840

 44  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000012 -0.00000005
                                0.00000000 -0.00000001 -0.54757853 -0.00002567  0.00000000  0.00000000  0.00000836  0.40521917

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00002398  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000460 -0.00000000 -0.00000000 -0.00000000 -0.00063932 -0.00004295  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000486 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000968 -0.00000000  0.00000000 -0.00051483  0.00000001

 49  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000496  0.00000000 -0.00000000  0.00041046 -0.00000001

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000704  0.00000000 -0.00000000 -0.00000000 -0.00010315 -0.00056064 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000320  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000705  0.00000000  0.00000000  0.00000000  0.00000001  0.00051356

 53  1    14    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00140559  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02022919  0.00000000 -0.00000000 -0.00000000 -0.00465955 -0.00268902  0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000007 -0.00140051 -0.00000000  0.00000000 -0.00465705  0.00000010


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001265
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002401
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000716  0.00000000  0.00000000  0.00000803  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.12092049  0.00000003  0.00000000 -0.00000000  0.00000561  0.00000000 -0.00000000 -0.00000000
                                0.00000177  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000717 -0.00000000 -0.00000000 -0.00000802  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.22430722 -0.00001002 -0.00000000  0.69487917 -0.00004055 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000030  0.00000028  0.00000000

  9  1     2    1  |1 1>+      -0.40532862  0.44703013 -0.00000000  0.00000001  0.57736200  0.00000000 -0.00000001  0.00000001
                                0.00000593  0.00000088  0.00000000 -0.00000000 -0.00000153  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.57733397
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000001  0.00000001  0.00002389 -0.53416923 -0.00000000 -0.00001976 -0.33879555 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000013 -0.00000012 -0.00000000

 12  1     5    1  |1 1>+      -0.00000001  0.00000001  0.00002384 -0.53298000  0.00000001  0.00002915  0.49943902 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000020  0.00000018  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000024 -0.00000000  0.00000000  0.00000013  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00062035  0.00011156 -0.00000000 -0.00000000 -0.00072970 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00059261
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00107665 -0.00000005  0.00000000  0.00009375 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000  0.00112360  0.00000005 -0.00000000  0.00071237 -0.00000004  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00021016  0.00132021 -0.00000000  0.00000000 -0.00080243 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091351
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000002 -0.00037184 -0.00000000 -0.00000006 -0.00101229 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000038
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00466309 -0.00000341  0.00000000  0.00000000 -0.00000082 -0.00000000 -0.00000000 -0.00000000
                               -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000686  0.00000000 -0.00000000  0.00000438 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57737978

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000014 -0.00000000
                                0.00000001 -0.00000001 -0.00002758  0.61661174  0.00000000  0.00002282  0.39113417  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000017 -0.00000016 -0.00000000
                               -0.00000000  0.00000000  0.61669734  0.00002759 -0.00000000  0.39099918 -0.00002282  0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000284  0.77469631 -0.00000000  0.00000001  0.00012976  0.00000000  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00001185  0.00000000  0.00000000 -0.00000000  0.00000153 -0.00000000 -0.00000000 -0.00000000
                                0.81040177 -0.00009793  0.00000000  0.00000000  0.57747112  0.00000000 -0.00000001  0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000029 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000004 -0.00082704  0.00000000  0.00000008  0.00139285 -0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00082673 -0.00000004 -0.00000000  0.00139304 -0.00000008 -0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00109088

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.00052464  0.00000000  0.00000001  0.00017225  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00052470  0.00000002 -0.00000000  0.00017210 -0.00000001  0.00000000

 36  1    13    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00051944 -0.00000019  0.00000000  0.00000000  0.00108608  0.00000000 -0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000334 -0.00000000 -0.00000000  0.00000046 -0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000335 -0.00000000  0.00000000  0.00000047 -0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000028 -0.00000025 -0.00000000
                                0.00000001  0.00000000  0.00001004 -0.22445933  0.00000001  0.00004055  0.69483004 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.57733397

 42  1     3    1  |1 1>-       0.00000593 -0.00000088 -0.00000000  0.00000000 -0.00000153  0.00000000  0.00000000  0.00000000
                                0.40532864  0.44722049 -0.00000000  0.00000000 -0.57721458 -0.00000000  0.00000001 -0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000015  0.00000013  0.00000000
                               -0.00000000 -0.00000000 -0.53423964 -0.00002390  0.00000000 -0.33868212  0.00001976 -0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000022  0.00000020  0.00000000
                               -0.00000000  0.00000000  0.53287442  0.00002383  0.00000000 -0.49955329  0.00002915  0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000024  0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000

 46  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00059262

 47  1     8    1  |1 1>-       0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00062036  0.00011134 -0.00000000  0.00000000  0.00072975  0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000005 -0.00107667  0.00000000  0.00000001  0.00009351 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000005 -0.00112343 -0.00000000 -0.00000004 -0.00071262 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091350

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00021017  0.00131994 -0.00000000  0.00000000  0.00080285  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00037207  0.00000002 -0.00000000  0.00101221 -0.00000006 -0.00000000

 53  1    14    1  |1 1>-      -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00466310 -0.00000341  0.00000000  0.00000000  0.00000081 -0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000038

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000686 -0.00000000 -0.00000000 -0.00000438 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000011 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.88125784 -0.45508123  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.45508307  0.88125440  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.99179942  0.00000016  0.00000002 -0.00000000  0.00000015 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000002 -0.00000003  0.99179858 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000326  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000016  0.99179942  0.00000003 -0.00000015 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000025 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000001  0.04944134  0.00000000  0.00004075  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.04944523 -0.00000000 -0.00000000 -0.00004045
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.08588350 -0.04865733  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.08559911 -0.00000001 -0.00000000  0.00000000 -0.00002310  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.04942313  0.00000001  0.00000000  0.00000000 -0.00004067  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000101  0.99967657 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00303091 -0.00000000 -0.00000000 -0.00000499
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00021651  0.00321499  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00255016 -0.00000000 -0.00000016 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00195902 -0.00000000 -0.00000976 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00107559 -0.00000000 -0.00000000 -0.00000658
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00282780  0.00059062  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00254813  0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.01631309 -0.02882510 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.02870142  0.00000000  0.00000000  0.01798011
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000 -0.00000000 -0.00000003

 23  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.02870478 -0.00000000  0.01798423  0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00082956 -0.09869705 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.04944380 -0.00000001 -0.00000000  0.00000000 -0.00004100  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.04944380  0.00000000 -0.00004100 -0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000000  0.00000000  0.00004726

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000033  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.09884949 -0.00000000  0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000152
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.99967666

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00025946  0.00000000  0.00000000 -0.00000000  0.00000484 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00025951 -0.00000000  0.00000483  0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002145 -0.00255207 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00349513 -0.00002938 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00320251  0.00000000  0.00000000 -0.00000000  0.00000677 -0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00320252 -0.00000000  0.00000676  0.00000000 -0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00254186 -0.00000000  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.02870202 -0.00000000 -0.01798076 -0.00000002  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02870202  0.00000000  0.00000000  0.00000002 -0.01798076  0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.03311608  0.00027835  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.04944137 -0.00000001 -0.00000000 -0.00000000  0.00004076 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.08505350 -0.05009410 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.04944518 -0.00000000 -0.00000000 -0.00004046

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.08559944  0.00000000 -0.00002310 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.04942252  0.00000000  0.00004067  0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000  0.99967657  0.00000101 -0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00027043  0.00321089  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00303087 -0.00000000 -0.00000000 -0.00000499

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00255015  0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00195904 -0.00000000 -0.00000000 -0.00000000  0.00000976 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00283736  0.00054307 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00107567 -0.00000000 -0.00000000 -0.00000658

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00254815  0.00000000  0.00000012  0.00000000  0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02870142  0.00000000  0.00000000  0.01798011

 54  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01679531 -0.02854683 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.02870477 -0.00000000 -0.00000000  0.00000002 -0.01798423  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00272899 -0.03493230  0.00000000  0.00000000 -0.00000188 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000064 -0.00000406  0.00235598 -0.00000000  0.00450885  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000034 -0.00000215 -0.00446310  0.00000000  0.00238008 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00499828 -0.00000000  0.00000127
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00499306  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000114  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00499828 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99752745  0.07027744 -0.00000001  0.00000000  0.00000411  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00068581 -0.00000006
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00069249 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000015  0.00000072  0.00068898 -0.00000000  0.00119147  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00119332  0.00000000 -0.00066631
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00068728 -0.00000000 -0.00128585
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000106  0.00000000 -0.00005839
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.58272468  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00013263  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00001290 -0.00016633  0.60852585 -0.00000000 -0.04541806  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000023  0.48815762  0.00003438
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000015

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000018  0.37792725 -0.00002483
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000011

 18  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.20387493 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00004640 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00001495 -0.00019326  0.10297146  0.00000000 -0.53267286 -0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.48786334  0.00000023 -0.03783982
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 21  1    14    1  |1 1>+      -0.04054245  0.57557022  0.00110356  0.00000000 -0.00066377  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00093843 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00090907  0.00000009
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00000000  0.00137685 -0.00000000 -0.00000084  0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00069409  0.00000000  0.00076582

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00069410  0.00000005

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000031 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00137349  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000018
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.05209582  0.00000002  0.70188902

 31  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000019
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.05210935  0.00004400

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000005 -0.48780554  0.00000000  0.00029972 -0.00000000 -0.00000000 -0.00000001

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00002194 -0.00036741  0.00040087 -0.00000000  0.65464725  0.00000000  0.00000002  0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.61491407  0.00000029 -0.22149256

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000006
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000029  0.61491281 -0.00001390

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00011097 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.48754954  0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00081738 -0.00000009

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00081752 -0.00000000 -0.00148409

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.04054825  0.57556789  0.00000078 -0.00000000  0.00135959  0.00000000  0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00068580  0.00000000 -0.00090710

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000017 -0.00000072  0.00068752  0.00000000 -0.00119230  0.00000000 -0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00069249  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00119332 -0.00000004

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00068727  0.00000008

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000107 -0.00000000

 46  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001289  0.00016640  0.60857860 -0.00000000  0.04466415  0.00000000  0.00000000 -0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00013263  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.58272003 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000014
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.48815508  0.00000023  0.54811687

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.37793037 -0.00000018  0.39550105

 50  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001497  0.00019345  0.10363444 -0.00000000  0.53254789  0.00000000  0.00000001  0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00004641 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.20388770  0.00000000 -0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000023 -0.48786336  0.00000235

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00093793  0.00000000 -0.00000000  0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.04054246 -0.57557022  0.00110439 -0.00000000  0.00066239  0.00000000  0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00090876  0.00000000 -0.00144684


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000240 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000450  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00001283 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000106
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00001078 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000127 -0.00000000  0.00000000 -0.00001285 -0.00000000  0.00000000 -0.00000107  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00090640 -0.00000000  0.00000000 -0.00102044  0.00000000  0.00000000 -0.00108875  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00083221 -0.00108606 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002855 -0.00000603 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00109008  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000004 -0.00000000 -0.00099055 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00061389
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000008 -0.00000000  0.00046026  0.00000000  0.00000000 -0.00000000  0.00000000  0.00108262
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00001918 -0.00000000 -0.00000000 -0.00000000  0.00000007  0.02543111
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.06069017 -0.39023017  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00208201 -0.00216667 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.31376254 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.54823653  0.00000000  0.00000006 -0.18051404  0.00000000 -0.00000000  0.00153227 -0.00000000
                               -0.00000015  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.39590116 -0.00000000 -0.00000019  0.58586803 -0.00000000  0.00000000 -0.00072277  0.00000000
                                0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.70537045 -0.42307580  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02419814 -0.00234903  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.48444770  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000237  0.00000000  0.57596976  0.00000019  0.00000000  0.00000000  0.00000000  0.00039033
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00003488 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00264449 -0.00011307  0.00000001 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00009072 -0.00000063  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00145214 -0.00000000  0.00000000 -0.00039190 -0.00000000 -0.00000000 -0.70686930  0.00000185
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001

 24  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00108850 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005  0.00000000  0.00113578  0.00000000  0.00000000  0.00000000  0.00000000  0.00108956

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00076658  0.00000000  0.00000000 -0.00113527  0.00000000 -0.00000000  0.00108957 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004984  0.00000002 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00145276 -0.00000412  0.00000000 -0.00000000

 28  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000604  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000309 -0.00108814 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000360 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00010500  0.00000029 -0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00004402  0.00000001 -0.50287902 -0.00000017 -0.00000000 -0.00000000  0.00000000  0.00097668

 31  1     8    1  |1 0>        0.00000019 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70154375  0.00000001 -0.00000017  0.50335799 -0.00000000 -0.00000000  0.00098000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.57768777 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000190 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001389 -0.00000000 -0.19771948 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00126923

 35  1    12    1  |1 0>       -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.22164156 -0.00000000 -0.00000007  0.19755865 -0.00000000  0.00000000 -0.00127150  0.00000000

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005617 -0.00320765 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00163749  0.57771853 -0.00000000  0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001
                               -0.00148950  0.00000000 -0.00000000  0.00057453  0.00000000  0.00000000  0.70688013 -0.00000185

 38  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000009 -0.00000000 -0.00057310 -0.00000000 -0.00000000 -0.00000000  0.00000185  0.70688016

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000006 -0.00000000  0.00101982  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00108875

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00109008  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002876 -0.00000600  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00083836  0.00108133 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00066699 -0.00000000 -0.00000000  0.00099010 -0.00000000  0.00000000  0.00061388 -0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00128555  0.00000000 -0.00000000  0.00046112 -0.00000000 -0.00000000 -0.00108263  0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00005859  0.00000000 -0.00000000  0.00001923  0.00000000  0.00000000  0.02543111 -0.00000007

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.31377349 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00200662 -0.00216860  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.05849253  0.39057772 -0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000015 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00003438  0.00000001  0.18088875  0.00000006  0.00000000  0.00000000  0.00000000  0.00152800

 49  1    10    1  |1 1>-       0.00000011 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002481  0.00000000  0.58613462  0.00000019  0.00000000  0.00000000  0.00000000  0.00071772

 50  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.48444089  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.02411543 -0.00237117 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.70295959  0.42706351  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.03745033  0.00000000 -0.00000019  0.57599534 -0.00000000  0.00000000 -0.00039178  0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00009074 -0.00000055 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00264511  0.00009848  0.00000001 -0.00000002

 54  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00003503  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000009 -0.00000000 -0.00039062 -0.00000000 -0.00000000 -0.00000000  0.00000185  0.70686931


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000207 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000451 -0.00000000 -0.00000000 -0.00000000  0.00001769  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000238  0.00000000  0.00000000  0.00000000 -0.00003358  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000593 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00001366 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000593  0.00000000  0.00000000  0.00000193
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000120  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000564 -0.00000000 -0.00000000  0.00000641
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00108921 -0.00000000  0.00000356  0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                                0.00000132 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000346  0.00000000  0.00000000  0.00000000 -0.00000366 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000037 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000684  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000361 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00014375  0.00000000  0.70460756 -0.00000000 -0.00000000  0.00000000 -0.08931547  0.00000000
                                0.00000017 -0.00000000 -0.00000617 -0.00000000 -0.00000000  0.00000000  0.00068349 -0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.70125783  0.00000000  0.00000000 -0.00000000  0.17667596 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000179  0.64138751  0.00000000  0.00000000 -0.13101534
                                0.00000000 -0.00000000  0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000027  0.09512272  0.00000000 -0.00000000 -0.59003152
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

 18  1    11    1  |1 1>+       0.00266901 -0.00000000 -0.05972828  0.00000000 -0.00000000  0.00000000  0.52698085 -0.00000000
                               -0.00000324  0.00000000  0.00000052 -0.00000000  0.00000000 -0.00000000 -0.00403275  0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.01796549 -0.00000000 -0.00000000  0.00000000  0.50454659 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.56775959 -0.00000158 -0.00000000  0.00000000  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000002  0.00000000  0.00000000  0.00000001

 21  1    14    1  |1 1>+      -0.00000000 -0.00015926  0.00000000  0.00000000 -0.00000000  0.00000252 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.70687119  0.00000000  0.00036867 -0.00000000 -0.00000000  0.00000000 -0.00001250  0.00000000
                               -0.00085721 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010 -0.00000000

 23  1    16    1  |1 1>+       0.00000001  0.00000000  0.00000000 -0.00000000  0.00020843  0.00000000 -0.00000000 -0.00060646
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000501 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000262  0.00000000  0.00000000  0.00000000  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000261  0.00000000  0.00000000 -0.00000253

 27  1     4    1  |1 0>        0.00000152 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00125446  0.00000000 -0.00000363 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000751 -0.00000000

 29  1     6    1  |1 0>       -0.00003084 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02542758 -0.00000000 -0.00000701  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000002 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.50139357 -0.00000140 -0.00000000  0.00000000  0.00000000

 31  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000140 -0.50140839  0.00000000 -0.00000000 -0.01837618

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00001588 -0.00000000 -0.00000000 -0.00000000  0.65445707 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.12576268 -0.00000000  0.00000000  0.00000000 -0.00011396 -0.00000000  0.00000001

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.07503427 -0.00000021 -0.00000000 -0.00000001 -0.00000011

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000021 -0.07451260 -0.00000000  0.00000000  0.72674805

 36  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00500930 -0.00000000
                               -0.00000011 -0.00000000 -0.00013702  0.00000000 -0.00000000  0.00000000  0.65459172 -0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00020858 -0.00000000  0.00000000  0.00058721

 38  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000002 -0.00000000 -0.00000000 -0.00020907 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00017910  0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000564  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000347  0.00000000  0.00000000 -0.00000000 -0.00000367  0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000132  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00108921  0.00000000  0.00000356  0.00000000 -0.00000000 -0.00000000 -0.00000011  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000774

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000684 -0.00000000 -0.00000000  0.00000564

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000361 -0.00000000  0.00000000  0.00001083

 46  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.70126609 -0.00000000 -0.00000000  0.00000000  0.17660545  0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000018  0.00000000  0.00000617  0.00000000 -0.00000000 -0.00000000  0.00068566  0.00000000
                               -0.00014436  0.00000000  0.70456895 -0.00000000 -0.00000000  0.00000000  0.08959870  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000002  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.64147885  0.00000179  0.00000000  0.00000000  0.00000002

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.09554156 -0.00000027 -0.00000000 -0.00000001 -0.00000009

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.01800637 -0.00000000 -0.00000000 -0.00000000  0.50469277 -0.00000000 -0.00000000

 51  1    12    1  |1 1>-       0.00000324  0.00000000 -0.00000052 -0.00000000  0.00000000 -0.00000000 -0.00403296  0.00000000
                                0.00266908  0.00000000 -0.05952331 -0.00000000  0.00000000 -0.00000000 -0.52700770  0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000158  0.56798868 -0.00000000  0.00000000  0.32587828

 53  1    14    1  |1 1>-       0.00085721  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000
                                0.70687117  0.00000000  0.00036855 -0.00000000 -0.00000000  0.00000000  0.00001289  0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00015941 -0.00000000 -0.00000000  0.00000000  0.00000278  0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000002 -0.00000000 -0.00000000 -0.00020889 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>        0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000034  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000972 -0.01920258 -0.00000000 -0.03630035 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000512  0.03631119 -0.00000000 -0.01919688 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000193 -0.00000000  0.00000000  0.00000000 -0.00000000  0.04109797 -0.00000011
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.04109585  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00005929 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011  0.04109798
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000187 -0.00000000 -0.00000000  0.00000486  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066749
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00066615  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000379  0.00066827  0.00000000  0.00115538  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000774 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00114970 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000564 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00066539  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00001083 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000264 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00059466  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000086 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.07872598 -0.00080967  0.00000000  0.00005555  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00053233
                                0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000009  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00029066
                                0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000001  0.00000000  0.00000000  0.00028260 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.46482982 -0.00016387  0.00000000  0.00076380  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.32627749 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00056479  0.00000000
                                0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00024286  0.70595288 -0.00000000 -0.40886288 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.70650728  0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00101931 -0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000197  0.70651344
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00133632 -0.00000000 -0.00000182 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000253 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00066712 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066713

 27  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000192 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00133079 -0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01874428  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000672  0.00000000

 31  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000668

 32  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00010332  0.00068818 -0.00000000 -0.00000090 -0.00000000 -0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.74539038 -0.00000121 -0.00000000 -0.00095492 -0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.72669501  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00060389  0.00000000

 35  1    12    1  |1 0>        0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000011 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00060403

 36  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000093  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00064585  0.00000000  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000197  0.70650266

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00058733  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.70650265  0.00000197

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00025639  0.00110974  0.00000001  0.81580597  0.00000001 -0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000641  0.00000000  0.00000000  0.00000000 -0.00000000  0.00066749 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000379  0.00066513 -0.00000000 -0.00115719 -0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000096 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00066615 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00114970

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00066538

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000264

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.07879058 -0.00080994 -0.00000000 -0.00005323  0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000086 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00059477 -0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.13056072 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00053229  0.00000000

 49  1    10    1  |1 1>-       0.00000016  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.58996542  0.00000000  0.00000000  0.00000000 -0.00000000  0.00029076 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.46467245 -0.00016601 -0.00000000 -0.00076351 -0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00028260  0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00056490

 53  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00101931 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.70650730 -0.00000001 -0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00024296  0.70706262  0.00000000  0.40694076  0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00060640  0.00000000  0.00000000  0.00000000 -0.00000001  0.70651345 -0.00000197



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.88%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.32%    1.14%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.14%    0.32%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.46%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.46%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.43%
  9  1     2    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.42%   49.28%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.00%    0.00%    0.00%   49.26%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.98%    0.00%    0.00%   16.42%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.69%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.43%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.43%
 27  1     4    1  |1 0>          0.00%   39.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 39  1    16    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.43%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.43%   49.26%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   49.26%
 44  1     5    1  |1 1>-         0.00%    0.00%   29.98%    0.00%    0.00%    0.00%    0.00%   16.42%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          1.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    5.03%    0.00%    0.00%   48.29%    0.00%    0.00%
  9  1     2    1  |1 1>+        16.43%   19.98%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   28.53%    0.00%    0.00%   11.48%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   28.41%    0.00%    0.00%   24.94%    0.00%
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
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   38.02%    0.00%    0.00%   15.30%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   38.03%    0.00%    0.00%   15.29%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.68%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
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
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    5.04%    0.00%    0.00%   48.28%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 42  1     3    1  |1 1>-        16.43%   20.00%    0.00%    0.00%   33.32%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%   28.54%    0.00%    0.00%   11.47%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%   28.40%    0.00%    0.00%   24.96%    0.00%    0.00%
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
  2  1     2    1  |0 0>         77.66%   20.71%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         20.71%   77.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   98.37%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.37%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.37%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.74%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.73%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.94%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.03%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.03%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.08%    0.00%    0.03%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.98%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.94%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.03%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.03%    0.00%
 39  1    16    1  |1 0>          0.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.72%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.73%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.94%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.03%
 54  1    15    1  |1 1>-         0.03%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.03%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         99.51%    0.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   33.96%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%   37.03%    0.00%    0.21%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    4.16%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    1.06%    0.00%   28.37%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.80%    0.00%    0.14%
 21  1    14    1  |1 1>+         0.16%   33.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.00%   49.26%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%   42.86%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   37.81%    0.00%    4.91%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.81%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%   23.77%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.16%   33.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%   37.04%    0.00%    0.20%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%   33.96%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%   30.04%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%   15.64%
 50  1    11    1  |1 1>-         0.00%    0.00%    1.07%    0.00%   28.36%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    4.16%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.80%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.16%   33.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%   15.23%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    9.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+        30.06%    0.00%    0.00%    3.26%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+        15.67%    0.00%    0.00%   34.32%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.81%   17.90%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   23.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%   33.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%   25.29%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>         49.22%    0.00%    0.00%   25.34%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    3.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          4.91%    0.00%    0.00%    3.90%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
 46  1     7    1  |1 1>-         0.00%    9.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.34%   15.26%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    3.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%   34.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%   23.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.47%   18.24%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.14%    0.00%    0.00%   33.18%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%

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
 14  1     7    1  |1 1>+         0.00%    0.00%   49.65%    0.00%    0.00%    0.00%    0.80%    0.00%
 15  1     8    1  |1 1>+         0.00%   49.18%    0.00%    0.00%    0.00%    3.12%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   41.14%    0.00%    0.00%    1.72%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.90%    0.00%    0.00%   34.81%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.36%    0.00%    0.00%    0.00%   27.77%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%   25.46%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   32.24%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+        49.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%   25.14%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.14%    0.00%    0.00%    0.03%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    1.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.56%    0.00%    0.00%   52.82%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%   49.18%    0.00%    0.00%    0.00%    3.12%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%   49.64%    0.00%    0.00%    0.00%    0.80%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%   41.15%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.91%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.35%    0.00%    0.00%    0.00%   27.78%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   32.26%    0.00%    0.00%   10.62%
 53  1    14    1  |1 1>-        49.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.04%    0.00%    0.13%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.13%    0.00%    0.04%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   21.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+        10.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%   49.84%    0.00%   16.72%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%   49.92%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.92%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%   55.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>         52.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.91%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.55%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         1.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-        34.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%   21.59%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%   49.92%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%   49.99%    0.00%   16.56%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   49.92%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      598.17       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     30544.29  18996.25    314.62   9448.14   1762.25      8.11      0.41     14.29
 REAL TIME  *     30775.77 SEC
 DISK USED  *       757.11 MB (local),        5.47 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24984.988554528132

              CI              CI           MULTI         RHF-SCF
 -24984.96718393 -24984.98779148 -24984.64716507 -24984.45070732
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
