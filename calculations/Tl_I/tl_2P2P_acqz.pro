
 Working directory              : /wrk/irikura/molpro.KQWVyxYQHt/
 Global scratch directory       : /wrk/irikura/molpro.KQWVyxYQHt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.KQWVyxYQHt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Tl SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=80,sym=1,spin=0}
 
 {multi
     occ,22,25
     closed,20,19
     wf,nelec=81,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,14,16
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 21-Mar-24          TIME: 13:18:03  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry TL     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry TL     H aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  TL     81.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   81
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

     167.510 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 4.719 MB, node maximum: 17.039 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056101. INTEGRALS IN      4 RECORDS. CPU TIME:     0.80 SEC, REAL TIME:     0.82 SEC
 SORT2 READ    17007933. AND WROTE    92236821. INTEGRALS IN    448 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.15 SEC

 Node minimum:     5762046.  Node maximum:     5767446. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 9101112131415  161718192021

 Eigenvalues of metric

         1 0.619E-07 0.152E-04 0.257E-04 0.257E-04 0.257E-04 0.257E-04 0.257E-04 0.125E-02
         2 0.131E-04 0.131E-04 0.131E-04 0.811E-04 0.811E-04 0.811E-04 0.897E-02 0.897E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.74     10.39
 REAL TIME  *        12.23 SEC
 DISK USED  *        31.21 MB (local),      873.22 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial occupancy:  21  19

 NELEC=   80   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20245.92644609  -20245.92644609     0.00D+00     0.46D+01     0     0       0.04      0.06    start
   2   -20246.50437370      -0.57792760     0.61D-01     0.68D+00     1     0       0.05      0.11    diag
   3   -20247.64315367      -1.13877997     0.58D-01     0.12D+01     2     0       0.05      0.16    diag
   4   -20247.65129057      -0.00813690     0.31D-02     0.55D-01     3     0       0.05      0.21    diag
   5   -20247.65150885      -0.00021828     0.47D-03     0.73D-03     4     0       0.03      0.24    diag
   6   -20247.65151046      -0.00000161     0.25D-04     0.35D-03     5     0       0.04      0.28    diag
   7   -20247.65151049      -0.00000003     0.38D-05     0.26D-04     6     0       0.03      0.31    diag
   8   -20247.65151049      -0.00000000     0.26D-06     0.18D-04     7     0       0.03      0.34    fixocc
   9   -20247.65151049       0.00000000     0.31D-07     0.80D-06     8     0       0.03      0.37    diag
  10   -20247.65151049       0.00000000     0.43D-08     0.15D-06     0     0       0.04      0.41    diag/orth

 Final occupancy:  21  19

 !RHF STATE 1.1 Energy               -20247.6515104890    
  RHF One-electron energy            -27707.2616536668    
  RHF Two-electron energy            7459.610143177764
  RHF Kinetic energy                  31174.4371915357    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.649495334465

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3162.38407     1  1  s    0.96130    1  3  s   -0.86055    1  4  s   -2.46766    1  5  s   -5.94824
                                    1  6  s    8.66437    1  7  s   -0.53181    1  8  s    1.29244    1 10  s    4.31126
                                    1 11  s    5.23080    1 12  s    1.46420
    2.1     2.00000  -568.93360     1  2  s    1.14386    1  3  s    0.50504    1  4  s    1.44414    1  5  s    3.45163
                                    1  6  s   -5.00075    1  7  s    0.30438    1  8  s   -0.75574    1 10  s   -2.48963
                                    1 11  s   -3.01836    1 12  s   -0.84535
    3.1     2.00000  -138.62058     1  3  s    0.69919    1  4  s   -0.85021    1  5  s   -1.99744    1  6  s    2.86353
                                    1  8  s    0.44384    1 10  s    1.42712    1 11  s    1.72762    1 12  s    0.48435
    4.1     2.00000   -91.17359     1  1  d1+  0.99988
    5.1     2.00000   -91.17359     1  1  d1-  0.99988
    6.1     2.00000   -91.17359     1  1  d2-  0.99979
    7.1     2.00000   -91.17359     1  1  d2+  0.99979
    8.1     2.00000   -91.17359     1  1  d0   0.99998
    9.1     2.00000   -32.56249     1  4  s    1.43772    1  5  s    0.98386    1  6  s   -1.36908    1 10  s   -0.68450
                                    1 11  s   -0.82489
   10.1     2.00000   -15.63357     1  2  d1+  0.78172    1  2  d1- -0.62449
   11.1     2.00000   -15.63357     1  2  d1+  0.62450    1  2  d1-  0.78173
   12.1     2.00000   -15.63357     1  2  d0   1.00054
   13.1     2.00000   -15.63357     1  2  d2-  1.00039
   14.1     2.00000   -15.63357     1  2  d2+  1.00039
   15.1     2.00000    -5.88548     1  5  s    0.62340    1  6  s    0.49089    1 11  s    0.29476
   16.1     2.00000    -1.10778     1  3  d1+  0.77846    1  3  d1- -0.62866
   17.1     2.00000    -1.10778     1  3  d1+  0.62932    1  3  d1-  0.77971
   18.1     2.00000    -1.10778     1  3  d2-  0.59820    1  3  d2+  0.80376
   19.1     2.00000    -1.10778     1  3  d2-  0.80238    1  3  d2+ -0.59793
   20.1     2.00000    -1.10778     1  3  d0   1.00201
   21.1     2.00000    -0.68807     1  5  s   -0.28558    1  6  s    1.58374    1 11  s    0.31554
    1.2     2.00000  -491.41526     1  1  pz   0.99938
    2.2     2.00000  -491.41526     1  1  px   0.99858
    3.2     2.00000  -491.41526     1  1  py   0.99832
    4.2     2.00000  -115.86775     1  2  py   1.00368
    5.2     2.00000  -115.86775     1  2  px   1.00368
    6.2     2.00000  -115.86775     1  2  pz   1.00368
    7.2     2.00000   -24.94705     1  3  pz   0.98360
    8.2     2.00000   -24.94705     1  3  py   0.98358
    9.2     2.00000   -24.94705     1  3  px   0.98360
   10.2     2.00000    -5.36475     1  1  f1-  0.99973
   11.2     2.00000    -5.36475     1  1  f1+  0.99973
   12.2     2.00000    -5.36475     1  1  f0   0.99992
   13.2     2.00000    -5.36475     1  1  f2-  0.93697    1  1  f2+ -0.34920
   14.2     2.00000    -5.36475     1  1  f2-  0.34920    1  1  f2+  0.93697
   15.2     2.00000    -5.36475     1  1  f3+  0.99153
   16.2     2.00000    -5.36475     1  1  f3-  0.99153
   17.2     2.00000    -3.70942     1  4  py   1.00573
   18.2     2.00000    -3.70942     1  4  px   1.00795
   19.2     2.00000    -3.70942     1  4  pz   1.00573


 HOMO     21.1    -0.688073 =     -18.7234eV
 LUMO     20.2    -0.175777 =      -4.7831eV
 LUMO-HOMO         0.512296 =      13.9403eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.72       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.16      0.42     10.39
 REAL TIME  *        12.69 SEC
 DISK USED  *        32.88 MB (local),      899.98 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  39 (   20   19)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     148 (   77   71)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.172D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.255D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.229D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.488D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.445D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.990D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.220D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.449D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.433D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.366D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 1 4   6 2 3 5 1 4 6 5 3 2   1 1 5 3 2 4 6 1 5 3   2 4 6 1 5 3 4 6 215
                                       14 712 8 91113101514   711 912 81310 5 3 6   4 2 1 7 911151412 8  1310 3 5 2 6 4 1 812
                                       11 9 713101415 5 3 6   4 2 1 5 3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.229D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.442D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.642D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.186D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.130D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.254D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.875D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.856D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.261D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.276D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.623D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.623D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.351D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.330D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.129D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.427D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.427D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 1 5   4 6 810 7 9 2 1 3 3   1 2 1 2 3 2 1 3 5 4   810 7 9 6 1 2 3 4 5
                                        810 7 9 6 7 9 810 5   4 6 3 1 2 5 410 8 6   7 9 3 2 11416111219  132118201715 5 4 610
                                        8 9 7 3 2 1 5 4 7 9   610 8 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  3623  ( 154 closed/active, 2889 closed/virtual, 0 active/active, 580 active/virtual )
 Total number of variables:    4343
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10    6    0 -20247.78201314  -20247.78700550   -0.00499236    0.04806029 0.00014792 0.00000000  0.85E+00      6.27
   2   12    7    0 -20247.78694754  -20247.78695043   -0.00000289    0.00171037 0.00000144 0.00000000  0.26E-01     13.11
   3    7    5    0 -20247.78695043  -20247.78695043    0.00000000    0.00000035 0.00000000 0.00000000  0.11E-04     18.72

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.51E-08)
                       Final energy: -20247.78695043
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -20247.8439865866    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.62986855
 One electron energy                        -27729.76032142
 Two electron energy                          7481.91633484
 Virial ratio                                    1.64949749
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -20247.8439865866    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.62986855
 One electron energy                        -27729.76032143
 Two electron energy                          7481.91633484
 Virial ratio                                    1.64949749
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -20247.8439865866    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.62986855
 One electron energy                        -27729.76032143
 Two electron energy                          7481.91633484
 Virial ratio                                    1.64949749
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -20247.7299142741    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.29747178
 One electron energy                        -27715.41990463
 Two electron energy                          7467.68999036
 Virial ratio                                    1.64950076
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -20247.7299142741    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.29747178
 One electron energy                        -27715.41990464
 Two electron energy                          7467.68999036
 Virial ratio                                    1.64950076
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -20247.7299142739    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31174.29747178
 One electron energy                        -27715.41990456
 Two electron energy                          7467.68999029
 Virial ratio                                    1.64950076
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999996848538
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999881906
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000003269657
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999997409
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000000378
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999999974
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000159742811
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999843190271
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999996852136
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000005289
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999640
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999997309
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999843408652
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000156927823
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999878207
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999997302
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999982
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000002717
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 1 4   2 6 3 5 1 4 2 6 5 3   1 1 1 2 4 5 3 6 2 4   5 3 6 1 5 3 4 6 2 9
                                        7 8121115141310 9 7  1112 815141310 3 5 4   6 2 1 9 711 8121514  1310 3 5 2 4 6 1 9 7
                                        8121114151310 5 3 4   6 2 1 5 3 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 4   6 510 8 7 9 3 1 2 2   1 3 2 1 3 1 2 3 4 6   510 8 7 9 1 2 3 4 6
                                        510 8 7 9 4 6 510 8   7 9 3 1 2 4 5 610 8   7 9 3 1 21119132112  141617152018 4 5 610
                                        8 9 7 3 1 2 4 5 7 9   610 8 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3162.19252     1  1  s    0.96130    1  3  s   -0.86055    1  4  s   -2.46766    1  5  s   -5.94825
                                    1  6  s    8.66437    1  7  s   -0.53181    1  8  s    1.29244    1 10  s    4.31126
                                    1 11  s    5.23080    1 12  s    1.46420
    2.1     2.00000  -568.74253     1  2  s    1.14386    1  3  s    0.50504    1  4  s    1.44415    1  5  s    3.45166
                                    1  6  s   -5.00081    1  7  s    0.30438    1  8  s   -0.75575    1 10  s   -2.48966
                                    1 11  s   -3.01839    1 12  s   -0.84536
    3.1     2.00000  -138.42973     1  3  s    0.69918    1  4  s   -0.85024    1  5  s   -1.99759    1  6  s    2.86382
                                    1  8  s    0.44385    1 10  s    1.42726    1 11  s    1.72779    1 12  s    0.48440
    4.1     2.00000   -90.98288     1  1  d1+  0.99998
    5.1     2.00000   -90.98288     1  1  d1-  0.99998
    6.1     2.00000   -90.98288     1  1  d2-  0.99998
    7.1     2.00000   -90.98288     1  1  d2+  0.99998
    8.1     2.00000   -90.98288     1  1  d0   0.99998
    9.1     2.00000   -32.37167     1  4  s    1.43785    1  5  s    0.98458    1  6  s   -1.37054    1 10  s   -0.68519
                                    1 11  s   -0.82574
   10.1     2.00000   -15.44294     1  2  d1+  1.00050
   11.1     2.00000   -15.44294     1  2  d0   1.00050
   12.1     2.00000   -15.44294     1  2  d1-  1.00050
   13.1     2.00000   -15.44294     1  2  d2-  1.00050
   14.1     2.00000   -15.44294     1  2  d2+  1.00050
   15.1     2.00000    -5.69465     1  5  s    0.62921    1  6  s    0.47288    1 11  s    0.28598
   16.1     2.00000    -0.91715     1  3  d1+  1.00049
   17.1     2.00000    -0.91715     1  3  d0   1.00049
   18.1     2.00000    -0.91715     1  3  d1-  1.00049
   19.1     2.00000    -0.91715     1  3  d2+  1.00049
   20.1     2.00000    -0.91715     1  3  d2-  1.00049
   21.1     1.95202    -0.50505     1  6  s    1.28359
   22.1     0.00371     0.30413     1  4  s    0.31311    1  5  s    2.19718    1  6  s   -3.86996    1  8  s    0.30137
                                    1  9  s    1.08811    1 10  s   -4.01138    1 11  s   -1.50884
    1.2     2.00000  -491.22432     1  1  pz   0.99963
    2.2     2.00000  -491.22432     1  1  px   0.99963
    3.2     2.00000  -491.22432     1  1  py   0.99963
    4.2     2.00000  -115.67714     1  2  pz   1.00366
    5.2     2.00000  -115.67714     1  2  px   1.00366
    6.2     2.00000  -115.67714     1  2  py   1.00366
    7.2     2.00000   -24.75660     1  3  pz   0.98389
    8.2     2.00000   -24.75660     1  3  px   0.98389
    9.2     2.00000   -24.75660     1  3  py   0.98389
   10.2     2.00000    -5.17416     1  1  f1+  0.99993
   11.2     2.00000    -5.17416     1  1  f0   0.99993
   12.2     2.00000    -5.17416     1  1  f1-  0.99993
   13.2     2.00000    -5.17416     1  1  f2+  0.99993
   14.2     2.00000    -5.17416     1  1  f2-  0.99993
   15.2     2.00000    -5.17416     1  1  f3+  0.99993
   16.2     2.00000    -5.17416     1  1  f3-  0.99993
   17.2     2.00000    -3.51907     1  4  pz   0.99833
   18.2     2.00000    -3.51907     1  4  px   0.99833
   19.2     2.00000    -3.51907     1  4  py   0.99833
   20.2     0.18146    -0.01807     1  4  py  -0.91333    1  5  py  -0.90783    1  6  py  -0.55459    1  7  py  -0.70719
                                    1  8  py  -0.52368    1  9  py   0.49199    1 10  py   0.54647
   21.2     0.18146    -0.01807     1  4  px  -0.91333    1  5  px  -0.90783    1  6  px  -0.55459    1  7  px  -0.70719
                                    1  8  px  -0.52368    1  9  px   0.49199    1 10  px   0.54647
   22.2     0.18146    -0.01807     1  4  pz  -0.91333    1  5  pz  -0.90783    1  6  pz  -0.55459    1  7  pz  -0.70719
                                    1  8  pz  -0.52368    1  9  pz   0.49199    1 10  pz   0.54647
   23.2     0.16663     0.01234     1 12  py   0.90757
   24.2     0.16663     0.01234     1 12  px   0.90757
   25.2     0.16663     0.01234     1 12  pz   0.90757
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000      0.00169080      0.00032732      0.95243504      0.00001338     -0.26279317     -0.00000110
 20 00a000      0.01191845      0.95236180     -0.00034845     -0.00001365      0.00000110     -0.26279374
 20 a00000      0.95236069     -0.01191906     -0.00168657     -0.26279257     -0.00001338      0.00001365
 20 000a00      0.26257826     -0.00328624     -0.00046501      0.95106847      0.00004841     -0.00004940
 20 0000a0      0.00046618      0.00009025      0.26259940     -0.00004841      0.95106831      0.00000399
 20 00000a      0.00328609      0.26257983     -0.00009607      0.00004940     -0.00000399      0.95106815
 00 2a0000     -0.00017274     -0.00003344     -0.09730439     -0.00000144      0.02826270      0.00000012
 00 0a2000     -0.00017274     -0.00003344     -0.09730439     -0.00000144      0.02826270      0.00000012
 00 20a000     -0.00121763     -0.09729691      0.00003560      0.00000147     -0.00000012      0.02826276
 00 02a000     -0.00121763     -0.09729691      0.00003560      0.00000147     -0.00000012      0.02826276
 00 a20000     -0.09729679      0.00121770      0.00017231      0.02826265      0.00000144     -0.00000147
 00 a02000     -0.09729679      0.00121770      0.00017231      0.02826265      0.00000144     -0.00000147
 00 002a00     -0.02385495      0.00029855      0.00004225     -0.08603084     -0.00000438      0.00000447
 00 020a00     -0.02385495      0.00029855      0.00004225     -0.08603084     -0.00000438      0.00000447
 00 0020a0     -0.00004235     -0.00000820     -0.02385687      0.00000438     -0.08603083     -0.00000036
 00 2000a0     -0.00004235     -0.00000820     -0.02385687      0.00000438     -0.08603083     -0.00000036
 00 02000a     -0.00029854     -0.02385510      0.00000873     -0.00000447      0.00000036     -0.08603081
 00 20000a     -0.00029854     -0.02385510      0.00000873     -0.00000447      0.00000036     -0.08603081
 00 00200a     -0.00029004     -0.02317586      0.00000848     -0.00000442      0.00000036     -0.08514581
 00 0200a0     -0.00004115     -0.00000797     -0.02317763      0.00000433     -0.08514581     -0.00000036
 00 200a00     -0.02317582      0.00029005      0.00004104     -0.08514581     -0.00000433      0.00000442
 
 Energy:   -20247.84398659 -20247.84398659 -20247.84398659 -20247.72991427 -20247.72991427 -20247.72991427
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      277.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.56       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.41     19.24      0.42     10.39
 REAL TIME  *        36.14 SEC
 DISK USED  *       279.08 MB (local),        4.73 GB (total)
 SF USED    *       587.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20247.84399   2.0
    -20247.84399   2.0
    -20247.84399   2.0
    -20247.72991   2.0
    -20247.72991   2.0
    -20247.72991   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 81
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:          30 (  14  16 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     148 (  77  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.51 sec, npass=  1  Memory used:   3.60 MW


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20247.84398659
     2    -20247.84398659
     3    -20247.84398659
     4    -20247.72991427
     5    -20247.72991427
     6    -20247.72991427

 Number of blocks in overlap matrix:   563   Smallest eigenvalue:  0.86D-06
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       5732603
 Number of doubly external configurations:       7286446
 Total number of contracted configurations:     13072321
 Total number of uncontracted configurations:  137060401

 Diagonal Coupling coefficients finished.               Storage:  22137764 words, CPU-Time:     25.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1861925 words, CPU-time:      1.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20247.84398659     0.00000000    -0.80278473  0.53D-01  0.10D+00    37.74
    1     2     2     1.00000000     0.00000000-20247.84398659     0.00000000    -0.80274094  0.52D-01  0.10D+00    37.74
    1     3     3     1.00000000     0.00000000-20247.84398659    -0.00000000    -0.80277173  0.53D-01  0.10D+00    37.74
    1     4     4     1.00000000     0.00000000-20247.72991427     0.00000000    -0.77918735  0.41D-01  0.97D-01    37.74
    1     5     5     1.00000000     0.00000000-20247.72991427    -0.00000000    -0.77918639  0.41D-01  0.97D-01    37.74
    1     6     6     1.00000000     0.00000000-20247.72991427     0.00000000    -0.77917711  0.41D-01  0.97D-01    37.74
    2     1     1     1.09710380    -0.64004439-20248.48403097    -0.64004439    -0.01937161  0.31D-02  0.14D-02   537.71
    2     2     2     1.09713301    -0.64001787-20248.48400445    -0.64001787    -0.01940138  0.31D-02  0.14D-02   537.71
    2     3     3     1.09713629    -0.64001018-20248.48399677    -0.64001018    -0.01941098  0.31D-02  0.14D-02   537.71
    2     4     4     1.08787666    -0.63029642-20248.36021069    -0.63029642    -0.01743375  0.24D-02  0.12D-02   537.71
    2     5     5     1.08788308    -0.63029217-20248.36020644    -0.63029217    -0.01743882  0.24D-02  0.12D-02   537.71
    2     6     6     1.08788342    -0.63029163-20248.36020590    -0.63029163    -0.01743955  0.24D-02  0.12D-02   537.71
    3     1     1     1.08655273    -0.65798445-20248.50197104    -0.01794006    -0.00032257  0.46D-04  0.31D-04  1036.69
    3     2     2     1.08655129    -0.65798387-20248.50197046    -0.01796600    -0.00032307  0.46D-04  0.31D-04  1036.69
    3     3     3     1.08655137    -0.65798366-20248.50197025    -0.01797348    -0.00032328  0.46D-04  0.32D-04  1036.69
    3     4     4     1.08019953    -0.64633498-20248.37624926    -0.01603856    -0.00026372  0.28D-04  0.22D-04  1036.69
    3     5     5     1.08019971    -0.64633485-20248.37624912    -0.01604268    -0.00026386  0.28D-04  0.22D-04  1036.69
    3     6     6     1.08019973    -0.64633483-20248.37624910    -0.01604320    -0.00026388  0.28D-04  0.22D-04  1036.69
    4     1     1     1.08645204    -0.65828694-20248.50227352    -0.00030249    -0.00004166  0.37D-05  0.19D-05  1534.48
    4     2     2     1.08645204    -0.65828694-20248.50227352    -0.00030307    -0.00004166  0.37D-05  0.19D-05  1534.48
    4     3     3     1.08645207    -0.65828692-20248.50227351    -0.00030326    -0.00004168  0.38D-05  0.19D-05  1534.48
    4     4     4     1.08043340    -0.64656800-20248.37648227    -0.00023301    -0.00003454  0.19D-05  0.14D-05  1534.48
    4     5     5     1.08043346    -0.64656799-20248.37648226    -0.00023314    -0.00003456  0.19D-05  0.14D-05  1534.48
    4     6     6     1.08043346    -0.64656799-20248.37648226    -0.00023316    -0.00003456  0.19D-05  0.14D-05  1534.48
    5     1     1     1.08646552    -0.65830812-20248.50229471    -0.00002118    -0.00000671  0.14D-05  0.48D-06  2030.28
    5     2     2     1.08646551    -0.65830812-20248.50229470    -0.00002118    -0.00000672  0.14D-05  0.48D-06  2030.28
    5     3     3     1.08646550    -0.65830812-20248.50229470    -0.00002120    -0.00000672  0.14D-05  0.48D-06  2030.28
    5     4     4     1.08050566    -0.64658462-20248.37649889    -0.00001662    -0.00000397  0.87D-06  0.25D-06  2030.28
    5     5     5     1.08050570    -0.64658462-20248.37649889    -0.00001663    -0.00000397  0.87D-06  0.25D-06  2030.28
    5     6     6     1.08050570    -0.64658462-20248.37649889    -0.00001663    -0.00000397  0.87D-06  0.25D-06  2030.28
    6     1     1     1.08644664    -0.65831416-20248.50230075    -0.00000604    -0.00000038  0.77D-07  0.40D-07  2526.17
    6     2     2     1.08644663    -0.65831416-20248.50230075    -0.00000604    -0.00000038  0.77D-07  0.40D-07  2526.17
    6     3     3     1.08644676    -0.65831416-20248.50230075    -0.00000604    -0.00000038  0.77D-07  0.40D-07  2526.17
    6     4     4     1.08053630    -0.64658831-20248.37650259    -0.00000369    -0.00000023  0.46D-07  0.22D-07  2526.17
    6     5     5     1.08053629    -0.64658831-20248.37650259    -0.00000369    -0.00000023  0.46D-07  0.22D-07  2526.17
    6     6     6     1.08053629    -0.64658831-20248.37650259    -0.00000369    -0.00000023  0.46D-07  0.22D-07  2526.17
    7     1     1     1.08644717    -0.65831452-20248.50230110    -0.00000036    -0.00000008  0.56D-08  0.39D-08  3022.14
    7     2     2     1.08644717    -0.65831452-20248.50230110    -0.00000036    -0.00000008  0.56D-08  0.39D-08  3022.14
    7     3     3     1.08644718    -0.65831452-20248.50230110    -0.00000036    -0.00000008  0.56D-08  0.39D-08  3022.14
    7     4     4     1.08054520    -0.64658852-20248.37650279    -0.00000021    -0.00000006  0.40D-08  0.24D-08  3022.14
    7     5     5     1.08054520    -0.64658852-20248.37650279    -0.00000021    -0.00000006  0.40D-08  0.24D-08  3022.14
    7     6     6     1.08054519    -0.64658852-20248.37650279    -0.00000021    -0.00000006  0.40D-08  0.24D-08  3022.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.1%
 S   0.6%  66.4%
 P   0.2%  16.1%   7.2%

 Initialization:   0.9%
 Other:            7.4%

 Total CPU:     3022.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222000/00           0.2058893   0.0693181   0.0194846   0.0000367   0.9237519   0.0003815
 222222202220000/0          -0.0568397   0.1926975  -0.0849248   0.0068979  -0.0003818   0.9237260
 2222222022200000/          -0.0442033   0.0750865   0.1999591   0.9237260  -0.0000339  -0.0068979
 22222220222/00000           0.8727962   0.2938499   0.0825983  -0.0000087  -0.2181363  -0.0000901
 2222222022200/000          -0.1873833   0.3183012   0.8476525  -0.2181314   0.0000080   0.0016289
 222222202220/0000          -0.2409517   0.8168719  -0.3600080  -0.0016289   0.0000902  -0.2181308
 22222200222/02000          -0.0769753  -0.0259158  -0.0072847   0.0000008   0.0205048   0.0000085
 22222200222/20000          -0.0769752  -0.0259157  -0.0072847   0.0000008   0.0205048   0.0000085
 2222220022220/000           0.0165260  -0.0280722  -0.0747577   0.0205043  -0.0000008  -0.0001531
 2222220022202/000           0.0165260  -0.0280722  -0.0747577   0.0205043  -0.0000008  -0.0001531
 22222200222002/00          -0.0161863  -0.0054495  -0.0015318  -0.0000029  -0.0723692  -0.0000299
 22222200222020/00          -0.0161863  -0.0054495  -0.0015318  -0.0000029  -0.0723692  -0.0000299
 222222002220020/0           0.0044685  -0.0151492   0.0066765  -0.0005404   0.0000299  -0.0723672
 222222002222000/0           0.0044685  -0.0151492   0.0066765  -0.0005404   0.0000299  -0.0723672
 2222220022202000/           0.0034751  -0.0059030  -0.0157201  -0.0723672   0.0000027   0.0005404
 2222220022220000/           0.0034751  -0.0059030  -0.0157201  -0.0723672   0.0000027   0.0005404
 222222002220/2000           0.0212505  -0.0720431   0.0317505   0.0001531  -0.0000085   0.0205043
 222222002222/0000           0.0212504  -0.0720431   0.0317505   0.0001531  -0.0000085   0.0205043
 22222200222200/00          -0.0155276  -0.0052278  -0.0014695  -0.0000028  -0.0714937  -0.0000295
 222222002220200/0           0.0042867  -0.0145327   0.0064048  -0.0005339   0.0000295  -0.0714918
 2222220022200200/           0.0033337  -0.0056628  -0.0150803  -0.0714917   0.0000026   0.0005339
 222222/\222000/00           0.0160692   0.0054101   0.0015207   0.0000028   0.0693642   0.0000286
 222222/\2220000/0          -0.0044362   0.0150396  -0.0066282   0.0005180  -0.0000287   0.0693622
 222222/\22200000/          -0.0034499   0.0058603   0.0156063   0.0693622  -0.0000025  -0.0005180

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.903317   -0.193936   -0.249378   -0.033230    0.009174    0.007134
 2           0.304126    0.329432    0.845437   -0.011188   -0.031100   -0.012119
 3           0.085487    0.877294   -0.372597   -0.003145    0.013706   -0.032272
 4           0.000001    0.036679    0.000274    0.000038    0.007162    0.959138
 5           0.036680   -0.000001   -0.000015    0.959164   -0.000396   -0.000035
 6           0.000015   -0.000274    0.036679    0.000396    0.959138   -0.007162

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957612    0.000000    0.000000   -0.000142    0.000658   -0.000180
 2           0.000000    0.957612   -0.000000    0.000244    0.000221    0.000614
 3           0.000000   -0.000000    0.957612    0.000637    0.000062   -0.000276
 4          -0.000142    0.000244    0.000637    0.959865   -0.000000    0.000000
 5           0.000658    0.000221    0.000062   -0.000000    0.959865   -0.000000
 6          -0.000180    0.000614   -0.000276    0.000000   -0.000000    0.959865


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.90331707 (fixed)   0.95821395 (relaxed)   0.95761206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371907   -0.00502607   -0.53413038
 Singles      0.02069768   -0.07308263   -0.07951167
 Pairs        0.06607099   -0.00521757   -0.04467246
 Total        1.09048775   -0.08332627   -0.65831452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.84382627
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.29474519
 One electron energy               -27728.62124620
 Two electron energy                 7480.11894510
 Virial quotient                       -0.64950476
 Correlation energy                    -0.65847483
 !MRCI STATE 1.2 Energy              -20248.5023011043    

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.56188501 (Davidson, fixed reference)
 Cluster corrected energies        -20248.56098320 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.56188501 (Davidson, rotated reference)

 Cluster corrected energies        -20248.56006210 (Pople, fixed reference)
 Cluster corrected energies        -20248.55912234 (Pople, relaxed reference)
 Cluster corrected energies        -20248.56006210 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.84543730 (fixed)   0.95821395 (relaxed)   0.95761206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371907   -0.00502607   -0.54704246
 Singles      0.02069769   -0.07308263   -0.07951167
 Pairs        0.06607099    0.00886290   -0.03176038
 Total        1.09048775   -0.06924581   -0.65831452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.84382627
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.29474413
 One electron energy               -27728.62124431
 Two electron energy                 7480.11894321
 Virial quotient                       -0.64950476
 Correlation energy                    -0.65847483
 !MRCI STATE 2.2 Energy              -20248.5023011043    

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.56188501 (Davidson, fixed reference)
 Cluster corrected energies        -20248.56098320 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.56188501 (Davidson, rotated reference)

 Cluster corrected energies        -20248.56006210 (Pople, fixed reference)
 Cluster corrected energies        -20248.55912234 (Pople, relaxed reference)
 Cluster corrected energies        -20248.56006210 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.87729437 (fixed)   0.95821395 (relaxed)   0.95761205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00371907   -0.00502608   -0.56055884
 Singles      0.02069770   -0.07308264   -0.07951169
 Pairs        0.06607098    0.02360235   -0.01824399
 Total        1.09048775   -0.05450636   -0.65831452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.84382627
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.29474197
 One electron energy               -27728.62124034
 Two electron energy                 7480.11893923
 Virial quotient                       -0.64950476
 Correlation energy                    -0.65847483
 !MRCI STATE 3.2 Energy              -20248.5023011042    

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.56188501 (Davidson, fixed reference)
 Cluster corrected energies        -20248.56098321 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.56188501 (Davidson, rotated reference)

 Cluster corrected energies        -20248.56006210 (Pople, fixed reference)
 Cluster corrected energies        -20248.55912235 (Pople, relaxed reference)
 Cluster corrected energies        -20248.56006210 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95913774 (fixed)   0.96051875 (relaxed)   0.95986531 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00446883   -0.00628706   -0.00884135
 Singles      0.01793940   -0.07122651   -0.07631193
 Pairs        0.06296574   -0.56865533   -0.56143524
 Total        1.08537397   -0.64616890   -0.64658852
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.73007459
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.13662494
 One electron energy               -27714.76179779
 Two electron energy                 7466.38529500
 Virial quotient                       -0.64950402
 Correlation energy                    -0.64642820
 !MRCI STATE 4.2 Energy              -20248.3765027924    

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.43169094 (Davidson, fixed reference)
 Cluster corrected energies        -20248.43073665 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.43169094 (Davidson, rotated reference)

 Cluster corrected energies        -20248.42977295 (Pople, fixed reference)
 Cluster corrected energies        -20248.42878701 (Pople, relaxed reference)
 Cluster corrected energies        -20248.42977295 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95916440 (fixed)   0.96051875 (relaxed)   0.95986532 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00446883   -0.00628706   -0.53278627
 Singles      0.01793940   -0.07122651   -0.07631193
 Pairs        0.06296574    0.00002085   -0.03749032
 Total        1.08537397   -0.07749272   -0.64658852
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.73007459
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.13662168
 One electron energy               -27714.76179467
 Two electron energy                 7466.38529188
 Virial quotient                       -0.64950402
 Correlation energy                    -0.64642820
 !MRCI STATE 5.2 Energy              -20248.3765027921    

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.43169093 (Davidson, fixed reference)
 Cluster corrected energies        -20248.43073665 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.43169093 (Davidson, rotated reference)

 Cluster corrected energies        -20248.42977295 (Pople, fixed reference)
 Cluster corrected energies        -20248.42878701 (Pople, relaxed reference)
 Cluster corrected energies        -20248.42977295 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95913766 (fixed)   0.96051875 (relaxed)   0.95986532 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00446883   -0.00628706   -0.53667946
 Singles      0.01793940   -0.07122651   -0.07631193
 Pairs        0.06296574    0.00424642   -0.03359713
 Total        1.08537397   -0.07326716   -0.64658852
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.73007459
 Nuclear energy                         0.00000000
 Kinetic energy                     31175.13662163
 One electron energy               -27714.76179453
 Two electron energy                 7466.38529174
 Virial quotient                       -0.64950402
 Correlation energy                    -0.64642820
 !MRCI STATE 6.2 Energy              -20248.3765027918    

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.43169093 (Davidson, fixed reference)
 Cluster corrected energies        -20248.43073665 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.43169093 (Davidson, rotated reference)

 Cluster corrected energies        -20248.42977295 (Pople, fixed reference)
 Cluster corrected energies        -20248.42878701 (Pople, relaxed reference)
 Cluster corrected energies        -20248.42977295 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      277.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      607.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3217.83   3187.41     19.24      0.42     10.39
 REAL TIME  *      3282.61 SEC
 DISK USED  *       885.47 MB (local),       14.20 GB (total)
 SF USED    *         6.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20248.56188501  AU                              
 SETTING HLSDIAG(2)     =    -20248.56188501  AU                              
 SETTING HLSDIAG(3)     =    -20248.56188501  AU                              
 SETTING HLSDIAG(4)     =    -20248.43169094  AU                              
 SETTING HLSDIAG(5)     =    -20248.43169093  AU                              
 SETTING HLSDIAG(6)     =    -20248.43169093  AU                              


         HLSDIAG
    -20248.56189
    -20248.56189
    -20248.56189
    -20248.43169
    -20248.43169
    -20248.43169
                                                  


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

 Time for Seward_LS:     117.56 sec

       95531719. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    26968 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    117.57 sec, REAL time:    119.97 sec


 SORTLS1 read   110378473. and wrote   110378473. SO integrals in   448 records. CPU time:      1.02 sec, REAL time:      1.80 sec
 SORTLS2 read   110378473. and wrote   547794150. SO integrals in    48 records. CPU time:      0.45 sec, REAL time:      0.66 sec

 FILE SIZES: FILE 1:  2058.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2058.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies: -20248.502301 -20248.502301 -20248.502301 -20248.376503 -20248.376503 -20248.376503
 Replaced energies: -20248.561885 -20248.561885 -20248.561885 -20248.431691 -20248.431691 -20248.431691



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20248.56188501

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     388.03   -1380.44     413.15
                            0.00    3982.07   -1495.30     -11.26    -414.95   -1505.45       0.00   -1691.23   -3837.46    1505.29

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -388.03       0.00    4100.18   -1404.73
                        -3982.07      -0.00    -880.28      -3.73    1409.08    -506.21    1691.23       0.00   -1131.93     506.77

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    1380.44   -4100.18      -0.00     631.81
                         1495.30     880.28       0.00      -1.09    -620.85    -142.71    3837.46    1131.93       0.00     142.40

    4   4.2  0.5  0.5       0.00       0.00       0.00   28574.30       0.00       0.00    -413.15    1404.73    -631.81       0.00
                           11.26       3.73       1.09      -0.00      -4.37       0.02   -1505.29    -506.77    -142.40       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28574.30       0.00      -0.12       0.18       0.63      -0.24
                          414.95   -1409.08     620.85       4.37       0.00     584.63    -323.13     549.00    1461.96    -584.63

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28574.30     326.28    -559.48   -1457.28     584.64
                         1505.45     506.21     142.71      -0.02    -584.63      -0.00      11.11       4.01       1.67      -0.24

    7   1.2  0.5 -0.5       0.00    -388.03    1380.44    -413.15      -0.12     326.28       0.00       0.00       0.00       0.00
                           -0.00   -1691.23   -3837.46    1505.29     323.13     -11.11      -0.00   -3982.07    1495.30      11.26

    8   2.2  0.5 -0.5     388.03       0.00   -4100.18    1404.73       0.18    -559.48       0.00       0.00       0.00       0.00
                         1691.23      -0.00   -1131.93     506.77    -549.00      -4.01    3982.07       0.00     880.28       3.73

    9   3.2  0.5 -0.5   -1380.44    4100.18      -0.00    -631.81       0.63   -1457.28       0.00       0.00       0.00       0.00
                         3837.46    1131.93      -0.00     142.40   -1461.96      -1.67   -1495.30    -880.28      -0.00       1.09

   10   4.2  0.5 -0.5     413.15   -1404.73     631.81       0.00      -0.24     584.64       0.00       0.00       0.00   28574.30
                        -1505.29    -506.77    -142.40      -0.00     584.63       0.24     -11.26      -3.73      -1.09       0.00

   11   5.2  0.5 -0.5       0.12      -0.18      -0.63       0.24       0.00      -0.02       0.00       0.00       0.00       0.00
                         -323.13     549.00    1461.96    -584.63       0.00       4.37    -414.95    1409.08    -620.85      -4.37

   12   6.2  0.5 -0.5    -326.28     559.48    1457.28    -584.64       0.02      -0.00       0.00       0.00       0.00       0.00
                           11.11       4.01       1.67      -0.24      -4.37       0.00   -1505.45    -506.21    -142.71       0.02


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.12    -326.28
                          323.13     -11.11

    2   2.2  0.5  0.5      -0.18     559.48
                         -549.00      -4.01

    3   3.2  0.5  0.5      -0.63    1457.28
                        -1461.96      -1.67

    4   4.2  0.5  0.5       0.24    -584.64
                          584.63       0.24

    5   5.2  0.5  0.5       0.00       0.02
                           -0.00       4.37

    6   6.2  0.5  0.5      -0.02      -0.00
                           -4.37      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                          414.95    1505.45

    8   2.2  0.5 -0.5       0.00       0.00
                        -1409.08     506.21

    9   3.2  0.5 -0.5       0.00       0.00
                          620.85     142.71

   10   4.2  0.5 -0.5       0.00       0.00
                            4.37      -0.02

   11   5.2  0.5 -0.5   28574.30       0.00
                           -0.00    -584.63

   12   6.2  0.5 -0.5       0.00   28574.30
                          584.63       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1-20248.60274197    -0.04085696    -8967.07      0.00000000        0.00      0.0000
     2-20248.60274197    -0.04085696    -8967.07      0.00000000        0.00      0.0000
     3-20248.54255873     0.01932629     4241.63      0.06018324    13208.70      1.6377
     4-20248.54255873     0.01932629     4241.63      0.06018324    13208.70      1.6377
     5-20248.54255871     0.01932630     4241.63      0.06018326    13208.70      1.6377
     6-20248.54255871     0.01932630     4241.63      0.06018326    13208.70      1.6377
     7-20248.43574426     0.12614075    27684.69      0.16699771    36651.76      4.5442
     8-20248.43574426     0.12614075    27684.69      0.16699771    36651.76      4.5442
     9-20248.42856208     0.13332293    29261.00      0.17417989    38228.07      4.7397
    10-20248.42856208     0.13332293    29261.00      0.17417989    38228.07      4.7397
    11-20248.42856208     0.13332294    29261.00      0.17417989    38228.07      4.7397
    12-20248.42856208     0.13332294    29261.00      0.17417989    38228.07      4.7397


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.555834374  -0.147776526  -0.273462876   0.307223813  -0.387063228   0.587333577  -0.036538974   0.034763286
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.053116135   0.199786586   0.174551924   0.055967715  -0.058091479   0.013712437   0.012456913   0.013093211
                         0.535317290  -0.038589431  -0.240184037   0.334082462   0.434236492  -0.518577756  -0.027359381   0.038320228

    3    3.2  0.5  0.5   0.137757863   0.518150913   0.654285789   0.365878424  -0.058752046   0.074532668   0.032430161   0.034086691
                        -0.207859640  -0.011248373  -0.169466145  -0.182143657  -0.103565617   0.142696646   0.008896535  -0.015837099

    4    4.2  0.5  0.5  -0.002702548  -0.050317801   0.045765405   0.018632892   0.000326905  -0.003022416   0.473035220   0.326511179
                         0.000186898   0.002088579  -0.015304381  -0.003151023   0.003693499  -0.003298758  -0.016753946  -0.011719653

    5    5.2  0.5  0.5  -0.048573046   0.002607796  -0.009230508   0.021794259  -0.024902901   0.036192017  -0.315197896   0.456427958
                        -0.013269854   0.001162365  -0.005849678   0.005744155   0.008228712  -0.009718094  -0.089961482   0.122557802

    6    6.2  0.5  0.5   0.013290385  -0.000786728  -0.002219351  -0.011207077   0.004622294  -0.010840296   0.086432151  -0.124998866
                        -0.048575898   0.002590428  -0.009245917   0.023454957   0.027109803  -0.032857429  -0.315064246   0.456540196

    7    1.2  0.5 -0.5  -0.033113131  -0.124548986   0.010770872   0.009587256   0.569164898   0.375089747  -0.008001865  -0.008410595
                         0.144018826   0.541700472  -0.307034945  -0.273294763   0.144955344   0.095528138   0.033829813   0.035557819

    8    2.2  0.5 -0.5   0.082375492   0.509803066  -0.331914933  -0.246155952  -0.114697984  -0.050876145   0.034277428   0.029492070
                        -0.186059406   0.171717091  -0.067645806   0.166024078   0.505920242   0.435140858   0.021562235  -0.005824793

    9    3.2  0.5 -0.5   0.127067384  -0.233442323   0.194858911  -0.192300380   0.107444937   0.082494842  -0.023257962  -0.001192821
                        -0.502454749   0.087678622  -0.359267781   0.647942305  -0.119887598  -0.085861757   0.029525978  -0.033607155

   10    4.2  0.5 -0.5  -0.013310467   0.000787721   0.003802331  -0.016899448  -0.003743061  -0.001228357  -0.086561780   0.125188011
                         0.048570307  -0.002591947  -0.018510967   0.045200719   0.002450775   0.003498562   0.315045963  -0.456476698

   11    5.2  0.5 -0.5  -0.000548465  -0.002048384  -0.004976545  -0.005522472   0.032673998   0.022101684   0.014205583   0.014993093
                        -0.002801942  -0.050311370  -0.021982243  -0.009429915   0.018349750   0.014120260   0.472382363   0.327441581

   12    6.2  0.5 -0.5  -0.002700844  -0.050318750  -0.023833444  -0.009162426  -0.018614253  -0.011170072   0.473053475   0.326499133
                         0.000186271   0.002067754   0.010377887  -0.002542136   0.029165600   0.025130390  -0.016555263  -0.011589296


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.027696513  -0.007069478   0.004402237   0.043394951
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.008570232  -0.017371709   0.000974739   0.002540979
                        -0.019183065  -0.012026418  -0.003884448  -0.042535047

    3    3.2  0.5  0.5   0.024126065  -0.040714641   0.001439203   0.008619457
                         0.006389901   0.009688032   0.002710085   0.016168695

    4    4.2  0.5  0.5  -0.479983984   0.653969293  -0.011822236   0.001699573
                         0.013923535  -0.072400288  -0.017401027   0.002313245

    5    5.2  0.5  0.5   0.332315059   0.247348624  -0.071782263  -0.664757236
                         0.086210914   0.046105925   0.015477651   0.188361391

    6    6.2  0.5  0.5  -0.080582697  -0.041461100   0.013283969   0.193771719
                         0.303614819   0.225515501   0.070245822   0.685592422

    7    1.2  0.5 -0.5   0.001052234  -0.004122400  -0.028939672   0.002935810
                        -0.006990731   0.027388001   0.032336005  -0.003280353

    8    2.2  0.5 -0.5  -0.009306819   0.020244995  -0.033389796   0.003544563
                        -0.018968240  -0.005619526  -0.026472784   0.001864167

    9    3.2  0.5 -0.5   0.015640159  -0.002727756   0.006299967  -0.001059646
                        -0.038819137  -0.024808410   0.017205585  -0.002879761

   10    4.2  0.5 -0.5  -0.168931812  -0.085210138   0.000590297   0.005082351
                         0.635908547   0.472565045   0.002809131   0.020413994

   11    5.2  0.5 -0.5   0.008776526  -0.035788226   0.583678756  -0.059404157
                         0.251455900  -0.341445188  -0.369731406   0.043167085

   12    6.2  0.5 -0.5   0.229174636  -0.312226944   0.381648771  -0.043485138
                        -0.007433127   0.034494503   0.601605066  -0.056744885


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  30.895%   2.184%   7.478%   9.439%  14.982%  34.496%   0.134%   0.121%   0.077%   0.005%
    2    2.2  0.5  0.5  28.939%   4.140%   8.816%  11.474%  19.194%  26.911%   0.090%   0.164%   0.044%   0.045%
    3    3.2  0.5  0.5   6.218%  26.861%  45.681%  16.704%   1.418%   2.592%   0.113%   0.141%   0.062%   0.175%
    4    4.2  0.5  0.5   0.001%   0.254%   0.233%   0.036%   0.001%   0.002%  22.404%  10.675%  23.058%  43.292%
    5    5.2  0.5  0.5   0.254%   0.001%   0.012%   0.051%   0.069%   0.140%  10.744%  22.335%  11.787%   6.331%
    6    6.2  0.5  0.5   0.254%   0.001%   0.009%   0.068%   0.076%   0.120%  10.674%  22.405%   9.868%   5.258%
    7    1.2  0.5 -0.5   2.184%  30.895%   9.439%   7.478%  34.496%  14.982%   0.121%   0.134%   0.005%   0.077%
    8    2.2  0.5 -0.5   4.140%  28.939%  11.474%   8.816%  26.911%  19.194%   0.164%   0.090%   0.045%   0.044%
    9    3.2  0.5 -0.5  26.861%   6.218%  16.704%  45.681%   2.592%   1.418%   0.141%   0.113%   0.175%   0.062%
   10    4.2  0.5 -0.5   0.254%   0.001%   0.036%   0.233%   0.002%   0.001%  10.675%  22.404%  43.292%  23.058%
   11    5.2  0.5 -0.5   0.001%   0.254%   0.051%   0.012%   0.140%   0.069%  22.335%  10.744%   6.331%  11.787%
   12    6.2  0.5 -0.5   0.001%   0.254%   0.068%   0.009%   0.120%   0.076%  22.405%  10.674%   5.258%   9.868%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.002%   0.188%
    2    2.2  0.5  0.5   0.002%   0.182%
    3    3.2  0.5  0.5   0.001%   0.034%
    4    4.2  0.5  0.5   0.044%   0.001%
    5    5.2  0.5  0.5   0.539%  47.738%
    6    6.2  0.5  0.5   0.511%  50.758%
    7    1.2  0.5 -0.5   0.188%   0.002%
    8    2.2  0.5 -0.5   0.182%   0.002%
    9    3.2  0.5 -0.5   0.034%   0.001%
   10    4.2  0.5 -0.5   0.001%   0.044%
   11    5.2  0.5 -0.5  47.738%   0.539%
   12    6.2  0.5 -0.5  50.758%   0.511%


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
              1      24     1963.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      607.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10687.35   7469.51   3187.41     19.24      0.42     10.39
 REAL TIME  *     10859.03 SEC
 DISK USED  *       885.69 MB (local),       19.76 GB (total)
 SF USED    *         6.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy= -20248.428562076158

              CI           MULTI         RHF-SCF
 -20248.37650279 -20247.72991427 -20247.65151049
 **********************************************************************************************************************************
 Molpro calculation terminated
