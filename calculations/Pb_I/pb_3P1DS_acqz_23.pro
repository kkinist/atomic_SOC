
 Working directory              : /wrk/irikura/molpro.dRCXPwSkdo/
 Global scratch directory       : /wrk/irikura/molpro.dRCXPwSkdo/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.dRCXPwSkdo/

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
                                                                                 ! p-only active space
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCVQZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 if $DKHO.EQ.0 then
     LSOP = "ECP"
 else
     LSOP = "LS"
 endif
 
 NTRIP=3
 NSING=6
 
                                                                                 ! valence active space
 {multi
     closed,21,19
     occ,21,22
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Feb-25          TIME: 13:43:07  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry PB     S augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     P augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     D augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     F augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     G augccpwCVQZ-DK3      selected for orbital group  1
 Library entry PB     H augccpwCVQZ-DK3      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         488
 NUMBER OF SYMMETRY AOS:          387
 NUMBER OF CONTRACTIONS:          195   (   99Ag  +   96Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     168.034 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 3.670 MB, node maximum: 14.942 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056746. INTEGRALS IN      4 RECORDS. CPU TIME:     0.80 SEC, REAL TIME:     0.83 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    448 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.14 SEC

 Node minimum:     5762046.  Node maximum:     5767446. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 9101112131415  161718192021

 Eigenvalues of metric

         1 0.534E-07 0.989E-05 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.539E-04 0.104E-02
         2 0.128E-04 0.128E-04 0.128E-04 0.284E-03 0.284E-03 0.284E-03 0.711E-02 0.711E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.50      9.29
 REAL TIME  *        10.46 SEC
 DISK USED  *        31.21 MB (local),      875.47 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  21  19

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20874.51036946  -20874.51036946     0.00D+00     0.13D+02     0     0       0.04      0.07    start
   2   -20877.37429353      -2.86392407     0.15D+00     0.59D+01     1     0       0.04      0.11    diag2
   3   -20884.06048053      -6.68618700     0.13D+00     0.78D+01     2     0       0.04      0.15    diag2
   4   -20884.32284852      -0.26236799     0.11D-01     0.89D-01     3     0       0.04      0.19    diag2
   5   -20884.36430092      -0.04145239     0.50D-02     0.51D-01     4     0       0.04      0.23    diag2
   6   -20884.37195604      -0.00765513     0.75D-03     0.52D-02     5     0       0.03      0.26    diag2
   7   -20884.37328374      -0.00132770     0.20D-03     0.13D-01     6     0       0.04      0.30    diag2
   8   -20884.37346879      -0.00018505     0.55D-04     0.42D-02     7     0       0.04      0.34    fixocc
   9   -20884.37349707      -0.00002828     0.18D-04     0.11D-02     8     0       0.04      0.38    diag2
  10   -20884.37350149      -0.00000442     0.72D-05     0.19D-03     9     0       0.03      0.41    diag2/orth
  11   -20884.37350175      -0.00000026     0.21D-05     0.30D-04     9     0       0.04      0.45    diag2
  12   -20884.37350176      -0.00000000     0.13D-06     0.12D-05     9     0       0.03      0.48    diag2
  13   -20884.37350176      -0.00000000     0.32D-07     0.11D-05     0     0       0.04      0.52    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.3735017553    
  RHF One-electron energy            -28596.4496535378    
  RHF Two-electron energy            7712.076151782472
  RHF Kinetic energy                  32688.9286457286    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.638882164910

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.37783     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27076
                                    1  5  s    9.90678    1  6  s  -13.20180    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75361    1 11  s    8.14133    1 12  s    2.33001
    2.1     2.00000  -587.46695     1  2  s    1.25928    1  3  s    0.91634    1  4  s    2.61431    1  5  s   -6.06299
                                    1  6  s    8.07912    1  7  s    0.60614    1  8  s   -1.37504    1 10  s   -4.13302
                                    1 11  s   -4.98226    1 12  s   -1.42589
    3.1     2.00000  -143.52151     1  3  s    0.46645    1  4  s   -1.52687    1  5  s    3.55950    1  6  s   -4.76242
                                    1  7  s   -0.35633    1  8  s    0.80153    1 10  s    2.43509    1 11  s    2.93752
                                    1 12  s    0.84027
    4.1     2.00000   -94.27602     1  1  d2-  0.93231    1  1  d2+ -0.36174
    5.1     2.00000   -94.27602     1  1  d2-  0.36174    1  1  d2+  0.93231
    6.1     2.00000   -94.27602     1  1  d0   1.00003
    7.1     2.00000   -94.27602     1  1  d1+  0.78411    1  1  d1-  0.62068
    8.1     2.00000   -94.27602     1  1  d1+ -0.62068    1  1  d1-  0.78411
    9.1     2.00000   -33.76531     1  3  s    0.28683    1  4  s    1.82870    1  5  s   -1.96244    1  6  s    2.65840
                                    1  8  s   -0.43152    1 10  s   -1.35709    1 11  s   -1.64090    1 12  s   -0.46853
   10.1     2.00000   -16.18309     1  2  d0   0.99933
   11.1     2.00000   -16.18309     1  2  d2-  0.86833    1  2  d2+  0.49460
   12.1     2.00000   -16.18309     1  2  d2- -0.49439    1  2  d2+  0.86822
   13.1     2.00000   -16.18309     1  2  d1-  0.99911
   14.1     2.00000   -16.18309     1  2  d1+  0.99931
   15.1     2.00000    -5.91932     1  4  s    0.38812    1  6  s    1.31668    1 10  s   -0.66960    1 11  s   -0.81429
   16.1     2.00000    -0.85058     1  3  d0   1.00025
   17.1     2.00000    -0.85058     1  3  d2-  0.92224    1  3  d2+  0.38649
   18.1     2.00000    -0.85058     1  3  d2- -0.38664    1  3  d2+  0.92246
   19.1     2.00000    -0.85058     1  3  d1+ -0.53334    1  3  d1-  0.84584
   20.1     2.00000    -0.85058     1  3  d1+  0.84608    1  3  d1-  0.53347
   21.1     2.00000    -0.35260     1  5  s   -0.30638    1  6  s    1.39136    1 11  s   -0.29667
    1.2     2.00000  -506.12404     1  1  py   0.99914
    2.2     2.00000  -506.12404     1  1  px   0.99914
    3.2     2.00000  -506.12404     1  1  pz   0.99917
    4.2     2.00000  -119.74048     1  2  py   1.00836
    5.2     2.00000  -119.74048     1  2  px   1.00836
    6.2     2.00000  -119.74048     1  2  pz   1.00836
    7.2     2.00000   -25.80840     1  3  pz   0.96638
    8.2     2.00000   -25.80840     1  3  px   0.96639
    9.2     2.00000   -25.80840     1  3  py   0.96640
   10.2     2.00000    -5.60740     1  1  f2+  0.99845
   11.2     2.00000    -5.60740     1  1  f1+  0.34632    1  1  f3+  0.93403
   12.2     2.00000    -5.60740     1  1  f0   0.45035    1  1  f2-  0.79251    1  1  f3-  0.37615
   13.2     2.00000    -5.60740     1  1  f0   0.86823    1  1  f2- -0.28487    1  1  f3- -0.35965
   14.2     2.00000    -5.60740     1  1  f1- -0.33763    1  1  f2- -0.53494    1  1  f3-  0.74608
   15.2     2.00000    -5.60740     1  1  f1+  0.93788    1  1  f3+ -0.34615
   16.2     2.00000    -5.60740     1  1  f1-  0.91022    1  1  f3-  0.41294
   17.2     2.00000    -3.61624     1  4  py   0.99221
   18.2     2.00000    -3.61624     1  4  px   0.99221
   19.2     2.00000    -3.61624     1  4  pz   0.99221
   20.2     1.00000    -0.05172     1  9  pz   0.29817    1 10  pz   0.45085    1 11  pz   0.33836
   21.2     1.00000    -0.05172     1  9  px   0.29817    1 10  px   0.45085    1 11  px   0.33836
   22.2     1.00000    -0.05172     1  9  py   0.29817    1 10  py   0.45085    1 11  py   0.33836


 HOMO     22.2    -0.051718 =      -1.4073eV
 LUMO     23.2     0.137671 =       3.7462eV
 LUMO-HOMO         0.189389 =       5.1535eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.02       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        10.02      0.52      9.29
 REAL TIME  *        11.02 SEC
 DISK USED  *        34.57 MB (local),      929.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  40 (   21   19)
 Number of active  orbitals:        3 (    0    3)
 Number of external orbitals:     152 (   78   74)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 3 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.280D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.282D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.429D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.443D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.828D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.375D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.292D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.773D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.472D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.313D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.401D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.391D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 2   3 5 6 4 1 2 3 5 6 4   1 1 5 3 4 6 2 1 3 5   6 4 21013 7141511 9
                                       12 8 1 3 5 6 4 21013   711 91415 812 5 3 6   4 2 1 911 71415 812  1310 2 5 3 6 4 1 711
                                        9 81213141510 2 3 5   6 4 1 2 3 5 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.895D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.108D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.265D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.342D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.267D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.342D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.848D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.712D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.926D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.354D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.576D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.502D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.597D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.295D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.619D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.222D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.563D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.101D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.101D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 210   7 8 6 9 4 5 2 1 3 3   1 2 3 1 2 1 2 310 8   9 7 6 5 4 1 2 3 810
                                        7 9 6 5 4 6 7 9 810   4 5 1 2 3 6 810 7 9   4 51211211319161417  151820 1 2 3 6 7 910
                                        8 5 4 6 9 7 5 410 8   3 1 2 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  3323  ( 57 closed/active, 3044 closed/virtual, 0 active/active, 222 active/virtual )
 Total number of variables:    3386
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0 -20884.29774309  -20884.31281232   -0.01506923    0.11465269 0.00000657 0.00000000  0.27E+00      4.54
   2    8   12    0 -20884.31241755  -20884.31243875   -0.00002120    0.00508721 0.00000011 0.00000000  0.76E-02      9.63
   3    9   10    0 -20884.31243877  -20884.31243877   -0.00000000    0.00000928 0.00000001 0.00000000  0.15E-04     13.59

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.18E-07)
                       Final energy: -20884.31243877
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3403433153    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610617
 Two electron energy                          7693.27576286
 Virial ratio                                    1.63888041
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3403433153    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610620
 Two electron energy                          7693.27576288
 Virial ratio                                    1.63888041
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3403433153    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660705
 One electron energy                        -28577.61610623
 Two electron energy                          7693.27576291
 Virial ratio                                    1.63888041
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3068578638    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610617
 Two electron energy                          7693.30924831
 Virial ratio                                    1.63887938
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3068578638    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610617
 Two electron energy                          7693.30924831
 Virial ratio                                    1.63887938
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3068578638    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610620
 Two electron energy                          7693.30924834
 Virial ratio                                    1.63887938
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3068578637    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660705
 One electron energy                        -28577.61610623
 Two electron energy                          7693.30924836
 Virial ratio                                    1.63887938
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3068578637    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660705
 One electron energy                        -28577.61610623
 Two electron energy                          7693.30924837
 Virial ratio                                    1.63887938
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.2566296864    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.96660704
 One electron energy                        -28577.61610620
 Two electron energy                          7693.35947651
 Virial ratio                                    1.63887785
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999998850182
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000001143141
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999994442
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000770215
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.945462179549
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999209019
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999762133
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.054532192812
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999481280
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999994334
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000524273
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000143765
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.295862726799
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999893438
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999741837
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.704140581245
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000001668538
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999998862525
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999481285
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999086020
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.758675093652
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000897542
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000496030
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.241327225943
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 5 4 1 6   2 3 5 4 1 6 2 3 5 4   1 1 6 2 5 3 4 1 6 3   5 2 411 712 81415 9
                                       1013 1 6 5 3 4 211 7   8121514 91013 5 3 6   4 2 111 7 8121415 9  1310 2 5 3 6 4 111 7
                                        8121514 91310 2 3 5   6 4 1 2 3 5 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 2 3 1 5   610 8 4 7 9 2 3 1 1   3 2 3 2 1 2 3 1 5 6   810 4 9 7 2 1 3 5 6
                                        810 4 7 9 5 6 810 7   9 4 2 1 3 5 610 8 7   9 41219132116141715  111820 6 510 8 7 9 4
                                        2 1 3 5 6 810 4 7 9   3 2 1 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.60870     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27076
                                    1  5  s    9.90678    1  6  s  -13.20179    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75361    1 11  s    8.14132    1 12  s    2.33001
    2.1     2.00000  -587.69762     1  2  s    1.25928    1  3  s    0.91634    1  4  s    2.61431    1  5  s   -6.06295
                                    1  6  s    8.07905    1  7  s    0.60613    1  8  s   -1.37504    1 10  s   -4.13299
                                    1 11  s   -4.98222    1 12  s   -1.42588
    3.1     2.00000  -143.75212     1  3  s    0.46645    1  4  s   -1.52684    1  5  s    3.55935    1  6  s   -4.76216
                                    1  7  s   -0.35631    1  8  s    0.80152    1 10  s    2.43495    1 11  s    2.93736
                                    1 12  s    0.84023
    4.1     2.00000   -94.50650     1  1  d0   1.00003
    5.1     2.00000   -94.50650     1  1  d1-  1.00003
    6.1     2.00000   -94.50650     1  1  d2-  1.00003
    7.1     2.00000   -94.50650     1  1  d2+  1.00003
    8.1     2.00000   -94.50650     1  1  d1+  1.00003
    9.1     2.00000   -33.99597     1  3  s    0.28681    1  4  s    1.82856    1  5  s   -1.96174    1  6  s    2.65710
                                    1  8  s   -0.43149    1 10  s   -1.35645    1 11  s   -1.64009    1 12  s   -0.46831
   10.1     2.00000   -16.41360     1  2  d1-  0.99937
   11.1     2.00000   -16.41360     1  2  d0   0.99937
   12.1     2.00000   -16.41360     1  2  d2-  0.99937
   13.1     2.00000   -16.41360     1  2  d2+  0.99937
   14.1     2.00000   -16.41360     1  2  d1+  0.99937
   15.1     2.00000    -6.15017     1  4  s    0.38850    1  6  s    1.32542    1 10  s   -0.67405    1 11  s   -0.81963
   16.1     2.00000    -1.08154     1  3  d1-  1.00065
   17.1     2.00000    -1.08154     1  3  d0   1.00065
   18.1     2.00000    -1.08154     1  3  d2-  1.00065
   19.1     2.00000    -1.08154     1  3  d2+  1.00065
   20.1     2.00000    -1.08154     1  3  d1+  1.00065
   21.1     2.00000    -0.56807     1  5  s   -0.35086    1  6  s    1.51167    1 10  s   -0.25458    1 11  s   -0.31723
    1.2     2.00000  -506.35461     1  1  pz   0.99918
    2.2     2.00000  -506.35461     1  1  py   0.99918
    3.2     2.00000  -506.35461     1  1  px   0.99918
    4.2     2.00000  -119.97091     1  2  pz   1.00837
    5.2     2.00000  -119.97091     1  2  py   1.00837
    6.2     2.00000  -119.97091     1  2  px   1.00837
    7.2     2.00000   -26.03879     1  3  py   0.96640
    8.2     2.00000   -26.03879     1  3  pz   0.96640
    9.2     2.00000   -26.03879     1  3  px   0.96640
   10.2     2.00000    -5.83789     1  1  f1-  1.00002
   11.2     2.00000    -5.83789     1  1  f0   1.00002
   12.2     2.00000    -5.83789     1  1  f2+  1.00002
   13.2     2.00000    -5.83789     1  1  f2-  1.00002
   14.2     2.00000    -5.83789     1  1  f1+  1.00002
   15.2     2.00000    -5.83789     1  1  f3+  1.00002
   16.2     2.00000    -5.83789     1  1  f3-  1.00002
   17.2     2.00000    -3.84682     1  4  py   0.99661
   18.2     2.00000    -3.84682     1  4  pz   0.99661
   19.2     2.00000    -3.84682     1  4  px   0.99661
   20.2     0.66667    -0.06578     1  9  px   0.35425    1 10  px   0.52665    1 11  px   0.26697
   21.2     0.66667    -0.06578     1  9  pz   0.35425    1 10  pz   0.52665    1 11  pz   0.26697
   22.2     0.66667    -0.06578     1  9  py   0.35425    1 10  py   0.52665    1 11  py   0.26697
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa0           -0.00072022     -0.00007528      0.99999974
 0aa           -0.00107230      0.99999942      0.00007450
 a0a            0.99999917      0.00107224      0.00072030
 
 Energy:   -20884.34034332 -20884.34034332 -20884.34034332
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 020           -0.00000389     -0.20055100     -0.00028386     -0.00028385      0.79148329      0.57735027
 002            0.00000532      0.78572015      0.00034644     -0.00014169     -0.22205941      0.57735027
 b0a           -0.70710667      0.00000418     -0.00035826     -0.00015481     -0.00000260      0.00000000
 a0b            0.70710667     -0.00000418      0.00035826      0.00015481      0.00000260     -0.00000000
 ab0           -0.00015481      0.00021455      0.00000582      0.70710666      0.00030795      0.00000000
 ba0            0.00015481     -0.00021455     -0.00000582     -0.70710666     -0.00030795     -0.00000000
 0ab           -0.00035826     -0.00025863      0.70710662     -0.00000590      0.00018806      0.00000000
 0ba            0.00035826      0.00025863     -0.70710662      0.00000590     -0.00018806     -0.00000000
 200           -0.00000143     -0.58516914     -0.00006258      0.00042554     -0.56942388      0.57735027
 
 Energy:   -20884.30685786 -20884.30685786 -20884.30685786 -20884.30685786 -20884.30685786 -20884.25662969
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.78       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        24.58     14.56      0.52      9.29
 REAL TIME  *        28.43 SEC
 DISK USED  *       239.63 MB (local),        4.11 GB (total)
 SF USED    *       484.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.34034   2.0
    -20884.34034   2.0
    -20884.34034   2.0
    -20884.30686   6.0
    -20884.30686   6.0
    -20884.30686   6.0
    -20884.30686   6.0
    -20884.30686   6.0
    -20884.25663   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 82
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        3 conf        3 CSFs
 N elec internal:      989 conf     1839 CSFs
 N-1 el internal:     1176 conf     4032 CSFs
 N-2 el internal:      511 conf     3979 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  17 (   7  10 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.87 sec, npass=  1  Memory used:   4.77 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.34034332
     2    -20884.34034332
     3    -20884.34034332

 Number of blocks in overlap matrix:   970   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     970
 Number of N-1 electron functions:    4032

 Number of internal configurations:                  936
 Number of singly external configurations:        306264
 Number of doubly external configurations:       5606704
 Total number of contracted configurations:      5913904
 Total number of uncontracted configurations:   23238820

 Diagonal Coupling coefficients finished.               Storage:   1515214 words, CPU-Time:      0.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1998310 words, CPU-time:      1.69 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.34034332    -0.00000000    -1.29744289  0.41D-01  0.14D+00     3.04
    1     2     2     1.00000000     0.00000000-20884.34034332    -0.00000000    -1.29729984  0.41D-01  0.14D+00     3.04
    1     3     3     1.00000000     0.00000000-20884.34034332    -0.00000000    -1.29757250  0.41D-01  0.14D+00     3.04
    2     1     1     1.10268681    -0.98725724-20885.32760056    -0.98725724    -0.03219877  0.36D-02  0.25D-02    25.93
    2     2     2     1.10279013    -0.98713482-20885.32747813    -0.98713482    -0.03233013  0.36D-02  0.26D-02    25.93
    2     3     3     1.10285241    -0.98705117-20885.32739449    -0.98705117    -0.03242458  0.37D-02  0.26D-02    25.93
    3     1     1     1.08753165    -1.01703076-20885.35737407    -0.02977352    -0.00231969  0.46D-04  0.67D-04    48.49
    3     2     2     1.08752584    -1.01702933-20885.35737264    -0.02989451    -0.00232000  0.46D-04  0.67D-04    48.49
    3     3     3     1.08752316    -1.01702792-20885.35737124    -0.02997675    -0.00232003  0.46D-04  0.67D-04    48.49
    4     1     1     1.08735279    -1.01745534-20885.35779866    -0.00042458    -0.00034206  0.29D-04  0.24D-04    71.35
    4     2     2     1.08734770    -1.01745426-20885.35779757    -0.00042493    -0.00034371  0.29D-04  0.24D-04    71.35
    4     3     3     1.08734534    -1.01745318-20885.35779650    -0.00042526    -0.00034541  0.29D-04  0.24D-04    71.35
    5     1     1     1.08743361    -1.01772124-20885.35806456    -0.00026590    -0.00006959  0.20D-05  0.13D-05    94.21
    5     2     2     1.08743363    -1.01772124-20885.35806455    -0.00026698    -0.00006953  0.20D-05  0.13D-05    94.21
    5     3     3     1.08743390    -1.01772123-20885.35806455    -0.00026805    -0.00006964  0.20D-05  0.13D-05    94.21
    6     1     1     1.08740524    -1.01773427-20885.35807759    -0.00001303    -0.00000772  0.13D-05  0.44D-06   117.06
    6     2     2     1.08740545    -1.01773427-20885.35807759    -0.00001304    -0.00000772  0.13D-05  0.43D-06   117.06
    6     3     3     1.08740524    -1.01773426-20885.35807758    -0.00001303    -0.00000774  0.13D-05  0.44D-06   117.06
    7     1     1     1.08730506    -1.01773897-20885.35808229    -0.00000469    -0.00000729  0.18D-06  0.19D-06   139.63
    7     2     2     1.08730544    -1.01773896-20885.35808228    -0.00000469    -0.00000730  0.18D-06  0.19D-06   139.63
    7     3     3     1.08730591    -1.01773896-20885.35808227    -0.00000469    -0.00000731  0.18D-06  0.19D-06   139.63
    8     1     1     1.08728075    -1.01774040-20885.35808372    -0.00000143    -0.00000105  0.60D-07  0.38D-07   162.46
    8     2     2     1.08728093    -1.01774040-20885.35808372    -0.00000144    -0.00000106  0.60D-07  0.38D-07   162.46
    8     3     3     1.08728125    -1.01774040-20885.35808371    -0.00000144    -0.00000107  0.61D-07  0.38D-07   162.46
    9     1     1     1.08727990    -1.01774063-20885.35808395    -0.00000023    -0.00000028  0.40D-07  0.20D-07   185.24
    9     2     2     1.08727976    -1.01774063-20885.35808395    -0.00000023    -0.00000028  0.39D-07  0.20D-07   185.24
    9     3     3     1.08728015    -1.01774063-20885.35808395    -0.00000023    -0.00000028  0.40D-07  0.20D-07   185.24
   10     1     1     1.08727818    -1.01774080-20885.35808411    -0.00000017    -0.00000030  0.66D-08  0.81D-08   208.06
   10     2     2     1.08727813    -1.01774080-20885.35808411    -0.00000017    -0.00000030  0.65D-08  0.81D-08   208.06
   10     3     3     1.08727827    -1.01774080-20885.35808411    -0.00000017    -0.00000030  0.67D-08  0.81D-08   208.06
   11     1     1     1.08727775    -1.01774085-20885.35808417    -0.00000006    -0.00000005  0.31D-08  0.18D-08   230.88
   11     2     2     1.08727772    -1.01774085-20885.35808417    -0.00000006    -0.00000005  0.31D-08  0.18D-08   230.88
   11     3     3     1.08727780    -1.01774085-20885.35808417    -0.00000006    -0.00000005  0.31D-08  0.18D-08   230.88


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   5.1%
 P   0.8%  18.2%  13.8%

 Initialization:   1.2%
 Other:           60.4%

 Total CPU:      230.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0           0.0000000   0.9584363  -0.0000000
 22222222222222222/0/           0.9584363  -0.0000000  -0.0000000
 222222222222222220//           0.0000000   0.0000000   0.9584363

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958436    0.000000    0.000000
 2          -0.000000    0.000000    0.958436
 3          -0.000000    0.958436   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958436   -0.000000   -0.000000
 2          -0.000000    0.958436    0.000000
 3          -0.000000    0.000000    0.958436


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95843631 (fixed)   0.95843631 (relaxed)   0.95843631 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122799   -0.00278541   -0.89271194
 Singles      0.01206857   -0.04717288   -0.05461599
 Pairs        0.07531636   -0.00000000   -0.07041292
 Total        1.08861291   -0.04995830   -1.01774085
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34034332
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72598108
 One electron energy               -28575.12162387
 Two electron energy                 7689.76353970
 Virial quotient                       -0.63891625
 Correlation energy                    -1.01774085
 !MRCI STATE 1.1 Energy              -20885.3580841695    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44826915 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44826915 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44826915 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45011659 (Pople, fixed reference)
 Cluster corrected energies        -20885.45011659 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45011659 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95843633 (fixed)   0.95843633 (relaxed)   0.95843633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122799   -0.00278542   -0.00370673
 Singles      0.01206852   -0.04717284   -0.05461595
 Pairs        0.07531637   -0.96778259   -0.95941818
 Total        1.08861288   -1.01774085   -1.01774085
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34034332
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72597952
 One electron energy               -28575.12162540
 Two electron energy                 7689.76354123
 Virial quotient                       -0.63891625
 Correlation energy                    -1.01774085
 !MRCI STATE 2.1 Energy              -20885.3580841686    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44826912 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44826912 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44826912 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45011655 (Pople, fixed reference)
 Cluster corrected energies        -20885.45011655 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45011655 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95843629 (fixed)   0.95843629 (relaxed)   0.95843629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122799   -0.00278541   -0.89271183
 Singles      0.01206864   -0.04717295   -0.05461607
 Pairs        0.07531634    0.00000000   -0.07041295
 Total        1.08861297   -0.04995836   -1.01774085
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34034332
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72597990
 One electron energy               -28575.12162192
 Two electron energy                 7689.76353776
 Virial quotient                       -0.63891625
 Correlation energy                    -1.01774085
 !MRCI STATE 3.1 Energy              -20885.3580841680    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44826920 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44826920 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44826920 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45011665 (Pople, fixed reference)
 Cluster corrected energies        -20885.45011665 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45011665 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      139.99       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       258.44    233.84     14.56      0.52      9.29
 REAL TIME  *       273.48 SEC
 DISK USED  *       377.84 MB (local),        6.27 GB (total)
 SF USED    *         1.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.44826915  AU                              
 SETTING HLSDIAG(2)     =    -20885.44826912  AU                              
 SETTING HLSDIAG(3)     =    -20885.44826920  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 82
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:        6 conf        6 CSFs
 N elec internal:     1043 conf     1468 CSFs
 N-1 el internal:     1176 conf     2604 CSFs
 N-2 el internal:      970 conf     3112 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  17 (   7  10 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.30685786
     2    -20884.30685786
     3    -20884.30685786
     4    -20884.30685786
     5    -20884.30685786
     6    -20884.25662969

 Number of blocks in overlap matrix:  1837   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1837
 Number of N-1 electron functions:    2604

 Number of internal configurations:                  782
 Number of singly external configurations:        197708
 Number of doubly external configurations:      10618632
 Total number of contracted configurations:     10817122
 Total number of uncontracted configurations:   18162658

 Diagonal Coupling coefficients finished.               Storage:   2068078 words, CPU-Time:      0.59 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2331312 words, CPU-time:      3.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.30685786    -0.00000000    -1.30649441  0.47D-01  0.14D+00     4.56
    1     2     2     1.00000000     0.00000000-20884.30685786    -0.00000000    -1.30583151  0.46D-01  0.14D+00     4.56
    1     3     3     1.00000000     0.00000000-20884.30685786    -0.00000000    -1.30676161  0.47D-01  0.14D+00     4.56
    1     4     4     1.00000000     0.00000000-20884.30685786    -0.00000000    -1.30670602  0.47D-01  0.14D+00     4.56
    1     5     5     1.00000000     0.00000000-20884.30685786    -0.00000000    -1.30588532  0.46D-01  0.14D+00     4.56
    1     6     6     1.00000000     0.00000000-20884.25662969    -0.00000000    -1.30913273  0.28D-01  0.16D+00     4.56
    2     1     1     1.10679299    -0.99106251-20885.29792037    -0.99106251    -0.03355911  0.40D-02  0.28D-02    84.08
    2     2     2     1.10686875    -0.99093258-20885.29779045    -0.99093258    -0.03371220  0.41D-02  0.28D-02    84.08
    2     3     3     1.10707863    -0.99067157-20885.29752943    -0.99067157    -0.03402076  0.42D-02  0.28D-02    84.08
    2     4     4     1.10720407    -0.99051040-20885.29736827    -0.99051040    -0.03420458  0.43D-02  0.28D-02    84.08
    2     5     5     1.10723718    -0.99050891-20885.29736677    -0.99050891    -0.03419608  0.43D-02  0.28D-02    84.08
    2     6     6     1.10639425    -0.99630121-20885.25293090    -0.99630121    -0.03456844  0.34D-02  0.39D-02    84.08
    3     1     1     1.09009386    -1.02211357-20885.32897143    -0.03105106    -0.00238306  0.59D-04  0.81D-04   163.44
    3     2     2     1.09009136    -1.02211035-20885.32896821    -0.03117776    -0.00238348  0.59D-04  0.82D-04   163.44
    3     3     3     1.09010060    -1.02210691-20885.32896477    -0.03143534    -0.00238240  0.60D-04  0.83D-04   163.44
    3     4     4     1.09009932    -1.02210328-20885.32896115    -0.03159288    -0.00238397  0.61D-04  0.83D-04   163.44
    3     5     5     1.09009955    -1.02210298-20885.32896084    -0.03159407    -0.00238338  0.60D-04  0.83D-04   163.44
    3     6     6     1.09013071    -1.02796211-20885.28459180    -0.03166090    -0.00364233  0.43D-04  0.16D-03   163.44
    4     1     1     1.08985334    -1.02256380-20885.32942166    -0.00045023    -0.00042579  0.38D-04  0.35D-04   243.74
    4     2     2     1.08985144    -1.02256136-20885.32941923    -0.00045102    -0.00042956  0.38D-04  0.36D-04   243.74
    4     3     3     1.08985825    -1.02255894-20885.32941680    -0.00045203    -0.00043535  0.39D-04  0.36D-04   243.74
    4     4     4     1.08985628    -1.02255633-20885.32941420    -0.00045305    -0.00043939  0.39D-04  0.37D-04   243.74
    4     5     5     1.08985701    -1.02255606-20885.32941392    -0.00045308    -0.00043994  0.39D-04  0.37D-04   243.74
    4     6     6     1.08980724    -1.02860679-20885.28523647    -0.00064468    -0.00046159  0.29D-04  0.63D-04   243.74
    5     1     1     1.08978540    -1.02289522-20885.32975308    -0.00033142    -0.00007808  0.35D-05  0.17D-05   324.00
    5     2     2     1.08978898    -1.02289519-20885.32975305    -0.00033382    -0.00007741  0.36D-05  0.18D-05   324.00
    5     3     3     1.08978614    -1.02289517-20885.32975304    -0.00033623    -0.00007802  0.35D-05  0.17D-05   324.00
    5     4     4     1.08978997    -1.02289515-20885.32975301    -0.00033881    -0.00007732  0.36D-05  0.18D-05   324.00
    5     5     5     1.08978987    -1.02289514-20885.32975301    -0.00033909    -0.00007738  0.36D-05  0.18D-05   324.00
    5     6     6     1.08965773    -1.02898346-20885.28561315    -0.00037667    -0.00010480  0.38D-05  0.36D-05   324.00
    6     1     1     1.08973505    -1.02291037-20885.32976823    -0.00001515    -0.00001159  0.23D-05  0.71D-06   404.27
    6     2     2     1.08973558    -1.02291032-20885.32976818    -0.00001513    -0.00001165  0.23D-05  0.72D-06   404.27
    6     3     3     1.08973770    -1.02291026-20885.32976813    -0.00001509    -0.00001180  0.24D-05  0.73D-06   404.27
    6     4     4     1.08973833    -1.02291022-20885.32976809    -0.00001508    -0.00001185  0.24D-05  0.73D-06   404.27
    6     5     5     1.08973839    -1.02291022-20885.32976808    -0.00001507    -0.00001186  0.24D-05  0.73D-06   404.27
    6     6     6     1.08960686    -1.02900361-20885.28563329    -0.00002015    -0.00001472  0.27D-05  0.17D-05   404.27
    7     1     1     1.08956568    -1.02291817-20885.32977603    -0.00000780    -0.00000949  0.23D-06  0.26D-06   484.66
    7     2     2     1.08956576    -1.02291816-20885.32977603    -0.00000784    -0.00000950  0.24D-06  0.27D-06   484.66
    7     3     3     1.08956654    -1.02291815-20885.32977601    -0.00000789    -0.00000954  0.24D-06  0.27D-06   484.66
    7     4     4     1.08956637    -1.02291810-20885.32977597    -0.00000788    -0.00000971  0.24D-06  0.27D-06   484.66
    7     5     5     1.08956711    -1.02291809-20885.32977595    -0.00000787    -0.00000974  0.25D-06  0.27D-06   484.66
    7     6     6     1.08945358    -1.02901270-20885.28564239    -0.00000909    -0.00001494  0.40D-06  0.59D-06   484.66
    8     1     1     1.08954245    -1.02291989-20885.32977775    -0.00000173    -0.00000117  0.11D-06  0.68D-07   565.37
    8     2     2     1.08954245    -1.02291989-20885.32977775    -0.00000173    -0.00000117  0.11D-06  0.68D-07   565.37
    8     3     3     1.08954291    -1.02291989-20885.32977775    -0.00000174    -0.00000119  0.11D-06  0.68D-07   565.37
    8     4     4     1.08954198    -1.02291988-20885.32977774    -0.00000178    -0.00000122  0.11D-06  0.67D-07   565.37
    8     5     5     1.08954231    -1.02291988-20885.32977774    -0.00000179    -0.00000124  0.11D-06  0.67D-07   565.37
    8     6     6     1.08941854    -1.02901559-20885.28564528    -0.00000289    -0.00000228  0.16D-06  0.16D-06   565.37
    9     1     1     1.08954043    -1.02292019-20885.32977806    -0.00000030    -0.00000053  0.67D-07  0.38D-07   644.89
    9     2     2     1.08954044    -1.02292019-20885.32977806    -0.00000030    -0.00000053  0.67D-07  0.38D-07   644.89
    9     3     3     1.08954078    -1.02292019-20885.32977805    -0.00000030    -0.00000053  0.68D-07  0.38D-07   644.89
    9     4     4     1.08954009    -1.02292019-20885.32977805    -0.00000031    -0.00000052  0.70D-07  0.38D-07   644.89
    9     5     5     1.08954029    -1.02292018-20885.32977805    -0.00000031    -0.00000052  0.70D-07  0.38D-07   644.89
    9     6     6     1.08941581    -1.02901610-20885.28564579    -0.00000051    -0.00000074  0.11D-06  0.97D-07   644.89
   10     1     1     1.08953622    -1.02292047-20885.32977833    -0.00000027    -0.00000046  0.12D-07  0.14D-07   724.98
   10     2     2     1.08953624    -1.02292047-20885.32977833    -0.00000027    -0.00000046  0.12D-07  0.14D-07   724.98
   10     3     3     1.08953632    -1.02292047-20885.32977833    -0.00000028    -0.00000047  0.12D-07  0.14D-07   724.98
   10     4     4     1.08953600    -1.02292046-20885.32977833    -0.00000028    -0.00000048  0.13D-07  0.14D-07   724.98
   10     5     5     1.08953605    -1.02292046-20885.32977833    -0.00000028    -0.00000048  0.13D-07  0.14D-07   724.98
   10     6     6     1.08940965    -1.02901652-20885.28564621    -0.00000042    -0.00000086  0.22D-07  0.33D-07   724.98
   11     1     1     1.08953472    -1.02292055-20885.32977841    -0.00000008    -0.00000007  0.74D-08  0.37D-08   805.33
   11     2     2     1.08953492    -1.02292055-20885.32977841    -0.00000008    -0.00000006  0.74D-08  0.38D-08   805.33
   11     3     3     1.08953499    -1.02292055-20885.32977841    -0.00000008    -0.00000006  0.74D-08  0.38D-08   805.33
   11     4     4     1.08953494    -1.02292055-20885.32977841    -0.00000008    -0.00000006  0.74D-08  0.38D-08   805.33
   11     5     5     1.08953474    -1.02292055-20885.32977841    -0.00000009    -0.00000007  0.74D-08  0.37D-08   805.33
   11     6     6     1.08940773    -1.02901668-20885.28564637    -0.00000016    -0.00000014  0.12D-07  0.98D-08   805.33
   12     1     1     1.08953344    -1.02292057-20885.32977843    -0.00000002    -0.00000003  0.46D-08  0.22D-08   885.95
   12     2     2     1.08953362    -1.02292057-20885.32977843    -0.00000002    -0.00000003  0.44D-08  0.22D-08   885.95
   12     3     3     1.08953355    -1.02292057-20885.32977843    -0.00000002    -0.00000003  0.44D-08  0.22D-08   885.95
   12     4     4     1.08953357    -1.02292057-20885.32977843    -0.00000002    -0.00000003  0.44D-08  0.22D-08   885.95
   12     5     5     1.08953346    -1.02292057-20885.32977843    -0.00000002    -0.00000003  0.46D-08  0.22D-08   885.95
   12     6     6     1.08940652    -1.02901671-20885.28564640    -0.00000003    -0.00000005  0.79D-08  0.60D-08   885.95
   13     1     1     1.08953344    -1.02292057-20885.32977843     0.00000000    -0.00000003  0.46D-08  0.22D-08   904.16
   13     2     2     1.08953362    -1.02292057-20885.32977843     0.00000000    -0.00000003  0.44D-08  0.22D-08   904.16
   13     3     3     1.08953355    -1.02292057-20885.32977843    -0.00000000    -0.00000003  0.44D-08  0.22D-08   904.16
   13     4     4     1.08953357    -1.02292057-20885.32977843    -0.00000000    -0.00000003  0.44D-08  0.22D-08   904.16
   13     5     5     1.08953346    -1.02292057-20885.32977843     0.00000000    -0.00000003  0.46D-08  0.22D-08   904.16
   13     6     6     1.08940140    -1.02901675-20885.28564644    -0.00000004    -0.00000001  0.47D-10  0.22D-09   904.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.8%
 P   0.9%  12.5%  18.7%

 Initialization:   0.4%
 Other:           65.4%

 Total CPU:      904.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\          -0.0000000   0.0000000   0.9573512   0.0000000  -0.0000000  -0.0000000
 22222222222222222/\0           0.0000000  -0.0000000  -0.0000000   0.9573512   0.0000000   0.0000000
 22222222222222222/0\           0.0000000   0.9573512  -0.0000000   0.0000000   0.0000000   0.0000000
 22222222222222222020          -0.1339255  -0.0000000   0.0000000  -0.0000000   0.7701158   0.5521283
 22222222222222222200           0.7339026  -0.0000000   0.0000000  -0.0000000  -0.2690750   0.5521283
 22222222222222222002          -0.5999771   0.0000000  -0.0000000   0.0000000  -0.5010408   0.5521283

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.874334   -0.000000    0.000000   -0.389951    0.000000
 2           0.957351    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.957351   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.957351   -0.000000   -0.000000
 5           0.000000   -0.389951   -0.000000    0.000000    0.874334   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956314

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957351    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.957351    0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.957351   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.957351   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957351    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956314


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.87433405 (fixed)   0.95735129 (relaxed)   0.95735129 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142120   -0.00326253   -0.89341234
 Singles      0.01322364   -0.04958828   -0.05784464
 Pairs        0.07643705   -0.00000004   -0.07166359
 Total        1.09108188   -0.05285086   -1.02292057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30685786
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72727656
 One electron energy               -28575.02766367
 Two electron energy                 7689.69788524
 Virial quotient                       -0.63891535
 Correlation energy                    -1.02292057
 !MRCI STATE 1.1 Energy              -20885.3297784311    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42294796 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42294796 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42294796 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42547427 (Pople, fixed reference)
 Cluster corrected energies        -20885.42547427 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42547427 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95735121 (fixed)   0.95735121 (relaxed)   0.95735121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142120   -0.00326254   -0.89341212
 Singles      0.01322383   -0.04958840   -0.05784479
 Pairs        0.07643703    0.00000000   -0.07166365
 Total        1.09108207   -0.05285094   -1.02292057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30685786
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72729866
 One electron energy               -28575.02774544
 Two electron energy                 7689.69796701
 Virial quotient                       -0.63891535
 Correlation energy                    -1.02292057
 !MRCI STATE 2.1 Energy              -20885.3297784308    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42294815 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42294815 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42294815 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42547448 (Pople, fixed reference)
 Cluster corrected energies        -20885.42547448 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42547448 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95735124 (fixed)   0.95735124 (relaxed)   0.95735124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142120   -0.00326254   -0.89341225
 Singles      0.01322375   -0.04958832   -0.05784471
 Pairs        0.07643705   -0.00000000   -0.07166361
 Total        1.09108200   -0.05285086   -1.02292057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30685786
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72729263
 One electron energy               -28575.02774255
 Two electron energy                 7689.69796412
 Virial quotient                       -0.63891535
 Correlation energy                    -1.02292057
 !MRCI STATE 3.1 Energy              -20885.3297784308    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42294808 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42294808 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42294808 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42547441 (Pople, fixed reference)
 Cluster corrected energies        -20885.42547441 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42547441 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95735123 (fixed)   0.95735123 (relaxed)   0.95735123 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142121   -0.00326254   -0.89341222
 Singles      0.01322377   -0.04958834   -0.05784472
 Pairs        0.07643704    0.00000000   -0.07166362
 Total        1.09108202   -0.05285088   -1.02292057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30685786
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72729154
 One electron energy               -28575.02773797
 Two electron energy                 7689.69795954
 Virial quotient                       -0.63891535
 Correlation energy                    -1.02292057
 !MRCI STATE 4.1 Energy              -20885.3297784298    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42294810 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42294810 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42294810 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42547442 (Pople, fixed reference)
 Cluster corrected energies        -20885.42547442 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42547442 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.87433404 (fixed)   0.95735128 (relaxed)   0.95735128 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142119   -0.00326253   -0.89341235
 Singles      0.01322366   -0.04958831   -0.05784466
 Pairs        0.07643704    0.00000002   -0.07166355
 Total        1.09108190   -0.05285082   -1.02292057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30685786
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72727712
 One electron energy               -28575.02766324
 Two electron energy                 7689.69788481
 Virial quotient                       -0.63891535
 Correlation energy                    -1.02292057
 !MRCI STATE 5.1 Energy              -20885.3297784295    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42294798 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42294798 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42294798 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42547429 (Pople, fixed reference)
 Cluster corrected energies        -20885.42547429 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42547429 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95631425 (fixed)   0.95631425 (relaxed)   0.95631425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371594   -0.00803900   -0.01084893
 Singles      0.00903417   -0.04136234   -0.04632950
 Pairs        0.08069944   -0.97961542   -0.97183832
 Total        1.09344955   -1.02901675   -1.02901675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.25662969
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.72543122
 One electron energy               -28574.85797257
 Two electron energy                 7689.57232613
 Virial quotient                       -0.63891404
 Correlation energy                    -1.02901675
 !MRCI STATE 6.1 Energy              -20885.2856464386    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.38180759 (Davidson, fixed reference)
 Cluster corrected energies        -20885.38180759 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.38180759 (Davidson, rotated reference)

 Cluster corrected energies        -20885.38463878 (Pople, fixed reference)
 Cluster corrected energies        -20885.38463878 (Pople, relaxed reference)
 Cluster corrected energies        -20885.38463878 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      641.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1183.31    924.87    233.84     14.56      0.52      9.29
 REAL TIME  *      1248.12 SEC
 DISK USED  *       879.47 MB (local),       14.11 GB (total)
 SF USED    *         3.85 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.42294796  AU                              
 SETTING HLSDIAG(5)     =    -20885.42294815  AU                              
 SETTING HLSDIAG(6)     =    -20885.42294808  AU                              
 SETTING HLSDIAG(7)     =    -20885.42294810  AU                              
 SETTING HLSDIAG(8)     =    -20885.42294798  AU                              
 SETTING HLSDIAG(9)     =    -20885.38180759  AU                              


         HLSDIAG
    -20885.44827
    -20885.44827
    -20885.44827
    -20885.42295
    -20885.42295
    -20885.42295
    -20885.42295
    -20885.42295
    -20885.38181
                                                  

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

 Time for Seward_LS:     119.91 sec

       94931390. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27009 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    119.91 sec, REAL time:    122.14 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   448 records. CPU time:      1.24 sec, REAL time:      1.81 sec
 SORTLS2 read   110556387. and wrote   547794150. SO integrals in    48 records. CPU time:      0.45 sec, REAL time:      0.66 sec

 FILE SIZES: FILE 1:  2019.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2019.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1926.01       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      641.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1305.68    122.36    924.87    233.84     14.56      0.52      9.29
 REAL TIME  *      1373.56 SEC
 DISK USED  *       879.69 MB (local),       19.66 GB (total)
 SF USED    *         3.85 GB
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

 Original energies: -20885.358084 -20885.358084 -20885.358084
 Replaced energies: -20885.448269 -20885.448269 -20885.448269

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies: -20885.329778 -20885.329778 -20885.329778 -20885.329778 -20885.329778 -20885.285646
 Replaced energies: -20885.422948 -20885.422948 -20885.422948 -20885.422948 -20885.422948 -20885.381808



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.44826920

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00       0.00    4124.49       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00   -4124.49       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -3648.14
                            0.00      -0.00    5832.91    4124.49       0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00   -4124.49       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00   -5832.91       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    4462.46

    4   1.1  1.0  0.0      -0.00      -0.00   -4124.49       0.01       0.00       0.00      -0.00       0.00    4124.49       0.00
                           -0.00   -4124.49       0.00       0.00       0.00       0.00       0.00   -4124.49       0.00   -1151.64

    5   2.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00
                         4124.49      -0.00      -0.00      -0.00       0.00       0.00    4124.49       0.00      -0.00       0.00

    6   3.1  1.0  0.0    4124.49      -0.00      -0.00       0.00       0.00       0.00   -4124.49       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -4124.49       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4124.49       0.00       0.00       0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.02       0.00   -3648.14
                           -0.00      -0.00      -0.00    4124.49      -0.00      -0.00      -0.00       0.00   -5832.91      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    4124.49      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    5832.91      -0.00   -4462.46

   10   1.1  0.0  0.0       0.00   -3648.14       0.00       0.00       0.00       0.00       0.00   -3648.14       0.00    5557.37
                            0.00      -0.00   -4462.46    1151.64      -0.00       0.00      -0.00       0.00    4462.46       0.00

   11   2.1  0.0  0.0      -0.00       0.00    4116.20       0.00       0.00       0.00      -0.00       0.00    4116.20       0.00
                           -0.00   -4116.20       0.00       0.00       0.00      -0.00       0.00    4116.20      -0.00      -0.00

   12   3.1  0.0  0.0   -4116.20      -0.00      -0.00       0.00       0.00       0.00   -4116.20      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00    5821.18      -0.00       0.00      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                         4116.20      -0.00      -0.00      -0.00       0.00    5821.18   -4116.20       0.00       0.00      -0.00

   14   5.1  0.0  0.0       0.00   -3046.56       0.00       0.00       0.00       0.00       0.00   -3046.56       0.00       0.00
                            0.00      -0.00    1636.10   -6622.27      -0.00       0.00      -0.00       0.00   -1636.10      -0.00

   15   6.1  0.0  0.0       0.00   -6707.17       0.00       0.00       0.00       0.00       0.00   -6707.17       0.00       0.00
                            0.00       0.00    6707.17    9485.36      -0.00       0.00      -0.00      -0.00   -6707.17      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00   -4116.20      -0.00       0.00       0.00
                            0.00       0.00   -4116.20      -0.00      -0.00

    2   2.1  1.0  1.0       0.00      -0.00       0.00   -3046.56   -6707.17
                         4116.20      -0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0    4116.20      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -1636.10   -6707.17

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    6622.27   -9485.36

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00   -5821.18      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -5821.18      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00   -4116.20      -0.00       0.00       0.00
                           -0.00      -0.00    4116.20       0.00       0.00

    8   2.1  1.0 -1.0       0.00      -0.00       0.00   -3046.56   -6707.17
                        -4116.20       0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0    4116.20      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1636.10    6707.17

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5557.33       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5557.34       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5557.34       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5557.37       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14586.64
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by -20885.44826920 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.012       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -5832.907       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.019       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    5832.907       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000   -5832.907

    1    1  |1 0>              -0.000       0.000       0.000       0.012       0.000       0.000       0.000      -0.000
                                0.000   -5832.907       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.019       0.000       0.000       0.000
                             5832.907       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000    5832.904      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    5832.904       0.012       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.019
                                0.000      -0.000    5832.907      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -5832.904       0.000       0.000       0.000       0.000
                               -0.000   -5832.907       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000   -5159.248       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1151.637      -0.000       0.000       0.000      -0.000

    2    1  |0 0>              -0.000       0.000    5821.182       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000   -5821.184

    3    1  |0 0>           -5821.184      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    5821.182      -0.000      -0.000       0.000

    4    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    5821.182    5821.184      -0.000

    5    1  |0 0>               0.000   -4308.483       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -6622.268      -0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000   -9485.378       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    9485.364      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000   -5821.184      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -5159.248       0.000      -0.000       0.000   -4308.483   -9485.378
                             5832.907       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000    5821.182      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -5832.904       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1151.637      -0.000      -0.000       0.000    6622.268   -9485.364

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000   -5821.182      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000   -5821.182      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000   -5821.184      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    5821.184      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    6310.870      -0.000      -0.000       0.000   -2313.797   -9485.366

    1    1  |0 0>               0.000    5557.371       0.000       0.000       0.000       0.000       0.000
                            -6310.870       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5557.329       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5557.343       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5557.340       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5557.367       0.000
                             2313.797      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14586.639
                             9485.366      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.53742974    -0.08916053   -19568.48      0.00000000        0.00      0.0000
    2-20885.47484584    -0.02657664    -5832.90      0.06258389    13735.58      1.7030
    3-20885.47484584    -0.02657664    -5832.90      0.06258390    13735.58      1.7030
    4-20885.47484582    -0.02657661    -5832.89      0.06258392    13735.58      1.7030
    5-20885.45983513    -0.01156592    -2538.43      0.07759461    17030.05      2.1115
    6-20885.45983511    -0.01156591    -2538.42      0.07759462    17030.05      2.1115
    7-20885.45983508    -0.01156588    -2538.42      0.07759466    17030.06      2.1115
    8-20885.45983472    -0.01156552    -2538.34      0.07759502    17030.14      2.1115
    9-20885.45983468    -0.01156548    -2538.33      0.07759505    17030.15      2.1115
   10-20885.38480577     0.06346344    13928.61      0.15262397    33497.09      4.1531
   11-20885.38480573     0.06346348    13928.62      0.15262401    33497.10      4.1531
   12-20885.38480551     0.06346370    13928.67      0.15262423    33497.15      4.1531
   13-20885.38480550     0.06346371    13928.67      0.15262424    33497.15      4.1531
   14-20885.38480546     0.06346375    13928.68      0.15262428    33497.16      4.1531
   15-20885.34580036     0.10246884    22489.31      0.19162938    42057.79      5.2145

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.70710732  0.00000001 -0.00000004  0.49579784  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.52028840  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.25164668
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000001  0.70710785 -0.00000000 -0.49579718  0.00000001  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.52028805  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.31951045

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.70710624  0.00000001 -0.00000004  0.49579928  0.00000000

   3    1  |1 0>           0.00000000 -0.06962403  0.00000000  0.00000000 -0.00000000  0.00078702  0.00000000  0.00000000
                          -0.00000000  0.70367132  0.00000001 -0.00000000  0.00000001  0.49579744  0.00000004 -0.00000000

   1    1  |1 1>-         -0.00000000  0.06962392 -0.00000000 -0.00000000 -0.00000000  0.00078702  0.00000000  0.00000000
                          -0.00000000 -0.70367015 -0.00000001  0.00000000  0.00000001  0.49579872  0.00000004 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.70710571  0.00000000 -0.49579969  0.00000001  0.00000001  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.52028835  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57115723

   1    1  |0 0>           0.00000031  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.65105690
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000101 -0.00000000  0.71299917 -0.00000001 -0.00000002 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000067  0.00000002 -0.00000006  0.71299900  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000045  0.00000000 -0.00000000  0.00000001  0.71299790  0.00000006 -0.00000000
                           0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00113179 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000034 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.29067396
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.43347474 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000007
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.50416638  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.51422666 -0.09569251 -0.57424204 -0.00000000  0.00000000 -0.00000000 -0.25026764
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.50416629  0.00000001  0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.47504612  0.54515461  0.20424933 -0.00000000 -0.00000000  0.00000000 -0.25026635

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.50416648  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00080173 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.50416545  0.00000004 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00080173 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.50416584  0.00000004 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.50416682  0.00000001  0.00000001 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.03918140 -0.44946186  0.36999336  0.00000000  0.00000000 -0.00000000 -0.25026628

   1    1  |0 0>           0.29067414 -0.35485939  0.60473818  0.00000001  0.00000000 -0.00000000  0.00000064
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.70116487  0.00000001  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000005  0.70116505  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000001  0.70116437 -0.00000005 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00111500 -0.00000000  0.00000000

   5    1  |0 0>           0.65105720  0.60473816  0.35485903 -0.00000000 -0.00000000  0.00000001  0.00000050
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000007 -0.00000012 -0.00000129  0.00000000  0.00000000 -0.00000000  0.90116572
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.53742974     -0.08916053   -19568.48      0.00000000        0.00      0.0000
     2   1 -20885.47484584     -0.02657664    -5832.90      0.06258389    13735.58      1.7030
     3   1 -20885.47484584     -0.02657664    -5832.90      0.06258390    13735.58      1.7030
     4   1 -20885.47484582     -0.02657661    -5832.89      0.06258392    13735.58      1.7030
     5   1 -20885.45983513     -0.01156592    -2538.43      0.07759461    17030.05      2.1115
     6   1 -20885.45983511     -0.01156591    -2538.42      0.07759462    17030.05      2.1115
     7   1 -20885.45983508     -0.01156588    -2538.42      0.07759466    17030.06      2.1115
     8   1 -20885.45983472     -0.01156552    -2538.34      0.07759502    17030.14      2.1115
     9   1 -20885.45983468     -0.01156548    -2538.33      0.07759505    17030.15      2.1115
    10   1 -20885.38480577      0.06346344    13928.61      0.15262397    33497.09      4.1531
    11   1 -20885.38480573      0.06346348    13928.62      0.15262401    33497.10      4.1531
    12   1 -20885.38480551      0.06346370    13928.67      0.15262423    33497.15      4.1531
    13   1 -20885.38480550      0.06346371    13928.67      0.15262424    33497.15      4.1531
    14   1 -20885.38480546      0.06346375    13928.68      0.15262428    33497.16      4.1531
    15   1 -20885.34580036      0.10246884    22489.31      0.19162938    42057.79      5.2145

 E0 = -20885.44826920 is the energy of the lowest zeroth-order state
 E1 = -20885.53742974 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.70710732  0.00000001 -0.00000004  0.49579784  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.52028840  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.25164668
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000001  0.70710785 -0.00000000 -0.49579718  0.00000001  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.52028805  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.31951045

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.70710624  0.00000001 -0.00000004  0.49579928  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.06962403  0.00000000  0.00000000 -0.00000000  0.00078702  0.00000000  0.00000000
                               -0.00000000  0.70367132  0.00000001 -0.00000000  0.00000001  0.49579744  0.00000004 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.06962392 -0.00000000 -0.00000000 -0.00000000  0.00078702  0.00000000  0.00000000
                               -0.00000000 -0.70367015 -0.00000001  0.00000000  0.00000001  0.49579872  0.00000004 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.70710571  0.00000000 -0.49579969  0.00000001  0.00000001  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.52028835  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57115723

 10  1     1    1  |0 0>        0.00000031  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.65105690
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000101 -0.00000000  0.71299917 -0.00000001 -0.00000002 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000067  0.00000002 -0.00000006  0.71299900  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000045  0.00000000 -0.00000000  0.00000001  0.71299790  0.00000006 -0.00000000
                                0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00113179 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000034 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.29067396
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.43347474 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000007
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.50416638  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.51422666 -0.09569251 -0.57424204 -0.00000000  0.00000000 -0.00000000 -0.25026764
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.50416629  0.00000001  0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.47504612  0.54515461  0.20424933 -0.00000000 -0.00000000  0.00000000 -0.25026635

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000004 -0.50416648  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00080173 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.50416545  0.00000004 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00080173 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.50416584  0.00000004 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.50416682  0.00000001  0.00000001 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.03918140 -0.44946186  0.36999336  0.00000000  0.00000000 -0.00000000 -0.25026628

 10  1     1    1  |0 0>        0.29067414 -0.35485939  0.60473818  0.00000001  0.00000000 -0.00000000  0.00000064
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.70116487  0.00000001  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000005  0.70116505  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000001  0.70116437 -0.00000005 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00111500 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.65105720  0.60473816  0.35485903 -0.00000000 -0.00000000  0.00000001  0.00000050
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000007 -0.00000012 -0.00000129  0.00000000  0.00000000 -0.00000000  0.90116572
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   24.58%    0.00%
  2  1     2    1  |1 1>+        27.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.33%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%   24.58%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         27.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.21%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   24.58%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   24.58%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   24.58%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   50.00%    0.00%   24.58%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        27.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.62%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.39%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   50.84%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.84%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   50.84%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.45%
 15  1     6    1  |0 0>         18.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%
  2  1     2    1  |1 1>+        26.44%    0.92%   32.98%    0.00%    0.00%    0.00%    6.26%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         22.57%   29.72%    4.17%    0.00%    0.00%    0.00%    6.26%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.15%   20.20%   13.69%    0.00%    0.00%    0.00%    6.26%
 10  1     1    1  |0 0>          8.45%   12.59%   36.57%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   49.16%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.16%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   49.16%    0.00%    0.00%
 14  1     5    1  |0 0>         42.39%   36.57%   12.59%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.21%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1926.01       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      641.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1743.77    438.08    122.36    924.87    233.84     14.56      0.52      9.29
 REAL TIME  *      1835.55 SEC
 DISK USED  *       879.69 MB (local),       19.66 GB (total)
 SF USED    *         3.85 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.345800359442

              CI              CI           MULTI         RHF-SCF
 -20885.28564644 -20885.35808417 -20884.25662969 -20884.37350176
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
