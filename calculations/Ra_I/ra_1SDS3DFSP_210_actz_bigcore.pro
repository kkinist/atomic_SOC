
 Working directory              : /wrk/irikura/molpro.xO7zNEvila/
 Global scratch directory       : /wrk/irikura/molpro.xO7zNEvila/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xO7zNEvila/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ra SO-CI
                                                                                 ! even larger core [20 19], to match ECP
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
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
 
 core,20,19
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
  (64 PROC) 64 bit mpp version                                                           DATE: 13-May-24          TIME: 09:25:51  
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

     37.487 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 4.194 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2626485.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2626485      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    36081304. AND WROTE      538463. INTEGRALS IN      2 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.18 SEC
 SORT2 READ     3260452. AND WROTE    15753876. INTEGRALS IN    120 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC

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
 CPU TIMES  *        14.53     14.35
 REAL TIME  *        17.51 SEC
 DISK USED  *        30.49 MB (local),      249.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  21  23

 NELEC=   88   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24984.29449825  -24984.29449825     0.00D+00     0.73D+00     0     0       0.02      0.04    start
   2   -24984.38775570      -0.09325745     0.63D-02     0.19D+00     1     0       0.01      0.05    diag
   3   -24984.39998493      -0.01222923     0.28D-02     0.82D-01     2     0       0.02      0.07    diag
   4   -24984.41003965      -0.01005472     0.91D-03     0.98D-01     3     0       0.02      0.09    diag
   5   -24984.41791696      -0.00787731     0.71D-03     0.52D-01     4     0       0.01      0.10    diag
   6   -24984.40358598       0.01433097     0.79D-03     0.67D-01     5     0       0.02      0.12    diag
   7   -24984.40997326      -0.00638727     0.55D-03     0.11D+00     6     0       0.01      0.13    diag
   8   -24984.41146894      -0.00149568     0.53D-03     0.17D-01     7     0       0.02      0.15    fixocc
   9   -24984.42656859      -0.01509965     0.53D-03     0.11D+00     8     0       0.01      0.16    diag
  10   -24984.45001344      -0.02344485     0.50D-03     0.14D+00     9     0       0.02      0.18    diag/orth
  11   -24984.44742675       0.00258668     0.21D-03     0.36D-01     9     0       0.01      0.19    diag
  12   -24984.45063458      -0.00320783     0.23D-03     0.29D-01     9     0       0.02      0.21    diag
  13   -24984.45063396       0.00000062     0.69D-04     0.61D-02     9     0       0.01      0.22    diag
  14   -24984.45062820       0.00000577     0.44D-04     0.16D-02     9     0       0.02      0.24    diag
  15   -24984.45064760      -0.00001940     0.25D-04     0.11D-02     9     0       0.01      0.25    diag
  16   -24984.45066461      -0.00001702     0.20D-04     0.10D-02     9     0       0.02      0.27    diag
  17   -24984.45069590      -0.00003129     0.17D-04     0.79D-03     9     0       0.02      0.29    diag
  18   -24984.45070477      -0.00000887     0.12D-04     0.54D-03     9     0       0.01      0.30    diag
  19   -24984.45070686      -0.00000210     0.64D-05     0.27D-03     9     0       0.02      0.32    diag
  20   -24984.45070732      -0.00000045     0.36D-05     0.17D-03     9     0       0.01      0.33    diag/orth
  21   -24984.45070732      -0.00000001     0.64D-06     0.91D-05     9     0       0.01      0.34    diag
  22   -24984.45070732      -0.00000000     0.16D-06     0.15D-04     9     0       0.02      0.36    diag
  23   -24984.45070732      -0.00000000     0.43D-07     0.47D-05     9     0       0.01      0.37    diag
  24   -24984.45070732      -0.00000000     0.24D-07     0.23D-05     9     0       0.02      0.39    diag
  25   -24984.45070732       0.00000000     0.20D-07     0.24D-06     0     0       0.01      0.40    diag

 Final occupancy:  21  23

 !RHF STATE 1.1 Energy               -24984.4507073216    
  RHF One-electron energy            -33978.0845091992    
  RHF Two-electron energy            8993.633801877590
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
 CPU TIMES  *        14.94      0.41     14.35
 REAL TIME  *        17.94 SEC
 DISK USED  *        31.30 MB (local),      254.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

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
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.270D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.333D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.333D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.407D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.390D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.414D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.414D-04 HAS BEEN REMOVED
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
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.511D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.511D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.415D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.416D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.351D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.251D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.438D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.205D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.301D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.262D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.356D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.286D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.330D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.617D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.562D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.492D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 3 1 3 2 1 6   5 4 810 9 7 3 2 1 2   3 1 1 3 2 1 3 2 3 2   6 5 1 8 410 9 1 3 2
                                        5 6 1 4 810 9 7 6 5   8 4 910 7 3 2 1 6 5   8 4 910 7 2 3 7

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  2100  ( 213 closed/active, 1555 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    2890
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    1 -24984.67068233  -24984.68586163   -0.01517929    0.11889568 0.00092274 0.00000000  0.11E+01      2.45
   2    9   14    0 -24984.68659099  -24984.68668442   -0.00009342    0.00360776 0.00000173 0.00000000  0.72E-01      5.37
   3   15   20    0 -24984.68668504  -24984.68668505   -0.00000001    0.00003550 0.00000000 0.00000000  0.68E-03      8.55
   4    2    4    0 -24984.68668505  -24984.68668505   -0.00000000    0.00000001 0.00000001 0.00000000  0.71E-07     10.17

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-08)
                       Final energy: -24984.68668505
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7924558694    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.55019091
 One electron energy                        -33998.81845960
 Two electron energy                          9014.02600373
 Virial ratio                                    1.57455390
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -24984.7112819448    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630865
 Two electron energy                          9015.07502670
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -24984.7112819448    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630866
 Two electron energy                          9015.07502672
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -24984.7112819448    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723469
 One electron energy                        -33999.78630872
 Two electron energy                          9015.07502677
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -24984.7112819448    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630868
 Two electron energy                          9015.07502674
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -24984.7112819448    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630865
 Two electron energy                          9015.07502671
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -24984.6700101955    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.03132606
 One electron energy                        -33990.18956768
 Two electron energy                          9005.51955749
 Virial ratio                                    1.57455794
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.7208289373    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903326
 Two electron energy                          9016.38820433
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.7208289373    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896645
 One electron energy                        -34001.10903320
 Two electron energy                          9016.38820426
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.7208289372    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896645
 One electron energy                        -34001.10903322
 Two electron energy                          9016.38820428
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.7208289372    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896645
 One electron energy                        -34001.10903317
 Two electron energy                          9016.38820423
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.7208289372    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896645
 One electron energy                        -34001.10903319
 Two electron energy                          9016.38820425
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.6771690496    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.79387325
 One electron energy                        -33987.89724466
 Two electron energy                          9003.22007561
 Virial ratio                                    1.57456124
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.6528629581    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699297
 One electron energy                        -33997.73293696
 Two electron energy                          9013.08007400
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.6528629581    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699297
 One electron energy                        -33997.73293696
 Two electron energy                          9013.08007400
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.6528629581    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699297
 One electron energy                        -33997.73293694
 Two electron energy                          9013.08007398
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.6478539619    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769705
 One electron energy                        -34002.92471138
 Two electron energy                          9018.27685742
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.6478539619    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769705
 One electron energy                        -34002.92471139
 Two electron energy                          9018.27685743
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.6478539619    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769705
 One electron energy                        -34002.92471141
 Two electron energy                          9018.27685744
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.6478539618    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769704
 One electron energy                        -34002.92471135
 Two electron energy                          9018.27685739
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.6478539618    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769704
 One electron energy                        -34002.92471133
 Two electron energy                          9018.27685737
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.6478539618    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769704
 One electron energy                        -34002.92471133
 Two electron energy                          9018.27685737
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy             -24984.6478539618    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769705
 One electron energy                        -34002.92471136
 Two electron energy                          9018.27685740
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999992835216
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.778500989358
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000003424426
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999907435
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.221509234737
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000661792
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.908146380702
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000161654
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999998982638
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.091851201800
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999320377
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000002447731
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999998232639
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     2.740312022757
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.798971079195
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.655050224234
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     6.344799632472
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     4.000140070323
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     3.201047951850
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     7.259681014402
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000004950522
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.903014385676
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000714479951
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999300340041
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.096955611918
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000132862
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.094758211789
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999444665
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000001020491
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.905243963112
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999997579564
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999998233125
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000004190667
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.684580826760
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     2.503645880459
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.353083817381
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     5.646969850929
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     3.999943920311
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     7.496338750550
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     3.315428812359
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000002214261
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.318484624966
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999282095622
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000699752524
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.681535153345
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999205347
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.997095407509
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000393681
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999996872
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.002904835089
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000003100059
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999319145
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999997576695
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     8.575107150483
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     8.697383040346
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.991865958385
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.008230516599
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     3.999916009366
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.302613297599
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.424890173239
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 5 6 3 1 4   2 5 6 3 1 4 2 5 6 3   1 1 5 6 4 2 3 1 2 5   4 3 6 1 4 5 6 2 3 1
                                        2 4 5 6 3 1 4 6 3 5   2 4 6 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 3 1 2 6   4 810 7 9 5 3 1 2 3   1 2 2 3 1 1 2 3 1 2   310 4 6 5 8 7 9 1 2
                                        310 4 5 6 7 9 8 6 4   8 510 7 9 1 2 3 6 4   8 510 7 9 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.20352     1  1  s    1.00000
    2.1     2.00000  -712.75286     1  2  s    1.00000
    3.1     2.00000  -179.76261     1  3  s    1.00000
    4.1     2.00000  -118.09970     1  1  d1+  1.00000
    5.1     2.00000  -118.09970     1  1  d0   1.00000
    6.1     2.00000  -118.09970     1  1  d2+  1.00000
    7.1     2.00000  -118.09970     1  1  d1-  1.00000
    8.1     2.00000  -118.09970     1  1  d2-  1.00000
    9.1     2.00000   -45.71553     1  4  s    1.00004
   10.1     2.00000   -23.67075     1  2  d1+  1.00000
   11.1     2.00000   -23.67075     1  2  d0   1.00000
   12.1     2.00000   -23.67075     1  2  d2+  1.00000
   13.1     2.00000   -23.67075     1  2  d1-  1.00000
   14.1     2.00000   -23.67075     1  2  d2-  1.00000
   15.1     2.00000   -10.01025     1  5  s    0.99844
   16.1     2.00000    -2.99029     1  3  d1+  1.00101
   17.1     2.00000    -2.99029     1  3  d0   1.00101
   18.1     2.00000    -2.99029     1  3  d2+  1.00101
   19.1     2.00000    -2.99029     1  3  d1-  1.00101
   20.1     2.00000    -2.99029     1  3  d2-  1.00101
   21.1     2.00000    -1.61693     1  6  s    0.98596
   22.1     0.56358    -0.05618     1  7  s    1.11034
   23.1     0.23442     0.04963     1  4  d2+  0.96009
   24.1     0.23442     0.04963     1  4  d1-  0.96009
   25.1     0.23442     0.04963     1  4  d1+  0.96009
   26.1     0.23442     0.04963     1  4  d0   0.96009
   27.1     0.23442     0.04963     1  4  d2-  0.96009
   28.1     0.08551     0.02628     1  7  s    0.98547    1 12  s    1.56798
    1.2     2.00000  -604.12713     1  1  pz   1.00000
    2.2     2.00000  -604.12713     1  1  px   1.00000
    3.2     2.00000  -604.12713     1  1  py   1.00000
    4.2     2.00000  -148.71556     1  2  px   1.00000
    5.2     2.00000  -148.71556     1  2  pz   1.00000
    6.2     2.00000  -148.71556     1  2  py   1.00000
    7.2     2.00000   -35.35383     1  3  pz   0.99999
    8.2     2.00000   -35.35383     1  3  px   0.99999
    9.2     2.00000   -35.35383     1  3  py   0.99999
   10.2     2.00000   -11.19767     1  1  f0   1.00000
   11.2     2.00000   -11.19767     1  1  f1+  1.00000
   12.2     2.00000   -11.19767     1  1  f2-  1.00000
   13.2     2.00000   -11.19767     1  1  f2+  1.00000
   14.2     2.00000   -11.19767     1  1  f3+  1.00000
   15.2     2.00000   -11.19767     1  1  f3-  1.00000
   16.2     2.00000   -11.19767     1  1  f1-  1.00000
   17.2     2.00000    -6.80151     1  4  pz   1.00022
   18.2     2.00000    -6.80151     1  4  px   1.00022
   19.2     2.00000    -6.80151     1  4  py   1.00022
   20.2     2.00000    -0.80572     1  5  pz   0.99368
   21.2     2.00000    -0.80572     1  5  px   0.99368
   22.2     2.00000    -0.80572     1  5  py   0.99368
   23.2     0.05960     0.04381     1  6  py   0.96757
   24.2     0.05960     0.04381     1  6  pz   0.96757
   25.2     0.05960     0.04381     1  6  px   0.96757
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96585470     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.02212663
 b00000a 000      0.00830483      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.67765913
 a00000b 000     -0.00830483     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.67765913
 b0a0000 000     -0.00000000     -0.64629988      0.00099270      0.00081219      0.00005938     -0.00027442     -0.00000000
 a0b0000 000      0.00000000      0.64629988     -0.00099270     -0.00081219     -0.00005938      0.00027442      0.00000000
 a00b000 000      0.00000000      0.00007165     -0.00005185      0.00989612      0.64622541      0.00019883     -0.00000000
 b00a000 000     -0.00000000     -0.00007165      0.00005185     -0.00989612     -0.64622541     -0.00019883      0.00000000
 b0000a0 000      0.00000000     -0.00081278     -0.00076372     -0.64622371      0.00989582      0.00099983     -0.00000000
 a0000b0 000     -0.00000000      0.00081278      0.00076372      0.64622371     -0.00989582     -0.00099983      0.00000000
 ab00000 000      0.00000000      0.00001776      0.18236596      0.00074090     -0.00018748      0.62003817     -0.00000000
 ba00000 000     -0.00000000     -0.00001776     -0.18236596     -0.00074090      0.00018748     -0.62003817      0.00000000
 a000b00 000      0.00000000      0.00102852      0.62003737     -0.00101437      0.00012128     -0.18236451      0.00000000
 b000a00 000     -0.00000000     -0.00102852     -0.62003737      0.00101437     -0.00012128      0.18236451     -0.00000000
 0000000 002     -0.13463902     -0.00021483     -0.06549201      0.00049471     -0.00009603      0.27049901      0.07712175
 0000000 020     -0.13463902      0.00044291      0.26700504     -0.00043681      0.00005223     -0.07853114      0.07712174
 0000000 ba0     -0.00000000     -0.24102733      0.00037021      0.00030289      0.00002215     -0.00010234     -0.00000000
 0000000 ab0      0.00000000      0.24102733     -0.00037021     -0.00030289     -0.00002215      0.00010234      0.00000000
 0000000 0ba     -0.00000000     -0.00002672      0.00001934     -0.00369060     -0.24099956     -0.00007415     -0.00000000
 0000000 0ab      0.00000000      0.00002672     -0.00001934      0.00369060      0.24099956      0.00007415      0.00000000
 0000000 a0b     -0.00000000      0.00030311      0.00028482      0.24099893     -0.00369049     -0.00037287      0.00000000
 0000000 b0a      0.00000000     -0.00030311     -0.00028482     -0.24099893      0.00369049      0.00037287     -0.00000000
 0000000 200     -0.13463902     -0.00022808     -0.20151303     -0.00005790      0.00004381     -0.19196787      0.07712174
 0000002 000     -0.01619673     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.13889158
 0000ab0 000      0.00000000     -0.00014508     -0.00013632     -0.11534796      0.00176636      0.00017847     -0.00000000
 0000ba0 000     -0.00000000      0.00014508      0.00013632      0.11534796     -0.00176636     -0.00017847      0.00000000
 0020000 000     -0.04968185      0.00008905      0.02714650     -0.00020506      0.00003981     -0.11212207     -0.09373628
 0a00b00 000      0.00000000     -0.00000317     -0.03255148     -0.00013225      0.00003347     -0.11067396      0.00000000
 0b00a00 000     -0.00000000      0.00000317      0.03255148      0.00013225     -0.00003347      0.11067396     -0.00000000
 0000200 000     -0.04968185      0.00018359      0.11067382     -0.00018106      0.00002165     -0.03255123     -0.09373628
 0000020 000     -0.04968185     -0.00018359     -0.11067382      0.00018106     -0.00002165      0.03255123     -0.09373628
 0200000 000     -0.04968185     -0.00018359     -0.11067382      0.00018106     -0.00002165      0.03255123     -0.09373628
 000a0b0 000      0.00000000      0.09990603     -0.00015345     -0.00012555     -0.00000918      0.00004242     -0.00000000
 000b0a0 000     -0.00000000     -0.09990603      0.00015345      0.00012555      0.00000918     -0.00004242      0.00000000
 0ba0000 000      0.00000000      0.09990603     -0.00015345     -0.00012555     -0.00000918      0.00004242     -0.00000000
 0ab0000 000     -0.00000000     -0.09990603      0.00015345      0.00012555      0.00000918     -0.00004242      0.00000000
 00b00a0 000      0.00000000     -0.00001108      0.00000802     -0.00152976     -0.09989452     -0.00003073      0.00000000
 00a00b0 000     -0.00000000      0.00001108     -0.00000802      0.00152976      0.09989452      0.00003073     -0.00000000
 0b0a000 000     -0.00000000     -0.00001108      0.00000802     -0.00152976     -0.09989452     -0.00003073      0.00000000
 0a0b000 000      0.00000000      0.00001108     -0.00000802      0.00152976      0.09989452      0.00003073     -0.00000000
 00ba000 000      0.00000000     -0.00012564     -0.00011806     -0.09989426      0.00152971      0.00015456      0.00000000
 00ab000 000     -0.00000000      0.00012564      0.00011806      0.09989426     -0.00152971     -0.00015456     -0.00000000
 0002000 000     -0.04968185      0.00009454      0.08352732      0.00002400     -0.00001816      0.07957085     -0.09373628
 00a0b00 000     -0.00000000      0.05768078     -0.00008860     -0.00007249     -0.00000530      0.00002449     -0.00000000
 00b0a00 000      0.00000000     -0.05768078      0.00008860      0.00007249      0.00000530     -0.00002449      0.00000000
 000ba00 000      0.00000000     -0.00000639      0.00000463     -0.00088321     -0.05767413     -0.00001774      0.00000000
 000ab00 000     -0.00000000      0.00000639     -0.00000463      0.00088321      0.05767413      0.00001774     -0.00000000
 
 Energy:     -24984.79245587 -24984.71128194 -24984.71128194 -24984.71128194 -24984.71128194 -24984.71128194 -24984.67001020
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      1.00000000      0.00000000
 a00a000 000      0.00020052     -0.00029856      0.99999881     -0.00020573     -0.00003953     -0.00000000      0.00000000
 a0a0000 000      0.00047399     -0.00026713      0.00020552      0.99999826     -0.00097523      0.00000000     -0.00000000
 a0000a0 000      0.99999778     -0.00140362     -0.00020104     -0.00047436     -0.00003485      0.00000000      0.00000000
 0a00a00 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a000a00 000     -0.00000251     -0.02694487      0.00003167      0.00096768      0.99963535      0.00000000      0.00000000
 aa00000 000      0.00140425      0.99963476      0.00029929      0.00029259      0.02694457      0.00000000     -0.00000000
 0000aa0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 00aa000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.32630519
 00a00a0 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00050766
 000a0a0 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00026900
 0a0a000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00050766
 0000000 aa0      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00056374
 0000000 a0a      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.68382857
 0000000 0aa     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00106389
 0aa0000 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00026900
 0a000a0 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.65261038
 00a0a00 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00046593
 000aa00 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00087929
 
 Energy:     -24984.72082894 -24984.72082894 -24984.72082894 -24984.72082894 -24984.72082894 -24984.67716905 -24984.65286296

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a00a000 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a0000a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0a00a00 000      0.00000000     -0.00000000     -0.00000866     -0.00045069     -0.00268972     -0.00463494      0.99998513
 a000a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000aa0 000      0.00000000     -0.00000000      0.00098256     -0.00009528      0.99897796      0.04509119      0.00289655
 00aa000 000      0.00026833      0.00050802     -0.00001081     -0.00103733     -0.04034220      0.89350711      0.00403217
 00a00a0 000      0.00043374     -0.32630502      0.81429722     -0.00184197     -0.00078037     -0.00021400     -0.00012711
 000a0a0 000      0.32630530      0.00043332      0.00181500      0.80012663     -0.00024274      0.00096997      0.00069828
 0a0a000 000     -0.00043374      0.32630502      0.56184291     -0.00198526     -0.00058942      0.00032875      0.00025004
 0000000 aa0      0.68382879      0.00090809      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 a0a     -0.00056233     -0.00106463      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0000000 0aa     -0.00090897      0.68382820      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0aa0000 000      0.32630530      0.00043332     -0.00198078     -0.58707605     -0.00048544     -0.00061250      0.00029422
 0a000a0 000     -0.00053666     -0.00101603     -0.00000541     -0.00051867     -0.02017110      0.44675356      0.00201608
 00a0a00 000     -0.56517735     -0.00075053     -0.00009571      0.12300481     -0.00042042      0.00020639      0.00057302
 000aa00 000     -0.00075125      0.56517686      0.14575456      0.00008273     -0.00011024     -0.00031335     -0.00021775
 
 Energy:     -24984.65286296 -24984.65286296 -24984.64785396 -24984.64785396 -24984.64785396 -24984.64785396 -24984.64785396

 State:               15              16
 a00000a 000     -0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000
 a0a0000 000      0.00000000      0.00000000
 a0000a0 000     -0.00000000      0.00000000
 0a00a00 000     -0.00083430     -0.00035372
 a000a00 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000     -0.00000000
 0000aa0 000      0.00067833      0.00003028
 00aa000 000     -0.00012230     -0.00045193
 00a00a0 000      0.00077065     -0.37002079
 000a0a0 000      0.39973976      0.00084346
 0a0a000 000     -0.00004733      0.69593683
 0000000 aa0     -0.00000001     -0.00000000
 0000000 a0a     -0.00000000     -0.00000000
 0000000 0aa      0.00000000     -0.00000001
 0aa0000 000      0.67478669     -0.00002993
 0a000a0 000     -0.00006115     -0.00022597
 00a0a00 000      0.62037815      0.00046969
 000aa00 000      0.00047226     -0.61543093
 
 Energy:     -24984.64785396 -24984.64785396
 


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
 CPU TIMES  *        22.88      7.94      0.41     14.35
 REAL TIME  *        29.69 SEC
 DISK USED  *       159.79 MB (local),        1.00 GB (total)
 SF USED    *       307.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -24984.79246    0.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.67001    0.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.67717    0.0
    -24984.65286    2.0
    -24984.65286    2.0
    -24984.65286    2.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 88
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          39 (  20  19 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.09 sec, npass=  1  Memory used:   1.07 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.79245587
     2    -24984.71128194
     3    -24984.71128194
     4    -24984.71128194
     5    -24984.71128194
     6    -24984.71128194
     7    -24984.67001020

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.48D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        230396
 Number of doubly external configurations:        251809
 Total number of contracted configurations:       490056
 Total number of uncontracted configurations:    1742052

 Diagonal Coupling coefficients finished.               Storage:   3217856 words, CPU-Time:      0.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    430319 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.79245587    -0.00000000    -0.16406327  0.32D-01  0.36D-01     1.07
    1     2     2     1.00000000     0.00000000-24984.71128194    -0.00000000    -0.16874458  0.37D-01  0.40D-01     1.07
    1     3     3     1.00000000     0.00000000-24984.71128194     0.00000000    -0.16858291  0.37D-01  0.40D-01     1.07
    1     4     4     1.00000000     0.00000000-24984.71128194     0.00000000    -0.16880468  0.38D-01  0.40D-01     1.07
    1     5     5     1.00000000     0.00000000-24984.71128194     0.00000000    -0.16877729  0.38D-01  0.40D-01     1.07
    1     6     6     1.00000000     0.00000000-24984.71128194     0.00000000    -0.16853260  0.37D-01  0.40D-01     1.07
    1     7     7     1.00000000     0.00000000-24984.67001020    -0.00000000    -0.16096566  0.39D-01  0.35D-01     1.07
    2     1     1     1.05999327    -0.16733054-24984.95978641    -0.16733054    -0.00386623  0.17D-02  0.54D-03     7.56
    2     2     2     1.06746029    -0.16704835-24984.87833030    -0.16704835    -0.00367483  0.17D-02  0.62D-03     7.56
    2     3     3     1.06740498    -0.16704169-24984.87832363    -0.16704169    -0.00367791  0.17D-02  0.62D-03     7.56
    2     4     4     1.06758664    -0.16701732-24984.87829926    -0.16701732    -0.00371737  0.17D-02  0.63D-03     7.56
    2     5     5     1.06753360    -0.16701721-24984.87829916    -0.16701721    -0.00371430  0.17D-02  0.63D-03     7.56
    2     6     6     1.06757741    -0.16701553-24984.87829747    -0.16701553    -0.00371805  0.17D-02  0.63D-03     7.56
    2     7     7     1.06605722    -0.16431516-24984.83432535    -0.16431516    -0.00377434  0.18D-02  0.62D-03     7.56
    3     1     1     1.06173421    -0.17132956-24984.96378543    -0.00399902    -0.00016091  0.68D-04  0.26D-04    14.03
    3     2     2     1.06872756    -0.17088232-24984.88216427    -0.00383397    -0.00016142  0.77D-04  0.33D-04    14.03
    3     3     3     1.06870608    -0.17088232-24984.88216426    -0.00384063    -0.00016055  0.77D-04  0.32D-04    14.03
    3     4     4     1.06873371    -0.17088230-24984.88216424    -0.00386498    -0.00016161  0.77D-04  0.33D-04    14.03
    3     5     5     1.06873412    -0.17088201-24984.88216395    -0.00386480    -0.00016186  0.77D-04  0.33D-04    14.03
    3     6     6     1.06868685    -0.17088189-24984.88216383    -0.00386636    -0.00016061  0.77D-04  0.32D-04    14.03
    3     7     7     1.06636526    -0.16816215-24984.83817235    -0.00384699    -0.00016311  0.78D-04  0.30D-04    14.03
    4     1     1     1.06284626    -0.17151559-24984.96397146    -0.00018603    -0.00001249  0.92D-05  0.15D-05    20.34
    4     2     2     1.07038244    -0.17107933-24984.88236127    -0.00019701    -0.00001746  0.18D-04  0.20D-05    20.34
    4     3     3     1.07038408    -0.17107932-24984.88236127    -0.00019701    -0.00001750  0.18D-04  0.20D-05    20.34
    4     4     4     1.07038381    -0.17107927-24984.88236121    -0.00019697    -0.00001752  0.18D-04  0.20D-05    20.34
    4     5     5     1.07038323    -0.17107925-24984.88236120    -0.00019724    -0.00001755  0.18D-04  0.20D-05    20.34
    4     6     6     1.07037590    -0.17107921-24984.88236116    -0.00019733    -0.00001754  0.18D-04  0.20D-05    20.34
    4     7     7     1.06787363    -0.16834565-24984.83835584    -0.00018350    -0.00001245  0.10D-04  0.17D-05    20.34
    5     1     1     1.06323768    -0.17153145-24984.96398732    -0.00001586    -0.00000095  0.53D-06  0.15D-06    26.50
    5     2     2     1.07104823    -0.17110367-24984.88238562    -0.00002434    -0.00000227  0.15D-05  0.34D-06    26.50
    5     3     3     1.07104803    -0.17110365-24984.88238560    -0.00002433    -0.00000228  0.16D-05  0.34D-06    26.50
    5     4     4     1.07104594    -0.17110361-24984.88238555    -0.00002434    -0.00000232  0.16D-05  0.35D-06    26.50
    5     5     5     1.07104643    -0.17110360-24984.88238555    -0.00002435    -0.00000232  0.16D-05  0.35D-06    26.50
    5     6     6     1.07104588    -0.17110360-24984.88238554    -0.00002438    -0.00000232  0.16D-05  0.35D-06    26.50
    5     7     7     1.06824907    -0.16836168-24984.83837187    -0.00001603    -0.00000130  0.10D-05  0.22D-06    26.50
    6     1     1     1.06327804    -0.17153253-24984.96398840    -0.00000108    -0.00000006  0.26D-07  0.13D-07    32.70
    6     2     2     1.07108973    -0.17110651-24984.88238845    -0.00000283    -0.00000026  0.17D-06  0.45D-07    32.70
    6     3     3     1.07109012    -0.17110650-24984.88238845    -0.00000285    -0.00000027  0.17D-06  0.45D-07    32.70
    6     4     4     1.07109011    -0.17110650-24984.88238844    -0.00000289    -0.00000027  0.18D-06  0.46D-07    32.70
    6     5     5     1.07109000    -0.17110650-24984.88238844    -0.00000289    -0.00000027  0.18D-06  0.46D-07    32.70
    6     6     6     1.07109045    -0.17110650-24984.88238844    -0.00000290    -0.00000027  0.18D-06  0.46D-07    32.70
    6     7     7     1.06829165    -0.16836329-24984.83837349    -0.00000162    -0.00000015  0.90D-07  0.37D-07    32.70
    7     1     1     1.06329150    -0.17153260-24984.96398847    -0.00000007    -0.00000001  0.32D-08  0.89D-09    38.87
    7     2     2     1.07111178    -0.17110683-24984.88238878    -0.00000033    -0.00000004  0.35D-07  0.46D-08    38.87
    7     3     3     1.07111182    -0.17110683-24984.88238878    -0.00000033    -0.00000004  0.35D-07  0.47D-08    38.87
    7     4     4     1.07111165    -0.17110683-24984.88238878    -0.00000034    -0.00000004  0.36D-07  0.48D-08    38.87
    7     5     5     1.07111167    -0.17110683-24984.88238878    -0.00000034    -0.00000004  0.36D-07  0.48D-08    38.87
    7     6     6     1.07111160    -0.17110683-24984.88238878    -0.00000034    -0.00000004  0.36D-07  0.48D-08    38.87
    7     7     7     1.06830537    -0.16836348-24984.83837368    -0.00000019    -0.00000002  0.24D-07  0.50D-08    38.87
    8     1     1     1.06329493    -0.17153261-24984.96398848    -0.00000000    -0.00000000  0.60D-09  0.19D-09    44.37
    8     2     2     1.07112027    -0.17110688-24984.88238882    -0.00000004    -0.00000001  0.41D-08  0.71D-09    44.37
    8     3     3     1.07112025    -0.17110688-24984.88238882    -0.00000004    -0.00000001  0.42D-08  0.71D-09    44.37
    8     4     4     1.07112012    -0.17110688-24984.88238882    -0.00000004    -0.00000001  0.44D-08  0.73D-09    44.37
    8     5     5     1.07112014    -0.17110688-24984.88238882    -0.00000004    -0.00000001  0.44D-08  0.73D-09    44.37
    8     6     6     1.07112011    -0.17110688-24984.88238882    -0.00000004    -0.00000001  0.44D-08  0.73D-09    44.37
    8     7     7     1.06830398    -0.16836351-24984.83837371    -0.00000003    -0.00000000  0.11D-08  0.40D-09    44.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   8.2%
 S   5.0%  25.6%
 P   0.9%  17.7%  10.5%

 Initialization:   1.6%
 Other:           30.6%

 Total CPU:       44.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9388282  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0441474
 2/00000\222000           0.0483879  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9197470
 2/0000\0222000          -0.0000000  -0.0000000  -0.0000000   0.8991005  -0.0000000   0.0000000  -0.0000000
 2/0\0000222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8991005  -0.0000000
 2/00\000222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.8991005   0.0000000  -0.0000000
 2/000\00222000           0.0000000   0.8903075   0.1254366   0.0000000  -0.0000000   0.0000000   0.0000000
 2/\00000222000          -0.0000000  -0.1254366   0.8903075   0.0000000   0.0000000   0.0000000  -0.0000000
 20000000222/\0          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.2784114  -0.0000000
 20000000222/0\          -0.0000000  -0.0000000  -0.0000000   0.2784114  -0.0000000   0.0000000   0.0000000
 200000002220/\           0.0000000   0.0000000  -0.0000000   0.0000000   0.2784114  -0.0000000   0.0000000
 20000000222020          -0.1079946   0.2250986   0.0317145   0.0000000   0.0000000  -0.0000000   0.0870950
 20000000222200          -0.1079946  -0.0850838  -0.2107984   0.0000000  -0.0000000   0.0000000   0.0870950
 20000000222002          -0.1079946  -0.1400149   0.1790839   0.0000000  -0.0000000   0.0000000   0.0870950
 20000002222000          -0.0108302   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.1568697
 20000/\0222000           0.0000000   0.0000000   0.0000000  -0.1543920  -0.0000000   0.0000000   0.0000000
 20/00\00222000           0.0000000   0.0215397  -0.1528820   0.0000000   0.0000000   0.0000000   0.0000000
 200/\000222000          -0.0000000  -0.0000000  -0.0000000   0.1337075   0.0000000  -0.0000000  -0.0000000
 2000/0\0222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.1337075   0.0000000
 200/00\0222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.1337075  -0.0000000  -0.0000000
 20/\0000222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1337074  -0.0000000
 20/0\000222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.1337074  -0.0000000  -0.0000000
 20000020222000          -0.0509622  -0.1081040  -0.0152309   0.0000000  -0.0000000   0.0000000  -0.0821277
 20200000222000          -0.0509622  -0.1081039  -0.0152309  -0.0000000  -0.0000000   0.0000000  -0.0821276
 20000200222000          -0.0509623   0.1081037   0.0152309   0.0000000  -0.0000000   0.0000000  -0.0821277
 20002000222000          -0.0509622   0.0408616   0.1012363  -0.0000000   0.0000000   0.0000000  -0.0821277
 20020000222000          -0.0509621   0.0672424  -0.0860053  -0.0000000   0.0000000   0.0000000  -0.0821276
 2000/\00222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0771960  -0.0000000  -0.0000000
 200/0\00222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0771960  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000\222000  40.1     0.0118330  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0516903

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962659   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.064541
 2           0.000000   -0.000000    0.875078   -0.000000    0.000000   -0.398303    0.000000
 3           0.000000   -0.000000    0.398303   -0.000000    0.000000    0.875078   -0.000000
 4           0.000000    0.000000    0.000000    0.961461    0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.961461   -0.000000    0.000000
 6           0.000000    0.961461   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.070761   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.960897

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964815    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.003164
 2           0.000000    0.961461    0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.961461    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.961461    0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.961461   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961461   -0.000000
 7          -0.003164    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.963494


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96265909 (fixed)   0.96531411 (relaxed)   0.96481500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01031817   -0.01333820   -0.10354298
 Singles      0.02858271   -0.05096993   -0.05201071
 Pairs        0.03536530   -0.01109985   -0.01597891
 Total        1.07426619   -0.07540798   -0.17153261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.79185304
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.94327478
 One electron energy               -34000.20836827
 Two electron energy                 9015.24437979
 Virial quotient                       -0.57455265
 Correlation energy                    -0.17213544
 !MRCI STATE 1.1 Energy              -24984.9639884772    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.97677232 (Davidson, fixed reference)
 Cluster corrected energies        -24984.97658115 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.97677232 (Davidson, rotated reference)

 Cluster corrected energies        -24984.97468219 (Pople, fixed reference)
 Cluster corrected energies        -24984.97451525 (Pople, relaxed reference)
 Cluster corrected energies        -24984.97468219 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.87507798 (fixed)   0.96326236 (relaxed)   0.96146056 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00994753   -0.00943130   -0.11312243
 Singles      0.03305833   -0.05043592   -0.05185276
 Pairs        0.03876941   -0.00000001   -0.00613169
 Total        1.08177527   -0.05986722   -0.17110688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128194
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.35113776
 One electron energy               -34000.67645053
 Two electron energy                 9015.79406171
 Virial quotient                       -0.57455860
 Correlation energy                    -0.17110688
 !MRCI STATE 2.1 Energy              -24984.8823888220    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89638113 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89568932 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89638113 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89414634 (Pople, fixed reference)
 Cluster corrected energies        -24984.89353791 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89414634 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.87507798 (fixed)   0.96326237 (relaxed)   0.96146057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00994754   -0.00943130   -0.11312246
 Singles      0.03305829   -0.05043589   -0.05185275
 Pairs        0.03876944   -0.00000000   -0.00613167
 Total        1.08177526   -0.05986719   -0.17110688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128194
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.35114081
 One electron energy               -34000.67644527
 Two electron energy                 9015.79405644
 Virial quotient                       -0.57455860
 Correlation energy                    -0.17110688
 !MRCI STATE 3.1 Energy              -24984.8823888219    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89638113 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89568932 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89638113 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89414634 (Pople, fixed reference)
 Cluster corrected energies        -24984.89353791 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89414634 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96146064 (fixed)   0.96326243 (relaxed)   0.96146064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00994752   -0.00943130   -0.11312249
 Singles      0.03305812   -0.05043588   -0.05185274
 Pairs        0.03876947   -0.00000000   -0.00613165
 Total        1.08177511   -0.05986718   -0.17110688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128194
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.35115360
 One electron energy               -34000.67643620
 Two electron energy                 9015.79404738
 Virial quotient                       -0.57455860
 Correlation energy                    -0.17110688
 !MRCI STATE 4.1 Energy              -24984.8823888217    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89638110 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89568929 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89638110 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89414632 (Pople, fixed reference)
 Cluster corrected energies        -24984.89353789 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89414632 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96146063 (fixed)   0.96326242 (relaxed)   0.96146063 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00994752   -0.00943130   -0.11312250
 Singles      0.03305812   -0.05043586   -0.05185273
 Pairs        0.03876949   -0.00000000   -0.00613164
 Total        1.08177513   -0.05986716   -0.17110688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128194
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.35115360
 One electron energy               -34000.67643772
 Two electron energy                 9015.79404890
 Virial quotient                       -0.57455860
 Correlation energy                    -0.17110688
 !MRCI STATE 5.1 Energy              -24984.8823888216    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89638111 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89568930 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89638111 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89414632 (Pople, fixed reference)
 Cluster corrected energies        -24984.89353789 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89414632 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96146064 (fixed)   0.96326243 (relaxed)   0.96146064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00994752   -0.00943130   -0.11312251
 Singles      0.03305811   -0.05043585   -0.05185273
 Pairs        0.03876948   -0.00000000   -0.00613163
 Total        1.08177510   -0.05986716   -0.17110688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128194
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.35115387
 One electron energy               -34000.67643525
 Two electron energy                 9015.79404642
 Virial quotient                       -0.57455860
 Correlation energy                    -0.17110688
 !MRCI STATE 6.1 Energy              -24984.8823888216    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89638110 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89568929 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89638110 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89414632 (Pople, fixed reference)
 Cluster corrected energies        -24984.89353789 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89414632 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96089743 (fixed)   0.96383249 (relaxed)   0.96349414 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00834000   -0.01169429   -0.01271511
 Singles      0.03362633   -0.05046958   -0.05210831
 Pairs        0.03524731   -0.10560119   -0.10354009
 Total        1.07721364   -0.16776506   -0.16836351
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67061303
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.53048588
 One electron energy               -33991.15768510
 Two electron energy                 9006.31931140
 Virial quotient                       -0.57455522
 Correlation energy                    -0.16776068
 !MRCI STATE 7.1 Energy              -24984.8383737075    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.85132712 (Davidson, fixed reference)
 Cluster corrected energies        -24984.85120027 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.85132712 (Davidson, rotated reference)

 Cluster corrected energies        -24984.84922847 (Pople, fixed reference)
 Cluster corrected energies        -24984.84911729 (Pople, relaxed reference)
 Cluster corrected energies        -24984.84922847 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.02       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        69.83     46.94      7.94      0.41     14.35
 REAL TIME  *        78.53 SEC
 DISK USED  *       187.87 MB (local),        1.17 GB (total)
 SF USED    *       340.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24984.97677232  AU                              
 SETTING HLSDIAG(2)     =    -24984.89638113  AU                              
 SETTING HLSDIAG(3)     =    -24984.89638113  AU                              
 SETTING HLSDIAG(4)     =    -24984.89638110  AU                              
 SETTING HLSDIAG(5)     =    -24984.89638111  AU                              
 SETTING HLSDIAG(6)     =    -24984.89638110  AU                              
 SETTING HLSDIAG(7)     =    -24984.85132712  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 88
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          39 (  20  19 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.72082894
     2    -24984.72082894
     3    -24984.72082894
     4    -24984.72082894
     5    -24984.72082894
     6    -24984.67716905
     7    -24984.65286296
     8    -24984.65286296
     9    -24984.65286296
    10    -24984.64785396
    11    -24984.64785396
    12    -24984.64785396
    13    -24984.64785396
    14    -24984.64785396
    15    -24984.64785396
    16    -24984.64785396

 Number of blocks in overlap matrix:   313   Smallest eigenvalue:  0.73D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        344278
 Number of doubly external configurations:        441421
 Total number of contracted configurations:       797537
 Total number of uncontracted configurations:    2566937

 Diagonal Coupling coefficients finished.               Storage:   6507020 words, CPU-Time:      2.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    461604 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.72082894     0.00000000    -0.17332190  0.39D-01  0.41D-01     4.00
    1     2     2     1.00000000     0.00000000-24984.72082894    -0.00000000    -0.17319019  0.39D-01  0.41D-01     4.00
    1     3     3     1.00000000     0.00000000-24984.72082894     0.00000000    -0.17332701  0.39D-01  0.41D-01     4.00
    1     4     4     1.00000000     0.00000000-24984.72082894     0.00000000    -0.17333423  0.39D-01  0.41D-01     4.00
    1     5     5     1.00000000     0.00000000-24984.72082894     0.00000000    -0.17316989  0.39D-01  0.41D-01     4.00
    1     6     6     1.00000000     0.00000000-24984.67716905    -0.00000000    -0.15582666  0.36D-01  0.33D-01     4.00
    1     7     7     1.00000000     0.00000000-24984.65286296     0.00000000    -0.16199609  0.29D-01  0.41D-01     4.00
    1     8     8     1.00000000     0.00000000-24984.65286296     0.00000000    -0.16203276  0.29D-01  0.41D-01     4.00
    1     9     9     1.00000000     0.00000000-24984.65286296     0.00000000    -0.16202757  0.29D-01  0.41D-01     4.00
    1    10    10     1.00000000     0.00000000-24984.64785396     0.00000000    -0.17542108  0.35D-01  0.48D-01     4.00
    1    11    11     1.00000000     0.00000000-24984.64785396     0.00000000    -0.17541830  0.35D-01  0.48D-01     4.00
    1    12    12     1.00000000     0.00000000-24984.64785396     0.00000000    -0.17530272  0.35D-01  0.48D-01     4.00
    1    13    13     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.17542536  0.35D-01  0.48D-01     4.00
    1    14    14     1.00000000     0.00000000-24984.64785396     0.00000000    -0.17501143  0.35D-01  0.47D-01     4.00
    1    15    15     1.00000000     0.00000000-24984.64785396     0.00000000    -0.17523096  0.35D-01  0.48D-01     4.00
    1    16    16     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.17521659  0.35D-01  0.48D-01     4.00
    2     1     1     1.06742151    -0.16984556-24984.89067449    -0.16984556    -0.00403382  0.18D-02  0.64D-03    30.35
    2     2     2     1.06743400    -0.16983837-24984.89066731    -0.16983837    -0.00404127  0.18D-02  0.64D-03    30.35
    2     3     3     1.06743004    -0.16981873-24984.89064767    -0.16981873    -0.00406614  0.18D-02  0.65D-03    30.35
    2     4     4     1.06743740    -0.16981823-24984.89064717    -0.16981823    -0.00406628  0.18D-02  0.65D-03    30.35
    2     5     5     1.06743995    -0.16981616-24984.89064509    -0.16981616    -0.00406848  0.18D-02  0.65D-03    30.35
    2     6     6     1.06454786    -0.16282426-24984.83999331    -0.16282426    -0.00312311  0.13D-02  0.44D-03    30.35
    2     7     7     1.06987085    -0.16341935-24984.81628231    -0.16341935    -0.00354988  0.16D-02  0.66D-03    30.35
    2     8     8     1.06990547    -0.16338997-24984.81625293    -0.16338997    -0.00358531  0.16D-02  0.69D-03    30.35
    2     9     9     1.06991723    -0.16338853-24984.81625149    -0.16338853    -0.00358747  0.16D-02  0.69D-03    30.35
    2    10    10     1.06992356    -0.16838781-24984.81624177    -0.16838781    -0.00360165  0.16D-02  0.69D-03    30.35
    2    11    11     1.06996227    -0.16836871-24984.81622267    -0.16836871    -0.00362290  0.16D-02  0.70D-03    30.35
    2    12    12     1.06994846    -0.16836671-24984.81622068    -0.16836671    -0.00362750  0.16D-02  0.70D-03    30.35
    2    13    13     1.06994572    -0.16836654-24984.81622050    -0.16836654    -0.00362752  0.16D-02  0.70D-03    30.35
    2    14    14     1.06186820    -0.16604732-24984.81390129    -0.16604732    -0.00324060  0.14D-02  0.62D-03    30.35
    2    15    15     1.06187123    -0.16603825-24984.81389221    -0.16603825    -0.00325005  0.14D-02  0.62D-03    30.35
    2    16    16     1.06187888    -0.16603721-24984.81389117    -0.16603721    -0.00325178  0.14D-02  0.63D-03    30.35
    3     1     1     1.06872893    -0.17408593-24984.89491487    -0.00424038    -0.00015030  0.75D-04  0.26D-04    56.13
    3     2     2     1.06872982    -0.17408555-24984.89491449    -0.00424718    -0.00015050  0.75D-04  0.26D-04    56.13
    3     3     3     1.06873625    -0.17408527-24984.89491421    -0.00426654    -0.00015093  0.75D-04  0.26D-04    56.13
    3     4     4     1.06873587    -0.17408510-24984.89491404    -0.00426687    -0.00015102  0.75D-04  0.26D-04    56.13
    3     5     5     1.06873658    -0.17408503-24984.89491397    -0.00426887    -0.00015109  0.75D-04  0.26D-04    56.13
    3     6     6     1.06799907    -0.16620451-24984.84337356    -0.00338025    -0.00012247  0.66D-04  0.17D-04    56.13
    3     7     7     1.07166450    -0.16722464-24984.82008760    -0.00380529    -0.00013069  0.60D-04  0.29D-04    56.13
    3     8     8     1.07166877    -0.16722456-24984.82008751    -0.00383458    -0.00013075  0.60D-04  0.30D-04    56.13
    3     9     9     1.07166744    -0.16722449-24984.82008745    -0.00383596    -0.00013081  0.60D-04  0.30D-04    56.13
    3    10    10     1.07165179    -0.17223314-24984.82008710    -0.00384533    -0.00012999  0.61D-04  0.29D-04    56.13
    3    11    11     1.07166507    -0.17223244-24984.82008640    -0.00386373    -0.00013079  0.60D-04  0.30D-04    56.13
    3    12    12     1.07165403    -0.17223230-24984.82008626    -0.00386558    -0.00013056  0.60D-04  0.29D-04    56.13
    3    13    13     1.07164956    -0.17223214-24984.82008611    -0.00386560    -0.00013065  0.60D-04  0.29D-04    56.13
    3    14    14     1.06144280    -0.16943524-24984.81728920    -0.00338791    -0.00011607  0.32D-04  0.33D-04    56.13
    3    15    15     1.06143915    -0.16943392-24984.81728788    -0.00339567    -0.00011696  0.32D-04  0.34D-04    56.13
    3    16    16     1.06143620    -0.16943383-24984.81728780    -0.00339663    -0.00011696  0.32D-04  0.34D-04    56.13
    4     1     1     1.07048161    -0.17427849-24984.89510742    -0.00019255    -0.00001500  0.16D-04  0.15D-05    82.12
    4     2     2     1.07047832    -0.17427848-24984.89510742    -0.00019293    -0.00001504  0.16D-04  0.15D-05    82.12
    4     3     3     1.07047851    -0.17427845-24984.89510739    -0.00019318    -0.00001505  0.16D-04  0.15D-05    82.12
    4     4     4     1.07047834    -0.17427844-24984.89510738    -0.00019334    -0.00001506  0.16D-04  0.15D-05    82.12
    4     5     5     1.07048158    -0.17427830-24984.89510724    -0.00019327    -0.00001502  0.16D-04  0.15D-05    82.12
    4     6     6     1.07009275    -0.16635141-24984.84352046    -0.00014690    -0.00000940  0.94D-05  0.99D-06    82.12
    4     7     7     1.07343131    -0.16739273-24984.82025569    -0.00016809    -0.00001156  0.11D-04  0.15D-05    82.12
    4     8     8     1.07343158    -0.16739273-24984.82025569    -0.00016817    -0.00001157  0.11D-04  0.15D-05    82.12
    4     9     9     1.07343204    -0.16739271-24984.82025567    -0.00016821    -0.00001153  0.11D-04  0.15D-05    82.12
    4    10    10     1.07343805    -0.17240095-24984.82025492    -0.00016782    -0.00001155  0.11D-04  0.15D-05    82.12
    4    11    11     1.07343002    -0.17240087-24984.82025483    -0.00016843    -0.00001160  0.11D-04  0.15D-05    82.12
    4    12    12     1.07343089    -0.17240074-24984.82025470    -0.00016845    -0.00001163  0.11D-04  0.15D-05    82.12
    4    13    13     1.07343057    -0.17240074-24984.82025470    -0.00016860    -0.00001163  0.11D-04  0.15D-05    82.12
    4    14    14     1.06215380    -0.16957571-24984.81742967    -0.00014048    -0.00000969  0.92D-05  0.16D-05    82.12
    4    15    15     1.06215123    -0.16957523-24984.81742920    -0.00014132    -0.00000974  0.93D-05  0.16D-05    82.12
    4    16    16     1.06215034    -0.16957522-24984.81742918    -0.00014138    -0.00000975  0.93D-05  0.16D-05    82.12
    5     1     1     1.07121475    -0.17430002-24984.89512896    -0.00002154    -0.00000146  0.83D-06  0.24D-06   107.54
    5     2     2     1.07121471    -0.17430001-24984.89512894    -0.00002153    -0.00000146  0.82D-06  0.24D-06   107.54
    5     3     3     1.07121462    -0.17430001-24984.89512894    -0.00002156    -0.00000146  0.83D-06  0.24D-06   107.54
    5     4     4     1.07121255    -0.17429990-24984.89512883    -0.00002146    -0.00000146  0.82D-06  0.24D-06   107.54
    5     5     5     1.07121203    -0.17429974-24984.89512868    -0.00002144    -0.00000146  0.82D-06  0.24D-06   107.54
    5     6     6     1.07072769    -0.16636348-24984.84353253    -0.00001207    -0.00000091  0.67D-06  0.12D-06   107.54
    5     7     7     1.07401532    -0.16740837-24984.82027133    -0.00001564    -0.00000079  0.43D-06  0.17D-06   107.54
    5     8     8     1.07401535    -0.16740837-24984.82027133    -0.00001564    -0.00000080  0.43D-06  0.17D-06   107.54
    5     9     9     1.07401416    -0.16740825-24984.82027121    -0.00001555    -0.00000079  0.43D-06  0.16D-06   107.54
    5    10    10     1.07401474    -0.17241656-24984.82027053    -0.00001561    -0.00000080  0.43D-06  0.17D-06   107.54
    5    11    11     1.07401287    -0.17241651-24984.82027047    -0.00001564    -0.00000078  0.43D-06  0.16D-06   107.54
    5    12    12     1.07401438    -0.17241647-24984.82027043    -0.00001573    -0.00000080  0.43D-06  0.17D-06   107.54
    5    13    13     1.07401443    -0.17241647-24984.82027043    -0.00001573    -0.00000080  0.43D-06  0.17D-06   107.54
    5    14    14     1.06235921    -0.16958910-24984.81744306    -0.00001339    -0.00000087  0.43D-06  0.15D-06   107.54
    5    15    15     1.06235847    -0.16958867-24984.81744263    -0.00001343    -0.00000087  0.43D-06  0.15D-06   107.54
    5    16    16     1.06235865    -0.16958867-24984.81744263    -0.00001345    -0.00000087  0.43D-06  0.15D-06   107.54
    6     1     1     1.07126368    -0.17430187-24984.89513081    -0.00000185    -0.00000013  0.10D-06  0.18D-07   133.01
    6     2     2     1.07126373    -0.17430185-24984.89513079    -0.00000185    -0.00000013  0.10D-06  0.18D-07   133.01
    6     3     3     1.07126369    -0.17430185-24984.89513079    -0.00000185    -0.00000013  0.10D-06  0.18D-07   133.01
    6     4     4     1.07126169    -0.17430173-24984.89513067    -0.00000184    -0.00000013  0.10D-06  0.18D-07   133.01
    6     5     5     1.07126153    -0.17430158-24984.89513052    -0.00000184    -0.00000013  0.11D-06  0.18D-07   133.01
    6     6     6     1.07082162    -0.16636467-24984.84353372    -0.00000119    -0.00000013  0.12D-06  0.12D-07   133.01
    6     7     7     1.07403031    -0.16740934-24984.82027230    -0.00000097    -0.00000005  0.24D-07  0.20D-07   133.01
    6     8     8     1.07403032    -0.16740934-24984.82027230    -0.00000097    -0.00000005  0.24D-07  0.20D-07   133.01
    6     9     9     1.07402925    -0.16740921-24984.82027217    -0.00000096    -0.00000005  0.24D-07  0.19D-07   133.01
    6    10    10     1.07402943    -0.17241754-24984.82027150    -0.00000097    -0.00000005  0.24D-07  0.20D-07   133.01
    6    11    11     1.07402818    -0.17241746-24984.82027142    -0.00000095    -0.00000005  0.24D-07  0.19D-07   133.01
    6    12    12     1.07402910    -0.17241744-24984.82027140    -0.00000097    -0.00000005  0.24D-07  0.20D-07   133.01
    6    13    13     1.07402911    -0.17241744-24984.82027140    -0.00000097    -0.00000005  0.24D-07  0.20D-07   133.01
    6    14    14     1.06235337    -0.16959013-24984.81744409    -0.00000103    -0.00000005  0.22D-07  0.11D-07   133.01
    6    15    15     1.06235306    -0.16958970-24984.81744366    -0.00000103    -0.00000005  0.22D-07  0.11D-07   133.01
    6    16    16     1.06235312    -0.16958970-24984.81744366    -0.00000103    -0.00000006  0.22D-07  0.11D-07   133.01
    7     1     1     1.07129206    -0.17430204-24984.89513097    -0.00000017    -0.00000001  0.13D-07  0.18D-08   158.41
    7     2     2     1.07129213    -0.17430202-24984.89513096    -0.00000017    -0.00000001  0.12D-07  0.18D-08   158.41
    7     3     3     1.07129211    -0.17430202-24984.89513096    -0.00000017    -0.00000001  0.13D-07  0.18D-08   158.41
    7     4     4     1.07129026    -0.17430190-24984.89513084    -0.00000017    -0.00000002  0.13D-07  0.17D-08   158.41
    7     5     5     1.07129020    -0.17430175-24984.89513069    -0.00000017    -0.00000002  0.13D-07  0.17D-08   158.41
    7     6     6     1.07084454    -0.16636484-24984.84353389    -0.00000017    -0.00000002  0.15D-07  0.17D-08   158.41
    7     7     7     1.07403485    -0.16740941-24984.82027237    -0.00000007    -0.00000001  0.48D-08  0.20D-08   158.41
    7     8     8     1.07403484    -0.16740941-24984.82027237    -0.00000007    -0.00000001  0.48D-08  0.20D-08   158.41
    7     9     9     1.07403356    -0.16740928-24984.82027224    -0.00000007    -0.00000001  0.48D-08  0.20D-08   158.41
    7    10    10     1.07403408    -0.17241761-24984.82027157    -0.00000007    -0.00000001  0.48D-08  0.20D-08   158.41
    7    11    11     1.07403206    -0.17241753-24984.82027149    -0.00000007    -0.00000001  0.48D-08  0.19D-08   158.41
    7    12    12     1.07403347    -0.17241751-24984.82027147    -0.00000007    -0.00000001  0.49D-08  0.20D-08   158.41
    7    13    13     1.07403347    -0.17241751-24984.82027147    -0.00000007    -0.00000001  0.49D-08  0.20D-08   158.41
    7    14    14     1.06235712    -0.16959020-24984.81744416    -0.00000006    -0.00000000  0.50D-08  0.72D-09   158.41
    7    15    15     1.06235690    -0.16958976-24984.81744373    -0.00000006    -0.00000000  0.50D-08  0.70D-09   158.41
    7    16    16     1.06235692    -0.16958976-24984.81744373    -0.00000006    -0.00000000  0.50D-08  0.71D-09   158.41
    8     1     1     1.07130244    -0.17430205-24984.89513099    -0.00000002    -0.00000000  0.12D-08  0.21D-09   171.60
    8     2     2     1.07130250    -0.17430204-24984.89513098    -0.00000002    -0.00000000  0.12D-08  0.21D-09   171.60
    8     3     3     1.07130250    -0.17430204-24984.89513098    -0.00000002    -0.00000000  0.12D-08  0.21D-09   171.60
    8     4     4     1.07130064    -0.17430192-24984.89513086    -0.00000002    -0.00000000  0.12D-08  0.21D-09   171.60
    8     5     5     1.07130061    -0.17430177-24984.89513071    -0.00000002    -0.00000000  0.12D-08  0.21D-09   171.60
    8     6     6     1.07084833    -0.16636486-24984.84353391    -0.00000002    -0.00000000  0.14D-08  0.26D-09   171.60
    8     7     7     1.07403484    -0.16740941-24984.82027237    -0.00000000    -0.00000001  0.48D-08  0.20D-08   171.60
    8     8     8     1.07403484    -0.16740941-24984.82027237    -0.00000000    -0.00000001  0.48D-08  0.20D-08   171.60
    8     9     9     1.07403356    -0.16740928-24984.82027224    -0.00000000    -0.00000001  0.48D-08  0.20D-08   171.60
    8    10    10     1.07403407    -0.17241761-24984.82027157    -0.00000000    -0.00000001  0.48D-08  0.20D-08   171.60
    8    11    11     1.07403205    -0.17241753-24984.82027149    -0.00000000    -0.00000001  0.48D-08  0.19D-08   171.60
    8    12    12     1.07403347    -0.17241751-24984.82027147    -0.00000000    -0.00000001  0.49D-08  0.20D-08   171.60
    8    13    13     1.07403346    -0.17241751-24984.82027147    -0.00000000    -0.00000001  0.49D-08  0.20D-08   171.60
    8    14    14     1.06235711    -0.16959020-24984.81744416    -0.00000000    -0.00000000  0.50D-08  0.72D-09   171.60
    8    15    15     1.06235689    -0.16958976-24984.81744373    -0.00000000    -0.00000000  0.50D-08  0.70D-09   171.60
    8    16    16     1.06235691    -0.16958976-24984.81744373    -0.00000000    -0.00000000  0.50D-08  0.71D-09   171.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   7.3%
 S   3.8%  23.9%
 P   0.8%  18.3%  12.5%

 Initialization:   1.6%
 Other:           31.9%

 Total CPU:      171.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000           0.0000000   0.0000000  -0.0000000  -0.0000059  -0.0000000   0.9627353  -0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 20/00/00222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000469   0.0000000   0.0000000  -0.0000000
                          0.0000000  -0.0000000   0.9624627  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 20000//0222000          -0.0000500   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.9624617  -0.0000031  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2//00000222000           0.0000000  -0.0000000  -0.0000000  -0.0000064   0.9621369  -0.0000000   0.0000000  -0.0000000
                          0.0000000  -0.0000000  -0.0000535   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2/000/00222000           0.0000000   0.0000000  -0.0000000   0.9621367   0.0000064   0.0000071  -0.0000000  -0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/0000/0222000           0.9621363   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000570   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/0/0000222000          -0.0000000  -0.0000000   0.9621363   0.0000000   0.0000000   0.0000000  -0.0000294   0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000410  -0.0000000   0.0000000   0.0000002
 2/00/000222000          -0.0000000   0.9621363   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000294
                         -0.0000000   0.0000000   0.0000000   0.0000410   0.0000000   0.0000000  -0.0000002  -0.0000000
 200//000222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.0000028   0.8609879   0.0000000  -0.0000000  -0.0000000  -0.3309778  -0.0000000  -0.0000000
 2000/0/0222000          -0.0000000  -0.0000000   0.0000006   0.0000000  -0.0000000  -0.0000000   0.7097437   0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.0000000   0.4873617  -0.0000000  -0.0000000   0.3310418
 200/00/0222000           0.0000000   0.0000006  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.7097403
                         -0.0000000  -0.0000000   0.0000000   0.4873667   0.0000000   0.0000000  -0.3310418   0.0000000
 20/000/0222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000014   0.4301540  -0.0000000   0.0000000   0.0000000   0.6628233   0.0000000   0.0000000
 20/0/000222000           0.0000000   0.0000389  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.6491452
                          0.0000000   0.0000000  -0.0000000  -0.5654210  -0.0000000  -0.0000000   0.3312909  -0.0000000
 20//0000222000          -0.0000000  -0.0000000  -0.0000389  -0.0000000   0.0000000  -0.0000000  -0.6491413   0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.0000000   0.5654255   0.0000000  -0.0000000   0.3312909
 20000000222/0/          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0002409  -0.0000000   0.0000000  -0.0000000   0.6222239   0.0000000   0.0000000
 200000002220//           0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0001195
                         -0.0000000  -0.0000000  -0.0000000  -0.0001771   0.0000000  -0.0000000   0.6222173   0.0000000
 20000000222//0          -0.0000000   0.0000000   0.0000002   0.0000000  -0.0000000  -0.0000000   0.0001195   0.0000000
                         -0.0000000   0.0000000  -0.0000000   0.0000000   0.0001771  -0.0000000  -0.0000000   0.6222173
 2000//00222000           0.0000000  -0.0000217  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0347896
                          0.0000000   0.0000000   0.0000000   0.6075411   0.0000000  -0.0000000   0.5740624  -0.0000000
 200/0/00222000          -0.0000000  -0.0000000  -0.0000217  -0.0000000   0.0000000   0.0000000   0.0347938   0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000   0.6075409   0.0000000  -0.0000000  -0.5740624

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  40.1     0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000000   0.0650705   0.0000000   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2000000/222000  34.1    -0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000000  -0.0520358  -0.0000000  -0.0000000
                         -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962106    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000050   -0.000002    0.000000   -0.000000    0.000000
 2           0.000000   -0.000000    0.962106   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000019
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000040
 3           0.000000   -0.000000    0.000000    0.962106   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000021   -0.000000    0.000000    0.000000   -0.000040    0.000000
 4          -0.000000   -0.023195   -0.000000    0.000000    0.961827   -0.000006    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.961827    0.000000    0.000000    0.023195   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000047    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000007    0.962735   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000029   -0.000000   -0.000000    0.000000    0.000192    0.000000   -0.000000
             0.953117    0.000000   -0.000000    0.000000   -0.133789   -0.000000
 8          -0.000000   -0.000000   -0.000029    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000192    0.947848
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.167081
 9           0.000057    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.961678    0.038820    0.000000   -0.000000    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000387    0.000000   -0.000000    0.000000
             0.000000   -0.038820    0.961679   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000053    0.000000   -0.000000   -0.000001   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.962463   -0.000000   -0.000000
 12          0.000000    0.000000    0.000041    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000283    0.167081
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.947849
 13          0.000000   -0.000000    0.000000    0.000041   -0.000000    0.000000    0.000000    0.000283    0.000000   -0.000000
             0.133788    0.000000   -0.000000    0.000000    0.953118   -0.000000
 14          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.966061   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000016    0.000388    0.000000   -0.000000    0.000000
 15         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.966061    0.000239
            -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000246
 16         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.966061    0.000000   -0.000000
            -0.000230    0.000000   -0.000000    0.000000   -0.000254   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962106   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000004    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.962106   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000002   -0.000000   -0.000000
            -0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.962106    0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000002   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.962107    0.000000    0.000001    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.962107   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000003   -0.000000    0.000000    0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000001   -0.000000    0.962735   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000002    0.000000    0.000000   -0.000000    0.962461    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 8           0.000000   -0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.962461   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 9           0.000004   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962462   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 10          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.962462
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000    0.000000   -0.000003    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.962463   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 12         -0.000000    0.000002   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.962462    0.000000   -0.000000   -0.000000   -0.000000
 13          0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.962462   -0.000000    0.000000    0.000000
 14          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.966061    0.000000    0.000000
 15          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.966061    0.000000
 16         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.966061


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96210633 (fixed)   0.96233448 (relaxed)   0.96210633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00842072   -0.01123231   -0.11501570
 Singles      0.03344970   -0.05151563   -0.05308257
 Pairs        0.03845316   -0.00000000   -0.00620379
 Total        1.08032358   -0.06274794   -0.17430205
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.44385476
 One electron energy               -34001.60515741
 Two electron energy                 9016.71002642
 Virial quotient                       -0.57455767
 Correlation energy                    -0.17430206
 !MRCI STATE 1.1 Energy              -24984.8951309921    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.90913156 (Davidson, fixed reference)
 Cluster corrected energies        -24984.90904228 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.90913156 (Davidson, rotated reference)

 Cluster corrected energies        -24984.90605645 (Pople, fixed reference)
 Cluster corrected energies        -24984.90598407 (Pople, relaxed reference)
 Cluster corrected energies        -24984.90605645 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96210630 (fixed)   0.96233445 (relaxed)   0.96210630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00842074   -0.01123229   -0.11501076
 Singles      0.03344970   -0.05151563   -0.05308257
 Pairs        0.03845322   -0.00000531   -0.00620871
 Total        1.08032366   -0.06275323   -0.17430204
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.44385580
 One electron energy               -34001.60515940
 Two electron energy                 9016.71002843
 Virial quotient                       -0.57455767
 Correlation energy                    -0.17430204
 !MRCI STATE 2.1 Energy              -24984.8951309762    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.90913155 (Davidson, fixed reference)
 Cluster corrected energies        -24984.90904228 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.90913155 (Davidson, rotated reference)

 Cluster corrected energies        -24984.90605644 (Pople, fixed reference)
 Cluster corrected energies        -24984.90598407 (Pople, relaxed reference)
 Cluster corrected energies        -24984.90605644 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96210630 (fixed)   0.96233445 (relaxed)   0.96210630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00842074   -0.01123229   -0.11501568
 Singles      0.03344970   -0.05151563   -0.05308257
 Pairs        0.03845322   -0.00000000   -0.00620380
 Total        1.08032366   -0.06274792   -0.17430204
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.44385589
 One electron energy               -34001.60515964
 Two electron energy                 9016.71002866
 Virial quotient                       -0.57455767
 Correlation energy                    -0.17430204
 !MRCI STATE 3.1 Energy              -24984.8951309762    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.90913155 (Davidson, fixed reference)
 Cluster corrected energies        -24984.90904228 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.90913155 (Davidson, rotated reference)

 Cluster corrected energies        -24984.90605644 (Pople, fixed reference)
 Cluster corrected energies        -24984.90598407 (Pople, relaxed reference)
 Cluster corrected energies        -24984.90605644 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96182706 (fixed)   0.96233488 (relaxed)   0.96210670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00842165   -0.01123285   -0.11501672
 Singles      0.03344767   -0.05151465   -0.05308138
 Pairs        0.03845344    0.00000000   -0.00620382
 Total        1.08032276   -0.06274749   -0.17430192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.44384187
 One electron energy               -34001.60507865
 Two electron energy                 9016.70994780
 Virial quotient                       -0.57455767
 Correlation energy                    -0.17430192
 !MRCI STATE 4.1 Energy              -24984.8951308575    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.90913127 (Davidson, fixed reference)
 Cluster corrected energies        -24984.90904198 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.90913127 (Davidson, rotated reference)

 Cluster corrected energies        -24984.90605619 (Pople, fixed reference)
 Cluster corrected energies        -24984.90598381 (Pople, relaxed reference)
 Cluster corrected energies        -24984.90605619 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96182726 (fixed)   0.96233507 (relaxed)   0.96210689 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00842127   -0.01123265   -0.11501651
 Singles      0.03344768   -0.05151470   -0.05308145
 Pairs        0.03845337   -0.00000000   -0.00620381
 Total        1.08032232   -0.06274736   -0.17430177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.44384449
 One electron energy               -34001.60508567
 Two electron energy                 9016.70995496
 Virial quotient                       -0.57455767
 Correlation energy                    -0.17430177
 !MRCI STATE 5.1 Energy              -24984.8951307055    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.90913103 (Davidson, fixed reference)
 Cluster corrected energies        -24984.90904174 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.90913103 (Davidson, rotated reference)

 Cluster corrected energies        -24984.90605597 (Pople, fixed reference)
 Cluster corrected energies        -24984.90598358 (Pople, relaxed reference)
 Cluster corrected energies        -24984.90605597 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96273530 (fixed)   0.96273530 (relaxed)   0.96273530 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00753060   -0.01166269   -0.10858533
 Singles      0.03731012   -0.05046363   -0.05252615
 Pairs        0.03407174    0.00000000   -0.00525339
 Total        1.07891245   -0.06212632   -0.16636486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67716905
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.50603122
 One electron energy               -33990.26229253
 Two electron energy                 9005.41875862
 Virial quotient                       -0.57455566
 Correlation energy                    -0.16636486
 !MRCI STATE 6.1 Energy              -24984.8435339103    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.85666217 (Davidson, fixed reference)
 Cluster corrected energies        -24984.85666217 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.85666217 (Davidson, rotated reference)

 Cluster corrected energies        -24984.85377162 (Pople, fixed reference)
 Cluster corrected energies        -24984.85377162 (Pople, relaxed reference)
 Cluster corrected energies        -24984.85377162 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95311682 (fixed)   0.96246097 (relaxed)   0.96246097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511411   -0.00752631   -0.11169084
 Singles      0.02991280   -0.04769222   -0.04881891
 Pairs        0.04450067    0.00000000   -0.00689966
 Total        1.07952758   -0.05521854   -0.16740941
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92238579
 One electron energy               -34002.75264614
 Two electron energy                 9017.93237377
 Virial quotient                       -0.57456283
 Correlation energy                    -0.17241840
 !MRCI STATE 7.1 Energy              -24984.8202723664    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398438 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398438 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398438 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096851 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096851 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096851 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94784753 (fixed)   0.96246097 (relaxed)   0.96246097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511411   -0.00752631   -0.09284392
 Singles      0.02991280   -0.04769222   -0.04881891
 Pairs        0.04450067   -0.02034577   -0.02574658
 Total        1.07952758   -0.07556431   -0.16740941
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92238595
 One electron energy               -34002.75264668
 Two electron energy                 9017.93237432
 Virial quotient                       -0.57456283
 Correlation energy                    -0.17241840
 !MRCI STATE 8.1 Energy              -24984.8202723664    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398438 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398438 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398438 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096851 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096851 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096851 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96167846 (fixed)   0.96246166 (relaxed)   0.96246166 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511388   -0.00752640   -0.11169122
 Singles      0.02991135   -0.04769181   -0.04881835
 Pairs        0.04450081   -0.00000000   -0.00689972
 Total        1.07952604   -0.05521821   -0.16740928
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92231238
 One electron energy               -34002.75234404
 Two electron energy                 9017.93207181
 Virial quotient                       -0.57456284
 Correlation energy                    -0.17241828
 !MRCI STATE 9.1 Energy              -24984.8202722379    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398398 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398398 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398398 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096816 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096816 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096816 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96167853 (fixed)   0.96246180 (relaxed)   0.96246180 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511310   -0.00752573   -0.11635399
 Singles      0.02991184   -0.04769207   -0.04895748
 Pairs        0.04450077   -0.00000000   -0.00710613
 Total        1.07952572   -0.05521779   -0.17241761
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92239215
 One electron energy               -34002.75275923
 Two electron energy                 9017.93248767
 Virial quotient                       -0.57456283
 Correlation energy                    -0.17241760
 !MRCI STATE 10.1 Energy             -24984.8202715674    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398320 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398320 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398320 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096740 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096740 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096740 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96246267 (fixed)   0.96246267 (relaxed)   0.96246267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511318   -0.00752605   -0.11635489
 Singles      0.02990971   -0.04769126   -0.04895639
 Pairs        0.04450088    0.00000000   -0.00710624
 Total        1.07952377   -0.05521731   -0.17241753
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92222820
 One electron energy               -34002.75196897
 Two electron energy                 9017.93169748
 Virial quotient                       -0.57456284
 Correlation energy                    -0.17241753
 !MRCI STATE 11.1 Energy             -24984.8202714884    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398278 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398278 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398278 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096704 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096704 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096704 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.94784873 (fixed)   0.96246214 (relaxed)   0.96246214 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511297   -0.00752574   -0.22327197
 Singles      0.02991119   -0.04769185   -0.04895718
 Pairs        0.04450081    0.11542044    0.09981164
 Total        1.07952497    0.06020285   -0.17241751
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92234019
 One electron energy               -34002.75250705
 Two electron energy                 9017.93223557
 Virial quotient                       -0.57456284
 Correlation energy                    -0.17241751
 !MRCI STATE 12.1 Energy             -24984.8202714735    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398297 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398297 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398297 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096719 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096719 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096719 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95311802 (fixed)   0.96246214 (relaxed)   0.96246214 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00511297   -0.00752574   -0.11635417
 Singles      0.02991120   -0.04769185   -0.04895718
 Pairs        0.04450080    0.00000000   -0.00710617
 Total        1.07952496   -0.05521759   -0.17241751
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.92234045
 One electron energy               -34002.75250848
 Two electron energy                 9017.93223701
 Virial quotient                       -0.57456284
 Correlation energy                    -0.17241751
 !MRCI STATE 13.1 Energy             -24984.8202714735    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.83398297 (Davidson, fixed reference)
 Cluster corrected energies        -24984.83398297 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.83398297 (Davidson, rotated reference)

 Cluster corrected energies        -24984.83096719 (Pople, fixed reference)
 Cluster corrected energies        -24984.83096719 (Pople, relaxed reference)
 Cluster corrected energies        -24984.83096719 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96606109 (fixed)   0.96749344 (relaxed)   0.96606117 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00860292   -0.00859578   -0.11793326
 Singles      0.02260161   -0.04468409   -0.04528028
 Pairs        0.04029195   -0.00000000   -0.00637666
 Total        1.07149648   -0.05327988   -0.16959020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286296
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.00644490
 One electron energy               -33998.30287735
 Two electron energy                 9013.48543319
 Virial quotient                       -0.57456166
 Correlation energy                    -0.16458120
 !MRCI STATE 14.1 Energy             -24984.8174441573    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.82921113 (Davidson, fixed reference)
 Cluster corrected energies        -24984.82868939 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.82921113 (Davidson, rotated reference)

 Cluster corrected energies        -24984.82658716 (Pople, fixed reference)
 Cluster corrected energies        -24984.82616822 (Pople, relaxed reference)
 Cluster corrected energies        -24984.82658716 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96606102 (fixed)   0.96749384 (relaxed)   0.96606108 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00860331   -0.00859543   -0.11796089
 Singles      0.02260134   -0.04468396   -0.04528009
 Pairs        0.04029203    0.00002987   -0.00634878
 Total        1.07149667   -0.05324952   -0.16958976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286296
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.00640910
 One electron energy               -33998.30285228
 Two electron energy                 9013.48540855
 Virial quotient                       -0.57456166
 Correlation energy                    -0.16458077
 !MRCI STATE 15.1 Energy             -24984.8174437258    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.82921070 (Davidson, fixed reference)
 Cluster corrected energies        -24984.82868878 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.82921070 (Davidson, rotated reference)

 Cluster corrected energies        -24984.82658673 (Pople, fixed reference)
 Cluster corrected energies        -24984.82616765 (Pople, relaxed reference)
 Cluster corrected energies        -24984.82658673 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96606101 (fixed)   0.96749383 (relaxed)   0.96606107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00860331   -0.00859543   -0.11793302
 Singles      0.02260133   -0.04468396   -0.04528009
 Pairs        0.04029206   -0.00000000   -0.00637666
 Total        1.07149670   -0.05327939   -0.16958976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286296
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.00640945
 One electron energy               -33998.30285311
 Two electron energy                 9013.48540939
 Virial quotient                       -0.57456166
 Correlation energy                    -0.16458077
 !MRCI STATE 16.1 Energy             -24984.8174437258    

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.82921071 (Davidson, fixed reference)
 Cluster corrected energies        -24984.82868879 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.82921071 (Davidson, rotated reference)

 Cluster corrected energies        -24984.82658673 (Pople, fixed reference)
 Cluster corrected energies        -24984.82616766 (Pople, relaxed reference)
 Cluster corrected energies        -24984.82658673 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      129.93       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       274.11    204.26     46.94      7.94      0.41     14.35
 REAL TIME  *       290.84 SEC
 DISK USED  *       288.78 MB (local),        1.76 GB (total)
 SF USED    *         1.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =    -24984.90913156  AU                              
 SETTING HLSDIAG(9)     =    -24984.90913155  AU                              
 SETTING HLSDIAG(10)    =    -24984.90913155  AU                              
 SETTING HLSDIAG(11)    =    -24984.90913127  AU                              
 SETTING HLSDIAG(12)    =    -24984.90913103  AU                              
 SETTING HLSDIAG(13)    =    -24984.85666217  AU                              
 SETTING HLSDIAG(14)    =    -24984.83398438  AU                              
 SETTING HLSDIAG(15)    =    -24984.83398438  AU                              
 SETTING HLSDIAG(16)    =    -24984.83398398  AU                              
 SETTING HLSDIAG(17)    =    -24984.83398320  AU                              
 SETTING HLSDIAG(18)    =    -24984.83398278  AU                              
 SETTING HLSDIAG(19)    =    -24984.83398297  AU                              
 SETTING HLSDIAG(20)    =    -24984.83398297  AU                              
 SETTING HLSDIAG(21)    =    -24984.82921113  AU                              
 SETTING HLSDIAG(22)    =    -24984.82921070  AU                              
 SETTING HLSDIAG(23)    =    -24984.82921071  AU                              


         HLSDIAG
    -24984.97677
    -24984.89638
    -24984.89638
    -24984.89638
    -24984.89638
    -24984.89638
    -24984.85133
    -24984.90913
    -24984.90913
    -24984.90913
    -24984.90913
    -24984.90913
    -24984.85666
    -24984.83398
    -24984.83398
    -24984.83398
    -24984.83398
    -24984.83398
    -24984.83398
    -24984.83398
    -24984.82921
    -24984.82921
    -24984.82921
                                                  

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

 Time for Seward_LS:     275.22 sec

 CPU time:    275.22 sec, REAL time:    286.42 sec


 SORTLS1 read    19073439. and wrote    19073439. SO integrals in    84 records. CPU time:      0.14 sec, REAL time:      0.27 sec
 SORTLS2 read    19073439. and wrote    93046131. SO integrals in    18 records. CPU time:      0.06 sec, REAL time:      0.25 sec

 FILE SIZES: FILE 1:   166.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   166.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      129.93       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       553.74    279.60    204.26     46.94      7.94      0.41     14.35
 REAL TIME  *       582.08 SEC
 DISK USED  *       288.87 MB (local),        2.73 GB (total)
 SF USED    *         1.08 GB
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

 Original energies: -24984.963988 -24984.882389 -24984.882389 -24984.882389 -24984.882389 -24984.882389 -24984.838374
 Replaced energies: -24984.976772 -24984.896381 -24984.896381 -24984.896381 -24984.896381 -24984.896381 -24984.851327

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -24984.895131 -24984.895131 -24984.895131 -24984.895131 -24984.895131 -24984.843534 -24984.820272 -24984.820272
                    -24984.820272 -24984.820272 -24984.820271 -24984.820271 -24984.820271 -24984.817444 -24984.817444 -24984.817444
 Replaced energies: -24984.909132 -24984.909132 -24984.909132 -24984.909131 -24984.909131 -24984.856662 -24984.833984 -24984.833984
                    -24984.833984 -24984.833983 -24984.833983 -24984.833983 -24984.833983 -24984.829211 -24984.829211 -24984.829211



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24984.97677232

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.01

    2   2.1  0.0  0.0       0.00   17643.83       0.00       0.00       0.00       0.00       0.00      -0.00     165.99      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     141.00

    3   3.1  0.0  0.0       0.00       0.00   17643.83       0.00       0.00       0.00       0.00       0.00     -67.07      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     110.32

    4   4.1  0.0  0.0       0.00       0.00       0.00   17643.83       0.00       0.00       0.00      -0.00      -0.00     -89.72
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     -89.72      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   17643.83       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      89.71       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   17643.83       0.00      89.71       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27532.04      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00      89.71      -0.00   14845.43       0.00       0.00
                            0.00       0.00      -0.00       0.00     -89.71       0.00       0.00      -0.00      -0.00      -0.00

    9   2.1  1.0  1.0       0.01     165.99     -67.07      -0.00      -0.00       0.00       0.00       0.00   14845.43       0.00
                            0.00      -0.00      -0.00      89.72      -0.00      -0.00      -0.00       0.00      -0.00     -93.31

   10   3.1  1.0  1.0       0.00      -0.00      -0.00     -89.72      -0.00       0.00       0.00       0.00       0.00   14845.43
                           -0.01    -141.00    -110.32       0.00       0.00      -0.00      -0.00       0.00      93.31      -0.00

   11   4.1  1.0  1.0       0.00      -0.00      -0.00       0.00    -155.27      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     155.27      -0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00      -0.00      -0.00      89.65       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      89.65      -0.00    -186.53      -0.00      -0.00

   13   6.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   14   7.1  1.0  1.0      -0.00       0.00      -0.00      13.48       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.11       2.76     -14.07       0.00       0.00       0.00       0.04       0.00       1.48       0.00

   15   8.1  1.0  1.0       0.11       1.23     -14.28      -0.00      -0.00       0.00      -0.04       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -13.48       0.00       0.00       0.00      -0.00       0.00      -1.48

   16   9.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -0.00      11.30      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     -11.30      -0.00       0.00       0.00       0.00      -0.00

   17  10.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -0.00       8.60      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       8.60      -0.00      -0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00      -0.00      -0.00      -0.00     -11.28      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     -11.28       0.00     -21.36       0.00      -0.00

   19  12.1  1.0  1.0       0.18     -12.26      -4.79      -0.00       0.00       0.00      -0.06       0.00       0.00       0.00
                            0.00      -0.00      -0.00       4.46      -0.00      -0.00      -0.00      -0.00       0.00     -27.34

   20  13.1  1.0  1.0      -0.00       0.00       0.00      -4.46       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      13.11      -1.22      -0.00      -0.00      -0.00       0.06       0.00      27.34      -0.00

   21  14.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00     334.05      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     334.05      -0.00       0.00       0.00       0.00      -0.00

   22  15.1  1.0  1.0    -448.18     144.27     357.53       0.00       0.00       0.00     176.61       0.00       0.00       0.00
                            0.00       0.00       0.00    -334.04       0.00      -0.00      -0.00       0.00       0.00     -32.39

   23  16.1  1.0  1.0      -0.00       0.00       0.00    -334.04       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -448.18     237.44    -303.75      -0.00       0.00      -0.00     176.61       0.00     -32.39       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -65.99
                           -0.00      35.32    -250.69       0.00       0.00       0.00      -0.00      -0.00     -65.99       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     126.87       0.00      65.99       0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      65.99       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -126.87      -0.00       0.00      -0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     114.23       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     114.23

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -65.95       0.00
                           -0.00      -0.00       0.00     253.57      -0.00      -0.00      -0.00       0.00       0.00      65.95

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.44       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -1.00       0.00       0.00       0.00      -0.00      -0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       1.00       0.00     -18.44       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -15.37
                           -0.00      -2.23      15.83      -0.00      -0.00      -0.00      -0.00       0.00     -15.37      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.81
                            0.34      22.18       3.12      -0.00       0.00      -0.00      -0.11       0.00      11.81      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.29       0.00
                            0.00       0.00       0.00      15.84       0.00      -0.00      -0.00      -0.00       0.00     -15.29

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      20.00       0.00       5.96      -0.00       0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.96       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00     -20.00       0.00       0.00       0.00       0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -22.93
                         -633.83    -539.86     -76.06       0.00      -0.00       0.00     249.81      -0.00      22.93       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     472.42      -0.00     -22.94      -0.00       0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.94       0.00       0.00
                            0.00       0.00      -0.00       0.00     472.42       0.00       0.00      -0.00      -0.00       0.00

   40   1.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00      89.71      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      89.71      -0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.01     165.99     -67.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -89.72       0.00       0.00       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00      -0.00      -0.00     -89.72      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     141.00     110.32      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00      -0.00      -0.00       0.00    -155.27      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -155.27       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      89.65       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     -89.65       0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0      -0.00       0.00      -0.00      13.48       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.11      -2.76      14.07      -0.00      -0.00      -0.00      -0.04      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.11       1.23     -14.28      -0.00      -0.00       0.00      -0.04       0.00       0.00       0.00
                            0.00       0.00       0.00      13.48      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -0.00      11.30      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      11.30       0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00       8.60      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -8.60       0.00       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00     -11.28      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      11.28      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.18     -12.26      -4.79      -0.00       0.00       0.00      -0.06       0.00       0.00       0.00
                           -0.00       0.00       0.00      -4.46       0.00       0.00       0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0      -0.00       0.00       0.00      -4.46       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18     -13.11       1.22       0.00       0.00       0.00      -0.06      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00     334.05      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -334.05       0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0    -448.18     144.27     357.53       0.00       0.00       0.00     176.61       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     334.04      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0      -0.00       0.00       0.00    -334.04       0.00      -0.00      -0.00       0.00       0.00       0.00
                          448.18    -237.44     303.75       0.00      -0.00       0.00    -176.61      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.11       0.00       0.00       0.00       0.18      -0.00
                            0.00      -0.00      -0.00       0.11       0.00      -0.00       0.00      -0.00      -0.00       0.18

    2   2.1  0.0  0.0      -0.00       0.00      -0.00       0.00       1.23      -0.00      -0.00      -0.00     -12.26       0.00
                            0.00       0.00       0.00      -2.76       0.00       0.00      -0.00       0.00       0.00     -13.11

    3   3.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00     -14.28      -0.00      -0.00      -0.00      -4.79       0.00
                            0.00      -0.00      -0.00      14.07       0.00       0.00       0.00       0.00       0.00       1.22

    4   4.1  0.0  0.0       0.00      -0.00       0.00      13.48      -0.00      -0.00       0.00      -0.00      -0.00      -4.46
                            0.00      -0.00      -0.00      -0.00      13.48      -0.00      -0.00       0.00      -4.46       0.00

    5   5.1  0.0  0.0    -155.27      89.65       0.00       0.00      -0.00      -0.00      -0.00     -11.28       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      11.30      -8.60      -0.00       0.00       0.00

    6   6.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00      11.30       8.60      -0.00       0.00       0.00
                         -155.27     -89.65       0.00      -0.00      -0.00       0.00       0.00      11.28       0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.04      -0.00      -0.00       0.00      -0.06       0.00
                            0.00       0.00       0.00      -0.04      -0.00      -0.00       0.00      -0.00       0.00      -0.06

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     186.53       0.00      -0.00       0.00      -0.00      -0.00      21.36       0.00      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -1.48      -0.00      -0.00      -0.00      -0.00      -0.00     -27.34

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       1.48       0.00      -0.00       0.00      27.34       0.00

   11   4.1  1.0  1.0   14845.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      29.20      -0.00       0.00      -0.00

   12   5.1  1.0  1.0       0.00   14845.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      21.36       0.00       0.00       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   26361.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.07       0.00      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   31338.33       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00    -309.36       0.00      -0.00      -0.00      23.75      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   31338.33       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     309.36      -0.00       0.00       0.00      -0.00       0.00     -23.75

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   31338.42       0.00       0.00       0.00       0.00
                            0.00     -21.36       0.00      -0.00      -0.00      -0.00      -0.00    -207.29       0.00      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   31338.59       0.00       0.00       0.00
                          -29.20      -0.00      -0.07       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.68       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     207.29      -0.00       0.00       0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.64       0.00
                           -0.00      -0.00       0.00     -23.75      -0.00      -0.00      -0.00      -0.00      -0.00    -102.32

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.64
                            0.00       0.00       0.00       0.00      23.75       0.00      -0.00       0.00     102.32       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           37.10       0.00     130.14       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.26      -0.00      -0.00       0.00      -0.00      -0.00       0.12

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.26       0.00       0.00       0.00       0.12      -0.00

   24   1.1  1.0  0.0       0.00      -0.00      -0.00      18.44      -0.00       0.00      -0.00       0.00      -0.00      -5.96
                            0.00      -0.00      -0.00      -0.00      18.44      -0.00      -0.00       0.00      -5.96      -0.00

   25   2.1  1.0  0.0    -114.23      65.95      -0.00      -0.00      -0.00      -0.00      -0.00     -15.29       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      15.37     -11.81      -0.00       0.00      -0.00

   26   3.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      15.37      11.81      -0.00      -0.00       0.00
                         -114.23     -65.95      -0.00       0.00      -0.00       0.00       0.00      15.29      -0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00      -0.00       0.00      -1.01       0.00       0.00       0.00     -16.66       0.00
                           -0.00       0.00       0.00      -1.01      -0.00       0.00      -0.00      -0.00       0.00     -16.66

   28   5.1  1.0  0.0      -0.00       0.00      -0.00      -0.00     -18.98      -0.00       0.00      -0.00      -3.84      -0.00
                           -0.00       0.00       0.00      18.98       0.00       0.00       0.00      -0.00       0.00       3.84

   29   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.03       0.00       0.00       0.00       0.04       0.00
                           -0.00      -0.00       0.00       0.03      -0.00      -0.00      -0.00       0.00      -0.00       0.04

   30   7.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00     -96.16      10.26       0.00      -0.00      -0.00
                            1.01     -18.98      -0.03      -0.00      -0.00       0.00      -0.00      82.86      -0.00       0.00

   31   8.1  1.0  0.0       1.01      18.98      -0.03       0.00      -0.00      -0.00       0.00     -82.86       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00     -96.16     -10.26      -0.00       0.00       0.00

   32   9.1  1.0  0.0      -0.00       0.00      -0.00      96.16       0.00      -0.00       0.00      -0.00      -0.00     110.46
                           -0.00      -0.00       0.00      -0.00      96.16       0.00       0.00       0.00     110.46       0.00

   33  10.1  1.0  0.0      -0.00      -0.00      -0.00     -10.26      -0.00      -0.00      -0.00       0.00       0.00    -179.12
                            0.00      -0.00       0.00       0.00      10.26      -0.00       0.00       0.00     179.12       0.00

   34  11.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      82.86       0.00      -0.00      -0.00    -120.69      -0.00
                            0.00       0.00      -0.00     -82.86       0.00      -0.00      -0.00      -0.00      -0.00     120.69

   35  12.1  1.0  0.0      16.66       3.84      -0.04       0.00      -0.00       0.00      -0.00     120.69       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00    -110.46    -179.12       0.00       0.00      -0.00

   36  13.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00    -110.46     179.12       0.00      -0.00      -0.00
                           16.66      -3.84      -0.04      -0.00      -0.00      -0.00      -0.00    -120.69       0.00       0.00

   37  14.1  1.0  0.0      -0.00       0.00       0.00      -0.08       0.00      -0.00      -0.00       0.00      -0.00      -0.26
                           -0.00       0.00       0.00      -0.00       0.08       0.00       0.00      -0.00       0.26      -0.00

   38  15.1  1.0  0.0     -13.39     -22.90      91.99       0.00       0.00       0.00      -0.00       0.10      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.15      -0.27       0.00       0.00       0.00

   39  16.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       0.15      -0.27      -0.00       0.00       0.00
                           13.39     -22.90     -91.99       0.00      -0.00       0.00      -0.00       0.10       0.00      -0.00

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

    1   1.1  0.0  0.0       0.00    -448.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     448.18       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0      -0.00     144.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -237.44     -35.32      -0.00       0.00       0.00       0.00      -0.00       0.00

    3   3.1  0.0  0.0      -0.00     357.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     303.75     250.69       0.00       0.00      -0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00    -334.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     334.04       0.00      -0.00       0.00       0.00       0.00    -253.57      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -334.05      -0.00      -0.00      -0.00       0.00     126.87       0.00       0.00       0.00       1.00

    6   6.1  0.0  0.0     334.05       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00    -126.87       0.00       0.00       0.00       0.00      -0.00

    7   7.1  0.0  0.0      -0.00     176.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -176.61       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      65.99      -0.00       0.00       0.00     -18.44
                           -0.00      -0.00      -0.00       0.00     -65.99       0.00       0.00      -0.00      -0.00      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     114.23     -65.95       0.00       0.00
                           -0.00      -0.00      32.39      65.99      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00     -65.99      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      32.39      -0.00      -0.00       0.00      -0.00    -114.23     -65.95      -0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00    -114.23      -0.00       0.00      -0.00       0.00      -0.00
                          -37.10      -0.00      -0.00      -0.00       0.00     114.23       0.00       0.00       0.00      -1.01

   12   5.1  1.0  1.0       0.00       0.00       0.00      -0.00      65.95      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      65.95      -0.00      -0.00       0.00      18.98

   13   6.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                         -130.14       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.03

   14   7.1  1.0  1.0       0.00       0.00       0.00      18.44      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.26       0.00       0.00      -0.00      -0.00       1.01     -18.98      -0.03       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.01     -18.98       0.03      -0.00
                           -0.00       0.00      -0.26     -18.44       0.00       0.00       0.00      -0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      15.37       0.00      -0.00       0.00     -96.16
                           -0.00       0.00      -0.00       0.00     -15.37      -0.00      -0.00      -0.00       0.00      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      11.81       0.00       0.00       0.00      10.26
                           -0.00      -0.00      -0.00       0.00      11.81      -0.00       0.00      -0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00     -15.29      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -15.29       0.00       0.00      -0.00     -82.86

   19  12.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00     -16.66      -3.84       0.04      -0.00
                            0.00       0.00      -0.12       5.96      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00      -5.96      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.12       0.00       0.00       0.00      -0.00      16.66      -3.84      -0.04      -0.00

   21  14.1  1.0  1.0   32385.94       0.00       0.00       0.00       0.00      22.93       0.00      -0.00      -0.00       0.08
                           -0.00       0.00      -0.00      -0.00      22.93       0.00      -0.00       0.00       0.00      -0.00

   22  15.1  1.0  1.0       0.00   32386.03       0.00      -0.00      -0.00      -0.00      13.39      22.90     -91.99      -0.00
                           -0.00       0.00     969.11     -22.94      -0.00       0.00       0.00       0.00      -0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00   32386.03     -22.94      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00    -969.11      -0.00      -0.00      -0.00       0.00      13.39     -22.90     -91.99       0.00

   24   1.1  1.0  0.0       0.00      -0.00     -22.94   14845.43       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      22.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00   14845.43       0.00       0.00       0.00       0.00       0.00
                          -22.93       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0      22.93      -0.00      -0.00       0.00       0.00   14845.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00      13.39       0.00       0.00       0.00       0.00   14845.49       0.00       0.00       0.00
                            0.00      -0.00     -13.39      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0      -0.00      22.90      -0.00       0.00       0.00       0.00       0.00   14845.55       0.00       0.00
                           -0.00      -0.00      22.90      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0      -0.00     -91.99       0.00       0.00       0.00       0.00       0.00       0.00   26361.13       0.00
                           -0.00       0.00      91.99      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0       0.08      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.33
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.00      -0.00      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.27       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.26      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0       0.00      -0.00    -685.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -685.28      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          685.28       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0     685.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     -65.99       0.00      -0.00      -0.00      18.44
                           -0.00      -0.00      -0.00      -0.00     -65.99       0.00       0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00    -114.23      65.95      -0.00      -0.00
                           -0.00      -0.00      -0.00      65.99       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00      65.99       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -114.23     -65.95      -0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00      -0.00     114.23       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     114.23      -0.00       0.00       0.00      -1.01

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00     -65.95       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      65.95      -0.00       0.00       0.00      18.98

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.03

   46   7.1  1.0 -1.0       0.00       0.00       0.00     -18.44       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.01     -18.98      -0.03      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.01      18.98      -0.03       0.00
                           -0.00      -0.00      -0.00     -18.44       0.00       0.00       0.00      -0.00       0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     -15.37      -0.00       0.00      -0.00      96.16
                           -0.00      -0.00      -0.00       0.00     -15.37      -0.00      -0.00      -0.00       0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     -11.81      -0.00      -0.00      -0.00     -10.26
                           -0.00      -0.00      -0.00       0.00      11.81      -0.00       0.00      -0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00      15.29       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -15.29       0.00       0.00      -0.00     -82.86

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00      16.66       3.84      -0.04       0.00
                           -0.00      -0.00      -0.00       5.96      -0.00       0.00      -0.00      -0.00       0.00       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       5.96       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      16.66      -3.84      -0.04      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     -22.93      -0.00       0.00       0.00      -0.08
                           -0.00      -0.00      -0.00      -0.00      22.93       0.00      -0.00       0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -13.39     -22.90      91.99       0.00
                           -0.00      -0.00      -0.00     -22.94      -0.00       0.00       0.00       0.00      -0.00       0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00      22.94       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      13.39     -22.90     -91.99       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.34      -0.00       0.00       0.00     633.83       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       2.23     -22.18      -0.00       0.00      -0.00     539.86       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -15.83      -3.12      -0.00      -0.00       0.00      76.06       0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00     -15.84      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      20.00       0.00      -0.00    -472.42     -89.71

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      89.71
                           -1.00       0.00       0.00       0.00     -20.00      -0.00      -0.00    -472.42      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.11       0.00      -0.00      -0.00    -249.81       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       5.96      -0.00       0.00      22.94       0.00
                           18.44      -0.00      -0.00       0.00      -5.96      -0.00       0.00      22.94       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00      15.29      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      15.37     -11.81      -0.00       0.00      -0.00     -22.93       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00     -15.37     -11.81       0.00       0.00      -0.00     -22.93       0.00       0.00       0.00
                           -0.00       0.00       0.00      15.29      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   11   4.1  1.0  1.0       1.01      -0.00      -0.00      -0.00      16.66      -0.00      -0.00     -13.39      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     -16.66       0.00      -0.00     -13.39       0.00

   12   5.1  1.0  1.0      18.98       0.00      -0.00       0.00       3.84       0.00       0.00     -22.90       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       3.84      -0.00      -0.00      22.90       0.00

   13   6.1  1.0  1.0      -0.03      -0.00      -0.00      -0.00      -0.04      -0.00       0.00      91.99      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.04      -0.00       0.00      91.99       0.00

   14   7.1  1.0  1.0       0.00      96.16     -10.26      -0.00       0.00       0.00      -0.08       0.00       0.00       0.00
                           -0.00       0.00      -0.00      82.86      -0.00       0.00       0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00      -0.00      82.86      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00     -96.16     -10.26      -0.00       0.00       0.00      -0.08      -0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00    -110.46      -0.00       0.00       0.15       0.00
                           96.16      -0.00       0.00       0.00     110.46       0.00      -0.00       0.15      -0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00     179.12      -0.00      -0.00      -0.27       0.00
                           10.26      -0.00      -0.00       0.00     179.12       0.00      -0.00       0.27       0.00       0.00

   18  11.1  1.0  1.0     -82.86      -0.00       0.00      -0.00     120.69       0.00       0.00       0.10      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     120.69       0.00      -0.00      -0.10       0.00

   19  12.1  1.0  1.0       0.00      -0.00       0.00    -120.69       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00    -110.46    -179.12       0.00      -0.00      -0.00      -0.26      -0.00      -0.00       0.00

   20  13.1  1.0  1.0      -0.00     110.46    -179.12      -0.00       0.00      -0.00      -0.26       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -120.69       0.00      -0.00       0.00      -0.00       0.00       0.00

   21  14.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00       0.26       0.00       0.00     685.28       0.00
                            0.08       0.00       0.00      -0.00       0.26      -0.00      -0.00    -685.28      -0.00       0.00

   22  15.1  1.0  1.0      -0.00      -0.00       0.00      -0.10       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.15      -0.27       0.00       0.00       0.00     685.28      -0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00      -0.15       0.27       0.00      -0.00      -0.00    -685.28      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.10       0.00      -0.00       0.00      -0.00       0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      65.99

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -65.99
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      18.44
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   8.1  1.0  0.0   31338.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.44

   32   9.1  1.0  0.0       0.00   31338.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  10.1  1.0  0.0       0.00       0.00   31338.59       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   31338.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   31338.64       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       5.96

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   31338.64       0.00       0.00       0.00      -5.96
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32385.94       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32386.03       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -22.94

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32386.03     -22.94
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -0.00      -5.96       0.00      -0.00     -22.94   14845.43
                           18.44      -0.00      -0.00       0.00      -5.96      -0.00       0.00      22.94       0.00       0.00

   41   2.1  1.0 -1.0      -0.00      -0.00      -0.00     -15.29       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      15.37     -11.81      -0.00       0.00      -0.00     -22.93       0.00       0.00      -0.00

   42   3.1  1.0 -1.0      -0.00      15.37      11.81      -0.00      -0.00       0.00      22.93      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      15.29      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0      -1.01       0.00       0.00       0.00     -16.66       0.00       0.00      13.39       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     -16.66       0.00      -0.00     -13.39      -0.00

   44   5.1  1.0 -1.0     -18.98      -0.00       0.00      -0.00      -3.84      -0.00      -0.00      22.90      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       3.84      -0.00      -0.00      22.90     186.53

   45   6.1  1.0 -1.0       0.03       0.00       0.00       0.00       0.04       0.00      -0.00     -91.99       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.04      -0.00       0.00      91.99       0.00

   46   7.1  1.0 -1.0      -0.00     -96.16      10.26       0.00      -0.00      -0.00       0.08      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      82.86      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0      -0.00      -0.00       0.00     -82.86       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00     -96.16     -10.26      -0.00       0.00       0.00      -0.08      -0.00       0.00       0.00

   48   9.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00     110.46       0.00      -0.00      -0.15       0.00
                           96.16       0.00       0.00       0.00     110.46       0.00      -0.00       0.15      -0.00      -0.00

   49  10.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00    -179.12       0.00       0.00       0.27       0.00
                           10.26      -0.00       0.00       0.00     179.12       0.00      -0.00       0.27       0.00      -0.00

   50  11.1  1.0 -1.0      82.86       0.00      -0.00      -0.00    -120.69      -0.00      -0.00      -0.10       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     120.69       0.00      -0.00      -0.10      21.36

   51  12.1  1.0 -1.0      -0.00       0.00      -0.00     120.69       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00    -110.46    -179.12       0.00       0.00      -0.00      -0.26      -0.00      -0.00       0.00

   52  13.1  1.0 -1.0       0.00    -110.46     179.12       0.00      -0.00      -0.00       0.26      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00    -120.69       0.00       0.00       0.00      -0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00      -0.26       0.00      -0.00    -685.28       0.00
                            0.08       0.00       0.00      -0.00       0.26      -0.00       0.00    -685.28      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00      -0.00       0.10      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.15      -0.27       0.00       0.00       0.00     685.28       0.00       0.00      -0.00

   55  16.1  1.0 -1.0      -0.00       0.15      -0.27      -0.00       0.00       0.00     685.28       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.10       0.00      -0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.01       0.00       0.00       0.00       0.00      -0.00       0.11       0.00       0.00       0.00
                            0.00      -0.01      -0.00       0.00       0.00      -0.11      -0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0     165.99      -0.00      -0.00       0.00      -0.00       0.00       1.23      -0.00      -0.00      -0.00
                           -0.00    -141.00      -0.00      -0.00      -0.00       2.76      -0.00      -0.00       0.00      -0.00

    3   3.1  0.0  0.0     -67.07      -0.00      -0.00      -0.00      -0.00      -0.00     -14.28      -0.00      -0.00      -0.00
                           -0.00    -110.32      -0.00       0.00       0.00     -14.07      -0.00      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00     -89.72       0.00      -0.00       0.00      13.48      -0.00      -0.00       0.00      -0.00
                           89.72       0.00      -0.00       0.00       0.00       0.00     -13.48       0.00       0.00      -0.00

    5   5.1  0.0  0.0      -0.00      -0.00    -155.27      89.65       0.00       0.00      -0.00      -0.00      -0.00     -11.28
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -11.30       8.60       0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      11.30       8.60      -0.00
                           -0.00      -0.00     155.27      89.65      -0.00       0.00       0.00      -0.00      -0.00     -11.28

    7   7.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.04      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.04       0.00       0.00      -0.00       0.00

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

   24   1.1  1.0  0.0      -0.00      65.99      -0.00       0.00       0.00     -18.44       0.00      -0.00       0.00      -0.00
                          -65.99       0.00       0.00      -0.00      -0.00      -0.00      18.44      -0.00      -0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00     114.23     -65.95       0.00       0.00       0.00       0.00       0.00      15.29
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      15.37     -11.81      -0.00

   26   3.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -15.37     -11.81       0.00
                            0.00      -0.00    -114.23     -65.95      -0.00       0.00      -0.00       0.00       0.00      15.29

   27   4.1  1.0  0.0    -114.23      -0.00       0.00      -0.00       0.00      -0.00       1.01      -0.00      -0.00      -0.00
                            0.00     114.23       0.00       0.00       0.00      -1.01      -0.00       0.00      -0.00      -0.00

   28   5.1  1.0  0.0      65.95      -0.00       0.00       0.00       0.00       0.00      18.98       0.00      -0.00       0.00
                            0.00      65.95      -0.00      -0.00       0.00      18.98       0.00       0.00       0.00      -0.00

   29   6.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.03      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.03      -0.00      -0.00      -0.00       0.00

   30   7.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      96.16     -10.26      -0.00
                           -0.00      -0.00       1.01     -18.98      -0.03       0.00      -0.00       0.00      -0.00      82.86

   31   8.1  1.0  0.0      -0.00      -0.00      -1.01     -18.98       0.03      -0.00      -0.00       0.00      -0.00      82.86
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -96.16     -10.26      -0.00

   32   9.1  1.0  0.0      -0.00      15.37       0.00      -0.00       0.00     -96.16      -0.00      -0.00      -0.00       0.00
                          -15.37      -0.00      -0.00      -0.00       0.00      -0.00      96.16      -0.00       0.00       0.00

   33  10.1  1.0  0.0      -0.00      11.81       0.00       0.00       0.00      10.26       0.00       0.00      -0.00      -0.00
                           11.81      -0.00       0.00      -0.00       0.00       0.00      10.26      -0.00      -0.00       0.00

   34  11.1  1.0  0.0     -15.29      -0.00       0.00      -0.00       0.00       0.00     -82.86      -0.00       0.00      -0.00
                            0.00     -15.29       0.00       0.00      -0.00     -82.86       0.00      -0.00      -0.00       0.00

   35  12.1  1.0  0.0       0.00      -0.00     -16.66      -3.84       0.04      -0.00       0.00      -0.00       0.00    -120.69
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -110.46    -179.12       0.00

   36  13.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     110.46    -179.12      -0.00
                            0.00      -0.00      16.66      -3.84      -0.04      -0.00      -0.00      -0.00      -0.00    -120.69

   37  14.1  1.0  0.0       0.00      22.93       0.00      -0.00      -0.00       0.08      -0.00       0.00       0.00      -0.00
                           22.93       0.00      -0.00       0.00       0.00      -0.00       0.08       0.00       0.00      -0.00

   38  15.1  1.0  0.0      -0.00      -0.00      13.39      22.90     -91.99      -0.00      -0.00      -0.00       0.00      -0.10
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.15      -0.27       0.00

   39  16.1  1.0  0.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.15       0.27       0.00
                           -0.00       0.00      13.39     -22.90     -91.99       0.00      -0.00       0.00      -0.00       0.10

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -186.53      -0.00       0.00      -0.00       0.00       0.00     -21.36

   41   2.1  1.0 -1.0   14845.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      93.31       0.00      -0.00       0.00       1.48       0.00       0.00       0.00       0.00

   42   3.1  1.0 -1.0       0.00   14845.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.31       0.00       0.00      -0.00      -0.00       0.00      -1.48      -0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00   14845.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00     -29.20       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00   14845.55       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -21.36      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26361.13       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.07      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   31338.33       0.00       0.00       0.00       0.00
                           -1.48      -0.00      -0.00      -0.00      -0.00      -0.00     309.36      -0.00       0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   31338.33       0.00       0.00       0.00
                           -0.00       1.48       0.00       0.00      -0.00    -309.36       0.00      -0.00      -0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.42       0.00       0.00
                           -0.00       0.00      -0.00      21.36      -0.00       0.00       0.00       0.00       0.00     207.29

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.59       0.00
                           -0.00      -0.00      29.20       0.00       0.07      -0.00       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31338.68
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    -207.29       0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      27.34       0.00       0.00      -0.00      23.75       0.00       0.00       0.00       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.34       0.00      -0.00      -0.00      -0.00      -0.00     -23.75      -0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -37.10      -0.00    -130.14      -0.00      -0.00      -0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      32.39      -0.00       0.00       0.00      -0.26       0.00       0.00      -0.00       0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           32.39      -0.00      -0.00      -0.00      -0.00       0.00      -0.26      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0       0.18      -0.00       0.00    -448.18      -0.00
                            0.00      -0.18       0.00       0.00    -448.18

    2   2.1  0.0  0.0     -12.26       0.00      -0.00     144.27       0.00
                           -0.00      13.11       0.00       0.00     237.44

    3   3.1  0.0  0.0      -4.79       0.00      -0.00     357.53       0.00
                           -0.00      -1.22      -0.00       0.00    -303.75

    4   4.1  0.0  0.0      -0.00      -4.46       0.00       0.00    -334.04
                            4.46      -0.00       0.00    -334.04      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     334.05       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00     334.05       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.06       0.00      -0.00     176.61      -0.00
                           -0.00       0.06       0.00      -0.00     176.61

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

   24   1.1  1.0  0.0       0.00       5.96      -0.00       0.00      22.94
                           -5.96      -0.00       0.00      22.94       0.00

   25   2.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -22.93       0.00       0.00

   26   3.1  1.0  0.0       0.00      -0.00     -22.93       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00

   27   4.1  1.0  0.0      16.66      -0.00      -0.00     -13.39      -0.00
                            0.00     -16.66       0.00      -0.00     -13.39

   28   5.1  1.0  0.0       3.84       0.00       0.00     -22.90       0.00
                            0.00       3.84      -0.00      -0.00      22.90

   29   6.1  1.0  0.0      -0.04      -0.00       0.00      91.99      -0.00
                           -0.00       0.04      -0.00       0.00      91.99

   30   7.1  1.0  0.0       0.00       0.00      -0.08       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00

   31   8.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.08      -0.00       0.00

   32   9.1  1.0  0.0       0.00    -110.46      -0.00       0.00       0.15
                          110.46       0.00      -0.00       0.15      -0.00

   33  10.1  1.0  0.0      -0.00     179.12      -0.00      -0.00      -0.27
                          179.12       0.00      -0.00       0.27       0.00

   34  11.1  1.0  0.0     120.69       0.00       0.00       0.10      -0.00
                           -0.00     120.69       0.00      -0.00      -0.10

   35  12.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.26      -0.00      -0.00

   36  13.1  1.0  0.0       0.00      -0.00      -0.26       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

   37  14.1  1.0  0.0       0.00       0.26       0.00       0.00     685.28
                            0.26      -0.00      -0.00    -685.28      -0.00

   38  15.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00     685.28      -0.00       0.00

   39  16.1  1.0  0.0      -0.00      -0.00    -685.28      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      27.34       0.00       0.00     -32.39

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -27.34      -0.00      -0.00     -32.39       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      37.10       0.00       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     130.14      -0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -23.75       0.00       0.00       0.26      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      23.75       0.00      -0.00       0.26

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00

   51  12.1  1.0 -1.0   31338.64       0.00       0.00       0.00       0.00
                            0.00     102.32      -0.00      -0.00       0.12

   52  13.1  1.0 -1.0       0.00   31338.64       0.00       0.00       0.00
                         -102.32      -0.00       0.00       0.12      -0.00

   53  14.1  1.0 -1.0       0.00       0.00   32385.94       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   32386.03       0.00
                            0.00      -0.12       0.00      -0.00    -969.11

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   32386.03
                           -0.12       0.00      -0.00     969.11       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by -24984.97677232 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   17643.826       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   17643.826       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   17643.832       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   17643.831       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   17643.832       0.000     126.864
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27532.039      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000     126.864      -0.000   14845.431
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.018     234.747     -94.852      -0.000      -0.000       0.000       0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000    -126.880      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000    -219.589      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000     126.787       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.003      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      19.067       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.155       1.740     -20.199      -0.000      -0.000       0.000      -0.061       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      15.987      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      12.158      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000     -15.954      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.256     -17.338      -6.776      -0.000       0.000       0.000      -0.090       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -6.304       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000     472.425      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+           -633.816     204.025     505.619       0.000       0.000       0.000     249.769       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000       0.000       0.000    -472.404       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      35.320    -250.692       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000     126.872       0.000      93.320

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000    -126.871      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.002      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     253.572      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.998       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.998       0.000     -26.074

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.231      15.831      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.337      22.175       3.124      -0.000       0.000      -0.000      -0.114       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      15.841       0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      20.002       0.000       8.427

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -20.002       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -633.833    -539.864     -76.062       0.000      -0.000       0.000     249.814      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000     472.420      -0.000     -32.441

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     472.420       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000    -126.864       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     126.880      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.018    -199.401    -156.020       0.000       0.000      -0.000      -0.001       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000     219.587      -0.000       0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     126.790      -0.000    -186.529

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.003      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.155       3.909     -19.893       0.000       0.000       0.000       0.061       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -19.066       0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     -15.987      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      12.159      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     -15.953       0.000     -21.357

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       6.304      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.255      18.535      -1.722      -0.000      -0.000      -0.000       0.090       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     472.425      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -472.404       0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -633.817     335.784    -429.565      -0.000       0.000      -0.000     249.769       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.018       0.000       0.000       0.000       0.000      -0.000       0.155       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>             234.747      -0.000      -0.000       0.000      -0.000       0.000       1.740      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             -94.852      -0.000      -0.000      -0.000      -0.000      -0.000     -20.199      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000    -126.880       0.000      -0.000       0.000      19.067      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000      -0.000    -219.589     126.787       0.003       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      15.987
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.001       0.000       0.000      -0.000      -0.000      -0.000      -0.061      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          14845.432       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   14845.432       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   14845.495       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   14845.548       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26361.131       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   31338.329       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   31338.329       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31338.418
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

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -93.320       0.000       0.000      -0.000      -0.000      -0.000      26.074      -0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      21.737

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000    -161.541     -93.264      -0.004       0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000     161.541       0.000       0.000       0.000      -1.424      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      93.264      -0.000       0.000       0.000      26.836       0.000       0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.004      -0.000      -0.000       0.000       0.036      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.424     -26.836      -0.036       0.000      -0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000    -135.987

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                              -21.737      -0.000      -0.000      -0.000       0.000      -0.000     135.987       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               16.704      -0.000       0.000      -0.000       0.000       0.000      14.514      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000     -21.626       0.000       0.000      -0.000    -117.186       0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000    -156.213

   13    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      23.565      -5.425      -0.052      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               32.432       0.000      -0.000       0.000       0.000      -0.000       0.112       0.000

   15    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.208

   16    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      18.937     -32.391    -130.094       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001     186.529       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -93.312      -0.000       0.000      -0.000      -1.485      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               93.312      -0.000      -0.000       0.000       0.000      -0.000       1.484       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      21.356

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.485       0.000       0.000       0.000       0.000       0.000    -309.365       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.484      -0.000      -0.000       0.000     309.365      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -21.356       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -29.202      -0.000      -0.069       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000     207.294

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -27.344      -0.000      -0.000       0.000     -23.751      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               27.344      -0.000       0.000       0.000       0.000       0.000      23.752       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      37.096       0.000     130.137       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.393       0.000      -0.000      -0.000       0.255      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.393       0.000       0.000       0.000       0.000      -0.000       0.255       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.256      -0.000       0.000    -633.816      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000     -17.338       0.000      -0.000     204.025       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -35.320

    3    1  |0 0>              -0.000      -0.000      -6.776       0.000      -0.000     505.619       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     250.692

    4    1  |0 0>               0.000      -0.000      -0.000      -6.304       0.000       0.000    -472.404       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>              -0.000     -15.954       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>              12.158      -0.000       0.000       0.000     472.425       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |0 0>              -0.000       0.000      -0.090       0.000      -0.000     249.769      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      93.320

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -26.074

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+          31338.589       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000   31338.682       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000   31338.640       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       8.427

   13    1  |1 1>+              0.000       0.000       0.000   31338.640       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   32385.937       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32386.031       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -32.441

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32386.030       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000   14845.431
                               -0.000       0.000      -8.427      -0.000       0.000      32.441       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -16.704      -0.000       0.000      -0.000     -32.432       0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      21.626      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -23.565       0.000      -0.000     -18.937      -0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       5.425      -0.000      -0.000      32.391      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.052      -0.000       0.000     130.094      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000     117.186      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              -14.514      -0.000       0.000       0.000      -0.112      -0.000       0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     156.213       0.000      -0.000       0.208      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     253.310       0.000      -0.000       0.388       0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     170.685       0.000      -0.000      -0.146      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -253.310       0.000       0.000      -0.000      -0.369      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000    -170.685       0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.369      -0.000       0.000    -969.136      -0.000      -0.000

   15    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.388       0.000       0.000       0.000     969.136       0.000       0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.146       0.000      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      21.357       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -27.344      -0.000      -0.000      32.393       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -93.320
                               -0.000       0.000      27.344       0.000       0.000      32.393      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.202      -0.000       0.000      -0.000     -37.096      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.069       0.000      -0.000      -0.000    -130.137       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      26.074
                               -0.000      -0.000      23.751      -0.000      -0.000      -0.255       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000     -23.752      -0.000       0.000      -0.255       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -207.294       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000    -102.323       0.000       0.000      -0.119       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -8.427
                               -0.000       0.000     102.323       0.000      -0.000      -0.119       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.119      -0.000       0.000     969.112      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -32.441
                                0.000       0.000       0.119      -0.000       0.000    -969.112      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.231

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000     -15.831

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.002    -253.572      -0.000       0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     126.871       0.000       0.000       0.000       0.998       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.872       0.000       0.000       0.000       0.000      -0.000      -0.998       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -93.320       0.000       0.000      -0.000      -0.000      -0.000      26.074      -0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      21.737

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000    -161.541     -93.264      -0.004       0.000      -0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000     161.541       0.000       0.000       0.000      -1.424      -0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      93.264      -0.000       0.000       0.000      26.836       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.004      -0.000      -0.000       0.000       0.036      -0.000      -0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.424     -26.836      -0.036       0.000      -0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000    -135.987

    9    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                              -21.737      -0.000      -0.000      -0.000       0.000      -0.000     135.987       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               16.704      -0.000       0.000      -0.000       0.000       0.000      14.514      -0.000

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000     -21.626       0.000       0.000      -0.000    -117.186       0.000      -0.000

   12    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000    -156.213

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      23.565      -5.425      -0.052      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               32.432       0.000      -0.000       0.000       0.000      -0.000       0.112       0.000

   15    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.208

   16    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      18.937     -32.391    -130.094       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           14845.432       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   14845.432       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   14845.495       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   14845.548       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26361.131       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31338.329       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   31338.329       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   31338.418
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

    1    1  |1 1>-             -0.000      93.320      -0.000       0.000       0.000     -26.074       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000     161.542     -93.262       0.004       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -21.737
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-           -161.542      -0.000       0.000      -0.000       0.000      -0.000       1.423      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-             93.262      -0.000       0.000       0.000       0.000       0.000      26.836       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.004      -0.000      -0.000      -0.000       0.000       0.000      -0.036      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000     135.988
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-             -0.000      -0.000      -1.423     -26.836       0.036      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      21.737       0.000      -0.000       0.000    -135.988      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-             -0.000      16.703       0.000       0.000       0.000      14.516       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 1>-            -21.626      -0.000       0.000      -0.000       0.000       0.000    -117.187      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000     -23.565      -5.426       0.052      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>-             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000     156.211
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000      32.432       0.000      -0.000      -0.000       0.112      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 1>-             -0.000      -0.000      18.936      32.391    -130.094      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.208
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.337      -0.000       0.000       0.000     633.833       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -22.175      -0.000       0.000      -0.000     539.864       0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.124      -0.000      -0.000       0.000      76.062       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.841      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      20.002       0.000      -0.000    -472.420     126.864

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -20.002      -0.000      -0.000    -472.420      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.114       0.000      -0.000      -0.000    -249.814       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -8.427      -0.000       0.000      32.441       0.000      -0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -16.704      -0.000       0.000      -0.000     -32.432       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      21.626      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -23.565       0.000      -0.000     -18.937       0.001

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       5.425      -0.000      -0.000      32.391    -186.529

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.052      -0.000       0.000     130.094      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000     117.186      -0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              -14.514      -0.000       0.000       0.000      -0.112      -0.000       0.000      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     156.213       0.000      -0.000       0.208      -0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000     253.310       0.000      -0.000       0.388       0.000       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     170.685       0.000      -0.000      -0.146     -21.357

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -253.310       0.000       0.000      -0.000      -0.369      -0.000      -0.000      -0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000    -170.685       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.369      -0.000       0.000    -969.136      -0.000       0.000

   15    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.388       0.000       0.000       0.000     969.136       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.146       0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      93.320
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -26.074
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>           31338.589       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000   31338.682       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000   31338.640       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   31338.640       0.000       0.000       0.000       8.427
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   32385.937       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32386.031       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32386.030      32.441
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000      -0.000       0.000       8.427      -0.000       0.000      32.441   14845.431
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000      21.626      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            -16.703       0.000       0.000      -0.000     -32.432       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000      -0.000      23.565      -0.000      -0.000     -18.936      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-             -0.000       0.000       5.426       0.000       0.000     -32.391       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      -0.052      -0.000       0.000     130.094      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-            -14.516      -0.000       0.000       0.000      -0.112       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -0.000     117.187      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000       0.000    -156.211      -0.000       0.000       0.208       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000      -0.000     253.311      -0.000      -0.000      -0.388       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000     170.684       0.000       0.000       0.147      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000    -170.684       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-           -253.311      -0.000       0.000       0.000      -0.369       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000      -0.000       0.000       0.369       0.000       0.000     969.135       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000      -0.147       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.388       0.000      -0.000      -0.000    -969.135      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.018       0.000      -0.000      -0.000       0.155       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     199.401       0.000       0.000       0.000      -3.909       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     156.020       0.000      -0.000      -0.000      19.893       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.880      -0.000       0.000      -0.000      -0.000      -0.000      19.066      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      15.987

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -219.587    -126.790       0.003      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000       0.000      -0.061      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001     186.529       0.000      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -93.312      -0.000       0.000      -0.000      -1.485      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               93.312      -0.000      -0.000       0.000       0.000      -0.000       1.484       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      21.356

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.485       0.000       0.000       0.000       0.000       0.000    -309.365       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.484      -0.000      -0.000       0.000     309.365      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -21.356       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -29.202      -0.000      -0.069       0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000     207.294

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -27.344      -0.000      -0.000       0.000     -23.751      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               27.344      -0.000       0.000       0.000       0.000       0.000      23.752       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      37.096       0.000     130.137       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.393       0.000      -0.000      -0.000       0.255      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.393       0.000       0.000       0.000       0.000      -0.000       0.255       0.000

    1    1  |1 0>               0.000     -93.320       0.000      -0.000      -0.000      26.074      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000    -161.542      93.262      -0.004      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      21.737
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>             161.542       0.000       0.000       0.000      -0.000       0.000      -1.423       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>             -93.262       0.000      -0.000       0.000      -0.000      -0.000     -26.836      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.004       0.000       0.000       0.000       0.000      -0.000       0.036       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000    -135.988
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       1.423      26.836      -0.036       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000     -21.737      -0.000       0.000      -0.000     135.988       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000     -16.703      -0.000      -0.000      -0.000     -14.516      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>              21.626       0.000      -0.000       0.000      -0.000      -0.000     117.187       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      23.565       5.426      -0.052       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000    -156.211
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000     -32.432      -0.000       0.000       0.000      -0.112       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000     -18.936     -32.391     130.094       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.208
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          14845.432       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   14845.432       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   14845.495       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   14845.548       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26361.131       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   31338.329       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   31338.329       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31338.418
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
                                0.000      -0.000      -0.000       0.255      -0.000      -0.000     633.817

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -18.535      -0.000      -0.000    -335.784

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.722       0.000      -0.000     429.565

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -6.304       0.000      -0.000     472.404       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -12.159      -0.000       0.000       0.000    -472.425      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      15.953       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.090      -0.000       0.000    -249.769

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      21.357       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -27.344      -0.000      -0.000      32.393

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      27.344       0.000       0.000      32.393      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.202      -0.000       0.000      -0.000     -37.096      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.069       0.000      -0.000      -0.000    -130.137       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      23.751      -0.000      -0.000      -0.255       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -23.752      -0.000       0.000      -0.255

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -207.294       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -102.323       0.000       0.000      -0.119

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     102.323       0.000      -0.000      -0.119       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.119      -0.000       0.000     969.112

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.119      -0.000       0.000    -969.112      -0.000

    1    1  |1 0>              -0.000       0.000      -0.000      -8.427       0.000      -0.000     -32.441
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>              -0.000     -21.626       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              16.703      -0.000      -0.000       0.000      32.432      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000     -23.565       0.000       0.000      18.936       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000      -5.426      -0.000      -0.000      32.391      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.052       0.000      -0.000    -130.094       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>              14.516       0.000      -0.000      -0.000       0.112      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000    -117.187       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000     156.211       0.000      -0.000      -0.208
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000    -253.311       0.000       0.000       0.388
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              -0.000       0.000    -170.684      -0.000      -0.000      -0.147       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000     170.684       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>             253.311       0.000      -0.000       0.000       0.369      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000      -0.000      -0.369       0.000      -0.000    -969.135
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>              -0.000       0.147      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 0>              -0.388      -0.000       0.000       0.000     969.135       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

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

   10    1  |1 1>-          31338.589       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   31338.682       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   31338.640       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   31338.640       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   32385.937       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32386.031       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32386.030
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24984.97695248    -0.00018016      -39.54      0.00000000        0.00      0.0000
    2-24984.91040690     0.06636542    14565.53      0.06654558    14605.07      1.8108
    3-24984.91040683     0.06636549    14565.54      0.06654565    14605.08      1.8108
    4-24984.91040683     0.06636549    14565.54      0.06654565    14605.08      1.8108
    5-24984.90971084     0.06706147    14718.29      0.06724163    14757.83      1.8297
    6-24984.90971074     0.06706158    14718.32      0.06724174    14757.86      1.8297
    7-24984.90971074     0.06706158    14718.32      0.06724174    14757.86      1.8297
    8-24984.90971068     0.06706164    14718.33      0.06724180    14757.87      1.8297
    9-24984.90971063     0.06706169    14718.34      0.06724184    14757.88      1.8297
   10-24984.90828209     0.06849023    15031.87      0.06867039    15071.41      1.8686
   11-24984.90828203     0.06849029    15031.88      0.06867045    15071.42      1.8686
   12-24984.90828203     0.06849029    15031.88      0.06867045    15071.42      1.8686
   13-24984.90828188     0.06849044    15031.91      0.06867059    15071.45      1.8686
   14-24984.90828188     0.06849044    15031.91      0.06867059    15071.45      1.8686
   15-24984.90828188     0.06849044    15031.91      0.06867060    15071.45      1.8686
   16-24984.90828171     0.06849061    15031.95      0.06867076    15071.49      1.8686
   17-24984.89635747     0.08041485    17649.02      0.08059501    17688.56      2.1931
   18-24984.89635737     0.08041495    17649.04      0.08059511    17688.58      2.1931
   19-24984.89635697     0.08041535    17649.13      0.08059550    17688.67      2.1931
   20-24984.89635697     0.08041535    17649.13      0.08059551    17688.67      2.1931
   21-24984.89635694     0.08041538    17649.14      0.08059554    17688.68      2.1931
   22-24984.85669264     0.12007968    26354.44      0.12025983    26393.98      3.2724
   23-24984.85669264     0.12007968    26354.44      0.12025983    26393.98      3.2724
   24-24984.85669263     0.12007969    26354.44      0.12025984    26393.98      3.2724
   25-24984.85160938     0.12516294    27470.09      0.12534310    27509.63      3.4108
   26-24984.83757978     0.13919254    30549.23      0.13937270    30588.77      3.7925
   27-24984.83587086     0.14090146    30924.30      0.14108162    30963.84      3.8390
   28-24984.83587041     0.14090191    30924.40      0.14108207    30963.93      3.8390
   29-24984.83587039     0.14090193    30924.40      0.14108208    30963.94      3.8390
   30-24984.83587023     0.14090208    30924.43      0.14108224    30963.97      3.8390
   31-24984.83587023     0.14090208    30924.43      0.14108224    30963.97      3.8390
   32-24984.83445534     0.14231698    31234.97      0.14249714    31274.51      3.8775
   33-24984.83445534     0.14231698    31234.97      0.14249714    31274.51      3.8775
   34-24984.83445498     0.14231734    31235.05      0.14249750    31274.59      3.8776
   35-24984.83445489     0.14231743    31235.07      0.14249759    31274.61      3.8776
   36-24984.83445477     0.14231755    31235.09      0.14249770    31274.63      3.8776
   37-24984.83445477     0.14231755    31235.09      0.14249770    31274.63      3.8776
   38-24984.83445429     0.14231803    31235.20      0.14249819    31274.74      3.8776
   39-24984.83359568     0.14317664    31423.64      0.14335679    31463.18      3.9009
   40-24984.83359568     0.14317664    31423.64      0.14335679    31463.18      3.9009
   41-24984.83359536     0.14317695    31423.71      0.14335711    31463.25      3.9009
   42-24984.83256866     0.14420366    31649.04      0.14438382    31688.58      3.9289
   43-24984.83256859     0.14420373    31649.06      0.14438389    31688.60      3.9289
   44-24984.83256773     0.14420459    31649.25      0.14438474    31688.79      3.9289
   45-24984.83256773     0.14420459    31649.25      0.14438474    31688.79      3.9289
   46-24984.83256756     0.14420476    31649.29      0.14438492    31688.83      3.9289
   47-24984.83256754     0.14420478    31649.29      0.14438494    31688.83      3.9289
   48-24984.83256744     0.14420488    31649.31      0.14438504    31688.85      3.9289
   49-24984.83256744     0.14420488    31649.31      0.14438504    31688.85      3.9289
   50-24984.83256736     0.14420496    31649.33      0.14438512    31688.87      3.9289
   51-24984.82466573     0.15210659    33383.54      0.15228674    33423.08      4.1439
   52-24984.82466555     0.15210677    33383.58      0.15228693    33423.12      4.1439
   53-24984.82466555     0.15210677    33383.58      0.15228693    33423.12      4.1439
   54-24984.82466555     0.15210677    33383.58      0.15228693    33423.12      4.1439
   55-24984.82466545     0.15210687    33383.60      0.15228703    33423.14      4.1439

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99935186 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000188
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000011  0.00000000  0.00000000  0.00000000 -0.01503941 -0.00000000 -0.00000000  0.10583452
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000002 -0.00000000  0.00000000  0.00000000  0.10587378  0.00000000 -0.00000000  0.01503389
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000751 -0.00000000  0.10710085  0.00000003 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000762  0.00000000 -0.00000000  0.00000003 -0.10710085 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00056479 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.54777455  0.00000004  0.00000000 -0.00000010  0.40598962  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000127 -0.00000000 -0.00000000 -0.00000000  0.40672217  0.00000000  0.00000000 -0.70257532
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.54777159  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000414 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000002  0.31622329 -0.00000000  0.70298181  0.00000016 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000001 -0.00000001 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000004  0.54757237  0.00000000 -0.40588228 -0.00000010  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00003885  0.00000000 -0.00000012 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000511 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000513 -0.00000000  0.00000000  0.00000000 -0.00120976 -0.00000000  0.00000000 -0.00005871
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00001284  0.00000000 -0.00000000  0.00000000 -0.00097362 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000493  0.00000000 -0.00000000  0.00000000 -0.00076771 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000890  0.00000000 -0.00097128 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000841 -0.00000000 -0.00000000  0.00000000 -0.00023351 -0.00000000  0.00000000 -0.00106702
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000460  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00175103 -0.00000000  0.00000000 -0.00000000  0.00481924  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.02078068  0.00000000  0.00000000 -0.00000000 -0.00482494 -0.00000000  0.00000000 -0.00279075
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00176388 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.81176692  0.00000000 -0.00000000  0.00092265

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.54781772 -0.00000004  0.00000000 -0.00000010  0.40586612  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000004  0.54781754 -0.00000000  0.40586629  0.00000010 -0.00000000

   4    1  |1 0>           0.00000000  0.00000478 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.63236554 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000412  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00003849  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000232  0.00000000 -0.00007398 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000232  0.00000000 -0.00000000  0.00000000 -0.00007398 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00098326  0.00000000 -0.00000000  0.00000112

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001110 -0.00000000  0.00000000  0.00000000 -0.00000148 -0.00000000 -0.00000000  0.00130184

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000783 -0.00000000 -0.00000000  0.00000000 -0.00123688 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000782  0.00000000 -0.00123688 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02078127 -0.00000000  0.00000000 -0.00000000 -0.00000634  0.00000000 -0.00000000  0.00557419

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00175175  0.00000000  0.00000000 -0.00000000  0.00484246  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00175175  0.00000000 -0.00484246 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000004 -0.54777471 -0.00000000  0.40598944  0.00000010 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000414  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.54777174  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000126  0.00000000  0.00000000 -0.00000000  0.40512404  0.00000000 -0.00000000  0.70349807

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.31623097 -0.00000002  0.00000000 -0.00000016  0.70297614  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.54756792  0.00000004  0.00000000 -0.00000010  0.40589208  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00003884 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000512  0.00000000  0.00000000 -0.00000000 -0.00120989 -0.00000000  0.00000000  0.00005597

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000511 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00001284  0.00000000 -0.00097362 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000493 -0.00000000  0.00076772  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000890 -0.00000000  0.00000000 -0.00000000  0.00097128  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000460  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000840 -0.00000000  0.00000000 -0.00000000 -0.00023593 -0.00000000 -0.00000000  0.00106649

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00175102  0.00000000 -0.00481924 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00176388  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02078068 -0.00000000  0.00000000 -0.00000000  0.00483128  0.00000000  0.00000000 -0.00277978

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000477
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003360
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.10710736  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00002496  0.00000000
                          -0.00006559 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00001813 -0.00000000 -0.00000000  0.00002599  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00001824 -0.00002608 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000008 -0.23647095  0.69084682  0.00000032 -0.00000003 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57732791
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.40596815  0.44753415  0.00000000  0.00000000 -0.00000003  0.00000003 -0.57699319  0.00000000
                          -0.00024860 -0.00000963 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001885  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.52823116  0.00000018  0.00000016 -0.34789409 -0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000034 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.54148786  0.00000019 -0.00000023  0.49019367  0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000048  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00118082  0.00010834 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00100937 -0.00000000
                          -0.00000072 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087630
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00153191  0.00010717  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00158042  0.00104134  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00050238  0.00000000  0.00000000 -0.00144697 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00127461
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00037181  0.00188046  0.00000000  0.00000000  0.00000000 -0.00000000  0.00116875 -0.00000000
                           0.00000023 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00001146  0.00000791  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000072
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00483132  0.00001129  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000044 -0.00000000
                          -0.00000296 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57738876

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000021  0.60976091  0.40178617  0.00000019 -0.00000002  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000039 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.60983153 -0.00000021 -0.00000019  0.40167907  0.00000002 -0.00000000

   4    1  |1 0>           0.00000000  0.00001667  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00000536  0.77466559  0.00000000  0.00000000 -0.00000000  0.00000000  0.00051981 -0.00000000

   5    1  |1 0>          -0.00049706  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001886  0.00000000
                           0.81169994  0.00038980  0.00000000  0.00000000 -0.00000003  0.00000003 -0.57746225  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000063 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00123069  0.00000000 -0.00000000  0.00195404  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00123104  0.00195382  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00154896

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

  11    1  |1 0>           0.00000060  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                          -0.00097876  0.00000103  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00154111  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00070992  0.00031099  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00070998 -0.00000000 -0.00000000  0.00031086  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000768 -0.00000276 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000769 -0.00000000 -0.00000000  0.00000276  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000067 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.23634957  0.00000008 -0.00000032  0.69088834  0.00000003 -0.00000000

   2    1  |1 1>-         -0.00024860  0.00000961  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001887 -0.00000000
                           0.40596797  0.44676521  0.00000000  0.00000000  0.00000003 -0.00000003  0.57758878 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57732791

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000018 -0.52817746 -0.34798023 -0.00000016  0.00000002 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000019  0.54156677 -0.49010326 -0.00000023  0.00000002  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000045  0.00000028  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087628

   8    1  |1 1>-         -0.00000072  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000
                           0.00118083  0.00010967  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00100922  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00153190  0.00000000 -0.00000000  0.00010743  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00158059  0.00000000  0.00000000 -0.00104105 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00050213  0.00144706  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000023  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                          -0.00037180  0.00188201  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00116625 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00127462

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00001146  0.00000000  0.00000000 -0.00000791 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000296 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00483132 -0.00001129 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000072

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.98402936 -0.13586689 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.13586752  0.98402500  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.00000002  0.99334148  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003741 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.99334210 -0.00000003 -0.00000001 -0.00000003  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000003  0.99334210 -0.00000002  0.00000000  0.00000004 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000026 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.04382067 -0.00000000  0.00000000  0.00007066 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.07584052 -0.04354610 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04382591 -0.00000000 -0.00000000 -0.00007013
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000165 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.07584351  0.00000000  0.00000000 -0.00003956  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.04379238 -0.00000000 -0.00000000 -0.00007058  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000018  0.00000000 -0.00000000  0.99934007 -0.00000378 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00159947 -0.00000000  0.00000000 -0.00000801
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00008558  0.00169093  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00133864  0.00000000 -0.00000000 -0.00000052  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00102253  0.00000000 -0.00000000 -0.00001519  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00133599 -0.00000000 -0.00000000 -0.00000056  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00150982  0.00035859 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00052544 -0.00000000 -0.00000000 -0.00001137
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.02960973  0.00000000  0.00000010  0.02568782 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.01700083 -0.02964200  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.02960665 -0.00000000 -0.00000000 -0.02568004
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000112 -0.00000000  0.00000000 -0.00000030

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00024177 -0.08744338 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.04382367 -0.00000000 -0.00000000 -0.00007105  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.04382352  0.00000000  0.00000000 -0.00007106  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000058  0.00000000  0.00000000  0.00008259

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000330 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.08758284  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001148
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.99934031

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00008588 -0.00000000 -0.00000000  0.00000767 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00008585  0.00000000  0.00000000  0.00000768 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000371 -0.00133981 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00186492 -0.00000514  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132775  0.00000000  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00167794  0.00000000  0.00000000  0.00001158 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00167796 -0.00000000 -0.00000000  0.00001158 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.03416947  0.00009447 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.02960621  0.00000000 -0.00000010 -0.02568138  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.02960622  0.00000000  0.00000000  0.02568138 -0.00000010 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.04382068  0.00000000  0.00000000  0.00007066 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000165 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.04382583 -0.00000000 -0.00000000 -0.00007014

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.07559850 -0.04396479  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.07584284 -0.00000000 -0.00000000 -0.00003956  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.04379339 -0.00000000  0.00000000  0.00007058 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000378  0.99934008 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00009495  0.00169040  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00159944 -0.00000000 -0.00000000 -0.00000802

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00133863 -0.00000000 -0.00000000 -0.00000052  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00102255  0.00000000  0.00000000  0.00001519 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00133597 -0.00000000  0.00000000  0.00000056 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052542 -0.00000000 -0.00000000 -0.00001138

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00151178  0.00035025  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.02960972  0.00000000  0.00000000 -0.02568782  0.00000010  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000112 -0.00000000  0.00000000 -0.00000030
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.02960663  0.00000000  0.00000000  0.02568004

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.01716450  0.02954755  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00566439 -0.03554952  0.00000000 -0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000091 -0.00000313  0.00035413  0.00254982 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000013 -0.00000045 -0.00249911  0.00036120 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00247213  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000137  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00248018 -0.00000001 -0.00000239
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00248016 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.98988804  0.14184972  0.00000003  0.00000243 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00092809  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000022  0.00000143  0.00093553  0.00161753 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00093607 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00161800  0.00000000 -0.00124281
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00093030 -0.00000000 -0.00162782
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000347  0.00000000 -0.00001460
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000002 -0.58807371  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00032576  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00002153 -0.00017850  0.60556796 -0.03112085  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000118  0.48823649 -0.00000021
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000091  0.37788101  0.00000019
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.48790891  0.00000117  0.09529795
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000100  0.00000006  0.00000000

  12    1  |1 1>+          0.00003125 -0.00024680  0.11917842 -0.53374974  0.00000002 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001  0.18804489 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00010417 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00042097 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.08182930  0.57113657  0.00056398 -0.00036999  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041986 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000023  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00186990 -0.00000145 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00093865 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00093865  0.00000000  0.00143363

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000103 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00186592  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.03551118  0.00000009  0.57472836

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009  0.03550679 -0.00000021

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000007 -0.48775007  0.00037983  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00004096 -0.00036119  0.00050846  0.65462044 -0.00000002  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00027002 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.48744719  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000148  0.61603855  0.00000009

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000126 -0.00000007  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.61603828  0.00000148 -0.24563848

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.08183829  0.57115707  0.00000061  0.00067217 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00024169  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00024169  0.00000000  0.00012973

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00092808  0.00000000 -0.00092654

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00093606  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000020 -0.00000143  0.00093302 -0.00161898  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00161798  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00093033 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000346  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002153  0.00017829  0.60561629  0.03018655 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00032576  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000002  0.58807492 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000100 -0.00000006 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.48823415  0.00000118  0.57489389

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000077  0.00000004 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.37788422 -0.00000091  0.51938159

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000117 -0.48790904  0.00000004

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00010416 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.18804134  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00003126  0.00024668  0.12000089  0.53356426 -0.00000002  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00042104  0.00000000 -0.00008395

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00042004  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.08182929  0.57113675 -0.00056435 -0.00036911  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000056  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000394 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000704 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00001240 -0.00000000  0.00000000  0.00000203 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000239 -0.00000000 -0.00000000 -0.00000000 -0.00001241 -0.00000000  0.00000000  0.00000206
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00092685 -0.00000000 -0.00000000 -0.00000000 -0.00170770 -0.00000000  0.00000000  0.00136033
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00154827  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00119407 -0.00000000  0.00000000 -0.00154105  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000117  0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00115251 -0.00000000 -0.00000000  0.00076062 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00105738  0.00000000 -0.00000000  0.00135744 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000501  0.00000000  0.00000000  0.03632369 -0.00000004
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.04061381  0.00000000  0.00000000 -0.37873332 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00003980 -0.00000000  0.00000000  0.00005205 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.32665019 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.57488158  0.00000000  0.00000000 -0.00000000 -0.05051728 -0.00000000 -0.00000000 -0.00059848
                           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.51929860 -0.00000000 -0.00000000  0.00000003  0.47988585  0.00000000 -0.00000000 -0.00103372
                          -0.00000001  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000004  0.00000000  0.00000000 -0.56921657  0.00000004  0.00000000  0.00013673 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.47576221  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.70592164  0.00000000  0.00000000 -0.43542751  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00069176 -0.00000000  0.00000000  0.00005984  0.00000000  0.00000000

  14    1  |1 1>+          0.00008407  0.00000000 -0.00000000  0.00000000  0.00015594 -0.00000000  0.00000075  0.70665349
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00004507 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00048663 -0.00000000  0.00000000  0.00011153  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000048 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00154597 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00143340  0.00000000  0.00000000 -0.00000000 -0.00132265 -0.00000000 -0.00000000 -0.00135962

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00132239  0.00000000  0.00000000  0.00135962 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000202 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00206169 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00154548 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00004173 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000021 -0.00000000 -0.00000000  0.64644857 -0.00000004  0.00000000 -0.00003077  0.00000000

   8    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57484665  0.00000000  0.00000000  0.00000004  0.64634382  0.00000000  0.00000000  0.00003055

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.57783463 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000207  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00007941  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00001834  0.00000000 -0.00000000  0.57789468 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.24560577 -0.00000000 -0.00000000  0.00000001  0.15925839  0.00000000  0.00000000  0.00142065

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000009 -0.00000000 -0.00000000  0.15920947 -0.00000001 -0.00000000 -0.00142055  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00012980 -0.00000000  0.00000000 -0.00000000 -0.00004483  0.00000000 -0.00000075 -0.70662002

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00004462 -0.00000000 -0.00000000 -0.70662021  0.00000075

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00170787  0.00000000  0.00000000 -0.00136033  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000117 -0.00000000  0.00000000  0.00000021  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00119397 -0.00000000 -0.00000000  0.00154113  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00154827  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00124263 -0.00000000 -0.00000000  0.00000000  0.00115272  0.00000000 -0.00000000 -0.00076064

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00162799  0.00000000  0.00000000  0.00000000  0.00105710  0.00000000  0.00000000  0.00135743

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001461 -0.00000000  0.00000000 -0.00000000 -0.00000503  0.00000000 -0.00000004 -0.03632369

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.32664706 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00003982  0.00000000 -0.00000000  0.00005205 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.04063376  0.00000000 -0.00000000  0.37872787 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000021 -0.00000000  0.00000000 -0.05041659  0.00000000  0.00000000  0.00059830 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000019  0.00000000  0.00000000 -0.47979173  0.00000003  0.00000000 -0.00103349  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.09519518  0.00000000 -0.00000000  0.00000004  0.56923358  0.00000000  0.00000000  0.00013658

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00069179  0.00000000 -0.00000000  0.00005983  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.70595008  0.00000000 -0.00000000  0.43538457  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.47576425  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00015575  0.00000000  0.00000000  0.70665330 -0.00000075

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000048 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00048660  0.00000000 -0.00000000  0.00011165 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00004504 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000 -0.00000229 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000402 -0.00000000  0.00000000  0.00000000  0.00000513  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000000 -0.00003637 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000002  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00001580 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000610 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000612 -0.00000000 -0.00000000 -0.00000000  0.00000151
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000801  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000792 -0.00000000 -0.00000000 -0.00000000  0.00000795
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000280  0.00000000 -0.00000000 -0.00000000 -0.00000312 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00135846 -0.00000000  0.00000220 -0.00000000 -0.00000000 -0.00000000  0.00000203 -0.00000000
                          -0.00000174  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000083 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001028 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002141  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00074203 -0.00000000  0.70597169  0.00000000  0.00000000  0.00000000 -0.10333771 -0.00000000
                          -0.00000095  0.00000000 -0.00070209  0.00000000 -0.00000000  0.00000000 -0.00010998 -0.00000000

   8    1  |1 1>+         -0.00000000  0.69212463  0.00000000  0.00000000 -0.00000000  0.16234896  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.65444889 -0.00000022 -0.00000000 -0.00000000 -0.01659672
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.19698475 -0.00000007  0.00000000  0.00000000 -0.56430062
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.50268847  0.00000000  0.00000000 -0.00000007
                           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000 -0.00000000  0.00000001

  12    1  |1 1>+         -0.00000000  0.07062880 -0.00000000  0.00000000  0.00000000  0.51007338  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00053114 -0.00000000 -0.04079645  0.00000000 -0.00000000 -0.00000000  0.52444815  0.00000000
                           0.00000068  0.00000000  0.00004057 -0.00000000  0.00000000 -0.00000000  0.00055814  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00059771 -0.00000000 -0.00000000  0.00000000 -0.00117183
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00019282  0.00000000  0.00000000  0.00000000 -0.00000937  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.70663713  0.00000000 -0.00077097 -0.00000000 -0.00000000  0.00000000  0.00003071  0.00000000
                          -0.00090721 -0.00000000  0.00000077  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000456 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000330 -0.00000000  0.00000000 -0.00000000  0.00000102

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000330 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000204  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00158645  0.00000000 -0.00000389  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000776  0.00000000

   6    1  |1 0>           0.00004663  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.03631721  0.00000000 -0.00002922  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.48486357  0.00000000  0.00000000 -0.00000002

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.48472245  0.00000016  0.00000000  0.00000000 -0.12477604

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00032085 -0.00000000  0.00000000  0.00000000  0.65436992  0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.17955771 -0.00000000  0.00000000  0.00000000  0.00126826  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000  0.00000000 -0.00069660 -0.00000000
                          -0.00000015 -0.00000000 -0.00021311  0.00000000 -0.00000000 -0.00000000  0.65454346  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.21380989  0.00000007 -0.00000000 -0.00000000  0.69934926

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000007 -0.21302217  0.00000000 -0.00000000  0.00000011

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00021894  0.00000000  0.00000000  0.00000000  0.00000039  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00059738  0.00000000  0.00000000 -0.00000000  0.00114735

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00059593 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000793 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000174 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00135846 -0.00000000  0.00000220 -0.00000000 -0.00000000  0.00000000 -0.00000203 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000281 -0.00000000  0.00000000 -0.00000000 -0.00000310 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000084 -0.00000000  0.00000000  0.00000000 -0.00000921

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00001028  0.00000000  0.00000000  0.00000000  0.00000316

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00002146  0.00000000  0.00000000 -0.00000000  0.00004364

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.69196550 -0.00000000 -0.00000000  0.00000000  0.16355463  0.00000000  0.00000000

   8    1  |1 1>-          0.00000095 -0.00000000  0.00070202  0.00000000 -0.00000000  0.00000000 -0.00011047 -0.00000000
                           0.00074184 -0.00000000  0.70590451  0.00000000  0.00000000 -0.00000000  0.10380083 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000022  0.65442867 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.19635576  0.00000000 -0.00000000  0.00000009

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.50221751 -0.00000017 -0.00000000 -0.00000000  0.42027159

  12    1  |1 1>-         -0.00000068  0.00000000 -0.00004023 -0.00000000  0.00000000 -0.00000000  0.00055817  0.00000000
                          -0.00053063  0.00000000 -0.04045033 -0.00000000  0.00000000  0.00000000 -0.52447361 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.07012579 -0.00000000 -0.00000000 -0.00000000  0.50844493  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00059634  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00090721 -0.00000000  0.00000077  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                          -0.70663675 -0.00000000  0.00077099  0.00000000  0.00000000 -0.00000000  0.00003067  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00019278  0.00000000  0.00000000  0.00000000  0.00001020  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>           0.00000000 -0.00000158  0.00000017 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000994 -0.04198563 -0.00546433  0.00000002  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000148 -0.00546337  0.04199184 -0.00000013 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04236275
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000333

   5    1  |0 0>          -0.00000149  0.00000000  0.00000000  0.00000013  0.04236422  0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.04236422 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00001043  0.00000492 -0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094130  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000352  0.00163982  0.00092245 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00093920
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

   4    1  |1 1>+         -0.00000920  0.00000000  0.00000000  0.00000000  0.00162493  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000317 -0.00000000 -0.00000000 -0.00000000 -0.00093967 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00004366  0.00000000  0.00000000  0.00000000  0.00000369  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00022632
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

   8    1  |1 1>+         -0.00000000 -0.14219568  0.00000409 -0.00039805  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00020169 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000  0.00007527 -0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.41970805  0.00000000 -0.00000000 -0.00000000 -0.00022026 -0.00000000  0.00000000
                          -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.45759076  0.00039452 -0.00010974  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00013828
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000035  0.70645312 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00025539 -0.40040071  0.71074264 -0.00000217 -0.00000003  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.70646985
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00005548

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00001991  0.00188369 -0.00000001 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094087  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000101 -0.00000000  0.00000000  0.00000000  0.00094087  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00187932

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   7    1  |1 0>           0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.12422753  0.00000000  0.00000000  0.00000000  0.00002067  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002072  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00120788  0.00000409  0.00038598 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.73431852 -0.00049376  0.00000521 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036052

  12    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000011 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00021870 -0.00000000

  13    1  |1 0>          -0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.69958949  0.00000000 -0.00000000 -0.00000000 -0.00021873 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00025850  0.81570625 -0.00862277  0.00000003  0.00000000 -0.00000001

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000035  0.70648696 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00114792 -0.00000000  0.00000000  0.00000216  0.70648677  0.00000035 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000794 -0.00000000  0.00000000  0.00000000  0.00094130  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00093920

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000353 -0.00161996  0.00095691 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00162492  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00093969  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000369 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.14158997 -0.00001249 -0.00039783  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00022628

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01732708 -0.00000000 -0.00000000 -0.00000000 -0.00020168 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.56452130  0.00000000  0.00000000  0.00000000  0.00007527  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00022016  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00013830

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.45947581 -0.00039673 -0.00010135  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00117235  0.00000000  0.00000000  0.00000216  0.70645331  0.00000035 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005548
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.70647023

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00025534 -0.41533610 -0.70211934  0.00000215  0.00000003  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -24984.97695248     -0.00018016      -39.54      0.00000000        0.00      0.0000
     2   1 -24984.91040690      0.06636542    14565.53      0.06654558    14605.07      1.8108
     3   1 -24984.91040683      0.06636549    14565.54      0.06654565    14605.08      1.8108
     4   1 -24984.91040683      0.06636549    14565.54      0.06654565    14605.08      1.8108
     5   1 -24984.90971084      0.06706147    14718.29      0.06724163    14757.83      1.8297
     6   1 -24984.90971074      0.06706158    14718.32      0.06724174    14757.86      1.8297
     7   1 -24984.90971074      0.06706158    14718.32      0.06724174    14757.86      1.8297
     8   1 -24984.90971068      0.06706164    14718.33      0.06724180    14757.87      1.8297
     9   1 -24984.90971063      0.06706169    14718.34      0.06724184    14757.88      1.8297
    10   1 -24984.90828209      0.06849023    15031.87      0.06867039    15071.41      1.8686
    11   1 -24984.90828203      0.06849029    15031.88      0.06867045    15071.42      1.8686
    12   1 -24984.90828203      0.06849029    15031.88      0.06867045    15071.42      1.8686
    13   1 -24984.90828188      0.06849044    15031.91      0.06867059    15071.45      1.8686
    14   1 -24984.90828188      0.06849044    15031.91      0.06867059    15071.45      1.8686
    15   1 -24984.90828188      0.06849044    15031.91      0.06867060    15071.45      1.8686
    16   1 -24984.90828171      0.06849061    15031.95      0.06867076    15071.49      1.8686
    17   1 -24984.89635747      0.08041485    17649.02      0.08059501    17688.56      2.1931
    18   1 -24984.89635737      0.08041495    17649.04      0.08059511    17688.58      2.1931
    19   1 -24984.89635697      0.08041535    17649.13      0.08059550    17688.67      2.1931
    20   1 -24984.89635697      0.08041535    17649.13      0.08059551    17688.67      2.1931
    21   1 -24984.89635694      0.08041538    17649.14      0.08059554    17688.68      2.1931
    22   1 -24984.85669264      0.12007968    26354.44      0.12025983    26393.98      3.2724
    23   1 -24984.85669264      0.12007968    26354.44      0.12025983    26393.98      3.2724
    24   1 -24984.85669263      0.12007969    26354.44      0.12025984    26393.98      3.2724
    25   1 -24984.85160938      0.12516294    27470.09      0.12534310    27509.63      3.4108
    26   1 -24984.83757978      0.13919254    30549.23      0.13937270    30588.77      3.7925
    27   1 -24984.83587086      0.14090146    30924.30      0.14108162    30963.84      3.8390
    28   1 -24984.83587041      0.14090191    30924.40      0.14108207    30963.93      3.8390
    29   1 -24984.83587039      0.14090193    30924.40      0.14108208    30963.94      3.8390
    30   1 -24984.83587023      0.14090208    30924.43      0.14108224    30963.97      3.8390
    31   1 -24984.83587023      0.14090208    30924.43      0.14108224    30963.97      3.8390
    32   1 -24984.83445534      0.14231698    31234.97      0.14249714    31274.51      3.8775
    33   1 -24984.83445534      0.14231698    31234.97      0.14249714    31274.51      3.8775
    34   1 -24984.83445498      0.14231734    31235.05      0.14249750    31274.59      3.8776
    35   1 -24984.83445489      0.14231743    31235.07      0.14249759    31274.61      3.8776
    36   1 -24984.83445477      0.14231755    31235.09      0.14249770    31274.63      3.8776
    37   1 -24984.83445477      0.14231755    31235.09      0.14249770    31274.63      3.8776
    38   1 -24984.83445429      0.14231803    31235.20      0.14249819    31274.74      3.8776
    39   1 -24984.83359568      0.14317664    31423.64      0.14335679    31463.18      3.9009
    40   1 -24984.83359568      0.14317664    31423.64      0.14335679    31463.18      3.9009
    41   1 -24984.83359536      0.14317695    31423.71      0.14335711    31463.25      3.9009
    42   1 -24984.83256866      0.14420366    31649.04      0.14438382    31688.58      3.9289
    43   1 -24984.83256859      0.14420373    31649.06      0.14438389    31688.60      3.9289
    44   1 -24984.83256773      0.14420459    31649.25      0.14438474    31688.79      3.9289
    45   1 -24984.83256773      0.14420459    31649.25      0.14438474    31688.79      3.9289
    46   1 -24984.83256756      0.14420476    31649.29      0.14438492    31688.83      3.9289
    47   1 -24984.83256754      0.14420478    31649.29      0.14438494    31688.83      3.9289
    48   1 -24984.83256744      0.14420488    31649.31      0.14438504    31688.85      3.9289
    49   1 -24984.83256744      0.14420488    31649.31      0.14438504    31688.85      3.9289
    50   1 -24984.83256736      0.14420496    31649.33      0.14438512    31688.87      3.9289
    51   1 -24984.82466573      0.15210659    33383.54      0.15228674    33423.08      4.1439
    52   1 -24984.82466555      0.15210677    33383.58      0.15228693    33423.12      4.1439
    53   1 -24984.82466555      0.15210677    33383.58      0.15228693    33423.12      4.1439
    54   1 -24984.82466555      0.15210677    33383.58      0.15228693    33423.12      4.1439
    55   1 -24984.82466545      0.15210687    33383.60      0.15228703    33423.14      4.1439

 E0 = -24984.97677232 is the energy of the lowest zeroth-order state
 E1 = -24984.97695248 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99935186 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000188
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000011  0.00000000  0.00000000  0.00000000 -0.01503941 -0.00000000 -0.00000000  0.10583452
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000002 -0.00000000  0.00000000  0.00000000  0.10587378  0.00000000 -0.00000000  0.01503389
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000751 -0.00000000  0.10710085  0.00000003 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000762  0.00000000 -0.00000000  0.00000003 -0.10710085 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00056479 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.54777455  0.00000004  0.00000000 -0.00000010  0.40598962  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000127 -0.00000000 -0.00000000 -0.00000000  0.40672217  0.00000000  0.00000000 -0.70257532
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.54777159  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000414 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000002  0.31622329 -0.00000000  0.70298181  0.00000016 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000001 -0.00000001 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000004  0.54757237  0.00000000 -0.40588228 -0.00000010  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00003885  0.00000000 -0.00000012 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000511 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000513 -0.00000000  0.00000000  0.00000000 -0.00120976 -0.00000000  0.00000000 -0.00005871
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00001284  0.00000000 -0.00000000  0.00000000 -0.00097362 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000493  0.00000000 -0.00000000  0.00000000 -0.00076771 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000890  0.00000000 -0.00097128 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000841 -0.00000000 -0.00000000  0.00000000 -0.00023351 -0.00000000  0.00000000 -0.00106702
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000460  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00175103 -0.00000000  0.00000000 -0.00000000  0.00481924  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.02078068  0.00000000  0.00000000 -0.00000000 -0.00482494 -0.00000000  0.00000000 -0.00279075
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00176388 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.81176692  0.00000000 -0.00000000  0.00092265

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.54781772 -0.00000004  0.00000000 -0.00000010  0.40586612  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000004  0.54781754 -0.00000000  0.40586629  0.00000010 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000478 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.63236554 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000412  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00003849  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000232  0.00000000 -0.00007398 -0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000232  0.00000000 -0.00000000  0.00000000 -0.00007398 -0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00098326  0.00000000 -0.00000000  0.00000112

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001110 -0.00000000  0.00000000  0.00000000 -0.00000148 -0.00000000 -0.00000000  0.00130184

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000783 -0.00000000 -0.00000000  0.00000000 -0.00123688 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000782  0.00000000 -0.00123688 -0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02078127 -0.00000000  0.00000000 -0.00000000 -0.00000634  0.00000000 -0.00000000  0.00557419

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00175175  0.00000000  0.00000000 -0.00000000  0.00484246  0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00175175  0.00000000 -0.00484246 -0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000004 -0.54777471 -0.00000000  0.40598944  0.00000010 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000414  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.54777174  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000126  0.00000000  0.00000000 -0.00000000  0.40512404  0.00000000 -0.00000000  0.70349807

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.31623097 -0.00000002  0.00000000 -0.00000016  0.70297614  0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.54756792  0.00000004  0.00000000 -0.00000010  0.40589208  0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00003884 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000

 46  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000512  0.00000000  0.00000000 -0.00000000 -0.00120989 -0.00000000  0.00000000  0.00005597

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000511 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00001284  0.00000000 -0.00097362 -0.00000000  0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000493 -0.00000000  0.00076772  0.00000000 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000890 -0.00000000  0.00000000 -0.00000000  0.00097128  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000460  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000840 -0.00000000  0.00000000 -0.00000000 -0.00023593 -0.00000000 -0.00000000  0.00106649

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00175102  0.00000000 -0.00481924 -0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00176388  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02078068 -0.00000000  0.00000000 -0.00000000  0.00483128  0.00000000  0.00000000 -0.00277978


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000477
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003360
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.10710736  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00002496  0.00000000
                               -0.00006559 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00001813 -0.00000000 -0.00000000  0.00002599  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00001824 -0.00002608 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000008 -0.23647095  0.69084682  0.00000032 -0.00000003 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57732791
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.40596815  0.44753415  0.00000000  0.00000000 -0.00000003  0.00000003 -0.57699319  0.00000000
                               -0.00024860 -0.00000963 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001885  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.52823116  0.00000018  0.00000016 -0.34789409 -0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000034 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.54148786  0.00000019 -0.00000023  0.49019367  0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000048  0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00118082  0.00010834 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00100937 -0.00000000
                               -0.00000072 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087630
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00153191  0.00010717  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00158042  0.00104134  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00050238  0.00000000  0.00000000 -0.00144697 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00127461
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00037181  0.00188046  0.00000000  0.00000000  0.00000000 -0.00000000  0.00116875 -0.00000000
                                0.00000023 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00001146  0.00000791  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000072
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00483132  0.00001129  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000044 -0.00000000
                               -0.00000296 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57738876

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000021  0.60976091  0.40178617  0.00000019 -0.00000002  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000039 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.60983153 -0.00000021 -0.00000019  0.40167907  0.00000002 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00001667  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00000536  0.77466559  0.00000000  0.00000000 -0.00000000  0.00000000  0.00051981 -0.00000000

 28  1     5    1  |1 0>       -0.00049706  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001886  0.00000000
                                0.81169994  0.00038980  0.00000000  0.00000000 -0.00000003  0.00000003 -0.57746225  0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000063 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00123069  0.00000000 -0.00000000  0.00195404  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00123104  0.00195382  0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00154896

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

 34  1    11    1  |1 0>        0.00000060  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                               -0.00097876  0.00000103  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00154111  0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00070992  0.00031099  0.00000000 -0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00070998 -0.00000000 -0.00000000  0.00031086  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000768 -0.00000276 -0.00000000  0.00000000 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000769 -0.00000000 -0.00000000  0.00000276  0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000067 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.23634957  0.00000008 -0.00000032  0.69088834  0.00000003 -0.00000000

 41  1     2    1  |1 1>-      -0.00024860  0.00000961  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001887 -0.00000000
                                0.40596797  0.44676521  0.00000000  0.00000000  0.00000003 -0.00000003  0.57758878 -0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57732791

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000018 -0.52817746 -0.34798023 -0.00000016  0.00000002 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000019  0.54156677 -0.49010326 -0.00000023  0.00000002  0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000045  0.00000028  0.00000000 -0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00087628

 47  1     8    1  |1 1>-      -0.00000072  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000
                                0.00118083  0.00010967  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00100922  0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00153190  0.00000000 -0.00000000  0.00010743  0.00000000 -0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00158059  0.00000000  0.00000000 -0.00104105 -0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00050213  0.00144706  0.00000000 -0.00000000 -0.00000000

 51  1    12    1  |1 1>-       0.00000023  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                               -0.00037180  0.00188201  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00116625 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00127462

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00001146  0.00000000  0.00000000 -0.00000791 -0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000296 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00483132 -0.00001129 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000072


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.98402936 -0.13586689 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.13586752  0.98402500  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.00000002  0.99334148  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003741 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.99334210 -0.00000003 -0.00000001 -0.00000003  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000003  0.99334210 -0.00000002  0.00000000  0.00000004 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000026 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.04382067 -0.00000000  0.00000000  0.00007066 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.07584052 -0.04354610 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04382591 -0.00000000 -0.00000000 -0.00007013
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000165 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.07584351  0.00000000  0.00000000 -0.00003956  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.04379238 -0.00000000 -0.00000000 -0.00007058  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000018  0.00000000 -0.00000000  0.99934007 -0.00000378 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00159947 -0.00000000  0.00000000 -0.00000801
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00008558  0.00169093  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00133864  0.00000000 -0.00000000 -0.00000052  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00102253  0.00000000 -0.00000000 -0.00001519  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00133599 -0.00000000 -0.00000000 -0.00000056  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00150982  0.00035859 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00052544 -0.00000000 -0.00000000 -0.00001137
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.02960973  0.00000000  0.00000010  0.02568782 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.01700083 -0.02964200  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.02960665 -0.00000000 -0.00000000 -0.02568004
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000112 -0.00000000  0.00000000 -0.00000030

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00024177 -0.08744338 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.04382367 -0.00000000 -0.00000000 -0.00007105  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.04382352  0.00000000  0.00000000 -0.00007106  0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000058  0.00000000  0.00000000  0.00008259

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000330 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.08758284  0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001148
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.99934031

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00008588 -0.00000000 -0.00000000  0.00000767 -0.00000000 -0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00008585  0.00000000  0.00000000  0.00000768 -0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000371 -0.00133981 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00186492 -0.00000514  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132775  0.00000000  0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00167794  0.00000000  0.00000000  0.00001158 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00167796 -0.00000000 -0.00000000  0.00001158 -0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.03416947  0.00009447 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.02960621  0.00000000 -0.00000010 -0.02568138  0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.02960622  0.00000000  0.00000000  0.02568138 -0.00000010 -0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.04382068  0.00000000  0.00000000  0.00007066 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000165 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.04382583 -0.00000000 -0.00000000 -0.00007014

 42  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.07559850 -0.04396479  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.07584284 -0.00000000 -0.00000000 -0.00003956  0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.04379339 -0.00000000  0.00000000  0.00007058 -0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000378  0.99934008 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00009495  0.00169040  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00159944 -0.00000000 -0.00000000 -0.00000802

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00133863 -0.00000000 -0.00000000 -0.00000052  0.00000000 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00102255  0.00000000  0.00000000  0.00001519 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00133597 -0.00000000  0.00000000  0.00000056 -0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052542 -0.00000000 -0.00000000 -0.00001138

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00151178  0.00035025  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.02960972  0.00000000  0.00000000 -0.02568782  0.00000010  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000112 -0.00000000  0.00000000 -0.00000030
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.02960663  0.00000000  0.00000000  0.02568004

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.01716450  0.02954755  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00566439 -0.03554952  0.00000000 -0.00000062  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000091 -0.00000313  0.00035413  0.00254982 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000013 -0.00000045 -0.00249911  0.00036120 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00247213  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000137  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00248018 -0.00000001 -0.00000239
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00248016 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.98988804  0.14184972  0.00000003  0.00000243 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00092809  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000022  0.00000143  0.00093553  0.00161753 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00093607 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00161800  0.00000000 -0.00124281
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00093030 -0.00000000 -0.00162782
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000347  0.00000000 -0.00001460
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000002 -0.58807371  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00032576  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00002153 -0.00017850  0.60556796 -0.03112085  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000118  0.48823649 -0.00000021
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000091  0.37788101  0.00000019
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.48790891  0.00000117  0.09529795
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000100  0.00000006  0.00000000

 19  1    12    1  |1 1>+       0.00003125 -0.00024680  0.11917842 -0.53374974  0.00000002 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001  0.18804489 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00010417 -0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00042097 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.08182930  0.57113657  0.00056398 -0.00036999  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041986 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000023  0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00186990 -0.00000145 -0.00000000  0.00000000 -0.00000000  0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00093865 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00093865  0.00000000  0.00143363

 27  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000103 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00186592  0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.03551118  0.00000009  0.57472836

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009  0.03550679 -0.00000021

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000007 -0.48775007  0.00037983  0.00000000 -0.00000000  0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00004096 -0.00036119  0.00050846  0.65462044 -0.00000002  0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00027002 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.48744719  0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000148  0.61603855  0.00000009

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000126 -0.00000007  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.61603828  0.00000148 -0.24563848

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.08183829  0.57115707  0.00000061  0.00067217 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00024169  0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00024169  0.00000000  0.00012973

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00092808  0.00000000 -0.00092654

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00093606  0.00000000 -0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000020 -0.00000143  0.00093302 -0.00161898  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00161798  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00093033 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000346  0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002153  0.00017829  0.60561629  0.03018655 -0.00000000  0.00000000 -0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00032576  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000002  0.58807492 -0.00000000  0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000100 -0.00000006 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.48823415  0.00000118  0.57489389

 49  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000077  0.00000004 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.37788422 -0.00000091  0.51938159

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000117 -0.48790904  0.00000004

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00010416 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.18804134  0.00000000 -0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00003126  0.00024668  0.12000089  0.53356426 -0.00000002  0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00042104  0.00000000 -0.00008395

 54  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00042004  0.00000000 -0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.08182929  0.57113675 -0.00056435 -0.00036911  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000056  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000394 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000704 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00001240 -0.00000000  0.00000000  0.00000203 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000239 -0.00000000 -0.00000000 -0.00000000 -0.00001241 -0.00000000  0.00000000  0.00000206
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00092685 -0.00000000 -0.00000000 -0.00000000 -0.00170770 -0.00000000  0.00000000  0.00136033
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00154827  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00119407 -0.00000000  0.00000000 -0.00154105  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000117  0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00115251 -0.00000000 -0.00000000  0.00076062 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00105738  0.00000000 -0.00000000  0.00135744 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000501  0.00000000  0.00000000  0.03632369 -0.00000004
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.04061381  0.00000000  0.00000000 -0.37873332 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00003980 -0.00000000  0.00000000  0.00005205 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.32665019 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.57488158  0.00000000  0.00000000 -0.00000000 -0.05051728 -0.00000000 -0.00000000 -0.00059848
                                0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.51929860 -0.00000000 -0.00000000  0.00000003  0.47988585  0.00000000 -0.00000000 -0.00103372
                               -0.00000001  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000004  0.00000000  0.00000000 -0.56921657  0.00000004  0.00000000  0.00013673 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.47576221  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.70592164  0.00000000  0.00000000 -0.43542751  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00069176 -0.00000000  0.00000000  0.00005984  0.00000000  0.00000000

 21  1    14    1  |1 1>+       0.00008407  0.00000000 -0.00000000  0.00000000  0.00015594 -0.00000000  0.00000075  0.70665349
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00004507 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00048663 -0.00000000  0.00000000  0.00011153  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000048 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00154597 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00143340  0.00000000  0.00000000 -0.00000000 -0.00132265 -0.00000000 -0.00000000 -0.00135962

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00132239  0.00000000  0.00000000  0.00135962 -0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000202 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00206169 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00154548 -0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00004173 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000021 -0.00000000 -0.00000000  0.64644857 -0.00000004  0.00000000 -0.00003077  0.00000000

 31  1     8    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57484665  0.00000000  0.00000000  0.00000004  0.64634382  0.00000000  0.00000000  0.00003055

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.57783463 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000207  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00007941  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00001834  0.00000000 -0.00000000  0.57789468 -0.00000000  0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.24560577 -0.00000000 -0.00000000  0.00000001  0.15925839  0.00000000  0.00000000  0.00142065

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000009 -0.00000000 -0.00000000  0.15920947 -0.00000001 -0.00000000 -0.00142055  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00012980 -0.00000000  0.00000000 -0.00000000 -0.00004483  0.00000000 -0.00000075 -0.70662002

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00004462 -0.00000000 -0.00000000 -0.70662021  0.00000075

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00170787  0.00000000  0.00000000 -0.00136033  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000117 -0.00000000  0.00000000  0.00000021  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00119397 -0.00000000 -0.00000000  0.00154113  0.00000000  0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00154827  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00124263 -0.00000000 -0.00000000  0.00000000  0.00115272  0.00000000 -0.00000000 -0.00076064

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00162799  0.00000000  0.00000000  0.00000000  0.00105710  0.00000000  0.00000000  0.00135743

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001461 -0.00000000  0.00000000 -0.00000000 -0.00000503  0.00000000 -0.00000004 -0.03632369

 46  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.32664706 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00003982  0.00000000 -0.00000000  0.00005205 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.04063376  0.00000000 -0.00000000  0.37872787 -0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000021 -0.00000000  0.00000000 -0.05041659  0.00000000  0.00000000  0.00059830 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000019  0.00000000  0.00000000 -0.47979173  0.00000003  0.00000000 -0.00103349  0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.09519518  0.00000000 -0.00000000  0.00000004  0.56923358  0.00000000  0.00000000  0.00013658

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00069179  0.00000000 -0.00000000  0.00005983  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.70595008  0.00000000 -0.00000000  0.43538457  0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.47576425  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00015575  0.00000000  0.00000000  0.70665330 -0.00000075

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000048 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00048660  0.00000000 -0.00000000  0.00011165 -0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00004504 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000 -0.00000229 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000402 -0.00000000  0.00000000  0.00000000  0.00000513  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000000 -0.00003637 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000002  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00001580 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000610 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000612 -0.00000000 -0.00000000 -0.00000000  0.00000151
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000801  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000792 -0.00000000 -0.00000000 -0.00000000  0.00000795
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000280  0.00000000 -0.00000000 -0.00000000 -0.00000312 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00135846 -0.00000000  0.00000220 -0.00000000 -0.00000000 -0.00000000  0.00000203 -0.00000000
                               -0.00000174  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000083 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001028 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002141  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00074203 -0.00000000  0.70597169  0.00000000  0.00000000  0.00000000 -0.10333771 -0.00000000
                               -0.00000095  0.00000000 -0.00070209  0.00000000 -0.00000000  0.00000000 -0.00010998 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.69212463  0.00000000  0.00000000 -0.00000000  0.16234896  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.65444889 -0.00000022 -0.00000000 -0.00000000 -0.01659672
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.19698475 -0.00000007  0.00000000  0.00000000 -0.56430062
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.50268847  0.00000000  0.00000000 -0.00000007
                                0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000 -0.00000000  0.00000001

 19  1    12    1  |1 1>+      -0.00000000  0.07062880 -0.00000000  0.00000000  0.00000000  0.51007338  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00053114 -0.00000000 -0.04079645  0.00000000 -0.00000000 -0.00000000  0.52444815  0.00000000
                                0.00000068  0.00000000  0.00004057 -0.00000000  0.00000000 -0.00000000  0.00055814  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00059771 -0.00000000 -0.00000000  0.00000000 -0.00117183
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00019282  0.00000000  0.00000000  0.00000000 -0.00000937  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.70663713  0.00000000 -0.00077097 -0.00000000 -0.00000000  0.00000000  0.00003071  0.00000000
                               -0.00090721 -0.00000000  0.00000077  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000456 -0.00000000  0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000330 -0.00000000  0.00000000 -0.00000000  0.00000102

 26  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000330 -0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000204  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00158645  0.00000000 -0.00000389  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000776  0.00000000

 29  1     6    1  |1 0>        0.00004663  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.03631721  0.00000000 -0.00002922  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.48486357  0.00000000  0.00000000 -0.00000002

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.48472245  0.00000016  0.00000000  0.00000000 -0.12477604

 32  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00032085 -0.00000000  0.00000000  0.00000000  0.65436992  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.17955771 -0.00000000  0.00000000  0.00000000  0.00126826  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000  0.00000000 -0.00069660 -0.00000000
                               -0.00000015 -0.00000000 -0.00021311  0.00000000 -0.00000000 -0.00000000  0.65454346  0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.21380989  0.00000007 -0.00000000 -0.00000000  0.69934926

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000007 -0.21302217  0.00000000 -0.00000000  0.00000011

 37  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00021894  0.00000000  0.00000000  0.00000000  0.00000039  0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00059738  0.00000000  0.00000000 -0.00000000  0.00114735

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00059593 -0.00000000  0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000793 -0.00000000 -0.00000000  0.00000000

 41  1     2    1  |1 1>-       0.00000174 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00135846 -0.00000000  0.00000220 -0.00000000 -0.00000000  0.00000000 -0.00000203 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000281 -0.00000000  0.00000000 -0.00000000 -0.00000310 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000084 -0.00000000  0.00000000  0.00000000 -0.00000921

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00001028  0.00000000  0.00000000  0.00000000  0.00000316

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00002146  0.00000000  0.00000000 -0.00000000  0.00004364

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.69196550 -0.00000000 -0.00000000  0.00000000  0.16355463  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000095 -0.00000000  0.00070202  0.00000000 -0.00000000  0.00000000 -0.00011047 -0.00000000
                                0.00074184 -0.00000000  0.70590451  0.00000000  0.00000000 -0.00000000  0.10380083 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000022  0.65442867 -0.00000000  0.00000000 -0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.19635576  0.00000000 -0.00000000  0.00000009

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.50221751 -0.00000017 -0.00000000 -0.00000000  0.42027159

 51  1    12    1  |1 1>-      -0.00000068  0.00000000 -0.00004023 -0.00000000  0.00000000 -0.00000000  0.00055817  0.00000000
                               -0.00053063  0.00000000 -0.04045033 -0.00000000  0.00000000  0.00000000 -0.52447361 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.07012579 -0.00000000 -0.00000000 -0.00000000  0.50844493  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00059634  0.00000000 -0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00090721 -0.00000000  0.00000077  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                               -0.70663675 -0.00000000  0.00077099  0.00000000  0.00000000 -0.00000000  0.00003067  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00019278  0.00000000  0.00000000  0.00000000  0.00001020  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>        0.00000000 -0.00000158  0.00000017 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000994 -0.04198563 -0.00546433  0.00000002  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000148 -0.00546337  0.04199184 -0.00000013 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04236275
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000333

  5  1     5    1  |0 0>       -0.00000149  0.00000000  0.00000000  0.00000013  0.04236422  0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.04236422 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00001043  0.00000492 -0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094130  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000352  0.00163982  0.00092245 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00093920
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

 11  1     4    1  |1 1>+      -0.00000920  0.00000000  0.00000000  0.00000000  0.00162493  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000317 -0.00000000 -0.00000000 -0.00000000 -0.00093967 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00004366  0.00000000  0.00000000  0.00000000  0.00000369  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00022632
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

 15  1     8    1  |1 1>+      -0.00000000 -0.14219568  0.00000409 -0.00039805  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00020169 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000  0.00007527 -0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.41970805  0.00000000 -0.00000000 -0.00000000 -0.00022026 -0.00000000  0.00000000
                               -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.45759076  0.00039452 -0.00010974  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00013828
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 21  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000035  0.70645312 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00025539 -0.40040071  0.71074264 -0.00000217 -0.00000003  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.70646985
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00005548

 24  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00001991  0.00188369 -0.00000001 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094087  0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000101 -0.00000000  0.00000000  0.00000000  0.00094087  0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00187932

 29  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 30  1     7    1  |1 0>        0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.12422753  0.00000000  0.00000000  0.00000000  0.00002067  0.00000000 -0.00000000

 31  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002072  0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00120788  0.00000409  0.00038598 -0.00000000 -0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.73431852 -0.00049376  0.00000521 -0.00000000 -0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036052

 35  1    12    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000011 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00021870 -0.00000000

 36  1    13    1  |1 0>       -0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.69958949  0.00000000 -0.00000000 -0.00000000 -0.00021873 -0.00000000  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00025850  0.81570625 -0.00862277  0.00000003  0.00000000 -0.00000001

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000035  0.70648696 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00114792 -0.00000000  0.00000000  0.00000216  0.70648677  0.00000035 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000794 -0.00000000  0.00000000  0.00000000  0.00094130  0.00000000 -0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00093920

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000353 -0.00161996  0.00095691 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00162492  0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00093969  0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000369 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.14158997 -0.00001249 -0.00039783  0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00022628

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01732708 -0.00000000 -0.00000000 -0.00000000 -0.00020168 -0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.56452130  0.00000000  0.00000000  0.00000000  0.00007527  0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00022016  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00013830

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.45947581 -0.00039673 -0.00010135  0.00000000  0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00117235  0.00000000  0.00000000  0.00000216  0.70645331  0.00000035 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005548
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.70647023

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00025534 -0.41533610 -0.70211934  0.00000215  0.00000003  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    1.12%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.12%    0.00%    0.00%    0.02%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.15%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.15%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%   16.48%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.54%    0.00%    0.00%   49.36%
 10  1     3    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.00%    0.00%   49.42%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.98%    0.00%   16.47%    0.00%    0.00%
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
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.90%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%   16.47%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%   16.47%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   39.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%   16.48%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.41%    0.00%    0.00%   49.49%
 43  1     4    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%   49.42%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%   29.98%    0.00%    0.00%    0.00%   16.47%    0.00%
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
  4  1     4    1  |0 0>          1.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    5.59%   47.73%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 10  1     3    1  |1 1>+        16.48%   20.03%    0.00%    0.00%    0.00%    0.00%   33.29%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   27.90%    0.00%    0.00%   12.10%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   29.32%    0.00%    0.00%   24.03%    0.00%    0.00%
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
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   37.18%   16.14%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   37.19%    0.00%    0.00%   16.13%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.89%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%    0.00%
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
 40  1     1    1  |1 1>-         0.00%    0.00%    5.59%    0.00%    0.00%   47.73%    0.00%    0.00%
 41  1     2    1  |1 1>-        16.48%   19.96%    0.00%    0.00%    0.00%    0.00%   33.36%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   27.90%   12.11%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   29.33%   24.02%    0.00%    0.00%    0.00%
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
  2  1     2    1  |0 0>         96.83%    1.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          1.85%   96.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.67%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   98.67%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.67%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.58%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   99.87%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.07%    0.00%
 22  1    15    1  |1 1>+         0.03%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.07%
 24  1     1    1  |1 0>          0.00%    0.76%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.77%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.87%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.07%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.07%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.57%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.87%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.09%    0.00%    0.00%    0.07%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.07%
 55  1    16    1  |1 1>-         0.03%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         97.99%    2.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   34.58%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%   36.67%    0.10%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.84%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.91%
 19  1    12    1  |1 1>+         0.00%    0.00%    1.42%   28.49%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.54%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.67%   32.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%   33.03%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%   23.79%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.76%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.95%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   37.95%    0.00%    6.03%
 37  1    14    1  |1 0>          0.67%   32.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%   36.68%    0.09%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   34.58%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.84%    0.00%   33.05%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%   26.98%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.81%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.54%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    1.44%   28.47%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.67%   32.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.16%    0.00%    0.00%   14.34%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%   10.67%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+        33.05%    0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+        26.97%    0.00%    0.00%    0.00%   23.03%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%   32.40%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   22.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%   49.83%    0.00%    0.00%   18.96%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.94%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%   41.79%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>         33.04%    0.00%    0.00%    0.00%   41.78%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%   33.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.40%    0.00%    0.00%
 35  1    12    1  |1 0>          6.03%    0.00%    0.00%    0.00%    2.54%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    2.53%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.93%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.93%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%
 46  1     7    1  |1 1>-         0.00%   10.67%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.17%    0.00%    0.00%   14.34%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%   23.02%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.91%    0.00%    0.00%    0.00%   32.40%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%   49.84%    0.00%    0.00%   18.96%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%   22.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.94%    0.00%
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
 14  1     7    1  |1 1>+         0.00%    0.00%   49.84%    0.00%    0.00%    0.00%    1.07%    0.00%
 15  1     8    1  |1 1>+         0.00%   47.90%    0.00%    0.00%    0.00%    2.64%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%   42.83%    0.00%    0.00%    0.00%    0.03%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    3.88%    0.00%    0.00%    0.00%   31.84%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.27%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.50%    0.00%    0.00%    0.00%   26.02%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.17%    0.00%    0.00%    0.00%   27.50%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+        49.93%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.51%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%   23.50%    0.00%    0.00%    0.00%    1.56%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.82%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    3.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.84%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    4.57%    0.00%    0.00%    0.00%   48.91%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.54%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%   47.88%    0.00%    0.00%    0.00%    2.68%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%   49.83%    0.00%    0.00%    0.00%    1.08%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.86%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%   25.22%    0.00%    0.00%    0.00%   17.66%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%   27.51%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.49%    0.00%    0.00%    0.00%   25.85%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-        49.93%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.18%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    2.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+        17.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   20.94%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   49.91%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%   16.03%   50.52%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          1.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%   53.92%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>         48.94%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   66.54%    0.01%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.91%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.91%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    2.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-        31.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%   21.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.91%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%
 55  1    16    1  |1 1>-         0.00%    0.00%   17.25%   49.30%    0.00%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      129.93       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1166.73    612.99    279.60    204.26     46.94      7.94      0.41     14.35
 REAL TIME  *      1213.77 SEC
 DISK USED  *       288.87 MB (local),        2.73 GB (total)
 SF USED    *         1.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24984.824665448130

              CI              CI           MULTI         RHF-SCF
 -24984.81744373 -24984.83837371 -24984.64785396 -24984.45070732
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
