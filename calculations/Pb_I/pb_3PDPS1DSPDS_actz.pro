
 Working directory              : /wrk/irikura/molpro.54ZFzBqVes/
 Global scratch directory       : /wrk/irikura/molpro.54ZFzBqVes/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.54ZFzBqVes/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Pb SO-CI
 memory,8000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=cc-pVTZ-DK3
                                                                                 !basis=aug-cc-pwCVTZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 if $DKHO.EQ.0 then
     LSOP = "ECP"
 else
     LSOP = "LS"
 endif
 
 NTRIP=3
 NSING=5
                                                                                 !NTRIP=12
                                                                                 !NSING=15
 
                                                                                 ! add 7p to active space
 {multi
     closed,20,19
     occ,21,25
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,14,9
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,$LSOP,5201.2,5101.2;print,vls=0,hls=0}                               !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Jul-24          TIME: 10:38:46  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PVTZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry PB     S cc-pVTZ-DK3          selected for orbital group  1
 Library entry PB     P cc-pVTZ-DK3          selected for orbital group  1
 Library entry PB     D cc-pVTZ-DK3          selected for orbital group  1
 Library entry PB     F cc-pVTZ-DK3          selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         353
 NUMBER OF SYMMETRY AOS:          298
 NUMBER OF CONTRACTIONS:           68   (   33Ag  +   35Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     4.456 MB (compressed) written to integral file ( 17.9%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     202815.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     202815      RECORD LENGTH: 524288

 Memory used in sort:       0.76 MW

 SORT1 READ     3091078. AND WROTE       45084. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      304799. AND WROTE     1416696. INTEGRALS IN     14 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      201965.  Node maximum:      202815. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.390E-02 0.176E+00 0.178E+00 0.178E+00 0.178E+00 0.178E+00 0.178E+00 0.702E+00
         2 0.144E-01 0.144E-01 0.144E-01 0.336E+00 0.336E+00 0.336E+00 0.965E+00 0.965E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.48       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.86      3.69
 REAL TIME  *         7.63 SEC
 DISK USED  *        29.85 MB (local),      238.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  21  19

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20884.08133475  -20884.08133475     0.00D+00     0.37D+00     0     0       0.00      0.00    start
   2   -20884.08395492      -0.00262017     0.14D-02     0.14D-01     1     0       0.00      0.00    diag2
   3   -20884.08426777      -0.00031285     0.79D-03     0.34D-02     2     0       0.00      0.00    diag2
   4   -20884.08432871      -0.00006094     0.17D-03     0.25D-02     3     0       0.00      0.00    diag2
   5   -20884.08433208      -0.00000337     0.40D-04     0.41D-03     4     0       0.01      0.01    diag2
   6   -20884.08433221      -0.00000012     0.69D-05     0.71D-04     5     0       0.00      0.01    diag2
   7   -20884.08433221      -0.00000000     0.98D-06     0.11D-04     6     0       0.00      0.01    diag2
   8   -20884.08433221       0.00000000     0.54D-07     0.34D-06     7     0       0.00      0.01    fixocc
   9   -20884.08433221      -0.00000000     0.54D-08     0.46D-07     0     0       0.00      0.01    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.0843322080    
  RHF One-electron energy            -28598.0118852474    
  RHF Two-electron energy            7713.927553039404
  RHF Kinetic energy                  32809.0123341313    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.636534989823

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.15423     1  1  s    0.99999
    2.1     2.00000  -587.41865     1  2  s    1.00002
    3.1     2.00000  -143.49496     1  3  s    0.99990
    4.1     2.00000   -94.25484     1  1  d2-  0.99430
    5.1     2.00000   -94.25484     1  1  d2+  0.99327
    6.1     2.00000   -94.25484     1  1  d1+  0.99969
    7.1     2.00000   -94.25484     1  1  d1-  0.99847
    8.1     2.00000   -94.25484     1  1  d0   0.99986
    9.1     2.00000   -33.74429     1  4  s    1.00060
   10.1     2.00000   -16.16343     1  2  d2-  0.88187    1  2  d2+  0.47144
   11.1     2.00000   -16.16343     1  2  d2- -0.47027    1  2  d2+  0.87961
   12.1     2.00000   -16.16343     1  2  d1+  0.99746
   13.1     2.00000   -16.16343     1  2  d1-  0.99985
   14.1     2.00000   -16.16343     1  2  d0   1.00000
   15.1     2.00000    -5.89944     1  5  s    0.99668
   16.1     2.00000    -0.83099     1  3  d0   0.99910
   17.1     2.00000    -0.83099     1  3  d1+  0.89703    1  3  d1- -0.43977
   18.1     2.00000    -0.83099     1  3  d1+  0.43980    1  3  d1-  0.89709
   19.1     2.00000    -0.83099     1  3  d2-  0.99214
   20.1     2.00000    -0.83099     1  3  d2+  0.99207
   21.1     2.00000    -0.33661     1  6  s    0.84339
    1.2     2.00000  -506.09716     1  1  py   0.99916
    2.2     2.00000  -506.09716     1  1  px   0.99823
    3.2     2.00000  -506.09716     1  1  pz   0.99900
    4.2     2.00000  -119.71906     1  2  px   1.00000
    5.2     2.00000  -119.71906     1  2  py   0.99991
    6.2     2.00000  -119.71906     1  2  pz   0.99991
    7.2     2.00000   -25.78867     1  3  px   0.99999
    8.2     2.00000   -25.78867     1  3  py   0.99998
    9.2     2.00000   -25.78867     1  3  pz   0.99998
   10.2     2.00000    -5.58794     1  1  f1+  0.99035
   11.2     2.00000    -5.58794     1  1  f1-  0.98953
   12.2     2.00000    -5.58794     1  1  f0   0.99960
   13.2     2.00000    -5.58794     1  1  f2-  0.99750
   14.2     2.00000    -5.58794     1  1  f2+  0.99752
   15.2     2.00000    -5.58794     1  1  f3+  0.99141
   16.2     2.00000    -5.58794     1  1  f3-  0.99036
   17.2     2.00000    -3.59658     1  4  pz   1.00092
   18.2     2.00000    -3.59658     1  4  px   1.00092
   19.2     2.00000    -3.59658     1  4  py   1.00092
   20.2     1.00000    -0.04260     1  5  pz   0.68668    1  7  pz   0.31098
   21.2     1.00000    -0.04260     1  5  px   0.68669    1  7  px   0.31098
   22.2     1.00000    -0.04260     1  5  py   0.68668    1  7  py   0.31098


 HOMO     22.2    -0.042598 =      -1.1592eV
 LUMO     22.1     0.363271 =       9.8851eV
 LUMO-HOMO         0.405869 =      11.0443eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.48       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.94      0.08      3.69
 REAL TIME  *         8.34 SEC
 DISK USED  *        30.34 MB (local),      242.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  39 (   20   19)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      22 (   12   10)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.285D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.847D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.253D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.352D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.386D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.959D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.236D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.617D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.329D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.107D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 3   5 4 6 2 1 2 4 6 3 5   1 1 2 4 6 3 5 3 5 4   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.470D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.777D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.491D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.256D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.144D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.147D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.229D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.599D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.484D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.166D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.181D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.369D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.965D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.925D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.169D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.353D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.558D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.354D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.311D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.311D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.460D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.460D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 4   5 6 810 7 9 3 1 2 3   1 2 3 1 2 4 5 6 7 9   810 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  636  ( 134 closed/active, 430 closed/virtual, 0 active/active, 72 active/virtual )
 Total number of variables:    2346
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0 -20884.04085188  -20884.04851616   -0.00766428    0.08392636 0.00003757 0.00000000  0.79E+00      0.80
   2    9   16    0 -20884.04846055  -20884.04846089   -0.00000034    0.00121277 0.00000131 0.00000000  0.30E-02      1.99

 CONVERGENCE REACHED!  Final gradient:    0.00000036 ( 0.36E-06)
                       Final energy: -20884.04846089
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.0687342769    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32809.09194252
 One electron energy                        -28578.04498566
 Two electron energy                          7693.97625139
 Virial ratio                                    1.63653297
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.0687342768    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32809.09194253
 One electron energy                        -28578.04498565
 Two electron energy                          7693.97625137
 Virial ratio                                    1.63653297
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.0687342767    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32809.09194254
 One electron energy                        -28578.04498562
 Two electron energy                          7693.97625134
 Virial ratio                                    1.63653297
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.0362968631    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32808.97118703
 One electron energy                        -28577.42125352
 Two electron energy                          7693.38495665
 Virial ratio                                    1.63653432
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.0362968631    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32808.97118702
 One electron energy                        -28577.42125358
 Two electron energy                          7693.38495671
 Virial ratio                                    1.63653432
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.0362968631    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32808.97118703
 One electron energy                        -28577.42125352
 Two electron energy                          7693.38495666
 Virial ratio                                    1.63653432
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.0362968631    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32808.97118702
 One electron energy                        -28577.42125356
 Two electron energy                          7693.38495669
 Virial ratio                                    1.63653432
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.0362968631    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32808.97118702
 One electron energy                        -28577.42125358
 Two electron energy                          7693.38495672
 Virial ratio                                    1.63653432
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999979168
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999992895
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000028503
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999997636003
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000566307630
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.931147920746
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000021122668
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.068251337890
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999845044
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000162633
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999992389
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000475400
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999950998269
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.585626763416
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999954560013
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.414491802780
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000175788
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999844472
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999979109
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000001888597
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999482694101
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.483225315837
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000024317320
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.517256859330
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 6   3 5 2 4 1 6 3 5 2 4   1 1 6 5 3 2 4 6 3 5   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 5   7 9 810 6 4 2 3 1 1   3 2 1 3 2 5 7 910 8   6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.40368     1  1  s    0.99999
    2.1     2.00000  -587.66780     1  2  s    1.00002
    3.1     2.00000  -143.74413     1  3  s    0.99990
    4.1     2.00000   -94.50390     1  1  d1-  1.00000
    5.1     2.00000   -94.50390     1  1  d2-  1.00000
    6.1     2.00000   -94.50390     1  1  d2+  1.00000
    7.1     2.00000   -94.50390     1  1  d0   1.00000
    8.1     2.00000   -94.50390     1  1  d1+  1.00000
    9.1     2.00000   -33.99363     1  4  s    1.00059
   10.1     2.00000   -16.41270     1  2  d1-  1.00000
   11.1     2.00000   -16.41270     1  2  d2-  1.00000
   12.1     2.00000   -16.41270     1  2  d2+  1.00000
   13.1     2.00000   -16.41270     1  2  d0   1.00000
   14.1     2.00000   -16.41270     1  2  d1+  1.00000
   15.1     2.00000    -6.14888     1  5  s    0.99667
   16.1     2.00000    -1.08097     1  3  d1-  1.00026
   17.1     2.00000    -1.08097     1  3  d2-  1.00026
   18.1     2.00000    -1.08097     1  3  d2+  1.00026
   19.1     2.00000    -1.08097     1  3  d0   1.00026
   20.1     2.00000    -1.08097     1  3  d1+  1.00026
   21.1     1.97364    -0.56447     1  6  s    1.03507
    1.2     2.00000  -506.34622     1  1  py   1.00000
    2.2     2.00000  -506.34622     1  1  pz   1.00000
    3.2     2.00000  -506.34622     1  1  px   1.00000
    4.2     2.00000  -119.96806     1  2  py   1.00000
    5.2     2.00000  -119.96806     1  2  pz   1.00000
    6.2     2.00000  -119.96806     1  2  px   1.00000
    7.2     2.00000   -26.03778     1  3  py   0.99999
    8.2     2.00000   -26.03778     1  3  pz   0.99999
    9.2     2.00000   -26.03778     1  3  px   0.99999
   10.2     2.00000    -5.83719     1  1  f1-  0.99999
   11.2     2.00000    -5.83719     1  1  f3+  0.99999
   12.2     2.00000    -5.83719     1  1  f3-  0.99999
   13.2     2.00000    -5.83719     1  1  f2-  0.99999
   14.2     2.00000    -5.83719     1  1  f2+  0.99999
   15.2     2.00000    -5.83719     1  1  f0   0.99999
   16.2     2.00000    -5.83719     1  1  f1+  0.99999
   17.2     2.00000    -3.84623     1  4  py   0.99999
   18.2     2.00000    -3.84623     1  4  pz   0.99999
   19.2     2.00000    -3.84623     1  4  px   0.99999
   20.2     0.67171    -0.06547     1  5  px   0.91218
   21.2     0.67171    -0.06547     1  5  pz   0.91218
   22.2     0.67171    -0.06547     1  5  py   0.91218
   23.2     0.00374     0.41633     1  4  px  -0.40456    1  5  px  -0.61045    1  6  px  -0.91283    1  7  px   1.28452
   24.2     0.00374     0.41633     1  4  pz  -0.40456    1  5  pz  -0.61045    1  6  pz  -0.91283    1  7  pz   1.28452
   25.2     0.00374     0.41633     1  4  py  -0.40456    1  5  py  -0.61045    1  6  py  -0.91283    1  7  py   1.28452
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa000       0.00014332      0.00008370      0.99294809
 2 aa0000       0.00039087      0.99294803     -0.00008375
 2 a0a000       0.99294802     -0.00039088     -0.00014328
 0 2aa000      -0.00001211     -0.00000708     -0.08393628
 0 aa2000      -0.00003304     -0.08393628      0.00000708
 0 a2a000      -0.08393627      0.00003304      0.00001211
 
 Energy:   -20884.06873428 -20884.06873428 -20884.06873428
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 200000      -0.00037642      0.00135823     -0.10580146     -0.00008479      0.80313952
 2 002000       0.00022871     -0.01032953      0.74837064      0.00189406     -0.30993560
 2 0ab000       0.70154930     -0.00047143     -0.00008967      0.00015086      0.00031780
 2 0ba000      -0.70154930      0.00047143      0.00008967     -0.00015086     -0.00031780
 2 ba0000       0.00014965     -0.00203619      0.00181733     -0.70154421      0.00016886
 2 ab0000      -0.00014965      0.00203619     -0.00181733      0.70154421     -0.00016886
 2 a0b000       0.00047302      0.70147907      0.00972660     -0.00201068      0.00009503
 2 b0a000      -0.00047302     -0.70147907     -0.00972660      0.00201068     -0.00009503
 2 020000       0.00014771      0.00897130     -0.64256918     -0.00180928     -0.49320392
 0 022000      -0.00003178      0.00011467     -0.00893263     -0.00000716      0.06780767
 0 220000       0.00001931     -0.00087210      0.06318363      0.00015991     -0.02616732
 0 2ba000       0.05923059     -0.00003980     -0.00000757      0.00001274      0.00002683
 0 2ab000      -0.05923059      0.00003980      0.00000757     -0.00001274     -0.00002683
 0 ba2000      -0.00001263      0.00017191     -0.00015343      0.05923016     -0.00001426
 0 ab2000       0.00001263     -0.00017191      0.00015343     -0.05923016      0.00001426
 0 a2b000      -0.00003994     -0.05922466     -0.00082120      0.00016976     -0.00000802
 0 b2a000       0.00003994      0.05922466      0.00082120     -0.00016976      0.00000802
 0 202000       0.00001247      0.00075743     -0.05425100     -0.00015275     -0.04164035
 
 Energy:   -20884.03629686 -20884.03629686 -20884.03629686 -20884.03629686 -20884.03629686
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.34       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.65       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.03      2.09      0.08      3.69
 REAL TIME  *        11.31 SEC
 DISK USED  *        59.09 MB (local),      443.46 MB (total)
 SF USED    *        80.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.06873   2.0
    -20884.06873   2.0
    -20884.06873   2.0
    -20884.03630   6.0
    -20884.03630   6.0
    -20884.03630   6.0
    -20884.03630   6.0
    -20884.03630   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 82
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    52388 conf   237762 CSFs
 N-1 el internal:    36789 conf   275907 CSFs
 N-2 el internal:    13404 conf   143998 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      22 (  12  10 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.05 sec, npass=  1  Memory used:   0.77 MW


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.06873428
     2    -20884.06873428
     3    -20884.06873428

 Number of blocks in overlap matrix:  1000   Smallest eigenvalue:  0.51D-05
 Number of N-2 electron functions:    1502
 Number of N-1 electron functions:  275907

 Number of internal configurations:               119004
 Number of singly external configurations:       3033384
 Number of doubly external configurations:        182256
 Total number of contracted configurations:      3334644
 Total number of uncontracted configurations:   20300160

 Diagonal Coupling coefficients finished.               Storage:  72327361 words, CPU-Time:    146.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1881738 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.06873428     0.00000000    -0.17493338  0.44D-01  0.24D-01   191.43
    1     2     2     1.00000000     0.00000000-20884.06873428     0.00000000    -0.17496788  0.44D-01  0.24D-01   191.43
    1     3     3     1.00000000     0.00000000-20884.06873428     0.00000000    -0.17482033  0.44D-01  0.24D-01   191.43
    2     1     1     1.04855818    -0.15870260-20884.22743688    -0.15870260    -0.00610758  0.21D-02  0.53D-03  1465.36
    2     2     2     1.04866807    -0.15870135-20884.22743562    -0.15870135    -0.00610892  0.21D-02  0.54D-03  1465.36
    2     3     3     1.04868482    -0.15869427-20884.22742854    -0.15869427    -0.00611464  0.21D-02  0.54D-03  1465.36
    3     1     1     1.05434066    -0.16481673-20884.23355101    -0.00611413    -0.00021796  0.55D-04  0.35D-04  2718.92
    3     2     2     1.05433002    -0.16481665-20884.23355092    -0.00611530    -0.00021815  0.55D-04  0.35D-04  2718.92
    3     3     3     1.05433728    -0.16481616-20884.23355044    -0.00612190    -0.00021835  0.55D-04  0.35D-04  2718.92
    4     1     1     1.05517504    -0.16507932-20884.23381359    -0.00026258    -0.00002032  0.28D-05  0.55D-05  3967.72
    4     2     2     1.05517637    -0.16507930-20884.23381358    -0.00026265    -0.00002033  0.28D-05  0.55D-05  3967.72
    4     3     3     1.05517663    -0.16507923-20884.23381351    -0.00026307    -0.00002037  0.28D-05  0.55D-05  3967.72
    5     1     1     1.05540458    -0.16510942-20884.23384370    -0.00003010    -0.00000339  0.65D-06  0.74D-06  5215.16
    5     2     2     1.05540538    -0.16510942-20884.23384369    -0.00003012    -0.00000338  0.65D-06  0.74D-06  5215.16
    5     3     3     1.05540438    -0.16510941-20884.23384368    -0.00003017    -0.00000339  0.65D-06  0.74D-06  5215.16
    6     1     1     1.05536525    -0.16511406-20884.23384833    -0.00000464    -0.00000040  0.93D-07  0.62D-07  6454.38
    6     2     2     1.05536580    -0.16511406-20884.23384833    -0.00000464    -0.00000040  0.93D-07  0.62D-07  6454.38
    6     3     3     1.05536507    -0.16511406-20884.23384833    -0.00000465    -0.00000040  0.94D-07  0.63D-07  6454.38
    7     1     1     1.05536323    -0.16511450-20884.23384878    -0.00000044    -0.00000004  0.63D-08  0.82D-08  7702.60
    7     2     2     1.05536316    -0.16511450-20884.23384878    -0.00000044    -0.00000004  0.63D-08  0.82D-08  7702.60
    7     3     3     1.05536325    -0.16511450-20884.23384878    -0.00000044    -0.00000004  0.63D-08  0.82D-08  7702.60
    8     1     1     1.05537146    -0.16511455-20884.23384882    -0.00000005    -0.00000001  0.11D-08  0.15D-08  8945.95
    8     2     2     1.05537146    -0.16511455-20884.23384882    -0.00000005    -0.00000001  0.11D-08  0.15D-08  8945.95
    8     3     3     1.05537145    -0.16511455-20884.23384882    -0.00000005    -0.00000001  0.11D-08  0.15D-08  8945.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   0.5%  34.9%
 P   0.5%  53.9%   6.5%

 Initialization:   1.6%
 Other:            0.1%

 Total CPU:     8945.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222/0/000          -0.5555881   0.7877289   0.0498263
 22222222222222222//0000           0.5237406   0.3223387   0.7439564
 222222222222222220//000           0.5905042   0.4552566  -0.6129631
 22222202222222222/2/000           0.0412440  -0.0584770  -0.0036989
 22222202222222222//2000          -0.0388798  -0.0239288  -0.0552275

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.558561    0.526543    0.593664
 2           0.791944    0.324063    0.457692
 3           0.050093    0.747937   -0.616243

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970399   -0.000000    0.000000
 2          -0.000000    0.970399    0.000000
 3           0.000000    0.000000    0.970399


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.59366362 (fixed)   0.97094139 (relaxed)   0.97039886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00622267   -0.01095834   -0.04128497
 Singles      0.03450734   -0.07210038   -0.07325739
 Pairs        0.02120868   -0.05019952   -0.05057219
 Total        1.06193868   -0.13325823   -0.16511455
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06873428
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60606704
 One electron energy               -28573.98985218
 Two electron energy                 7689.75600336
 Virial quotient                       -0.63656683
 Correlation energy                    -0.16511455
 !MRCI STATE 1.1 Energy              -20884.2338488243    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.24407580 (Davidson, fixed reference)
 Cluster corrected energies        -20884.24387991 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.24407580 (Davidson, rotated reference)

 Cluster corrected energies        -20884.24402825 (Pople, fixed reference)
 Cluster corrected energies        -20884.24382232 (Pople, relaxed reference)
 Cluster corrected energies        -20884.24402825 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.79194355 (fixed)   0.97094139 (relaxed)   0.97039886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00622267   -0.01095834   -0.05211193
 Singles      0.03450734   -0.07210038   -0.07325739
 Pairs        0.02120868   -0.03870195   -0.03974522
 Total        1.06193868   -0.12176066   -0.16511455
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06873428
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60606739
 One electron energy               -28573.98985296
 Two electron energy                 7689.75600414
 Virial quotient                       -0.63656683
 Correlation energy                    -0.16511455
 !MRCI STATE 2.1 Energy              -20884.2338488242    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.24407580 (Davidson, fixed reference)
 Cluster corrected energies        -20884.24387991 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.24407580 (Davidson, rotated reference)

 Cluster corrected energies        -20884.24402825 (Pople, fixed reference)
 Cluster corrected energies        -20884.24382232 (Pople, relaxed reference)
 Cluster corrected energies        -20884.24402825 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74793687 (fixed)   0.97094139 (relaxed)   0.97039887 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00622267   -0.01095834   -0.13762603
 Singles      0.03450734   -0.07210038   -0.07325739
 Pairs        0.02120867    0.05210878    0.04576888
 Total        1.06193868   -0.03094993   -0.16511455
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06873428
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60606704
 One electron energy               -28573.98985218
 Two electron energy                 7689.75600336
 Virial quotient                       -0.63656683
 Correlation energy                    -0.16511455
 !MRCI STATE 3.1 Energy              -20884.2338488241    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.24407580 (Davidson, fixed reference)
 Cluster corrected energies        -20884.24387991 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.24407580 (Davidson, rotated reference)

 Cluster corrected energies        -20884.24402825 (Pople, fixed reference)
 Cluster corrected energies        -20884.24382232 (Pople, relaxed reference)
 Cluster corrected energies        -20884.24402825 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.34       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       83.10       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9169.85   9163.81      2.09      0.08      3.69
 REAL TIME  *      9223.86 SEC
 DISK USED  *       141.53 MB (local),     1020.57 MB (total)
 SF USED    *       913.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20884.24407580  AU                              
 SETTING HLSDIAG(2)     =    -20884.24407580  AU                              
 SETTING HLSDIAG(3)     =    -20884.24407580  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 82
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    52969 conf   145236 CSFs
 N-1 el internal:    38829 conf   158928 CSFs
 N-2 el internal:    16356 conf    83369 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      22 (  12  10 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.03629686
     2    -20884.03629686
     3    -20884.03629686
     4    -20884.03629686
     5    -20884.03629686

 Number of blocks in overlap matrix:  1576   Smallest eigenvalue:  0.21D-05
 Number of N-2 electron functions:    2448
 Number of N-1 electron functions:  158928

 Number of internal configurations:                73346
 Number of singly external configurations:       1746704
 Number of doubly external configurations:        297458
 Total number of contracted configurations:      2117508
 Total number of uncontracted configurations:   11820843

 Diagonal Coupling coefficients finished.               Storage:  61742266 words, CPU-Time:    197.72 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2143263 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.03629686     0.00000000    -0.17645986  0.46D-01  0.24D-01   242.23
    1     2     2     1.00000000     0.00000000-20884.03629686    -0.00000000    -0.17621660  0.45D-01  0.24D-01   242.23
    1     3     3     1.00000000     0.00000000-20884.03629686     0.00000000    -0.17551690  0.44D-01  0.24D-01   242.23
    1     4     4     1.00000000     0.00000000-20884.03629686     0.00000000    -0.17633486  0.45D-01  0.24D-01   242.23
    1     5     5     1.00000000     0.00000000-20884.03629686     0.00000000    -0.17551480  0.44D-01  0.24D-01   242.23
    2     1     1     1.05042800    -0.16250293-20884.19879979    -0.16250293    -0.00715488  0.22D-02  0.89D-03  1616.92
    2     2     2     1.05042647    -0.16245712-20884.19875398    -0.16245712    -0.00718516  0.22D-02  0.90D-03  1616.92
    2     3     3     1.05063642    -0.16245305-20884.19874991    -0.16245305    -0.00726914  0.23D-02  0.89D-03  1616.92
    2     4     4     1.05072110    -0.16244792-20884.19874478    -0.16244792    -0.00727025  0.23D-02  0.89D-03  1616.92
    2     5     5     1.05088150    -0.16243246-20884.19872932    -0.16243246    -0.00728780  0.23D-02  0.90D-03  1616.92
    3     1     1     1.05875204    -0.17001520-20884.20631206    -0.00751227    -0.00033288  0.69D-04  0.70D-04  2988.61
    3     2     2     1.05872297    -0.17000770-20884.20630456    -0.00755058    -0.00033761  0.70D-04  0.72D-04  2988.61
    3     3     3     1.05870727    -0.16999213-20884.20628900    -0.00753909    -0.00034976  0.73D-04  0.74D-04  2988.61
    3     4     4     1.05871721    -0.16999141-20884.20628827    -0.00754349    -0.00035026  0.74D-04  0.74D-04  2988.61
    3     5     5     1.05869334    -0.16998793-20884.20628479    -0.00755546    -0.00035219  0.74D-04  0.75D-04  2988.61
    4     1     1     1.06055417    -0.17043546-20884.20673232    -0.00042026    -0.00003032  0.45D-05  0.82D-05  4383.26
    4     2     2     1.06055054    -0.17043458-20884.20673144    -0.00042688    -0.00003089  0.47D-05  0.83D-05  4383.26
    4     3     3     1.06053254    -0.17043287-20884.20672973    -0.00044073    -0.00003206  0.47D-05  0.87D-05  4383.26
    4     4     4     1.06053713    -0.17043275-20884.20672961    -0.00044134    -0.00003210  0.47D-05  0.87D-05  4383.26
    4     5     5     1.06053463    -0.17043257-20884.20672944    -0.00044465    -0.00003233  0.48D-05  0.87D-05  4383.26
    5     1     1     1.06089409    -0.17047659-20884.20677345    -0.00004113    -0.00000337  0.63D-06  0.79D-06  5744.96
    5     2     2     1.06089136    -0.17047652-20884.20677338    -0.00004194    -0.00000343  0.62D-06  0.81D-06  5744.96
    5     3     3     1.06089495    -0.17047631-20884.20677317    -0.00004344    -0.00000358  0.66D-06  0.85D-06  5744.96
    5     4     4     1.06089744    -0.17047629-20884.20677315    -0.00004354    -0.00000358  0.67D-06  0.84D-06  5744.96
    5     5     5     1.06089586    -0.17047627-20884.20677314    -0.00004370    -0.00000360  0.67D-06  0.85D-06  5744.96
    6     1     1     1.06090826    -0.17048093-20884.20677779    -0.00000434    -0.00000033  0.64D-07  0.65D-07  7101.54
    6     2     2     1.06090813    -0.17048093-20884.20677779    -0.00000441    -0.00000034  0.65D-07  0.66D-07  7101.54
    6     3     3     1.06090452    -0.17048090-20884.20677777    -0.00000460    -0.00000036  0.73D-07  0.71D-07  7101.54
    6     4     4     1.06090368    -0.17048090-20884.20677776    -0.00000461    -0.00000036  0.74D-07  0.71D-07  7101.54
    6     5     5     1.06090459    -0.17048090-20884.20677776    -0.00000462    -0.00000036  0.74D-07  0.72D-07  7101.54
    7     1     1     1.06091985    -0.17048131-20884.20677817    -0.00000038    -0.00000003  0.53D-08  0.74D-08  8453.79
    7     2     2     1.06091975    -0.17048131-20884.20677817    -0.00000038    -0.00000003  0.53D-08  0.75D-08  8453.79
    7     3     3     1.06091877    -0.17048131-20884.20677817    -0.00000040    -0.00000004  0.58D-08  0.81D-08  8453.79
    7     4     4     1.06091881    -0.17048131-20884.20677817    -0.00000041    -0.00000004  0.59D-08  0.81D-08  8453.79
    7     5     5     1.06091873    -0.17048131-20884.20677817    -0.00000041    -0.00000004  0.59D-08  0.82D-08  8453.79
    8     1     1     1.06093202    -0.17048135-20884.20677821    -0.00000004    -0.00000000  0.74D-09  0.10D-08  9808.51
    8     2     2     1.06093186    -0.17048135-20884.20677821    -0.00000004    -0.00000000  0.84D-09  0.11D-08  9808.51
    8     3     3     1.06093191    -0.17048135-20884.20677821    -0.00000004    -0.00000000  0.74D-09  0.11D-08  9808.51
    8     4     4     1.06093186    -0.17048135-20884.20677821    -0.00000004    -0.00000000  0.81D-09  0.11D-08  9808.51
    8     5     5     1.06093191    -0.17048135-20884.20677821    -0.00000004    -0.00000000  0.83D-09  0.12D-08  9808.51


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.9%
 S   0.4%  37.7%
 P   0.5%  48.7%   8.6%

 Initialization:   2.0%
 Other:            0.2%

 Total CPU:     9808.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\000          -0.0813182   0.9319737   0.0981129  -0.1163619  -0.1656806
 22222222222222222/0\000           0.0210073   0.0812502   0.0250883  -0.5035246   0.8152267
 22222222222222222/\0000          -0.0014866   0.1839647   0.0280318   0.8116152   0.4821346
 22222222222222222200000          -0.0003316  -0.0847497   0.7808911   0.0010912  -0.0149025
 22222222222222222020000           0.6779414   0.0971956  -0.3846343   0.0011677  -0.0145985
 22222222222222222002000          -0.6776009  -0.0124440  -0.3962677  -0.0022589   0.0295009
 222222022222222222/\000           0.0060224  -0.0690215  -0.0072662   0.0086177   0.0122702
 22222202222222222/2\000          -0.0015558  -0.0060173  -0.0018580   0.0372908  -0.0603753
 22222202222222222/\2000           0.0001101  -0.0136243  -0.0020760  -0.0601078  -0.0357067
 22222202222222222022000          -0.0000253  -0.0062767   0.0578331   0.0000808  -0.0011037
 22222202222222222202000           0.0502071   0.0071981  -0.0284849   0.0000865  -0.0010811
 22222202222222222220000          -0.0501834  -0.0009217  -0.0293465  -0.0001673   0.0021848

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\22222222220/\000  23.1     0.0708084   0.0057747   0.0001699   0.0001784  -0.0022952
 222222\2222222222/0\000  25.1     0.0349981  -0.0038314   0.0617055   0.0001743  -0.0023113
 222222\2222222222/\0000  27.1    -0.0350504  -0.0094971   0.0611046  -0.0000027  -0.0000324
 222222\2222222222/0\000  24.1    -0.0015519  -0.0060023  -0.0018534   0.0371973  -0.0602240
 222222\22222222220/\000  26.1     0.0051838  -0.0594109  -0.0062544   0.0074178   0.0105617
 222222\2222222222/\0000  26.1    -0.0000954   0.0118115   0.0017998   0.0521101   0.0309556

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.081779    0.021126   -0.955112   -0.001495   -0.130163
 2           0.937251    0.081710   -0.063205    0.185006   -0.113930
 3           0.098668    0.025230   -0.137666    0.028191    0.951945
 4          -0.117021   -0.506375   -0.002595    0.816211    0.001004
 5          -0.166619    0.819843    0.033545    0.484864   -0.013967

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967635   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.967635    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.967635    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.967635    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.967635

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  6141       0.00000436    -1.52266263       22222222222222222011000         

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   581       0.00000305    -1.06679028       22222222222222222200000         

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  6146       0.00000331    -1.15477790       22222222222222222110000         

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  6145       0.00000334    -1.16506698       22222222222222222101000         


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95511176 (fixed)   0.96800233 (relaxed)   0.96763488 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00667530   -0.01205029   -0.10167273
 Singles      0.03711511   -0.07434277   -0.07553056
 Pairs        0.02422366    0.01131131    0.00672193
 Total        1.06801406   -0.07508175   -0.17048135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03629686
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60210813
 One electron energy               -28573.56338484
 Two electron energy                 7689.35660663
 Virial quotient                       -0.63656608
 Correlation energy                    -0.17048135
 !MRCI STATE 1.1 Energy              -20884.2067782121    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.21837334 (Davidson, fixed reference)
 Cluster corrected energies        -20884.21823514 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.21837334 (Davidson, rotated reference)

 Cluster corrected energies        -20884.21843063 (Pople, fixed reference)
 Cluster corrected energies        -20884.21828300 (Pople, relaxed reference)
 Cluster corrected energies        -20884.21843063 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93725053 (fixed)   0.96800240 (relaxed)   0.96763495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00667530   -0.01205030   -0.10035167
 Singles      0.03711540   -0.07434301   -0.07553063
 Pairs        0.02422319    0.00990062    0.00540095
 Total        1.06801390   -0.07649268   -0.17048135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03629686
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60209055
 One electron energy               -28573.56335080
 Two electron energy                 7689.35657259
 Virial quotient                       -0.63656608
 Correlation energy                    -0.17048135
 !MRCI STATE 2.1 Energy              -20884.2067782118    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.21837331 (Davidson, fixed reference)
 Cluster corrected energies        -20884.21823511 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.21837331 (Davidson, rotated reference)

 Cluster corrected energies        -20884.21843060 (Pople, fixed reference)
 Cluster corrected energies        -20884.21828297 (Pople, relaxed reference)
 Cluster corrected energies        -20884.21843060 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95194470 (fixed)   0.96800238 (relaxed)   0.96763493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00667530   -0.01205029   -0.01362511
 Singles      0.03711504   -0.07434274   -0.07553057
 Pairs        0.02422361   -0.08272481   -0.08132567
 Total        1.06801395   -0.16911784   -0.17048135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03629686
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60211681
 One electron energy               -28573.56340188
 Two electron energy                 7689.35662367
 Virial quotient                       -0.63656608
 Correlation energy                    -0.17048135
 !MRCI STATE 3.1 Energy              -20884.2067782117    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.21837332 (Davidson, fixed reference)
 Cluster corrected energies        -20884.21823512 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.21837332 (Davidson, rotated reference)

 Cluster corrected energies        -20884.21843061 (Pople, fixed reference)
 Cluster corrected energies        -20884.21828298 (Pople, relaxed reference)
 Cluster corrected energies        -20884.21843061 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.81621056 (fixed)   0.96800240 (relaxed)   0.96763496 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00667529   -0.01205029   -0.09099988
 Singles      0.03711538   -0.07434299   -0.07553062
 Pairs        0.02422322   -0.00008723   -0.00395085
 Total        1.06801389   -0.08648052   -0.17048135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03629686
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60208863
 One electron energy               -28573.56334966
 Two electron energy                 7689.35657145
 Virial quotient                       -0.63656608
 Correlation energy                    -0.17048135
 !MRCI STATE 4.1 Energy              -20884.2067782115    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.21837331 (Davidson, fixed reference)
 Cluster corrected energies        -20884.21823511 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.21837331 (Davidson, rotated reference)

 Cluster corrected energies        -20884.21843059 (Pople, fixed reference)
 Cluster corrected energies        -20884.21828297 (Pople, relaxed reference)
 Cluster corrected energies        -20884.21843059 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.81984250 (fixed)   0.96800238 (relaxed)   0.96763493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00667530   -0.01205029   -0.09221794
 Singles      0.03711543   -0.07434303   -0.07553061
 Pairs        0.02422322    0.00121372   -0.00273280
 Total        1.06801395   -0.08517960   -0.17048135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03629686
 Nuclear energy                         0.00000000
 Kinetic energy                     32807.60208211
 One electron energy               -28573.56333602
 Two electron energy                 7689.35655781
 Virial quotient                       -0.63656608
 Correlation energy                    -0.17048135
 !MRCI STATE 5.1 Energy              -20884.2067782114    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.21837332 (Davidson, fixed reference)
 Cluster corrected energies        -20884.21823512 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.21837332 (Davidson, rotated reference)

 Cluster corrected energies        -20884.21843061 (Pople, fixed reference)
 Cluster corrected energies        -20884.21828298 (Pople, relaxed reference)
 Cluster corrected energies        -20884.21843061 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.34       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      170.77       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19630.04  10460.18   9163.81      2.09      0.08      3.69
 REAL TIME  *     19742.19 SEC
 DISK USED  *       229.20 MB (local),        1.60 GB (total)
 SF USED    *      1002.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20884.21837334  AU                              
 SETTING HLSDIAG(5)     =    -20884.21837331  AU                              
 SETTING HLSDIAG(6)     =    -20884.21837332  AU                              
 SETTING HLSDIAG(7)     =    -20884.21837331  AU                              
 SETTING HLSDIAG(8)     =    -20884.21837332  AU                              


         HLSDIAG
    -20884.24408
    -20884.24408
    -20884.24408
    -20884.21837
    -20884.21837
    -20884.21837
    -20884.21837
    -20884.21837
                                                  


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

 Time for Seward_LS:      55.62 sec

 CPU time:     55.62 sec, REAL time:     59.44 sec


 SORTLS1 read     1689796. and wrote     1689796. SO integrals in    21 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read     1689796. and wrote     8257518. SO integrals in    21 records. CPU time:      0.02 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    61.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    61.2 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies: -20884.233849 -20884.233849 -20884.233849
 Replaced energies: -20884.244076 -20884.244076 -20884.244076

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies: -20884.206778 -20884.206778 -20884.206778 -20884.206778 -20884.206778
 Replaced energies: -20884.218373 -20884.218373 -20884.218373 -20884.218373 -20884.218373



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20884.24407580

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00   -2982.29    1292.16       0.00       0.00       0.00   -2190.16
                           -0.00     282.47   -4465.75      -0.00    2457.18    1824.98       0.00       0.00       0.00      40.52

    2   2.1  1.0  1.0       0.00       0.00       0.00    2982.29      -0.00   -2099.51       0.00       0.00       0.00    -963.77
                         -282.47      -0.00   -3149.71   -2457.18      -0.00   -2367.15       0.00       0.00       0.00      31.64

    3   3.1  1.0  1.0       0.00       0.00       0.00   -1292.16    2099.51      -0.00       0.00       0.00       0.00   -2956.51
                         4465.75    3149.71       0.00   -1824.98    2367.15      -0.00       0.00       0.00       0.00      65.52

    4   1.1  1.0  0.0      -0.00    2982.29   -1292.16       0.00       0.00       0.00      -0.00   -2982.29    1292.16       0.00
                            0.00    2457.18    1824.98       0.00       0.00       0.00      -0.00    2457.18    1824.98   -2833.98

    5   2.1  1.0  0.0   -2982.29      -0.00    2099.51       0.00       0.00       0.00    2982.29      -0.00   -2099.51       0.00
                        -2457.18       0.00   -2367.15      -0.00       0.00       0.00   -2457.18      -0.00   -2367.15    4530.85

    6   3.1  1.0  0.0    1292.16   -2099.51      -0.00       0.00       0.00       0.00   -1292.16    2099.51      -0.00       0.00
                        -1824.98    2367.15       0.00      -0.00      -0.00       0.00   -1824.98    2367.15      -0.00     621.90

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00    2982.29   -1292.16       0.00       0.00       0.00   -2190.16
                           -0.00      -0.00      -0.00       0.00    2457.18    1824.98       0.00    -282.47    4465.75     -40.52

    8   2.1  1.0 -1.0       0.00       0.00       0.00   -2982.29      -0.00    2099.51       0.00       0.00       0.00    -963.77
                           -0.00      -0.00      -0.00   -2457.18       0.00   -2367.15     282.47       0.00    3149.71     -31.64

    9   3.1  1.0 -1.0       0.00       0.00       0.00    1292.16   -2099.51      -0.00       0.00       0.00       0.00   -2956.51
                           -0.00      -0.00      -0.00   -1824.98    2367.15       0.00   -4465.75   -3149.71      -0.00     -65.52

   10   1.1  0.0  0.0   -2190.16    -963.77   -2956.51       0.00       0.00       0.00   -2190.16    -963.77   -2956.51    5641.04
                          -40.52     -31.64     -65.52    2833.98   -4530.85    -621.90      40.52      31.64      65.52       0.00

   11   2.1  0.0  0.0    2279.63   -2878.77    -447.84       0.00       0.00       0.00    2279.63   -2878.77    -447.84       0.00
                         -303.02     709.81    -510.99    3899.10    1598.05    3323.41     303.02    -709.81     510.99      -0.00

   12   3.1  0.0  0.0    -918.32   -1009.72   -1790.80       0.00       0.00       0.00    -918.32   -1009.72   -1790.80       0.00
                        -2788.95   -2002.18    2702.21   -1357.16    2739.32     480.29    2788.95    2002.18   -2702.21      -0.00

   13   4.1  0.0  0.0   -1489.53    -567.71    1278.20       0.00       0.00       0.00   -1489.53    -567.71    1278.20       0.00
                         -770.53    3280.62    1703.87    2428.46    1915.52   -3383.69     770.53   -3280.62   -1703.87      -0.00

   14   5.1  0.0  0.0    1684.26    2109.83   -1885.82       0.00       0.00       0.00    1684.26    2109.83   -1885.82       0.00
                        -2795.05     518.58   -2438.71    1080.07    1056.30   -2419.92    2795.05    -518.58    2438.71      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0    2279.63    -918.32   -1489.53    1684.26
                          303.02    2788.95     770.53    2795.05

    2   2.1  1.0  1.0   -2878.77   -1009.72    -567.71    2109.83
                         -709.81    2002.18   -3280.62    -518.58

    3   3.1  1.0  1.0    -447.84   -1790.80    1278.20   -1885.82
                          510.99   -2702.21   -1703.87    2438.71

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -3899.10    1357.16   -2428.46   -1080.07

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -1598.05   -2739.32   -1915.52   -1056.30

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -3323.41    -480.29    3383.69    2419.92

    7   1.1  1.0 -1.0    2279.63    -918.32   -1489.53    1684.26
                         -303.02   -2788.95    -770.53   -2795.05

    8   2.1  1.0 -1.0   -2878.77   -1009.72    -567.71    2109.83
                          709.81   -2002.18    3280.62     518.58

    9   3.1  1.0 -1.0    -447.84   -1790.80    1278.20   -1885.82
                         -510.99    2702.21    1703.87   -2438.71

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5641.04       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5641.04       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5641.04       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5641.04
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by -20884.24407580 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3474.974    2580.914      -0.000     282.472

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3474.974       0.000   -3347.651    -282.472      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -2580.914    3347.651       0.000    4465.747    3149.708

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000    4217.595
                                0.000    3474.974    2580.914       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000   -4217.595       0.000
                            -3474.974       0.000   -3347.651      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000    1827.384   -2969.160
                            -2580.914    3347.651       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -4217.595    1827.384       0.000       0.000
                               -0.000     282.472   -4465.747      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    4217.595       0.000   -2969.160       0.000       0.000
                             -282.472      -0.000   -3149.708       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -1827.384    2969.160       0.000       0.000       0.000
                             4465.747    3149.708       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>           -3097.353   -1362.983   -4181.132       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    2833.981   -4530.851    -621.896     -57.303     -44.739

    2    1  |0 0>            3223.886   -4071.192    -633.337       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3899.098    1598.048    3323.413    -428.540    1003.823

    3    1  |0 0>           -1298.697   -1427.967   -2532.575       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1357.164    2739.318     480.287   -3944.168   -2831.509

    4    1  |0 0>           -2106.511    -802.860    1807.655       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    2428.465    1915.520   -3383.689   -1089.695    4639.492

    5    1  |0 0>            2381.899    2983.755   -2666.955       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1080.073    1056.302   -2419.920   -3952.805     733.386

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000   -3097.353    3223.886   -1298.697   -2106.511    2381.899
                            -4465.747       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -1362.983   -4071.192   -1427.967    -802.860    2983.755
                            -3149.708       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -4181.132    -633.337   -2532.575    1807.655   -2666.955
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -1827.384       0.000       0.000       0.000       0.000       0.000
                               -0.000   -2833.981   -3899.098    1357.164   -2428.465   -1080.073

    2    1  |1 0>            2969.160       0.000       0.000       0.000       0.000       0.000
                                0.000    4530.851   -1598.048   -2739.318   -1915.520   -1056.302

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     621.896   -3323.413    -480.287    3383.689    2419.920

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      57.303     428.540    3944.168    1089.695    3952.805

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      44.739   -1003.823    2831.509   -4639.492    -733.386

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      92.666     722.650   -3821.499   -2409.638    3448.850

    1    1  |0 0>               0.000    5641.038       0.000       0.000       0.000       0.000
                              -92.666       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5641.044       0.000       0.000       0.000
                             -722.650      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5641.042       0.000       0.000
                             3821.499      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5641.045       0.000
                             2409.638      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5641.042
                            -3448.850      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20884.29394080    -0.04986500   -10944.10      0.00000000        0.00      0.0000
    2-20884.26900831    -0.02493250    -5472.05      0.02493250     5472.05      0.6784
    3-20884.26900830    -0.02493250    -5472.05      0.02493250     5472.05      0.6784
    4-20884.26900830    -0.02493249    -5472.05      0.02493250     5472.05      0.6784
    5-20884.25342874    -0.00935294    -2052.73      0.04051206     8891.37      1.1024
    6-20884.25342872    -0.00935291    -2052.73      0.04051209     8891.37      1.1024
    7-20884.25342584    -0.00935004    -2052.10      0.04051496     8892.01      1.1025
    8-20884.25342584    -0.00935004    -2052.10      0.04051496     8892.01      1.1025
    9-20884.25342582    -0.00935002    -2052.09      0.04051498     8892.01      1.1025
   10-20884.18409079     0.05998501    13165.19      0.10985001    24109.29      2.9892
   11-20884.18409078     0.05998502    13165.19      0.10985002    24109.29      2.9892
   12-20884.18409078     0.05998502    13165.19      0.10985002    24109.29      2.9892
   13-20884.18408792     0.05998789    13165.82      0.10985289    24109.92      2.9892
   14-20884.18408789     0.05998791    13165.82      0.10985291    24109.93      2.9892

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.31327320 -0.00336733 -0.43330510 -0.40623340  0.31496553  0.00795782 -0.25033127 -0.33751877
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.19280548  0.01500829 -0.33243745  0.57749408  0.19369326  0.00508799  0.43573994 -0.18342812
                           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.44499430 -0.00413216  0.44908131  0.03577127  0.44731732  0.01145919 -0.01237378  0.31707778
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.33232034 -0.44006094 -0.00536062 -0.37504729  0.17435471 -0.28492843  0.26519138  0.07490753

   2    1  |1 0>           0.00000000 -0.00000018  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.47117339 -0.33809145 -0.00402404 -0.22949404 -0.24735109  0.40418756  0.16204328  0.05257293

   3    1  |1 0>          -0.00000000  0.00000023 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.02980318  0.43815781  0.00384436 -0.55377842 -0.01574150  0.02567486  0.39059490  0.00356237

   1    1  |1 1>-          0.00000000 -0.00000022  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.35320893 -0.41105372  0.37927110  0.00743271 -0.16966994 -0.31203314  0.03813497 -0.30756736

   2    1  |1 1>-         -0.00000000  0.00000030 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.27231086  0.57437183  0.24234086 -0.01179448 -0.13081010 -0.24053916  0.01250289 -0.10928447

   3    1  |1 1>-         -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.36664270  0.03060157  0.54536469 -0.00159956  0.17609607  0.32387774  0.04588106 -0.37751951

   1    1  |0 0>           0.00000607 -0.00000000 -0.00000000 -0.00000002  0.61526759 -0.33489939 -0.06054055  0.00775862
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000129 -0.00000004  0.00000001  0.00000025  0.01336512 -0.09347800  0.66647739  0.15923414
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000733 -0.00000001 -0.00000001  0.00000003  0.33914207  0.61118857  0.06848687  0.02946384
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000001 -0.00000017 -0.00000003 -0.00000003  0.00202607  0.00000237 -0.05139100 -0.29148252
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000006 -0.00000010  0.00000004 -0.00000005 -0.02633733 -0.00084652 -0.19813771  0.61903272
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.04161698  0.06905976  0.24993237  0.32747381 -0.16681228 -0.26303148
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.03338497  0.06764514  0.28314269 -0.36723602 -0.10291677 -0.16190813
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.04375582 -0.07792842 -0.29869293 -0.07123615 -0.23712917 -0.37360963
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.30524256 -0.28833116  0.11477366 -0.26252792 -0.33031149  0.01383886

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.23521525 -0.22328191  0.08248833 -0.16120094  0.46805709 -0.01963387

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.31546296  0.31455808 -0.02339298 -0.38350969  0.02946112 -0.00125995

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.24920868  0.34423053  0.18698960  0.03535228 -0.16271234  0.31125895

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.42947574 -0.35162182  0.26018079  0.02984915 -0.12547441  0.23997843

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.07887361  0.07043022  0.37337679  0.05607345  0.16890621 -0.32313090

   1    1  |0 0>          -0.00328533  0.00416506  0.02388439 -0.05744722  0.62782533  0.32787101
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.12642360  0.13072835 -0.07583760  0.68811010  0.08660805 -0.04141237
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.01790296  0.02302718  0.00212136  0.07425063 -0.32199860  0.62914315
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.63784022  0.49020315 -0.49343511 -0.14755043  0.00112486  0.00171133
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.26700745  0.49761028  0.50571545 -0.03837606 -0.01421544 -0.02266457
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20884.29394080     -0.04986500   -10944.10      0.00000000        0.00      0.0000
     2   1 -20884.26900831     -0.02493250    -5472.05      0.02493250     5472.05      0.6784
     3   1 -20884.26900830     -0.02493250    -5472.05      0.02493250     5472.05      0.6784
     4   1 -20884.26900830     -0.02493249    -5472.05      0.02493250     5472.05      0.6784
     5   1 -20884.25342874     -0.00935294    -2052.73      0.04051206     8891.37      1.1024
     6   1 -20884.25342872     -0.00935291    -2052.73      0.04051209     8891.37      1.1024
     7   1 -20884.25342584     -0.00935004    -2052.10      0.04051496     8892.01      1.1025
     8   1 -20884.25342584     -0.00935004    -2052.10      0.04051496     8892.01      1.1025
     9   1 -20884.25342582     -0.00935002    -2052.09      0.04051498     8892.01      1.1025
    10   1 -20884.18409079      0.05998501    13165.19      0.10985001    24109.29      2.9892
    11   1 -20884.18409078      0.05998502    13165.19      0.10985002    24109.29      2.9892
    12   1 -20884.18409078      0.05998502    13165.19      0.10985002    24109.29      2.9892
    13   1 -20884.18408792      0.05998789    13165.82      0.10985289    24109.92      2.9892
    14   1 -20884.18408789      0.05998791    13165.82      0.10985291    24109.93      2.9892

 E0 = -20884.24407580 is the energy of the lowest zeroth-order state
 E1 = -20884.29394080 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.31327320 -0.00336733 -0.43330510 -0.40623340  0.31496553  0.00795782 -0.25033127 -0.33751877
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.19280548  0.01500829 -0.33243745  0.57749408  0.19369326  0.00508799  0.43573994 -0.18342812
                                0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.44499430 -0.00413216  0.44908131  0.03577127  0.44731732  0.01145919 -0.01237378  0.31707778
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.33232034 -0.44006094 -0.00536062 -0.37504729  0.17435471 -0.28492843  0.26519138  0.07490753

  5  1     2    1  |1 0>        0.00000000 -0.00000018  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.47117339 -0.33809145 -0.00402404 -0.22949404 -0.24735109  0.40418756  0.16204328  0.05257293

  6  1     3    1  |1 0>       -0.00000000  0.00000023 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.02980318  0.43815781  0.00384436 -0.55377842 -0.01574150  0.02567486  0.39059490  0.00356237

  7  1     1    1  |1 1>-       0.00000000 -0.00000022  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.35320893 -0.41105372  0.37927110  0.00743271 -0.16966994 -0.31203314  0.03813497 -0.30756736

  8  1     2    1  |1 1>-      -0.00000000  0.00000030 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.27231086  0.57437183  0.24234086 -0.01179448 -0.13081010 -0.24053916  0.01250289 -0.10928447

  9  1     3    1  |1 1>-      -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.36664270  0.03060157  0.54536469 -0.00159956  0.17609607  0.32387774  0.04588106 -0.37751951

 10  1     1    1  |0 0>        0.00000607 -0.00000000 -0.00000000 -0.00000002  0.61526759 -0.33489939 -0.06054055  0.00775862
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000129 -0.00000004  0.00000001  0.00000025  0.01336512 -0.09347800  0.66647739  0.15923414
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000733 -0.00000001 -0.00000001  0.00000003  0.33914207  0.61118857  0.06848687  0.02946384
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000001 -0.00000017 -0.00000003 -0.00000003  0.00202607  0.00000237 -0.05139100 -0.29148252
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000006 -0.00000010  0.00000004 -0.00000005 -0.02633733 -0.00084652 -0.19813771  0.61903272
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.04161698  0.06905976  0.24993237  0.32747381 -0.16681228 -0.26303148
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.03338497  0.06764514  0.28314269 -0.36723602 -0.10291677 -0.16190813
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.04375582 -0.07792842 -0.29869293 -0.07123615 -0.23712917 -0.37360963
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.30524256 -0.28833116  0.11477366 -0.26252792 -0.33031149  0.01383886

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.23521525 -0.22328191  0.08248833 -0.16120094  0.46805709 -0.01963387

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.31546296  0.31455808 -0.02339298 -0.38350969  0.02946112 -0.00125995

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.24920868  0.34423053  0.18698960  0.03535228 -0.16271234  0.31125895

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.42947574 -0.35162182  0.26018079  0.02984915 -0.12547441  0.23997843

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.07887361  0.07043022  0.37337679  0.05607345  0.16890621 -0.32313090

 10  1     1    1  |0 0>       -0.00328533  0.00416506  0.02388439 -0.05744722  0.62782533  0.32787101
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.12642360  0.13072835 -0.07583760  0.68811010  0.08660805 -0.04141237
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.01790296  0.02302718  0.00212136  0.07425063 -0.32199860  0.62914315
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.63784022  0.49020315 -0.49343511 -0.14755043  0.00112486  0.00171133
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.26700745  0.49761028  0.50571545 -0.03837606 -0.01421544 -0.02266457
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         9.81%    0.00%   18.78%   16.50%    9.92%    0.01%    6.27%   11.39%
  2  1     2    1  |1 1>+         3.72%    0.02%   11.05%   33.35%    3.75%    0.00%   18.99%    3.36%
  3  1     3    1  |1 1>+        19.80%    0.00%   20.17%    0.13%   20.01%    0.01%    0.02%   10.05%
  4  1     1    1  |1 0>         11.04%   19.37%    0.00%   14.07%    3.04%    8.12%    7.03%    0.56%
  5  1     2    1  |1 0>         22.20%   11.43%    0.00%    5.27%    6.12%   16.34%    2.63%    0.28%
  6  1     3    1  |1 0>          0.09%   19.20%    0.00%   30.67%    0.02%    0.07%   15.26%    0.00%
  7  1     1    1  |1 1>-        12.48%   16.90%   14.38%    0.01%    2.88%    9.74%    0.15%    9.46%
  8  1     2    1  |1 1>-         7.42%   32.99%    5.87%    0.01%    1.71%    5.79%    0.02%    1.19%
  9  1     3    1  |1 1>-        13.44%    0.09%   29.74%    0.00%    3.10%   10.49%    0.21%   14.25%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   37.86%   11.22%    0.37%    0.01%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.87%   44.42%    2.54%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   11.50%   37.36%    0.47%    0.09%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.26%    8.50%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    3.93%   38.32%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.17%    0.48%    6.25%   10.72%    2.78%    6.92%
  2  1     2    1  |1 1>+         0.11%    0.46%    8.02%   13.49%    1.06%    2.62%
  3  1     3    1  |1 1>+         0.19%    0.61%    8.92%    0.51%    5.62%   13.96%
  4  1     1    1  |1 0>          9.32%    8.31%    1.32%    6.89%   10.91%    0.02%
  5  1     2    1  |1 0>          5.53%    4.99%    0.68%    2.60%   21.91%    0.04%
  6  1     3    1  |1 0>          9.95%    9.89%    0.05%   14.71%    0.09%    0.00%
  7  1     1    1  |1 1>-         6.21%   11.85%    3.50%    0.12%    2.65%    9.69%
  8  1     2    1  |1 1>-        18.44%   12.36%    6.77%    0.09%    1.57%    5.76%
  9  1     3    1  |1 1>-         0.62%    0.50%   13.94%    0.31%    2.85%   10.44%
 10  1     1    1  |0 0>          0.00%    0.00%    0.06%    0.33%   39.42%   10.75%
 11  1     2    1  |0 0>          1.60%    1.71%    0.58%   47.35%    0.75%    0.17%
 12  1     3    1  |0 0>          0.03%    0.05%    0.00%    0.55%   10.37%   39.58%
 13  1     4    1  |0 0>         40.68%   24.03%   24.35%    2.18%    0.00%    0.00%
 14  1     5    1  |0 0>          7.13%   24.76%   25.57%    0.15%    0.02%    0.05%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.36       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      170.77       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     29525.83   9895.79  10460.18   9163.81      2.09      0.08      3.69
 REAL TIME  *     29708.98 SEC
 DISK USED  *       229.23 MB (local),        1.71 GB (total)
 SF USED    *      1002.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pVTZ-DK3 energy= -20884.184087891725

              CI              CI           MULTI         RHF-SCF
 -20884.20677821 -20884.23384882 -20884.03629686 -20884.08433221
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
