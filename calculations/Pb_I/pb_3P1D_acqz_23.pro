
 Working directory              : /wrk/irikura/molpro.MBKXnw24lV/
 Global scratch directory       : /wrk/irikura/molpro.MBKXnw24lV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.MBKXnw24lV/

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
 NSING=5
 
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
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Feb-25          TIME: 11:32:28  
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

     168.296 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 3.408 MB, node maximum: 15.466 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056746. INTEGRALS IN      4 RECORDS. CPU TIME:     1.18 SEC, REAL TIME:     1.20 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    352 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.25 SEC

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
 CPU TIMES  *        10.09      9.85
 REAL TIME  *        11.08 SEC
 DISK USED  *        31.21 MB (local),      874.59 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  21  19

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20874.51036946  -20874.51036946     0.00D+00     0.13D+02     0     0       0.05      0.10    start
   2   -20877.37429349      -2.86392404     0.15D+00     0.59D+01     1     0       0.04      0.14    diag2
   3   -20884.06048053      -6.68618703     0.13D+00     0.78D+01     2     0       0.04      0.18    diag2
   4   -20884.32284852      -0.26236800     0.11D-01     0.89D-01     3     0       0.04      0.22    diag2
   5   -20884.36430092      -0.04145239     0.50D-02     0.51D-01     4     0       0.03      0.25    diag2
   6   -20884.37195605      -0.00765513     0.75D-03     0.52D-02     5     0       0.04      0.29    diag2
   7   -20884.37328374      -0.00132770     0.20D-03     0.13D-01     6     0       0.04      0.33    diag2
   8   -20884.37346879      -0.00018505     0.55D-04     0.42D-02     7     0       0.03      0.36    fixocc
   9   -20884.37349707      -0.00002828     0.18D-04     0.11D-02     8     0       0.04      0.40    diag2
  10   -20884.37350149      -0.00000442     0.72D-05     0.19D-03     9     0       0.04      0.44    diag2/orth
  11   -20884.37350175      -0.00000026     0.21D-05     0.30D-04     9     0       0.04      0.48    diag2
  12   -20884.37350176      -0.00000000     0.13D-06     0.12D-05     9     0       0.03      0.51    diag2
  13   -20884.37350176      -0.00000000     0.32D-07     0.73D-06     0     0       0.04      0.55    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.3735017555    
  RHF One-electron energy            -28596.4496527633    
  RHF Two-electron energy            7712.076151007866
  RHF Kinetic energy                  32688.9286454788    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.638882164914

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
    4.1     2.00000   -94.27602     1  1  d2-  0.94508    1  1  d2+ -0.32695
    5.1     2.00000   -94.27602     1  1  d2-  0.32695    1  1  d2+  0.94507
    6.1     2.00000   -94.27602     1  1  d0   1.00003
    7.1     2.00000   -94.27602     1  1  d1+  0.85280    1  1  d1-  0.52229
    8.1     2.00000   -94.27602     1  1  d1+ -0.52229    1  1  d1-  0.85280
    9.1     2.00000   -33.76531     1  3  s    0.28683    1  4  s    1.82870    1  5  s   -1.96244    1  6  s    2.65840
                                    1  8  s   -0.43152    1 10  s   -1.35709    1 11  s   -1.64090    1 12  s   -0.46853
   10.1     2.00000   -16.18309     1  2  d0   0.99933
   11.1     2.00000   -16.18309     1  2  d2-  0.75044    1  2  d2+  0.65991
   12.1     2.00000   -16.18309     1  2  d2- -0.65970    1  2  d2+  0.75036
   13.1     2.00000   -16.18309     1  2  d1-  0.99912
   14.1     2.00000   -16.18309     1  2  d1+  0.99931
   15.1     2.00000    -5.91932     1  4  s    0.38812    1  6  s    1.31668    1 10  s   -0.66960    1 11  s   -0.81429
   16.1     2.00000    -0.85058     1  3  d0   1.00025
   17.1     2.00000    -0.85058     1  3  d2-  0.85292    1  3  d2+  0.52245
   18.1     2.00000    -0.85058     1  3  d2- -0.52248    1  3  d2+  0.85295
   19.1     2.00000    -0.85058     1  3  d1+ -0.49295    1  3  d1-  0.87030
   20.1     2.00000    -0.85058     1  3  d1+  0.87033    1  3  d1-  0.49297
   21.1     2.00000    -0.35260     1  5  s   -0.30638    1  6  s    1.39136    1 11  s   -0.29667
    1.2     2.00000  -506.12404     1  1  py   0.99913
    2.2     2.00000  -506.12404     1  1  px   0.99913
    3.2     2.00000  -506.12404     1  1  pz   0.99918
    4.2     2.00000  -119.74048     1  2  py   1.00836
    5.2     2.00000  -119.74048     1  2  px   1.00836
    6.2     2.00000  -119.74048     1  2  pz   1.00836
    7.2     2.00000   -25.80840     1  3  pz   0.96535
    8.2     2.00000   -25.80840     1  3  px   0.96536
    9.2     2.00000   -25.80840     1  3  py   0.96608
   10.2     2.00000    -5.60740     1  1  f2+  0.99875
   11.2     2.00000    -5.60740     1  1  f0   0.81121    1  1  f3+ -0.48681
   12.2     2.00000    -5.60740     1  1  f1+  0.27651    1  1  f0   0.52436    1  1  f3+  0.76277
   13.2     2.00000    -5.60740     1  1  f2-  0.78124    1  1  f3-  0.51826
   14.2     2.00000    -5.60740     1  1  f1- -0.34206    1  1  f0   0.25725    1  1  f2- -0.56435    1  1  f3-  0.70571
   15.2     2.00000    -5.60740     1  1  f1+  0.93755    1  1  f3+ -0.34697
   16.2     2.00000    -5.60740     1  1  f1-  0.90468    1  1  f3-  0.42507
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
 CPU TIMES  *        10.65      0.56      9.85
 REAL TIME  *        11.68 SEC
 DISK USED  *        34.57 MB (local),      928.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

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
 Number of states:             5
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.258D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.259D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.401D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.381D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.381D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.897D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.477D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.291D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.917D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.426D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.380D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.362D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 2   3 5 6 4 1 2 3 5 6 4   1 1 5 3 4 6 2 1 5 3   6 4 21013 7141511 9
                                       12 8 1 5 3 4 6 21013   7 9111415 812 5 3 4   6 2 111 9 71415 812  1310 2 5 3 6 4 1 711
                                        9 81213101415 2 3 5   6 4 1 2 3 5 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.105D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.171D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.219D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.219D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.584D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.574D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.358D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.571D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.616D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.588D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.627D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.350D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.449D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.419D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.931D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.931D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 210   6 7 8 9 4 5 2 1 3 3   1 2 3 1 2 1 2 310 8   9 7 6 5 4 1 2 3 810
                                        7 9 6 5 4 6 7 9 810   4 5 1 2 3 6 810 7 9   4 51211132119161417  151820 1 2 3 6 7 910
                                        8 4 5 6 7 9 5 410 8   3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  3323  ( 57 closed/active, 3044 closed/virtual, 0 active/active, 222 active/virtual )
 Total number of variables:    3377
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0 -20884.30375335  -20884.31984254   -0.01608918    0.11527894 0.00000555 0.00000000  0.28E+00      4.68
   2    7   10    0 -20884.31941773  -20884.31944038   -0.00002265    0.00526166 0.00000002 0.00000000  0.79E-02      9.75
   3    5    8    0 -20884.31944041  -20884.31944041   -0.00000000    0.00000984 0.00000001 0.00000000  0.16E-04     14.18

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.79E-08)
                       Final energy: -20884.31944041
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3405215113    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295100
 One electron energy                        -28577.77241607
 Two electron energy                          7693.43189456
 Virial ratio                                    1.63888029
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3405215113    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295100
 One electron energy                        -28577.77241604
 Two electron energy                          7693.43189453
 Virial ratio                                    1.63888029
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3405215113    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295099
 One electron energy                        -28577.77241601
 Two electron energy                          7693.43189450
 Virial ratio                                    1.63888029
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3067917498    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295099
 One electron energy                        -28577.77241601
 Two electron energy                          7693.46562426
 Virial ratio                                    1.63887926
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3067917498    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295099
 One electron energy                        -28577.77241601
 Two electron energy                          7693.46562426
 Virial ratio                                    1.63887926
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3067917498    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295100
 One electron energy                        -28577.77241604
 Two electron energy                          7693.46562429
 Virial ratio                                    1.63887926
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3067917498    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295100
 One electron energy                        -28577.77241607
 Two electron energy                          7693.46562432
 Virial ratio                                    1.63887926
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3067917498    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.97295100
 One electron energy                        -28577.77241607
 Two electron energy                          7693.46562432
 Virial ratio                                    1.63887926
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999997491941
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000002474808
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999198
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000003591473
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.832662682314
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999998009099
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000001983850
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.167337890720
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999486710
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999133
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000514158
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999998229035
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.809645512384
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000268902
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000241357
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.190354016498
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000003021349
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999997526059
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999486645
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.999998179492
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.357691805302
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000001721998
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999997774793
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.642308092782
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 2 6 1 3   5 4 2 6 1 3 5 4 2 6   1 1 5 3 4 2 6 1 3 5   4 6 210131415 912 8
                                        711 1 3 5 4 6 21013  1514 9 812 711 5 3 4   6 2 11310 91415 812   711 2 5 3 4 6 11310
                                       1514 9 812 711 2 3 5   4 6 1 2 3 5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 7   9 410 8 6 5 1 2 3 3   2 1 1 2 3 1 2 3 9 7   4 810 6 5 1 2 3 7 9
                                        4 810 6 5 7 9 4 810   6 5 1 2 3 7 9 810 4   6 51820171511161413  211912 7 9 6 410 8 5
                                        1 2 3 7 9 4 6 810 5   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.60670     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27076
                                    1  5  s    9.90678    1  6  s  -13.20179    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75361    1 11  s    8.14132    1 12  s    2.33001
    2.1     2.00000  -587.69564     1  2  s    1.25928    1  3  s    0.91634    1  4  s    2.61431    1  5  s   -6.06295
                                    1  6  s    8.07905    1  7  s    0.60613    1  8  s   -1.37504    1 10  s   -4.13299
                                    1 11  s   -4.98222    1 12  s   -1.42588
    3.1     2.00000  -143.75015     1  3  s    0.46645    1  4  s   -1.52684    1  5  s    3.55935    1  6  s   -4.76216
                                    1  7  s   -0.35631    1  8  s    0.80152    1 10  s    2.43496    1 11  s    2.93736
                                    1 12  s    0.84023
    4.1     2.00000   -94.50453     1  1  d2-  1.00003
    5.1     2.00000   -94.50453     1  1  d2+  1.00003
    6.1     2.00000   -94.50453     1  1  d1+  1.00003
    7.1     2.00000   -94.50453     1  1  d0   1.00003
    8.1     2.00000   -94.50453     1  1  d1-  1.00003
    9.1     2.00000   -33.99401     1  3  s    0.28681    1  4  s    1.82856    1  5  s   -1.96175    1  6  s    2.65712
                                    1  8  s   -0.43149    1 10  s   -1.35646    1 11  s   -1.64010    1 12  s   -0.46831
   10.1     2.00000   -16.41164     1  2  d2-  0.99937
   11.1     2.00000   -16.41164     1  2  d2+  0.99937
   12.1     2.00000   -16.41164     1  2  d1+  0.99937
   13.1     2.00000   -16.41164     1  2  d0   0.99937
   14.1     2.00000   -16.41164     1  2  d1-  0.99937
   15.1     2.00000    -6.14823     1  4  s    0.38848    1  6  s    1.32498    1 10  s   -0.67383    1 11  s   -0.81936
   16.1     2.00000    -1.07962     1  3  d2-  1.00060
   17.1     2.00000    -1.07962     1  3  d2+  1.00060
   18.1     2.00000    -1.07962     1  3  d1+  1.00060
   19.1     2.00000    -1.07962     1  3  d0   1.00060
   20.1     2.00000    -1.07962     1  3  d1-  1.00060
   21.1     2.00000    -0.56669     1  5  s   -0.34688    1  6  s    1.50272    1 10  s   -0.25152    1 11  s   -0.31129
    1.2     2.00000  -506.35263     1  1  pz   0.99918
    2.2     2.00000  -506.35263     1  1  px   0.99918
    3.2     2.00000  -506.35263     1  1  py   0.99918
    4.2     2.00000  -119.96895     1  2  px   1.00837
    5.2     2.00000  -119.96895     1  2  py   1.00837
    6.2     2.00000  -119.96895     1  2  pz   1.00837
    7.2     2.00000   -26.03684     1  3  px   0.96641
    8.2     2.00000   -26.03684     1  3  py   0.96641
    9.2     2.00000   -26.03684     1  3  pz   0.96641
   10.2     2.00000    -5.83593     1  1  f3+  1.00002
   11.2     2.00000    -5.83593     1  1  f3-  1.00002
   12.2     2.00000    -5.83593     1  1  f1+  1.00002
   13.2     2.00000    -5.83593     1  1  f2+  1.00002
   14.2     2.00000    -5.83593     1  1  f2-  1.00002
   15.2     2.00000    -5.83593     1  1  f0   1.00002
   16.2     2.00000    -5.83593     1  1  f1-  1.00002
   17.2     2.00000    -3.84489     1  4  px   0.99650
   18.2     2.00000    -3.84489     1  4  py   0.99650
   19.2     2.00000    -3.84489     1  4  pz   0.99650
   20.2     0.66667    -0.06448     1  9  pz   0.35671    1 10  pz   0.53353    1 11  pz   0.25844
   21.2     0.66667    -0.06448     1  9  py   0.35671    1 10  py   0.53353    1 11  py   0.25844
   22.2     0.66667    -0.06448     1  9  px   0.35671    1 10  px   0.53353    1 11  px   0.25844
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 a0a           -0.00071644      0.00002945      0.99999974
 aa0            0.00158369      0.99999875     -0.00002832
 0aa            0.99999849     -0.00158366      0.00071649
 
 Energy:   -20884.34052151 -20884.34052151 -20884.34052151
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 020            0.00050546     -0.17811693     -0.00034963      0.00000701      0.79683163
 200           -0.00118415      0.77913430      0.00044324      0.00000418     -0.24416145
 0ab           -0.00019908     -0.00000620     -0.00056737      0.70710653     -0.00000773
 0ba            0.00019908      0.00000620      0.00056737     -0.70710653      0.00000773
 ba0           -0.00000632      0.00032801     -0.70710644     -0.00056737     -0.00023693
 ab0            0.00000632     -0.00032801      0.70710644      0.00056737      0.00023693
 b0a           -0.70710600     -0.00100448      0.00000594     -0.00019908      0.00022401
 a0b            0.70710600      0.00100448     -0.00000594      0.00019908     -0.00022401
 002            0.00067869     -0.60101736     -0.00009361     -0.00001119     -0.55267018
 
 Energy:   -20884.30679175 -20884.30679175 -20884.30679175 -20884.30679175 -20884.30679175
 


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
 CPU TIMES  *        25.45     14.80      0.56      9.85
 REAL TIME  *        29.70 SEC
 DISK USED  *       239.63 MB (local),        4.11 GB (total)
 SF USED    *       484.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.34052   2.0
    -20884.34052   2.0
    -20884.34052   2.0
    -20884.30679   6.0
    -20884.30679   6.0
    -20884.30679   6.0
    -20884.30679   6.0
    -20884.30679   6.0
                                                  


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
     1    -20884.34052151
     2    -20884.34052151
     3    -20884.34052151

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
    1     1     1     1.00000000     0.00000000-20884.34052151    -0.00000000    -1.29741573  0.41D-01  0.14D+00     3.01
    1     2     2     1.00000000     0.00000000-20884.34052151    -0.00000000    -1.29772615  0.41D-01  0.14D+00     3.01
    1     3     3     1.00000000     0.00000000-20884.34052151     0.00000000    -1.29759540  0.41D-01  0.14D+00     3.01
    2     1     1     1.10256758    -0.98727438-20885.32779590    -0.98727438    -0.03224698  0.36D-02  0.25D-02    25.95
    2     2     2     1.10266513    -0.98715311-20885.32767463    -0.98715311    -0.03238152  0.37D-02  0.25D-02    25.95
    2     3     3     1.10274952    -0.98704751-20885.32756903    -0.98704751    -0.03249699  0.37D-02  0.25D-02    25.95
    3     1     1     1.08745448    -1.01708428-20885.35760580    -0.02980990    -0.00231619  0.45D-04  0.67D-04    48.84
    3     2     2     1.08744973    -1.01708256-20885.35760407    -0.02992944    -0.00231625  0.45D-04  0.67D-04    48.84
    3     3     3     1.08744521    -1.01708106-20885.35760257    -0.03003354    -0.00231653  0.46D-04  0.67D-04    48.84
    4     1     1     1.08727969    -1.01750822-20885.35802973    -0.00042393    -0.00034162  0.29D-04  0.24D-04    71.67
    4     2     2     1.08727549    -1.01750690-20885.35802841    -0.00042434    -0.00034372  0.29D-04  0.24D-04    71.67
    4     3     3     1.08727154    -1.01750577-20885.35802728    -0.00042471    -0.00034547  0.29D-04  0.24D-04    71.67
    5     1     1     1.08737195    -1.01777388-20885.35829539    -0.00026566    -0.00006946  0.20D-05  0.13D-05    94.62
    5     2     2     1.08737216    -1.01777388-20885.35829539    -0.00026698    -0.00006951  0.20D-05  0.13D-05    94.62
    5     3     3     1.08737230    -1.01777388-20885.35829539    -0.00026811    -0.00006960  0.20D-05  0.13D-05    94.62
    6     1     1     1.08734462    -1.01778691-20885.35830842    -0.00001303    -0.00000770  0.13D-05  0.43D-06   117.50
    6     2     2     1.08734451    -1.01778690-20885.35830841    -0.00001302    -0.00000771  0.13D-05  0.43D-06   117.50
    6     3     3     1.08734434    -1.01778689-20885.35830840    -0.00001301    -0.00000772  0.13D-05  0.44D-06   117.50
    7     1     1     1.08724551    -1.01779159-20885.35831310    -0.00000468    -0.00000728  0.18D-06  0.19D-06   140.43
    7     2     2     1.08724596    -1.01779158-20885.35831309    -0.00000469    -0.00000729  0.18D-06  0.19D-06   140.43
    7     3     3     1.08724649    -1.01779158-20885.35831309    -0.00000469    -0.00000730  0.18D-06  0.19D-06   140.43
    8     1     1     1.08722164    -1.01779302-20885.35831453    -0.00000143    -0.00000105  0.60D-07  0.38D-07   163.35
    8     2     2     1.08722190    -1.01779302-20885.35831453    -0.00000144    -0.00000106  0.60D-07  0.38D-07   163.35
    8     3     3     1.08722218    -1.01779302-20885.35831453    -0.00000144    -0.00000107  0.61D-07  0.38D-07   163.35
    9     1     1     1.08722082    -1.01779325-20885.35831476    -0.00000023    -0.00000028  0.39D-07  0.20D-07   186.07
    9     2     2     1.08722103    -1.01779325-20885.35831476    -0.00000023    -0.00000028  0.39D-07  0.20D-07   186.07
    9     3     3     1.08722125    -1.01779325-20885.35831476    -0.00000023    -0.00000028  0.40D-07  0.20D-07   186.07
   10     1     1     1.08721979    -1.01779341-20885.35831493    -0.00000017    -0.00000030  0.67D-08  0.81D-08   209.01
   10     2     2     1.08721964    -1.01779342-20885.35831493    -0.00000017    -0.00000030  0.65D-08  0.81D-08   209.01
   10     3     3     1.08721971    -1.01779341-20885.35831493    -0.00000017    -0.00000030  0.66D-08  0.81D-08   209.01
   11     1     1     1.08721942    -1.01779347-20885.35831498    -0.00000006    -0.00000005  0.31D-08  0.18D-08   231.78
   11     2     2     1.08721937    -1.01779347-20885.35831498    -0.00000006    -0.00000005  0.31D-08  0.18D-08   231.78
   11     3     3     1.08721932    -1.01779347-20885.35831498    -0.00000006    -0.00000005  0.31D-08  0.18D-08   231.78


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   5.1%
 P   0.8%  18.2%  13.9%

 Initialization:   1.2%
 Other:           60.4%

 Total CPU:      231.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0          -0.0000000  -0.0000000   0.9584553
 22222222222222222/0/          -0.0000000   0.9584552   0.0000000
 222222222222222220//           0.9584552   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958455   -0.000000   -0.000000
 2           0.000000   -0.000000    0.958455
 3           0.000000    0.958455    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958455    0.000000    0.000000
 2           0.000000    0.958455    0.000000
 3           0.000000    0.000000    0.958455


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95845521 (fixed)   0.95845521 (relaxed)   0.95845521 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124221   -0.00281967   -0.89258158
 Singles      0.01207282   -0.04742028   -0.05485001
 Pairs        0.07525494    0.00000000   -0.07036188
 Total        1.08856997   -0.05023995   -1.01779347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34052151
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73106150
 One electron energy               -28575.24556361
 Two electron energy                 7689.88724863
 Virial quotient                       -0.63891615
 Correlation energy                    -1.01779347
 !MRCI STATE 1.1 Energy              -20885.3583149831    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44846092 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44846092 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44846092 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45030383 (Pople, fixed reference)
 Cluster corrected energies        -20885.45030383 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45030383 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95845523 (fixed)   0.95845523 (relaxed)   0.95845523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124221   -0.00281967   -0.00375170
 Singles      0.01207276   -0.04742024   -0.05484996
 Pairs        0.07525495   -0.96755356   -0.95919181
 Total        1.08856993   -1.01779347   -1.01779347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34052151
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73106013
 One electron energy               -28575.24556582
 Two electron energy                 7689.88725084
 Virial quotient                       -0.63891615
 Correlation energy                    -1.01779347
 !MRCI STATE 2.1 Energy              -20885.3583149825    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44846088 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44846088 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44846088 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45030378 (Pople, fixed reference)
 Cluster corrected energies        -20885.45030378 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45030378 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95845525 (fixed)   0.95845525 (relaxed)   0.95845525 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124221   -0.00281967   -0.89258175
 Singles      0.01207270   -0.04742018   -0.05484989
 Pairs        0.07525497    0.00000000   -0.07036183
 Total        1.08856988   -0.05023985   -1.01779347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34052151
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73105963
 One electron energy               -28575.24556701
 Two electron energy                 7689.88725203
 Virial quotient                       -0.63891615
 Correlation energy                    -1.01779347
 !MRCI STATE 3.1 Energy              -20885.3583149822    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44846083 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44846083 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44846083 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45030373 (Pople, fixed reference)
 Cluster corrected energies        -20885.45030373 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45030373 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      139.91       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       260.29    234.82     14.80      0.56      9.85
 REAL TIME  *       275.89 SEC
 DISK USED  *       377.76 MB (local),        6.27 GB (total)
 SF USED    *         1.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.44846092  AU                              
 SETTING HLSDIAG(2)     =    -20885.44846088  AU                              
 SETTING HLSDIAG(3)     =    -20885.44846083  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1    -20884.30679175
     2    -20884.30679175
     3    -20884.30679175
     4    -20884.30679175
     5    -20884.30679175

 Number of blocks in overlap matrix:  1548   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1548
 Number of N-1 electron functions:    2604

 Number of internal configurations:                  782
 Number of singly external configurations:        197708
 Number of doubly external configurations:       8948040
 Total number of contracted configurations:      9146530
 Total number of uncontracted configurations:   18162658

 Diagonal Coupling coefficients finished.               Storage:   1872576 words, CPU-Time:      0.41 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2218313 words, CPU-time:      2.69 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.30679175    -0.00000000    -1.30707570  0.47D-01  0.14D+00     3.65
    1     2     2     1.00000000     0.00000000-20884.30679175    -0.00000000    -1.30618015  0.46D-01  0.14D+00     3.65
    1     3     3     1.00000000     0.00000000-20884.30679175    -0.00000000    -1.30708983  0.47D-01  0.14D+00     3.65
    1     4     4     1.00000000     0.00000000-20884.30679175    -0.00000000    -1.30681986  0.47D-01  0.14D+00     3.65
    1     5     5     1.00000000     0.00000000-20884.30679175    -0.00000000    -1.30615993  0.46D-01  0.14D+00     3.65
    2     1     1     1.10684570    -0.99108748-20885.29787923    -0.99108748    -0.03357189  0.41D-02  0.28D-02    59.46
    2     2     2     1.10690219    -0.99095917-20885.29775092    -0.99095917    -0.03372971  0.42D-02  0.28D-02    59.46
    2     3     3     1.10712480    -0.99070621-20885.29749796    -0.99070621    -0.03402013  0.42D-02  0.28D-02    59.46
    2     4     4     1.10728550    -0.99050171-20885.29729346    -0.99050171    -0.03425165  0.43D-02  0.28D-02    59.46
    2     5     5     1.10729987    -0.99047585-20885.29726760    -0.99047585    -0.03428227  0.44D-02  0.28D-02    59.46
    3     1     1     1.09002793    -1.02218936-20885.32898111    -0.03110187    -0.00238025  0.61D-04  0.80D-04   116.13
    3     2     2     1.09002635    -1.02218596-20885.32897771    -0.03122679    -0.00238011  0.61D-04  0.81D-04   116.13
    3     3     3     1.09003438    -1.02218297-20885.32897472    -0.03147676    -0.00237952  0.62D-04  0.81D-04   116.13
    3     4     4     1.09003234    -1.02217809-20885.32896984    -0.03167638    -0.00238089  0.63D-04  0.82D-04   116.13
    3     5     5     1.09003189    -1.02217736-20885.32896911    -0.03170151    -0.00238104  0.62D-04  0.82D-04   116.13
    4     1     1     1.08978681    -1.02263807-20885.32942982    -0.00044872    -0.00042078  0.39D-04  0.34D-04   172.97
    4     2     2     1.08978586    -1.02263544-20885.32942719    -0.00044948    -0.00042484  0.39D-04  0.35D-04   172.97
    4     3     3     1.08979139    -1.02263340-20885.32942515    -0.00045043    -0.00042995  0.40D-04  0.35D-04   172.97
    4     4     4     1.08978921    -1.02262981-20885.32942156    -0.00045173    -0.00043558  0.40D-04  0.36D-04   172.97
    4     5     5     1.08978887    -1.02262928-20885.32942103    -0.00045192    -0.00043644  0.40D-04  0.36D-04   172.97
    5     1     1     1.08971681    -1.02296743-20885.32975918    -0.00032935    -0.00007832  0.34D-05  0.17D-05   229.31
    5     2     2     1.08972014    -1.02296739-20885.32975914    -0.00033195    -0.00007766  0.35D-05  0.17D-05   229.31
    5     3     3     1.08971785    -1.02296737-20885.32975912    -0.00033397    -0.00007826  0.34D-05  0.17D-05   229.31
    5     4     4     1.08972140    -1.02296733-20885.32975908    -0.00033752    -0.00007758  0.35D-05  0.17D-05   229.31
    5     5     5     1.08972142    -1.02296732-20885.32975907    -0.00033804    -0.00007756  0.35D-05  0.17D-05   229.31
    6     1     1     1.08966682    -1.02298254-20885.32977429    -0.00001511    -0.00001120  0.23D-05  0.69D-06   285.86
    6     2     2     1.08966756    -1.02298248-20885.32977423    -0.00001508    -0.00001127  0.23D-05  0.69D-06   285.86
    6     3     3     1.08966927    -1.02298243-20885.32977418    -0.00001507    -0.00001140  0.23D-05  0.70D-06   285.86
    6     4     4     1.08967016    -1.02298237-20885.32977412    -0.00001504    -0.00001148  0.23D-05  0.71D-06   285.86
    6     5     5     1.08967015    -1.02298236-20885.32977411    -0.00001504    -0.00001149  0.23D-05  0.71D-06   285.86
    7     1     1     1.08949873    -1.02299004-20885.32978179    -0.00000750    -0.00000940  0.24D-06  0.26D-06   343.91
    7     2     2     1.08949892    -1.02299004-20885.32978179    -0.00000756    -0.00000940  0.24D-06  0.26D-06   343.91
    7     3     3     1.08949998    -1.02299002-20885.32978177    -0.00000758    -0.00000946  0.24D-06  0.26D-06   343.91
    7     4     4     1.08949986    -1.02298997-20885.32978172    -0.00000760    -0.00000961  0.25D-06  0.27D-06   343.91
    7     5     5     1.08950062    -1.02298996-20885.32978171    -0.00000760    -0.00000964  0.25D-06  0.27D-06   343.91
    8     1     1     1.08947438    -1.02299176-20885.32978351    -0.00000172    -0.00000117  0.11D-06  0.66D-07   400.18
    8     2     2     1.08947447    -1.02299175-20885.32978350    -0.00000172    -0.00000117  0.11D-06  0.66D-07   400.18
    8     3     3     1.08947503    -1.02299175-20885.32978350    -0.00000173    -0.00000119  0.11D-06  0.66D-07   400.18
    8     4     4     1.08947420    -1.02299174-20885.32978349    -0.00000177    -0.00000123  0.11D-06  0.65D-07   400.18
    8     5     5     1.08947433    -1.02299174-20885.32978349    -0.00000178    -0.00000124  0.11D-06  0.65D-07   400.18
    9     1     1     1.08947239    -1.02299205-20885.32978380    -0.00000030    -0.00000051  0.67D-07  0.37D-07   456.81
    9     2     2     1.08947246    -1.02299205-20885.32978380    -0.00000030    -0.00000051  0.67D-07  0.37D-07   456.81
    9     3     3     1.08947288    -1.02299205-20885.32978380    -0.00000030    -0.00000051  0.68D-07  0.37D-07   456.81
    9     4     4     1.08947232    -1.02299204-20885.32978380    -0.00000030    -0.00000050  0.70D-07  0.37D-07   456.81
    9     5     5     1.08947228    -1.02299204-20885.32978379    -0.00000030    -0.00000050  0.70D-07  0.37D-07   456.81
   10     1     1     1.08946821    -1.02299232-20885.32978407    -0.00000027    -0.00000045  0.12D-07  0.13D-07   513.81
   10     2     2     1.08946823    -1.02299232-20885.32978407    -0.00000027    -0.00000045  0.12D-07  0.13D-07   513.81
   10     3     3     1.08946833    -1.02299232-20885.32978407    -0.00000027    -0.00000046  0.12D-07  0.13D-07   513.81
   10     4     4     1.08946806    -1.02299231-20885.32978406    -0.00000027    -0.00000047  0.12D-07  0.13D-07   513.81
   10     5     5     1.08946806    -1.02299231-20885.32978406    -0.00000027    -0.00000047  0.12D-07  0.13D-07   513.81
   11     1     1     1.08946676    -1.02299240-20885.32978415    -0.00000008    -0.00000006  0.71D-08  0.35D-08   570.08
   11     2     2     1.08946694    -1.02299240-20885.32978415    -0.00000008    -0.00000006  0.70D-08  0.36D-08   570.08
   11     3     3     1.08946692    -1.02299240-20885.32978415    -0.00000008    -0.00000006  0.70D-08  0.36D-08   570.08
   11     4     4     1.08946699    -1.02299240-20885.32978415    -0.00000008    -0.00000006  0.71D-08  0.37D-08   570.08
   11     5     5     1.08946677    -1.02299240-20885.32978415    -0.00000008    -0.00000006  0.71D-08  0.35D-08   570.08
   12     1     1     1.08946556    -1.02299241-20885.32978417    -0.00000002    -0.00000003  0.44D-08  0.21D-08   626.24
   12     2     2     1.08946564    -1.02299241-20885.32978416    -0.00000002    -0.00000003  0.43D-08  0.21D-08   626.24
   12     3     3     1.08946563    -1.02299241-20885.32978416    -0.00000002    -0.00000003  0.43D-08  0.21D-08   626.24
   12     4     4     1.08946570    -1.02299241-20885.32978416    -0.00000002    -0.00000003  0.43D-08  0.21D-08   626.24
   12     5     5     1.08946555    -1.02299241-20885.32978416    -0.00000002    -0.00000003  0.44D-08  0.21D-08   626.24


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   2.2%
 P   0.8%  13.2%  17.7%

 Initialization:   0.5%
 Other:           65.3%

 Total CPU:      626.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222/\0          -0.0000000  -0.0000000   0.9573757   0.0000000  -0.0000000
 22222222222222222/0\           0.0000000   0.9573757   0.0000000   0.0000000  -0.0000000
 222222222222222220/\          -0.0000000  -0.0000000  -0.0000000   0.9573757   0.0000000
 22222222222222222020           0.7607949  -0.0000000   0.0000000   0.0000000  -0.1795457
 22222222222222222200          -0.2249063   0.0000000  -0.0000000  -0.0000000   0.7486406
 22222222222222222002          -0.5358886  -0.0000000  -0.0000000  -0.0000000  -0.5690948

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.008636   -0.000000   -0.000000    0.957337
 2           0.957376    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.957376   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.957376    0.000000
 5          -0.000000    0.957337   -0.000000    0.000000   -0.008636

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957376    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.957376    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.957376    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.957376   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.957376


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95733678 (fixed)   0.95737574 (relaxed)   0.95737574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143245   -0.00329795   -0.00440209
 Singles      0.01325002   -0.04987972   -0.05814029
 Pairs        0.07634369   -0.96977528   -0.96045003
 Total        1.09102616   -1.02295296   -1.02299242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30679175
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73051532
 One electron energy               -28575.14802321
 Two electron energy                 7689.81823905
 Virial quotient                       -0.63891529
 Correlation energy                    -1.02299242
 !MRCI STATE 1.1 Energy              -20885.3297841654    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42290324 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42290324 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42290324 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42542309 (Pople, fixed reference)
 Cluster corrected energies        -20885.42542309 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42542309 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95737570 (fixed)   0.95737570 (relaxed)   0.95737570 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143246   -0.00329796   -0.89326729
 Singles      0.01325009   -0.04987974   -0.05814032
 Pairs        0.07634371    0.00000000   -0.07158480
 Total        1.09102626   -0.05317771   -1.02299241
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30679175
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73052656
 One electron energy               -28575.14808951
 Two electron energy                 7689.81830534
 Virial quotient                       -0.63891529
 Correlation energy                    -1.02299241
 !MRCI STATE 2.1 Energy              -20885.3297841646    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42290334 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42290334 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42290334 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42542320 (Pople, fixed reference)
 Cluster corrected energies        -20885.42542320 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42542320 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95737570 (fixed)   0.95737570 (relaxed)   0.95737570 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143246   -0.00329796   -0.89326731
 Singles      0.01325008   -0.04987973   -0.05814031
 Pairs        0.07634370   -0.00000000   -0.07158479
 Total        1.09102625   -0.05317769   -1.02299241
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30679175
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73052506
 One electron energy               -28575.14808689
 Two electron energy                 7689.81830272
 Virial quotient                       -0.63891529
 Correlation energy                    -1.02299241
 !MRCI STATE 3.1 Energy              -20885.3297841645    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42290332 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42290332 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42290332 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42542319 (Pople, fixed reference)
 Cluster corrected energies        -20885.42542319 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42542319 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95737567 (fixed)   0.95737567 (relaxed)   0.95737567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143246   -0.00329796   -0.89326717
 Singles      0.01325017   -0.04987982   -0.05814042
 Pairs        0.07634369   -0.00000000   -0.07158483
 Total        1.09102632   -0.05317778   -1.02299241
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30679175
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73053494
 One electron energy               -28575.14809783
 Two electron energy                 7689.81831367
 Virial quotient                       -0.63891529
 Correlation energy                    -1.02299241
 !MRCI STATE 4.1 Energy              -20885.3297841644    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42290340 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42290340 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42290340 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42542327 (Pople, fixed reference)
 Cluster corrected energies        -20885.42542327 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42542327 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95733678 (fixed)   0.95737574 (relaxed)   0.95737574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143245   -0.00329795   -0.90128603
 Singles      0.01325001   -0.04987972   -0.05814028
 Pairs        0.07634370    0.00874856   -0.06356611
 Total        1.09102616   -0.04442912   -1.02299241
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30679175
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.73051238
 One electron energy               -28575.14801688
 Two electron energy                 7689.81823272
 Virial quotient                       -0.63891529
 Correlation energy                    -1.02299241
 !MRCI STATE 5.1 Energy              -20885.3297841625    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42290323 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42290323 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42290323 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42542309 (Pople, fixed reference)
 Cluster corrected energies        -20885.42542309 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42542309 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      237.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      493.44       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       898.46    638.16    234.82     14.80      0.56      9.85
 REAL TIME  *       947.47 SEC
 DISK USED  *       731.29 MB (local),       11.79 GB (total)
 SF USED    *         2.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.42290324  AU                              
 SETTING HLSDIAG(5)     =    -20885.42290334  AU                              
 SETTING HLSDIAG(6)     =    -20885.42290332  AU                              
 SETTING HLSDIAG(7)     =    -20885.42290340  AU                              
 SETTING HLSDIAG(8)     =    -20885.42290323  AU                              


           HLSDIAG
    -20885.44846092
    -20885.44846088
    -20885.44846083
    -20885.42290324
    -20885.42290334
    -20885.42290332
    -20885.42290340
    -20885.42290323
                                                  

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

 Time for Seward_LS:     118.98 sec

       97146785. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27010 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    118.98 sec, REAL time:    121.35 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   448 records. CPU time:      1.01 sec, REAL time:      1.76 sec
 SORTLS2 read   110556387. and wrote   547794150. SO integrals in    48 records. CPU time:      0.46 sec, REAL time:      0.66 sec

 FILE SIZES: FILE 1:  2019.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2019.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1926.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      493.44       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1019.64    121.17    638.16    234.82     14.80      0.56      9.85
 REAL TIME  *      1072.02 SEC
 DISK USED  *       731.51 MB (local),       17.35 GB (total)
 SF USED    *         2.76 GB
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

 Original energies: -20885.358315 -20885.358315 -20885.358315
 Replaced energies: -20885.448461 -20885.448461 -20885.448461

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies: -20885.329784 -20885.329784 -20885.329784 -20885.329784 -20885.329784
 Replaced energies: -20885.422903 -20885.422903 -20885.422903 -20885.422903 -20885.422903



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.44846092

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   -4150.04       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00   -4150.04      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -4653.88
                            0.00       0.00   -5869.04    4150.04       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02    4150.04       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00    5869.04       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00   -3278.10

    4   1.1  1.0  0.0       0.00      -0.00    4150.04       0.00       0.00       0.00       0.00       0.00   -4150.04       0.00
                            0.00   -4150.04      -0.00       0.00       0.00       0.00      -0.00   -4150.04      -0.00    1945.65

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00
                         4150.04      -0.00       0.00      -0.00       0.00       0.00    4150.04       0.00       0.00      -0.00

    6   3.1  1.0  0.0   -4150.04      -0.00       0.00       0.00       0.00       0.02    4150.04       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    4150.04       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -4150.04      -0.00       0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00   -4653.88
                           -0.00      -0.00      -0.00    4150.04      -0.00       0.00      -0.00      -0.00    5869.04      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00   -4150.04      -0.00       0.00       0.00       0.00       0.02      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00   -5869.04      -0.00    3278.10

   10   1.1  0.0  0.0      -0.00   -4653.88      -0.00       0.00       0.00       0.00      -0.00   -4653.88      -0.00    5609.26
                           -0.00      -0.00    3278.10   -1945.65       0.00       0.00       0.00       0.00   -3278.10       0.00

   11   2.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                        -4141.13      -0.00       0.00       0.00       0.00    5856.45    4141.13       0.00      -0.00      -0.00

   12   3.1  0.0  0.0    4141.13      -0.00      -0.00       0.00       0.00       0.00    4141.13      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -5856.45       0.00       0.00       0.00      -0.00      -0.00

   13   4.1  0.0  0.0       0.00      -0.00    4141.13       0.00       0.00       0.00       0.00      -0.00    4141.13       0.00
                           -0.00    4141.13       0.00      -0.00      -0.00       0.00       0.00   -4141.13      -0.00      -0.00

   14   5.1  0.0  0.0      -0.00    1098.31       0.00       0.00       0.00       0.00      -0.00    1098.31       0.00       0.00
                            0.00       0.00    3481.23    6476.44       0.00      -0.00      -0.00      -0.00   -3481.23      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00    4141.13       0.00      -0.00
                         4141.13       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00      -0.00      -0.00    1098.31
                            0.00       0.00   -4141.13      -0.00

    3   3.1  1.0  1.0      -0.00      -0.00    4141.13       0.00
                           -0.00      -0.00      -0.00   -3481.23

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -6476.44

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00    5856.45       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -5856.45      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00    4141.13       0.00      -0.00
                        -4141.13      -0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00      -0.00      -0.00    1098.31
                           -0.00      -0.00    4141.13       0.00

    9   3.1  1.0 -1.0      -0.00      -0.00    4141.13       0.00
                            0.00       0.00       0.00    3481.23

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5609.24       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5609.24       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5609.23       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5609.26
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by -20885.44846092 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -5869.038      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.011       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    5869.038       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.021      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    5869.041

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000   -5869.038      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.011       0.000       0.000       0.000
                             5869.038       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.021   -5869.039      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -5869.039       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.011
                                0.000       0.000   -5869.041       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    5869.039       0.000       0.000       0.000       0.000
                               -0.000    5869.041       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000   -6581.584      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1945.654       0.000       0.000      -0.000      -0.000

    2    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    5856.447   -5856.445      -0.000

    3    1  |0 0>            5856.444      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -5856.447       0.000      -0.000      -0.000

    4    1  |0 0>               0.000      -0.000    5856.443       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000    5856.445

    5    1  |0 0>              -0.000    1553.241       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    6476.436       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000      -0.000    5856.444       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -6581.584       0.000      -0.000      -0.000    1553.241
                            -5869.041       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000    5856.443       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            5869.039       0.000       0.000       0.000       0.000       0.000
                               -0.000    1945.654      -0.000       0.000       0.000   -6476.436

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    5856.447       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -5856.447      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    5856.445       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -5856.445      -0.000

    3    1  |1 1>-              0.021       0.000       0.000       0.000       0.000       0.000
                                0.000   -4635.940      -0.000      -0.000      -0.000   -4923.207

    1    1  |0 0>               0.000    5609.263       0.000       0.000       0.000       0.000
                             4635.940       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5609.242       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5609.245       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5609.229       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5609.265
                             4923.207      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.50194350    -0.05348257   -11738.07      0.00000000        0.00      0.0000
    2-20885.47520220    -0.02674128    -5869.03      0.02674129     5869.04      0.7277
    3-20885.47520219    -0.02674126    -5869.03      0.02674131     5869.04      0.7277
    4-20885.47520217    -0.02674125    -5869.03      0.02674133     5869.04      0.7277
    5-20885.46005288    -0.01159195    -2544.14      0.04189062     9193.93      1.1399
    6-20885.46005287    -0.01159195    -2544.14      0.04189062     9193.93      1.1399
    7-20885.46005287    -0.01159195    -2544.14      0.04189062     9193.93      1.1399
    8-20885.46005252    -0.01159159    -2544.06      0.04189098     9194.01      1.1399
    9-20885.46005249    -0.01159156    -2544.05      0.04189101     9194.01      1.1399
   10-20885.38457032     0.06389060    14022.37      0.11737317    25760.43      3.1939
   11-20885.38457028     0.06389064    14022.37      0.11737321    25760.44      3.1939
   12-20885.38457006     0.06389087    14022.42      0.11737344    25760.49      3.1939
   13-20885.38457005     0.06389088    14022.43      0.11737345    25760.49      3.1939
   14-20885.38457003     0.06389089    14022.43      0.11737346    25760.50      3.1939

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.70710725 -0.00000000  0.00000000 -0.49606351 -0.00000021  0.00000006 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.57735016  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.42450308
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.70710607  0.00000021 -0.49606444  0.00000072 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.57735049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.54530945

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.70710632  0.00000000 -0.00000000 -0.49606447 -0.00000021  0.00000006 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.07332833  0.00000000 -0.00000000 -0.00000000 -0.00158380  0.00000000
                           0.00000000  0.00000000  0.70329320 -0.00000000  0.00000006  0.00000072  0.49606266 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000  0.07332857  0.00000000  0.00000000  0.00000000  0.00158379 -0.00000000
                           0.00000000  0.00000000  0.70329550 -0.00000000 -0.00000006 -0.00000072 -0.49605997  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.70710749 -0.00000021  0.49606263 -0.00000072  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57735016  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.12080669

   1    1  |0 0>          -0.00000037  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.40410928
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000106  0.00000000  0.00000008  0.00000104  0.71262623 -0.00000001
                           0.00000000  0.00000000  0.00000011  0.00000000  0.00000000  0.00000000  0.00227523 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000030  0.00000000  0.00000000  0.71262966  0.00000030 -0.00000008 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000081 -0.00000030  0.71263029 -0.00000104  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000026 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.58697204
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000005  0.50390508  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.38458225  0.41471183 -0.40813543 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.50390582 -0.00000005  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.17533931 -0.56081137 -0.15508300  0.00000001 -0.00000000 -0.00000001

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000005  0.50390545  0.00000002

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00155636
                           0.00000000  0.00000001 -0.00000000  0.00000002  0.00000002 -0.50390330

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00155636
                          -0.00000000 -0.00000001  0.00000000 -0.00000002 -0.00000002  0.50390271

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.50390561  0.00000005 -0.00000002

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.55992110 -0.14609990 -0.56321907  0.00000001 -0.00000000  0.00000000

   1    1  |0 0>           0.58697236 -0.37361902  0.59377434 -0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000001  0.00000000 -0.00000003 -0.00000002  0.70153687
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00216677

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000006  0.70154043  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000001  0.00000001  0.70153978 -0.00000006  0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.40410942  0.59377466  0.37361886 -0.00000001  0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.50194350     -0.05348257   -11738.07      0.00000000        0.00      0.0000
     2   1 -20885.47520220     -0.02674128    -5869.03      0.02674129     5869.04      0.7277
     3   1 -20885.47520219     -0.02674126    -5869.03      0.02674131     5869.04      0.7277
     4   1 -20885.47520217     -0.02674125    -5869.03      0.02674133     5869.04      0.7277
     5   1 -20885.46005288     -0.01159195    -2544.14      0.04189062     9193.93      1.1399
     6   1 -20885.46005287     -0.01159195    -2544.14      0.04189062     9193.93      1.1399
     7   1 -20885.46005287     -0.01159195    -2544.14      0.04189062     9193.93      1.1399
     8   1 -20885.46005252     -0.01159159    -2544.06      0.04189098     9194.01      1.1399
     9   1 -20885.46005249     -0.01159156    -2544.05      0.04189101     9194.01      1.1399
    10   1 -20885.38457032      0.06389060    14022.37      0.11737317    25760.43      3.1939
    11   1 -20885.38457028      0.06389064    14022.37      0.11737321    25760.44      3.1939
    12   1 -20885.38457006      0.06389087    14022.42      0.11737344    25760.49      3.1939
    13   1 -20885.38457005      0.06389088    14022.43      0.11737345    25760.49      3.1939
    14   1 -20885.38457003      0.06389089    14022.43      0.11737346    25760.50      3.1939

 E0 = -20885.44846092 is the energy of the lowest zeroth-order state
 E1 = -20885.50194350 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.70710725 -0.00000000  0.00000000 -0.49606351 -0.00000021  0.00000006 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57735016  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.42450308
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.70710607  0.00000021 -0.49606444  0.00000072 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.57735049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.54530945

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.70710632  0.00000000 -0.00000000 -0.49606447 -0.00000021  0.00000006 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.07332833  0.00000000 -0.00000000 -0.00000000 -0.00158380  0.00000000
                                0.00000000  0.00000000  0.70329320 -0.00000000  0.00000006  0.00000072  0.49606266 -0.00000001

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.07332857  0.00000000  0.00000000  0.00000000  0.00158379 -0.00000000
                                0.00000000  0.00000000  0.70329550 -0.00000000 -0.00000006 -0.00000072 -0.49605997  0.00000001

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.70710749 -0.00000021  0.49606263 -0.00000072  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57735016  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.12080669

 10  1     1    1  |0 0>       -0.00000037  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.40410928
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000106  0.00000000  0.00000008  0.00000104  0.71262623 -0.00000001
                                0.00000000  0.00000000  0.00000011  0.00000000  0.00000000  0.00000000  0.00227523 -0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000030  0.00000000  0.00000000  0.71262966  0.00000030 -0.00000008 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000081 -0.00000030  0.71263029 -0.00000104  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000026 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.58697204
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000005  0.50390508  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.38458225  0.41471183 -0.40813543 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.50390582 -0.00000005  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.17533931 -0.56081137 -0.15508300  0.00000001 -0.00000000 -0.00000001

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000005  0.50390545  0.00000002

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00155636
                                0.00000000  0.00000001 -0.00000000  0.00000002  0.00000002 -0.50390330

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00155636
                               -0.00000000 -0.00000001  0.00000000 -0.00000002 -0.00000002  0.50390271

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.50390561  0.00000005 -0.00000002

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.55992110 -0.14609990 -0.56321907  0.00000001 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.58697236 -0.37361902  0.59377434 -0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000001  0.00000000 -0.00000003 -0.00000002  0.70153687
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00216677

 12  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000006  0.70154043  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000001  0.00000001  0.70153978 -0.00000006  0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.40410942  0.59377466  0.37361886 -0.00000001  0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%   24.61%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.02%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%   24.61%    0.00%    0.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   29.74%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%   24.61%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.61%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.61%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%   24.61%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.46%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.33%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.78%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   50.78%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   50.78%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.45%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.39%    0.00%
  2  1     2    1  |1 1>+        14.79%   17.20%   16.66%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   25.39%    0.00%    0.00%
  4  1     1    1  |1 0>          3.07%   31.45%    2.41%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.39%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.39%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   25.39%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   25.39%    0.00%    0.00%
  9  1     3    1  |1 1>-        31.35%    2.13%   31.72%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>         34.45%   13.96%   35.26%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.22%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   49.22%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   49.22%    0.00%    0.00%
 14  1     5    1  |0 0>         16.33%   35.26%   13.96%    0.00%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1926.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      493.44       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1363.91    344.27    121.17    638.16    234.82     14.80      0.56      9.85
 REAL TIME  *      1435.22 SEC
 DISK USED  *       731.51 MB (local),       17.35 GB (total)
 SF USED    *         2.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.384570033948

              CI              CI           MULTI         RHF-SCF
 -20885.32978416 -20885.35831498 -20884.30679175 -20884.37350176
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
